;===========================================================
/* �ļ�����ASM_64F0Ax_USART.ASM
* ���ܣ�   FT64F0Ax_USART������ʾ
*  IC��    FT64F0A5     TSSOP20
* �ڲ���   16M/4T	                              
* ˵����   �����ϵ�һֱ���ͣ�ͬʱҲ���Խ��գ�ͨ���������ַ��ͽ��գ�
* 
*                FT64F0A5  TSSOP20
*              -------------------
* NC----------|1(PA5)   	(PA4)20|-----------NC     
* TXIO--------|2(PA6)   	(PA3)19|-----------NC 
* RXIO--------|3(PA7)   	(PA2)18|-----------NC
* NC----------|4(PC0)   	(PA1)17|-----------NC
* NC----------|5(PC1)		(PA0)16|-----------NC	
* NC----------|6(PB7)		(PB0)15|-----------NC
* GND---------|7(GND)		(PB1)14|-----------NC
* NC----------|8(PB6)		(PB2)13|-----------NC
* VDD---------|9(VDD)		(PB3)12|-----------NC
* NC----------|10(PB5)		(PB4)11|-----------NC
*				-------------------
*/ 
;===========================================================
#INCLUDE  <FT64F0AX.INC>;
;===========================================================
;RAM DEFINE
;===========================================================
    UR_DATA				EQU		0X23

	W_TMP		     	EQU		0X70
	S_TMP				EQU		0X71
;===========================================================
;CONSTANT	DEFINE	
;===========================================================
	OSCCON_DEF			EQU		B'01110001'		;16MHz,1:1

	WPUA_DEF			EQU		B'10000000'		;�������Ŀ��أ�0-�أ�1-��
												;��PA7����
	WPUB_DEF			EQU		B'00000000'
	WPUC_DEF			EQU		B'00000000'	

	WPDA_DEF			EQU		B'00000000'		;�������Ŀ��أ�0-�أ�1-��
	WPDB_DEF			EQU		B'00000000'
	WPDC_DEF			EQU		B'00000000'
	
	TRISA_DEF			EQU		B'10000000'		;����������ã�0-�����1-���� 
												;PA6-OUT PA7-IN
	TRISB_DEF			EQU		B'00000000'		
	TRISC_DEF			EQU		B'00000000'

	PSRC0_DEF			EQU		B'11111111'		;Դ�����������
	PSRC1_DEF			EQU		B'11111111'
	PSRC2_DEF			EQU		B'00001111'

	PSINK0_DEF			EQU		B'11111111'		;������������
	PSINK1_DEF			EQU		B'11111111'
	PSINK2_DEF			EQU		B'00000011'

	ANSELA_DEF			EQU		B'00000000'		;���ö�Ӧ��IOΪ����IO
		
	PCKEN_DEF			EQU		B'00100000'		;ʹ��UART1ʱ��ģ��
    UR1IER_DEF			EQU		B'00100001'		;ʹ�ܷ�������жϣ�ʹ�ܽ��������ж�
    UR1LCR_DEF			EQU		B'00000001'		;8λ���ݳ��ȣ�1λֹͣλ������żУ��λ
    UR1MCR_DEF			EQU		B'00011000'		;ʹ�ܷ��ͺͽ��սӿ�
       
    UR1DLL_DEF			EQU		104				;������=Fmaster/(16*{URxDLH,URxDLL})=9600
    UR1DLH_DEF			EQU		0			
;===========================================================
;CONSTANT	DEFINE	
;===========================================================
#DEFINE		TXIO		PORTA,6
#DEFINE		RXIO		PORTA,7
;===========================================================
;PROGRAM	START
;===========================================================
	ORG			0x0000			
	LJUMP		RESTART			
	ORG			0x0004			
	STR			W_TMP			
	SWAPR		STATUS,W		
	STR			S_TMP
	LJUMP		INT_PROGRAM
;===========================================================
;SYSTEM	START
;===========================================================
RESTART:
	BANKSEL 	PORTA
    LCALL		INITIAL
	LCALL		UART_INITIAL
    
	BANKSEL 	UR1TC
    BSR			UR1TC,UR1TCF		;д1��0

	BANKSEL 	INTCON
    BSR			INTCON,GIE			;ʹ��ȫ���ж�
    BSR			INTCON,PEIE			;����ʹ���ж�
    
	BANKSEL 	UR1LSR
    BTSS		UR1LSR,UR1TXEF		;1�����ͼĴ���Ϊ��
									;0�����ͼĴ�����Ϊ��
    LJUMP		MAIN
    BANKSEL 	UR1DATAL
    LDWI		0XAA
    STR			UR1DATAL
MAIN:
	NOP
    NOP
    LJUMP		MAIN
;===========================================================
;INT_PROGRAM?
;===========================================================
INT_PROGRAM:
	BANKSEL 	UR1LSR
    BTSC		UR1LSR,UR1RXNEF		;1�����ռĴ����ǿ�
									;0�����ռĴ���Ϊ�ջ�������
    LJUMP		URRXInterrupt
    BANKSEL 	UR1TC
    BTSC		UR1TC,UR1TCF		;�������״̬��־
									;1�����ݷ�����ɣ�0�����ݷ���δ���
    LJUMP		URTXInterrupt
    LJUMP		INT_RET
    
URRXInterrupt:
	BANKSEL 	UR1DATAL
    LDR			UR1DATAL,0
    BANKSEL 	UR_DATA
    STR			UR_DATA
    LJUMP		INT_RET
    
URTXInterrupt:
	BANKSEL 	UR1TC
    BSR			UR1TC,UR1TCF
    
	BANKSEL 	UR_DATA
    LDR			UR_DATA,0
    BANKSEL 	UR1DATAL
    STR			UR1DATAL
    LJUMP		INT_RET
    
INT_RET:   
	SWAPR		S_TMP,0
	STR			STATUS			
	SWAPR		W_TMP,1
	SWAPR		W_TMP,0			
	RETI
;===========================================================
;SYSTEM	INITIAL
;===========================================================
INITIAL:
	BANKSEL 	OSCCON
    LDWI		OSCCON_DEF
    STR			OSCCON
    
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
;***************Clear  SRAM********************
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
;UART_INITIAL
;===========================================================
UART_INITIAL:
    BANKSEL 	PCKEN
    LDWI		PCKEN_DEF
    STR			PCKEN
    
    BANKSEL 	UR1IER
    LDWI		UR1IER_DEF
    STR			UR1IER
    LDWI		UR1LCR_DEF
    STR			UR1LCR
    LDWI		UR1MCR_DEF
    STR			UR1MCR
    
    BANKSEL 	UR1DLL
    LDWI		UR1DLL_DEF
    STR			UR1DLL
    LDWI		UR1DLH_DEF
    STR			UR1DLH
    
    RET

	END							
 