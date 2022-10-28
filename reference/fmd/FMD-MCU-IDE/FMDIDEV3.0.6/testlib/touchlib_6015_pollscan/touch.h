/**
  *********************************************************************************
  * @file    	    touch.h
  * @author  	    FMD AE
  * @brief   	    库头文件
  * @version 	    V2.0.0           
  * @data		    2022-01-20
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
  
 /***********************************************************************************
  * @芯片资源
  * 1.Device: FT62F28X
  * 2.Memory: Flash 8KX14b, EEPROM 128X8b, SRAM 616X8b
  * @触摸按键库使用资源说明:
  * 1.TIMER0、TIMER1
  * 2.LVD中断
  * 3.ROM & SARM (key = 1,不包含led.c)  
  *     库类型            ROM *14b       SRAM*8b
  *     touch.lpp          1623 		    63
  *     touch_cs.lpp       1627			  	63
  *     touch_csf.lpp      2006 			90
  *
  * 4.SRAM指定地址:
  * 	指定地址 特殊变量应用定义：10BYTE (0x70 ~ 0x79)
  * 	指定扩展区域地址 按键数据保存区：10BYTE/键 (0x220 ~ 0x220 + Key*10)
  **********************************************************************************
  */  
  
#ifndef _TOUCH_H
#define _TOUCH_H

///////////头文件/////////////////////////////////////
#include <string.h>
#include "SYSCFG.h"


/////////按键对应芯片KEYIO映射定义//////////////////////////
#define   KEY0_INDEX_MAP       	3
#define   KEY1_INDEX_MAP       	4
#define   KEY2_INDEX_MAP       	5
#define   KEY3_INDEX_MAP       	6
#define   KEY4_INDEX_MAP       	7
#define   KEY5_INDEX_MAP       	8
#define   KEY6_INDEX_MAP      	9
#define   KEY7_INDEX_MAP       	10

#define   KEY_NUMBER            8  //按键数
const unsigned char ucKeyNumberMax = KEY_NUMBER;

const unsigned char ucKeyIndexMapArray[KEY_NUMBER]=
{
    KEY0_INDEX_MAP,
    KEY1_INDEX_MAP,
    KEY2_INDEX_MAP,
    KEY3_INDEX_MAP,
    KEY4_INDEX_MAP,
    KEY5_INDEX_MAP,
    KEY6_INDEX_MAP,
	KEY7_INDEX_MAP
};

/////////////按键有效阀值////////////////////////////////////
#define   KEY0_ON					20
#define   KEY1_ON					20
#define   KEY2_ON					20
#define   KEY3_ON					20
#define   KEY4_ON					20
#define   KEY5_ON					20
#define   KEY6_ON					20
#define   KEY7_ON					20


const unsigned char ucActiveSensorDeltaArray[KEY_NUMBER]=
{
 KEY0_ON,  KEY1_ON,  KEY2_ON,  KEY3_ON,  KEY4_ON,  KEY5_ON,  KEY6_ON,  KEY7_ON
};

///////////按键无效阀值//////////////////////////////////////
#define   KEY0_OFF					35
#define   KEY1_OFF					35
#define   KEY2_OFF					35
#define   KEY3_OFF					35
#define   KEY4_OFF					35
#define   KEY5_OFF					35
#define   KEY6_OFF					35
#define   KEY7_OFF					35


const unsigned char ucInActiveSensorDeltaArray[KEY_NUMBER]=
{
 KEY0_OFF,  KEY1_OFF,  KEY2_OFF,  KEY3_OFF,  KEY4_OFF,  KEY5_OFF,  KEY6_OFF,  KEY7_OFF
};

////////快速扫键///////////////////////////////////////////
#define SCAN_EFF_KEY_NUM           4
const unsigned char ucKeyScanEffNumber = SCAN_EFF_KEY_NUM;
unsigned char ucKeyScanBuffer[SCAN_EFF_KEY_NUM];  
unsigned char ucKeyScanIndexBuffer[SCAN_EFF_KEY_NUM];

