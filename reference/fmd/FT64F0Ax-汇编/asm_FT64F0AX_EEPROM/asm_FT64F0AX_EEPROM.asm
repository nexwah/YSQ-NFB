;===========================================================
/* 文件名：ASM_64F0Ax_EEPROM.ASM
* 功能：   FT64F0Ax_EEPROM功能演示
*  IC：    FT64F0A5     TSSOP20
* 内部：   16M/2T	                              
* 说明：   此演示程序位64F0Ax_EEPROM的演示程序.
*		   该程序读取0x12地址的值,取反后存入0x13地址
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
* VDD---------|9(VDD)		(PB3)12|-----------NC
* NC----------|10(PB5)		(PB4)11|-----------NC
*				-------------------
*/ 
;===========================================================
#INCLUDE  <FT64F0AX.INC>;
;===========================================================
;RAM DEFINE
;===========================================================
	TEMP1			EQU		0X41
	TEMP2			EQU		0X42

	W_TMP			EQU		0X43
	S_TMP			EQU		0X44
    
	EEDATTEMP	    EQU		0X45
    EEADRTEMP	    EQU		0X46
;===========================================================
;CONSTANT	DEFINE	
;===========================================================
	INTCON_DEF		EQU		B'00000000'	;禁止所有中断
	OSCCON_DEF		EQU		B'01110001'	;16MHz,1:1
	WPUA_DEF		EQU		B'00000000'	;弱上拉的开关，0-关，1-开		
	WPUB_DEF		EQU		B'00000000'
	WPUC_DEF		EQU		B'00000000'	

	WPDA_DEF		EQU		B'00000000'	;弱下拉的开关，0-关，1-开
	WPDB_DEF		EQU		B'00000000'
	WPDC_DEF		EQU		B'00000000'

	TRISA_DEF		EQU		B'00000000'	;输入输出设置，0-输出，1-输入
	TRISB_DEF		EQU		B'00000000'	
	TRISC_DEF		EQU		B'00000000'

	PSRC0_DEF		EQU		B'11111111'	;源电流设置最大
	PSRC1_DEF		EQU		B'11111111'
	PSRC2_DEF		EQU		B'00001111'

	PSINK0_DEF		EQU		B'11111111'	;灌电流设置最大
	PSINK1_DEF		EQU		B'11111111'
	PSINK2_DEF		EQU		B'00000011'

	ANSELA_DEF		EQU		B'00000000'	;设置对应的IO为数字IO

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
    LCALL		DELAY_10MS
	LCALL		INITIAL
MAIN:
	BANKSEL 	EEADRTEMP
    LDWI		0X12
    STR			EEADRTEMP
    LCALL		EEPROM_READ
    BANKSEL 	EEADRTEMP
    LDWI		0X13
    STR			EEADRTEMP
    COMR		EEDATTEMP,R
    LCALL		EEPROM_WRITE
MAIN_LOOP:
	NOP
    LJUMP		MAIN_LOOP
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
    
	BANKSEL     ANSELA
    LDWI		ANSELA_DEF
    STR			ANSELA
;***************Clear  SRAM**********************
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
;==========================================================================
;UNLOCK_FLASH
;==========================================================================
UNLOCK_FLASH:
    MOVLW	0x03
    MOVWF	BSREG
    MOVLW	0x55
    MOVWF	EECON2 & 0x7F
    MOVLW	0xAA
    MOVWF	EECON2 & 0x7F
    BSF		EECON1 & 0x7F,1  //WR=1;
    NOP
    NOP
    RET
;===========================================================
;EEPROM_READ
;===========================================================
EEPROM_READ:
	BANKSEL	    INTCON
    BTSS        INTCON,GIE
    LJUMP		$+5
	BCR			INTCON,GIE
    NOP
    NOP
    LJUMP       $-5
    
    BANKSEL 	EEADRTEMP
    LDR			EEADRTEMP,W
    BANKSEL 	EEADRL
    STR			EEADRL
    BCR			EECON1,CFGS
    BCR			EECON1,EEPGD
    BSR			EECON1,RD
    NOP
    NOP
    NOP
    NOP
    LDR			EEDATL,W
    BANKSEL 	EEDATTEMP
    STR			EEDATTEMP
    RET
;===========================================================
;EEPROM_WRITE
;===========================================================
EEPROM_WRITE:
	BANKSEL	    INTCON
    BTSS        INTCON,GIE
    LJUMP		$+5
	BCR			INTCON,GIE
    NOP
    NOP
    LJUMP       $-5
    
    BANKSEL 	EEADRTEMP
    LDR			EEADRTEMP,W
    BANKSEL 	EEADRL
    STR			EEADRL
    BANKSEL 	EEDATTEMP
    LDR			EEDATTEMP,W
    BANKSEL 	EEDATL
    STR			EEDATL
    BANKSEL 	EECON1
    BCR			EECON1,EEPGD
    BCR			EECON1,CFGS
    BSR			EECON1,WREN
    
	BANKSEL	    INTCON
    BCR         INTCON,EEIF
    
	LCALL		UNLOCK_FLASH
    NOP
    NOP
    NOP
    NOP
    
	BANKSEL	    INTCON
	BSR			INTCON,GIE
    BANKSEL     EECON1
    BCR         EECON1,WREN
    BTSC   		EECON1,WR   
    LJUMP       $-2
    
    RET
;===========================================================
;DELAY_10MS(16M/2T）
;===========================================================
DELAY_10MS:
	LDWI		H'C8'
    STR			TEMP1
DELAY_10MS_LOOP1:
    LDWI		H'64'
    STR			TEMP2
 DELAY_10MS_LOOP2:
	CLRWDT
    DECRSZ  	TEMP2,F
    LJUMP		DELAY_10MS_LOOP2
    DECRSZ  	TEMP1,F
    LJUMP		DELAY_10MS_LOOP1
    RET

	END							
    