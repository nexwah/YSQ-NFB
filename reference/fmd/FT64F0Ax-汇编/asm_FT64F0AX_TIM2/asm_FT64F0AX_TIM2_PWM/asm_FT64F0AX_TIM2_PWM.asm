//===========================================================
/* 文件名：ASM_64F0Ax_TIM2_PWM.ASM
* 功能：   FT64F0Ax_TIM2_PWM功能演示
*  IC：    FT64F0A5     TSSOP20
* 内部：   16M/2T	                            
* 说明：   TIM2 CH1,CH2输出周期为32kHz的方波
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
	INTCON_DEF			EQU		B'00000000'		;禁止所有中断
	OSCCON_DEF			EQU		B'01110001'		;16MHz,1:1

	WPUA_DEF			EQU		B'00000000'		;弱上拉的开关，0-关，1-开		
	WPUB_DEF			EQU		B'00000000'
	WPUC_DEF			EQU		B'00000000'	

	WPDA_DEF			EQU		B'00000000'		;弱下拉的开关，0-关，1-开
	WPDB_DEF			EQU		B'00000000'
	WPDC_DEF			EQU		B'00000000'
	
	TRISA_DEF			EQU		B'00000000'		;输入输出设置，0-输出，1-输入 
												;PA4,PA5-OUT
	TRISB_DEF			EQU		B'00000000'	
	TRISC_DEF			EQU		B'00000000'

	PSRC0_DEF			EQU		B'11111111'		;源电流设置最大
	PSRC1_DEF			EQU		B'11111111'
	PSRC2_DEF			EQU		B'00001111'

	PSINK0_DEF			EQU		B'11111111'		;灌电流设置最大
	PSINK1_DEF			EQU		B'11111111'
	PSINK2_DEF			EQU		B'00000011'

	ANSELA_DEF			EQU		B'00000000'		;设置对应的IO为数字IO
		
	PCKEN_DEF			EQU		B'00000100'		;使能Timer2时钟模块
    CKOCON_DEF			EQU		B'00100000'		;Timer2倍频时钟占空比调节位4ns延迟
    TCKSRC_DEF			EQU		B'00110000'		;Timer2时钟源为HIRC的2倍频
    
    TIM2CR1_DEF 		EQU		B'10000101'		;允许自动装载，使能计数器
    
    TIM2IER_DEF			EQU		B'00000000'		;禁止所有中断
    
    TIM2SR1_DEF	        EQU		B'00000000'
    TIM2SR2_DEF	        EQU		B'00000000'
    
    TIM2EGR_DEF 		EQU		B'00000000'
    
    TIM2CCMR1_DEF   	EQU		B'01101000'		;将通道CH1配置为输出，PWM模式1
    TIM2CCMR2_DEF   	EQU		B'01101000'		;将通道CH2配置为输出，PWM模式1
    TIM2CCMR3_DEF   	EQU		B'00000000'
    
    TIM2CCER1_DEF   	EQU		B'00110011'		;比较1和2输出使能，低电平有效
    TIM2CCER2_DEF   	EQU		B'00000000'
    
    TIM2CNTRH_DEF   	EQU		B'00000000'
    TIM2CNTRL_DEF   	EQU		B'00000000'
    
    TIM2ARRH_DEF		EQU		0x03			;自动装载高8位03H
    TIM2ARRL_DEF		EQU		0xe8			;自动装载低8位e8H
    
    TIM2CCR1H_DEF   	EQU		0x01			;装入比较1的预装载值高8位01H
    TIM2CCR1L_DEF   	EQU		0xf4			;装入比较1的预装载值低8位F4H
    
    TIM2CCR2H_DEF   	EQU		0x01			;装入比较2的预装载值高8位01H
    TIM2CCR2L_DEF   	EQU		0xf4			;装入比较2的预装载值低8位F4H
    
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
;中断处理程序
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
    
