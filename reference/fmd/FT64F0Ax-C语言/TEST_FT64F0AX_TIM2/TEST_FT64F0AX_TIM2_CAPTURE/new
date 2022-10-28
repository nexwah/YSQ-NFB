//********************************************************* 
/* 文件名：TEST_64F0Ax_TIM2_CAPTURE.c
* 功能：   FT64F0Ax_TIM2_CAPTURE功能演示
* IC:      FT64F0Ax  TSSOP20
* 内部：   16M	                              
* 说明：   例程通过TIM2的捕获通道1测量TIM4输出到RB3的波形的周期（4K）
*		   TIM2计数器捕获的数据放在testdata数组里，一共20个。
*          程序只用到一个数据(testdata[1])来计算周期
*
*                FT64F0AX  TSSOP20
*              -------------------
* TIM2_CH1----|1(PA5)   	(PA4)20|-----------NC     
* NC----------|2(PA6)   	(PA3)19|-----------NC 
* NC----------|3(PA7)   	(PA2)18|-----------NC
* NC----------|4(PC0)   	(PA1)17|-----------NC
* NC----------|5(PC1)		(PA0)16|-----------NC	
* NC----------|6(PB7)		(PB0)15|-----------NC
* GND---------|7(GND)		(PB1)14|-----------NC
* NC----------|8(PB6)		(PB2)13|-----------NC
* VDD---------|9(VDD)		(PB3)12|--DemoPortOut
* NC----------|10(PB5)		(PB4)11|-DemoPortOut1
*				-------------------
*/ 
//********************************************************
#include	"SYSCFG.h";
#include 	"FT64F0AX.h";
//***********************宏定义***************************
#define  uchar		unsigned char
#define  uint		unsigned int

#define  DemoPortOut 	RB3
#define  DemoPortOut1	RB4

volatile uint  testdata[20];
volatile uchar y=0;
volatile uchar dataH;
volatile uchar dataL;
volatile uint  period=0;
/*-------------------------------------------------
 * 函数名：interrupt ISR
 * 功能：  定时器中断
 * 输入：  无
 * 输出：  无
 * 输出：  无
 --------------------------------------------------*/
void interrupt ISR(void)
{
    //定时器4的中断处理程序
    if(T4UIE&&T4UIF)			
    {
        T4UIF=1;							//写1清零标志位
        DemoPortOut=~DemoPortOut;			//翻转电平
    }
    //定时器2的中断处理程序
    if(T2CC1IE&&T2CC1IF)
    {
        T2CC1IF=1;							//写1清零标志位
        TIM2CNTRH=0X00;
        TIM2CNTRL=0X00;
        DemoPortOut1=~DemoPortOut1;		    //翻转电平
        dataH=TIM2CCR1H;
        dataL=TIM2CCR1L;
        testdata[y++]=(uint)(dataH<<8|dataL);
        NOP();
        if(y>=20)
        {
            y=0;
            
            //计算周期（us）
            period=testdata[1]/32;			//周期约等于250us
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
	OSCCON=0B01110001;						//系统时钟选择为内部振荡器16MHz,分频比为1:1
	INTCON=0;								//禁止所有中断
    
    PORTA=0B00000000;
    PORTB=0B00000000;
    PORTC=0B00000000;
    
	WPUA=0B00000000;						//弱上拉的开关，0-关，1-开		
	WPUB=0B00000000;
	WPUC=0B00000000;	

	WPDA=0B00000000;						//弱下拉的开关，0-关，1-开
	WPDB=0B00000000;
	WPDC=0B00000000;
	
	TRISA=0B00100000;						//输入输出设置，0-输出，1-输入 PA5输入
	TRISB=0B00000000;						//RB3-输出，RB4-输出
	TRISC=0B00000000;

	PSRC0=0B11111111;						//源电流设置最大
	PSRC1=0B11111111;
	PSRC2=0B00001111;

	PSINK0=0B11111111;						//灌电流设置最大
	PSINK1=0B11111111;
	PSINK2=0B00000011;

	ANSELA=0B00000000;						//设置对应的IO为数字IO	
 }
 /*-------------------------------------------------
 * 函数名：TIM4_INITIAL
 * 功能：  初始化TIM4
 * 输入：  无
 * 输出：  无
 --------------------------------------------------*/
 void TIM4_INITIAL(void)
 {
    PCKEN|=0B00001000;					//使能TIMER4模块时钟
    TIM4CR1=0B00000101;					//允许自动装载，使能计数器
    TIM4IER=0B00000001;					//允许更新中断
    TIM4SR=0B00000000;	
    TIM4EGR=0B00000000;	
    TIM4CNTR=0;  
    TIM4PSCR=0B00000100;				//预分频器的值
    TIM4ARR=124;  						//自动装载值
    INTCON|=0B11000000;					//开总中断和外设中断
 }
  /*-------------------------------------------------
 * 函数名：TIM2_INITIAL
 * 功能：  初始化TIM2
 * 输入：  无
 * 输出：  无
 --------------------------------------------------*/
  void TIM2_INITIAL(void)
 {
    PCKEN|=0B00000100;					//使能TIMER2模块时钟
    CKOCON=0B00100000;					//Timer2倍频时钟占空比调节位4ns延迟
    TCKSRC=0B00110000;					//Timer2时钟源为HIRC的2倍频
    
    TIM2CR1=0B10000101;					//允许自动装载，使能计数器
    
    TIM2IER=0B00000010;					//允许捕获/比较1中断
    
    TIM2SR1=0B00000000;
    TIM2SR2=0B00000000;
    
    TIM2EGR=0B00000000;
    
    TIM2CCMR1=0B00000001;				//将通道1配置为输入，IC1映射在TI1FP1上，不分频，无滤波器
    
    TIM2CCER1=0B00000001;				//通道1使能捕获，捕捉发生在TI1F的高电平或上升沿
    
    TIM2CNTRH=0B00000000;
    TIM2CNTRL=0B00000000;
    
    TIM2PSCR=0B00000000;				//不分频
    
    T2CEN=1;
 }
/*-------------------------------------------------
 * 函数名：main
 * 功能：  主函数 
 * 输入：  无
 * 输出：  无
 --------------------------------------------------*/
void main(void)
{
    POWER_INITIAL();					//系统初始化
    TIM2_INITIAL();
    TIM4_INITIAL();
  
    while(1)
    {
        NOP();
    }
}