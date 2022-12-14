#ifndef	_TOUCH_
#define	_TOUCH_
#include "syscfg.h"

#define  uint8_t       unsigned char
#define  uint16_t     unsigned int
#define  uint32_t     unsigned long
#define  BOOL         bit

#define   IO_TOUCH_ATTR	                     0x00ff	     	//定义所使用的按键Bit 0~14对应key1~key15，0不使用，1使用	
#define   LONGKEYPROTECT                       0               	//(秒)，长按保护设置, 0 不使用
#define   ANTISHAKETIMES 				         1               	//防抖次数
#define   SCANNINGTIME					         30               //按键扫描频率
#define   CSTYPE							              4                //频率

#define   MAXIMUMNUMBEROFKEYS1          1                //多按键数
#define   PRIMARYKEY1				                  0               	//主按键
#define   FORBIDDENKEY1                           0x0000      //禁止按键

#define   WAKEUPFREQUENCY                     8                //唤醒频率  次/秒
#define   ANTI_WATER     							  0                //是否开防水 0 不开 1 开

#define   WHEELADDSILER							  0x09         	//0B 0000 10 01 (bit1bit0,第一组滑条滚轮选择，00不用，01滚轮，10滑条。bit3bit2,选择第二组滑条滚轮选择

const uint8_t FWHEELSILERB[4]  = {0,1,2,3};	//第一组滑条滚轮按键
const uint8_t SWHEELSILERB[4]  = {4,5,6,7};	//第二组滑条滚轮按键

//KEY ON 百分比
#define   KEY0_ON					65
#define   KEY1_ON					65
#define   KEY2_ON					65
#define   KEY3_ON					65
#define   KEY4_ON					65
#define   KEY5_ON					65
#define   KEY6_ON					65
#define   KEY7_ON					65
#define   KEY8_ON					65
#define   KEY9_ON					65
#define   KEY10_ON					65
#define   KEY11_ON					65
#define   KEY12_ON					65
#define   KEY13_ON					65
#define   KEY14_ON					65
//KEY OFF 百分比
#define   KEY0_OFF					40
#define   KEY1_OFF					40
#define   KEY2_OFF					40
#define   KEY3_OFF					40
#define   KEY4_OFF					40
#define   KEY5_OFF					40
#define   KEY6_OFF					40
#define   KEY7_OFF					40
#define   KEY8_OFF					40
#define   KEY9_OFF					40
#define   KEY10_OFF				40
#define   KEY11_OFF				40
#define   KEY12_OFF				40
#define   KEY13_OFF				40
#define   KEY14_OFF				40
//----------------------------------------------------------

