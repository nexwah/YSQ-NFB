//********************************************************* 
/*  �ļ�����main.c
*   IC:     FT62F13X  
*   ʱ�ӣ�  16M/4T                    
*/
//*********************************************************
#include "syscfg.h"
#include "Touch.h"
//**********************************************************
//***********************�궨��*****************************
#define  unchar   unsigned char 
#define  unint      unsigned int
#define  unlong   unsigned long


#define  DemoPortOut	RA4
volatile unsigned char SAFlag  @0xA0;
volatile unsigned char TestCount;
volatile unsigned char ReadCom;
volatile unsigned int ChargeCount;
volatile unsigned char TreCount;
volatile unsigned char TCount;


void uart_delay(void);
void uart_tx(unsigned char  data);

//**************�жϴ���**********************************
void interrupt ISR(void)//PIC_HI-TECHʹ��
{ 
    
	if(T0IE && T0IF)
    {
	    T0IF = 0;                         
     } 

  //��ʱ��1���жϴ���**********************
	if(TMR1IE && TMR1IF)			
	{
		TMR1IF = 0;

	} 	 
    
  //��ʱ��2���жϴ���**********************
	if(TMR2IE && TMR2IF)			//
	{      
		TMR2IF = 0;
		//408us
		TCount++;   
      
	} 
} 

/*----------------------------------------------------
 *	�������ƣ�TIMER0_INITIAL
 *	���ܣ���ʼ�����ö�ʱ��
 *	��ؼĴ���?
 *	����TMR0	                      
 ----------------------------------------------------*/
void TIMER0_INITIAL (void)  
{
	T0ON=0;
    OPTION = 0B00000000;  		//bit0-bit2  timer0 �ķ�Ƶ�� 000 1��2 
    PR0 = 1;   //7        				//��TKMODE=1������TOUCHӲ�����ʱ��TIMER0���ڲ���TOUCH��PWM�����źţ�T0DUTY�Ǹ�PWM �����ڼĴ�����  
    T0DUTY = 1;   //4   			  //��TKMODE= 1������TOUCHӲ�����ʱ��TIMER0 ���ڲ���TOUCH��PWM   
    TMR0= 0;
    T0IF = 0;							 //���T0����ж�

  //  T0IE = 1;							//����ʱ��/������0�ж�
}
/*-------------------------------------------------
 * �������ƣ�   TIMER1_INITIAL
 * ���ܣ�      ��ʼ�����ö�ʱ��1   
 * ��ؼĴ����� 
 -------------------------------------------------*/
void TIMER1_INITIAL (void) 
{  
          
    T1CON0  = 0B00010001; 		//bit1:0-T1CKSRC[1:0]  T1ʱ��Դѡ�� 00=ָ��ʱ�� 01=HIRC 10 =LPʱ�� 
													//bit2  T1ON  1:Timer1 ��  0 Timer1 �ر�
                                                    //bit3 TICKRUN 1=T1CK˯��ʱ���ֹ��� 0=T1CK˯��ʱֹͣ����
                                                    //bit4 T1CKPSA Ԥ��Ƶ������λ 1=Ԥ��Ƶ�������Timer1 0=Ԥ��Ƶ�������Timer0
    						
    TMR1H  = 0;							  //��ʱ��1�����Ĵ���
    TMR1L   = 0;
    
    
	PR1H    = 0XF; 						 //����=��PR+1��*Tt2ck*TMR2Ԥ��Ƶ(������ģʽ����*2)
	PR1L    = 0xFF;	                //8M/(1+1)=4M
      
        	    				 			
	TMR1IF  = 0;						//��TMER1�жϱ�־
    
//	T1ON  = 1;						//ʹ��TMER1����

	GIE     = 1;   				  		//ʹ��ȫ���ж�
}

