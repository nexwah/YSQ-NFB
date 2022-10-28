//Project: IAP_FW.prj
// Device: FT61F0AX
// Memory: Flash 10KX14b, EEPROM 128X8b, SRAM 1KX8b
// Author: 
//Company: 
//Version:
//   Date: 
//===========================================================
//===========================================================
#include	"SYSCFG.h";
#include    "usart_drv.h"
#include	"mem_drv.h";
//===========================================================
//Variable definition
volatile char W_TMP  @ 0x70 ;//系统占用不可以删除和修改
volatile char BSR_TMP  @ 0x71 ;//系统占用不可以删除和修改
unsigned char flag@0x20;
bit read_flag        @ ((unsigned)&flag*8)+0;
bit iap_err_flag    @ ((unsigned)&flag*8)+1;
bit iap_ok_flag    @ ((unsigned)&flag*8)+2;
bit uart_rxnef      @ ((unsigned)&flag*8)+3;
    
unsigned char  count @0x21;  
unsigned char  iap_recdata @0x22;
unsigned int    CRC_16@0x23;
unsigned char    CRC_L@0x23;
unsigned char    CRC_H@0x24;
unsigned char  iap_databuf[69];


void user_isr();//用户中断程序，不可删除
//===========================================================
void Eeprom_Write_Flag(unsigned char data)
{ 
    EECON1 &=~(0x1<<7/*EEPROM*/);  // 切换到eeprom
	EECON1 =(0X1<<2/*WREN*/);         //在EEPROM地址写整个升级内容的CRC校验码，高位在前，低位在后
    EEADRL=0;
	EEDATL=data;
	iap_mem_prog(); 
        
}
//===========================================================
//Funtion name：interrupt ISR
//parameters：无
//returned value：无
//===========================================================
void interrupt ISR(void)
{
#asm;//系统设置不可以删除和修改
	NOP;//系统设置不可以删除和修改
	NOP;//系统设置不可以删除和修改
	NOP;//系统设置不可以删除和修改
	NOP;//系统设置不可以删除和修改
	NOP;//系统设置不可以删除和修改
	NOP;//系统设置不可以删除和修改
	NOP;//系统设置不可以删除和修改
	NOP;//系统设置不可以删除和修改
	NOP;//系统设置不可以删除和修改
	NOP;//系统设置不可以删除和修改
	NOP;//系统设置不可以删除和修改
	NOP;//系统设置不可以删除和修改
	NOP;//系统设置不可以删除和修改
	NOP;//系统设置不可以删除和修改
	NOP;//系统设置不可以删除和修改
	NOP;//系统设置不可以删除和修改
	NOP;//系统设置不可以删除和修改
	NOP;//系统设置不可以删除和修改
	NOP;//系统设置不可以删除和修改
	NOP;//系统设置不可以删除和修改
	NOP;//系统设置不可以删除和修改
#endasm;//系统设置不可以删除和修改
	user_isr(); //调用用户中断函数
}
void user_isr() //调用用户中断函数
{
     	//中断处理**********************
	if(UR1RXNE && UR1RXNEF)       //接收中断         	
	{
        if(UR1FEF==1)
        {UR1FEF=0;}
    	iap_recdata= UR1DATAL; 
        count++;
        switch(count)
        {
            case 1:
            		if(iap_recdata != 0x46)
					{iap_err_flag=1;}	 //表示接收编程命令失败
            break;
            case 2:
            		if(iap_recdata != 0x4D)
					{iap_err_flag=1;}	 //表示接收编程命令失败
            break;
            case 3:
            		if(iap_recdata!= 0x44)
					{iap_err_flag=1;}	 //表示接收编程命令失败
            break;
            case 4:
            		if(iap_recdata != 0x49)
					{iap_err_flag=1;} 	//表示接收编程命令失败
            break;
            case 5:
            		if(iap_recdata != 0x41)
					{iap_err_flag=1;}	 //表示接收编程命令失败
            break;
            case 6:
            		if(iap_recdata != 0x50)
					{iap_err_flag=1;}	 //表示接收编程命令失败
            break;
            case 7:
            		if(iap_recdata!= 0x55)
					{iap_err_flag=1;} 	//表示接收编程命令失败
            break;
            case 8:
            		if(iap_recdata!= 0xaa)
					{iap_err_flag=1;}  //表示接收编程命令失败
                    else
                    {iap_ok_flag=1;}  //表示接收编程命令成功
            break;
            default:
					iap_err_flag=1;
            break;
        }
        if(iap_ok_flag==1)      //如果接收的是'0x46、0x4D、0x44、0x49、0x41、0x50、0x55、0xAA，'表示准备进入编程，然后返回0xAA.
		{
				count=0;
				iap_ok_flag =0;
				unsigned char   i,j ;
				UR1RXNE &=  ~(0X1<<0/*UR1RXNE*/);  //关闭接收中断
                Eeprom_Write_Flag(0xff);
				iap_mem_init();   //设置为访问FLSH
				iap_usart_send(0xaa);  //返回0xAA
				while(1)
				{
					iap_databuf[0]=iap_usart_rec();
					CLRWDT();
					switch(iap_databuf[0])
					{
						case CMD_E_FLASH:  //擦除闪存命令(从地址指针指定的地址开始擦除一行64个字，并在擦除整个剩余的 FLASH空间后(IAP程序以外的FLASH空间)并返回0x00                  
								CRC_H=iap_usart_rec();
								CRC_L=iap_usart_rec();
								if(CRC_16 < IAPSIZE)   //如果不是从应用程序的起始地址开始擦除会返回错误命令
								{
									iap_usart_send(0x44);//Error
									break;
								}
								 for(CRC_16=0x200;CRC_16<=0x2800-0x40;CRC_16+=0x40)   //对IAP程序以外的FLASH空间进行擦除,这里要注意FT61F14X的FLASH每页是32WORD
								 {
										EEADRH = CRC_H;
										EEADRL =  CRC_L;
										iap_mem_erase();
								 }
								 iap_usart_send(NOP_DATA);
								break; 
						case CMD_W_FLASH:   //写闪存命令(将缓冲区中存储的数据写入闪存中地址指针指向的地址，成功执行一次写操作后，地址指针会自动递增32个字，并在命令执行完毕后返回一个空字节0x00 )
								for(i=1;i<69;i++)  
								{
										iap_databuf[i]=iap_usart_rec();
								}  
                                CRC_16 = 0;
								for(i=0;i<67;i++)  
								{
										CRC_16 ^= iap_databuf[i];
										for(j = 0;j < 8;j++)
										{
											if(CRC_16 & 0x01)
												CRC_16 = (CRC_16 >> 1) ^ 0x8408;   //CRC16_CCITT 校验
											else
												CRC_16 = CRC_16 >> 1;
										}
								}
								if((CRC_H !=iap_databuf[67]) || (CRC_L !=iap_databuf[68])) //crc校验不对
								{
									   iap_usart_send(0x44);//Error
									   break;
								}
								CRC_H = iap_databuf[1];
								CRC_L =  iap_databuf[2]; 
								if(CRC_16 < IAPSIZE)
								{
									iap_usart_send(0x44);//Error
									break;
								}
								 for(i=0;i<64;i=i+2)  
								 {
									EEADRH = CRC_H;
									EEADRL =  CRC_L;
									EEDATH  =  iap_databuf[i+3];
									EEDATL  =   iap_databuf[i+4];
									iap_mem_prog();
									CRC_16++;
								 }
								 iap_usart_send(NOP_DATA);
								break;
					  case CMD_R_DATA:  //从地址指针指定的地址开始读取闪存中的32个字，执行一次操作后，地址指针会自动递增32个字。
								CRC_H=iap_usart_rec();
								CRC_L=iap_usart_rec();
								for(i=0;i<32;i++)  
								{
									EEADRH = CRC_H;
									EEADRL =  CRC_L;
									iap_mem_rd();
									iap_usart_send(EEDATH);
									iap_usart_send(EEDATL);
									CRC_16++;
								}
								break;  
						case CMD_S_USR:  //等待0x00字节发送完成后进行软复位
                                Eeprom_Write_Flag(0);
								iap_usart_send(NOP_DATA);
								iap_wait_tx_idle();
								asm("RESET");
								break;
												
						default:    //接收到不正确的命令，返回一个0X44字节。
								iap_usart_send(0x44);//Error
								iap_wait_tx_idle();
								asm("RESET");
								break;
						}      
				}
	  }                           
 		if(iap_err_flag==1)  //如果接收编程命令失败，则不进入编程。
		{
            count=0;
            iap_err_flag=0;
            if(read_flag !=1)
            {
                uart_rxnef=1;
				asm("goto 0x204");      //跳转到应用程序中的中断函数 中的URAT1接收
            }
		}
        
	} 
	else
	{
		asm("goto 0x204");      //跳转到应用程序中的中断函数 中去 
	} 
}
//===========================================================
//Funtion name：main
//parameters：无
//returned value：无
//===========================================================
void main(void)
{
        iap_usart_init();
		count=0;
		flag=0; 
       //==========================    
       if(!EEPROMread(0)) 
		{
			asm("goto 0x200");      //当地址大于2k的时候  需要设置 PCLATH 设置 PC 指针高?
		}
        read_flag =1;
        while(1)
        {
           CLRWDT();  
		}
}

//===========================================================
