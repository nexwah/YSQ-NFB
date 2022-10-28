
//Test All version
//2020.03.25

#include "syscfg.h"
#include "touch.h"
#include "Delay.h" 

volatile unsigned int 	readKeyNum;     							//���صļ�ֵ  bit0~bit14��Ӧkey1~key15  0û�а��£�1����
volatile unsigned char  fmd_a,fmd_u;

volatile unsigned delaydata[]={20,20,13,11,9,7,5,3,1,1,1,1,1,1,1,1,1};
//----------------------------------------------------- 
void interrupt ISR(void)
{
}
//-----------------------------------------------------
void SysInit(void)
{
	OSCCON = 0B01100001;		//WDT 32KHZ IRCF=110=8M Hz
												//Bit0=1,ϵͳʱ��Ϊ�ڲ�����
												//Bit0=0,ʱ��Դ��FOSC<2��0>����������ѡ��ʱѡ��
	INTCON = 0;  						//�ݽ�ֹ�����ж�
    PORTA   = 0B00000000;		
	TRISA    = 0B11110011;		//PA������� 0-��� 1-����
											 
	PORTB = 0B00000000;		
	TRISB  =  0B10111111;		//PB������� 0-��� 1-����							
	PORTC = 0B00000000; 	
	TRISC  =  0B11111111;		//PC������� 0-��� 1-����  	
    PORTD = 0B00000000;		
	TRISD  = 0B11111111;		//PD������� 0-��� 1-����
	
	WPUA = 0B00000000;     	//PA�˿��������� 1-������ 0-������
	WPUB = 0B00000000;     	//PB�˿��������� 1-������ 0-������
	WPUC = 0B00001000;     	//PC�˿��������� 1-������ 0-������
	WPUD = 0B00000000;     	//PD�˿��������� 1-������ 0-������

	TX_IO_ADDR  &= ~TX_IO;
}

//===========================================================
//Funtion name��main
//parameters��    ��
//returned value����
//===========================================================
void main(void)
{
	SysInit();
    
	fmd_a=0;                
	for(fmd_u=0;fmd_u<15;fmd_u++)
	{
		if((IO_TOUCH_ATTR >> fmd_u) & 0x01) 		
		{
			fmd_a++;
		}
	}
    
	while(1)
	{  
		SendDataToPC();        
		DelayMs(delaydata[fmd_a]);
	}
}





