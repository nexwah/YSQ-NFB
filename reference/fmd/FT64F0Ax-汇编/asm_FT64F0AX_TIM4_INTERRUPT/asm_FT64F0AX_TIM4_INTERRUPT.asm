//===========================================================
/* 文件名：ASM_64F0Ax_TIM4.ASM
* 功能：   FT64F0Ax_TIM4功能演示
*  IC:     FT64F0A5     TSSOP20
* 内部：   16M/2T	                              
* 说明：   程序通过TIM4中断在PB3输出频率为4K的方波
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
	TRISB_DEF			EQU		B'00000000'	    ;PB3-OUT
	TRISC_DEF			EQU		B'00000000'

	PSRC0_DEF			EQU		B'11111111'		;源电流设置最大
	PSRC1_DEF			EQU		B'11111111'
	PSRC2_DEF			EQU		B'00001111'

	PSINK0_DEF			EQU		B'11111111'		;灌电流设置最大
	PSINK1_DEF			EQU		B'11111111'
	PSINK2_DEF			EQU		B'00000011'

	ANSELA_DEF			EQU		B'00000000'		;设置对应的IO为数字IO
		
	PCKEN_DEF			EQU		B'00001000'		;使能Timer4时钟模块
    TIM4CR1_DEF		    EQU		B'10000101'		;允许自动装载，使能计数器
    
    TIM4IER_DEF			EQU		B'00000001'		;允许更新中断
    
    TIM4SR_DEF			EQU		B'00000000'		
    
    TIM4EGR_DEF 		EQU		B'00000000'
    
    TIM4CNTR_DEF		EQU		0x00
    
    TIM4PSCR_DEF		EQU		B'00000100'		;预分频器的值
    
    TIM4ARR_DEF 		EQU		125				;自动装载值
;===========================================================
;CONSTANT	DEFINE	
;===========================================================
	#define		DemoPortOut		PORTB,3
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
	LCALL		TIMER4_INITIAL

	BANKSEL 	INTCON
    BSR			INTCON,GIE
    BSR			INTCON,PEIE
MAIN:
	NOP
    NOP
    LJUMP		MAIN
;===========================================================
;中断处理程序
;===========================================================
INT_PROGRAM:
	BANKSEL 	TIM4SR
    BSR			TIM4SR,T4UIF
    BANKSEL 	PORTB
    LDWI		08H
    XORWR		PORTB,F
    
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
;TIMER4	INITIAL
;===========================================================
TIMER4_INITIAL:
    BANKSEL 	PCKEN
    LDWI		PCKEN_DEF
    STR			PCKEN

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
   