//Project: qaz.prj
// Device: FT62F28X
// Memory: Flash 8KX14b, EEPROM 128X8b, SRAM 616X8b
// Author: 
//Company: 
//Version:
//   Date: 
//===========================================================
//===========================================================
#include	"SYSCFG.h";
#include	"touch.h";
#include	"Dis.h";
//===========================================================
//Variable definition
//===========================================================
 

/*-------------------------------------------------
 *  ��������POWER_INITIAL
 *	���ܣ�  �ϵ�ϵͳ��ʼ��
 *  ���룺  ��
 *  �����  ��
 --------------------------------------------------*/	
void SYS_INITIAL (void) 
{
	 
	OSCCON = 0B01110000;//WDT 32KHZ IRCF=110=16MHZ/4=4MHZ,0.25US/T
											//Bit0=1,ϵͳʱ��Ϊ�ڲ�����
											//Bit0=0,ʱ��Դ��FOSC<2��0>����������ѡ��ʱѡ��
	OPTION = 0B00001000;	//Bit3 PSA   Ԥ��Ƶ������λ 0= Ԥ��Ƶ�������Timer0ģ�� 1�������WDT 
											//Bit2��0��Ԥ��Ƶ��ѡ��λ 000: 1:2 
		                           

	INTCON = 0;  					//�ݽ�ֹ�����ж�
    
	 PORTA =0;
	 PORTB = 0;
     PORTD=0;
     PORTC = 0;
    
	TRISA =  0B11111000;		// 0-��� 1-����        RA4 -
    TRISB =  0B11110001;		// B4-B7  TK5-TK2    PB7--touch
    TRISC =  0B01111111;
    TRISD =  0B11101111;	// TKCAP PD5
	 MSCON1|=0X02;
	WPUA =  0B00000000;     	//PA�˿��������� 1-������ 0-������
    WPUB =  0B00000000;
    WPUC =  0B00000000;
    WPUD =  0B00000000;
	WPDA =  0B00000000;     	//PA�˿��������� 1-������ 0-������
    WPDB =  0B00000000;
    WPDC =  0B00000000;
    WPDD =  0B00000000;   
    MSCON1&=~0X02;
    
    ANSEL1 =0B10000000;     // TKCAP ��D2����Ϊģ�������		  	
   
   TX_IO_ADDR  &= ~TX_IO;		 	   
}

//===========================================================
//Funtion name��interrupt ISR
//parameters����
//returned value����
//===========================================================
 
unsigned char temp=0;
void interrupt ISR(void)//PIC_HI-TECHʹ��
{ 
		if(AUXPGE==0) //BANK0-3
		{
			temp = 0;
		}
		else
		{
			AUXPGE = 0;
			temp = 1;
		}

    
		if(AUXPGE==0)//BANK0-3
		{
			AUXPGE = temp ;
		}
		else
		{
			AUXPGE = 0;
			AUXPGE = temp ;
		}
} 
//====================
 
//===========================================================
//Funtion name��main
//parameters����
//returned value����
//===========================================================
 
void main(void )
{
 
   unsigned long x;
    SYS_INITIAL ();
    Touch_init();

 
    while (1)
    {
	 
	 TSC_Start();
     TSC_DataProcessing();
     x++;
     if(x>1000)
     {
         x=0;
			SendDataToPC();
     }
        NOP();
        NOP();
	}  
    
}
//===========================================================