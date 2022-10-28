//===========================================================
/* 文件名：ASM_64F0Ax_MSCK.ASM
*  功能：  FT64F0Ax_MSCK功能演示
*  IC：    FT64F0A5     TSSOP20
*  内部：  16M/2T	                              
*  说明：  慢时钟测量完成后，将在PA4输出高电平
*          在地址为40,41的SRAM上写入测量值(开启4次平均模式)
*          不开平均模式慢时钟频率=16M/TestTime
*		   开平均模式慢时钟频率=16M/TestTime/4
*
*                FT64F0A5  TSSOP20
*              -------------------
* NC----------|1(PA5)   	(PA4)20|--DemoPortOut     
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
TEMP_SOSCPRL		EQU		0X40
TEMP_SOSCPRH		EQU		0X41

W_TMP				EQU		0X70
S_TMP				EQU		0X71
;===========================================================
;CONSTANT DEFINE
;===========================================================
PIE1_DEF			EQU		B'00000010'	;允许慢时钟测量中断
INTCON_DEF		    EQU		B'11000000'	;使能全局中断和外设中断
OSCCON_DEF		    EQU		B'01110001'	;16MHz 1:1

WPUA_DEF			EQU		B'00000000'	;弱上拉的开关，0-关，1-开		
WPUB_DEF			EQU		B'00000000'
WPUC_DEF			EQU		B'00000000'	

WPDA_DEF			EQU		B'00000000'	;弱下拉的开关，0-关，1-开
WPDB_DEF			EQU		B'00000000'
WPDC_DEF			EQU		B'00000000'

TRISA_DEF			EQU		B'00000000'	;输入输出设置，0-输出，1-输入
TRISB_DEF			EQU		B'00000000'	;PA4-OUT
TRISC_DEF			EQU		B'00000000'

PSRC0_DEF		    EQU		B'11111111'	;源电流设置最大
PSRC1_DEF		    EQU		B'11111111'
PSRC2_DEF		    EQU		B'00001111'

PSINK0_DEF		    EQU		B'11111111'	;灌电流设置最大
PSINK1_DEF		    EQU		B'11111111'
PSINK2_DEF		    EQU		B'00000011'

ANSELA_DEF		    EQU		B'00000000'	;设置对应的IO为数字IO

PCKEN_DEF		    EQU		B'00000100'	;使能TIM2时钟模块
TCKSRC_DEF		    EQU		B'00010000'	;TIM2时钟源HIRC
;===========================================================
;USER	DEFINE
;===========================================================
#define		DemoPortOut		PORTA,4
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
	BANKSEL 	PORTA
    BSR			PORTA,4				;PA4置高，表示慢时钟测量已完成		
    BANKSEL 	SOSCPRL
    LDR			SOSCPRL,0
    BANKSEL 	TEMP_SOSCPRL
    STR			TEMP_SOSCPRL		;将慢时钟测量值低8位放在地址为40的SRAM上
    BANKSEL 	SOSCPRH
    LDR			SOSCPRH,0
    BANKSEL 	TEMP_SOSCPRH
    STR			TEMP_SOSCPRH		;将慢时钟测量值高4位放在地址为41的SRAM上
    BANKSEL 	PIR1
    BSR			PIR1,CKMIF			;清除慢时钟测量完成中断标志位
    
	SWAPR		S_TMP,0
	STR			STATUS					
	SWAPR		W_TMP,1
	SWAPR		W_TMP,0					
	RETI											
;===========================================================
;SYSTEM START
;===========================================================
RESTART: 
	BANKSEL 	PORTA
    LCALL		INITIAL
    LCALL		MSCK_CONFIG

MAIN_LOOP:
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
    
    BANKSEL 	PIR1
    BSR			PIR1,CKMIF
    BANKSEL 	PIE1
    LDWI		PIE1_DEF
    STR			PIE1
    
    BANKSEL 	PCKEN
    LDWI		PCKEN_DEF
    STR			PCKEN
    BANKSEL 	TCKSRC
    LDWI		TCKSRC_DEF
    STR			TCKSRC
    
    BANKSEL 	INTCON
    LDWI		INTCON_DEF
    STR			INTCON        
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
;MEASURE
;===========================================================
MSCK_CONFIG:
	BANKSEL 	TIM2ARRH
    LDWI		0XFF
    STR			TIM2ARRH
    LDWI		0XFF
    STR			TIM2ARRL
    LDWI		0X00
    STR			TIM2PSCR
	BANKSEL 	TIM2CR1
    BSR			TIM2CR1,T2CEN		;使能Timer2计数器
    BANKSEL 	MSCKCON						
    BSR			MSCKCON,CKMAVG	    ;打开平均模式
    BSR			MSCKCON,CKCNTI		;使能快时钟测量慢时钟周期
	RET

	END											
    