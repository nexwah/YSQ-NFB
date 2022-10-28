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

#define	LED1	PA1
#define	LED2	PB2
#define	LED3	PB3
#define	LED5	PC1
#define	LED6	PB7
#define	BTN 	PB4
#define	VABR 	PB0
#define	HTCRTL  PA0
#define	PWR     PA6
#define	CHRG    PB5

char command[20],valc[20];
int n =0;
unsigned int HTVP_,HTVN_,HTVI_ = 0;
float HTVP,HTVN,HTVI,I,V,R,T,diffT,bat = 0;
int PowerOn,BTNpressed,BTNtimer,HTOn,HTtimer,SmokeOn,Smoketimer,PuffOn,RDE1,RDE2,t1E,t2E,T1E,T2E,PTE,PFE,T0E,TRE,R0E,BATL = 0;
unsigned long BTNcnt,HTcnt,HTtimecnt,Smokecnt,Smoketimecnt,Puffcnt = 0;
int timeleft,timeleft1,timeleft2,timeleft3,timenow = 0;
float Toffset,m,Tm = 0;
float R0 = 0; //0.65
float T0 = 0; //2600
float Tr = 0; //25
int t1 = 0; //20s
int t2 = 0; //310s
float T1 = 0; //320 degree celsius
float T2 = 0; //295 degree celsius
int pf = 0; //15
int pt = 0; //5

void send(char* tbuf,int len);
void EEPROMwrite(uchar EEAddr,uchar Data); 
/*-------------------------------------------------
 * 函数名：interrupt ISR
 * 功能：  接收中断和发送中断
 * 输入：  无
 * 输出：  无
 --------------------------------------------------*/
int charArrayToInt(char *arr) {
  int res = 0;
  for (int i = 0; arr[i] != '\0'; ++i){
    res = (res * 10) + (arr[i] - '0');
  }
  return res;    
}

