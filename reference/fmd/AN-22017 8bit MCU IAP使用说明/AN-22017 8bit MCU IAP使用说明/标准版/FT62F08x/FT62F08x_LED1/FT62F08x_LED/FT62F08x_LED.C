//Project: FT62F08x_LED.prj
// Device: FT62F08X
// Memory: Flash 8KX14b, EEPROM 256X8b, SRAM 1KX8b
// Author: 
//Company: 
//Version:
//   Date: 
//===========================================================
//===========================================================
#include	"SYSCFG.h";
//===========================================================
//***********************宏定义*****************************
#define  unchar    unsigned char 
#define  unint      unsigned int
#define  unlong    unsigned long
//Variable definition
volatile char W_TMP  @ 0x70 ;//系统占用不可以删除和修改
volatile char BSR_TMP  @ 0x71 ;//系统占用不可以删除和修改

//volatile  unchar mydata; //全局查看变量定义
unsigned char flag@0x20;
bit read_flag        @ ((unsigned)&flag*8)+0;
bit iap_err_flag    @ ((unsigned)&flag*8)+1;
bit iap_ok_flag    @ ((unsigned)&flag*8)+2;
bit uart_rxnef      @ ((unsigned)&flag*8)+3;
unsigned char  count @0x21;  
unsigned char  iap_recdata @0x22;
unsigned int    CRC_16@0x23;
unsigned char    CRC_L@0x23;
unsigned char    CRC_H@0x24;

void user_isr();//用户中断程序，不可删除
//===========================================================

//===========================================================
//Funtion name：interrupt ISR
//parameters：无
//returned value：无
//===========================================================
void interrupt ISR(void)
{
#asm;//系统设置不可以删除和修改
	NOP;//系统设置不可以删除和修改
	NOP;//系统设置不可以删除和修改
	NOP;//系统设置不可以删除和修改
	NOP;//系统设置不可以删除和修改
	NOP;//系统设置不可以删除和修改
	NOP;//系统设置不可以删除和修改
	NOP;//系统设置不可以删除和修改
	NOP;//系统设置不可以删除和修改
	NOP;//系统设置不可以删除和修改
	NOP;//系统设置不可以删除和修改
	NOP;//系统设置不可以删除和修改
	NOP;//系统设置不可以删除和修改
	NOP;//系统设置不可以删除和修改
	NOP;//系统设置不可以删除和修改
	NOP;//系统设置不可以删除和修改
	NOP;//系统设置不可以删除和修改
	NOP;//系统设置不可以删除和修改
	NOP;//系统设置不可以删除和修改
	NOP;//系统设置不可以删除和修改
	NOP;//系统设置不可以删除和修改
	NOP;//系统设置不可以删除和修改
#endasm;//系统设置不可以删除和修改
	user_isr(); //调用用户中断函数
}
void user_isr() //调用用户中断函数
{
	unsigned char temp;  
    if(uart_rxnef==1)
    {
       uart_rxnef = 0;  
       temp=iap_recdata;    //iap_recdata 就是串口接收的数据
        
	}   
}
/*-------------------------------------------------
 *  函数名：POWER_INITIAL
 *	功能：  上电系统初始化
 *  输入：  无
 *  输出：  无
 --------------------------------------------------*/	
