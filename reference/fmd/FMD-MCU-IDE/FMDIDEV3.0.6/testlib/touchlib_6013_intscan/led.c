/**
  *********************************************************************************
  * @file    	    led.c
  * @author  	    FMD AE
  * @brief   	    FMD Demo�� LED���밴���Ķ�Ӧ��ʾ
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

//===========================================================
//Variable definition
//===========================================================
extern unsigned char strongest;


/******************************************************************************
  * @brief  LED	program
  * @Description LED��ʼȫ��
  * @param  None
  * @note   
  * @retval  None
  *****************************************************************************
  */

void LED(void)
{
	PB1 =1;
	PB0 =1; 
    PA7 =1;
    PA6 =1;
    PA5 =1;
    PA4 =1;
    PA3 =1;
    PA1 =1;  
}

/******************************************************************************
  * @brief  LED_Scan	program
  * @Description LED����״̬ѡ�������
  * @param  None
  * @note   
  * @retval  None
  *****************************************************************************
  */

void LED_Scan(void)
{
		if(strongest == 1)
		{
		  PB1 = 0;
		}
		else
        if(strongest == 2)
		{
		  PB0 = 0;
		}
        else
		if(strongest == 3)
		{
		  PA7 = 0;
		}
		else
		if(strongest == 4)
		{
		  PA6 = 0;
		}
		else
		if(strongest == 5)
		{
		  PA5 = 0;
		}
		else
		if(strongest == 6)
		{
		  PA4 = 0;
		}
		else
		if(strongest == 7)
		{
		  PA3 = 0;
		}
		else
		if(strongest == 8)
		{
		  PA1 = 0;
		}
		else
		{
          LED();
		}
}


