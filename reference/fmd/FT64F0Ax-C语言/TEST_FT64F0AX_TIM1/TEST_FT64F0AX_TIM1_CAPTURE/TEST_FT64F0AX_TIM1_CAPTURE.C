//********************************************************* 
/* 文件名：TEST_64F0Ax_TIM1_CAPTURE.c
* 功能：   FT64F0Ax_TIM1_CAPTURE功能演示
* IC:      FT64F0A5  TSSOP20
* 内部：   16M	                              
* 说明：   例程通过TIM1的捕获通道1测量TIM4输出到PB3的波形的周期（4K）
*		   TIM1计数器捕获的数据放在testdata数组里，一共20个。
*          程序只用到一个数据(testdata[1])来计算周期。
*
*                FT64F0A5  TSSOP20
*              --------------------
* NC----------|1(PA5)   	(PA4)20|-----------NC     
* NC----------|2(PA6)   	(PA3)19|-----------NC 
* NC----------|3(PA7)   	(PA2)18|-----------NC
* NC----------|4(PC0)   	(PA1)17|-----------NC
* NC----------|5(PC1)		(PA0)16|-----TIM1_CH1
* NC----------|6(PB7)		(PB0)15|-----------NC
* GND---------|7(GND)		(PB1)14|-----------NC
* NC----------|8(PB6)		(PB2)13|-----------NC
* VDD---------|9(VDD)		(PB3)12|--DemoPortOut
* NC----------|10(PB5)		(PB4)11|-DemoPortOut1
*              --------------------
*/ 
//*********************************************************
#include "SYSCFG.h";
#include "FT64F0AX.h";
//***********************宏定义****************************
#define  uchar  unsigned char
#define  uint   unsigned int

#define  DemoPortOut  PB3
#define  DemoPortOut1 PB4

volatile uint testdata[20] ;
volatile uchar y=0;
volatile uchar dataH;
volatile uchar dataL;
volatile uint period=0;
/*-------------------------------------------------
 * 函数名：interrupt ISR
 * 功能：  定时器中断
 * 输入：  无
 * 输出：  无
 --------------------------------------------------*/
void interrupt ISR(void)
{
    //定时器4的中断处理程序
    if(T4UIE&&T4UIF)			
    {
        T4UIF=1;					//写1清零标志位
        DemoPortOut=~DemoPortOut;	//翻转电平
    }
    //定时器1的中断处理程序
    if(T1CC1IE&&T1CC1IF)
    {
        T1CC1IF=1;					//写1清零标志位
        TIM1CNTRH=0X00;
        TIM1CNTRL=0X00;
		T1CC1OF=0;
        DemoPortOut1=~DemoPortOut1;	//翻转电平
        dataH=TIM1CCR1H;
        dataL=TIM1CCR1L;
        testdata[y++]=(uint)(dataH<<8|dataL);
        NOP();
        
        if(y>=20)
        {
            y=0;
            
            //计算周期（us）
            period=testdata[1]/32;//周期约等于250us
        }
    }
}
/*-------------------------------------------------
 * 函数名：POWER_INITIAL
 * 功能：  上电系统初始化
 * 输入：  无
 * 输出：  无
 --------------------------------------------------*/
 void POWER_INITIAL(void)
 {
	OSCCON=0B01110001;			//系统时钟选择为内部振荡器16MHz,分频比为1:1
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
	
	TRISA=0B00000001;			//输入输出设置，0-输出，1-输入 PA0输入
	TRISB=0B00000000;			//RB3-输出，RB4-输出
	TRISC=0B00000000;

	PSRC0=0B11111111;			//源电流设置最大
	PSRC1=0B11111111;
	PSRC2=0B00001111;

	PSINK0=0B11111111;			//灌电流设置最大
	PSINK1=0B11111111;
	PSINK2=0B00000011;

	ANSELA=0B00000000;			//设置对应的IO为数字IO	
 }
/*-------------------------------------------------
 * 函数名：TIM4_INITIAL
 * 功能：  初始化TIM4
 * 输入：  无
 * 输出：  无
 --------------------------------------------------*/
 void TIM4_INITIAL(void)
 {
    PCKEN|=0B00001000;			//使能TIMER4模块时钟
    TIM4CR1=0B00000101;			//允许自动装载，使能计数器
    TIM4IER=0B00000001;			//允许更新中断
    TIM4SR=0B00000000;	
    TIM4EGR=0B00000000;	
    TIM4CNTR=0;  
    TIM4PSCR=0B00000100;		//预分频器的值
    TIM4ARR=124;  				//自动装载值
    INTCON|=0B11000000;			//开总中断和外设中断
 }
/*-------------------------------------------------
 * 函数名：TIM1_INITIAL
 * 功能：  初始化TIM1
 * 输入：  无
 * 输出：  无
 --------------------------------------------------*/
  void TIM1_INITIAL(void)
 {
    PCKEN|=0B00000010;			//使能TIMER1模块时钟
    CKOCON=0B00100000;			//Timer1倍频时钟占空比调节位4ns延迟
    TCKSRC=0B00000011;			//Timer1时钟源为HIRC的2倍频
    
    TIM1CR1=0B00000110;			//自动装载，使能计数器
    TIM1CR2=0B00000000;
    
    TIM1SMCR=0B01010000;
    TIM1SMCR=0B00000100;
    TIM1ETR=0B00000000;
    TIM1IER=0B00000010;			//允许捕获/比较1使能
    
    TIM1SR1=0B00000000;
    TIM1SR2=0B00000000;
    
    TIM1EGR=0B00000000;
    
    TIM1CCMR1=0B00000001;		//将通道1配置为输入，IC1映射在TI1FP1上，不分频，无滤波器
    
    TIM1CCER1=0B00000001;		//通道1使能捕获，捕捉发生在TI1F的高电平或上升沿
    TIM1CCER2=0B00000000;
    
	TIM1CNTRH=0B00000000;
    TIM1CNTRL=0B00000000;
    
	TIM1PSCRH=0B00000000;		//不分频
    TIM1PSCRL=0B00000000;
    
	T1CEN=1;
 }
/*-------------------------------------------------
 * 函数名：main
 * 功能：  主函数 
 * 输入：  无
 * 输出：  无
 --------------------------------------------------*/
void main(void)
{
    POWER_INITIAL();			//系统初始化
    TIM1_INITIAL();
    TIM4_INITIAL();
  
    while(1)
    {
        NOP();
    }
}
