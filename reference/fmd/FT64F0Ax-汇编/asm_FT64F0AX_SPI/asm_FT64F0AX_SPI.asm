;===========================================================
/* 文件名：ASM_64F0Ax_SPI.ASM
* 功能：   FT64F0Ax_SPI功能演示
*  IC：    FT64F0A5     TSSOP20
* 内部：   16M/4T	                               
* 说明：   此演示程序位64F0Ax_SPI的演示程序.
*		   该程序写0xAA,到(FT25C64A)0x12地址,然后读取0x12的地址值
*
*                FT64F0A5  TSSOP20
*              -------------------
* NC----------|1(PA5)   	(PA4)20|-----------NC     
* NC----------|2(PA6)   	(PA3)19|-----------NC 
* NC----------|3(PA7)   	(PA2)18|-----------NC
* NC----------|4(PC0)   	(PA1)17|---------MISO
* NC----------|5(PC1)		(PA0)16|---------MOSI	
* NC----------|6(PB7)		(PB0)15|----------SCK
* GND---------|7(GND)		(PB1)14|-----------NC
* NC----------|8(PB6)		(PB2)13|-----------NC
* VDD---------|9(VDD)		(PB3)12|-----------NC
* NSS---------|10(PB5)	    (PB4)11|-----------NC
*				-------------------
*/ 
;===========================================================
#INCLUDE  <FT64F0AX.INC>;
;===========================================================
;RAM DEFINE
;===========================================================
    W_TMP				EQU		0X43
	S_TMP				EQU		0X44
    SPIDATTEMP		    EQU		0X45
    buff				EQU		0X46
    #define			f_ready		buff,0
    
	count				EQU		0X47
    SPIDATE				EQU		0X48
    SPIADDRH			EQU		0X49
    SPIADDRL			EQU		0X4A
    SPIDAT2				EQU		0X4B
;===========================================================
;CONSTANT	DEFINE	
;===========================================================
	INTCON_DEF		    EQU		B'00000000'	;禁止所有中断
	OSCCON_DEF		    EQU		B'01110001'	;16MHz,1:1

	WPUA_DEF			EQU		B'00000000'	;弱上拉的开关，0-关，1-开		
	WPUB_DEF			EQU		B'00000000'
	WPUC_DEF			EQU		B'00000000'	

	WPDA_DEF			EQU		B'00000010'	;弱下拉的开关，0-关，1-开
	WPDB_DEF			EQU		B'00000000'
	WPDC_DEF			EQU		B'00000000'

	TRISA_DEF			EQU		B'00000010'	;输入输出设置，0-输出，1-输入,SPI_MISO,SPI_MOSI
                                            ;PA0-OUT PA1-IN
	TRISB_DEF			EQU		B'00000000'	;PB0,PB5-OUT
	TRISC_DEF			EQU		B'00000000'

	PSRC0_DEF			EQU		B'11111111'	;源电流设置最大
	PSRC1_DEF			EQU		B'11111111'
	PSRC2_DEF			EQU		B'00001111'

	PSINK0_DEF			EQU		B'11111111'	;灌电流设置最大
	PSINK1_DEF			EQU		B'11111111'
	PSINK2_DEF			EQU		B'00000011'

	ANSELA_DEF			EQU		B'00000000'	;设置对应的IO为数字IO
    
	PCKEN_DEF			EQU		B'00010000'	;使能SPI模块时钟
    
    SPICTRL_DEF			EQU		B'00001000'	;NSS引脚输出
    SPICFG_DEF			EQU		B'01000000'	;设置为主机模式，第一个时钟转换的沿是数据采样点，SPI空闲时，SCK的时钟是处于低电平状态
    SPISCR_DEF			EQU		B'00000000'	;波特率设置为8M，Fmaster/(2*(SPISCR+1))，Fmaster=16M   
    SPIRXCRC_DEF		EQU		B'00000000'	;接收数据的CRC计算结果
    SPITXCRC_DEF		EQU		B'00000000' ;发送数据的CRC计算结果
    SPIIER_DEF			EQU		B'00000000'	;禁止所有中断 
    SPICTRL2_DEF		EQU		B'00000000'	;全双工允许发送和接收，禁用CRC校验模块，高比特位优先发送
    SPISTAT_DEF			EQU		B'00000000'
;===========================================================
;USER	DEFINE
;===========================================================
#DEFINE		NSS		SPICTRL,NSSM0
;===========================================================
;PROGRAM	START
;===========================================================
	ORG			0x0000			
	LJUMP		RESTART			
	ORG			0x0004			
	STR			W_TMP			
	SWAPR		STATUS,W		
	STR			S_TMP
;===========================================================
;SYSTEM	START
;===========================================================
RESTART:
	BANKSEL 	PORTA
    LCALL		INITIAL
;	LCALL		INITIAL_25C64_IO
    
	BANKSEL 	SPIDATE
    LDWI		0X00				;要写的地址高8位
    STR			SPIADDRH
    LDWI		0X12				;要写的地址低8位
    STR			SPIADDRL
    
	BANKSEL 	SPIDATE
    LDWI		0XAA		
    STR			SPIDATE				;把0XAA数据写入
    LCALL		SPI_Write			;进行写操作
    
    BANKSEL 	SPIDATE
    LDWI		0X00				;清零
    STR			SPIDATE
    LDWI		0X00				;要读的地址高8位
    STR			SPIADDRH
    LDWI		0X12				;要读的地址低8位
    STR			SPIADDRL
    LCALL		SPI_Read
    
