//********************************************************* 
/* 文件名：TEST_64F0Ax_SPI.c
* 功能：   FT64F0Ax_SPI功能演示
* IC:      FT64F0A5  TSSOP20
* 内部：   16M	                              
* 说明：   此演示程序为64F0Ax_SPI的演示程序.
*		   该程序写0x55,0x88到(FT25C64A)0x13,0x14地址,然后读取0x13,0x14的地址值  
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
//*********************************************************
#include	"SYSCFG.h";
#include 	"FT64F0AX.h";
//***********************宏定义****************************
#define		uchar	unsigned char
#define		uint	unsigned int

#define		NSS		NSSM0

volatile	uchar	SPIReadData=0;
volatile	uchar	SPIReadData1=0;
/*-------------------------------------------------
 * 函数名：POWER_INITIAL
 * 功能：  上电系统初始化
 * 输入：  无
 * 输出：  无
 --------------------------------------------------*/
 void POWER_INITIAL(void)
 {
	OSCCON=0B01110001;				//系统时钟选择为内部振荡器16MHz,分频比为1:1
    
	INTCON=0;						//禁止所有中断
    
    PORTA=0B00000000;
    PORTB=0B00000000;
    PORTC=0B00000000;
    
	WPUA=0B00000010;				//弱上拉的开关，0-关，1-开		
	WPUB=0B00000000;
	WPUC=0B00000000;	

	WPDA=0B00000000;				//弱下拉的开关，0-关，1-开
	WPDB=0B00000000;
	WPDC=0B00000000;
	
	TRISA=0B00000010;				//输入输出设置，0-输出，1-输入，SPI_MISO,SPI_MOSI
	TRISB=0B00000000;				//SPI_NSS,SPI_SCK  PB0,PB5-OUT
	TRISC=0B00000000;

	PSRC0=0B11111111;				//源电流设置最大
	PSRC1=0B11111111;
	PSRC2=0B00001111;

	PSINK0=0B11111111;				//灌电流设置最大
	PSINK1=0B11111111;
	PSINK2=0B00000011;

	ANSELA=0B00000000;				//设置对应的IO为数字IO	
 }
 /*-------------------------------------------------
 * 函数名：SPI_INITIAL
 * 功能：  初始化SPI
 * 输入：  无
 * 输出：  无
 --------------------------------------------------*/
 void SPI_INITIAL(void)
 {
     PCKEN|=0B00010000;				//使能SPI模块时钟
     
     SPICTRL=0B00001000;			//NSS引脚输出
     SPICFG=0B01000000;				//设置为主机模式，第一个时钟转换的沿是数据采样点，SPI空闲时，SCK的时钟是处于低电平状态
     SPISCR=0B00000000;				//波特率设置为8M，Fmaster/(2*(SPISCR+1))，Fmaster=16M
     SPIRXCRC=0B00000000;			//接收数据的CRC计算结果
     SPITXCRC=0B00000000;			//发送数据的CRC计算结果
     SPIIER=0B00000000;				//禁止所有中断 
     SPICTRL2=0B00000000;			//全双工允许发送和接收，禁用CRC校验模块，高比特位优先发送
     SPISTAT=0B00000000;				
     SPIEN=1;						//启用SPI
 }
 /*-------------------------------------------------
 * 函数名：SPI_RW
 * 功能：  主机输出以及输入一个字节
 * 输入：  data
 * 输出：  根据接收的data输出给从机一个字节
 --------------------------------------------------*/
 uchar SPI_RW(uchar data)
 {
    uchar spiData;
    			
    while(SBUSY);					//等待SPI模块空闲
    SPIDATA=data;
    while(RXBMT);
    spiData=SPIDATA;
    return spiData;
 }
 /*-------------------------------------------------
 * 函数名：WriteEnable
 * 功能：  写允许（将WEN置位）
 --------------------------------------------------*/
 void WriteEnable(void)
 {
     NSS=0;
     SPI_RW(0X06);
     NSS=1;
}
/*-------------------------------------------------
 * 函数名：WriteDisable
 * 功能：  写禁止（将WEN复位）
 --------------------------------------------------*/
 void WriteDisable(void)
 {
     NSS=0;
     SPI_RW(0X04);
     NSS=1;
 }
/*-------------------------------------------------
 * 函数名：SPI_ReadStatus
 * 功能：  读取25C64芯片的状态 
 * 返回值：状态寄存器数据字节
 * 注：    25C64内部状态寄存器第0位=0表示空闲，0位=1表示忙。
 --------------------------------------------------*/
 uchar SPI_ReadStatus(void)
 {
     uchar status=0;
     NSS=0;
     SPI_RW(0X05);					//0x05读取状态的命令字
     status=SPI_RW(0X00);
     NSS=1;							//关闭片选
     return status;
 }
/*-------------------------------------------------
 * 函数名：SPI_WriteStatus
 * 功能：  写25C64芯片的状态寄存器 
 * 注：    只有BP1、BP0(bit7、3、2)可以写
		   25C64内部状态寄存器第0位=0表示空闲，0位=1表示忙。
 --------------------------------------------------*/
 void SPI_WriteStatus(uchar Status)
 {
     NSS=0;
     SPI_RW(0X01);					//0X01写入状态的命令字
     SPI_RW(Status);				//写入一个字节
     NSS=1;							//关闭片选
 }
/*-------------------------------------------------
 * 函数名：SPI_Read
 * 输入：  16位的地址
 * 返回：  读取的数据
 * 说明：  从25C64指定的地址读取一个字节
 --------------------------------------------------*/
 uchar SPI_Read(uint addr)
 {
     uchar spidata;
     while(SPI_ReadStatus()&0x01);	//判断是否忙
     NSS=0;							//使能器件
     SPI_RW(0X03);					//发送读取命令
     SPI_RW((uchar)((addr)>>8));
     SPI_RW((uchar)addr);
     spidata=SPI_RW(0X00);			//读出数据
     NSS=1;
     return spidata;
 }
/*-------------------------------------------------
 * 函数名：SPI_Write
 * 输入：  地址，字节数据
 * 说明：  将一个字节写入指定的地址
 --------------------------------------------------*/
void SPI_Write(uint addr , uchar dat)
 {
     while(SPI_ReadStatus()&0x01);	//判断是否忙
     WriteEnable();					//置位 WEN
     NSS=0;							//使能器件
     SPI_RW(0X02);					//发送写命令
     SPI_RW((uchar)((addr)>>8));			
     SPI_RW((uchar)addr);
     
     SPI_RW(dat);
     NSS=1;							//关闭片选
     WriteDisable();
     while(SPI_ReadStatus()&0x01);
 }
/*-------------------------------------------------
 * 函数名：main
 * 功能：  主函数 
 * 输入：  无
 * 输出：  无
 --------------------------------------------------*/
void main(void)
{
    SPIReadData=0;
    SPIReadData1=0;
    POWER_INITIAL();				//系统初始化
    SPI_INITIAL();					//SPI初始化
    
	SPI_Write(0x13,0x55);			//写0x13地址
    SPI_Write(0x14,0x88);			//写0x14地址
    
	SPIReadData=SPI_Read(0x13);		//读取0x13地址值
    NOP();
    SPIReadData1=SPI_Read(0x14);	//读取0x14地址值
    
    while(1)
    {
        NOP();
    }
}