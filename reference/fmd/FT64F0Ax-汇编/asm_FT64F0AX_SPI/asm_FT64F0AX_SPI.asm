;===========================================================
/* �ļ�����ASM_64F0Ax_SPI.ASM
* ���ܣ�   FT64F0Ax_SPI������ʾ
*  IC��    FT64F0A5     TSSOP20
* �ڲ���   16M/4T	                               
* ˵����   ����ʾ����λ64F0Ax_SPI����ʾ����.
*		   �ó���д0xAA,��(FT25C64A)0x12��ַ,Ȼ���ȡ0x12�ĵ�ֵַ
*
*                FT64F0A5  TSSOP20
*              -------------------
* NC----------|1(PA5)   	(PA4)20|-----------NC     
* NC----------|2(PA6)   	(PA3)19|-----------NC 
* NC----------|3(PA7)   	(PA2)18|-----------NC
* NC----------|4(PC0)   	(PA1)17|---------MISO
* NC----------|5(PC1)		(PA0)16|---------MOSI	
* NC----------|6(PB7)		(PB0)15|----------SCK
* GND---------|7(GND)		(PB1)14|-----------NC
* NC----------|8(PB6)		(PB2)13|-----------NC
* VDD---------|9(VDD)		(PB3)12|-----------NC
* NSS---------|10(PB5)	    (PB4)11|-----------NC
*				-------------------
*/ 
;===========================================================
#INCLUDE  <FT64F0AX.INC>;
;===========================================================
;RAM DEFINE
;===========================================================
    W_TMP				EQU		0X43
	S_TMP				EQU		0X44
    SPIDATTEMP		    EQU		0X45
    buff				EQU		0X46
    #define			f_ready		buff,0
    
	count				EQU		0X47
    SPIDATE				EQU		0X48
    SPIADDRH			EQU		0X49
    SPIADDRL			EQU		0X4A
    SPIDAT2				EQU		0X4B
;===========================================================
;CONSTANT	DEFINE	
;===========================================================
	INTCON_DEF		    EQU		B'00000000'	;��ֹ�����ж�
	OSCCON_DEF		    EQU		B'01110001'	;16MHz,1:1

	WPUA_DEF			EQU		B'00000000'	;�������Ŀ��أ�0-�أ�1-��		
	WPUB_DEF			EQU		B'00000000'
	WPUC_DEF			EQU		B'00000000'	

	WPDA_DEF			EQU		B'00000010'	;�������Ŀ��أ�0-�أ�1-��
	WPDB_DEF			EQU		B'00000000'
	WPDC_DEF			EQU		B'00000000'

	TRISA_DEF			EQU		B'00000010'	;����������ã�0-�����1-����,SPI_MISO,SPI_MOSI
                                            ;PA0-OUT PA1-IN
	TRISB_DEF			EQU		B'00000000'	;PB0,PB5-OUT
	TRISC_DEF			EQU		B'00000000'

	PSRC0_DEF			EQU		B'11111111'	;Դ�����������
	PSRC1_DEF			EQU		B'11111111'
	PSRC2_DEF			EQU		B'00001111'

	PSINK0_DEF			EQU		B'11111111'	;������������
	PSINK1_DEF			EQU		B'11111111'
	PSINK2_DEF			EQU		B'00000011'

	ANSELA_DEF			EQU		B'00000000'	;���ö�Ӧ��IOΪ����IO
    
	PCKEN_DEF			EQU		B'00010000'	;ʹ��SPIģ��ʱ��
    
    SPICTRL_DEF			EQU		B'00001000'	;NSS�������
    SPICFG_DEF			EQU		B'01000000'	;����Ϊ����ģʽ����һ��ʱ��ת�����������ݲ����㣬SPI����ʱ��SCK��ʱ���Ǵ��ڵ͵�ƽ״̬
    SPISCR_DEF			EQU		B'00000000'	;����������Ϊ8M��Fmaster/(2*(SPISCR+1))��Fmaster=16M   
    SPIRXCRC_DEF		EQU		B'00000000'	;�������ݵ�CRC������
    SPITXCRC_DEF		EQU		B'00000000' ;�������ݵ�CRC������
    SPIIER_DEF			EQU		B'00000000'	;��ֹ�����ж� 
    SPICTRL2_DEF		EQU		B'00000000'	;ȫ˫�������ͺͽ��գ�����CRCУ��ģ�飬�߱���λ���ȷ���
    SPISTAT_DEF			EQU		B'00000000'
;===========================================================
;USER	DEFINE
;===========================================================
#DEFINE		NSS		SPICTRL,NSSM0
;===========================================================
;PROGRAM	START
;===========================================================
	ORG			0x0000			
	LJUMP		RESTART			
	ORG			0x0004			
	STR			W_TMP			
	SWAPR		STATUS,W		
	STR			S_TMP
