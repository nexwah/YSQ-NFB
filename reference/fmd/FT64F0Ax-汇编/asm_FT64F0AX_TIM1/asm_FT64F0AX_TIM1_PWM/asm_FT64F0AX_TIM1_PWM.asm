//===========================================================
/* �ļ�����ASM_64F0Ax_TIM1_PWM.ASM
* ���ܣ�   FT64F0Ax_TIM1_PWM������ʾ
*  IC��    FT64F0A5    TSSOP20
* �ڲ���   16M/2T	                            
* ˵����   TIM1 CH1�����������Ϊ32kHz�ķ���
*
*                FT64F0A5  TSSOP20
*              -------------------
* NC----------|1(PA5)   	(PA4)20|-----------NC     
* NC----------|2(PA6)   	(PA3)19|-----------NC 
* NC----------|3(PA7)   	(PA2)18|-----------NC
* TIM1_CH1N---|4(PC0)   	(PA1)17|-----------NC
* NC----------|5(PC1)		(PA0)16|-----TIM1_CH1	
* NC----------|6(PB7)		(PB0)15|-----------NC
* GND---------|7(GND)		(PB1)14|-----------NC
* NC----------|8(PB6)		(PB2)13|-----------NC
* VDD---------|9(VDD)		(PB3)12|-----------NC
* NC----------|10(PB5)		(PB4)11|-----------NC
*				-------------------
*/ 
//===========================================================
#INCLUDE  <FT64F0AX.INC>;
;===========================================================
;RAM DEFINE
;===========================================================
	W_TMP			    EQU			0X70
	S_TMP				EQU			0X71
;===========================================================
;CONSTANT	DEFINE	
;===========================================================
	INTCON_DEF			EQU		B'00000000'		;��ֹ�����ж�
	OSCCON_DEF			EQU		B'01110001'		;16MHz,1:1

	WPUA_DEF			EQU		B'00000000'		;�������Ŀ��أ�0-�أ�1-��		
	WPUB_DEF			EQU		B'00000000'
	WPUC_DEF			EQU		B'00000000'	

	WPDA_DEF			EQU		B'00000000'		;�������Ŀ��أ�0-�أ�1-��
	WPDB_DEF			EQU		B'00000000'
	WPDC_DEF			EQU		B'00000000'
	
	TRISA_DEF			EQU		B'00000000'		;����������ã�0-�����1-���룬PA0-OUT
	TRISB_DEF			EQU		B'00000000'
	TRISC_DEF			EQU		B'00000000'		;PC0-OUT

	PSRC0_DEF			EQU		B'11111111'		;Դ�����������
	PSRC1_DEF			EQU		B'11111111'
	PSRC2_DEF			EQU		B'00001111'

	PSINK0_DEF			EQU		B'11111111'		;������������
	PSINK1_DEF			EQU		B'11111111'
	PSINK2_DEF			EQU		B'00000011'

	ANSELA_DEF			EQU		B'00000000'		;���ö�Ӧ��IOΪ����IO
		
	PCKEN_DEF			EQU		B'00000010'		;ʹ��Timer1ʱ��ģ��
    CKOCON_DEF			EQU		B'00100000'		;Timer1��Ƶʱ��ռ�ձȵ���λ4ns�ӳ�
    TCKSRC_DEF			EQU		B'00000011'		;Timer1ʱ��ԴΪHIRC��2��Ƶ
    
    TIM1CR1_DEF 		EQU		B'10000101'		;�����Զ�װ�أ�ʹ�ܼ����������ض������ϼ���
    TIM1CR2_DEF 		EQU		B'01000000'
    
    TIM1SMCR_DEF		EQU		B'00000000'		
    TIM1ETR_DEF 		EQU		B'00000000'
    
    TIM1IER_DEF			EQU		B'00000000'		;��ֹ�����ж�
    
    TIM1SR1_DEF	    	EQU		B'00000000'
    TIM1SR2_DEF 		EQU		B'00000000'
    
    TIM1EGR_DEF 		EQU		B'00000000'
    
    TIM1CCMR1_DEF   	EQU		B'01101000'		;��ͨ��1����Ϊ�����PWMģʽ1������TIM1CCR1H/LԤװ�ع���
    TIM1CCMR2_DEF   	EQU		B'00000000'
    TIM1CCMR3_DEF   	EQU		B'00000000'
    TIM1CCMR4_DEF   	EQU		B'00000000'
    
    TIM1CCER1_DEF   	EQU		B'00001111'		;ͨ��1ʹ�����������������͵�ƽ��Ч
    TIM1CCER2_DEF   	EQU		B'00000000'
    
	TIM1CNTRH_DEF   	EQU		B'00000000'
    TIM1CNTRL_DEF   	EQU		B'00000000'
    
    TIM1ARRH_DEF		EQU		0x03			;�Զ�װ�����ڸ�8λ03H
    TIM1ARRL_DEF		EQU		0xe8			;�Զ�װ�����ڵ�8λe8H
    
    TIM1PSCRH_DEF   	EQU		B'00000000'		;����Ƶ
    TIM1PSCRL_DEF   	EQU		B'00000000'		;����Ƶ
    
    TIM1RCR_DEF	    	EQU		B'00001111'		;�ظ���������ֵT1REP[7:0]��(T1REP+1)��Ӧ��PWM���ڵ���Ŀ(���ض���ģʽ��)
    
    TIM1CCR1H_DEF   	EQU		0X01			;PWM����
    TIM1CCR1L_DEF   	EQU		0XF4		
    
    TIM1BKR_DEF	    	EQU		B'11000000'		;�����ʹ�ܼ��Զ����ʹ�ܣ���ֹɲ������
    
    TIM1DTR_DEF	    	EQU		B'00000111'		;�������������ã�������뻥�����֮�����������ʱ��Ϊ875ns
    
    TIM1OISR_DEF		EQU		B'00000000'		;����״̬�������
    
    LEBCON_DEF			EQU		B'00000000'		;��ֹǰ������
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
	LCALL		TIMER1_INITIAL
