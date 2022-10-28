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
unsigned char  iap_databuf[133];

void user_isr();//用户中断程序，不可删除
//===========================================================
/****************************Info********************************************** 
 * Name:    CRC16_CCITT         x16+x12+x5+1
 * Width:	16 
 * Poly:    0x1021   //  0001 0000 0010 0001  把字节颠倒过来 1000 0100 0000 1000     0x8408
 * Init:    0x0000 
 * Refin:   True 
 * Refout:  True 
 * Xorout:  0x0000 
 * Alias:   DOW-CRC,CRC-8/IBUTTON 
 * Use:     
 *****************************************************************************/ 
void CRC16_CCITT(unsigned char data)
{
//	unsigned int wCPoly = 0x8408;
    unsigned char i;

	CRC_16 ^= data;
    
	for(i = 0;i < 8;i++)
	{
		if(CRC_16 & 0x01)
			CRC_16 = (CRC_16 >> 1) ^ 0x8408;
		else
			CRC_16 = CRC_16 >> 1;
	}

}
void All_Page_Read_CRC()
{   
    unsigned int  iap_addr;
    CRC_16 = 0;
    iap_mem_init();   //设置为访问FLSH
    for(iap_addr=IAPSIZE;iap_addr<0x2800;iap_addr++)                         
    {  
		EEADRH = iap_addr>>8;
		EEADRL = iap_addr>>0;
		iap_mem_rd();      
		CRC16_CCITT(EEDATL);
        CRC16_CCITT(EEDATH);
     }                       
}
void Eeprom_Write_Crc()
{
    All_Page_Read_CRC();
    
    EECON1 &=~(0x1<<7/*EEPROM*/);  // 切换到eeprom
	EECON1 =(0X1<<2/*WREN*/);         //在EEPROM地址写整个升级内容的CRC校验码，高位在前，低位在后
	
    EEADRL=0;
	EEDATL=CRC_H;
	iap_mem_prog(); 
	EEADRL=1;
	EEDATL=CRC_L;
	iap_mem_prog();     
}

void Power_On_App_Check()
{
    unsigned int  CRC_Eeprom;
    
	count=0;
	flag=0;
    
    CRC_Eeprom=EEPROMread(0);
    CRC_Eeprom= CRC_Eeprom << 8;
    CRC_Eeprom= CRC_Eeprom + EEPROMread(1);
   
    All_Page_Read_CRC();
    read_flag=1;
    if(CRC_Eeprom ==  CRC_16)
    {
        read_flag=0;
	}
}

unsigned char data_check_erase_or_not(unsigned int addr, unsigned char mode)
{
    unsigned char i ,j,k;
	for(i=0;i<64;i++)                         
	{  
			EEADRH = addr>>8;
			EEADRL = addr>>0;
            j = iap_databuf[i*2+3];
            k = iap_databuf[i*2+4];
			iap_mem_rd();
            if(mode == 0)
            {
				if(((EEDATH & j) != j) || ((EEDATL & k) != k)) 
				{
						return 0;
				}  
			}
            else
            {
				if((EEDATH  != j) || (EEDATL  != k)) 
				{
						return 0;
				} 
			}
			addr++;
	 }
	return 1;
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
				unsigned char   i ;
				unsigned int  iap_addr;  // 设置编程的起始地址 
				UR1RXNE &=  ~(0X1<<0/*UR1RXNE*/);  //关闭接收中断
				iap_mem_init();   //设置为访问FLSH
				iap_usart_send(0xaa);  //返回0xAA
				while(1)
				{
					iap_databuf[0]=iap_usart_rec();
					CLRWDT();
					switch(iap_databuf[0])
					{
						case CMD_W_FLASH:   //写闪存命令(将缓冲区中存储的数据写入闪存中地址指针指向的地址，成功执行一次写操作后，地址指针会自动递增32个字，并在命令执行完毕后返回一个空字节0x00 )
								for(i=1;i<133;i++)  
								{
										iap_databuf[i]=iap_usart_rec();
								} 
                                CRC_16 = 0;
								for(i=0;i<131;i++)  
								{
									  CRC16_CCITT(iap_databuf[i]);
								}
								if((CRC_H !=iap_databuf[131]) || (CRC_L !=iap_databuf[132])) //crc校验不对
								{
									   iap_usart_send(0x44);//Error
									   break;
								}
                                iap_addr = iap_databuf[1];
								iap_addr = ((iap_addr<<8)+iap_databuf[2]); 
								if(iap_addr < IAPSIZE)
								{
									iap_usart_send(0x44);//Error
									break;
								}
								if(data_check_erase_or_not(iap_addr,1))
								{
									if(iap_addr == (0x2800-0x40))
									{
										Eeprom_Write_Crc();
									}
									iap_usart_send(NOP_DATA);
								}
								else
								{
									 if(data_check_erase_or_not(iap_addr,0))
									{
										 for(i=0;i<128;i=i+2)  
										 {
											EEADRH  = iap_addr>>8;
											EEADRL  = iap_addr>>0;
											EEDATH  =  iap_databuf[i+3];
											EEDATL  =   iap_databuf[i+4];
											iap_mem_prog();
											iap_addr++;
										 }
									}
									else
									{
											EEADRH = iap_addr>>8;
											EEADRL = iap_addr>>0;
											iap_mem_erase();	
											for(i=0;i<128;i=i+2)  
											{
												EEADRH  = iap_addr>>8;
												EEADRL  = iap_addr>>0;
												EEDATH  =  iap_databuf[i+3];
												EEDATL  =   iap_databuf[i+4];
												iap_mem_prog();
												iap_addr++;
											}
									}
									iap_addr = iap_databuf[1];
									iap_addr = ((iap_addr<<8)+iap_databuf[2]); 
									if(data_check_erase_or_not(iap_addr,1))
									{
										if(iap_addr == (0x2800-0x40))
										{
											Eeprom_Write_Crc();
										}
                                        iap_usart_send(NOP_DATA);
									}
								   else
								   {
										iap_usart_send(0x44);//Error
								   }    
								}
								break;
						case CMD_S_USR:  //等待0x00字节发送完成后进行软复位
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
				asm("goto 0x404");      //跳转到应用程序中的中断函数 中的URAT1接收
            }
		}
        
	} 
	else
	{
		asm("goto 0x404");      //跳转到应用程序中的中断函数 中去 
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
	Power_On_App_Check();
   //==========================
	GIE=1;  //全局中断使能
	PEIE=1;  //外设中断使能
   //==========================     
	if(read_flag !=1)
	{
		asm("goto 0x400");      //当地址大于2k的时候  需要设置 PCLATH 设置 PC 指针高
	}
	while(1)
	{
	   CLRWDT();  
	}
}

//===================================================
