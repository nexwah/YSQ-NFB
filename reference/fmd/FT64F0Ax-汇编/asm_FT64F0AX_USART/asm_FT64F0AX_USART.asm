;===========================================================
/* 文件名：ASM_64F0Ax_USART.ASM
* 功能：   FT64F0Ax_USART功能演示
*  IC：    FT64F0A5     TSSOP20
* 内部：   16M/4T	                              
* 说明：   串口上电一直发送，同时也可以接收（通过串口助手发送接收）
* 
*                FT64F0A5  TSSOP20
*              -------------------
* NC----------|1(PA5)   	(PA4)20|-----------NC     
* TXIO--------|2(PA6)   	(PA3)19|-----------NC 
* RXIO--------|3(PA7)   	(PA2)18|-----------NC
* NC----------|4(PC0)   	(PA1)17|-----------NC
* NC----------|5(PC1)		(PA0)16|-----------NC	
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
    UR_DATA				EQU		0X23

	W_TMP		     	EQU		0X70
	S_TMP				EQU		0X71
;===========================================================
;CONSTANT	DEFINE	
;===========================================================
	OSCCON_DEF			EQU		B'01110001'		;16MHz,1:1

	WPUA_DEF			EQU		B'10000000'		;弱上拉的开关，0-关，1-开
												;开PA7上拉
	WPUB_DEF			EQU		B'00000000'
	WPUC_DEF			EQU		B'00000000'	

	WPDA_DEF			EQU		B'00000000'		;弱下拉的开关，0-关，1-开
	WPDB_DEF			EQU		B'00000000'
	WPDC_DEF			EQU		B'00000000'
	
	TRISA_DEF			EQU		B'10000000'		;输入输出设置，0-输出，1-输入 
												;PA6-OUT PA7-IN
	TRISB_DEF			EQU		B'00000000'		
	TRISC_DEF			EQU		B'00000000'

	PSRC0_DEF			EQU		B'11111111'		;源电流设置最大
	PSRC1_DEF			EQU		B'11111111'
	PSRC2_DEF			EQU		B'00001111'

	PSINK0_DEF			EQU		B'11111111'		;灌电流设置最大
	PSINK1_DEF			EQU		B'11111111'
	PSINK2_DEF			EQU		B'00000011'

	ANSELA_DEF			EQU		B'00000000'		;设置对应的IO为数字IO
		
	PCKEN_DEF			EQU		B'00100000'		;使能UART1时钟模块
    UR1IER_DEF			EQU		B'00100001'		;使能发送完成中断，使能接收数据中断
    UR1LCR_DEF			EQU		B'00000001'		;8位数据长度，1位停止位，无奇偶校验位
    UR1MCR_DEF			EQU		B'00011000'		;使能发送和接收接口
       
    UR1DLL_DEF			EQU		104				;波特率=Fmaster/(16*{URxDLH,URxDLL})=9600
    UR1DLH_DEF			EQU		0			
;===========================================================
;CONSTANT	DEFINE	
;===========================================================
#DEFINE		TXIO		PORTA,6
#DEFINE		RXIO		PORTA,7
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
	LCALL		UART_INITIAL
    
	BANKSEL 	UR1TC
    BSR			UR1TC,UR1TCF		;写1清0

	BANKSEL 	INTCON
    BSR			INTCON,GIE			;使能全局中断
    BSR			INTCON,PEIE			;外设使能中断
    
	BANKSEL 	UR1LSR
    BTSS		UR1LSR,UR1TXEF		;1：发送寄存器为空
									;0：发送寄存器不为空
    LJUMP		MAIN
    BANKSEL 	UR1DATAL
    LDWI		0XAA
    STR			UR1DATAL
MAIN:
	NOP
    NOP
    LJUMP		MAIN
;===========================================================
;INT_PROGRAM?
;===========================================================
INT_PROGRAM:
	BANKSEL 	UR1LSR
    BTSC		UR1LSR,UR1RXNEF		;1：接收寄存器非空
									;0：接收寄存器为空或已清零
    LJUMP		URRXInterrupt
    BANKSEL 	UR1TC
    BTSC		UR1TC,UR1TCF		;发送完成状态标志
									;1：数据发送完成，0：数据发送未完成
    LJUMP		URTXInterrupt
    LJUMP		INT_RET
    
URRXInterrupt:
	BANKSEL 	UR1DATAL
    LDR			UR1DATAL,0
    BANKSEL 	UR_DATA
    STR			UR_DATA
    LJUMP		INT_RET
    
URTXInterrupt:
	BANKSEL 	UR1TC
    BSR			UR1TC,UR1TCF
    
	BANKSEL 	UR_DATA
    LDR			UR_DATA,0
    BANKSEL 	UR1DATAL
    STR			UR1DATAL
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
;UART_INITIAL
;===========================================================
UART_INITIAL:
    BANKSEL 	PCKEN
    LDWI		PCKEN_DEF
    STR			PCKEN
    
    BANKSEL 	UR1IER
    LDWI		UR1IER_DEF
    STR			UR1IER
    LDWI		UR1LCR_DEF
    STR			UR1LCR
    LDWI		UR1MCR_DEF
    STR			UR1MCR
    
    BANKSEL 	UR1DLL
    LDWI		UR1DLL_DEF
    STR			UR1DLL
    LDWI		UR1DLH_DEF
    STR			UR1DLH
    
    RET

	END							
 