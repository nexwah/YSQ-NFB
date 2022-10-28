//===========================================================
/* �ļ�����ASM_64F0Ax_TIM2_CAPTURE.ASM
* ���ܣ�   FT64F0Ax_TIM2_CAPTURE������ʾ
*  IC��    FT64F0A5     TSSOP20
* �ڲ���   16M/2T	                             
* ˵����   ����ͨ��TIM2�Ĳ���ͨ��1����TIM4�����PB3�Ĳ��ε����ڣ�4K��
*		   TIM2��������������ݷ���CDATA_H,CDATA_L���档
*
*                FT64F0A5  TSSOP20
*              -------------------
* TIM2_CH1----|1(PA5)   	(PA4)20|-----------NC     
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
//===========================================================
#INCLUDE  <FT64F0AX.INC>;
;===========================================================
;RAM DEFINE
;===========================================================
	CDATA_H		        EQU			0X23
    CDATA_L		        EQU			0X24
    
	W_TMP			    EQU			0X70
	S_TMP				EQU			0X71
;===========================================================
;CONSTANT	DEFINE	
;===========================================================
	INTCON_DEF			EQU		B'01000000'		;ʹ�������ж�
	OSCCON_DEF			EQU		B'01110001'		;16MHz,1:1

	WPUA_DEF			EQU		B'00000000'		;�������Ŀ��أ�0-�أ�1-��		
	WPUB_DEF			EQU		B'00000000'
	WPUC_DEF			EQU		B'00000000'	

	WPDA_DEF			EQU		B'00000000'		;�������Ŀ��أ�0-�أ�1-��
	WPDB_DEF			EQU		B'00000000'
	WPDC_DEF			EQU		B'00000000'
	
	TRISA_DEF			EQU		B'00000000'		;����������ã�0-�����1-����
	TRISB_DEF			EQU		B'00000000'		;PB3-OUT
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
    
    TIM2IER_DEF			EQU		B'00000010'		;������/�Ƚ�1�ж�
    
    TIM2SR1_DEF 		EQU		B'00000000'
    TIM2SR2_DEF 		EQU		B'00000000'
    
    TIM2EGR_DEF 		EQU		B'00000000'
    
    TIM2CCMR1_DEF   	EQU		B'00000001'		;��ͨ��1����Ϊ���룬IC1ӳ����TI1FP1��
    
    TIM2CCER1_DEF   	EQU		B'00000001'		;ͨ��1ʹ�ܲ��񣬲�׽������TI1F�ĸߵ�ƽ��������
    
    TIM2CNTRH_DEF   	EQU		B'00000000'		
    TIM2CNTRL_DEF   	EQU		B'00000000'		   
    TIM2PSCR_DEF		EQU		B'00000000'		;����Ƶ   
    TIM4CR1_DEF  		EQU		B'10000001'		;�����Զ�װ�أ�ʹ�ܼ�����  
    TIM4IER_DEF			EQU		B'00000001'		;��������ж� 
    TIM4SR_DEF			EQU		B'00000000'		 
    TIM4EGR_DEF 		EQU		B'00000000'
    TIM4CNTR_DEF		EQU		0x00
    TIM4PSCR_DEF		EQU		B'00000100'		;Ԥ��Ƶ����ֵ
    TIM4ARR_DEF 		EQU		124				;�Զ�װ��ֵ
;===========================================================
;CONSTANT	DEFINE	
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
	LCALL		TIMER2_INITIAL
	LCALL		TIMER4_INITIAL
    
	BANKSEL 	INTCON
    BSR			INTCON,GIE			;ʹ��ȫ���ж�
    BSR			INTCON,PEIE			;ʹ�������ж�
    BANKSEL  	TIM2IER
    BSR			TIM2IER,T2UIE		;����TIM2�ж�
MAIN:
	NOP
    NOP
    LJUMP		MAIN
;===========================================================
;�жϴ������
;===========================================================
INT_PROGRAM:
	BANKSEL 	TIM2SR1
    BTSC		TIM2SR1,T2CC1IF		;�������¼�����ʱ����TIM2�жϳ���
    LJUMP		TIM2_Interrupt
    BANKSEL 	TIM4SR
    BTSC		TIM4SR,T4UIF
    LJUMP		TIM4_Interrupt
    LJUMP		INT_RET
    
TIM2_Interrupt:
    BSR			TIM2SR1,T2CC1IF		;д1��0
    BANKSEL 	TIM2CNTRH
    CLRF		TIM2CNTRH
    CLRF		TIM2CNTRL
  
    BANKSEL 	PORTB
    LDWI		10H
    XORWR		PORTB,F				;ȡ��PB4
    
    BANKSEL 	TIM2CCR1H
    LDR			TIM2CCR1H,0
    BANKSEL 	CDATA_H				;TIM2��������������ݴ����CDATA_H,CDATA_L
    STR			CDATA_H
    BANKSEL 	TIM2CCR1L
    LDR			TIM2CCR1L,0
    BANKSEL 	CDATA_L
    STR			CDATA_L
    LJUMP		INT_RET
    
TIM4_Interrupt:
	BANKSEL 	TIM4SR
    BSR			TIM4SR,T4UIF		;д1��0
    BANKSEL 	PORTB
    LDWI		08H
    XORWR		PORTB,F				;ȡ��PB3
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
;***************Clear  SRAM**************************************
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
    LDWI		TIM2CCER1_DEF
    STR			TIM2CCER1
    
	LDWI		TIM2PSCR_DEF
    STR			TIM2PSCR
    
    LDWI		TIM2CNTRH_DEF
    STR			TIM2CNTRH
    LDWI		TIM2CNTRL_DEF
    STR			TIM2CNTRL
	
	BSR			TIM2CR1,T2CEN
    
    RET
;===========================================================
;TIMER4	INITIAL
;===========================================================
TIMER4_INITIAL:
    BANKSEL 	PCKEN
    BSR			PCKEN,TIM4EN

    BANKSEL 	TIM4CR1
    LDWI		TIM4CR1_DEF
    STR			TIM4CR1
    LDWI		TIM4IER_DEF
    STR			TIM4IER
    LDWI		TIM4SR_DEF
    STR			TIM4SR
    LDWI		TIM4EGR_DEF
    STR			TIM4EGR  
	LDWI		TIM4CNTR_DEF
    STR			TIM4CNTR
    LDWI		TIM4PSCR_DEF
    STR			TIM4PSCR
    LDWI		TIM4ARR_DEF
    STR			TIM4ARR
    
    RET

	END		
  