MAIN:
	NOP
    LJUMP		MAIN
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
    
	BANKSEL 	PCKEN
    LDWI		PCKEN_DEF
    STR			PCKEN
    
	BANKSEL 	SPICTRL
    LDWI		SPICTRL_DEF
    STR			SPICTRL
    
	BANKSEL 	SPICFG
    LDWI		SPICFG_DEF
    STR			SPICFG
    LDWI		SPISCR_DEF
    STR			SPISCR
    LDWI		SPIRXCRC_DEF
    STR			SPIRXCRC
    LDWI		SPITXCRC_DEF
	STR			SPITXCRC
    LDWI		SPIIER_DEF
    STR			SPIIER
    LDWI		SPICTRL2_DEF
    STR			SPICTRL2
    LDWI		SPISTAT_DEF
    STR			SPISTAT
    
	BANKSEL 	SPICTRL
    BSR			SPICTRL,SPIEN		;启用SPI
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
;函数名：SPI_RW
;功能：	 主机输出以及输入一个字节
;输入：	 data
;输出：	 根据接收的data输出给从机一个字节
;===========================================================
SPI_RW:
    BANKSEL		SPISTAT
	BTSC		SPISTAT,SBUSY
    LJUMP		$-1
    
    BANKSEL     SPIDATTEMP
    LDR			SPIDATTEMP, 0
    BANKSEL     SPIDATA
    STR			SPIDATA
    
	BANKSEL     SPICFG
	BTSC		SPICFG,RXBMT
    LJUMP		$-1
    
    BANKSEL     SPIDATA
    LDR			SPIDATA, 0
    BANKSEL     SPIDATTEMP
    STR			SPIDATTEMP
	
	RET
	
;===========================================================
;写允许
;===========================================================
WriteEnable:
	BCR			NSS
    LDWI		0X06			;写允许命令字				
    STR			SPIDATTEMP
    LCALL		SPI_RW
    BSR			NSS
    RET
;===========================================================
;写关闭
;===========================================================
WriteDisable:
	BCR			NSS
    LDWI		0X04			;写关闭命令字			
    STR			SPIDATTEMP
    LCALL		SPI_RW
    BSR			NSS
    RET
;===========================================================
;函数名:  PI_ReadStatus
;功能：	  读取25C64芯片的状态
;注：	  25C64内部状态寄存器第0位=0表示空闲，=1表示忙。
;===========================================================
SPI_ReadStatus:
	BCR			f_ready
    BCR			NSS
    LDWI		0X05			;读取状态命令字
    STR			SPIDATTEMP
    LCALL		SPI_RW
    
	LDWI		0X00
    STR			SPIDATTEMP
    LCALL		SPI_RW
    BANKSEL		SPICTRL
    BSR			NSS
    BTSC		SPIDATTEMP,0
    BSR			f_ready
    RET
;===========================================================
;函数名： SPI_WriteStatus
;功能：	  写25C64芯片的状态寄存器
;只有BSP1、BSP0(bit7、3、2)可以写
;注：	  25C64内部状态寄存器第0位=0表示空闲，=1表示忙。
;===========================================================
SPI_WriteStatus:
    BCR			NSS
    LDWI		0X01			;写入状态命令字
    STR			SPIDATTEMP
    LCALL		SPI_RW
    
	LDWI		0X00			;写入不同的数据可操作的空间不一样
    STR			SPIDATTEMP
    LCALL		SPI_RW
    BSR			NSS
    RET
;===========================================================
;函数名： SPI_Read
;输入：	  16位的地址
;返回：	  读取的数据
;说明：	  从25C64指定的地址读取一个字节
;===========================================================
SPI_Read:
	LCALL		SPI_ReadStatus
    BTSC		f_ready			;判断是否忙
    LJUMP		$-2
    BCR			NSS
    LDWI		0X03
    STR			SPIDATTEMP
    LCALL		SPI_RW			;发送读取命令
    
	LDR			SPIADDRH,0
    STR			SPIDATTEMP
    LCALL		SPI_RW			;发送高地址
    LDR			SPIADDRL,0
    STR			SPIDATTEMP
    LCALL		SPI_RW			;发送低地址
    
	LDWI		0X00
    STR			SPIDATTEMP
    LCALL		SPI_RW			;读出数据
    BSR			NSS
    LDR			SPIDATTEMP,0
    STR			SPIDATE
    RET
;===========================================================
;函数名： SPI_Write
;输入：	  16位的地址
;返回：	  读取的数据
;说明：	  从25C64指定的地址读取一个字节
;===========================================================
SPI_Write:
	LCALL		SPI_ReadStatus
    BTSC		f_ready			;判断是否忙
    LJUMP		$-2
    LCALL		WriteEnable
    BCR			NSS
    
	LDWI		0X02
    STR			SPIDATTEMP
    LCALL		SPI_RW			;发送写取命令
    
	LDR			SPIADDRH,0
    STR			SPIDATTEMP
    LCALL		SPI_RW			;发送高地址
    LDR			SPIADDRL,0
    STR			SPIDATTEMP
    LCALL		SPI_RW			;发送低地址
    
	LDR			SPIDATE,0
    STR			SPIDATTEMP
    LCALL		SPI_RW			;发送数据
    BSR			NSS
    LCALL		WriteDisable
	LCALL		SPI_ReadStatus
    BTSC		f_ready			;判断是否忙
    LJUMP		$-2
    RET

	END							
    