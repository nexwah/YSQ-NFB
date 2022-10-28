;===========================================================
/* 文件名：ASM_64F0Ax_SLEEP.ASM
* 功能：   FT64F0Ax_SLEEP功能演示
*  IC：    FT64F0A5     TSSOP20
* 内部：   16M/4T	                               
* 说明：   此程序为FT64F0Ax-SLEEP睡眠演示程序，上电之后LED1、LED2同时置高约2s，
*          然后置低，进入睡眠。测试FT64F0Ax的睡眠功耗:
*
*                FT64F0A5  TSSOP20
*              -------------------
* NC----------|1(PA5)   	(PA4)20|-----------NC     
* NC----------|2(PA6)   	(PA3)19|-----------NC 
* NC----------|3(PA7)   	(PA2)18|-----------NC
* NC----------|4(PC0)   	(PA1)17|---------LED1
* NC----------|5(PC1)		(PA0)16|---------LED2	
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
	TEMP		EQU		0X40
    TEMP1		EQU		0X41
    TEMP2		EQU		0X42
	W_TMP	    EQU		0x43
	S_TMP		EQU		0x44
;===========================================================
;CONSTANT	DEFINE	
;===========================================================
	INTCON_DEF	EQU		B'00000000'	;禁止所有中断
	OSCCON_DEF	EQU		B'01110001'	;16MHz 1:1

	WPUA_DEF	EQU		B'00000000'	;弱上拉的开关，0-关，1-开		
	WPUB_DEF	EQU		B'00000000'
	WPUC_DEF	EQU		B'00000000'	

	WPDA_DEF	EQU		B'00000000'	;弱下拉的开关，0-关，1-开
	WPDB_DEF	EQU		B'00000000'
	WPDC_DEF	EQU		B'00000000'

	TRISA_DEF	EQU		B'00000000'	;输入输出设置，0-输出，1-输入
									;PA1-OUT，PA0-OUT
	TRISB_DEF	EQU		B'00000000'	
	TRISC_DEF	EQU		B'00000000'

	PSRC0_DEF	EQU		B'11111111'	;源电流设置最大
	PSRC1_DEF	EQU		B'11111111'
	PSRC2_DEF	EQU		B'00001111'

	PSINK0_DEF	EQU		B'11111111'	;灌电流设置最大
	PSINK1_DEF	EQU		B'11111111'
	PSINK2_DEF	EQU		B'00000011'

	ANSELA_DEF	EQU		B'00000000'	;设置对应的IO为数字IO
;===========================================================
;USER	DEFINE
;===========================================================
#DEFINE		LED1		PORTA,1
#DEFINE		LED2		PORTA,0
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
    BSR			LED1
    NOP
    BSR			LED2
    LCALL		DELAY_2S
    BCR			LED1
    NOP		
    BCR			LED2
MAIN:
	CLRWDT
    SLEEP
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
;***************Clear  SRAM*****************
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
;DELAY_2S(16M/4T，实测为1.97s)
;===========================================================
DELAY_2S:
	LDWI		H'C8'
    STR			TEMP
DELAY_2S_LOOP1:
    LDWI		H'C8'
    STR			TEMP1
DELAY_2S_LOOP2:
    LDWI		H'30'
    STR			TEMP2
DELAY_2S_LOOP3:
	CLRWDT
    DECRSZ  	TEMP2,F
    LJUMP		DELAY_2S_LOOP3
    DECRSZ  	TEMP1,F
    LJUMP		DELAY_2S_LOOP2
    DECRSZ  	TEMP,F
    LJUMP		DELAY_2S_LOOP1
    RET

	END						
    