//触摸阈值	1
#define  KEY0_ACTIVE_SENSOR_DELTA1		45*KEY0_ON/100
#define  KEY1_ACTIVE_SENSOR_DELTA1		63*KEY1_ON/100
#define  KEY2_ACTIVE_SENSOR_DELTA1		49*KEY2_ON/100
#define  KEY3_ACTIVE_SENSOR_DELTA1		57*KEY3_ON/100
#define  KEY4_ACTIVE_SENSOR_DELTA1		57*KEY4_ON/100
#define  KEY5_ACTIVE_SENSOR_DELTA1		52*KEY5_ON/100
#define  KEY6_ACTIVE_SENSOR_DELTA1		59*KEY6_ON/100
#define  KEY7_ACTIVE_SENSOR_DELTA1		50*KEY7_ON/100
#define  KEY8_ACTIVE_SENSOR_DELTA1		45*KEY8_ON/100
#define  KEY9_ACTIVE_SENSOR_DELTA1		45*KEY9_ON/100
#define  KEY10_ACTIVE_SENSOR_DELTA1		45*KEY10_ON/100
#define  KEY11_ACTIVE_SENSOR_DELTA1		45*KEY11_ON/100
#define  KEY12_ACTIVE_SENSOR_DELTA1		45*KEY12_ON/100
#define  KEY13_ACTIVE_SENSOR_DELTA1		45*KEY13_ON/100
#define  KEY14_ACTIVE_SENSOR_DELTA1		45*KEY14_ON/100
//触摸阈值	2
#define  KEY0_ACTIVE_SENSOR_DELTA2		46*KEY0_ON/100
#define  KEY1_ACTIVE_SENSOR_DELTA2		63*KEY1_ON/100
#define  KEY2_ACTIVE_SENSOR_DELTA2		48*KEY2_ON/100
#define  KEY3_ACTIVE_SENSOR_DELTA2		59*KEY3_ON/100
#define  KEY4_ACTIVE_SENSOR_DELTA2		58*KEY4_ON/100
#define  KEY5_ACTIVE_SENSOR_DELTA2		53*KEY5_ON/100
#define  KEY6_ACTIVE_SENSOR_DELTA2		60*KEY6_ON/100
#define  KEY7_ACTIVE_SENSOR_DELTA2		52*KEY7_ON/100
#define  KEY8_ACTIVE_SENSOR_DELTA2		60*KEY8_ON/100
#define  KEY9_ACTIVE_SENSOR_DELTA2		60*KEY9_ON/100
#define  KEY10_ACTIVE_SENSOR_DELTA2		60*KEY10_ON/100
#define  KEY11_ACTIVE_SENSOR_DELTA2		60*KEY11_ON/100
#define  KEY12_ACTIVE_SENSOR_DELTA2		60*KEY12_ON/100
#define  KEY13_ACTIVE_SENSOR_DELTA2		60*KEY13_ON/100
#define  KEY14_ACTIVE_SENSOR_DELTA2		60*KEY14_ON/100
//触摸阈值	3
#define  KEY0_ACTIVE_SENSOR_DELTA3		27*KEY0_ON/100
#define  KEY1_ACTIVE_SENSOR_DELTA3		38*KEY1_ON/100
#define  KEY2_ACTIVE_SENSOR_DELTA3		32*KEY2_ON/100
#define  KEY3_ACTIVE_SENSOR_DELTA3		35*KEY3_ON/100
#define  KEY4_ACTIVE_SENSOR_DELTA3		34*KEY4_ON/100
#define  KEY5_ACTIVE_SENSOR_DELTA3		33*KEY5_ON/100
#define  KEY6_ACTIVE_SENSOR_DELTA3		36*KEY6_ON/100
#define  KEY7_ACTIVE_SENSOR_DELTA3		33*KEY7_ON/100
#define  KEY8_ACTIVE_SENSOR_DELTA3		33*KEY8_ON/100
#define  KEY9_ACTIVE_SENSOR_DELTA3		33*KEY9_ON/100
#define  KEY10_ACTIVE_SENSOR_DELTA3		33*KEY10_ON/100
#define  KEY11_ACTIVE_SENSOR_DELTA3		33*KEY11_ON/100
#define  KEY12_ACTIVE_SENSOR_DELTA3		33*KEY12_ON/100
#define  KEY13_ACTIVE_SENSOR_DELTA3		33*KEY13_ON/100
#define  KEY14_ACTIVE_SENSOR_DELTA3		33*KEY14_ON/100
//触摸阈值	4
#define  KEY0_ACTIVE_SENSOR_DELTA4		50*KEY0_ON/100
#define  KEY1_ACTIVE_SENSOR_DELTA4		50*KEY1_ON/100
#define  KEY2_ACTIVE_SENSOR_DELTA4		50*KEY2_ON/100
#define  KEY3_ACTIVE_SENSOR_DELTA4		50*KEY3_ON/100
#define  KEY4_ACTIVE_SENSOR_DELTA4		50*KEY4_ON/100
#define  KEY5_ACTIVE_SENSOR_DELTA4		50*KEY5_ON/100
#define  KEY6_ACTIVE_SENSOR_DELTA4		50*KEY6_ON/100
#define  KEY7_ACTIVE_SENSOR_DELTA4		50*KEY7_ON/100
#define  KEY8_ACTIVE_SENSOR_DELTA4		50*KEY8_ON/100
#define  KEY9_ACTIVE_SENSOR_DELTA4		50*KEY9_ON/100
#define  KEY10_ACTIVE_SENSOR_DELTA4		50*KEY10_ON/100
#define  KEY11_ACTIVE_SENSOR_DELTA4		50*KEY11_ON/100
#define  KEY12_ACTIVE_SENSOR_DELTA4		50*KEY12_ON/100
#define  KEY13_ACTIVE_SENSOR_DELTA4		50*KEY13_ON/100
#define  KEY14_ACTIVE_SENSOR_DELTA4		50*KEY14_ON/100
//触摸阈值	5
#define  KEY0_ACTIVE_SENSOR_DELTA5		11*KEY0_ON/100
#define  KEY1_ACTIVE_SENSOR_DELTA5		12*KEY1_ON/100
#define  KEY2_ACTIVE_SENSOR_DELTA5		9*KEY2_ON/100
#define  KEY3_ACTIVE_SENSOR_DELTA5		11*KEY3_ON/100
#define  KEY4_ACTIVE_SENSOR_DELTA5		12*KEY4_ON/100
#define  KEY5_ACTIVE_SENSOR_DELTA5		10*KEY5_ON/100
#define  KEY6_ACTIVE_SENSOR_DELTA5		13*KEY6_ON/100
#define  KEY7_ACTIVE_SENSOR_DELTA5		11*KEY7_ON/100
#define  KEY8_ACTIVE_SENSOR_DELTA5		11*KEY8_ON/100
#define  KEY9_ACTIVE_SENSOR_DELTA5		11*KEY9_ON/100
#define  KEY10_ACTIVE_SENSOR_DELTA5		11*KEY10_ON/100
#define  KEY11_ACTIVE_SENSOR_DELTA5		11*KEY11_ON/100
#define  KEY12_ACTIVE_SENSOR_DELTA5		11*KEY12_ON/100
#define  KEY13_ACTIVE_SENSOR_DELTA5		11*KEY13_ON/100
#define  KEY14_ACTIVE_SENSOR_DELTA5		11*KEY14_ON/100
//触摸阈值	6
#define  KEY0_ACTIVE_SENSOR_DELTA6		0*KEY0_ON/100
#define  KEY1_ACTIVE_SENSOR_DELTA6		0*KEY1_ON/100
#define  KEY2_ACTIVE_SENSOR_DELTA6		0*KEY2_ON/100
#define  KEY3_ACTIVE_SENSOR_DELTA6		0*KEY3_ON/100
#define  KEY4_ACTIVE_SENSOR_DELTA6		0*KEY4_ON/100
#define  KEY5_ACTIVE_SENSOR_DELTA6		0*KEY5_ON/100
#define  KEY6_ACTIVE_SENSOR_DELTA6		0*KEY6_ON/100
#define  KEY7_ACTIVE_SENSOR_DELTA6		0*KEY7_ON/100
#define  KEY8_ACTIVE_SENSOR_DELTA6		0
#define  KEY9_ACTIVE_SENSOR_DELTA6		0
#define  KEY10_ACTIVE_SENSOR_DELTA6		0
#define  KEY11_ACTIVE_SENSOR_DELTA6		0
#define  KEY12_ACTIVE_SENSOR_DELTA6		0
#define  KEY13_ACTIVE_SENSOR_DELTA6		0
#define  KEY14_ACTIVE_SENSOR_DELTA6		0
//----------------------------------------------------------