void TIMER2_INITIAL(void)
{
       T2CON0  = 0B01111000; 			//T2Ԥ��Ƶ1:1�����Ƶ1��4
    //BIT7: 0�������壻 1����PR2/P1xDTy����ֵ�ֱ���µ�PR2�Ĵ�����P1xDTy_ACT
    //BIT6~BIT3: ��ʱ��2������Ƶ��ѡ�� 0000:1:1;0001:1:2;����1:16
    //BIT2:0:�رն�ʱ��2��1���򿪶�ʱ��2
    //BIT1~0:��ʱ��2Ԥ��Ƶѡ�� 00:1;01:4;1x:16
    
	T2CON1  = 0B00000000;		   //T2ʱ������ϵͳʱ��,PWM1����ģʽ
	//BIT4: PWMģʽѡ�� 0:����ģʽ��1��������ģʽ
    //BIT3: 0:PWMģʽ��1��������ģʽ	
    //Timer2ʱ��Դѡ��000��ָ��ʱ�ӣ�001��ϵͳʱ�ӣ�010��HIRC��2��Ƶ��100��HIRC��101��LIRC
    						
    TMR2H  	= 1;					//��ʱ��2�����Ĵ���  =1/16*16*4*500
    TMR2L  	= 0XF0;
    
    
	PR2H    = 1; 					//����=��PR+1��*Tt2ck*TMR2Ԥ��Ƶ(������ģʽ����*2)
	PR2L    = 0XF0;	  
    
    P1ADTH	= 0;					//����=P1xDT*Tt2ck*TMR2Ԥ��Ƶ(������ģʽû�õ�)
    P1ADTL	= 50;
    
    //P1OE 	= 0B00000000;			//����P1A0���PWM�����ó�timer��ʱ��ʱ��λ���㣩
    //BIT7: 0:��ֹP1C������ܽ�;1:����P1C������ܽ�
    //BIT6: 0:��ֹP1B������ܽ�;1:����P1B������ܽ�
    //BIT5~BIT0: 0:��ֹP1Ax������ܽ�;1:����P1Ax������ܽ�
    
    //P1POL 	= 0B00000000;			//�ߵ�ƽ��Ч
    //BIT7: 0:P1C�ߵ�ƽ��Ч;1:P1C�͵�ƽ��Ч
    //BIT6: 0:P1B�ߵ�ƽ��Ч;1:P1B�͵�ƽ��Ч
    //BIT5~BIT0: 0:P1Ax�ߵ�ƽ��Ч;1:P1Ax�͵�ƽ��Ч
    
    //P1CON	= 0B00000000;
    //BIT7:PWM1 ����ʹ��λ
	//1 = ����ɲ��ʱ��P1BEVTλ���˳��ر��¼�ʱ�Զ����㣬PWM1�Զ�����
	//0 = ����ɲ��ʱ�������������P1BEVT����������PWM1
    //BIT6~0:PWM1����ʱ������
	//P1DCn = Ԥ��MPWM�ź�Ӧת��Ϊ��Ч��PWM�ź�ʵ��תΪ��Ч֮���T2CK������
        
    //MSCON0   = 0B00110000;		    //bit0: 0:T2˯��ʱֹͣ����	
    //BIT5:PSRCAH4��PSRCA[4]��ͬ����Դ������00��4mA; 11: 33mA; 01��10:8mA
    //BIT4:PSRCAH3��PSRCA[3]��ͬ����Դ������00��4mA; 11: 33mA; 01��10:8mA
    //BIT3:UCFG1<1:0>Ϊ01ʱ��λ�����塣0����ֹLVR��1����LVR
    //BIT2:��ʱ�Ӳ��������ڵ�ƽ��ģʽ��0���ر�ƽ��ģʽ��1����ƽ��ģʽ
    //BIT1:0���رտ�ʱ�Ӳ��������ڣ�1���򿪿�ʱ�Ӳ���������
    //BIT0:0��˯��ʱֹͣ������1�� ˯��ʱ���ֹ�������T2ʱ�Ӳ���ѡ��ָ��ʱ�ӵ�ʱ��
     
				 					//����TMR2����Ƚ�ֵ��ʱ15us=(1/4000000)*60(PR2)
	TMR2IF  = 0;					//��TMER2�жϱ�־
	TMR2IE = 1;						//ʹ��TMER2���жϣ����ó�timer��ʱ��ʱ��ע�ͣ�
	TMR2ON  = 1;					//ʹ��TMER2����
	PEIE    = 1;    				//ʹ�������ж�
	GIE     = 1;   					//ʹ��ȫ���ж�
}
/*-------------------------------------------------
 *  ��������POWER_INITIAL
 *	���ܣ�  �ϵ�ϵͳ��ʼ��
 *  ���룺  ��
 *  �����  ��
 --------------------------------------------------*/	