void POWER_INITIAL(void)
{
	 OSCCON = 0B01110001;	//16MHZ 1:1
	//BIT7~BIT4:主时钟（系统时钟）分频比选择。0111(1:1),0110(1:2),0101(1:4),0100(1:8),0011(1:16),0010,(1:32),0001(1:64),1xxx(1:128),0000(32kHz LIRC)
	//BIT3:振荡器起振超时状态位。1：器件运行在FOSC<2:0>指定的外部时钟之下；0：器件运行在内部振荡器之下
	//BIT2:高速内部时钟状态。 1：HIRC is ready；0：HIRC is not ready
	//Bit1：低速内部时钟状态。1：LIRC is ready；0：LIRC is not ready
	//Bit0:系统时钟选择位。1：系统时钟选择为内部振荡器；0：时钟源由FOSC<2:0>决定
    
//    INTCON = 0;
    
    PORTA = 0B11111111;		
	TRISA = 0B00000100;		//PA输入输出 0-输出 1-输入
	PORTB = 0B10111111;		
	TRISB = 0B00000000;		//PB输入输出 0-输出 1-输入							
	PORTC = 0B11111111; 	
	TRISC = 0B00000000;		//PC输入输出 0-输出 1-输入  	

    
    WPUA = 0B00000000;     	//PA端口上拉控制 1-开上拉 0-关上拉
	WPUB = 0B00000000;     	//PB端口上拉控制 1-开上拉 0-关上拉
	WPUC = 0B00000000;     	//PC端口上拉控制 1-开上拉 0-关上拉

    
    WPDA = 0B00000000;     	//PA端口上拉控制 1-开下拉 0-关下拉
	WPDB = 0B00000000;     	//PB端口上拉控制 1-开下拉 0-关下拉
	WPDC = 0B00000000;     	//PC端口上拉控制 1-开下拉 0-关下拉

    
    PSRC0  = 0B11111111;  	//PORTA,PORTB源电流设置最大   
    PSRC1  = 0B11111111;    //PORTC,PORTD源电流设置最大    

    
    PSINK0 = 0B11111111;  	//PORTA灌电流设置最大 0:最小，1:最大
    PSINK1 = 0B11111111; 	//PORTB灌电流设置最大 0:最小，1:最大
    PSINK2 = 0B11111111;	//PORTC灌电流设置最大 0:最小，1:最大

    
    ANSELA = 0B00000000;
}





/*------------------------------------------------- 
 *	函数名称：DelayUs
 *	功能：   短延时函数 --16M-2T--大概快1%左右.
 *	输入参数：Time延时时间长度 延时时长Time Us
 *	返回参数：无 
 -------------------------------------------------*/
void DelayUs(unsigned char Time)
{
	unsigned char a;
	for(a=0;a<Time;a++)
	{
		NOP();
	}
} 
/*-------------------------------------------------
 *	函数名称：DelayMs
 *	功能：   短延时函数
 *	输入参数：Time延时时间长度 延时时长Time ms
 *	返回参数：无 
 -------------------------------------------------*/
void DelayMs(unsigned char Time)
{
	unsigned char a,b;
	for(a=0;a<Time;a++)
	{
		for(b=0;b<5;b++)
		{
		 	DelayUs(197); //快1%
		}
	}
}



     
//******************************************************************
//******************************************************************
//******************************************************************

void main(void)
{
     
	POWER_INITIAL();  

	DelayMs(5);
	 
  
     while(1)
    {
		RC3=0;   
		DelayMs(200);	
        DelayMs(200);	
        DelayMs(200);	
        DelayMs(200);	
		RC3=1;       
		DelayMs(200);
        
		RC4=0;   
		DelayMs(200);	
        DelayMs(200);	
        DelayMs(200);	
        DelayMs(200);	
		RC4=1;       
		DelayMs(200);
        

		RC5=0;   
		DelayMs(200);	
        DelayMs(200);	
        DelayMs(200);	
        DelayMs(200);	
		RC5=1;       
		DelayMs(200);
        

		RC6=0;   
		DelayMs(200);	
        DelayMs(200);	
        DelayMs(200);	
        DelayMs(200);	
		RC6=1;       
		DelayMs(200);

	       
		RA4=0;   
		DelayMs(200);	
        DelayMs(200);	
        DelayMs(200);	
        DelayMs(200);	
		RA4=1;       
		DelayMs(200);	
        
        
        
		RA6=0;   
		DelayMs(200);	
        DelayMs(200);	
        DelayMs(200);	
        DelayMs(200);	
		RA6=1;       
		DelayMs(200);	
        
		RA7=0;   
		DelayMs(200);	
        DelayMs(200);	
        DelayMs(200);	
        DelayMs(200);	
		RA7=1;       
		DelayMs(200);	
    }
}
//******************************************************************