;===========================================================
;SYSTEM	START
;===========================================================
RESTART:
	BANKSEL 	PORTA
    LCALL		INITIAL
;	LCALL		INITIAL_25C64_IO
    
	BANKSEL 	SPIDATE
    LDWI		0X00				;Ҫд�ĵ�ַ��8λ
    STR			SPIADDRH
    LDWI		0X12				;Ҫд�ĵ�ַ��8λ
    STR			SPIADDRL
    
	BANKSEL 	SPIDATE
    LDWI		0XAA		
    STR			SPIDATE				;��0XAA����д��
    LCALL		SPI_Write			;����д����
    
    BANKSEL 	SPIDATE
    LDWI		0X00				;����
    STR			SPIDATE
    LDWI		0X00				;Ҫ���ĵ�ַ��8λ
    STR			SPIADDRH
    LDWI		0X12				;Ҫ���ĵ�ַ��8λ
    STR			SPIADDRL
    LCALL		SPI_Read
    
MAIN:
	NOP
    LJUMP		MAIN
;===========================================================
;SYSTEM	INITIAL
;===========================================================
INITIAL:
	BANKSEL 	OSCCON
    LDWI		OSCCON_DEF
    STR			OSCCON
    
	BANKSEL 	INTCON
    LDWI		INTCON_DEF
    STR			INTCON
    
	BANKSEL 	PORTA
    LDWI		0X00
    STR			PORTA
    STR			PORTB
    STR			PORTC
    
	BANKSEL 	TRISA
    LDWI		TRISA_DEF
    STR			TRISA
    LDWI		TRISB_DEF
    STR			TRISB
    LDWI		TRISC_DEF
    STR			TRISC
    
	BANKSEL 	WPUA
    LDWI		WPUA_DEF
    STR			WPUA
    LDWI		WPUB_DEF
    STR			WPUB
    LDWI		WPUC_DEF
    STR			WPUC
    
	BANKSEL 	WPDA
    LDWI		WPDA_DEF
    STR			WPDA
    LDWI		WPDB_DEF
    STR			WPDB
    LDWI		WPDC_DEF
    STR			WPDC
    
	BANKSEL 	PSRC0
    LDWI		PSRC0_DEF
    STR			PSRC0
    LDWI		PSRC1_DEF
    STR			PSRC1
    LDWI		PSRC2_DEF
    STR			PSRC2
    
	BANKSEL 	PSINK0
    LDWI		PSINK0_DEF
    STR			PSINK0
    LDWI		PSINK1_DEF
    STR			PSINK1
    LDWI		PSINK2_DEF
    STR			PSINK2
    
	BANKSEL 	ANSELA
    LDWI		ANSELA_DEF
    STR			ANSELA
    
	BANKSEL 	PCKEN
    LDWI		PCKEN_DEF
    STR			PCKEN
    
	BANKSEL 	SPICTRL
    LDWI		SPICTRL_DEF
    STR			SPICTRL
    
	BANKSEL 	SPICFG
    LDWI		SPICFG_DEF
    STR			SPICFG
    LDWI		SPISCR_DEF
    STR			SPISCR
    LDWI		SPIRXCRC_DEF
    STR			SPIRXCRC
    LDWI		SPITXCRC_DEF
	STR			SPITXCRC
    LDWI		SPIIER_DEF
    STR			SPIIER
    LDWI		SPICTRL2_DEF
    STR			SPICTRL2
    LDWI		SPISTAT_DEF
    STR			SPISTAT
    
	BANKSEL 	SPICTRL
    BSR			SPICTRL,SPIEN		;����SPI
;***************Clear  SRAM*******************
 	BANKSEL 	PORTA
    LDWI		0X00
    STR			FSR0H		
CLEAR_RAM_BANK0:
	LDWI		20H
    STR			FSR0L
CLEAR_RAM_BANK0_LOOP:
	CLRR		INDF0
    INCR		FSR0L,F
    LDWI		80H
    XORWR		FSR0L,W
    BTSS		STATUS,Z
    LJUMP		CLEAR_RAM_BANK0_LOOP   
CLEAR_RAM_BANK1:
	LDWI		0A0H
    STR			FSR0L
CLEAR_RAM_BANK1_LOOP:
	CLRR		INDF0
    INCR		FSR0L,F
    LDWI		00H
    XORWR		FSR0L,W
    BTSS		STATUS,Z
    LJUMP		CLEAR_RAM_BANK1_LOOP
    INCR		FSR0H,F
CLEAR_RAM_LOOP:
    LDWI		10
    SUBWR		FSR0H,W
    BTSS		STATUS,0
    LJUMP		CLEAR_RAM_BANK0
    RET
