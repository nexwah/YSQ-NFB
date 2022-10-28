#include	"SYSCFG.h";
/*CMD define*/
#define  CMD_R_ADDR       0X00
#define  CMD_W_ADDR      0X01
#define  CMD_W_DATA      0X02
#define  CMD_R_DATA       0X03
#define  CMD_E_FLASH      0X04
#define  CMD_W_FLASH     0X05
#define  CMD_S_USR         0X06
#define  CMD_R_L_DATA    0X07
#define  CMD_WAIT            0XFF
/*NOP define*/
#define  NOP_DATA            0X00

/*addr define*/

#define IAPSIZE			   0X200

void iap_usart_init();
unsigned char iap_usart_rec();
void iap_usart_send(unsigned char data);
void iap_wait_tx_idle(void);

#pragma inline iap_usart_init;
#pragma inline iap_usart_rec;
#pragma inline iap_usart_send;
#pragma inline iap_wait_tx_idle;
