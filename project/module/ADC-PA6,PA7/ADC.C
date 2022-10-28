//********************************************************* 
/* 文件名：TEST_64F0Ax_ADC.c
* 功能：   FT64F0Ax_ADC功能演示
* IC:      FT64F0A5  TSSOP20
* 内部：   16M	                              
* 说明：   程序采样AN0口变阻器的AD值并计算其电压
*
*                FT64F0A5  TSSOP20
*              -------------------
* NC----------|1(PA5)   	(PA4)20|-----------NC     
* NC----------|2(PA6)   	(PA3)19|-----------NC 
* NC----------|3(PA7)   	(PA2)18|-----------NC
* NC----------|4(PC0)   	(PA1)17|-----------NC
* NC----------|5(PC1)		(PA0)16|-----------NC	
* NC----------|6(PB7)		(PB0)15|-----------NC
* GND---------|7(GND)		(PB1)14|----------AN0
* NC----------|8(PB6)		(PB2)13|-----------NC
* VDD---------|9(VDD)		(PB3)12|-----------NC
* NC----------|10(PB5)		(PB4)11|-----------NC
*				-------------------
*/ 
//*********************************************************
#include	"SYSCFG.h";
#include 	"FT64F0AX.h";
#include <stdio.h>
#include <math.h>
#include <string.h>
//***********************宏定义****************************
#define		uchar	unsigned char
#define		uint	unsigned int
#define		ulong	unsigned long
/*-------------------------------------------------
 * 函数名：POWER_INITIAL
 * 功能： 	 上电系统初始化
 * 输入：	 无
 * 输出： 	 无
 --------------------------------------------------*/
 void POWER_INITIAL(void)
 {
	OSCCON=0B01110001;			//系统时钟选择为内部振荡器16MHz,分频比为1:1
    
    PCKEN|=0B00000001;			//AD模块时钟使能
    
	INTCON=0;					//禁止所有中断
    
    PORTA=0B00000000;
    PORTB=0B00000000;
    PORTC=0B00000000;
    
	WPUA=0B00000000;			//弱上拉的开关，0-关，1-开		
	WPUB=0B00000000;
	WPUC=0B00000000;	

	WPDA=0B00000000;			//弱下拉的开关，0-关，1-开
	WPDB=0B00000000;
	WPDC=0B00000000;
	
	TRISA=0B10111111;			//输入输出设置，0-输出，1-输入
	TRISB=0B11111111;
	TRISC=0B00000011;

	PSRC0=0B11111111;			//源电流设置最大
	PSRC1=0B11111111;
	PSRC2=0B00001111;

	PSINK0=0B11111111;			//灌电流设置最大
	PSINK1=0B11111111;
	PSINK2=0B00000011;

	ANSELA=0B00000000;			//设置对应的IO为数字IO	
 }
  /*-------------------------------------------------
 * 函数名：UART_INITIAL
 * 功能：  初始化串口
 * 输入：  无
 * 输出：  无
 --------------------------------------------------*/
 void UART_INITIAL(void)
 {
    PCKEN|=0B00100000;			//使能UART1模块时钟
    UR1IER=0B00000000;			//使能发送完成中断，使能接收数据中断
    UR1LCR=0B00000001;			//8位数据长度，1位停止位，无奇偶校验位
    UR1MCR=0B00011000;			//使能发送和接收接口
       
    UR1DLL=104;					//波特率=Fmaster/(16*{URxDLH,URxDLL}); DLL=104,DLH=0;BR=9600; DLL=9,DLH=0;BR=115200;
    UR1DLH=0;  
    UR1TCF=1;
 }
