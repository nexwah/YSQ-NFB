
//continue scan

#include "common.h"
#include "syscfg.h"
#include "touch.h" 

volatile uint16_t 	readKeyNum;    	//���صļ�ֵ  bit0~bit14��Ӧkey1~key15  0û�а��£�1����
extern uint8_t      fmd_channels;

uint16_t  lastkey=0;
uint16_t   TouchTimeCount;

//----------------------------------------------------- 
void interrupt ISR(void)
{  
     if(T4UIE && T4UIF)                	
	{
		T4UIF = 1;                            
        
		TouchTimeCount++;
	} 
}
//-----------------------------------------------------
void SysInit(void)
{
	OSCCON = 0B01100001;		//WDT 32KHZ IRCF=110=8M Hz
												//Bit0=1,ϵͳʱ��Ϊ�ڲ�����
												//Bit0=0,ʱ��Դ��FOSC<2��0>����������ѡ��ʱѡ��
	INTCON = 0;  						//�ݽ�ֹ�����ж�
}
//===========================================================
//Funtion name    keydeal
//parameters��    ��
//returned value����
//===========================================================
/*-------------------------------------------------
 *	�������ƣ�Time4Initial
 *	���ܣ�  
 *	���������
 *	���ز������� 
 -------------------------------------------------*/
void Time4Initial(void)
{
	PCKEN |=0B00001000;      //TIME4ģ��ʱ��ʹ��
    //CKOCON=0B00110000;
    //TCKSRC=0B00000011;		
    
    TIM4CR1	=0B00000101;
    //BIT7: 0��TIM1_ARR�Ĵ���û�л��壬�����Ա�ֱ��д��; 1��TIM1_ARR�Ĵ�����Ԥװ�ػ��������塣
    //BIT6:����
    //BIT5~BIT4:timer4ʱ��ѡ��λ��
        		//00��ϵͳʱ��/��ʱ��
				//01���ڲ���ʱ��HIRC
				//10��LPʱ�ӣ�ֻ�е�FOSCѡ��LPģʽʱ��������
				//11��XTʱ�ӣ�ֻ�е�FOSCѡ��XTģʽʱ��������

    //BIT3:
    //			0���ڷ��������¼�ʱ����������ֹͣ��
	//			1���ڷ�����һ�θ����¼�(���CENλ)ʱ��������ֹͣ��

    //BIT2:
   	// 		0�����UDIS�������������¼�����������һ�¼�����һ�������жϣ�
				//�Ĵ���������(����������/����)
				//��������UGλ
				//ʱ��/���������������ĸ���
	//		1�����UDIS�������������¼�����ֻ�е������¼�����ʱ�Ų��������жϣ���UIF��1��
				//�Ĵ���������(����������/����)

    //BIT1:
    //		0��һ�������¼���������������(UEV)�¼���
				//���������/����
				//�������������¼�
				//ʱ��/����ģʽ������������Ӳ����λ������ļĴ�����װ�����ǵ�Ԥװ��ֵ��
	//		1�������������¼���Ӱ�ӼĴ���(ARR��PSC��CCRx)�������ǵ�ֵ�����������UGλ��ʱ��/����������������һ��Ӳ����λ�����������Ԥ��Ƶ�������³�ʼ����

    // BIT0: 0����ֹ��������1��ʹ�ܼ�������


    TIM4IER	=0B00000001;
    //BIT0:  0����ֹ�����жϣ�1�����������жϡ�

    TIM4SR	=0B00000000;
    //BIT0:�����������¼�ʱ��λ��Ӳ����1����������д1��0
			//0���޸����¼�������
			//1�������¼��ȴ���Ӧ�����Ĵ���������ʱ��λ��Ӳ����1��
			//��TIM4_CR1�Ĵ�����UDIS=0�������������������ʱ��
			//��TIM4_CR1�Ĵ�����UDIS=0��URS=0��������TIM4_EGR�Ĵ�����UGλ�����Լ�����
			//CNT���³�ʼ��ʱ��
			//��TIM4_CR1�Ĵ�����UDIS=0��URS=0����������CNT�������¼����³�ʼ��ʱ��

    TIM4EGR	=0B00000000;
    //BIT0:��λ��������1����Ӳ���Զ���0��
	//0���޶�����
	//1�����³�ʼ����������������һ�������¼���ע��Ԥ��Ƶ���ļ�����Ҳ����0(����Ԥ��Ƶϵ������)���������ĶԳ�ģʽ�»�DIR=0(���ϼ���)�����������0����DIR=1(���¼���)�������ȡTIM1_ARR��ֵ��

    TIM4CNTR=0; //TIM4 8λ������
    
    TIM4PSCR=0B00000110;
    //Ԥ��Ƶ���������CK_PSCʱ�ӽ��з�Ƶ��
	//��������ʱ��Ƶ��fCK_CNT����fCK_PSC/2(PSC[2:0])��PSC[7:3]��Ӳ����0��
	//PSCR�����˵������¼�����ʱװ�뵱ǰԤ��Ƶ���Ĵ�����ֵ(�����������TIMx_EGR�Ĵ�����UGλ�����ļ���������¼�)������ζ����Ҫ�µ�Ԥ��Ƶֵ��Ч��������������¼�����CEN=0��

    TIM4ARR	=124;
    //ARR�����˽�Ҫװ����ʵ�ʵ��Զ���װ�ؼĴ�����ֵ��
	//���Զ���װ�ص�ֵΪ��ʱ����������������

    INTCON |= 0B11000000;    //�����жϺ������ж�
  }
//===========================================================
//Funtion name��main
//parameters��    ��
//returned value����
//===========================================================
void main(void)
{
	SysInit();
    Time4Initial();  
    TouchInital();
    
	while(1)
	{ 
        if(TouchTimeCount>=(1000/SCANNINGTIME/(fmd_channels+1)))  	//����ɨ��Ƶ��
        {
            TouchTimeCount=0;
            
			readKeyNum = TouchKeyScan();  					//����ɨ�貢��ȡ����ֵ
        }
        //-----------�����û�����--------------------------
         if(readKeyNum!=0)  											//�а���
        {        
				if(lastkey !=readKeyNum)		
				{
					 if(readKeyNum&0x0001)			
					{  
                        NOP();
					}
				}
                
			   lastkey =  readKeyNum;
        }
        else
        {
             lastkey=0;
        }
	}
}