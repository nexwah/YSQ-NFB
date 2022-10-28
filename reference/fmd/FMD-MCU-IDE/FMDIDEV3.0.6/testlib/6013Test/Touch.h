#ifndef	_TOUCH_
#define	_TOUCH_

//如果通讯要换成其它IO口，注意POWER_INITIAL函数里面对应的通讯IO要设成输出
#define  TX  RA7     
#define  TX_IO    0x80
#define  TX_IO_ADDR   TRISA   


#define  IO_TOUCH_ATTR	    0B11111111// 	KEY 1~0          对应通道  1为开启，0为不开启
const unsigned char     IO_TOUCH_ATTR1   = IO_TOUCH_ATTR;
#define MULTIPLE_1    80    //放大倍数
const unsigned char     Multiple = MULTIPLE_1;

void SendDataToPC();


#endif