/*-------------------------------------------------
 * 函数名：SPI_INITIAL
 * 功能：  初始化IIC
 * 输入：  无
 * 输出：  无
 --------------------------------------------------*/
 void ADC_INITIAL(void)
 {
     ANSELA|=0B00111111;		
     //控制IO的数模输入，1：对应的IO为模拟管脚，0：对应的IO为数字IO
     //设置AN0-5为模拟管脚
     
     ADCON0=0B00000000;
     //Bit[6:4]:000-选择模拟通道AN0
     //Bit2:ADEX-由指令置位GO/DONE(软件触发)
     //Bit1:GO/DONE-ADC转换启动和状态位
     //Bit0:ADON-使能ADC
     
     ADCON1=0B11100100;
     //Bit7:1-ADC转换结果右对齐，即装入转换结果时，ADRESH的高4位被设置为0
     //Bit[6:4]:110-ADC转换时钟设置为Fosc/64
     //Bit[3:2]:01-负参考电压-GND
     //Bit[1:0]:00-正参考电压-内部参考电压，01-正参考电压-VDD
     
     ADCON2=0B01000000;
     //Bit[7:6]:01-ADC内部参考电压-2V
     
     ADCON3=0B00000000;
     ADDLY=0B00000000;			//外部触发延时
     ADCMPH=0B00000000;			//ADC比较阈值，用于ADC结果高8位比较
     ADON=1;					//使能ADC
 }
/*-------------------------------------------------
 * 函数名：DelayUs
 * 功能：  短延时函数
 * 输入：  Time延时时间长度 延时时长Time Us
 * 输出：  无
 --------------------------------------------------*/
 void DelayUs(int Time)
 {
     Time = (int)(Time/2*0.8);
     for(int a=0;a<Time;a++)
     {
         NOP();
	 } 
}
/*-------------------------------------------------
 * 函数名：DelayMs
 * 功能：  短延时函数
 * 输入：  Time延时时间长度 延时时长Time ms
 * 输出：  无
 --------------------------------------------------*/
 void DelayMs(int Time)
 {
     for(int a=0;a<Time;a++)
     {
		DelayUs(1000);
     }
 }
/*-------------------------------------------------
 * 函数名：GET_ADC_DATA
 * 功能：  读取通道ADC值
 * 输入：  adcChannel通道序号
 * 输出：  INT类型AD值（单次采样无滤波）
 --------------------------------------------------*/
 uint GET_ADC_DATA(uchar adcChannel)
 {
     ADCON0&=0B00001111;
     ADCON0|=adcChannel<<4;
     DelayUs(100);
     GO=1;
     NOP();
     NOP();
     while(GO);
     
     return (uint)(ADRESH<<8|ADRESL);
 }
 
void send(char* tbuf,int len)
{
    for(int i=0;i<len;i++)
    {
         UR1DATAL=tbuf[i];
         DelayMs(1);
	}
}

void NTC(void)
{
	int ADC=GET_ADC_DATA(0);
	float VOUT=(float)ADC*2/4096;
	float RT = (10000*VOUT/3.3)/(1-(VOUT/3.3));
	float ln = log(RT/10000);
	float Tx = 1/((ln/3450)+(1/298.15)); //in Kelvin
	Tx = Tx-273.15;
	char msgbuf[50] = "";
	sprintf(msgbuf,"ADC:%d,VOUT:%0.2f,RT:%0.2f,Tx:%0.2f\r\n",ADC,VOUT,RT,Tx);
	int len = strlen(msgbuf);
	send(msgbuf,len);
	DelayMs(500);      
}
/*-------------------------------------------------
 * 函数名：main
 * 功能：	 主函数 
 * 输入：	 无
 * 输出： 	 无
 --------------------------------------------------*/
void main(void)
{
    POWER_INITIAL();			//系统初始化
    UART_INITIAL();
	ADC_INITIAL();				//ADC初始化

    while(1)
    {
		int ADC=GET_ADC_DATA(4);
		float VOUT=(float)ADC*2/4096;
		char msgbuf[50] = "";
		sprintf(msgbuf,"ADC:%d,VOUT:%0.2f\r\n",ADC,VOUT);
		int len = strlen(msgbuf);
		send(msgbuf,len);
		DelayMs(100); 
		NOP();
    }
}