MAIN:
	NOP
    NOP
    LJUMP		MAIN
;===========================================================
;�жϴ������
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
;TIMER1	INITIAL
;===========================================================
TIMER1_INITIAL:
    BANKSEL 	PCKEN
    LDWI		PCKEN_DEF
    STR			PCKEN
    
    BANKSEL 	CKOCON
    LDWI		CKOCON_DEF
    STR			CKOCON
    
	BANKSEL 	TCKSRC
    LDWI		TCKSRC_DEF
    STR			TCKSRC
    
    BANKSEL 	TIM1CR1
    LDWI		TIM1CR1_DEF
    STR			TIM1CR1
    LDWI		TIM1CR2_DEF
    STR			TIM1CR2
    LDWI		TIM1SMCR_DEF
    STR			TIM1SMCR
    LDWI		TIM1ETR_DEF
    STR			TIM1ETR
    LDWI		TIM1IER_DEF
    STR			TIM1IER
    LDWI		TIM1SR1_DEF
    STR			TIM1SR1
    LDWI		TIM1SR2_DEF
    STR			TIM1SR2
    LDWI		TIM1EGR_DEF
    STR			TIM1EGR
    LDWI		TIM1CCMR1_DEF
    STR			TIM1CCMR1
    LDWI		TIM1CCMR2_DEF
    STR			TIM1CCMR2
    LDWI		TIM1CCMR3_DEF
    STR			TIM1CCMR3
    LDWI		TIM1CCMR4_DEF
    STR			TIM1CCMR4
    LDWI		TIM1CCER1_DEF
    STR			TIM1CCER1
    LDWI		TIM1CCER2_DEF
    STR			TIM1CCER2
    
	BANKSEL 	TIM1CNTRH
    LDWI		TIM1CNTRH_DEF
    STR			TIM1CNTRH
    LDWI		TIM1CNTRL_DEF
    STR			TIM1CNTRL
	LDWI		TIM1PSCRH_DEF
    STR			TIM1PSCRH
    LDWI		TIM1PSCRL_DEF
    STR			TIM1PSCRL
    LDWI		TIM1ARRH_DEF
    STR			TIM1ARRH
    LDWI		TIM1ARRL_DEF
    STR			TIM1ARRL
    LDWI		TIM1RCR_DEF
    STR			TIM1RCR
    LDWI		TIM1CCR1H_DEF
    STR			TIM1CCR1H
    LDWI		TIM1CCR1L_DEF
    STR			TIM1CCR1L
    LDWI		TIM1BKR_DEF
    STR			TIM1BKR
    LDWI		TIM1DTR_DEF
    STR			TIM1DTR
    LDWI		TIM1OISR_DEF
    STR			TIM1OISR
    
	BANKSEL 	LEBCON
    LDWI		LEBCON_DEF
    STR			LEBCON
    
    RET

	END	
   
