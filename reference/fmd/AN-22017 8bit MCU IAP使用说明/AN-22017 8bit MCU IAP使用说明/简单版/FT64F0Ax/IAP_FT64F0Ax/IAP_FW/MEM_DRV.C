#include	"mem_drv.h";
//mem driver for iap

void Unlock_Flash() // Flash解锁时序不能被打断
{	
    #asm
		MOVLW   0X03
		MOVWF   _BSREG
		MOVLW   0X55
		MOVWF   0x16   //EECON2 unlock flash
		MOVLW   0XAA
		MOVWF   0x16
		BSF         0x15,1   //WR = 1;
		NOP
		NOP
	#endasm     
}

void iap_mem_erase()
{
	EECON1 |=(0x1<<4/*FERAE*/);
    Unlock_Flash();
	while(EECON1 & (0x1<<1/*WR*/));
    return;
}

void iap_mem_prog()
{
	EECON1 &=~(0x1<<4/*FERAE*/);
	Unlock_Flash();	
    while(EECON1 & (0x1<<1/*WR*/));    
    return;
}
void iap_mem_rd()
{
	EECON1 |=(0x1<<0/*RD*/);
	asm("nop");
	while(EECON1 & (0x1<<0/*RD*/));
    return;
}
/*----------------------------------------------------
 *	函数名称：EEPROMread
 *	功能：   读EEPROM数据
 *	输入参数：EEAddr 需读取数据的地址
 *  返回参数；ReEEPROMread 对应地址读出的数据
 ----------------------------------------------------*/
unsigned char EEPROMread(unsigned char EEAddr)
{  
    EEADRL = EEAddr;
    EEPGD=0; 
    CFGS=0; 
    RD = 1;
    NOP();
    NOP(); 
    NOP();
    NOP();   
	NOP(); 
    RD=0;    	
	return EEDATL;
}