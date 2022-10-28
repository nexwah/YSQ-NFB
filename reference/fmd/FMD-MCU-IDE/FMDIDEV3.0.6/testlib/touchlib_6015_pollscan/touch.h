/**
  *********************************************************************************
  * @file    	    touch.h
  * @author  	    FMD AE
  * @brief   	    ��ͷ�ļ�
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
  * @оƬ��Դ
  * 1.Device: FT62F28X
  * 2.Memory: Flash 8KX14b, EEPROM 128X8b, SRAM 616X8b
  * @����������ʹ����Դ˵��:
  * 1.TIMER0��TIMER1
  * 2.LVD�ж�
  * 3.ROM & SARM (key = 1,������led.c)  
  *     ������            ROM *14b       SRAM*8b
  *     touch.lpp          1623 		    63
  *     touch_cs.lpp       1627			  	63
  *     touch_csf.lpp      2006 			90
  *
  * 4.SRAMָ����ַ:
  * 	ָ����ַ �������Ӧ�ö��壺10BYTE (0x70 ~ 0x79)
  * 	ָ����չ�����ַ �������ݱ�������10BYTE/�� (0x220 ~ 0x220 + Key*10)
  **********************************************************************************
  */  
  
#ifndef _TOUCH_H
#define _TOUCH_H

///////////ͷ�ļ�/////////////////////////////////////
#include <string.h>
#include "SYSCFG.h"


/////////������ӦоƬKEYIOӳ�䶨��//////////////////////////
#define   KEY0_INDEX_MAP       	3
#define   KEY1_INDEX_MAP       	4
#define   KEY2_INDEX_MAP       	5
#define   KEY3_INDEX_MAP       	6
#define   KEY4_INDEX_MAP       	7
#define   KEY5_INDEX_MAP       	8
#define   KEY6_INDEX_MAP      	9
#define   KEY7_INDEX_MAP       	10

#define   KEY_NUMBER            8  //������
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

/////////////������Ч��ֵ////////////////////////////////////
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

///////////������Ч��ֵ//////////////////////////////////////
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

////////����ɨ��///////////////////////////////////////////
#define SCAN_EFF_KEY_NUM           4
const unsigned char ucKeyScanEffNumber = SCAN_EFF_KEY_NUM;
unsigned char ucKeyScanBuffer[SCAN_EFF_KEY_NUM];  
unsigned char ucKeyScanIndexBuffer[SCAN_EFF_KEY_NUM];

////////�ɼ����ݴ�����ض���///////////////////////////////////////////
#define MULTIPLE_1   							80    	//�Ŵ���
#define STRONG_FILTER_1   						4		//�˲�����
#define SINGLE_FILTER_1  						4		//�˲�����
#define BASE_LINE_DOWN_SPEED_1   				64    	//���¸����ٶ�
#define BASE_LINE_UP_SPEED_1  					64	    //���¸����ٶ�
#define BASE_LINE_EQUAL_UP_SPEED_1   			50		//���Ͽ��ٸ���
#define BASE_LINE_EQUAL_DOWN_SPEED_1   			50		//���¿��ٸ���
#define SIGNAL_NOISE_RATIO_1  					30  	//���������
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


////////Ƶ��΢������///////////////////////////////////////////////////
#define FREQ_CHANGER_1_L 						0X00		//ɨ��Ƶ��
#define FREQ_CHANGER_2_L 						0X80		//ɨ��Ƶ��
#define FREQ_CHANGER_3_L 						0X00	    //ɨ��Ƶ��
#define FREQ_CHANGER_1_H 						0X00		//ɨ��Ƶ��
#define FREQ_CHANGER_2_H						0X02		//ɨ��Ƶ��
#define FREQ_CHANGER_3_H						0X05		//ɨ��Ƶ��

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


/////////BANK �л�����////////////////////////////////////////

#define 	BANKSEL4_7		MSCON1 |= 0X02;   //��ӵ�ַΪ 0x200~0x3FF
#define 	BANKSEL0_3		MSCON1 &= ~0X02; //��ӵ�ַΪ 0x000~0x1FF

///////////���ܺ�������/////////////////////////////////////
void TOUCH_INITIAL(void);  //�����������ó�ʼ��          
void TSC_Start(void); //����ɨ��������ÿ��ֻ��һ��������һ��ɨ�账��
void TSC_Reset(void); //��λ����. ����������ʹ��
unsigned char TSC_DataProcessing(void);//���а������ݴ���״̬: 1��ʾ���а������ݴ������ 0��ʾδ����������
unsigned char TSC_GetStrongest(void);  //��ȡ��ǿ����ֵ
unsigned long TSC_GetSingle(void); //��ȡ������Ч��־��ÿbit��ʾһ������1Ϊ�а������£�0Ϊ�ް�������
unsigned char TSC_GetDelta(unsigned char KeyNum); //��ȡ�仯��, >��󰴼���KEY_NUMBER���ȡ���ֵ 
unsigned int TSC_GetPrevData(unsigned char KeyNum); //��ǰ�����ɼ�����ֵ

#endif
