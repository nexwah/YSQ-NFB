#ifndef	_TOUCH_
#define	_TOUCH_

//���ͨѶҪ��������IO�ڣ�ע��POWER_INITIAL���������Ӧ��ͨѶIOҪ������
#define  TX  RA7     
#define  TX_IO    0x80
#define  TX_IO_ADDR   TRISA   


#define  IO_TOUCH_ATTR	    0B11111111// 	KEY 1~0          ��Ӧͨ��  1Ϊ������0Ϊ������
const unsigned char     IO_TOUCH_ATTR1   = IO_TOUCH_ATTR;
#define MULTIPLE_1    80    //�Ŵ���
const unsigned char     Multiple = MULTIPLE_1;

void SendDataToPC();


#endif


