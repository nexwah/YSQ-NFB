/**
  *********************************************************************************
  * @file    	    main.c
  * @author  	    FMD AE
  * @brief   	    Device: FT62F28X
  *                 Memory: Flash 8KX14b, EEPROM 128X8b, SRAM 616X8b
  *                 ��������touch���ʹ��ʾ��	
  * @version 	    V2.0.0           
  * @data		    2021-12-29
  *********************************************************************************
  * @attention
  * COPYRIGHT (C) 2021 Fremont Micro Devices Corporation All rights reserved.
  *    This software is provided by the copyright holders and contributors,and the
  *software is believed to be accurate and reliable. However, Fremont Micro Devices
  *Corporation assumes no responsibility for the consequences of use of such
  *software or for any infringement of patents of other rights of third parties,
  *which may result from its use. No license is granted by implication or otherwise
  *under any patent rights of Fremont Micro Devices Corporation.
  **********************************************************************************
*/

//===========================================================
//include definition
//===========================================================
#include	"SYSCFG.h";
#include	"touch.h";
#include	"led.h";

//===========================================================
//Variable definition
//===========================================================
unsigned char strongest = 0; //demo_test
unsigned char Sav_strongest = 0; //demo_test

unsigned char temp = 0;
/******************************************************************************
  * @brief  DelayUs program
  * @Description  ��ʱ����
  * @param  time
  * @note   
  * @retval  None
  *****************************************************************************
*/

void DelayUs(unsigned int Time)
{    
	unsigned int a;
	for(a=0;a<Time;a++)
	{
		NOP();
	}
}

/******************************************************************************
  * @brief  interrupt ISR	program
  * @Description  �ж���ں��� 
  * @param  None
  * @note   
  * @retval  None
  *****************************************************************************
*/

void interrupt ISR(void) 
{ 
	//���ж�ʱbank����������ȥ��
	if(AUXPGE==0) //BANK0-3
	{
		temp = 0;
	}
	else
	{
		AUXPGE = 0;
		temp = 1;
	}   
    //���ж�ʱbank����������ȥ��

        



    //���ж�ʱbank�����ָ�������ȥ��
	if(AUXPGE==0)//BANK0-3
	{
		AUXPGE = temp ;
	}
	else
	{
		AUXPGE = 0;
		AUXPGE = temp ;
	}
    //���ж�ʱbank�����ָ�������ȥ��
} 

/******************************************************************************
  * @brief  SYS_INITIAL	program
  * @Description  ϵͳʱ�ӡ�IO��ʼ��
  * @param  None
  * @note   
  * @retval  None
  *****************************************************************************
*/

void SYS_INITIAL (void) 
{
	 
	OSCCON = 0B01110000;    //WDT 32KHZ IRCF=110=16MHZ/4=4MHZ,0.25US/T
							//Bit0=1,ϵͳʱ��Ϊ�ڲ�����
							//Bit0=0,ʱ��Դ��FOSC<2��0>����������ѡ��ʱѡ��
                            
	OPTION = 0B00001000;	//Bit3 PSA   Ԥ��Ƶ������λ 0= Ԥ��Ƶ�������Timer0ģ�� 1�������WDT 
							//Bit2��0��Ԥ��Ƶ��ѡ��λ 000: 1:2 
                            
    INTCON = 0;  			//�ݽ�ֹ�����ж�
    
	PORTA = 0;
	PORTB = 0;
    PORTD = 0;
    PORTC = 0;
    
	TRISA =  0B00000000;	// 0-��� 1-����        RA4 -
    TRISB =  0B00000000;	// B4-B7  TK5-TK2    PB7--touch
    TRISC =  0B00000000;
    TRISD =  0B00100000;	// TKCAP PD5
    
    ANSEL1 = 0B10000000;     // TKCAP ��D2����Ϊģ�������		
    
	BANKSEL4_7;
	WPUA =  0B00000000;     //PA�˿��������� 1-������ 0-������
    WPUB =  0B00000000;
	WPUC =  0B00000000;
	WPUD =  0B00000000;
	WPDA =  0B00000000;     //PA�˿��������� 1-������ 0-������
    WPDB =  0B00000000;
	WPDC =  0B00000000;
	WPDD =  0B00000000;   
    BANKSEL0_3;		   
}

/******************************************************************************
  * @brief  WDT_INITIAL	program
  * @Description  ��ʼ�����ÿ��Ź�Ϊ16λ������������SLEEPģʽ��128ms����
  * @param  None
  * @note   
  * @retval  None
  *****************************************************************************
*/

void WDT_INITIAL (void) 
{
	CLRWDT();     			//�忴�Ź�
	WDTCON = 0B00001111;    //bit[6:5]WCKSRC=00=LIRC(32K) 
							//bit[4:1]WDTPS=0110=1:4096,Ԥ��Ƶ1:1 ��ʱʱ��=(4096*1)/32000=128ms  
							//bit[0]SWDTEN= 1 ����                      	                  
}

/******************************************************************************
  * @brief  main	program
  * @Description ������
  * @param  None
  * @note   
  * @retval  None
  *****************************************************************************
*/

void main(void )
{
    SYS_INITIAL ();//ϵͳʱ�ӡ�IO��ʼ��   
    TOUCH_INITIAL();//����������ʼ��
	WDT_INITIAL(); //���Ź���ʼ��
    PEIE = 1;  //ʹ�������ж�
	GIE = 1;  //ʹ��ȫ���ж�
    
    LED(); //led.c  demo_test
 
    while (1)
    {
		//�忴�Ź�   
	    CLRWDT();  
        
        //����ɨ��
        TSC_Start(); 
        
        //��������
        if(TSC_DataProcessing() == 1)
        {
       		//////demo_test/////////////////////
			strongest = TSC_GetStrongest();
			if(Sav_strongest != strongest)
			{
				LED_Scan(); //led.c  �������µ�����Ӧ��led
			}
			Sav_strongest = strongest;
			////demo_test/////////////////////
        }

    }     
    
}

//===========================================================