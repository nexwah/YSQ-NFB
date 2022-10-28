/**
  *********************************************************************************
  * @file    	    main.c
  * @author  	    FMD AE
  * @brief   		Device: FT62F13X
  *                 Memory: Flash 3KX14b, SRAM:256X8b EEPROM 128X8b  
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
#include	"led.h";  //demo_test

//===========================================================
//Variable definition
//===========================================================
unsigned char strongest = 0; //demo_test
unsigned char Sav_strongest = 0; //demo_test


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
	OSCCON = 0B01110000;     //WDT 32KHZ IRCF=110=16MHZ/4=4MHZ,0.25US/T
											//Bit0=1,ϵͳʱ��Ϊ�ڲ�����
											//Bit0=0,ʱ��Դ��FOSC<2��0>����������ѡ��ʱѡ��
	OPTION = 0B00001000;	 //Bit3 PSA   Ԥ��Ƶ������λ 0= Ԥ��Ƶ�������Timer0ģ�� 1�������WDT 
											//Bit2��0��Ԥ��Ƶ��ѡ��λ 000: 1:2 
		                           
	INTCON = 0;  			//�ݽ�ֹ�����ж�
    
	PORTA = 0B00000000;
    PORTC = 0B00000000;
    PORTB = 0B00000000;
    
	TRISA = 0B00000100;		// 0-��� 1-����   PA2(TKCAP) set input
    TRISB = 0B00000000;		// B2-B7  TK7-TK2
    TRISC = 0B00000000;     // C0-C1  TK1-TK0
    
	WPUA = 0B00000000;     	//PA�˿��������� 1-������ 0-������
    WPUB = 0B00000000;
    
    ANSEL0 = 0B00000100;      // TKCAP ��A2����Ϊģ�������			  
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
	CLRWDT();              //�忴�Ź�
	WDTCON = 0B00001111;   //bit[6:5]WCKSRC=00=LIRC(32K) 
	                       //bit[4:1]WDTPS=0111=1:4096,Ԥ��Ƶ1:1 ��ʱʱ��=(4096*1)/32000=128ms  
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

void main(void)
{ 
    SYS_INITIAL(); //ϵͳʱ�ӡ�IO��ʼ��
    TOUCH_INITIAL();//����������ʼ��
	WDT_INITIAL(); //���Ź���ʼ��
    
    PEIE = 1;  //ʹ�������ж�
	GIE = 1; //ʹ��ȫ���ж�
    
    LED(); //led.c demo_test 
     
    while (1)
    {
		//�忴�Ź�   
	    CLRWDT();   
        
        //����ɨ��  
        TSC_Start(); 
        
		//��������
		if(TSC_DataProcessing()==1)
        {			                         
	        //////demo_test/////////////////////
			strongest = TSC_GetStrongest(); 
			if(Sav_strongest != strongest)
			{
				LED_Scan();  //led.c  �������µ�����Ӧ��led
			}
			Sav_strongest = strongest;         
			//////demo_test/////////////////////
        }              
    }     
    
}

//===========================================================