//非触摸阈值	1
#define  KEY0_INACTIVE_SENSOR_DELTA1		45*KEY0_OFF/100
#define  KEY1_INACTIVE_SENSOR_DELTA1		63*KEY1_OFF/100
#define  KEY2_INACTIVE_SENSOR_DELTA1		49*KEY2_OFF/100
#define  KEY3_INACTIVE_SENSOR_DELTA1		57*KEY3_OFF/100
#define  KEY4_INACTIVE_SENSOR_DELTA1		57*KEY4_OFF/100
#define  KEY5_INACTIVE_SENSOR_DELTA1		52*KEY5_OFF/100
#define  KEY6_INACTIVE_SENSOR_DELTA1		59*KEY6_OFF/100
#define  KEY7_INACTIVE_SENSOR_DELTA1		50*KEY7_OFF/100
#define  KEY8_INACTIVE_SENSOR_DELTA1		50*KEY8_OFF/100
#define  KEY9_INACTIVE_SENSOR_DELTA1		50*KEY9_OFF/100
#define  KEY10_INACTIVE_SENSOR_DELTA1		50*KEY10_OFF/100
#define  KEY11_INACTIVE_SENSOR_DELTA1		50*KEY11_OFF/100
#define  KEY12_INACTIVE_SENSOR_DELTA1		50*KEY12_OFF/100
#define  KEY13_INACTIVE_SENSOR_DELTA1		50*KEY13_OFF/100
#define  KEY14_INACTIVE_SENSOR_DELTA1		50*KEY14_OFF/100
//非触摸阈值	2
#define  KEY0_INACTIVE_SENSOR_DELTA2		46*KEY0_OFF/100
#define  KEY1_INACTIVE_SENSOR_DELTA2		63*KEY1_OFF/100
#define  KEY2_INACTIVE_SENSOR_DELTA2		48*KEY2_OFF/100
#define  KEY3_INACTIVE_SENSOR_DELTA2		59*KEY3_OFF/100
#define  KEY4_INACTIVE_SENSOR_DELTA2		58*KEY4_OFF/100
#define  KEY5_INACTIVE_SENSOR_DELTA2		53*KEY5_OFF/100
#define  KEY6_INACTIVE_SENSOR_DELTA2		60*KEY6_OFF/100
#define  KEY7_INACTIVE_SENSOR_DELTA2		52*KEY7_OFF/100
#define  KEY8_INACTIVE_SENSOR_DELTA2		52*KEY8_OFF/100
#define  KEY9_INACTIVE_SENSOR_DELTA2		52*KEY9_OFF/100
#define  KEY10_INACTIVE_SENSOR_DELTA2		52*KEY10_OFF/100
#define  KEY11_INACTIVE_SENSOR_DELTA2		52*KEY11_OFF/100
#define  KEY12_INACTIVE_SENSOR_DELTA2		52*KEY12_OFF/100
#define  KEY13_INACTIVE_SENSOR_DELTA2		52*KEY13_OFF/100
#define  KEY14_INACTIVE_SENSOR_DELTA2		52*KEY14_OFF/100
//非触摸阈值	3
#define  KEY0_INACTIVE_SENSOR_DELTA3		27*KEY0_OFF/100
#define  KEY1_INACTIVE_SENSOR_DELTA3		38*KEY1_OFF/100
#define  KEY2_INACTIVE_SENSOR_DELTA3		32*KEY2_OFF/100
#define  KEY3_INACTIVE_SENSOR_DELTA3		35*KEY3_OFF/100
#define  KEY4_INACTIVE_SENSOR_DELTA3		34*KEY4_OFF/100
#define  KEY5_INACTIVE_SENSOR_DELTA3		33*KEY5_OFF/100
#define  KEY6_INACTIVE_SENSOR_DELTA3		36*KEY6_OFF/100
#define  KEY7_INACTIVE_SENSOR_DELTA3		33*KEY7_OFF/100
#define  KEY8_INACTIVE_SENSOR_DELTA3		33*KEY8_OFF/100
#define  KEY9_INACTIVE_SENSOR_DELTA3		33*KEY9_OFF/100
#define  KEY10_INACTIVE_SENSOR_DELTA3		33*KEY10_OFF/100
#define  KEY11_INACTIVE_SENSOR_DELTA3		33*KEY11_OFF/100
#define  KEY12_INACTIVE_SENSOR_DELTA3		33*KEY12_OFF/100
#define  KEY13_INACTIVE_SENSOR_DELTA3		33*KEY13_OFF/100
#define  KEY14_INACTIVE_SENSOR_DELTA3		33*KEY14_OFF/100
//非触摸阈值	4
#define  KEY0_INACTIVE_SENSOR_DELTA4		26*KEY0_OFF/100
#define  KEY1_INACTIVE_SENSOR_DELTA4		33*KEY1_OFF/100
#define  KEY2_INACTIVE_SENSOR_DELTA4		25*KEY2_OFF/100
#define  KEY3_INACTIVE_SENSOR_DELTA4		27*KEY3_OFF/100
#define  KEY4_INACTIVE_SENSOR_DELTA4		29*KEY4_OFF/100
#define  KEY5_INACTIVE_SENSOR_DELTA4		24*KEY5_OFF/100
#define  KEY6_INACTIVE_SENSOR_DELTA4		32*KEY6_OFF/100
#define  KEY7_INACTIVE_SENSOR_DELTA4		28*KEY7_OFF/100
#define  KEY8_INACTIVE_SENSOR_DELTA4		28*KEY8_OFF/100
#define  KEY9_INACTIVE_SENSOR_DELTA4		28*KEY9_OFF/100
#define  KEY10_INACTIVE_SENSOR_DELTA4		28*KEY10_OFF/100
#define  KEY11_INACTIVE_SENSOR_DELTA4		28*KEY11_OFF/100
#define  KEY12_INACTIVE_SENSOR_DELTA4		28*KEY12_OFF/100
#define  KEY13_INACTIVE_SENSOR_DELTA4		28*KEY13_OFF/100
#define  KEY14_INACTIVE_SENSOR_DELTA4		28*KEY14_OFF/100
//非触摸阈值	5
#define  KEY0_INACTIVE_SENSOR_DELTA5		11*KEY0_OFF/100
#define  KEY1_INACTIVE_SENSOR_DELTA5		12*KEY1_OFF/100
#define  KEY2_INACTIVE_SENSOR_DELTA5		9*KEY2_OFF/100
#define  KEY3_INACTIVE_SENSOR_DELTA5		11*KEY3_OFF/100
#define  KEY4_INACTIVE_SENSOR_DELTA5		12*KEY4_OFF/100
#define  KEY5_INACTIVE_SENSOR_DELTA5		10*KEY5_OFF/100
#define  KEY6_INACTIVE_SENSOR_DELTA5		13*KEY6_OFF/100
#define  KEY7_INACTIVE_SENSOR_DELTA5		11*KEY7_OFF/100
#define  KEY8_INACTIVE_SENSOR_DELTA5		11*KEY8_OFF/100
#define  KEY9_INACTIVE_SENSOR_DELTA5		11*KEY9_OFF/100
#define  KEY10_INACTIVE_SENSOR_DELTA5		11*KEY10_OFF/100
#define  KEY11_INACTIVE_SENSOR_DELTA5		11*KEY11_OFF/100
#define  KEY12_INACTIVE_SENSOR_DELTA5		11*KEY12_OFF/100
#define  KEY13_INACTIVE_SENSOR_DELTA5		11*KEY13_OFF/100
#define  KEY14_INACTIVE_SENSOR_DELTA5		11*KEY14_OFF/100
//非触摸阈值	6
#define  KEY0_INACTIVE_SENSOR_DELTA6		0*KEY0_OFF/100
#define  KEY1_INACTIVE_SENSOR_DELTA6		0*KEY1_OFF/100
#define  KEY2_INACTIVE_SENSOR_DELTA6		0*KEY2_OFF/100
#define  KEY3_INACTIVE_SENSOR_DELTA6		0*KEY3_OFF/100
#define  KEY4_INACTIVE_SENSOR_DELTA6		0*KEY4_OFF/100
#define  KEY5_INACTIVE_SENSOR_DELTA6		0*KEY5_OFF/100
#define  KEY6_INACTIVE_SENSOR_DELTA6		0*KEY6_OFF/100
#define  KEY7_INACTIVE_SENSOR_DELTA6		0*KEY7_OFF/100
#define  KEY8_INACTIVE_SENSOR_DELTA6		0
#define  KEY9_INACTIVE_SENSOR_DELTA6		0
#define  KEY10_INACTIVE_SENSOR_DELTA6		0
#define  KEY11_INACTIVE_SENSOR_DELTA6		0
#define  KEY12_INACTIVE_SENSOR_DELTA6		0
#define  KEY13_INACTIVE_SENSOR_DELTA6		0
#define  KEY14_INACTIVE_SENSOR_DELTA6		0
//----------------------------------------------------------
const uint8_t ACTIVE_SENSOR_DELTA[15][6]   = 
{
KEY0_ACTIVE_SENSOR_DELTA1,	KEY0_ACTIVE_SENSOR_DELTA2,	KEY0_ACTIVE_SENSOR_DELTA3,	KEY0_ACTIVE_SENSOR_DELTA4,	KEY0_ACTIVE_SENSOR_DELTA5,	KEY0_ACTIVE_SENSOR_DELTA6,	
KEY1_ACTIVE_SENSOR_DELTA1,	KEY1_ACTIVE_SENSOR_DELTA2,	KEY1_ACTIVE_SENSOR_DELTA3,	KEY1_ACTIVE_SENSOR_DELTA4,	KEY1_ACTIVE_SENSOR_DELTA5,	KEY1_ACTIVE_SENSOR_DELTA6,	
KEY2_ACTIVE_SENSOR_DELTA1,	KEY2_ACTIVE_SENSOR_DELTA2,	KEY2_ACTIVE_SENSOR_DELTA3,	KEY2_ACTIVE_SENSOR_DELTA4,	KEY2_ACTIVE_SENSOR_DELTA5,	KEY2_ACTIVE_SENSOR_DELTA6,	
KEY3_ACTIVE_SENSOR_DELTA1,	KEY3_ACTIVE_SENSOR_DELTA2,	KEY3_ACTIVE_SENSOR_DELTA3,	KEY3_ACTIVE_SENSOR_DELTA4,	KEY3_ACTIVE_SENSOR_DELTA5,	KEY3_ACTIVE_SENSOR_DELTA6,	
KEY4_ACTIVE_SENSOR_DELTA1,	KEY4_ACTIVE_SENSOR_DELTA2,	KEY4_ACTIVE_SENSOR_DELTA3,	KEY4_ACTIVE_SENSOR_DELTA4,	KEY4_ACTIVE_SENSOR_DELTA5,	KEY4_ACTIVE_SENSOR_DELTA6,	
KEY5_ACTIVE_SENSOR_DELTA1,	KEY5_ACTIVE_SENSOR_DELTA2,	KEY5_ACTIVE_SENSOR_DELTA3,	KEY5_ACTIVE_SENSOR_DELTA4,	KEY5_ACTIVE_SENSOR_DELTA5,	KEY5_ACTIVE_SENSOR_DELTA6,	
KEY6_ACTIVE_SENSOR_DELTA1,	KEY6_ACTIVE_SENSOR_DELTA2,	KEY6_ACTIVE_SENSOR_DELTA3,	KEY6_ACTIVE_SENSOR_DELTA4,	KEY6_ACTIVE_SENSOR_DELTA5,	KEY6_ACTIVE_SENSOR_DELTA6,	
KEY7_ACTIVE_SENSOR_DELTA1,	KEY7_ACTIVE_SENSOR_DELTA2,	KEY7_ACTIVE_SENSOR_DELTA3,	KEY7_ACTIVE_SENSOR_DELTA4,	KEY7_ACTIVE_SENSOR_DELTA5,	KEY7_ACTIVE_SENSOR_DELTA6,	
KEY8_ACTIVE_SENSOR_DELTA1,	KEY8_ACTIVE_SENSOR_DELTA2,	KEY8_ACTIVE_SENSOR_DELTA3,	KEY8_ACTIVE_SENSOR_DELTA4,	KEY8_ACTIVE_SENSOR_DELTA5,	KEY8_ACTIVE_SENSOR_DELTA6,	
KEY9_ACTIVE_SENSOR_DELTA1,	KEY9_ACTIVE_SENSOR_DELTA2,	KEY9_ACTIVE_SENSOR_DELTA3,	KEY9_ACTIVE_SENSOR_DELTA4,	KEY9_ACTIVE_SENSOR_DELTA5,	KEY9_ACTIVE_SENSOR_DELTA6,	
KEY10_ACTIVE_SENSOR_DELTA1,	KEY10_ACTIVE_SENSOR_DELTA2,	KEY10_ACTIVE_SENSOR_DELTA3,	KEY10_ACTIVE_SENSOR_DELTA4,	KEY10_ACTIVE_SENSOR_DELTA5,	KEY10_ACTIVE_SENSOR_DELTA6,	
KEY11_ACTIVE_SENSOR_DELTA1,	KEY11_ACTIVE_SENSOR_DELTA2,	KEY11_ACTIVE_SENSOR_DELTA3,	KEY11_ACTIVE_SENSOR_DELTA4,	KEY11_ACTIVE_SENSOR_DELTA5,	KEY11_ACTIVE_SENSOR_DELTA6,	
KEY12_ACTIVE_SENSOR_DELTA1,	KEY12_ACTIVE_SENSOR_DELTA2,	KEY12_ACTIVE_SENSOR_DELTA3,	KEY12_ACTIVE_SENSOR_DELTA4,	KEY12_ACTIVE_SENSOR_DELTA5,	KEY12_ACTIVE_SENSOR_DELTA6,	
KEY13_ACTIVE_SENSOR_DELTA1,	KEY13_ACTIVE_SENSOR_DELTA2,	KEY13_ACTIVE_SENSOR_DELTA3,	KEY13_ACTIVE_SENSOR_DELTA4,	KEY13_ACTIVE_SENSOR_DELTA5,	KEY13_ACTIVE_SENSOR_DELTA6,	
KEY14_ACTIVE_SENSOR_DELTA1,	KEY14_ACTIVE_SENSOR_DELTA2,	KEY14_ACTIVE_SENSOR_DELTA3,	KEY14_ACTIVE_SENSOR_DELTA4,	KEY14_ACTIVE_SENSOR_DELTA5,	KEY14_ACTIVE_SENSOR_DELTA6	
};
//----------------------------------------------------------

