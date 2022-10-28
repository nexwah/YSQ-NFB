
#include "common.h"
#include "syscfg.h"
#include "touch.h" 

extern volatile unsigned char WSPosition1; //��һ�黬�������λ�����
extern volatile unsigned char WSPosition2; //�ڶ��黬�������λ�����

extern   uint8_t      		fmd_channels;
volatile  uint16_t 	        readKeyNum;     		//���صļ�ֵ  bit0~bit14��Ӧkey1~key15  0û�а��£�1����
uint16_t  lastkey=0;
BOOL      f_lowpower;  									//�͹��ĵ��ñ�־,����ʱ��1���� TouchKeyScan() �ɽ��͹���
BOOL      f_gotosleep;

uint16_t   TouchTimeCount;
uint16_t   TouchTimeCount1;
//----------------------------------------------------- 
void interrupt ISR(void)
{
     if(T4UIE && T4UIF)                	
	{
		T4UIF = 1;                            
        
		TouchTimeCount++;
        TouchTimeCount1++;
	} 
}
//-----------------------------------------------------
void SysInit(void)
{
	OSCCON = 0B01110001;		//WDT 32KHZ IRCF=111=16M Hz
												//Bit0=1,ϵͳʱ��Ϊ�ڲ�����
												//Bit0=0,ʱ��Դ��FOSC<2��0>����������ѡ��ʱѡ��
	INTCON = 0;  						//�ݽ�ֹ�����ж�
    
	TRISA=0x00;
	TRISB=0x00;
	TRISC=0x00;
	TRISD=0x00;
    
	PSRC0  = 0B11111111;  	 //PORTA,PORTBԴ�����������
    
    PSRC1  = 0B11111111;    //PORTC,PORTDԴ�����������
    
    PSINK0 = 0B11111111;
    PSINK1 = 0B11111111;
    PSINK2 = 0B11111111;
    PSINK3 = 0B11111111;	//PORTD������������ 0:��С��1:���
}
//***********************************************************************
//�������ƣ�WDT_INITIAL
//���ܣ�   ��ʼ�����ÿ��Ź�1Sʱ�临λ
//��ؼĴ�����
//***********************************************************************
void WDT_Initial(void) 
{
	CLRWDT();              				//�忴�Ź�
    MISC0  = 0B00000000;   	//���Ź�ʱ��32k
    
	if(WAKEUPFREQUENCY==16)
    {
        WDTCON = 0B00001100;
    }
    else if(WAKEUPFREQUENCY==8)
    {
        WDTCON = 0B00001110; 
    }
    else
    {
        WDTCON = 0B00010000;
    }  	
												//���߻���ʱ��=(4096*1)/32000=128ms    
                                                //�޸Ļ���ʱ����Ե��ڹ��ģ�����ʱ��Խ�̣�����Խ��                                    
}
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
   	// 		0�����UDIS������������¼�����������һ�¼�����һ�������жϣ�
				//�Ĵ���������(����������/����)
				//�������UGλ
				//ʱ��/���������������ĸ���
	//		1�����UDIS������������¼�����ֻ�е������¼�����ʱ�Ų��������жϣ���UIF��1��
				//�Ĵ���������(����������/����)

    //BIT1:
    //		0��һ�������¼���������������(UEV)�¼���
				//���������/����
				//������������¼�
				//ʱ��/����ģʽ������������Ӳ����λ������ļĴ�����װ�����ǵ�Ԥװ��ֵ��
	//		1�������������¼���Ӱ�ӼĴ���(ARR��PSC��CCRx)�������ǵ�ֵ�����������UGλ��ʱ��/����������������һ��Ӳ����λ�����������Ԥ��Ƶ�������³�ʼ����

    // BIT0: 0����ֹ��������1��ʹ�ܼ�������


    TIM4IER	=0B00000001;
    //BIT0:  0����ֹ�����жϣ�1����������жϡ�

    TIM4SR	=0B00000000;
    //BIT0:�����������¼�ʱ��λ��Ӳ����1���������д1��0
			//0���޸����¼�������
			//1�������¼��ȴ���Ӧ�����Ĵ���������ʱ��λ��Ӳ����1��
			//��TIM4_CR1�Ĵ�����UDIS=0�������������������ʱ��
			//��TIM4_CR1�Ĵ�����UDIS=0��URS=0��������TIM4_EGR�Ĵ�����UGλ����Լ�����
			//CNT���³�ʼ��ʱ��
			//��TIM4_CR1�Ĵ�����UDIS=0��URS=0����������CNT�������¼����³�ʼ��ʱ��

    TIM4EGR	=0B00000000;
    //BIT0:��λ�������1����Ӳ���Զ���0��
	//0���޶�����
	//1�����³�ʼ����������������һ�������¼���ע��Ԥ��Ƶ���ļ�����Ҳ����0(����Ԥ��Ƶϵ������)���������ĶԳ�ģʽ�»�DIR=0(���ϼ���)�����������0����DIR=1(���¼���)�������ȡTIM1_ARR��ֵ��

    TIM4CNTR=0; //TIM4 8λ������
    
    TIM4PSCR=0B00000111;
    //Ԥ��Ƶ���������CK_PSCʱ�ӽ��з�Ƶ��
	//��������ʱ��Ƶ��fCK_CNT����fCK_PSC/2(PSC[2:0])��PSC[7:3]��Ӳ����0��
	//PSCR�����˵������¼�����ʱװ�뵱ǰԤ��Ƶ���Ĵ�����ֵ(�����������TIMx_EGR�Ĵ�����UGλ�����ļ���������¼�)������ζ����Ҫ�µ�Ԥ��Ƶֵ��Ч��������������¼�����CEN=0��

    TIM4ARR	=124;
    //ARR�����˽�Ҫװ����ʵ�ʵ��Զ���װ�ؼĴ�����ֵ��
	//���Զ���װ�ص�ֵΪ��ʱ����������������

    INTCON |= 0B11000000;    //�����жϺ������ж�
  }
