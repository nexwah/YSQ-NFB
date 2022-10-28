#ifndef	_TOUCH_
#define	_TOUCH_
#include "syscfg.h"
#define  uint8_t       unsigned char
#define  uint16_t     unsigned int
#define  uint32_t     unsigned long

#define  IO_TOUCH_ATTR	   0B00000001// 	KEY 3~2~1~0        ��Ӧͨ��  1Ϊ������0Ϊ������	
#define  TouchCount           1
											
 
#define   LONGKEYPROTECT       			5              	  //(��)��������������, 0 ��ʹ��
#define   ANTISHAKETIMES         			1                    //��������  
#define   SCANNINGTIME			 			12                  //����ɨ��Ƶ�� ��/��

//�ఴ������
#define   MAXIMUMNUMBEROFKEYS1    2                    //��෵�ذ�����
#define   PRIMARYKEY1    	   	                1		 			  //����1	
#define   FORBIDDENKEY1                     0x02          //��ֹ����1        

 
    
//KEY ON �ٷֱ�
#define  KEY0_ON		65
#define  KEY1_ON		65
#define  KEY2_ON		65
#define  KEY3_ON		65

//KEY OFF �ٷֱ�
#define  KEY0_OFF	40
#define  KEY1_OFF	40
#define  KEY2_OFF	40
#define  KEY3_OFF	40
//----------------------------------------------------------
//������ֵ	1
#define  KEY0_ACTIVE_SENSOR_DELTA1		52*KEY0_ON/100
#define  KEY1_ACTIVE_SENSOR_DELTA1		52*KEY1_ON/100
#define  KEY2_ACTIVE_SENSOR_DELTA1		52*KEY2_ON/100
#define  KEY3_ACTIVE_SENSOR_DELTA1		52*KEY3_ON/100


//�Ǵ�����ֵ	1
#define  KEY0_INACTIVE_SENSOR_DELTA1		52*KEY0_OFF/100
#define  KEY1_INACTIVE_SENSOR_DELTA1		52*KEY1_OFF/100
#define  KEY2_INACTIVE_SENSOR_DELTA1		52*KEY2_OFF/100
#define  KEY3_INACTIVE_SENSOR_DELTA1		52*KEY3_OFF/100

//----------------------------------------------------------

const uint8_t ACTIVE_SENSOR_DELTA[4]   = 
{
KEY0_ACTIVE_SENSOR_DELTA1,		
KEY1_ACTIVE_SENSOR_DELTA1,	
KEY2_ACTIVE_SENSOR_DELTA1,	
KEY3_ACTIVE_SENSOR_DELTA1
};
//----------------------------------------------------------

const uint8_t INACTIVE_SENSOR_DELTA[4]   =
{
KEY0_INACTIVE_SENSOR_DELTA1,
KEY1_INACTIVE_SENSOR_DELTA1,
KEY2_INACTIVE_SENSOR_DELTA1,
KEY3_INACTIVE_SENSOR_DELTA1
};
//-------------------------------------------------
const uint8_t     IO_TOUCH_ATTR1   = IO_TOUCH_ATTR;
const uint8_t     TouchCount1           = TouchCount;
const uint8_t     LONGKEYPROTECT1 = LONGKEYPROTECT;
const uint8_t     ANTISHAKETIMES1   = ANTISHAKETIMES;
//--------------


const uint8_t   	 MAXIMUMNUMBEROFKEYS11 	=MAXIMUMNUMBEROFKEYS1;		//��෵�ذ�����
const uint8_t     PRIMARYKEY11    			  		=PRIMARYKEY1;						 //������


	//����1	
const uint8_t   FORBIDDENKEY11    		  		=FORBIDDENKEY1;						//��ֹ����1 
const uint8_t     SCANNINGTIME1    			  		=SCANNINGTIME;						 //������                                                  
 
unsigned char TouchKeyScan();

void Touch_init();


extern void DelayUs();
#endif	