////////采集数据处理相关定义///////////////////////////////////////////
#define MULTIPLE_1   							80    	//放大倍数
#define STRONG_FILTER_1   						4		//滤波次数
#define SINGLE_FILTER_1  						4		//滤波次数
#define BASE_LINE_DOWN_SPEED_1   				64    	//向下更新速度
#define BASE_LINE_UP_SPEED_1  					64	    //向下更新速度
#define BASE_LINE_EQUAL_UP_SPEED_1   			50		//向上快速更新
#define BASE_LINE_EQUAL_DOWN_SPEED_1   			50		//向下快速更新
#define SIGNAL_NOISE_RATIO_1  					30  	//整体信噪比
#define MEANTIME_MAX_KEY_NUM_1  		   	 	8   

const unsigned char ucMultiple = MULTIPLE_1;
const unsigned char ucStrongFilter = STRONG_FILTER_1;
const unsigned char ucSingleFilter = SINGLE_FILTER_1;
const unsigned char ucBaselineDownSpeed = 128 + BASE_LINE_DOWN_SPEED_1;
const unsigned char ucBaselineUpSpeed = 128 - BASE_LINE_UP_SPEED_1;
const unsigned char ucBaselineEqualUpSpeed = BASE_LINE_EQUAL_UP_SPEED_1;
const unsigned char ucBaselineEqualDownSpeed = BASE_LINE_EQUAL_DOWN_SPEED_1;
const unsigned char ucSignalNoiseRatio = SIGNAL_NOISE_RATIO_1;	
const unsigned char ucMeantimeMaxKeyNum = MEANTIME_MAX_KEY_NUM_1;


////////频率微调定义///////////////////////////////////////////////////
#define FREQ_CHANGER_1_L 						0X00		//扫描频率
#define FREQ_CHANGER_2_L 						0X80		//扫描频率
#define FREQ_CHANGER_3_L 						0X00	    //扫描频率
#define FREQ_CHANGER_1_H 						0X00		//扫描频率
#define FREQ_CHANGER_2_H						0X02		//扫描频率
#define FREQ_CHANGER_3_H						0X05		//扫描频率

const unsigned char ucFreqChangerBaseL = FREQ_CHANGER_2_L;
const unsigned char ucFreqChangerBaseH = FREQ_CHANGER_2_H;

const unsigned char ucFreachooseLArray[3] = {
    FREQ_CHANGER_1_L,
    FREQ_CHANGER_2_L,
    FREQ_CHANGER_3_L
 };
 
const unsigned char ucFreachooseHArray[3] = {
    FREQ_CHANGER_1_H,
    FREQ_CHANGER_2_H,
    FREQ_CHANGER_3_H
}; 


/////////BANK 切换定义////////////////////////////////////////

#define 	BANKSEL4_7		MSCON1 |= 0X02;   //间接地址为 0x200~0x3FF
#define 	BANKSEL0_3		MSCON1 &= ~0X02; //间接地址为 0x000~0x1FF

///////////功能函数定义/////////////////////////////////////
void TOUCH_INITIAL(void);  //触摸按键配置初始化          
void TSC_Start(void); //按键扫描结果处理，每次只做一个按键的一次扫描处理
void TSC_Reset(void); //复位触摸. 长按保护可使用
unsigned char TSC_DataProcessing(void);//所有按键数据处理状态: 1表示所有按键数据处理完成 0表示未处理按键数据
unsigned char TSC_GetStrongest(void);  //获取最强按键值
unsigned long TSC_GetSingle(void); //获取按键有效标志，每bit表示一个键，1为有按键按下，0为无按键按下
unsigned char TSC_GetDelta(unsigned char KeyNum); //获取变化量, >最大按键数KEY_NUMBER则获取最大值 
unsigned int TSC_GetPrevData(unsigned char KeyNum); //当前按键采集数据值

#endif
