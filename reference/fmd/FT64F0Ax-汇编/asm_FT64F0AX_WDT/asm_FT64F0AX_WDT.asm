;===========================================================
/* 文件名：ASM_64F0Ax_WDT.ASM
* 功能：   FT64F0Ax_WDT功能演示
*  IC：    FT64F0A5     TSSOP20
* 内部：   16M/2T	                            
* 说明：   程序中开启看门狗并将看门狗时间设置为32ms
*		   a. 主函数先在DemoPortOut脚输出一个高3ms低3ms的信号，
*		   b. 然后循环输出高1ms低1ms，500Hz的信号。
*		   如果不在主程序和延时程序中清看门狗，则每隔32ms单片机复位后，会重复输出a+b信号；
*		   如果在主函数中清看门狗，则一直输出b信号
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
	INTCON_DEF		EQU		B'00000000'	;禁止所有中断
	OSCCON_DEF		EQU		B'01110001'	;16MHz 1:1

	WPUA_DEF		EQU		B'00000000'	;弱上拉的开关，0-关，1-开		
	WPUB_DEF		EQU		B'00000000'
	WPUC_DEF		EQU		B'00000000'	

	WPDA_DEF		EQU		B'00000000'	;弱下拉的开关，0-关，1-开
	WPDB_DEF		EQU		B'00000000'
	WPDC_DEF		EQU		B'00000000'

	TRISA_DEF		EQU		B'00000000'	;输入输出设置，0-输出，1-输入
	TRISB_DEF		EQU		B'00000000'	;PB3-OUT
	TRISC_DEF		EQU		B'00000000'

	PSRC0_DEF		EQU		B'11111111'	;源电流设置最大
	PSRC1_DEF		EQU		B'11111111'
	PSRC2_DEF		EQU		B'00001111'

	PSINK0_DEF		EQU		B'11111111'	;灌电流设置最大
	PSINK1_DEF		EQU		B'11111111'
	PSINK2_DEF		EQU		B'00000011'

	ANSELA_DEF		EQU		B'00000000'	;设置对应的IO为数字IO
    
	WDTCON_DEF		EQU		B'00001011'	;打开看门狗，预分频1：1，
                                        ;定时器周期1：1024，即看门狗周期为32ms
    MISC0_DEF		EQU		B'00000000'	;看门狗时钟32kHz
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
;DELAY_3MS(16M/2T）
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
;DELAY_1MS(16M/2T，实测为1.1ms）
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
    