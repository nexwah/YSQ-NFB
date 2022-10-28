//********************************************************* 
/*  �ļ�����main.c    
*   IC:     FT62F211 SOP8	      			---------------------
*/
//*********************************************************
#include "Touch.h"
//**********************************************************
//***********************�궨��*****************************
#define  unchar   unsigned char 
#define  unint      unsigned int
#define  unlong   unsigned long

unsigned char GKeyValue=0;	
unsigned int StartTouchTime;//��ʼɨ��ʱ��   //40
unsigned int  sleeptime=0;		//
bit      awaken; 
bit     sleepflag;

//**************�жϴ���**********************************
void interrupt ISR(void)//PIC_HI-TECHʹ��
{ 
    
	if(T0IE && T0IF)
    {
	    T0IF = 0;
 		TMR0 = 206;                       
        StartTouchTime++;     
        sleeptime++;
    }   
 
} 
  //----------------------------------------------------*/
/*----------------------------------------------------
 *	�������ƣ�TIMER0_INITIAL
 *	���ܣ���ʼ�����ö�ʱ��
 *	��ؼĴ�����T0CS T0SE PSA 
 *	����TMR0��ʱʱ��0.4MS=(1/16000000)*4*32*255(16M-4T-PSA 1:32- TMR0=255���)	                      
 ----------------------------------------------------*/
void TIMER0_INITIAL (void)  
{
    TMR0 = 206;           //8us*(255-120)=1MS          
    T0IF = 0;				//���T0����ж�
    T0IE = 1;				//����ʱ��/������0�ж�
}

/*-------------------------------------------------
 *  ��������POWER_INITIAL
 *	���ܣ�  �ϵ�ϵͳ��ʼ��
 *  ���룺  ��
 *  �����  ��
 --------------------------------------------------*/	
void SYS_INITIAL (void) //ʱ����8M д��PCON (bit7),OPTION(all bit),LVDCON(bit2),�󻻻�16M
{
	 
	OSCCON = 0B01100000;//WDT 32KHZ IRCF=110=8MHZ/4=4MHZ,0.25US/T
											//Bit0=1,ϵͳʱ��Ϊ�ڲ�����
											//Bit0=0,ʱ��Դ��FOSC<2��0>����������ѡ��ʱѡ��
	OPTION = 0B00000100;	//Bit5 T0CS Timer0ʱ��Դѡ�� 
							//1-�ⲿ���ŵ�ƽ�仯T0CKI 0-�ڲ�ʱ��(FOSC/2)
							//Bit4 T0CKI���Ŵ�����ʽ 1-�½��� 0-������
							//Bit3 PSA Ԥ��Ƶ������λ 0-Timer0 1-WDT 
							//Bit2:0 PS2 8��Ԥ��Ƶ�� 100 - 1:32
                            
    LVDCON  = 0x03;   	//bit2 0:������ȥ����·  bit[1:0] 00:vdd 01:pa5 10:pa4 11:touch
    PCON	= 0x88;		//��LVD  bit3 �͵�ѹ���ʹ��   bit[7:4]=1xxx 1.2v

	OSCCON = 0B01110000;//WDT 32KHZ IRCF=110=16MHZ/4=4MHZ,0.25US/T?
	INTCON = 0;  					//�ݽ�ֹ�����ж�
	PORTA = 0;
	TRISA =  0B00001111;		// 0-��� 1-����  
	WPUA =  0B00000000;     	//PA�˿��������� 1-������ 0-������
    PSRCA = 0B00000000;        //PA4,PA5Դ������������Ϊ0
									   
}


/*-------------------------------------------------
 * �������ƣ�WDT_INITIAL
 * ���ܣ�	   ��ʼ�����ÿ��Ź�128MSʱ�临λ
 -------------------------------------------------*/
void WDT_INITIAL (void) 
{
  
	CLRWDT();  				//�忴�Ź�
	PSA=0;     				//ʱ�ӷ�Ƶ�ָ�WDT
	if(WAKEUPFREQUENCY==16)
    {
        WDTCON = 0B00001101;
    }
    else if(WAKEUPFREQUENCY==8)//WDTPS=0111=1:4096,PS=000=1:1	��ʱʱ��=(4096*1)/32000=128ms
    {
        WDTCON = 0B00001111; 
    }
    else
    {
        WDTCON = 0B00010001;
    }  	

}
/*-------------------------------------------------
 * �������ƣ�TouchSleep_init
 * ���ܣ�	    ˯��������ʼ��
 -------------------------------------------------*/
void TouchSleep_init()
{
    if (IO_TOUCH_ATTR1 & 0x01) 
    TRISA0 =1; 
	if (IO_TOUCH_ATTR1 & 0x02) 
    TRISA1 =1;
    if (IO_TOUCH_ATTR1 & 0x04) 
    TRISA2 =1;
    if (IO_TOUCH_ATTR1 & 0x08) 
    TRISA3 =1;
}

/*------------------------------------------------------------------------------------------
 *  ������:  main 
 *	���ܣ�  ������
 *  ���룺  ��
 *  �����  ��
 ----------------------------------------------------------------------------------------------*/
void main()
{
   unsigned char x;
	SYS_INITIAL();				//ϵͳ��ʼ��
    TIMER0_INITIAL();  		//��ʼ��T0
	  
    WDT_INITIAL();			//��ʼ��watchdog

	Touch_init();
    GIE = 1;


	while(1)
	{
        CLRWDT();
//--------------------------------------------------------------���ߴ���        
		if(sleepflag==1)
        {
            if(sleeptime>=2500)			//1S���������
            {  
					sleeptime = 0;  			
#asm
StartSleep:
#endasm    
				//
                TRISA = 0;//˯��ǰ����IO��
				SLEEP(); 
				TouchSleep_init();
                awaken=1; 
                for(x=0;x<TouchCount; x++)
				{
					TouchKeyScan();    
				} 
				if(awaken==1)
                {
					#asm  
						goto StartSleep
					#endasm
                }
                  
			} 
               
		}
     		 
//----------------------------------------------------------------------------------
		if(StartTouchTime >= (2500/SCANNINGTIME/TouchCount))//ɨ��ʱ�� ����ɨ�����ڼ�������������.
        {
			StartTouchTime = 0;	
			GKeyValue = TouchKeyScan(); //����ɨ�貢��ȡ����ֵ	
            if(GKeyValue != 0)  //�а���
            {
					sleepflag = 0;
                    sleeptime = 0;
			}
            else
            {
                sleepflag = 1;  // �ް�������˯�� �ɸ���ʵ��������Ľ���˯������
			}
            
        }       
    }
                    
}


