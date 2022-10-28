;===========================================================
/* �ļ�����ASM_64F0Ax_WDT.ASM
* ���ܣ�   FT64F0Ax_WDT������ʾ
*  IC��    FT64F0A5     TSSOP20
* �ڲ���   16M/2T	                            
* ˵����   �����п������Ź��������Ź�ʱ������Ϊ32ms
*		   a. ����������DemoPortOut�����һ����3ms��3ms���źţ�
*		   b. Ȼ��ѭ�������1ms��1ms��500Hz���źš�
*		   ����������������ʱ�������忴�Ź�����ÿ��32ms��Ƭ����λ�󣬻��ظ����a+b�źţ�
*		   ��������������忴�Ź�����һֱ���b�ź�
*
*                FT64F0A5  TSSOP20
*              -------------------
* NC----------|1(PA5)   	(PA4)20|-----------NC     
* NC----------|2(PA6)   	(PA3)19|-----------NC 
* NC----------|3(PA7)   	(PA2)18|-----------NC
* NC----------|4(PC0)   	(PA1)17|-----------NC
* NC----------|5(PC1)		(PA0)16|-----------NC	
* NC----------|6(PB7)		(PB0)15|-----------NC
* GND---------|7(GND)		(PB1)14|-----------NC
* NC----------|8(PB6)		(PB2)13|-----------NC
* VDD---------|9(VDD)		(PB3)12|--DemoPortOut
* NC----------|10(PB5)		(PB4)11|-----------NC
*				-------------------
*/ 
;===========================================================
#INCLUDE  <FT64F0AX.INC>;
;===========================================================
;RAM DEFINE
;===========================================================
	TEMP1		EQU     0X21
	TEMP2		EQU     0X22

	W_TMP   	EQU     0X70
	S_TMP		EQU     0X71
;===========================================================
;CONSTANT	DEFINE
;===========================================================	
	INTCON_DEF		EQU		B'00000000'	;��ֹ�����ж�
	OSCCON_DEF		EQU		B'01110001'	;16MHz 1:1

	WPUA_DEF		EQU		B'00000000'	;�������Ŀ��أ�0-�أ�1-��		
	WPUB_DEF		EQU		B'00000000'
	WPUC_DEF		EQU		B'00000000'	

	WPDA_DEF		EQU		B'00000000'	;�������Ŀ��أ�0-�أ�1-��
	WPDB_DEF		EQU		B'00000000'
	WPDC_DEF		EQU		B'00000000'

	TRISA_DEF		EQU		B'00000000'	;����������ã�0-�����1-����
	TRISB_DEF		EQU		B'00000000'	;PB3-OUT
	TRISC_DEF		EQU		B'00000000'

	PSRC0_DEF		EQU		B'11111111'	;Դ�����������
	PSRC1_DEF		EQU		B'11111111'
	PSRC2_DEF		EQU		B'00001111'

	PSINK0_DEF		EQU		B'11111111'	;������������
	PSINK1_DEF		EQU		B'11111111'
	PSINK2_DEF		EQU		B'00000011'

	ANSELA_DEF		EQU		B'00000000'	;���ö�Ӧ��IOΪ����IO
    
	WDTCON_DEF		EQU		B'00001011'	;�򿪿��Ź���Ԥ��Ƶ1��1��
                                        ;��ʱ������1��1024�������Ź�����Ϊ32ms
    MISC0_DEF		EQU		B'00000000'	;���Ź�ʱ��32kHz
;===========================================================
;USER	DEFINE
;===========================================================
#DEFINE		DemoPortOut		PORTB,3
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
    LCALL		INITIAL
	LCALL		WDT_INITIAL
	BSR			DemoPortOut
    LCALL		DELAY_3MS
    BCR			DemoPortOut
    LCALL		DELAY_3MS
MAIN:
	;CLRWDT
	BANKSEL 	PORTA
    BSR			DemoPortOut
    LCALL		DELAY_3MS
    BCR			DemoPortOut
    LCALL		DELAY_3MS
    LJUMP		MAIN
;===========================================================
;INT_PROGRAM
;===========================================================
INT_PROGRAM:
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
;WDT_INITIAL
;===========================================================
WDT_INITIAL:
	CLRWDT
    BANKSEL 	MISC0
    LDWI		MISC0_DEF
    STR			MISC0
    BANKSEL 	WDTCON
    LDWI		WDTCON_DEF
    STR			WDTCON
    RET
;===========================================================
;DELAY_3MS(16M/2T��
;===========================================================
DELAY_3MS:
	LDWI		H'C8'
	STR			TEMP1
DELAY_3MS_LOOP1:
	LDWI		H'20'
	STR			TEMP2
 DELAY_3MS_LOOP2:
	DECRSZ  	TEMP2,F
	LJUMP		DELAY_3MS_LOOP2
	DECRSZ  	TEMP1,F
	LJUMP		DELAY_3MS_LOOP1
	RET
;===========================================================
;DELAY_1MS(16M/2T��ʵ��Ϊ1.1ms��
;===========================================================
DELAY_1MS:
	LDWI		H'C8'
	STR			TEMP1
DELAY_1MS_LOOP1:
	LDWI		H'0C'
	STR			TEMP2
 DELAY_1MS_LOOP2:
	DECRSZ  	TEMP2,F
	LJUMP		DELAY_1MS_LOOP2
	DECRSZ  	TEMP1,F
	LJUMP		DELAY_1MS_LOOP1
	RET

	END							
    