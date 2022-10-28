#include	"usart_drv.h";
//usart driver for iap
//8 bit data + 1start + 1stop
void iap_usart_init()
{
	//clock
	PCKEN  = (0X1<<5/*USARTEN*/);
    OSCCON = 0B01110001;	//16MHZ 1:1
    
	//AFP0 = 0B01000000; //UART1_TX(PB6)   //把串口的发送和接收脚映射到程序的下载脚PA2(ISPCK),PB6(ISPDAT)
	AFP1 = 0B01000000; //UART1_RX(PA2)
	//GPIO
	//TRISB &= ~(0X1<<6/*PB6 UART_TX OUTPUT*/);
	//比特率配置
	//UR1DLL=104;//9600 bps  (1M/9600=104)
    UR1DLL=26;//38400 bps  (1M/38400=26)  
	//UR1DLL=9;//115200 bps    (1M/115200=9)  

    //8bit data
    UR1LCR=(0x1/*8 bit*/);//|(0x1<<3/*PEN*/)|(0x1<<4/*EVEN*/);
    //TXEN RXEN
    UR1MCR=(0X1<<4/*TXEN*/)|(0x1<<3/*RXEN*/);
    
    UR1RXNE |=  (0X1<<0/*UR1RXNE*/);
    

   
}



 /*-------------------------------------------------
 *	函数名：	DelayUs

 --------------------------------------------------*/
 void DelayUs()
 {
     unsigned char a;
     for(a=0;a<10;a++)
     {
         NOP();
	 } 
}
void iap_usart_send(unsigned char data)
{
	while(!(UR1LSR & (0x1<<5/*TXEF*/)));
		UR1DATAL = data;
}

unsigned char iap_usart_rec()
{
     unsigned int a;
     for(a=0;a<47200;a++)   //500ms
     {
		   DelayUs();
           if(((0x1 << 0/*RXNE*/) & UR1LSR)) 
           {    
					if((UR1LSR & (0x1<<2/*PEF*/)) || (UR1LSR & (0x1<<3/*FEF*/)))
					{
						UR1LSR = ~((0x1<<2/*PEF*/)|(0x1<<3/*FEF*/));//clr pef fef
						return 0xff;
					}
					else
                    {
                        return UR1DATAL;            
					}	    
		   }
     }
     return 0xff;	   
}




