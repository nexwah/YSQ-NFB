//===========================================================
/* �ļ�����ASM_64F0Ax_TIM2_PWM.ASM
* ���ܣ�   FT64F0Ax_TIM2_PWM������ʾ
*  IC��    FT64F0A5     TSSOP20
* �ڲ���   16M/2T	                            
* ˵����   TIM2 CH1,CH2�������Ϊ32kHz�ķ���
*
*                FT64F0A5  TSSOP20
*              -------------------
* TIM2_CH1----|1(PA5)   	(PA4)20|-----TIM2_CH2    
* NC----------|2(PA6)   	(PA3)19|-----------NC 
* NC----------|3(PA7)   	(PA2)18|-----------NC
* NC----------|4(PC0)   	(PA1)17|-----------NC
* NC----------|5(PC1)		(PA0)16|-----------NC	
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
	W_TMP   	EQU     0X70
	S_TMP		EQU     0X71
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
	
	TRISA_DEF			EQU		B'00000000'		;����������ã�0-�����1-���� 
												;PA4,PA5-OUT
	TRISB_DEF			EQU		B'00000000'	
	TRISC_DEF			EQU		B'00000000'

	PSRC0_DEF			EQU		B'11111111'		;Դ�����������
	PSRC1_DEF			EQU		B'11111111'
	PSRC2_DEF			EQU		B'00001111'

	PSINK0_DEF			EQU		B'11111111'		;������������
	PSINK1_DEF			EQU		B'11111111'
	PSINK2_DEF			EQU		B'00000011'

	ANSELA_DEF			EQU		B'00000000'		;���ö�Ӧ��IOΪ����IO
		
	PCKEN_DEF			EQU		B'00000100'		;ʹ��Timer2ʱ��ģ��
    CKOCON_DEF			EQU		B'00100000'		;Timer2��Ƶʱ��ռ�ձȵ���λ4ns�ӳ�
    TCKSRC_DEF			EQU		B'00110000'		;Timer2ʱ��ԴΪHIRC��2��Ƶ
    
    TIM2CR1_DEF 		EQU		B'10000101'		;�����Զ�װ�أ�ʹ�ܼ�����
    
    TIM2IER_DEF			EQU		B'00000000'		;��ֹ�����ж�
    
    TIM2SR1_DEF	        EQU		B'00000000'
    TIM2SR2_DEF	        EQU		B'00000000'
    
    TIM2EGR_DEF 		EQU		B'00000000'
    
    TIM2CCMR1_DEF   	EQU		B'01101000'		;��ͨ��CH1����Ϊ�����PWMģʽ1
    TIM2CCMR2_DEF   	EQU		B'01101000'		;��ͨ��CH2����Ϊ�����PWMģʽ1
    TIM2CCMR3_DEF   	EQU		B'00000000'
    
    TIM2CCER1_DEF   	EQU		B'00110011'		;�Ƚ�1��2���ʹ�ܣ��͵�ƽ��Ч
    TIM2CCER2_DEF   	EQU		B'00000000'
    
    TIM2CNTRH_DEF   	EQU		B'00000000'
    TIM2CNTRL_DEF   	EQU		B'00000000'
    
    TIM2ARRH_DEF		EQU		0x03			;�Զ�װ�ظ�8λ03H
    TIM2ARRL_DEF		EQU		0xe8			;�Զ�װ�ص�8λe8H
    
    TIM2CCR1H_DEF   	EQU		0x01			;װ��Ƚ�1��Ԥװ��ֵ��8λ01H
    TIM2CCR1L_DEF   	EQU		0xf4			;װ��Ƚ�1��Ԥװ��ֵ��8λF4H
    
    TIM2CCR2H_DEF   	EQU		0x01			;װ��Ƚ�2��Ԥװ��ֵ��8λ01H
    TIM2CCR2L_DEF   	EQU		0xf4			;װ��Ƚ�2��Ԥװ��ֵ��8λF4H
    
    TIM2CCR3H_DEF   	EQU		B'00000000'
    TIM2CCR3L_DEF   	EQU		B'00000000'
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
	LCALL		TIMER2_INITIAL

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
;***************Clear  SRAM*********************
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
;TIMER2	INITIAL
;===========================================================
TIMER2_INITIAL:
    BANKSEL 	PCKEN
    LDWI		PCKEN_DEF
    STR			PCKEN
    BANKSEL 	CKOCON
    LDWI		CKOCON_DEF
    STR			CKOCON
    
	BANKSEL 	TCKSRC
    LDWI		TCKSRC_DEF
    STR			TCKSRC
    
    BANKSEL 	TIM2CR1
    LDWI		TIM2CR1_DEF
    STR			TIM2CR1
    LDWI		TIM2IER_DEF
    STR			TIM2IER
    LDWI		TIM2SR1_DEF
    STR			TIM2SR1
    LDWI		TIM2SR2_DEF
    STR			TIM2SR2
    LDWI		TIM2EGR_DEF
    STR			TIM2EGR
    LDWI		TIM2CCMR1_DEF
    STR			TIM2CCMR1
    LDWI		TIM2CCMR2_DEF
    STR			TIM2CCMR2
    LDWI		TIM2CCMR3_DEF
    STR			TIM2CCMR3
    LDWI		TIM2CCER1_DEF
    STR			TIM2CCER1
    LDWI		TIM2CCER2_DEF
    STR			TIM2CCER2
    
	LDWI		TIM2CNTRH_DEF
    STR			TIM2CNTRH
    LDWI		TIM2CNTRL_DEF
    STR			TIM2CNTRL
    LDWI		TIM2ARRH_DEF
    STR			TIM2ARRH
    LDWI		TIM2ARRL_DEF
    STR			TIM2ARRL
    LDWI		TIM2CCR1H_DEF
    STR			TIM2CCR1H
    LDWI		TIM2CCR1L_DEF
    STR			TIM2CCR1L
    LDWI		TIM2CCR2H_DEF
    STR			TIM2CCR2H
    LDWI		TIM2CCR2L_DEF
    STR			TIM2CCR2L
    
	BANKSEL 	TIM2CCR3H
	LDWI		TIM2CCR3H_DEF
    STR			TIM2CCR3H
    LDWI		TIM2CCR3L_DEF
    STR			TIM2CCR3L
    
    RET

	END							
    
