;===========================================================
/* �ļ�����ASM_64F0Ax_ADC.ASM
* ���ܣ�   FT64F0Ax_ADC������ʾ
*  IC:��   FT64F0A5     TSSOP20
* �ڲ���   16M/2T                               
* ˵����   �������AN0�ڵ�ADֵ����ת���������ڵ�ַΪ24��25��SRAM��
*
*                FT64F0A5  TSSOP20
*              -------------------
* NC----------|1(PA5)   	(PA4)20|-----------NC     
* NC----------|2(PA6)   	(PA3)19|-----------NC 
* NC----------|3(PA7)   	(PA2)18|-----------NC
* NC----------|4(PC0)   	(PA1)17|-----------NC
* NC----------|5(PC1)		(PA0)16|-----------NC	
* NC----------|6(PB7)		(PB0)15|-----------NC
* GND---------|7(GND)		(PB1)14|----------AN0
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
TEMP1			EQU		0X21
TEMP_ADRESH	    EQU		0X24
TEMP_ADRESL     EQU		0X25

W_TMP			EQU     0X70
S_TMP			EQU     0X71
;===========================================================
;CONSTANT DEFINE
;===========================================================
INTCON_DEF		EQU		B'00000000'	;��ֹ�����ж�
PCKEN_DEF		EQU		B'00000001'	;ADģ��ʱ��ʹ��
OSCCON_DEF		EQU		B'01110001'	;16MHz,1:1

WPUA_DEF		EQU		B'00000000'	;�������Ŀ��أ�0-�أ�1-��		
WPUB_DEF		EQU		B'00000000'
WPUC_DEF		EQU		B'00000000'	

WPDA_DEF		EQU		B'00000000'	;�������Ŀ��أ�0-�أ�1-��
WPDB_DEF		EQU		B'00000000'
WPDC_DEF		EQU		B'00000000'

TRISA_DEF		EQU		B'00000000'	;����������ã�0-�����1-����
TRISB_DEF		EQU		B'00000010'	;PB1-IN
TRISC_DEF		EQU		B'00000000'

PSRC0_DEF		EQU		B'11111111'	;Դ�����������
PSRC1_DEF		EQU		B'11111111'
PSRC2_DEF		EQU		B'00001111'

PSINK0_DEF		EQU		B'11111111'	;������������
PSINK1_DEF		EQU		B'11111111'
PSINK2_DEF		EQU		B'00000011'

ANSELA_DEF		EQU		B'00000001'	;����AN0Ϊģ��ܽ�

ADCON0_DEF		EQU		B'00000000'	;ѡ��ģ��ͨ��AN0
ADCON1_DEF		EQU		B'11100100'	
;ADCת������Ҷ��룬��װ��ת�����ʱ��ADRESH�ĸ�4λ������Ϊ0
;ADCת��ʱ������ΪFosc/64�����ο���ѹ-GND�����ο���ѹ-�ڲ��ο���ѹ

ADCON2_DEF		EQU		B'01000000'	;ADC�ڲ��ο���ѹ2V
ADCON3_DEF		EQU		B'00000000'
ADDLY_DEF		EQU		B'00000000'	;�ⲿ������ʱ
ADCMPH_DEF		EQU		B'00000000'	;ADC�Ƚ���ֵ������ADC�����8λ�Ƚ�
;===========================================================
;PROGRAM START
;===========================================================
	ORG			0x0000			
	LJUMP		RESTART			
	ORG			0x0004			
    LJUMP		INT_PROGRAM
;===========================================================
;INT_PROGRAM
;===========================================================
INT_PROGRAM:	
	STR			W_TMP
    SWAPR		STATUS,W
    STR			S_TMP
INT_RET:
	SWAPR		S_TMP,0
	STR			STATUS			
	SWAPR		W_TMP,1
	SWAPR		W_TMP,0			
	RETI						
;===========================================================
;SYSTEM START
;===========================================================
RESTART:      
    LCALL		INITIAL
    LCALL		ADC_INIT

MAIN_LOOP:
    LCALL		GET_ADC_DATA
	NOP
    NOP
    LJUMP		MAIN_LOOP
;===========================================================
;INITIAL
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
;***************Clear  SRAM********************
	BANKSEL		PORTA
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
;ADC_INIT
;===========================================================
ADC_INIT: 
	BANKSEL 	PCKEN
    LDWI		PCKEN_DEF
    STR			PCKEN
    
    BANKSEL 	ADCON0
    LDWI		ADCON0_DEF
    STR			ADCON0
    LDWI		ADCON1_DEF
    STR			ADCON1
    LDWI		ADCON2_DEF
    STR			ADCON2
    
    BANKSEL 	ADCON3
    LDWI		ADCON3_DEF
    STR			ADCON3
    LDWI		ADCMPH_DEF
    STR			ADCMPH
    
    BANKSEL 	ADDLY
    LDWI		ADDLY_DEF
    STR			ADDLY
    
    BANKSEL 	ADCON0
    BSR			ADCON0,ADON		;ʹ��ADC
    
	RET
;===========================================================
;��������ET_ADC_DATA
;���ܣ�	 ��ȡͨ��ADCֵ
;���룺	 AN_CNΪͨ�����
;�����	 TEMP_ADRESL����8λ��TEMP_ADRESH����4λ�������β������˲���
;===========================================================
GET_ADC_DATA:
	BANKSEL		ADCON0
    LDWI		1
    STR 		ADCON0
    
	;���ڴ˴�������˲�����
    LCALL		DELAY_10US
    BANKSEL 	ADCON0
    BSR			ADCON0,GO		;����A/Dת��
    NOP
	BTSC		ADCON0,GO		;�ȴ�A/Dת�����
    LJUMP		$-1
    
	BANKSEL 	ADRESH			;A/Dת����ɺ󣬽�ת������浽TEMP_ADRESH,TEMP_ADRESL
    LDR			ADRESH,W
    BANKSEL 	TEMP_ADRESH
    STR			TEMP_ADRESH
    BANKSEL 	ADRESL
    LDR			ADRESL,W
    BANKSEL 	TEMP_ADRESL
    STR			TEMP_ADRESL
    
	RET
;===========================================================
;DELAY_10US 16MHz/2T
;===========================================================
DELAY_10US:
    LDWI		H'14'
    STR			TEMP1
DELAY_10US_LOOP:    
	CLRWDT
    DECRSZ  	TEMP1,F
    LJUMP		DELAY_10US_LOOP
	RET

	END							
    