const uint8_t INACTIVE_SENSOR_DELTA[15][6]   =
{
KEY0_INACTIVE_SENSOR_DELTA1,	KEY0_INACTIVE_SENSOR_DELTA2,	KEY0_INACTIVE_SENSOR_DELTA3,	KEY0_INACTIVE_SENSOR_DELTA4,	KEY0_INACTIVE_SENSOR_DELTA5,	KEY0_INACTIVE_SENSOR_DELTA6,	
KEY1_INACTIVE_SENSOR_DELTA1,	KEY1_INACTIVE_SENSOR_DELTA2,	KEY1_INACTIVE_SENSOR_DELTA3,	KEY1_INACTIVE_SENSOR_DELTA4,	KEY1_INACTIVE_SENSOR_DELTA5,	KEY1_INACTIVE_SENSOR_DELTA6,	
KEY2_INACTIVE_SENSOR_DELTA1,	KEY2_INACTIVE_SENSOR_DELTA2,	KEY2_INACTIVE_SENSOR_DELTA3,	KEY2_INACTIVE_SENSOR_DELTA4,	KEY2_INACTIVE_SENSOR_DELTA5,	KEY2_INACTIVE_SENSOR_DELTA6,	
KEY3_INACTIVE_SENSOR_DELTA1,	KEY3_INACTIVE_SENSOR_DELTA2,	KEY3_INACTIVE_SENSOR_DELTA3,	KEY3_INACTIVE_SENSOR_DELTA4,	KEY3_INACTIVE_SENSOR_DELTA5,	KEY3_INACTIVE_SENSOR_DELTA6,	
KEY4_INACTIVE_SENSOR_DELTA1,	KEY4_INACTIVE_SENSOR_DELTA2,	KEY4_INACTIVE_SENSOR_DELTA3,	KEY4_INACTIVE_SENSOR_DELTA4,	KEY4_INACTIVE_SENSOR_DELTA5,	KEY4_INACTIVE_SENSOR_DELTA6,	
KEY5_INACTIVE_SENSOR_DELTA1,	KEY5_INACTIVE_SENSOR_DELTA2,	KEY5_INACTIVE_SENSOR_DELTA3,	KEY5_INACTIVE_SENSOR_DELTA4,	KEY5_INACTIVE_SENSOR_DELTA5,	KEY5_INACTIVE_SENSOR_DELTA6,	
KEY6_INACTIVE_SENSOR_DELTA1,	KEY6_INACTIVE_SENSOR_DELTA2,	KEY6_INACTIVE_SENSOR_DELTA3,	KEY6_INACTIVE_SENSOR_DELTA4,	KEY6_INACTIVE_SENSOR_DELTA5,	KEY6_INACTIVE_SENSOR_DELTA6,	
KEY7_INACTIVE_SENSOR_DELTA1,	KEY7_INACTIVE_SENSOR_DELTA2,	KEY7_INACTIVE_SENSOR_DELTA3,	KEY7_INACTIVE_SENSOR_DELTA4,	KEY7_INACTIVE_SENSOR_DELTA5,	KEY7_INACTIVE_SENSOR_DELTA6,	
KEY8_INACTIVE_SENSOR_DELTA1,	KEY8_INACTIVE_SENSOR_DELTA2,	KEY8_INACTIVE_SENSOR_DELTA3,	KEY8_INACTIVE_SENSOR_DELTA4,	KEY8_INACTIVE_SENSOR_DELTA5,	KEY8_INACTIVE_SENSOR_DELTA6,	
KEY9_INACTIVE_SENSOR_DELTA1,	KEY9_INACTIVE_SENSOR_DELTA2,	KEY9_INACTIVE_SENSOR_DELTA3,	KEY9_INACTIVE_SENSOR_DELTA4,	KEY9_INACTIVE_SENSOR_DELTA5,	KEY9_INACTIVE_SENSOR_DELTA6,	
KEY10_INACTIVE_SENSOR_DELTA1,	KEY10_INACTIVE_SENSOR_DELTA2,	KEY10_INACTIVE_SENSOR_DELTA3,	KEY10_INACTIVE_SENSOR_DELTA4,	KEY10_INACTIVE_SENSOR_DELTA5,	KEY10_INACTIVE_SENSOR_DELTA6,	
KEY11_INACTIVE_SENSOR_DELTA1,	KEY11_INACTIVE_SENSOR_DELTA2,	KEY11_INACTIVE_SENSOR_DELTA3,	KEY11_INACTIVE_SENSOR_DELTA4,	KEY11_INACTIVE_SENSOR_DELTA5,	KEY11_INACTIVE_SENSOR_DELTA6,	
KEY12_INACTIVE_SENSOR_DELTA1,	KEY12_INACTIVE_SENSOR_DELTA2,	KEY12_INACTIVE_SENSOR_DELTA3,	KEY12_INACTIVE_SENSOR_DELTA4,	KEY12_INACTIVE_SENSOR_DELTA5,	KEY12_INACTIVE_SENSOR_DELTA6,	
KEY13_INACTIVE_SENSOR_DELTA1,	KEY13_INACTIVE_SENSOR_DELTA2,	KEY13_INACTIVE_SENSOR_DELTA3,	KEY13_INACTIVE_SENSOR_DELTA4,	KEY13_INACTIVE_SENSOR_DELTA5,	KEY13_INACTIVE_SENSOR_DELTA6,	
KEY14_INACTIVE_SENSOR_DELTA1,	KEY14_INACTIVE_SENSOR_DELTA2,	KEY14_INACTIVE_SENSOR_DELTA3,	KEY14_INACTIVE_SENSOR_DELTA4,	KEY14_INACTIVE_SENSOR_DELTA5,	KEY14_INACTIVE_SENSOR_DELTA6	
};
//----------------------------------------------------------

const uint16_t   IO_TOUCH_ATTR1   = IO_TOUCH_ATTR;
const uint8_t     LONGKEYPROTECT1 = LONGKEYPROTECT;
const uint8_t     ANTISHAKETIMES1   = ANTISHAKETIMES;
const uint8_t     CSTYPE1=CSTYPE;
const uint8_t  	 ANTI_WATER1=ANTI_WATER;
 
const uint8_t   	 WHEELADDSILER1 	=	WHEELADDSILER;		//滑轮按键选择

const uint8_t   	 MAXIMUMNUMBEROFKEYS11 	=MAXIMUMNUMBEROFKEYS1;		//最多返回按键数
const uint8_t     PRIMARYKEY11    			  		=PRIMARYKEY1;							//主键1
const uint16_t   FORBIDDENKEY11    		  		=FORBIDDENKEY1;						//禁止按键1
const uint8_t     SCANNINGTIME1    			  		=SCANNINGTIME;						 	//主按键

uint16_t TouchKeyScan(void);
void ReadTouchData(void);
void TouchInital(void);
extern  volatile unsigned char Position;
#endif	
