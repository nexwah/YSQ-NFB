;===========================================================
/* 文件名：ASM_64F0Ax_IIC.ASM
* 功能：   FT64F0Ax_IIC功能演示
*  IC：    FT64F0A5     TSSOP20
* 内部：   16M/2T	                              
* 说明：   此演示程序位64F0Ax_IIC的演示程序.
*		   该程序把0x55写入(24C02)0x12地址,后读0x12地址的值，判断是否写入成功
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
* VDD---------|9(VDD)		(PB3)12|------IIC_SCL
* NC----------|10(PB5)		(PB4)11|------IIC_SDA
*				-------------------
*/ 
;===========================================================
#INCLUDE  <FT64F0AX.INC>;
;===========================================================
;RAM DEFINE
;===========================================================
	TEMP			EQU		0X40
	TEMP1			EQU		0X41
	TEMP2			EQU		0X42
    IICDATA		    EQU		0X43
    IICADDR		    EQU		0X44
	IICDATA2	    EQU		0X45
	W_TMP		    EQU		0X70
	S_TMP			EQU		0X71
;===========================================================
;CONSTANT	DEFINE	
;===========================================================
	INTCON_DEF		EQU		B'00000000'	;禁止所有中断
	OSCCON_DEF		EQU		B'01110001'	;16MHz,1:1
    
	WPUA_DEF		EQU		B'00000000'	;弱上拉的开关，0-关，1-开		
	WPUB_DEF		EQU		B'00011000'
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
    
	PCKEN_DEF		EQU		B'01000000'	;使能I2C模块时钟
    
    ODCON0_DEF		EQU		B'00000010'	;I2C_SCL,I2C_SDA的开漏输出设置，高有效
    
    I2CCR1_DEF		EQU		B'00000001'	;主机模式，标准模式（100kHz），7位地址格式
    I2CCR2_DEF		EQU		B'00000000'
    I2CCR3_DEF		EQU		B'00000000'	;禁用I2C模块，才能写目标从机地址，设置外设时钟频率以及SCL时钟周期
    
    I2COARL_DEF	    EQU		B'01010000'	;从机地址
    I2COARH_DEF	    EQU		B'00000000'
    
    I2CFREQ_DEF	    EQU		B'00010000'	;外设时钟频率为16MHz
    
    I2CCCRL_DEF		EQU		B'10000000'	;标准模式下，SCL时钟周期为2*CCR*Fmaster（Fmaster为外设时钟频率，此处为2*128*16M）
    I2CCCRH_DEF	    EQU		B'00000000'
    
    I2CITR_DEF		EQU		B'00000000'	;不使能IIC中断
;===========================================================
;USER	DEFINE
;===========================================================
#DEFINE		IIC_SCL		PORTB,3
#DEFINE		IIC_SDA		PORTB,4
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
	LCALL		IIC_INITIAL
    
	BANKSEL 	IICADDR
    LDWI		0X12				;要写的地址
    STR			IICADDR
    LDWI		0X55				;要写的数据
    STR			IICDATA
    LCALL		IIC_WRITE
    
	LCALL		DELAY_32MS
    
    BANKSEL 	IICDATA
    CLRF		IICDATA
    BANKSEL 	IICDATA
    LDWI		0X12				;要读的地址
    STR			IICADDR
    LCALL		IIC_READ
    
    BANKSEL 	IICDATA
    STR			IICDATA			    ;读到的数值存放在ICDATA
       
MAIN:
	NOP
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
;***************Clear  SRAM******************
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
;初始化I2C
;===========================================================
IIC_INITIAL:
	BANKSEL 	PCKEN
    LDWI		PCKEN_DEF
    STR			PCKEN
    
    BANKSEL 	ODCON0
    LDWI		ODCON0_DEF
    STR			ODCON0
    
    BANKSEL 	I2CCR1
    LDWI		I2CCR1_DEF
    STR			I2CCR1
    LDWI		I2CCR2_DEF
    STR			I2CCR2
    LDWI		I2CCR3_DEF
    STR			I2CCR3
    
    BANKSEL 	I2COARL
    LDWI		I2COARL_DEF
    STR			I2COARL
    LDWI		I2COARH_DEF
    STR			I2COARH
    LDWI		I2CFREQ_DEF
    STR			I2CFREQ
    
    BANKSEL 	I2CCCRL
    LDWI		I2CCCRL_DEF
    STR			I2CCCRL
    LDWI		I2CCCRH_DEF
    STR			I2CCCRH
    LDWI		I2CITR_DEF
    STR			I2CITR
    
    BANKSEL 	I2CCR3
    BSR			I2CCR3,ENABLE		;使能I2C模块
    
    RET
;===========================================================
;IIC读出指定位置的数据
;===========================================================
IIC_READ:
	BANKSEL 	I2CSR1
    BTSC		I2CSR1,IICTXE
    LJUMP		READ_STEP1
    LJUMP		$-2
READ_STEP1:
	BANKSEL 	IICADDR
    LDR			IICADDR,0
    BANKSEL 	I2CDR
    STR			I2CDR
    BANKSEL 	I2CCMD
    LDWI		B'00000110'
    STR			I2CCMD
READ_STEP2:
	BANKSEL 	I2CSR1
    BTSC		I2CSR1,IICTXE
    LJUMP		READ_STEP3
    LJUMP		READ_STEP2
 READ_STEP3:
	BANKSEL 	I2CCMD
    LDWI		B'00000011'
    STR			I2CCMD
READ_STEP4:
	BANKSEL 	I2CSR1
    BTSC		I2CSR1,IICRXNE
    LJUMP		READ_STEP5
    LJUMP		READ_STEP4
READ_STEP5:
	BANKSEL 	I2CDR
    LDR			I2CDR,0
    RET
;===========================================================
;IIC把指定数据写入指定位置
;===========================================================
IIC_WRITE:
	BANKSEL 	I2CSR1
    BTSC		I2CSR1,IICTXE
    LJUMP		WRITE_STEP1
    LJUMP		$-2
WRITE_STEP1:
	BANKSEL 	IICADDR
    LDR			IICADDR,0
    BANKSEL 	I2CDR
    STR			I2CDR
    BANKSEL 	I2CCMD
    LDWI		B'00000000'
    STR			I2CCMD
WRITE_STEP2:
	BANKSEL 	I2CSR1
    BTSC		I2CSR1,IICTXE
    LJUMP		WRITE_STEP3
    LJUMP		WRITE_STEP2
 WRITE_STEP3:
	BANKSEL 	IICDATA
    LDR			IICDATA,0
    BANKSEL 	I2CDR
    STR			I2CDR
    BANKSEL 	I2CCMD
    LDWI		B'00000010'
    STR			I2CCMD
 WRITE_STEP4:
	BANKSEL 	I2CSR1
    BTSC		I2CSR1,IICTXE
    LJUMP		WRITE_STEP4
    RET
;===========================================================
;DELAY_32MS(16M/2T)
;===========================================================
DELAY_32MS:
	LDWI		H'C8'
    STR			TEMP
DELAY_32MS_LOOP1:
    LDWI		H'50'
    STR			TEMP1
DELAY_32MS_LOOP2:
    LDWI		H'04'
    STR			TEMP2
DELAY_32MS_LOOP3:
	CLRWDT
    DECRSZ  	TEMP2,F
    LJUMP		DELAY_32MS_LOOP3
    DECRSZ  	TEMP1,F
    LJUMP		DELAY_32MS_LOOP2
    DECRSZ  	TEMP,F
    LJUMP		DELAY_32MS_LOOP1
    RET

	END							
    