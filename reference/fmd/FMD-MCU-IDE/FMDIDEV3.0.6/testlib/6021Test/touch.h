#ifndef	_TOUCH_
#define	_TOUCH_

 //���ͨѶҪ��������IO�ڣ�ע��POWER_INITIAL���������Ӧ��ͨѶIOҪ������
#define  TX   	RA4  
#define  TX_IO   	0x10
#define  TX_IO_ADDR  	TRISA


#define  IO_TOUCH_ATTR	    0x000f// 	KEY 3~2~1~0        ��Ӧͨ��  1Ϊ������0Ϊ������
const unsigned char     IO_TOUCH_ATTR1   = IO_TOUCH_ATTR;


void SendDataToPC();
#endif


