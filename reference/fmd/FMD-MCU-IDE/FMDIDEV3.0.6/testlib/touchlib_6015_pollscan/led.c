/**
  *********************************************************************************
  * @file    	    led.c
  * @author  	    FMD AE
  * @brief   	    FMD Demo板 LED灯与按键的对应显示
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
//heard definition
//===========================================================
#include "led.h"
#include "touch.h"

//===========================================================
//Variable definition
//===========================================================
// #define _USER_28KEY  //当使用FMD的 28key Demo板时请打开

#ifdef _USER_28KEY 
volatile unsigned int  ledBuffer[2]={0,0};
#define	 SDA	PD2		
#endif

extern unsigned char strongest;
extern void DelayUs(unsigned int Time);
//===========================================================
//function definition
//===========================================================

#ifdef _USER_28KEY

/******************************************************************************
  * @brief  Send_Data	program
  * @Description 32bit 数据传输
  * @param  None
  * @note   
  * @retval  None
  *****************************************************************************
*/

void Send_Data(void)
{
	unsigned char i,j;
	unsigned int data, temp;
        
		SDA = 1;
		DelayUs(5);
		SDA = 0;
		
		for(i = 0; i < 2; i++)
		{
            data = ledBuffer[i];
            temp = 0x0001;
            
            for(j = 0; j< 16; j++)
            {
				if( data & temp )			//1   H:2.1us  L:3.7us
				{
					SDA = 1;
					NOP();						
					NOP();
					NOP();
					NOP();
					
					NOP();						
					NOP();
					NOP();
					NOP();
					
					NOP();						
					NOP();
					NOP();
					NOP();
					SDA = 0;
					 
				}
				else								//0   H:0.6us  L:3.6us
				{
					SDA = 1;
					NOP();
					NOP();
					SDA = 0;					
				}
                
				temp <<= 1;
			}
        }
		
		SDA = 0;
}

/******************************************************************************
  * @brief  LED	program
  * @Description LED初始全灭
  * @param  None
  * @note   
  * @retval  None
  *****************************************************************************
*/

void LED(void)
{
    ledBuffer[0] = 0;
	ledBuffer[1] = 0;
    Send_Data();
}

/******************************************************************************
  * @brief  LED_Scan	program
  * @Description 显示对应的灯
  * @param  None
  * @note   
  * @retval  None
  *****************************************************************************
*/

void LED_Scan(void)
{
		ledBuffer[0] = 0;
		ledBuffer[1] = 0;
    
		if( strongest > 21)
        {
            ledBuffer[0] = 0;
            ledBuffer[1] = 0x0100 << (strongest -  22);
        }
        else
        if( strongest > 14)
        {
            ledBuffer[0] = 0;
            ledBuffer[1] = 0x0001 << (strongest - 15);
        }
        else
        if( strongest > 7)
        {
            ledBuffer[0] = 0x0001 << strongest;
            ledBuffer[1] = 0;
        }
        else
        {
            ledBuffer[0] = 0x0001 << (strongest - 1);
            ledBuffer[1] = 0;
        }
              
        Send_Data();
}

#else

/******************************************************************************
  * @brief  LED	program
  * @Description LED初始全灭
  * @param  None
  * @note   
  * @retval  None
  *****************************************************************************
*/

void LED(void)
{
        PB5 =1;
		PB3 =1; 
        PB2 =1;
        PB1 =1;
        PA2 =1;
        PA1 =1;
        PA0 =1; 
        PC7 =1;
}

/******************************************************************************
  * @brief  LED_Scan	program
  * @Description 显示对应的灯
  * @param  None
  * @note   
  * @retval  None
  *****************************************************************************
*/

void LED_Scan(void)
{
		if(strongest ==2)
		{
		  PA0 =0;
		}
		else
		if(strongest ==1)
		{
		  PA1 =0;
		}
		else
		if(strongest ==4)
		{
		  PA2 =0;
		}
		else
		 if(strongest ==3)
		{
		  PC7 =0;
		}
		else
		if(strongest ==5)
		{
		  PB5 =0;
		}
		else
		if(strongest ==6)
		{
		  PB1 =0;
		}
		else
		if(strongest ==7)
		{
		  PB2=0;
		}
		else
		if(strongest ==8)
		{
		  PB3 =0;
		}
		else
		{
          PB5 =1;
		  PB3 =1; 
          PB2 =1;
          PB1 =1;
          PA2 =1;
          PA1 =1;
          PA0 =1; 
          PC7 =1;
		}
}
#endif