;===========================================================
;��������SPI_RW
;���ܣ�	 ��������Լ�����һ���ֽ�
;���룺	 data
;�����	 ���ݽ��յ�data������ӻ�һ���ֽ�
;===========================================================
SPI_RW:
    BANKSEL		SPISTAT
	BTSC		SPISTAT,SBUSY
    LJUMP		$-1
    
    BANKSEL     SPIDATTEMP
    LDR			SPIDATTEMP, 0
    BANKSEL     SPIDATA
    STR			SPIDATA
    
	BANKSEL     SPICFG
	BTSC		SPICFG,RXBMT
    LJUMP		$-1
    
    BANKSEL     SPIDATA
    LDR			SPIDATA, 0
    BANKSEL     SPIDATTEMP
    STR			SPIDATTEMP
	
	RET
	
;===========================================================
;д����
;===========================================================
WriteEnable:
	BCR			NSS
    LDWI		0X06			;д����������				
    STR			SPIDATTEMP
    LCALL		SPI_RW
    BSR			NSS
    RET
;===========================================================
;д�ر�
;===========================================================
WriteDisable:
	BCR			NSS
    LDWI		0X04			;д�ر�������			
    STR			SPIDATTEMP
    LCALL		SPI_RW
    BSR			NSS
    RET
;===========================================================
;������:  PI_ReadStatus
;���ܣ�	  ��ȡ25C64оƬ��״̬
;ע��	  25C64�ڲ�״̬�Ĵ�����0λ=0��ʾ���У�=1��ʾæ��
;===========================================================
SPI_ReadStatus:
	BCR			f_ready
    BCR			NSS
    LDWI		0X05			;��ȡ״̬������
    STR			SPIDATTEMP
    LCALL		SPI_RW
    
	LDWI		0X00
    STR			SPIDATTEMP
    LCALL		SPI_RW
    BANKSEL		SPICTRL
    BSR			NSS
    BTSC		SPIDATTEMP,0
    BSR			f_ready
    RET
;===========================================================
;�������� SPI_WriteStatus
;���ܣ�	  д25C64оƬ��״̬�Ĵ���
;ֻ��BSP1��BSP0(bit7��3��2)����д
;ע��	  25C64�ڲ�״̬�Ĵ�����0λ=0��ʾ���У�=1��ʾæ��
;===========================================================
SPI_WriteStatus:
    BCR			NSS
    LDWI		0X01			;д��״̬������
    STR			SPIDATTEMP
    LCALL		SPI_RW
    
	LDWI		0X00			;д�벻ͬ�����ݿɲ����Ŀռ䲻һ��
    STR			SPIDATTEMP
    LCALL		SPI_RW
    BSR			NSS
    RET
;===========================================================
;�������� SPI_Read
;���룺	  16λ�ĵ�ַ
;���أ�	  ��ȡ������
;˵����	  ��25C64ָ���ĵ�ַ��ȡһ���ֽ�
;===========================================================
SPI_Read:
	LCALL		SPI_ReadStatus
    BTSC		f_ready			;�ж��Ƿ�æ
    LJUMP		$-2
    BCR			NSS
    LDWI		0X03
    STR			SPIDATTEMP
    LCALL		SPI_RW			;���Ͷ�ȡ����
    
	LDR			SPIADDRH,0
    STR			SPIDATTEMP
    LCALL		SPI_RW			;���͸ߵ�ַ
    LDR			SPIADDRL,0
    STR			SPIDATTEMP
    LCALL		SPI_RW			;���͵͵�ַ
    
	LDWI		0X00
    STR			SPIDATTEMP
    LCALL		SPI_RW			;��������
    BSR			NSS
    LDR			SPIDATTEMP,0
    STR			SPIDATE
    RET
;===========================================================
;�������� SPI_Write
;���룺	  16λ�ĵ�ַ
;���أ�	  ��ȡ������
;˵����	  ��25C64ָ���ĵ�ַ��ȡһ���ֽ�
;===========================================================
SPI_Write:
	LCALL		SPI_ReadStatus
    BTSC		f_ready			;�ж��Ƿ�æ
    LJUMP		$-2
    LCALL		WriteEnable
    BCR			NSS
    
	LDWI		0X02
    STR			SPIDATTEMP
    LCALL		SPI_RW			;����дȡ����
    
	LDR			SPIADDRH,0
    STR			SPIDATTEMP
    LCALL		SPI_RW			;���͸ߵ�ַ
    LDR			SPIADDRL,0
    STR			SPIDATTEMP
    LCALL		SPI_RW			;���͵͵�ַ
    
	LDR			SPIDATE,0
    STR			SPIDATTEMP
    LCALL		SPI_RW			;��������
    BSR			NSS
    LCALL		WriteDisable
	LCALL		SPI_ReadStatus
    BTSC		f_ready			;�ж��Ƿ�æ
    LJUMP		$-2
    RET

	END							
    