//***********************************************************************
void WakeupInitial(void)  					//��֮��IO����
{
    if (IO_TOUCH_ATTR1 & 0x0001) 
    TRISA4 =1; 
	if (IO_TOUCH_ATTR1 & 0x0002) 
    TRISA5 =1;
    if (IO_TOUCH_ATTR1 & 0x0004) 
    TRISA6 =1;
    if (IO_TOUCH_ATTR1 & 0x0008) 
    TRISA7 =1;
    if (IO_TOUCH_ATTR1 & 0x0010) 
    TRISD5 =1;
    if (IO_TOUCH_ATTR1 & 0x0020) 
    TRISC0 =1;
    if (IO_TOUCH_ATTR1 & 0x0040) 
    TRISC1 =1;
    if (IO_TOUCH_ATTR1 & 0x0080) 
    TRISB7 =1;
    if (IO_TOUCH_ATTR1 & 0x0100) 
    TRISB4 =1;
    if (IO_TOUCH_ATTR1 & 0x0200) 
    TRISC3 =1;
    if (IO_TOUCH_ATTR1 & 0x0400) 
    TRISB3 =1;
    if (IO_TOUCH_ATTR1 & 0x0800) 
    TRISB2 =1;
    if (IO_TOUCH_ATTR1 & 0x1000) 
	TRISC4 =1;
    if (IO_TOUCH_ATTR1 & 0x2000) 
    TRISC5 =1;
    if (IO_TOUCH_ATTR1 & 0x4000) 
    TRISC6 =1;
    
	TRISC7 =1; 	//�ο�����
}

//***********************************************************************

void main(void)
{
	SysInit();
  
	Time4Initial();
   
    TouchInital();
    WDT_Initial();
    
    f_gotosleep=0;

	while(1)
	{       
           CLRWDT();
            
           if(TouchTimeCount>=(1000/SCANNINGTIME))   			
		   {
				TouchTimeCount = 0;
				f_lowpower=0;
				readKeyNum = TouchKeyScan();  	//����ɨ�貢��ȡ����ֵ 
           }
			//-----------------------�����û�����-----------------------------
			 if(readKeyNum!=0)  							//�а���
			{
                TouchTimeCount1 = 0;
                
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
				f_gotosleep = 0;
				if(f_gotosleep == 0)  						//f_gotosleep����0����������
				{  
					if(TouchTimeCount1>=1000)	//1s
					{
						TouchTimeCount1 = 0;
						TIM4EN = 0;
		
						while(1)
                        {
                            //�õ��Ĵ�����������Ϊ�����ʡ��
							PORTA=0x00;
							PORTB=0x00;
							PORTC=0x00;
							PORTD=0x00;
							TRISA=0x00;
							TRISB=0x00;
							TRISC=0x00;
							TRISD=0x00;
		 
							SWDTEN  =1;	//��wdt   
							
							SLEEP(); 
			
							SWDTEN  =0;
							
							//�õ��Ĵ�����������Ϊ����
                            WakeupInitial();
                            
							f_lowpower=1;    							//�Ե͹��ĵķ�ʽ����TouchKeyScan();
						
							readKeyNum = TouchKeyScan();
							
							if(readKeyNum != 0)
							{
								break;
							}
                        }                     
                     
						TIM4EN = 1;
                        TouchTimeCount = 1000/SCANNINGTIME;
					}
                }
			}
	}
}

























