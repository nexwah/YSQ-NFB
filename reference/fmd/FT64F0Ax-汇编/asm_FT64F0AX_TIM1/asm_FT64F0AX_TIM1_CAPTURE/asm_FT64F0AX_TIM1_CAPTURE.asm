//===========================================================
/*文件名：ASM_64F0Ax_TIM1_CAPTURE.ASM
* 功能：  FT64F0Ax_TIM1_CAPTURE功能演示
*  IC：   FT64F0A5  TSSOP20
* 内部：  16M/2T	                            
* 说明：  例程通过TIM1的捕获通道1测量TIM4输出到PB3的波形的周期（4K）
*		  TIM1计数器捕获的数据放在CDATA_H,CDATA_L里面。
*
*                FT64F0A5  TSSOP20
*              -------------------
* NC----------|1(PA5)   	(PA4)20|-----------NC     
* NC----------|2(PA6)   	(PA3)19|-----------NC 
* NC----------|3(PA7)   	(PA2)18|-----------NC
* NC----------|4(PC0)   	(PA1)17|-----------NC
* NC----------|5(PC1)		(PA0)16|-----TIM1_CH1
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
	CDATA_H     		EQU			0X23
    CDATA_L		        EQU			0X24
    
	W_TMP			    EQU			0X70
	S_TMP				EQU			0X71
;===========================================================
;CONSTANT	DEFINE	
;===========================================================
	INTCON_DEF			EQU		B'01000000'		;使能外设中断
	OSCCON_DEF			EQU		B'01110001'		;16MHz
    
	WPUA_DEF			EQU		B'00000000'		;弱上拉的开关，0-关，1-开		
	WPUB_DEF			EQU		B'00000000'
	WPUC_DEF			EQU		B'00000000'	

	WPDA_DEF			EQU		B'00000000'		;弱下拉的开关，0-关，1-开
	WPDB_DEF			EQU		B'00000000'
	WPDC_DEF			EQU		B'00000000'
	
	TRISA_DEF			EQU		B'00000000'		;输入输出设置，0-输出，1-输入
	TRISB_DEF			EQU		B'00000000'		;PB3-OUT
	TRISC_DEF			EQU		B'00000000'

	PSRC0_DEF			EQU		B'11111111'		;源电流设置最大
	PSRC1_DEF			EQU		B'11111111'
	PSRC2_DEF			EQU		B'00001111'

	PSINK0_DEF			EQU		B'11111111'		;灌电流设置最大
	PSINK1_DEF			EQU		B'11111111'
	PSINK2_DEF			EQU		B'00000011'

	ANSELA_DEF			EQU		B'00000000'		;设置对应的IO为数字IO
		
	PCKEN_DEF			EQU		B'00000010'		;使能Timer1时钟模块
    CKOCON_DEF			EQU		B'00100000'		;Timer1倍频时钟占空比调节位4ns延迟
    TCKSRC_DEF			EQU		B'00000011'		;Timer1时钟源为HIRC的2倍频
    
    TIM1CR1_DEF	    	EQU		B'10000101'		;允许自动装载，使能计数器，向上计数

    TIM1SMCR_DEF		EQU		B'01010000'		;滤波后的定时器输入1(TI1FP1)
    TIM1ETR_DEF	    	EQU		B'00000000'
    
    TIM1IER_DEF			EQU		B'00000010'		;允许捕获/比较1中断
    
    TIM1SR1_DEF	    	EQU		B'00000000'
    TIM1SR2_DEF 		EQU		B'00000000'
    
    TIM1EGR_DEF 		EQU		B'00000000'  
    TIM1CCMR1_DEF   	EQU		B'00000001'		;将通道1配置为输入，IC1映射在TI1FP1上
    
    TIM1CCER1_DEF   	EQU		B'00000001'		;通道1使能捕获，捕捉发生在TI1F的高电平或上升沿
    TIM1CCER2_DEF   	EQU		B'00000000'
    
	TIM1CNTRH_DEF   	EQU		B'00000000'
    TIM1CNTRL_DEF   	EQU		B'00000000'
    
    TIM1PSCRH_DEF   	EQU		B'00000000'		;不分频
    TIM1PSCRL_DEF   	EQU		B'00000000'		;不分频    
    TIM4CR1_DEF 	 	EQU		B'00000001'		;使能计数器 
    TIM4IER_DEF			EQU		B'00000001'		;允许更新中断
    TIM4SR_DEF			EQU		B'00000000'		
    TIM4EGR_DEF 		EQU		B'00000000'
    TIM4CNTR_DEF		EQU		0x00
    TIM4PSCR_DEF		EQU		B'00000100'		;预分频器的值
    TIM4ARR_DEF 		EQU		124				;自动装载值
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
	LCALL		TIMER1_INITIAL
	LCALL		TIMER4_INITIAL
    
	BANKSEL 	INTCON
    BSR			INTCON,GIE			;使能全局中断
    BSR			INTCON,PEIE			;使能外设中断
    BANKSEL 	TIM1IER
    BSR			TIM1IER,T1UIE		;允许TIM1中断
MAIN:
	NOP
    NOP
    LJUMP		MAIN
;===========================================================
;INT_PROGRAM
;===========================================================
INT_PROGRAM:
	BANKSEL 	TIM1SR1
    BTSC		TIM1SR1,T1CC1IF		;当捕获事件发生时进入TIM1中断程序
    LJUMP		TIM1_Interrupt
    BANKSEL 	TIM4SR
    BTSC		TIM4SR,T4UIF
    LJUMP		TIM4_Interrupt
    LJUMP		INT_RET
    
TIM1_Interrupt:
    BSR			TIM1SR1,T1CC1IF		;写1清0
  
    BANKSEL 	PORTB
    LDWI		10H
    XORWR		PORTB,F				;取反PB4
    
    BANKSEL 	TIM1CCR1H
    LDR			TIM1CCR1H,0
    BANKSEL 	CDATA_H				;TIM1计数器捕获的数据存放在CDATA_H,CDATA_L
    STR			CDATA_H
    BANKSEL 	TIM1CCR1L
    LDR			TIM1CCR1L,0
    BANKSEL 	CDATA_L
    STR			CDATA_L
    LJUMP		INT_RET
    
TIM4_Interrupt:
	BANKSEL 	TIM4SR
    BSR			TIM4SR,T4UIF		;写1清0
    BANKSEL 	PORTB
    LDWI		08H
    XORWR		PORTB,F				;取反PB3
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
    LDWI		TIM1SMCR_DEF
    STR			TIM1SMCR
    LDWI		B'00000100'
    IORWR		TIM1SMCR,F
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
	
	BANKSEL 	TIM1CR1
	BSR			TIM1CR1,T1CEN
    
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
 