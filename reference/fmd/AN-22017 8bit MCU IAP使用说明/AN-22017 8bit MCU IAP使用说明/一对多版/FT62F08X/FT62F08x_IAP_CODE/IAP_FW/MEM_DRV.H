#include	"SYSCFG.h";
//
#define   iap_mem_init()  EECON1 = (0x1<<7/*FLASH*/)|(0X1<<2/*WREN*/)
void iap_mem_erase();
void iap_mem_prog();
void iap_mem_rd();
unsigned char EEPROMread(unsigned char EEAddr);
//
#pragma inline iap_mem_erase;
#pragma inline iap_mem_prog;
#pragma inline iap_mem_rd;