
#ifndef	_TOUCH_
#define	_TOUCH_

 //���ͨѶҪ��������IO���޸Ĵ˴��� ע��6006Test�ļ���SysInit�������Ӧ��ͨѶIO��Ҫ������
#define  TX	RB6     
#define  TX_IO    0x40
#define  TX_IO_ADDR  TRISB   

#define  IO_TOUCH_ATTR	   0x7000		//������ʹ�õİ����BBit 0~14��Ӧkey1~key15��0��ʹ�ã�1ʹ��	                   								

#define  ANTI_WATER     	0  	//1,��ˮ,0,����ˮ
#define  LOW_POWER    	1  	//1,���͹���,0�������͹���
#define  CSTYPE				0  	//0,ѡƵ��ʹ��,��Ϊ0,ѡƵʹ��

const unsigned char  	ANTI_WATER1=ANTI_WATER;
const unsigned char  	LOW_POWER1=LOW_POWER;
const unsigned char  	CSTYPE1=CSTYPE;

const  unsigned int    IO_TOUCH_ATTR1 = IO_TOUCH_ATTR;
void SendDataToPC();

#endif	
