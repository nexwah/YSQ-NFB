//********************************************************* 
/* 文件名： TEST_64F0Ax_IR_Receive.c
* 功能：    FT64F0Ax_IR_Receive功能演示
* IC:   	FT64F0A5  TSSOP20
* 内部：    16M/4T
* 说明：	演示程序中，IR红外是采用6122协议，起始信号是9ms低电平，到4.5ms高电平，再到低8
*			位用户识别码，到高8位的用户识别码，8位数据码，8位数据码的反码。RXIO（RC3）每次
*			收到遥控器发过来的数据后，数据是合法（两对补码，不对内容判断）的话，LED(RB3)开关
*			状态就改变一次。）
*
*                FT64F0A5  TSSOP20
*              -------------------
* NC----------|1(PA5)   	(PA4)20|-----------NC
* NC----------|2(PA6)   	(PA3)19|--------IRRIO
* NC----------|3(PA7)   	(PA2)18|-----------NC
* NC----------|4(PC0)   	(PA1)17|-----------NC
* NC----------|5(PC1)		(PA0)16|-----------NC
* NC----------|6(PB7)		(PB0)15|-----------NC
* GND---------|7(GND)		(PB1)14|-----------NC
* NC----------|8(PB6)		(PB2)13|-----------NC
* VDD---------|9(VDD)		(PB3)12|----------LED
* NC----------|10(PB5)		(PB4)11|-----------NC
*				-------------------
*/ 
//*********************************************************
#include	"SYSCFG.h";
#include 	"FT64F0AX.h";
//***********************宏定义****************************
#define		uchar		unsigned char

#define		LED			PB3				//LED指示灯的IO
#define		IRRIO		PA3				//IR的接收脚

uchar IRbitNum = 0;						//用于记录接收到第几位数据了
uchar IRbitTime = 0;					//用于计时一位的时间长短
volatile uchar IRDataTimer[4];		    //存放4个数据
uchar bitdata=0x01;						//用于按位或的位数据
uchar ReceiveFinish = 0;				//用于记录接收完成
uchar ReadAPin = 0;						//用于读取IO口状态，电平变化中断标志清除
volatile uchar rdata1,rdata2;
/*-------------------------------------------------
 * 函数名：interrupt ISR
 * 功能：  定时器4中断和外部中断
 * 输入：  无
 * 输出：  无
 --------------------------------------------------*/
void interrupt ISR(void)
{
    //定时器4的中断处理
    if(T4UIE&&T4UIF)
    {
		T4UIF=1;						//写1清零标志位
        
        IRbitTime++;
        if(IRbitTime>50)
        {
            T4UIE=0;
            IRbitTime=0;
        }
	}
    
	//Px电平变化中断
	if(EPIF0&0X08)					
    {
        EPIF0|=0X08;				//写1清零标志位
        
        if(IRRIO==0)
        {
            T4UIE=1;
            if(IRbitTime>21)
            {
                IRDataTimer[0]=0;
                IRDataTimer[1]=0;
                IRDataTimer[2]=0;
                IRDataTimer[3]=0;
                IRbitNum=0;
				bitdata=0x00;
            }
            else if(IRbitTime>3)
            {
                IRDataTimer[IRbitNum-1]|=bitdata;
            }
            IRbitTime = 0;
            bitdata<<=1;
            if(bitdata==0)
            {
                bitdata=0x01;
                IRbitNum++;
            }
            if(IRbitNum>4)
            {
                IRbitNum=0;
                T4UIE=0;
                ReceiveFinish=1;
            }
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
	OSCCON=0B01110001;		    	//系统时钟选择为内部振荡器16MHz,分频比为1:1
	INTCON=0;						//禁止所有中断
    
    PORTA=0B00000000;
    PORTB=0B00000000;
    PORTC=0B00000000;
    
	WPUA=0B00001000;				//弱上拉的开关，0-关，1-开		
	WPUB=0B00000000;
	WPUC=0B00000000;	

	WPDA=0B00000000;				//弱下拉的开关，0-关，1-开
	WPDB=0B00000000;
	WPDC=0B00000000;
	
	TRISA=0B11111111;				//输入输出设置，0-输出，1-输入
	TRISB=0B11110111;				//PB3-OUT
	TRISC=0B00000011;

	PSRC0=0B11111111;				//源电流设置最大
	PSRC1=0B11111111;
	PSRC2=0B00001111;

	PSINK0=0B11111111;				//灌电流设置最大
	PSINK1=0B11111111;
	PSINK2=0B00000011;

	ANSELA=0B00000000;				//设置对应的IO为数字IO	
 }
/*-------------------------------------------------
 * 函数名：TIMER4_INITIAL
 * 功能：  初始化定时器，设置TIMER4定时时长560us
 * 输入：  无
 * 输出：  无
 --------------------------------------------------*/
 void TIMER4_INITIAL(void)
 {
    PCKEN|=0B00001000;				//使能TIMER4时钟模块
    TIM4CR1=0B00000101;	    		//允许自动装载，使能计数器
    TIM4IER=0B00000001;	    		//允许更新中断
    TIM4SR=0B00000000;	
    TIM4EGR=0B00000000;
    TIM4CNTR=0;
    TIM4PSCR=0B00000110;			//Bit[2:0]:预分频比为1:64
    TIM4ARR=140;					//自动装载值
 }
/*-------------------------------------------------
 * 函数名：Px_Level_Change_INITIAL
 * 功能：  端口电平变化中断初始化
 * 输入：  无
 * 输出：  无
 --------------------------------------------------*/
 void Px_Level_Change_INITIAL(void)
 {
    EPS0=0B00000000;				//选择PA3管脚中断
    EPS1=0B00000000;			
    ITYPE0=0B11000000;				//双边沿中断
    ITYPE1=0B00000000;	
    EPIE0=0B00001000;				//允许外部中断3
    INTCON=0B01000000;	    		//使能外设中断
 }
/*-------------------------------------------------
 * 函数名：main
 * 功能：  主函数 
 * 输入：  无
 * 输出：  无
 --------------------------------------------------*/
void main(void)
{
    POWER_INITIAL();				//系统初始化
    TIMER4_INITIAL();
    Px_Level_Change_INITIAL();
    GIE=1;							//开启总中断

    while(1)
    {
        if(ReceiveFinish==1)
        {
            ReceiveFinish=0;
            rdata1=0xFF-IRDataTimer[0];
            rdata2=0xFF-IRDataTimer[2];
            if((rdata1==IRDataTimer[1])&&(rdata2==IRDataTimer[3]))
            {
                LED=~LED;			//翻转电平
            }
        }
    }
}