void SYS_INITIAL (void) 
{
	 
	OSCCON = 0B01110000;//WDT 32KHZ IRCF=110=16MHZ/4=4MHZ,0.25US/T
											//Bit0=1,ϵͳʱ��Ϊ�ڲ�����
											//Bit0=0,ʱ��Դ��FOSC<2��0>����������ѡ��ʱѡ��
	OPTION = 0B00000000;	//Bit3 PSA   Ԥ��Ƶ������λ 0= Ԥ��Ƶ�������Timer0ģ�� 1�������WDT 
											//Bit2��0��Ԥ��Ƶ��ѡ��λ 000: 1:2 
		                           

	INTCON = 0;  					//�ݽ�ֹ�����ж�
    
	 PORTA = 0;
     PORTB = 0;
	TRISA =  0B00000100;		// 0-��� 1-����  
    TRISB =  0B11111100;		// B2-B7  TK7-TK2
    TRISC = 0B00000011;		  // B0-B1  TK1-TK0
	WPUA =  0B00000000;     	//PA�˿��������� 1-������ 0-������
    WPUB =  0B00000000;
    ANSEL0 =0B00000100;     // TKCAP ��A2����Ϊģ�������		  	
    
    TX_IO_ADDR &= ~TX_IO;										   
}


void TOUCH_INITIAL(void)
{
	TKCON0=0;
    LVDCON  = 0x17;   //bit2 0: 101/110/111: TOUCH  
								  //bit3 LVDDEB LVD ��ƽ����Ƿ񾭹�ȥ����· 1������ȥ�� 0��������ȥ�� 
                                  //bit 4 LVDP  1:��ʾVDD�������跧ֵ,0����ʾ�������跧ֵ  					
   PCON	= 0x80;		//bit[7:4]=1xxx 1.2v   �͵�ѹѡ��λ     

}



/*-------------------------------------------------
 * �������ƣ�WDT_INITIAL
 * ���ܣ�	   ��ʼ�����ÿ��Ź�64MSʱ�临λ
 -------------------------------------------------*/
void WDT_INITIAL (void) 
{
  
	CLRWDT();  				//�忴�Ź�
	PSA=0;     				//ʱ�ӷ�Ƶ�ָ�WDT
	WDTCON = 0B00001111;	//WDTPS=0110=1:1024,PS=000=1:1
									//��ʱʱ��=(2048*1)/32000=64ms
}


void uart_delay(void)
{
   ///*     16M/4T  ������ 115200
    NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();
    NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();
    NOP();NOP();NOP();NOP();
}


void uart_tx(unsigned char  data)
{
	GIE  = 0; 
	TX =0; //start
	uart_delay();
	if(data & 0x01)  //1��  1
	{
		TX = 1;
		uart_delay(); 	 
	}
	else //0��
	{
		TX = 0;
        NOP();NOP();
		uart_delay();
	}
	if(data & 0x02)  //1��  1
	{
		TX = 1;
		uart_delay(); 	 
	}
	else //0��
	{
		TX = 0;
        NOP();NOP();
		uart_delay();
	}
	if(data & 0x04)  //1��  1
	{
		TX = 1;
		uart_delay(); 	 
	}
	else //0��
	{
		TX = 0;
        NOP();NOP();
		uart_delay();
	}
	if(data & 0x08)  //1��  1
	{
		TX = 1;
		uart_delay(); 	 
	}
	else //0��
	{
		TX = 0;
        NOP();NOP();
		uart_delay();
	}
	if(data & 0x10)  //1��  1
	{
		TX = 1;
		uart_delay(); 	 
	}
	else //0��
	{
		TX = 0;
        NOP();NOP();
		uart_delay();
	}
	if(data & 0x20)  //1��  1
	{
		TX = 1;
		uart_delay(); 	 
	}
	else //0��
	{
		TX = 0;
        NOP();NOP();
		uart_delay();
	}
	if(data & 0x40)  //1��  1
	{
		TX = 1;
		uart_delay(); 	 
	}
	else //0��
	{
		TX = 0;
        NOP();NOP();
		uart_delay();
	}
	if(data & 0x80)  //1��  1
	{
		TX = 1;
		uart_delay(); 	 
	}
	else //0��
	{
		TX = 0;
        NOP();NOP();
		uart_delay();
	}
	TX = 1; //stop
	uart_delay ();
	GIE  =1; 
}

/*-------------------------------------------------
 *  ������:  main 
 *	���ܣ�  ������
 *  ���룺  ��
 *  �����  ��
 --------------------------------------------------*/
void main()
{
	SYS_INITIAL();				//ϵͳ��ʼ��
    TIMER0_INITIAL();  		//��ʼ��TIM0 & PWM  
	TIMER1_INITIAL();  	   //��ʼ��TIM1   
    TOUCH_INITIAL();
    TIMER2_INITIAL();
   
    TCount   =  0;
	while(1)
	{
        
             SendDataToPC();    //8us*(255-120)=1MS  
     }
                    
}