void interrupt ISR(void)
{
    //中断处理程序
    if(UR1RXNE&&UR1RXNEF)
    {  
        command[n] = UR1DATAL;
        n++;
        if(strstr(command,"\r\n")){
            int len = strlen(command)-5;
			for(int i=0;i<len;i++){
				valc[i] += command[i+3];
            }
            if(strstr(command,"t1:")){
                t1 = charArrayToInt(valc);
                t1E = 1;
            }
            if(strstr(command,"t2:")){
                t2 = charArrayToInt(valc);
                t2E = 1;
            }
            if(strstr(command,"pf:")){
                pf = charArrayToInt(valc);
                PFE = 1;
            }
            if(strstr(command,"T1:")){
                T1 = (float)charArrayToInt(valc);
                T1E = 1;
            }
            if(strstr(command,"T2:")){
                T2 = (float)charArrayToInt(valc);
                T2E = 1;
            }
            if(strstr(command,"pt:")){
                pt = charArrayToInt(valc);
                PTE = 1;
            }
            if(strstr(command,"T0:")){
                T0 = (float)charArrayToInt(valc);
                T0E = 1;
            }
            if(strstr(command,"Tr:")){
                Tr = (float)charArrayToInt(valc);
                TRE = 1;
            }
            if(strstr(command,"R0:")){
                R0 = (float)atof(valc);
                R0E = 1;
            }
            if(strstr(command,"rd1")){
                RDE1 = 1;
            }
            if(strstr(command,"rd2")){
                RDE2 = 1;
            }
            n = 0;
            memset(command,0,20);
            memset(valc,0,20);
        }
	}
    if(EPIF0&0X10)					
    {
        EPIF0=0X10;			//写1清零标志位
        BTNpressed = 1;
        BATL = 1;
        BTNcnt = 0;
    }
    if(T2UIE&&T2UIF)			
    {
        T2UIF=1;			//写1清零标志位 
        if(BTNpressed){
            BTNcnt++;
            if(BTN){
                BTNpressed = 0;
            } else if(BTNcnt>=1500){
                BTNtimer = 1;
                BTNpressed = 0;
            }
        }
        if(HTOn){
            HTcnt++;
            if(HTcnt>=50){
                HTtimer = 1;
                HTtimecnt++;
                HTcnt = 0;
            }
        }
        if(SmokeOn){
           Smokecnt++;
           if(Smokecnt>=10){
               Smoketimer = 1;
               Smoketimecnt++;
               Smokecnt = 0;
           }
        }
    }
}
/*-------------------------------------------------
 * 函数名：POWER_INITIAL
 * 功能： 	 上电系统初始化
 * 输入：	 无
 * 输出： 	 无
 --------------------------------------------------*/
 void POWER_INITIAL(void)
 {
	OSCCON=0B01110001;			//系统时钟选择为内部振荡器16MHz,分频比为1:1
    
	INTCON=0;					//禁止所有中断
    
    PORTA=0B00000000;
    PORTB=0B00000000;
    PORTC=0B00000000;
    
	WPUA=0B00000000;			//弱上拉的开关，0-关，1-开		
	WPUB=0B00010000;
	WPUC=0B00000000;	

	WPDA=0B01000000;			//弱下拉的开关，0-关，1-开
	WPDB=0B00000000;
	WPDC=0B00000000;
	
	TRISA=0B11111100;			//输入输出设置，0-输出，1-输入
	TRISB=0B00110010;			//LED(PA1,PB2,PB3,PC1,PB7)-0, TX(PB6)-0; VABR(PB0)-0; HTCRTL(PA0)-0
	TRISC=0B00000001;			//BTN(PB4)-1; RX(PA2)-1; otherIOs-1

	PSRC0=0B11111111;			//源电流设置最大
	PSRC1=0B11111111;
	PSRC2=0B00001111;

	PSINK0=0B11111111;			//灌电流设置最大
	PSINK1=0B11111111;
	PSINK2=0B00000011;

	ANSELA=0B00000000;			//设置对应的IO为数字IO	
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
 * 函数名：UART_INITIAL
 * 功能：  初始化串口
 * 输入：  无
 * 输出：  无
 --------------------------------------------------*/
 void UART_INITIAL(void)
 {
    AFP0 = 0B01000000;
    AFP1 = 0B01000000;
    PCKEN|=0B00100000;			//使能UART1模块时钟
    UR1IER=0B00000001;			//使能发送完成中断，使能接收数据中断
    UR1LCR=0B00000001;			//8位数据长度，1位停止位，无奇偶校验位
    UR1MCR=0B00011000;			//使能发送和接收接口
       
    UR1DLL=104;					//波特率=Fmaster/(16*{URxDLH,URxDLL}); DLL=104,DLH=0;BR=9600; DLL=9,DLH=0;BR=115200;
    UR1DLH=0;  
    UR1TCF=1;
    INTCON=0B11000000;
 }
  /*-------------------------------------------------
 * 函数名：IO_INT_INITIAL
 * 功能：  IO中断初始化 
 * 输入：  无
 * 输出：  无
 --------------------------------------------------*/
 void IO_INT_INITIAL(void)
 {
     EPS0=0B00000000;			
     EPS1=0B00000001;			//选择PB4管脚中断
     ITYPE0=0B00000000;			
     ITYPE1=0B00000010;			//下降沿
     EPIE0=0B00010000;			//使能中断4
     INTCON=0B11000000;	    	//使能总中断和外设中断
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
    TCKSRC=0B00000000;			//Timer1时钟源为Sysclk
    
    TIM1CR1=0B10000101;			//允许自动装载，使能计数器
    TIM1CR2=0B00000000;
    
    TIM1SMCR=0B00000000;
    TIM1ETR=0B00000000;
    TIM1IER=0B00000000;			//禁止所有中断
    
    TIM1SR1=0B00000000;
    TIM1SR2=0B00000000;
    
    TIM1EGR=0B00000000;
    
    TIM1CCMR1=0B01101000;		//将通道1配置为输出，PWM模式1，开启TIM1CCR1H/L预装载功能
    TIM1CCMR2=0B00000000;
    TIM1CCMR3=0B00000000;
    TIM1CCMR4=0B00000000;
    
    TIM1CCER1=0B00001111;		//通道1使能输出及互补输出，低电平有效
    TIM1CCER2=0B00000000;
    
	TIM1CNTRH=0B00000000;
    TIM1CNTRL=0B00000000;
    
    TIM1ARRH=0x7d;				//32000, 500Hz
    TIM1ARRL=0x00;				
    
    TIM1PSCRH=0B00000000;		//不分频
    TIM1PSCRL=0B00000000;		//不分频
    
    TIM1RCR=0B00001111;			//Bit[7:0]:重复计数器的值T1REP[7:0]，(T1REP+1)对应着PWM周期的数目(边沿对齐模式下)
    
    TIM1CCR1H=0xff;				//PWM脉宽
    TIM1CCR1L=0xff;		
    
    TIM1BKR=0B11000000;			//使能输出和互补输出，禁止刹车输入
    
    TIM1DTR=0B00000111;			//死区发生器设置，定义插入互补输出之间的死区持续时间为218.75ns
    
    TIM1OISR=0B00000000;		//空闲状态输出设置
    
    LEBCON=0B00000000;			//禁止前沿消隐
    
	T1CEN=0;
 }
 /*-------------------------------------------------
 * 函数名：TIM2_INITIAL
 * 功能：  初始化TIM2
 * 输入：  无
 * 输出：  无
 --------------------------------------------------*/
 void TIM2_INITIAL(void)
 {
    PCKEN|=0B00000100;			//使能TIMER2模块时钟
    CKOCON=0B00100000;			//Timer2倍频时钟占空比调节位4ns延迟
    TCKSRC=0B00000000;			//Timer2时钟源为Sysclk
    
    TIM2CR1=0B10000101;			//允许自动装载，使能计数器
    
    TIM2IER=0B00000001;			//允许更新中断
       
    TIM2ARRH=0x3e;				//自动装载高8位3eH
    TIM2ARRL=0x80;				//自动装载低8位80H
								//16M/16k=1kHz=1ms
 } 
/*-------------------------------------------------
 * 函数名：SPI_INITIAL
 * 功能：  初始化IIC
 * 输入：  无
 * 输出：  无
 --------------------------------------------------*/
 void ADC_INITIAL(void)
 {
     PCKEN|=0B00000001;			//AD模块时钟使能
                                      
     ANSELA|=0B00010111;		
     //控制IO的数模输入，1：对应的IO为模拟管脚，0：对应的IO为数字IO
         
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
     ADON=1;				//使能ADC
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
 /*---------------------------------------------
  * OP0 INITIAL
  * OP AMP the analoginput
  * input: PA5(OP0+),PA6(OP0-)
  * output: PA7(AN4)
 -----------------------------------------------*/
void OP0_INITIAL(void)
{
    OP0CR0 = 0B00111011;
    OP0CFG = 0B00010001;
    AN4SELB = 1; //link OP0OUT to AN4
}
/*-------------------------------------------------
 * 函数名：EEPROMread
 * 功能：  读EEPROM数据
 * 输入：  EEAddr需读取数据的地址
 * 输出：  ReEEPROMread对应地址读出的数据
 --------------------------------------------------*/
uchar EEPROMread (uchar EEAddr)
{
    uchar ReEEPROMread;
	while(GIE)	           		//等待GIE为0
	{
          GIE = 0;            	//读数据必须关闭中断
          NOP();               
          NOP();            
	}				
    EEADRL=EEAddr;
    
    CFGS=0;
    EEPGD=0;
    RD=1;
    NOP();
    NOP();
    NOP();
    NOP();
    ReEEPROMread=EEDATL;
    
    return ReEEPROMread;
}
/*-------------------------------------------------
 * 函数名：Unlock_Flash
 * 功能：  进行FLASH/EEDATA操作时，解锁FLASH/EEDATA的时序不能被打断。
 *		   程序中要将此段用汇编指令处理防止被优化
 * 输入：  无
 * 输出：  无
 --------------------------------------------------*/
void Unlock_Flash()
{
#asm
    MOVLW    0x03
    MOVWF    _BSREG
    MOVLW    0x55
    MOVWF    _EECON2 & 0x7F
    MOVLW    0xAA
    MOVWF    _EECON2 & 0x7F
    BSF		_EECON1 & 0x7F,1  		//WR=1;
    NOP
    NOP
#endasm
}
/*-------------------------------------------------
 * 函数名：EEPROMwrite
 * 功能：  写数据到EEPROM
 * 输入：  EEAddr为需要写入数据的地址，Data为需要写入的数据
 * 输出：  无
 * 地址范围从 0h 到 07Fh
 --------------------------------------------------*/
 void EEPROMwrite(uchar EEAddr,uchar Data)
 {
	while(GIE)	           		//等待GIE为0
	{
		GIE = 0;            	//写数据必须关闭中断
		NOP();               
		NOP();            
	}				
	EEADRL=EEAddr;			    //EEPROM的地址
	EEDATL=Data;				//EEPROM的数据
     
	CFGS=0;
	EEPGD=0;
	WREN=1;						//写使能
	EEIF=0;
    
	Unlock_Flash();        		//Flash 解锁时序不能修改
    NOP();
    NOP();
    NOP();
    NOP();
    
	while(WR);					//等待EEPROM写入完成
	WREN=0;
	GIE=1;
 }
/*-------------------------------------------------
 *USER CODE
 --------------------------------------------------*/
void send(char* tbuf,int len)
{
    for(int i=0;i<len;i++)
    {
         UR1DATAL=tbuf[i];
         DelayMs(1);
	}
}

void INIT(void)
{
    HTCRTL=0; 	//HeaterPin:0-OFF,1-ON
    VABR=0;		//Vibrator:0-OFF,1-ON
    LED1=1;		//LED:0-ON,1-OFF
	LED2=1;
	LED3=1;
	LED5=1;
	LED6=1;   
}

void EEPROM_INIT(void)
{
    uchar EEReadData=EEPROMread(0x00);//读取0x00地址EEPROM值
    if(EEReadData != 0x01){          
        EEPROMwrite(0x00,0x01);		//0x01写入地址0x00
        EEPROMwrite(0x01,0x14);     //t1:20写入地址0x01  
        EEPROMwrite(0x02,0x36);		//t2:310写入地址0x02
        EEPROMwrite(0x03,0x01);
        EEPROMwrite(0x04,0x40);		//T1:320写入地址0x04
        EEPROMwrite(0x05,0x01); 
        EEPROMwrite(0x06,0x27);		//T2:295写入地址0x06
        EEPROMwrite(0x07,0x01);  
        EEPROMwrite(0x08,0x0F);		//pf:15
        EEPROMwrite(0x09,0x05);     //pt:5
        EEPROMwrite(0x0A,0x28);     //T0:2600
        EEPROMwrite(0x0B,0x0A);     
        EEPROMwrite(0x0C,0x19);     //Tr:25
        EEPROMwrite(0x0D,0x41);     //R0:65  
    } else{
        t1 = EEPROMread(0x01);
        t2 = (EEPROMread(0x03)<<8)+EEPROMread(0x02);
        T1 = (EEPROMread(0x05)<<8)+EEPROMread(0x04);
        T2 = (EEPROMread(0x07)<<8)+EEPROMread(0x06);
        pf = EEPROMread(0x08);
        pt = EEPROMread(0x09); 
        T0 = (EEPROMread(0x0B)<<8)+EEPROMread(0x0A);
        Tr = EEPROMread(0x0C);
        R0 = (float)EEPROMread(0x0D)/100;
    }    
}

void BatteryLevel(void)
{
    int Vdd = GET_ADC_DATA(2);
    bat = (float)Vdd*2/4096;
    bat = bat*2;
    if(bat>=3.9){
        LED3 = 0;
        LED2 = 0;
        LED1 = 0;
    } else if(bat>=3.5){
        LED3 = 1;
        LED2 = 0;
        LED1 = 0;        
    } else if(bat>=3.1){
        LED3 = 1;
        LED2 = 1;
        LED1 = 0; 
    } else{
        LED3 = 1;
        LED2 = 1;
        LED1 = 1; 
    }
    DelayMs(1000);
    LED3 = 1;
    LED2 = 1;
    LED1 = 1;            
}

void BatteryChargingLevel(void)
{
	int Vdd = GET_ADC_DATA(2);
    for(int i=0;i<4;i++){
		Vdd = (Vdd+GET_ADC_DATA(2))/2;
	}
	bat = (float)Vdd*2/4096;
    bat = bat*2;
	if(bat>=3.9){
		LED3 = 0;
		LED2 = 0;
		LED1 = 0;
        if(CHRG){
			LED6 = 0;
		} else{
			LED6 = ~LED6;
		}
	} else if(bat>=3.5){
        LED6 = 1;
		LED3 = ~LED3;
		LED2 = 0;
		LED1 = 0;        
	} else if(bat>=3.1){
        LED6 = 1;
		LED3 = 1;
		LED2 = ~LED2;
		LED1 = 0; 
	} else{
        LED6 = 1;
		LED3 = 1;
		LED2 = 1;
		LED1 = ~LED1; 
	}
    DelayMs(500);      
}

void PowerOnProcess(void)
{
	send((char*)"P1\r\n",4);
	LED5 = 0;
	VABR = 1;
	DelayMs(500);
	VABR = 0;
	BatteryLevel();
	timeleft = 20;
	timeleft1 = 9;
	send((char*)"H1\r\n",4);
	HTOn = 1;
	HTCRTL = 1;
	HTcnt = 0;
	HTtimecnt = 0;
}

void PowerOffProcess(void)
{
	send((char*)"H0\r\n",4);
	HTOn = 0;
	HTtimer = 0;
	HTCRTL = 0;
	send((char*)"S0\r\n",4);
	SmokeOn = 0;
	Smoketimer = 0;
	PuffOn = 0;
	send((char*)"P0\r\n",4);
	LED5=1;
	VABR = 1;
	DelayMs(500);
	VABR = 0;
	LED1=1;
	LED2=1;
	LED3=1;
}

void HeatingProcess(void)
{
	if(HTCRTL){
		HTVP_ = GET_ADC_DATA(2);
		for(int i=0;i<4;i++){
			HTVP_ = (HTVP_+GET_ADC_DATA(2))/2;
		}
		HTVN_ = GET_ADC_DATA(1);
		for(int i=0;i<4;i++){
			HTVN_ = (HTVN_+GET_ADC_DATA(1))/2;
		}
		HTVI_ = GET_ADC_DATA(4);
		for(int i=0;i<4;i++){
			HTVI_ = (HTVI_+GET_ADC_DATA(4))/2;
		}
		HTVP = (float)HTVP_*2/4096;
		HTVN = (float)HTVN_*2/4096;
		HTVI = (float)HTVI_*2/4096;
		I = HTVI/0.01/39;
		V = (HTVP-HTVN)*2;
		R = V/I;
		T = (((R/R0)-1)/(T0/1000000))+Tr;
	}
	if(HTtimecnt>=timeleft){ //1second
		LED5 = ~LED5;
		char msg[10];
		sprintf(msg,"T:%0.1f\r\n",T);
		send(msg,strlen(msg));
		timeleft += 20;
	}
	if(t1>=30){
		if(HTtimecnt==20){
			Toffset = T;
			Tm = T1-T;
			m = Tm/(t1-1);
		}
		if(HTtimecnt>20){
			diffT = ((m*(HTtimecnt-20)/20)+Toffset)-T;
			if(diffT>=0){
				HTCRTL = 1;
			} else{
				HTCRTL = 0;
			} 
		}
	} else if(t1>=20){
		if(HTtimecnt==200){
			Toffset = T;
			Tm = T1-T;
			m = Tm/(t1-10);
		}
		if(HTtimecnt>200){
			diffT = ((m*(HTtimecnt-200)/20)+Toffset)-T;
			if(diffT>=0){
				HTCRTL = 1;
			} else{
				HTCRTL = 0;
			} 
		}
	}     
	if(HTtimecnt>=timeleft1){ //0.5second
		HTCRTL = 1;
		timeleft1 += 10;
	}                      
	if(HTtimecnt>((t1*20)+9) || T>=T1){  
		char msg[10];
		sprintf(msg,"T%0.1f\r\n",T);
		send(msg,strlen(msg));            
		send((char*)"T0\r\n",4);
		send((char*)"H0\r\n",4);
		HTCRTL = 0;
		HTOn = 0;
		HTtimer = 0;
		VABR = 1;
		DelayMs(500);
		VABR = 0;
		DelayMs(500);
		send((char*)"S1\r\n",4);
		LED5 = 0;
		LED3 = 1;
		LED2 = 1;
		LED1 = 1; 
		timeleft2 = 100;
		timeleft3 = 9;
		SmokeOn = 1;
		Puffcnt = 0;
		Smoketimecnt = 0;
		HTCRTL = 1;
	}
}

void SmokingProcess(void)
{
	if(HTCRTL){
		HTVP_ = GET_ADC_DATA(2);
		for(int i=0;i<4;i++){
			HTVP_ = (HTVP_+GET_ADC_DATA(2))/2;
		}
		HTVN_ = GET_ADC_DATA(1);
		for(int i=0;i<4;i++){
			HTVN_ = (HTVN_+GET_ADC_DATA(1))/2;
		}
		HTVI_ = GET_ADC_DATA(4);
		for(int i=0;i<4;i++){
			HTVI_ = (HTVI_+GET_ADC_DATA(4))/2;
		}
		HTVP = (float)HTVP_*2/4096;
		HTVN = (float)HTVN_*2/4096;
		HTVI = (float)HTVI_*2/4096;
		I = HTVI/0.01/39;
		V = (HTVP-HTVN)*2;
		R = V/I;
		T = (((R/R0)-1)/(T0/1000000))+Tr;
	}
	if(Smoketimecnt>=timeleft2){ //1second
		if(HTCRTL){
			char msg[10];
			sprintf(msg,"T:%0.1f\r\n",T);
			send(msg,strlen(msg));
			timeleft2 += 100;
		}
	}
	diffT = T2-T;
	if(diffT>0){
		HTCRTL = 1;
	} else{
		HTCRTL = 0;
	}
	if(Smoketimecnt>=timeleft3){ //0.1second
		HTCRTL = 1;
		timeleft3 += 10;
	}
	if(diffT>pt && !PuffOn && Smoketimecnt>200){ //2second
		Puffcnt++;
		int puffno = Puffcnt;
		char msg[10];
		sprintf(msg,"D%d,%0.1f\r\n",puffno,diffT);
		send(msg,strlen(msg));
		PuffOn = 1;
		timenow = Smoketimecnt;
	}
	if(PuffOn){
		if(Smoketimecnt-timenow>=200){ //2second
			PuffOn = 0;
		} 
	}
	if(Smoketimecnt>=(t2*100) || Puffcnt>=pf){            
		send((char*)"T0\r\n",4);
		send((char*)"S0\r\n",4);
		HTCRTL = 0;
		SmokeOn = 0;
		Smoketimer = 0;
		PuffOn = 0;
		PowerOn = 0;
		LED5=1;
		VABR = 1;
		DelayMs(500);
		VABR = 0;
	} 
}

void UART_Check(void)
{
	if(RDE1){
		RDE1 = 0;
		char msg[80];
		sprintf(msg,"HTP%d,%d,%0.0f,%0.0f,%d,%d\r\n",t1,t2,T1,T2,pf,pt);
		send(msg,strlen(msg));           
	}
	if(RDE2){
		RDE2 = 0;
		char msg[80];
		sprintf(msg,"TCR%0.0f,%0.0f,%0.2f\r\n",T0,Tr,R0);
		send(msg,strlen(msg));           
	}
	if(t1E){
		t1E = 0;
		uchar dataL = t1;
		EEPROMwrite(0x01,dataL);
	}
	if(t2E){
		t2E = 0;
		uchar dataL = t2&0xFF;
		uchar dataH = (t2>>8)&0xFF;
		EEPROMwrite(0x02,dataL);
		EEPROMwrite(0x03,dataH);
	}
	if(T1E){
		T1E = 0;
		int data = (int)T1;
		uchar dataL = data&0xFF;
		uchar dataH = (data>>8)&0xFF;
		EEPROMwrite(0x04,dataL);
		EEPROMwrite(0x05,dataH);
	}
	if(T2E){
		T2E = 0;
		int data = (int)T2;
		uchar dataL = data&0xFF;
		uchar dataH = (data>>8)&0xFF;
		EEPROMwrite(0x06,dataL);
		EEPROMwrite(0x07,dataH);
	}
	if(PFE){
		PFE = 0;
		uchar dataL = pf&0xFF;
		EEPROMwrite(0x08,dataL);
	}
	if(PTE){
		PTE = 0;
		uchar dataL = pt&0xFF;
		EEPROMwrite(0x09,dataL);
	}
	if(T0E){
		T0E = 0;
		int data = (int)T0;
		uchar dataL = data&0xFF;
		uchar dataH = (data>>8)&0xFF;
		EEPROMwrite(0x0A,dataL);
		EEPROMwrite(0x0B,dataH);                
	}
	if(TRE){
		TRE = 0;
		int data = (int)Tr;
		uchar dataL = data&0xFF;
		EEPROMwrite(0x0C,dataL);               
	}
	if(R0E){
		R0E = 0;
		int data = (int)(R0*100);
		uchar dataL = data&0xFF;
		EEPROMwrite(0x0D,dataL);               
	}
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
    EEPROM_INIT();
    UART_INITIAL();
    IO_INT_INITIAL();
	ADC_INITIAL();
    OP0_INITIAL();
    TIM2_INITIAL();
    INIT();
    send((char*)"Version_1.0 OCT2022\r\n",21);
    
    while(1)
    {   
        //NOP();
        if(!PWR){
            if(BATL){
                BATL = 0;
                BatteryLevel();
            }
			if(BTNtimer){
				BTNtimer=0; 
				PowerOn = 1 - PowerOn;
				if(PowerOn){
					PowerOnProcess();
				} else{   
					PowerOffProcess();
				}  
			}
			if(HTtimer){
				HTtimer = 0;
				HeatingProcess();
			}
			if(Smoketimer){
				Smoketimer = 0;
				SmokingProcess();
			}
			UART_Check();
        } else{
            BatteryChargingLevel();
			if(BTNtimer){
				BTNtimer=0;
            }
            if(!PWR){
                LED6 = 1;
				LED3 = 1;
				LED2 = 1;
				LED1 = 1; 
            }
        }
    }
}