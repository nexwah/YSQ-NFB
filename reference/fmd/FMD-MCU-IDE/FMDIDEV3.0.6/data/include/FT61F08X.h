
#ifndef _CHIP_DEVICE_H_
#define _CHIP_DEVICE_H_
//
// Special function register definitions
//


// Register: INDF0
volatile unsigned char           INDF0               @ 0x000;
// bit and bitfield definitions

// Register: INDF1
volatile unsigned char           INDF1               @ 0x001;
// bit and bitfield definitions

// Register: PCL
volatile unsigned char           PCL                 @ 0x002;
// bit and bitfield definitions

// Register: STATUS
volatile unsigned char           STATUS              @ 0x003;
// bit and bitfield definitions
volatile bit C                   @ ((unsigned)&STATUS*8)+0;
volatile bit DC                  @ ((unsigned)&STATUS*8)+1;
volatile bit Z                   @ ((unsigned)&STATUS*8)+2;
volatile bit nPD                 @ ((unsigned)&STATUS*8)+3;
volatile bit nTO                 @ ((unsigned)&STATUS*8)+4;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	C                   : 1;
        unsigned	DC                  : 1;
        unsigned	Z                   : 1;
        unsigned	nPD                 : 1;
        unsigned	nTO                 : 1;
        unsigned	                    : 2;
        unsigned	: 1;
    };
} STATUSbits @ 0x003;
#endif
// bit and bitfield definitions

// Register: FSR0L
volatile unsigned char           FSR0L               @ 0x004;
// bit and bitfield definitions

// Register: FSR0H
volatile unsigned char           FSR0H               @ 0x005;
// bit and bitfield definitions

// Register: FSR1L
volatile unsigned char           FSR1L               @ 0x006;
// bit and bitfield definitions

// Register: FSR1H
volatile unsigned char           FSR1H               @ 0x007;
// bit and bitfield definitions

// Register: BSR
volatile unsigned char           BSREG                 @ 0x008;
// bit and bitfield definitions
volatile bit BSREG0                @ ((unsigned)&BSREG*8)+0;
volatile bit BSREG1                @ ((unsigned)&BSREG*8)+1;
volatile bit BSREG2                @ ((unsigned)&BSREG*8)+2;
volatile bit BSREG3                @ ((unsigned)&BSREG*8)+3;
volatile bit BSREG4                @ ((unsigned)&BSREG*8)+4;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	BSREG0                : 1;
        unsigned	BSREG1                : 1;
        unsigned	BSREG2                : 1;
        unsigned	BSREG3                : 1;
        unsigned	BSREG4                : 1;
    };
    struct {
        unsigned	BSREG                 : 5;
    };
} BSREGbits @ 0x008;
#endif

// Register: WREG
volatile unsigned char           WREG                @ 0x009;
// bit and bitfield definitions

// Register: PCLATH
volatile unsigned char           PCLATH              @ 0x00A;
// bit and bitfield definitions
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	PCLATH              : 7;
    };
} PCLATHbits @ 0x00A;
#endif

// Register: INTCON
volatile unsigned char           INTCON              @ 0x00B;
// bit and bitfield definitions
volatile bit OSFIF               @ ((unsigned)&INTCON*8)+0;
volatile bit LVDIF               @ ((unsigned)&INTCON*8)+1;
volatile bit EEIF                @ ((unsigned)&INTCON*8)+2;
volatile bit OSFIE               @ ((unsigned)&INTCON*8)+3;
volatile bit LVDIE               @ ((unsigned)&INTCON*8)+4;
volatile bit EEIE                @ ((unsigned)&INTCON*8)+5;
volatile bit PEIE                @ ((unsigned)&INTCON*8)+6;
volatile bit GIE                 @ ((unsigned)&INTCON*8)+7;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	OSFIF               : 1;
        unsigned	LVDIF               : 1;
        unsigned	EEIF                : 1;
        unsigned	OSFIE               : 1;
        unsigned	LVDIE               : 1;
        unsigned	EEIE                : 1;
        unsigned	PEIE                : 1;
        unsigned	GIE                 : 1;
    };
} INTCONbits @ 0x00B;
#endif

// Register: PORTA
volatile unsigned char           PORTA               @ 0x00C;
// bit and bitfield definitions
volatile bit RA0                 @ ((unsigned)&PORTA*8)+0;
volatile bit RA1                 @ ((unsigned)&PORTA*8)+1;
volatile bit RA2                 @ ((unsigned)&PORTA*8)+2;
volatile bit RA3                 @ ((unsigned)&PORTA*8)+3;
volatile bit RA4                 @ ((unsigned)&PORTA*8)+4;
volatile bit RA5                 @ ((unsigned)&PORTA*8)+5;
volatile bit RA6                 @ ((unsigned)&PORTA*8)+6;
volatile bit RA7                 @ ((unsigned)&PORTA*8)+7;

volatile bit PA0                 @ ((unsigned)&PORTA*8)+0;
volatile bit PA1                 @ ((unsigned)&PORTA*8)+1;
volatile bit PA2                 @ ((unsigned)&PORTA*8)+2;
volatile bit PA3                 @ ((unsigned)&PORTA*8)+3;
volatile bit PA4                 @ ((unsigned)&PORTA*8)+4;
volatile bit PA5                 @ ((unsigned)&PORTA*8)+5;
volatile bit PA6                 @ ((unsigned)&PORTA*8)+6;
volatile bit PA7                 @ ((unsigned)&PORTA*8)+7;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	RA0                 : 1;
        unsigned	RA1                 : 1;
        unsigned	RA2                 : 1;
        unsigned	RA3                 : 1;
        unsigned	RA4                 : 1;
        unsigned	RA5                 : 1;
        unsigned	RA6                 : 1;
        unsigned	RA7                 : 1;
    };
	struct {
        unsigned	PA0                 : 1;
        unsigned	PA1                 : 1;
        unsigned	PA2                 : 1;
        unsigned	PA3                 : 1;
        unsigned	PA4                 : 1;
        unsigned	PA5                 : 1;
        unsigned	PA6                 : 1;
        unsigned	PA7                 : 1;
    };
    struct {
        unsigned	RA                  : 8;
    };
    struct {
        unsigned	PA                  : 8;
    };
} PORTAbits @ 0x00C;
#endif

// Register: PORTB
volatile unsigned char           PORTB               @ 0x00D;
// bit and bitfield definitions
volatile bit RB0                 @ ((unsigned)&PORTB*8)+0;
volatile bit RB1                 @ ((unsigned)&PORTB*8)+1;
volatile bit RB2                 @ ((unsigned)&PORTB*8)+2;
volatile bit RB3                 @ ((unsigned)&PORTB*8)+3;
volatile bit RB4                 @ ((unsigned)&PORTB*8)+4;
volatile bit RB5                 @ ((unsigned)&PORTB*8)+5;
volatile bit RB6                 @ ((unsigned)&PORTB*8)+6;
volatile bit RB7                 @ ((unsigned)&PORTB*8)+7;

volatile bit PB0                 @ ((unsigned)&PORTB*8)+0;
volatile bit PB1                 @ ((unsigned)&PORTB*8)+1;
volatile bit PB2                 @ ((unsigned)&PORTB*8)+2;
volatile bit PB3                 @ ((unsigned)&PORTB*8)+3;
volatile bit PB4                 @ ((unsigned)&PORTB*8)+4;
volatile bit PB5                 @ ((unsigned)&PORTB*8)+5;
volatile bit PB6                 @ ((unsigned)&PORTB*8)+6;
volatile bit PB7                 @ ((unsigned)&PORTB*8)+7;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	RB0                 : 1;
        unsigned	RB1                 : 1;
        unsigned	RB2                 : 1;
        unsigned	RB3                 : 1;
        unsigned	RB4                 : 1;
        unsigned	RB5                 : 1;
        unsigned	RB6                 : 1;
        unsigned	RB7                 : 1;
    };
    struct {
        unsigned	PB0                 : 1;
        unsigned	PB1                 : 1;
        unsigned	PB2                 : 1;
        unsigned	PB3                 : 1;
        unsigned	PB4                 : 1;
        unsigned	PB5                 : 1;
        unsigned	PB6                 : 1;
        unsigned	PB7                 : 1;
    };
    struct {
        unsigned	RB                  : 8;
    };
    struct {
        unsigned	PB                  : 8;
    };
} PORTBbits @ 0x00D;
#endif

// Register: PORTC
volatile unsigned char           PORTC               @ 0x00E;
// bit and bitfield definitions
volatile bit RC0                 @ ((unsigned)&PORTC*8)+0;
volatile bit RC1                 @ ((unsigned)&PORTC*8)+1;
volatile bit RC2                 @ ((unsigned)&PORTC*8)+2;
volatile bit RC3                 @ ((unsigned)&PORTC*8)+3;
volatile bit RC4                 @ ((unsigned)&PORTC*8)+4;
volatile bit RC5                 @ ((unsigned)&PORTC*8)+5;
volatile bit RC6                 @ ((unsigned)&PORTC*8)+6;
volatile bit RC7                 @ ((unsigned)&PORTC*8)+7;

volatile bit PC0                 @ ((unsigned)&PORTC*8)+0;
volatile bit PC1                 @ ((unsigned)&PORTC*8)+1;
volatile bit PC2                 @ ((unsigned)&PORTC*8)+2;
volatile bit PC3                 @ ((unsigned)&PORTC*8)+3;
volatile bit PC4                 @ ((unsigned)&PORTC*8)+4;
volatile bit PC5                 @ ((unsigned)&PORTC*8)+5;
volatile bit PC6                 @ ((unsigned)&PORTC*8)+6;
volatile bit PC7                 @ ((unsigned)&PORTC*8)+7;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	RC0                 : 1;
        unsigned	RC1                 : 1;
        unsigned	RC2                 : 1;
        unsigned	RC3                 : 1;
        unsigned	RC4                 : 1;
        unsigned	RC5                 : 1;
        unsigned	RC6                 : 1;
        unsigned	RC7                 : 1;
    };
    struct {
        unsigned	PC0                 : 1;
        unsigned	PC1                 : 1;
        unsigned	PC2                 : 1;
        unsigned	PC3                 : 1;
        unsigned	PC4                 : 1;
        unsigned	PC5                 : 1;
        unsigned	PC6                 : 1;
        unsigned	PC7                 : 1;
    };
    struct {
        unsigned	RC                  : 8;
    };
    struct {
        unsigned	PC                  : 8;
    };
} PORTCbits @ 0x00E;
#endif

// Register: PORTD
volatile unsigned char           PORTD               @ 0x00F;
// bit and bitfield definitions
volatile bit RD0                 @ ((unsigned)&PORTD*8)+0;
volatile bit RD1                 @ ((unsigned)&PORTD*8)+1;
volatile bit RD2                 @ ((unsigned)&PORTD*8)+2;
volatile bit RD3                 @ ((unsigned)&PORTD*8)+3;
volatile bit RD4                 @ ((unsigned)&PORTD*8)+4;
volatile bit RD5                 @ ((unsigned)&PORTD*8)+5;

volatile bit PD0                 @ ((unsigned)&PORTD*8)+0;
volatile bit PD1                 @ ((unsigned)&PORTD*8)+1;
volatile bit PD2                 @ ((unsigned)&PORTD*8)+2;
volatile bit PD3                 @ ((unsigned)&PORTD*8)+3;
volatile bit PD4                 @ ((unsigned)&PORTD*8)+4;
volatile bit PD5                 @ ((unsigned)&PORTD*8)+5;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	RD0                 : 1;
        unsigned	RD1                 : 1;
        unsigned	RD2                 : 1;
        unsigned	RD3                 : 1;
        unsigned	RD4                 : 1;
        unsigned	RD5                 : 1;
    };
    struct {
        unsigned	PD0                 : 1;
        unsigned	PD1                 : 1;
        unsigned	PD2                 : 1;
        unsigned	PD3                 : 1;
        unsigned	PD4                 : 1;
        unsigned	PD5                 : 1;
    };
    struct {
        unsigned	RD                  : 6;
    };
    struct {
        unsigned	PD                  : 6;
    };
} PORTDbits @ 0x00F;
#endif

// Register: PIR1
volatile unsigned char           PIR1                  @ 0x011;
// bit and bitfield definitions
volatile bit ADCIF               @ ((unsigned)&PIR1*8)+0;
volatile bit CKMIF               @ ((unsigned)&PIR1*8)+1;
volatile bit TKIF                @ ((unsigned)&PIR1*8)+2;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	ADCIF               : 1;
        unsigned	CKMIF               : 1;
        unsigned	TKIF                : 1;
    };
} PIR1bits @ 0x011;
#endif


// Register: EPIF0
volatile unsigned char           EPIF0               @ 0x014;
// bit and bitfield definitions

// Register: SPIDATA
volatile unsigned char           SPIDATA             @ 0x015;
// bit and bitfield definitions
// bit and bitfield definitions

// Register: SPICTRL
volatile unsigned char           SPICTRL             @ 0x016;
// bit and bitfield definitions
volatile bit SPIEN               @ ((unsigned)&SPICTRL*8)+0;
volatile bit TXBMT               @ ((unsigned)&SPICTRL*8)+1;
volatile bit NSSM0               @ ((unsigned)&SPICTRL*8)+2;
volatile bit NSSM1               @ ((unsigned)&SPICTRL*8)+3;
volatile bit RXOVRN              @ ((unsigned)&SPICTRL*8)+4;
volatile bit MODF                @ ((unsigned)&SPICTRL*8)+5;
volatile bit WCOL                @ ((unsigned)&SPICTRL*8)+6;
volatile bit SPIF                @ ((unsigned)&SPICTRL*8)+7 ;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	SPIEN               : 1;
        unsigned	TXBMT               : 1;
        unsigned	NSSM0               : 1;
        unsigned	NSSM1               : 1;
        unsigned	RXOVRN              : 1;
        unsigned	MODF                : 1;
        unsigned	WCOL                : 1;
        unsigned	SPIF                : 1;
    };
    struct {
        unsigned	                    : 2;
        unsigned	NSSM                : 2;
        unsigned	                    : 4;
    };
} SPICTRLbits @ 0x016;
#endif


// Register: SPICFG
volatile unsigned char           SPICFG             @ 0x017;
// bit and bitfield definitions
volatile bit RXBMT               @ ((unsigned)&SPICFG*8)+0;
volatile bit SRMT                @ ((unsigned)&SPICFG*8)+1;
volatile bit NSSVAL              @ ((unsigned)&SPICFG*8)+2;
volatile bit SLAS                @ ((unsigned)&SPICFG*8)+3;
volatile bit CPOL                @ ((unsigned)&SPICFG*8)+4;
volatile bit CPHA                @ ((unsigned)&SPICFG*8)+5;
volatile bit MSTEN               @ ((unsigned)&SPICFG*8)+6;
volatile bit BUSY                @ ((unsigned)&SPICFG*8)+7 ;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	RXBMT               : 1;
        unsigned	SRMT                : 1;
        unsigned	NSSVAL              : 1;
        unsigned	SLAS                : 1;
        unsigned	CPOL                : 1;
        unsigned	CPHA                : 1;
        unsigned	MSTEN               : 1;
        unsigned	BUSY                : 1;
    };
} SPICFGbits @ 0x017;
#endif
// Register: SPISCR
volatile unsigned char           SPISCR               @ 0x018;
// bit and bitfield definitions

// Register: SPICRCPOL
volatile unsigned int            SPICRCPOL            @ 0x019;

// Register: SPIRXCRC
volatile unsigned char           SPIRXCRC             @ 0x01A;
// bit and bitfield definitions
// Register: SPIRXCRC
volatile unsigned char           SPITXCRC             @ 0x01B;
// bit and bitfield definitions

// Register: SPIIER
volatile unsigned char           SPIIER               @ 0x01C;
// bit and bitfield definitions
volatile bit TXE                 @ ((unsigned)&SPIIER*8)+0;
volatile bit RXNE                @ ((unsigned)&SPIIER*8)+1;
volatile bit RXERR               @ ((unsigned)&SPIIER*8)+2;
volatile bit WAKUP               @ ((unsigned)&SPIIER*8)+3;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	TXE                 : 1;
        unsigned	RXNE                : 1;
        unsigned	RXERR               : 1;
        unsigned	WAKUP               : 1;
    };
} SPIIERbits @ 0x01C;
#endif 

// Register: SPICTRL2
volatile unsigned char           SPICTRL2               @ 0x01D;
// bit and bitfield definitions
volatile bit LSBFIRST            @ ((unsigned)&SPICTRL2*8)+0;
volatile bit CRCEN               @ ((unsigned)&SPICTRL2*8)+1;
volatile bit CRCNXT              @ ((unsigned)&SPICTRL2*8)+2;
volatile bit SSM                 @ ((unsigned)&SPICTRL2*8)+3;
volatile bit SSI                 @ ((unsigned)&SPICTRL2*8)+4;
volatile bit RXONLY              @ ((unsigned)&SPICTRL2*8)+5;
volatile bit BDOE                @ ((unsigned)&SPICTRL2*8)+6;
volatile bit BDM                 @ ((unsigned)&SPICTRL2*8)+7;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	LSBFIRST            : 1;
        unsigned	CRCEN               : 1;
        unsigned	CRCNXT              : 1;
        unsigned	SSM                 : 1;
        unsigned	SSI                 : 1;
        unsigned	RXONLY              : 1;
        unsigned	BDOE                : 1;
        unsigned	BDM                 : 1;
    };
} SPICTRL2bits @ 0x01D;
#endif

// Register: SPISTAT
volatile unsigned char           SPISTAT             @ 0x01E;
// bit and bitfield definitions
volatile bit CRCERR                 @ ((unsigned)&SPISTAT*8)+0;
volatile bit WKF                    @ ((unsigned)&SPISTAT*8)+1;
volatile bit STXBMT                 @ ((unsigned)&SPISTAT*8)+2;
volatile bit SRXBMT                 @ ((unsigned)&SPISTAT*8)+3;
volatile bit SBUSY                  @ ((unsigned)&SPISTAT*8)+4;
volatile bit SRXOVRN                @ ((unsigned)&SPISTAT*8)+5;
volatile bit SMODF                  @ ((unsigned)&SPISTAT*8)+6;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	CRCERR              : 1;
        unsigned	WKF                 : 1;
        unsigned	STXBMT              : 1;
        unsigned	SRXBMT              : 1;
        unsigned	SBUSY               : 1;
        unsigned	SRXOVRN             : 1;
        unsigned	SMODF               : 1;
    };
} SPISTATbits @ 0x01E;
#endif

// Register: ADDLY
volatile unsigned char           ADDLY             @ 0x01F;
// bit and bitfield definitions
//
// Special function register definitions: Bank 1
//

//--------------------------------------------------------------------------------------
// Register: TRISA
// PORTA Data Direction Control Register
volatile unsigned char           TRISA               @ 0x08C;
// bit and bitfield definitions
volatile bit TRISA0              @ ((unsigned)&TRISA*8)+0;
volatile bit TRISA1              @ ((unsigned)&TRISA*8)+1;
volatile bit TRISA2              @ ((unsigned)&TRISA*8)+2;
volatile bit TRISA3              @ ((unsigned)&TRISA*8)+3;
volatile bit TRISA4              @ ((unsigned)&TRISA*8)+4;
volatile bit TRISA5              @ ((unsigned)&TRISA*8)+5;
volatile bit TRISA6              @ ((unsigned)&TRISA*8)+6;
volatile bit TRISA7              @ ((unsigned)&TRISA*8)+7;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	TRISA0              : 1;
        unsigned	TRISA1              : 1;
        unsigned	TRISA2              : 1;
        unsigned	TRISA3              : 1;
        unsigned	TRISA4              : 1;
        unsigned	TRISA5              : 1;
        unsigned	TRISA6              : 1;
        unsigned	TRISA7              : 1;
    };
    struct {
        unsigned	TRISA               : 8;
    };
} TRISAbits @ 0x08C;
#endif

// Register: TRISB
// PORTB Data Direction Control Register
volatile unsigned char           TRISB               @ 0x08D;
// bit and bitfield definitions
volatile bit TRISB0              @ ((unsigned)&TRISB*8)+0;
volatile bit TRISB1              @ ((unsigned)&TRISB*8)+1;
volatile bit TRISB2              @ ((unsigned)&TRISB*8)+2;
volatile bit TRISB3              @ ((unsigned)&TRISB*8)+3;
volatile bit TRISB4              @ ((unsigned)&TRISB*8)+4;
volatile bit TRISB5              @ ((unsigned)&TRISB*8)+5;
volatile bit TRISB6              @ ((unsigned)&TRISB*8)+6;
volatile bit TRISB7              @ ((unsigned)&TRISB*8)+7;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	TRISB0              : 1;
        unsigned	TRISB1              : 1;
        unsigned	TRISB2              : 1;
        unsigned	TRISB3              : 1;
        unsigned	TRISB4              : 1;
        unsigned	TRISB5              : 1;
        unsigned	TRISB6              : 1;
        unsigned	TRISB7              : 1;
    };
    struct {
        unsigned	TRISB               : 8;
    };
} TRISBbits @ 0x08D;
#endif

// Register: TRISC
// PORTC Data Direction Control Register
volatile unsigned char           TRISC               @ 0x08E;
// bit and bitfield definitions
volatile bit TRISC0              @ ((unsigned)&TRISC*8)+0;
volatile bit TRISC1              @ ((unsigned)&TRISC*8)+1;
volatile bit TRISC2              @ ((unsigned)&TRISC*8)+2;
volatile bit TRISC3              @ ((unsigned)&TRISC*8)+3;
volatile bit TRISC4              @ ((unsigned)&TRISC*8)+4;
volatile bit TRISC5              @ ((unsigned)&TRISC*8)+5;
volatile bit TRISC6              @ ((unsigned)&TRISC*8)+6;
volatile bit TRISC7              @ ((unsigned)&TRISC*8)+7;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	TRISC0              : 1;
        unsigned	TRISC1              : 1;
        unsigned	TRISC2              : 1;
        unsigned	TRISC3              : 1;
        unsigned	TRISC4              : 1;
        unsigned	TRISC5              : 1;
        unsigned	TRISC6              : 1;
        unsigned	TRISC7              : 1;
    };
    struct {
        unsigned	TRISC               : 8;
    };
} TRISCbits @ 0x08E;
#endif

// Register: TRISD
volatile unsigned char           TRISD               @ 0x08F;
// bit and bitfield definitions
volatile bit TRISD0              @ ((unsigned)&TRISD*8)+0;
volatile bit TRISD1              @ ((unsigned)&TRISD*8)+1;
volatile bit TRISD2              @ ((unsigned)&TRISD*8)+2;
volatile bit TRISD3              @ ((unsigned)&TRISD*8)+3;
volatile bit TRISD4              @ ((unsigned)&TRISD*8)+4;
volatile bit TRISD5              @ ((unsigned)&TRISD*8)+5;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	TRISD0              : 1;
        unsigned	TRISD1              : 1;
        unsigned	TRISD2              : 1;
        unsigned	TRISE3              : 1;
        unsigned	TRISD4              : 1;
        unsigned	TRISD5              : 1;
    };
    struct {
        unsigned	TRISD               : 6;
    };
} TRISDbits @ 0x08F;
#endif

// Register: PIE1
// Peripheral LVDIErrupt Enable Register 1
volatile unsigned char           PIE1                @ 0x091;
// bit and bitfield definitions
volatile bit ADCIE              @ ((unsigned)&PIE1*8)+0;
volatile bit CKMIE              @ ((unsigned)&PIE1*8)+1;
volatile bit TKIE               @ ((unsigned)&PIE1*8)+2;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	ADCIE              : 1;
        unsigned	CKMIE              : 1;
        unsigned	TKIE               : 1;
    };
} PIE1bits @ 0x091;
#endif

// Register: EPIE0
// Peripheral LVDIErrupt Enable Register 3
volatile unsigned char           EPIE0                @ 0x094;
// bit and bitfield definitions

// Register: CKOCON
// Option Register
volatile unsigned char           CKOCON          @ 0x095;
// bit and bitfield definitions
volatile bit CCOEN               @ ((unsigned)&CKOCON*8)+0;
volatile bit CCOSEL0             @ ((unsigned)&CKOCON*8)+1;
volatile bit CCOSEL1             @ ((unsigned)&CKOCON*8)+2;
volatile bit CCOSEL2             @ ((unsigned)&CKOCON*8)+3;
volatile bit DTYSEL0             @ ((unsigned)&CKOCON*8)+4;
volatile bit DTYSEL1             @ ((unsigned)&CKOCON*8)+5;
volatile bit CCORDY              @ ((unsigned)&CKOCON*8)+6;
volatile bit SYSON               @ ((unsigned)&CKOCON*8)+7;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	CCOEN               : 1;
        unsigned	CCOSEL0             : 1;
        unsigned	CCOSEL1             : 1;
        unsigned	CCOSEL2             : 1;
        unsigned	DTYSEL0             : 1;
        unsigned	DTYSEL1             : 1;
        unsigned	CCORDY              : 1;
        unsigned	SYSON               : 1;
    };
    struct {
        unsigned	                    : 1;
        unsigned	CCOSEL              : 3;
        unsigned	DTYSEL              : 2;
        unsigned	                    : 2;
    };
} CKOCONbits @ 0x095;
#endif

// Register: PCON
// Power Control Register
volatile unsigned char           PCON                @ 0x096;
// bit and bitfield definitions
volatile bit nBORF                @ ((unsigned)&PCON*8)+0;
volatile bit nPORF                @ ((unsigned)&PCON*8)+1;
volatile bit nSRSTF               @ ((unsigned)&PCON*8)+2;
volatile bit nMCLRF               @ ((unsigned)&PCON*8)+3;
volatile bit IERRF                @ ((unsigned)&PCON*8)+4;
volatile bit EMCF                 @ ((unsigned)&PCON*8)+5;
volatile bit STKUNF               @ ((unsigned)&PCON*8)+6;
volatile bit STKOVF               @ ((unsigned)&PCON*8)+7;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	nBORF                : 1;
        unsigned	nPORF                : 1;
        unsigned	nSRSTF               : 1;
        unsigned	nMCLRF               : 1;
        unsigned	IERRF                : 1;
        unsigned	EMCF                 : 1;
        unsigned	STKUNF               : 1;
        unsigned	STKOVF               : 1;
    };
} PCONbits @ 0x096;
#endif

// Register: WDTCON
// Watchdog Timer Control Register
volatile unsigned char           WDTCON              @ 0x097;
// bit and bitfield definitions
volatile bit SWDTEN              @ ((unsigned)&WDTCON*8)+0;
volatile bit WDTPS0              @ ((unsigned)&WDTCON*8)+1;
volatile bit WDTPS1              @ ((unsigned)&WDTCON*8)+2;
volatile bit WDTPS2              @ ((unsigned)&WDTCON*8)+3;
volatile bit WDTPS3              @ ((unsigned)&WDTCON*8)+4;
volatile bit WDTPRE0             @ ((unsigned)&WDTCON*8)+5;
volatile bit WDTPRE1             @ ((unsigned)&WDTCON*8)+6;
volatile bit WDTPRE2             @ ((unsigned)&WDTCON*8)+7;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	SWDTEN              : 1;
        unsigned	WDTPS0              : 1;
        unsigned	WDTPS1              : 1;
        unsigned	WDTPS2              : 1;
        unsigned	WDTPS3              : 1;
        unsigned	WDTPRE0             : 1;
        unsigned	WDTPRE1             : 1;
        unsigned	WDTPRE2             : 1;
    };
    struct {
        unsigned	                    : 1;
        unsigned	WDTPS               : 4;
        unsigned	WDTPRE               : 3;
    };
} WDTCONbits @ 0x097;
#endif

// Register: OSCTUNE
// Oscillator Tuning Register
volatile unsigned char           OSCTUNE             @ 0x098;
// bit and bitfield definitions
volatile bit TUN0                @ ((unsigned)&OSCTUNE*8)+0;
volatile bit TUN1                @ ((unsigned)&OSCTUNE*8)+1;
volatile bit TUN2                @ ((unsigned)&OSCTUNE*8)+2;
volatile bit TUN3                @ ((unsigned)&OSCTUNE*8)+3;
volatile bit TUN4                @ ((unsigned)&OSCTUNE*8)+4;
volatile bit TUN5                @ ((unsigned)&OSCTUNE*8)+5;
volatile bit TUN6                @ ((unsigned)&OSCTUNE*8)+6;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	TUN0                : 1;
        unsigned	TUN1                : 1;
        unsigned	TUN2                : 1;
        unsigned	TUN3                : 1;
        unsigned	TUN4                : 1;
        unsigned	TUN5                : 1;
        unsigned	TUN6                : 1;
    };
    struct {
        unsigned	TUN                 : 7;
    };
} OSCTUNEbits @ 0x098;
#endif

// Register: OSCCON
// Oscillator Control Register
volatile unsigned char           OSCCON              @ 0x099;
// bit and bitfield definitions
volatile bit SCS                 @ ((unsigned)&OSCCON*8)+0;
volatile bit LTS                 @ ((unsigned)&OSCCON*8)+1;
volatile bit HTS                 @ ((unsigned)&OSCCON*8)+2;
volatile bit OSTS                @ ((unsigned)&OSCCON*8)+3;
volatile bit MCKCF0              @ ((unsigned)&OSCCON*8)+4;
volatile bit MCKCF1              @ ((unsigned)&OSCCON*8)+5;
volatile bit MCKCF2              @ ((unsigned)&OSCCON*8)+6;
volatile bit MCKCF3              @ ((unsigned)&OSCCON*8)+7;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	SCS                 : 1;
        unsigned	LTS                 : 1;
        unsigned	HTS                 : 1;
        unsigned	OSTS                : 1;
        unsigned	MCKCF0              : 1;
        unsigned	MCKCF1              : 1;
        unsigned	MCKCF2              : 1;
        unsigned	MCKCF3              : 1;
    };
    struct {
        unsigned	                    : 4;
        unsigned	MCKCF               : 4;
    };
} OSCCONbits @ 0x099;
#endif

// Register: PCKEN
// Oscillator Status Register
volatile unsigned char           PCKEN             @ 0x09A;
// bit and bitfield definitions
volatile bit ADCEN               @ ((unsigned)&PCKEN*8)+0;
volatile bit TIM1EN              @ ((unsigned)&PCKEN*8)+1;
volatile bit TIM2EN              @ ((unsigned)&PCKEN*8)+2;
volatile bit TIM4EN              @ ((unsigned)&PCKEN*8)+3;
volatile bit SPICKEN             @ ((unsigned)&PCKEN*8)+4;
volatile bit UARTEN              @ ((unsigned)&PCKEN*8)+5;
volatile bit I2CEN               @ ((unsigned)&PCKEN*8)+6;
volatile bit TKEN                @ ((unsigned)&PCKEN*8)+7;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	ADCEN               : 1;
        unsigned	TIM1EN              : 1;
        unsigned	TIM2EN              : 1;
        unsigned	TIM4EN              : 1;
        unsigned	SPICKEN             : 1;
        unsigned	UARTEN              : 1;
        unsigned	I2CEN               : 1;
        unsigned	TKEN                : 1;
    };
} PCKENbits @ 0x09A;
#endif
// bit and bitfield definitions

// Register: ADRESL
// A/D Result Register LSB
volatile unsigned char           ADRESL              @ 0x09B;
// bit and bitfield definitions

// Register: ADRESH
// A/D Result Register MSB
volatile unsigned char           ADRESH              @ 0x09C;
// bit and bitfield definitions

// Register: ADCON0
// Analog-to-Digital Control Register 0
volatile unsigned char           ADCON0              @ 0x09D;
// bit and bitfield definitions
volatile bit ADON                @ ((unsigned)&ADCON0*8)+0;
volatile bit GO                  @ ((unsigned)&ADCON0*8)+1;
volatile bit nDONE               @ ((unsigned)&ADCON0*8)+1;
volatile bit ADEX                @ ((unsigned)&ADCON0*8)+2;
volatile bit ADCAL               @ ((unsigned)&ADCON0*8)+3;
volatile bit CHS0                @ ((unsigned)&ADCON0*8)+4;
volatile bit CHS1                @ ((unsigned)&ADCON0*8)+5;
volatile bit CHS2                @ ((unsigned)&ADCON0*8)+6;
volatile bit CHS3                @ ((unsigned)&ADCON0*8)+7;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	ADON                : 1;
        unsigned	GO                  : 1;
        unsigned	ADEX                : 1;
        unsigned	ADCAL               : 1;
        unsigned	CHS0                : 1;
        unsigned	CHS1                : 1;
        unsigned	CHS2                : 1;
        unsigned	CHS3                : 1;
    };
    struct {
        unsigned	                    : 1;
        unsigned	nDONE               : 1;
    };
    struct {
        unsigned	                    : 4;
        unsigned	CHS                 : 4;
    };
} ADCON0bits @ 0x09D;
#endif

// Register: ADCON1
// Analog-to-Digital Control Register 1
volatile unsigned char           ADCON1              @ 0x09E;
// bit and bitfield definitions
volatile bit ADPREF0             @ ((unsigned)&ADCON1*8)+0;
volatile bit ADPREF1             @ ((unsigned)&ADCON1*8)+1;
volatile bit ADNREF0             @ ((unsigned)&ADCON1*8)+2;
volatile bit ADNREF1             @ ((unsigned)&ADCON1*8)+3;
volatile bit ADCS0               @ ((unsigned)&ADCON1*8)+4;
volatile bit ADCS1               @ ((unsigned)&ADCON1*8)+5;
volatile bit ADCS2               @ ((unsigned)&ADCON1*8)+6;
volatile bit ADFM                @ ((unsigned)&ADCON1*8)+7;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	ADPREF0             : 1;
        unsigned	ADPREF1             : 1;
        unsigned	ADNREF0             : 1;
        unsigned	ADNREF1             : 1;
        unsigned	ADCS0               : 1;
        unsigned	ADCS1               : 1;
        unsigned	ADCS2               : 1;
        unsigned	ADFM                : 1;
    };
    struct {
        unsigned	ADPREF              : 2;
        unsigned	ADNREF              : 2;
        unsigned	ADCS                : 3;
    };
} ADCON1bits @ 0x09E;
#endif

// Register: ADCON2
// Analog-to-Digital Control Register 1
volatile unsigned char           ADCON2              @ 0x09F;
// bit and bitfield definitions
volatile bit ETGSEL0             @ ((unsigned)&ADCON2*8)+0;
volatile bit ETGSEL1             @ ((unsigned)&ADCON2*8)+1;
volatile bit ETGSEL2             @ ((unsigned)&ADCON2*8)+2;
volatile bit ADDLY8              @ ((unsigned)&ADCON2*8)+3;
volatile bit ETGTYP0             @ ((unsigned)&ADCON2*8)+4;
volatile bit ETGTYP1             @ ((unsigned)&ADCON2*8)+5;
volatile bit ADINTREF0           @ ((unsigned)&ADCON2*8)+6;
volatile bit ADINTREF1           @ ((unsigned)&ADCON2*8)+7;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	ETGSEL0             : 1;
        unsigned	ETGSEL1             : 1;
        unsigned	ETGSEL2             : 1;
        unsigned	ADDLY8              : 1;
        unsigned	ETGTYP0             : 1;
        unsigned	ETGTYP1             : 1;
        unsigned	ADINTREF0           : 1;
        unsigned	ADINTREF1           : 1;
    };
    struct {
        unsigned	ETGSEL              : 3;
        unsigned	                    : 1;
        unsigned	ETGTYP              : 2;
        unsigned	ADINTREF            : 2;
    };
} ADCON2bits @ 0x09F;
#endif

//
// Special function register definitions: Bank 2
//


// Register: LATA
volatile unsigned char           LATA                @ 0x10C;
// bit and bitfield definitions
volatile bit LATA0               @ ((unsigned)&LATA*8)+0;
volatile bit LATA1               @ ((unsigned)&LATA*8)+1;
volatile bit LATA2               @ ((unsigned)&LATA*8)+2;
volatile bit LATA3               @ ((unsigned)&LATA*8)+3;
volatile bit LATA4               @ ((unsigned)&LATA*8)+4;
volatile bit LATA5               @ ((unsigned)&LATA*8)+5;
volatile bit LATA6               @ ((unsigned)&LATA*8)+6;
volatile bit LATA7               @ ((unsigned)&LATA*8)+7;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	LATA0               : 1;
        unsigned	LATA1               : 1;
        unsigned	LATA2               : 1;
        unsigned	LATA3               : 1;
        unsigned	LATA4               : 1;
        unsigned	LATA5               : 1;
        unsigned	LATA6               : 1;
        unsigned	LATA7               : 1;
    };
    struct {
        unsigned	LATA               : 8;
    };
} LATAbits @ 0x10C;
#endif

// Register: LATB
volatile unsigned char           LATB                @ 0x10D;
// bit and bitfield definitions
volatile bit LATB0               @ ((unsigned)&LATB*8)+0;
volatile bit LATB1               @ ((unsigned)&LATB*8)+1;
volatile bit LATB2               @ ((unsigned)&LATB*8)+2;
volatile bit LATB3               @ ((unsigned)&LATB*8)+3;
volatile bit LATB4               @ ((unsigned)&LATB*8)+4;
volatile bit LATB5               @ ((unsigned)&LATB*8)+5;
volatile bit LATB6               @ ((unsigned)&LATB*8)+6;
volatile bit LATB7               @ ((unsigned)&LATB*8)+7;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	LATB0               : 1;
        unsigned	LATB1               : 1;
        unsigned	LATB2               : 1;
        unsigned	LATB3               : 1;
        unsigned	LATB4               : 1;
        unsigned	LATB5               : 1;
        unsigned	LATB6               : 1;
        unsigned	LATB7               : 1;
    };
    struct {
        unsigned	LATB               : 8;
    };
} LATBbits @ 0x10D;
#endif

// Register: LATC
volatile unsigned char           LATC                @ 0x10E;
// bit and bitfield definitions
volatile bit LATC0               @ ((unsigned)&LATC*8)+0;
volatile bit LATC1               @ ((unsigned)&LATC*8)+1;
volatile bit LATC2               @ ((unsigned)&LATC*8)+2;
volatile bit LATC3               @ ((unsigned)&LATC*8)+3;
volatile bit LATC4               @ ((unsigned)&LATC*8)+4;
volatile bit LATC5               @ ((unsigned)&LATC*8)+5;
volatile bit LATC6               @ ((unsigned)&LATC*8)+6;
volatile bit LATC7               @ ((unsigned)&LATC*8)+7;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	LATC0               : 1;
        unsigned	LATC1               : 1;
        unsigned	LATC2               : 1;
        unsigned	LATC3               : 1;
        unsigned	LATC4               : 1;
        unsigned	LATC5               : 1;
        unsigned	LATC6               : 1;
        unsigned	LATC7               : 1;
    };
    struct {
        unsigned	LATC               : 8;
    };
} LATCbits @ 0x10E;
#endif

// Register: LATD
volatile unsigned char           LATD                @ 0x10F;
// bit and bitfield definitions
volatile bit LATD0               @ ((unsigned)&LATD*8)+0;
volatile bit LATD1               @ ((unsigned)&LATD*8)+1;
volatile bit LATD2               @ ((unsigned)&LATD*8)+2;
volatile bit LATD3               @ ((unsigned)&LATD*8)+3;
volatile bit LATD4               @ ((unsigned)&LATD*8)+4;
volatile bit LATD5               @ ((unsigned)&LATD*8)+5;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	LATD0               : 1;
        unsigned	LATD1               : 1;
        unsigned	LATD2               : 1;
        unsigned	LATD3               : 1;
        unsigned	LATD4               : 1;
        unsigned	LATD5               : 1;
    };
    struct {
        unsigned	LATD               : 6;
    };
} LATDbits @ 0x10F;
#endif

// Register: TIM4CR1
volatile unsigned char           TIM4CR1             @ 0x111;
// bit and bitfield definitions
volatile bit T4CEN                 @ ((unsigned)&TIM4CR1*8)+0;
volatile bit T4UDIS                @ ((unsigned)&TIM4CR1*8)+1;
volatile bit T4URS                 @ ((unsigned)&TIM4CR1*8)+2;
volatile bit T4OPM                 @ ((unsigned)&TIM4CR1*8)+3;
volatile bit T4CKS0                @ ((unsigned)&TIM4CR1*8)+4;
volatile bit T4CKS1                @ ((unsigned)&TIM4CR1*8)+5;
volatile bit T4ARPE                @ ((unsigned)&TIM4CR1*8)+7;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	T4CEN                 : 1;
        unsigned	T4UDIS                : 1;
        unsigned	T4URS                 : 1;
        unsigned	T4OPM                 : 1;
        unsigned	T4CKS0                : 1;
        unsigned	T4CKS1                : 1;
        unsigned	                      : 1;
        unsigned	T4ARPE                : 1;
    };
} TIM4CR1bits @ 0x111;
#endif

// Register: TIM4IER
volatile unsigned char           TIM4IER             @ 0x112;
// bit and bitfield definitions
volatile bit T4UIE                @ ((unsigned)&TIM4IER*8)+0;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	T4UIE              : 1; 
    };
} TIM4IERbits @ 0x112;
#endif

// Register: TIM4SR
volatile unsigned char           TIM4SR             @ 0x113;
// bit and bitfield definitions
volatile bit T4UIF              @ ((unsigned)&TIM4SR*8)+0;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	T4UIF              : 1;
    };
} TIM4SRbits @ 0x113;
#endif

// Register: TIM4EGR
// Comparator Output Register
volatile unsigned char           TIM4EGR               @ 0x114;
// bit and bitfield definitions
volatile bit T4UG              @ ((unsigned)&TIM4EGR*8)+0;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	T4UG              : 1;
    };
} TIM4EGRbits @ 0x114;
#endif

// Register: TIM4CNTR
// Brown-out Reset Control Register
volatile unsigned char           TIM4CNTR              @ 0x115;
// bit and bitfield definitions

// Register: TIM4PSCR 
// Voltage Reference Control Register 0
volatile unsigned char           TIM4PSCR              @ 0x116;
// bit and bitfield definitions
volatile bit T4PSC0              @ ((unsigned)&TIM4PSCR*8)+0;
volatile bit T4PSC1              @ ((unsigned)&TIM4PSCR*8)+1;
volatile bit T4PSC2              @ ((unsigned)&TIM4PSCR*8)+2;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	T4PSC0                : 1;
        unsigned	T4PSC1                : 1;
        unsigned	T4PSC2                : 1;
    };
    struct {
        unsigned	T4PSC                 : 3;
    };
} TIM4PSCRbits @ 0x116;
#endif

// Register: TIM4ARR
// Brown-out Reset Control Register
volatile unsigned char           TIM4ARR              @ 0x117;
// bit and bitfield definitions

// Register: EPS0
// Voltage Reference Control Register 1
volatile unsigned char           EPS0             @ 0x118;
// bit and bitfield definitions

// Register: EPS1
// Voltage Reference Control Register 1
volatile unsigned char           EPS1             @ 0x119;
// bit and bitfield definitions

// Register: PSRC0
// SR Latch Control Register 0
volatile unsigned char           PSRC0              @ 0x11A;
// bit and bitfield definitions

// Register: PSRC1
// SR Latch Control Register 1
volatile unsigned char           PSRC1              @ 0x11B;
// bit and bitfield definitions

// Register: MISC0
// SR Latch Control Register 1
volatile unsigned char           MISC0              @ 0x11C;
// bit and bitfield definitions
volatile bit WCKSEL0              @ ((unsigned)&MISC0*8)+0;
volatile bit WCKSEL1              @ ((unsigned)&MISC0*8)+1;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	WCKSEL0                : 1;
        unsigned	WCKSEL1                : 1;
    };
    struct {
        unsigned	WCKSEL                 : 2;
    };
} MISC0bits @ 0x11C;
#endif
// Register: AFP2
// SR Latch Control Register 0
volatile unsigned char           AFP2              @ 0x11D;
// bit and bitfield definitions
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	AFP2               : 5;
    };
} AFP2bits @ 0x11D;
#endif

// Register: ITYPE0
// SR Latch Control Register 0
volatile unsigned char           ITYPE0              @ 0x11E;
// bit and bitfield definitions


// Register: PSRC1
// SR Latch Control Register 1
volatile unsigned char           ITYPE1              @ 0x11F;
// bit and bitfield definitions


//
// Special function register definitions: Bank 3
//


// Register: WPUA
volatile unsigned char           WPUA              @ 0x18C;
// bit and bitfield definitions
volatile bit WPUA0               @ ((unsigned)&WPUA*8)+0;
volatile bit WPUA1               @ ((unsigned)&WPUA*8)+1;
volatile bit WPUA2               @ ((unsigned)&WPUA*8)+2;
volatile bit WPUA3               @ ((unsigned)&WPUA*8)+3;
volatile bit WPUA4               @ ((unsigned)&WPUA*8)+4;
volatile bit WPUA5               @ ((unsigned)&WPUA*8)+5;
volatile bit WPUA6               @ ((unsigned)&WPUA*8)+6;
volatile bit WPUA7               @ ((unsigned)&WPUA*8)+7;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	WPUA0               : 1;
        unsigned	WPUA1               : 1;
        unsigned	WPUA2               : 1;
        unsigned	WPUA3               : 1;
        unsigned	WPUA4               : 1;
        unsigned	WPUA5               : 1;
        unsigned	WPUA6               : 1;
        unsigned	WPUA7               : 1;
    };
    struct {
        unsigned	WPUA               : 8;
    };
} WPUAbits @ 0x18C;
#endif

// Register: WPUB
volatile unsigned char           WPUB              @ 0x18D;
// bit and bitfield definitions
volatile bit WPUB0               @ ((unsigned)&WPUB*8)+0;
volatile bit WPUB1               @ ((unsigned)&WPUB*8)+1;
volatile bit WPUB2               @ ((unsigned)&WPUB*8)+2;
volatile bit WPUB3               @ ((unsigned)&WPUB*8)+3;
volatile bit WPUB4               @ ((unsigned)&WPUB*8)+4;
volatile bit WPUB5               @ ((unsigned)&WPUB*8)+5;
volatile bit WPUB6               @ ((unsigned)&WPUB*8)+6;
volatile bit WPUB7               @ ((unsigned)&WPUB*8)+7;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	WPUB0               : 1;
        unsigned	WPUB1               : 1;
        unsigned	WPUB2               : 1;
        unsigned	WPUB3               : 1;
        unsigned	WPUB4               : 1;
        unsigned	WPUB5               : 1;
        unsigned	WPUB6               : 1;
        unsigned	WPUB7               : 1;
    };
    struct {
        unsigned	WPUB               : 8;
    };
} WPUBbits @ 0x18D;
#endif

// Register: WPUC
volatile unsigned char           WPUC              @ 0x18E;
// bit and bitfield definitions
volatile bit WPUC0               @ ((unsigned)&WPUC*8)+0;
volatile bit WPUC1               @ ((unsigned)&WPUC*8)+1;
volatile bit WPUC2               @ ((unsigned)&WPUC*8)+2;
volatile bit WPUC3               @ ((unsigned)&WPUC*8)+3;
volatile bit WPUC4               @ ((unsigned)&WPUC*8)+4;
volatile bit WPUC5               @ ((unsigned)&WPUC*8)+5;
volatile bit WPUC6               @ ((unsigned)&WPUC*8)+6;
volatile bit WPUC7               @ ((unsigned)&WPUC*8)+7;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	WPUC0               : 1;
        unsigned	WPUC1               : 1;
        unsigned	WPUC2               : 1;
        unsigned	WPUC3               : 1;
        unsigned	WPUC4               : 1;
        unsigned	WPUC5               : 1;
        unsigned	WPUC6               : 1;
        unsigned	WPUC7               : 1;
    };
    struct {
        unsigned	WPUC               : 8;
    };
} WPUCbits @ 0x18E;
#endif

// Register: WPUD
volatile unsigned char           WPUD              @ 0x18F;
// bit and bitfield definitions
volatile bit WPUD0               @ ((unsigned)&WPUD*8)+0;
volatile bit WPUD1               @ ((unsigned)&WPUD*8)+1;
volatile bit WPUD2               @ ((unsigned)&WPUD*8)+2;
volatile bit WPUD3               @ ((unsigned)&WPUD*8)+3;
volatile bit WPUD4               @ ((unsigned)&WPUD*8)+4;
volatile bit WPUD5               @ ((unsigned)&WPUD*8)+5;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	WPUD0               : 1;
        unsigned	WPUD1               : 1;
        unsigned	WPUD2               : 1;
        unsigned	WPUD3               : 1;
        unsigned	WPUD4               : 1;
        unsigned	WPUD5               : 1;
    };
    struct {
        unsigned	WPUD               : 6;
    };
} WPUDbits @ 0x18F;
#endif

// Register: EEADRL
volatile unsigned char           EEADRL              @ 0x191;
// bit and bitfield definitions

// Register: EEADRH
volatile unsigned char           EEADRH              @ 0x192;
// bit and bitfield definitions
volatile bit EEADRH0               @ ((unsigned)&EEADRH*8)+0;
volatile bit EEADRH1               @ ((unsigned)&EEADRH*8)+1;
volatile bit EEADRH2               @ ((unsigned)&EEADRH*8)+2;
volatile bit EEADRH3               @ ((unsigned)&EEADRH*8)+3;
volatile bit EEADRH4               @ ((unsigned)&EEADRH*8)+4;
volatile bit EEADRH5               @ ((unsigned)&EEADRH*8)+5;
volatile bit EEADRH6               @ ((unsigned)&EEADRH*8)+6;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	EEADRH0             : 1;
        unsigned	EEADRH1             : 1;
        unsigned	EEADRH2             : 1;
        unsigned	EEADRH3             : 1;
        unsigned	EEADRH4             : 1;
        unsigned	EEADRH5             : 1;
        unsigned	EEADRH6             : 1;
    };
    struct {
        unsigned	EEADRH              : 7;
    };
} EEADRHbits @ 0x192;
#endif

// Register: EEDATL
volatile unsigned char           EEDATL              @ 0x193;

// Register: EEDATH
volatile unsigned char           EEDATH              @ 0x194;
// bit and bitfield definitions
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	EEDATH0             : 1;
        unsigned	EEDATH1             : 1;
        unsigned	EEDATH2             : 1;
        unsigned	EEDATH3             : 1;
        unsigned	EEDATH4             : 1;
        unsigned	EEDATH5             : 1;
    };
    struct {
        unsigned	EEDATH              : 6;
    };
} EEDATHbits @ 0x194;
#endif

// Register: EECON1
volatile unsigned char           EECON1              @ 0x195;
// bit and bitfield definitions
volatile bit RD                  @ ((unsigned)&EECON1*8)+0;
volatile bit WR                  @ ((unsigned)&EECON1*8)+1;
volatile bit WREN                @ ((unsigned)&EECON1*8)+2;
volatile bit WRERR               @ ((unsigned)&EECON1*8)+3;
volatile bit FERAE               @ ((unsigned)&EECON1*8)+4; 
volatile bit CFGS                @ ((unsigned)&EECON1*8)+6;
volatile bit EEPGD               @ ((unsigned)&EECON1*8)+7;

volatile bit FREE                @ ((unsigned)&EECON1*8)+4; 
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	RD                  : 1;
        unsigned	WR                  : 1;
        unsigned	WREN                : 1;
        unsigned	WRERR               : 1;
        unsigned	FERAE               : 1;
        unsigned	                    : 1;
        unsigned	CFGS                : 1;
        unsigned	EEPGD               : 1;
    };
 //   struct {
 //       unsigned	                    : 1;
 //       unsigned	                    : 1;
 //       unsigned	                    : 1;
 //       unsigned	                    : 1;
 //       unsigned	FREE                : 1;
 //   };
} EECON1bits @ 0x195;
#endif

// Register: EECON2
volatile unsigned char           EECON2              @ 0x196;
// bit and bitfield definitions

// Register: ANSELA
volatile unsigned char           ANSELA              @ 0x197;
// bit and bitfield definitions
// Register: EECON3
volatile unsigned char           EECON3              @ 0x198;
// bit and bitfield definitions
volatile bit DRDEN               @ ((unsigned)&EECON3*8)+0;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	DRDEN                  : 1;
    };
} EECON3bits @ 0x198;
#endif

// Register: LVDCON
volatile unsigned char           LVDCON               @ 0x199;
// bit and bitfield definitions
volatile bit LVDL0               @ ((unsigned)&LVDCON*8)+0;
volatile bit LVDL1               @ ((unsigned)&LVDCON*8)+1;
volatile bit LVDL2               @ ((unsigned)&LVDCON*8)+2;
volatile bit LVDW                @ ((unsigned)&LVDCON*8)+3;
volatile bit LVDEN               @ ((unsigned)&LVDCON*8)+4; 
volatile bit LVDM                @ ((unsigned)&LVDCON*8)+6;
volatile bit SLVREN              @ ((unsigned)&LVDCON*8)+7;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	LVDL0               : 1;
        unsigned	LVDL1               : 1;
        unsigned	LVDL2               : 1;
        unsigned	LVDW                : 1;
        unsigned	LVDEN               : 1;
        unsigned	                    : 1;
        unsigned	LVDM                : 1;
        unsigned	SLVREN              : 1;
        	
    };
    struct {
        unsigned	LVDL                : 3;
    };
} LVDCONbits @ 0x199;
#endif

// Register: PSINK0
volatile unsigned char           PSINK0               @ 0x19A;
// bit and bitfield definitions

// Register: PSINK1
volatile unsigned char           PSINK1              @ 0x19B;

// Register: PSINK2
volatile unsigned char           PSINK2              @ 0x19C;
// bit and bitfield definitions

// Register: PSINK3
// Receive Status and Control Register
volatile unsigned char           PSINK3               @ 0x19D;
// bit and bitfield definitions
volatile bit PSINK30               @ ((unsigned)&PSINK3*8)+0;
volatile bit PSINK31               @ ((unsigned)&PSINK3*8)+1;
volatile bit PSINK32               @ ((unsigned)&PSINK3*8)+2;
volatile bit PSINK33               @ ((unsigned)&PSINK3*8)+3;
volatile bit PSINK34               @ ((unsigned)&PSINK3*8)+4;
volatile bit PSINK35               @ ((unsigned)&PSINK3*8)+5;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	PSINK30               : 1;
        unsigned	PSINK31               : 1;
        unsigned	PSINK32               : 1;
        unsigned	PSINK33               : 1;
        unsigned	PSINK34               : 1;
        unsigned	PSINK35               : 1;
    };
    struct {
        unsigned	PSINK3                : 6;
    };
} PSINK3bits @ 0x19D;
#endif

// Register: AFP0
// Transmit Status and Control Register
volatile unsigned char           AFP0               @ 0x19E;
// bit and bitfield definitions

// Register: AFP1
// Baud Rate Control Register
volatile unsigned char           AFP1               @ 0x19F;
// bit and bitfield definitions
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	AFP1               : 7;
    };
} AFP1bits @ 0x19F;
#endif

//
// Special function register definitions: Bank 4
//

// Register: WPDA
volatile unsigned char           WPDA                @ 0x20C;
// bit and bitfield definitions
volatile bit WPDA0               @ ((unsigned)&WPDA*8)+0;
volatile bit WPDA1               @ ((unsigned)&WPDA*8)+1;
volatile bit WPDA2               @ ((unsigned)&WPDA*8)+2;
volatile bit WPDA3               @ ((unsigned)&WPDA*8)+3;
volatile bit WPDA4               @ ((unsigned)&WPDA*8)+4;
volatile bit WPDA5               @ ((unsigned)&WPDA*8)+5;
volatile bit WPDA6               @ ((unsigned)&WPDA*8)+6;
volatile bit WPDA7               @ ((unsigned)&WPDA*8)+7;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	WPDA0               : 1;
        unsigned	WPDA1               : 1;
        unsigned	WPDA2               : 1;
        unsigned	WPDA3               : 1;
        unsigned	WPDA4               : 1;
        unsigned	WPDA5               : 1;
        unsigned	WPDA6               : 1;
        unsigned	WPDA7               : 1;
    };
    struct {
        unsigned	WPDA                : 8;
    };
} WPDAbits @ 0x20C;
#endif


// Register: WPDB
volatile unsigned char           WPDB                @ 0x20D;
// bit and bitfield definitions
volatile bit WPDB0               @ ((unsigned)&WPDB*8)+0;
volatile bit WPDB1               @ ((unsigned)&WPDB*8)+1;
volatile bit WPDB2               @ ((unsigned)&WPDB*8)+2;
volatile bit WPDB3               @ ((unsigned)&WPDB*8)+3;
volatile bit WPDB4               @ ((unsigned)&WPDB*8)+4;
volatile bit WPDB5               @ ((unsigned)&WPDB*8)+5;
volatile bit WPDB6               @ ((unsigned)&WPDB*8)+6;
volatile bit WPDB7               @ ((unsigned)&WPDB*8)+7;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	WPDB0               : 1;
        unsigned	WPDB1               : 1;
        unsigned	WPDB2               : 1;
        unsigned	WPDB3               : 1;
        unsigned	WPDB4               : 1;
        unsigned	WPDB5               : 1;
        unsigned	WPDB6               : 1;
        unsigned	WPDB7               : 1;
    };
    struct {
        unsigned	WPDB                : 8;
    };
} WPDBbits @ 0x20D;
#endif

// Register: WPDC
volatile unsigned char           WPDC                @ 0x20E;
// bit and bitfield definitions
volatile bit WPDC0               @ ((unsigned)&WPDC*8)+0;
volatile bit WPDC1               @ ((unsigned)&WPDC*8)+1;
volatile bit WPDC2               @ ((unsigned)&WPDC*8)+2;
volatile bit WPDC3               @ ((unsigned)&WPDC*8)+3;
volatile bit WPDC4               @ ((unsigned)&WPDC*8)+4;
volatile bit WPDC5               @ ((unsigned)&WPDC*8)+5;
volatile bit WPDC6               @ ((unsigned)&WPDC*8)+6;
volatile bit WPDC7               @ ((unsigned)&WPDC*8)+7;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	WPDC0               : 1;
        unsigned	WPDC1               : 1;
        unsigned	WPDC2               : 1;
        unsigned	WPDC3               : 1;
        unsigned	WPDC4               : 1;
        unsigned	WPDC5               : 1;
        unsigned	WPDC6               : 1;
        unsigned	WPDC7               : 1;
    };
    struct {
        unsigned	WPDC                : 8;
    };
} WPDCbits @ 0x20E;
#endif


// Register: WPDD
volatile unsigned char           WPDD                @ 0x20F;
// bit and bitfield definitions
volatile bit WPDD0               @ ((unsigned)&WPDD*8)+0;
volatile bit WPDD1               @ ((unsigned)&WPDD*8)+1;
volatile bit WPDD2               @ ((unsigned)&WPDD*8)+2;
volatile bit WPDD3               @ ((unsigned)&WPDD*8)+3;
volatile bit WPDD4               @ ((unsigned)&WPDD*8)+4;
volatile bit WPDD5               @ ((unsigned)&WPDD*8)+5;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	WPDD0               : 1;
        unsigned	WPDD1               : 1;
        unsigned	WPDD2               : 1;
        unsigned	WPDD3               : 1;
        unsigned	WPDD4               : 1;
        unsigned	WPDD5               : 1;
    };
    struct {
        unsigned	WPDD                : 6;
    };
} WPDDbits @ 0x20F;
#endif


// Register: TIM1CR1
volatile unsigned char           TIM1CR1              @ 0x211;
// bit and bitfield definitions
volatile bit T1CEN                 @ ((unsigned)&TIM1CR1*8)+0;
volatile bit T1UDIS                @ ((unsigned)&TIM1CR1*8)+1;
volatile bit T1URS                 @ ((unsigned)&TIM1CR1*8)+2;
volatile bit T1OPM                 @ ((unsigned)&TIM1CR1*8)+3;
volatile bit T1DIR                 @ ((unsigned)&TIM1CR1*8)+4;
volatile bit T1CMS0                @ ((unsigned)&TIM1CR1*8)+5;
volatile bit T1CMS1                @ ((unsigned)&TIM1CR1*8)+6;
volatile bit T1ARPE                @ ((unsigned)&TIM1CR1*8)+7;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	T1CEN                 : 1;
        unsigned	T1UDIS                : 1;
        unsigned	T1URS                 : 1;
        unsigned	T1OPM                 : 1;
        unsigned	T1DIR                 : 1;
        unsigned	T1CMS0                : 1;
        unsigned	T1CMS1                : 1;
        unsigned	T1ARPE                : 1;
    };
    struct {
        unsigned	                    : 5;
        unsigned	T1CMS               : 2;
    };
} TIM1CR1bits @ 0x211;
#endif


// Register: TIM1SMCR
volatile unsigned char           TIM1SMCR             @ 0x213;
// bit and bitfield definitions
volatile bit T1SMS0                @ ((unsigned)&TIM1SMCR*8)+0;
volatile bit T1SMS1                @ ((unsigned)&TIM1SMCR*8)+1;
volatile bit T1SMS2                @ ((unsigned)&TIM1SMCR*8)+2;
volatile bit T1TS0                 @ ((unsigned)&TIM1SMCR*8)+4;
volatile bit T1TS1                 @ ((unsigned)&TIM1SMCR*8)+5;
volatile bit T1TS2                 @ ((unsigned)&TIM1SMCR*8)+6;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	T1SMS0                : 1;
        unsigned	T1SMS1                : 1;
        unsigned	T1SMS2                : 1;
        unsigned	                      : 1;
        unsigned	T1TS0                 : 1;
        unsigned	T1TS1                 : 1;
        unsigned	T1TS2                 : 1;
    };
    struct {
        unsigned	T1SMS                 : 3;
        unsigned	                      : 1;
        unsigned	T1TS                  : 3;
    };
} TIM1SMCRbits @ 0x213;
#endif


// Register: TIM1IER
volatile unsigned char           TIM1IER             @ 0x215;
// bit and bitfield definitions
volatile bit T1UIE                 @ ((unsigned)&TIM1IER*8)+0;
volatile bit T1CC1IE               @ ((unsigned)&TIM1IER*8)+1;
volatile bit T1CC2IE               @ ((unsigned)&TIM1IER*8)+2;
volatile bit T1CC3IE               @ ((unsigned)&TIM1IER*8)+3;
volatile bit T1CC4IE               @ ((unsigned)&TIM1IER*8)+4;
volatile bit T1TIE                 @ ((unsigned)&TIM1IER*8)+6;
volatile bit T1BIE                 @ ((unsigned)&TIM1IER*8)+7;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	T1UIE                 : 1;
        unsigned	T1CC1IE               : 1;
        unsigned	T1CC2IE               : 1;
        unsigned	T1CC3IE               : 1;
        unsigned	T1CC4IE               : 1;
        unsigned	                      : 1;
        unsigned	T1TIE                 : 1;
        unsigned	T1BIE                 : 1;
    };
} TIM1IERbits @ 0x215;
#endif

// Register: TIM1SR1
volatile unsigned char           TIM1SR1             @ 0x216;
// bit and bitfield definitions
volatile bit T1UIF               @ ((unsigned)&TIM1SR1*8)+0;
volatile bit T1CC1IF             @ ((unsigned)&TIM1SR1*8)+1;
volatile bit T1CC2IF             @ ((unsigned)&TIM1SR1*8)+2;
volatile bit T1CC3IF             @ ((unsigned)&TIM1SR1*8)+3;
volatile bit T1CC4IF             @ ((unsigned)&TIM1SR1*8)+4;
volatile bit T1TIF               @ ((unsigned)&TIM1SR1*8)+6;
volatile bit T1BIF               @ ((unsigned)&TIM1SR1*8)+7;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	T1UIF                 : 1;
        unsigned	T1CC1IF               : 1;
        unsigned	T1CC2IF               : 1;
        unsigned	T1CC3IF               : 1;
        unsigned	T1CC4IF               : 1;
        unsigned	                      : 1;
        unsigned	T1TIF                 : 1;
        unsigned	T1BIF                 : 1;
    };
} TIM1SR1bits @ 0x216;
#endif

// Register: TIM1SR2
volatile unsigned char           TIM1SR2             @ 0x217;
// bit and bitfield definitions
volatile bit T1CC1OF               @ ((unsigned)&TIM1SR2*8)+1;
volatile bit T1CC2OF               @ ((unsigned)&TIM1SR2*8)+2;
volatile bit T1CC3OF               @ ((unsigned)&TIM1SR2*8)+3;
volatile bit T1CC4OF               @ ((unsigned)&TIM1SR2*8)+4;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	                      : 1;
        unsigned	T1CC1OF               : 1;
        unsigned	T1CC2OF               : 1;
        unsigned	T1CC3OF               : 1;
        unsigned	T1CC4OF               : 1;
    };
} TIM1SR2bits @ 0x217;
#endif

// Register: TIM1EGR
volatile unsigned char           TIM1EGR             @ 0x218;
// bit and bitfield definitions
volatile bit T1CC1G               @ ((unsigned)&TIM1EGR*8)+1;
volatile bit T1CC2G               @ ((unsigned)&TIM1EGR*8)+2;
volatile bit T1CC3G               @ ((unsigned)&TIM1EGR*8)+3;
volatile bit T1CC4G               @ ((unsigned)&TIM1EGR*8)+4;
volatile bit T1BG                 @ ((unsigned)&TIM1EGR*8)+7;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	                     : 1;
        unsigned	T1CC1G               : 1;
        unsigned	T1CC2G               : 1;
        unsigned	T1CC3G               : 1;
        unsigned	T1CC4G               : 1;
        unsigned	                     : 1;
        unsigned	                     : 1;
        unsigned	T1BG                 : 1;
    };
} TIM1EGRbits @ 0x218;
#endif

// Register: TIM1CCMR1
volatile unsigned char           TIM1CCMR1             @ 0x219;
// bit and bitfield definitions
volatile bit T1CC1S0              @ ((unsigned)&TIM1CCMR1*8)+0;
volatile bit T1CC1S1              @ ((unsigned)&TIM1CCMR1*8)+1;
volatile bit T1OC1PE              @ ((unsigned)&TIM1CCMR1*8)+3;
volatile bit T1OC1M0              @ ((unsigned)&TIM1CCMR1*8)+4;
volatile bit T1OC1M1              @ ((unsigned)&TIM1CCMR1*8)+5;
volatile bit T1OC1M2              @ ((unsigned)&TIM1CCMR1*8)+6;

volatile bit T1IC1PSC0            @ ((unsigned)&TIM1CCMR1*8)+2;
volatile bit T1IC1PSC1            @ ((unsigned)&TIM1CCMR1*8)+3;
volatile bit T1IC1F0              @ ((unsigned)&TIM1CCMR1*8)+4;
volatile bit T1IC1F1              @ ((unsigned)&TIM1CCMR1*8)+5;
volatile bit T1IC1F2              @ ((unsigned)&TIM1CCMR1*8)+6;
volatile bit T1IC1F3              @ ((unsigned)&TIM1CCMR1*8)+7;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	T1CC1S0               : 1;
        unsigned	T1CC1S1               : 1;
        unsigned	                      : 1;  
        unsigned	T1OC1PE               : 1;
        unsigned	T1OC1M0               : 1;
        unsigned	T1OC1M1               : 1;
        unsigned	T1OC1M2               : 1;
    };
    struct {
        unsigned	                      : 2;
        unsigned	T1IC1PSC0             : 1;
        unsigned	T1IC1PSC1             : 1;
        unsigned	T1IC1F0               : 1;
        unsigned	T1IC1F1               : 1;
        unsigned	T1IC1F2               : 1;
        unsigned	T1IC1F3               : 1;
    };
    struct {
        unsigned	T1CC1S              : 2;
        unsigned	                    : 2;
        unsigned	T1OC1M              : 3;
        unsigned	                    : 1;
    };
    struct {
        unsigned	                    : 2;
        unsigned	T1IC1PSC            : 2;
        unsigned	T1IC1F              : 4;
    };
} TIM1CCMR1bits @ 0x219;
#endif

// Register: TIM1CCMR2
volatile unsigned char           TIM1CCMR2             @ 0x21A;
// bit and bitfield definitions
volatile bit T1CC2S0                @ ((unsigned)&TIM1CCMR2*8)+0;
volatile bit T1CC2S1                @ ((unsigned)&TIM1CCMR2*8)+1;
volatile bit T1OC2PE                @ ((unsigned)&TIM1CCMR2*8)+3;
volatile bit T1OC2M0                @ ((unsigned)&TIM1CCMR2*8)+4;
volatile bit T1OC2M1                @ ((unsigned)&TIM1CCMR2*8)+5;
volatile bit T1OC2M2                @ ((unsigned)&TIM1CCMR2*8)+6;

volatile bit T1IC2PSC0              @ ((unsigned)&TIM1CCMR2*8)+2;
volatile bit T1IC2PSC1              @ ((unsigned)&TIM1CCMR2*8)+3;
volatile bit T1IC2F0                @ ((unsigned)&TIM1CCMR2*8)+4;
volatile bit T1IC2F1                @ ((unsigned)&TIM1CCMR2*8)+5;
volatile bit T1IC2F2                @ ((unsigned)&TIM1CCMR2*8)+6;
volatile bit T1IC2F3                @ ((unsigned)&TIM1CCMR2*8)+7;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	T1CC2S0               : 1;
        unsigned	T1CC2S1               : 1;
        unsigned	                      : 1;  
        unsigned	T1OC2PE               : 1;
        unsigned	T1OC2M0               : 1;
        unsigned	T1OC2M1               : 1;
        unsigned	T1OC2M2               : 1;
    };
    struct {
        unsigned	                      : 1;
        unsigned	                      : 1;
        unsigned	T1IC2PSC0             : 1;
        unsigned	T1IC2PSC1             : 1;
        unsigned	T1IC2F0               : 1;
        unsigned	T1IC2F1               : 1;
        unsigned	T1IC2F2               : 1;
        unsigned	T1IC2F3               : 1;
    };
    struct {
        unsigned	T1CC2S              : 2;
        unsigned	                    : 2;
        unsigned	T1OC2M              : 3;
        unsigned	                    : 1;
    };
    struct {
        unsigned	T1IC2PSC              : 2;
        unsigned	T1IC2F                : 4;
    };
} TIM1CCMR2bits @ 0x21A;
#endif


// Register: TIM1CCMR3
volatile unsigned char           TIM1CCMR3             @ 0x21B;
// bit and bitfield definitions
volatile bit T1CC3S0                @ ((unsigned)&TIM1CCMR3*8)+0;
volatile bit T1CC3S1                @ ((unsigned)&TIM1CCMR3*8)+1;
volatile bit T1OC3PE                @ ((unsigned)&TIM1CCMR3*8)+3;
volatile bit T1OC3M0                @ ((unsigned)&TIM1CCMR3*8)+4;
volatile bit T1OC3M1                @ ((unsigned)&TIM1CCMR3*8)+5;
volatile bit T1OC3M2                @ ((unsigned)&TIM1CCMR3*8)+6;

volatile bit T1IC3PSC0              @ ((unsigned)&TIM1CCMR3*8)+2;
volatile bit T1IC3PSC1              @ ((unsigned)&TIM1CCMR3*8)+3;
volatile bit T1IC3F0                @ ((unsigned)&TIM1CCMR3*8)+4;
volatile bit T1IC3F1                @ ((unsigned)&TIM1CCMR3*8)+5;
volatile bit T1IC3F2                @ ((unsigned)&TIM1CCMR3*8)+6;
volatile bit T1IC3F3                @ ((unsigned)&TIM1CCMR3*8)+7;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	T1CC3S0               : 1;
        unsigned	T1CC3S1               : 1;
        unsigned	                      : 1;  
        unsigned	T1OC3PE               : 1;
        unsigned	T1OC3M0               : 1;
        unsigned	T1OC3M1               : 1;
        unsigned	T1OC3M2               : 1;
    };
    struct {
        unsigned	                      : 2;
        unsigned	T1IC3PSC0             : 1;
        unsigned	T1IC3PSC1             : 1;
        unsigned	T1IC3F0               : 1;
        unsigned	T1IC3F1               : 1;
        unsigned	T1IC3F2               : 1;
        unsigned	T1IC3F3               : 1;
    };
    struct {
        unsigned	T1CC3S              : 2;
        unsigned	                    : 2;
        unsigned	T1OC3M              : 3;
        unsigned	                    : 1;
    };
    struct {
        unsigned	                      : 2;
        unsigned	T1IC3PSC              : 2;
        unsigned	T1IC3F                : 4;
    };
} TIM1CCMR3bits @ 0x21B;
#endif


// Register: TIM1CCMR4
volatile unsigned char           TIM1CCMR4             @ 0x21C;
// bit and bitfield definitions
volatile bit T1CC4S0                @ ((unsigned)&TIM1CCMR4*8)+0;
volatile bit T1CC4S1                @ ((unsigned)&TIM1CCMR4*8)+1;
volatile bit T1OC4PE                @ ((unsigned)&TIM1CCMR4*8)+3;
volatile bit T1OC4M0                @ ((unsigned)&TIM1CCMR4*8)+4;
volatile bit T1OC4M1                @ ((unsigned)&TIM1CCMR4*8)+5;
volatile bit T1OC4M2                @ ((unsigned)&TIM1CCMR4*8)+6;

volatile bit T1IC4PSC0              @ ((unsigned)&TIM1CCMR4*8)+2;
volatile bit T1IC4PSC1              @ ((unsigned)&TIM1CCMR4*8)+3;
volatile bit T1IC4F0                @ ((unsigned)&TIM1CCMR4*8)+4;
volatile bit T1IC4F1                @ ((unsigned)&TIM1CCMR4*8)+5;
volatile bit T1IC4F2                @ ((unsigned)&TIM1CCMR4*8)+6;
volatile bit T1IC4F3                @ ((unsigned)&TIM1CCMR4*8)+7;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	T1CC4S0               : 1;
        unsigned	T1CC4S1               : 1;
        unsigned	                      : 1;  
        unsigned	T1OC4PE               : 1;
        unsigned	T1OC4M0               : 1;
        unsigned	T1OC4M1               : 1;
        unsigned	T1OC4M2               : 1;
    };
    struct {
        unsigned	                      : 2;
        unsigned	T1IC4PSC0             : 1;
        unsigned	T1IC4PSC1             : 1;
        unsigned	T1IC4F0               : 1;
        unsigned	T1IC4F1               : 1;
        unsigned	T1IC4F2               : 1;
        unsigned	T1IC4F3               : 1;
    };
    struct {
        unsigned	T1CC4S                : 2;
        unsigned	                      : 2;
        unsigned	T1OC4M                : 3;
        unsigned	                      : 1;
    };
    struct {
        unsigned	                      : 2;
        unsigned	T1IC4PSC              : 2;
        unsigned	T1IC4F                : 4;
    };
} TIM1CCMR4bits @ 0x21C;
#endif


// Register: TIM1CCER1
volatile unsigned char           TIM1CCER1             @ 0x21D;
// bit and bitfield definitions
volatile bit T1CC1E                 @ ((unsigned)&TIM1CCER1*8)+0;
volatile bit T1CC1P                 @ ((unsigned)&TIM1CCER1*8)+1;
volatile bit T1CC1NE                @ ((unsigned)&TIM1CCER1*8)+2;
volatile bit T1CC1NP                @ ((unsigned)&TIM1CCER1*8)+3;
volatile bit T1CC2E                 @ ((unsigned)&TIM1CCER1*8)+4;
volatile bit T1CC2P                 @ ((unsigned)&TIM1CCER1*8)+5;
volatile bit T1CC2NE                @ ((unsigned)&TIM1CCER1*8)+6;
volatile bit T1CC2NP                @ ((unsigned)&TIM1CCER1*8)+7;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	T1CC1E                : 1;
        unsigned	T1CC1P                : 1;
        unsigned	T1CC1NE               : 1;
        unsigned	T1CC1NP               : 1;
        unsigned	T1CC2E                : 1;
        unsigned	T1CC2P                : 1;
        unsigned	T1CC2NE               : 1;
        unsigned	T1CC2NP               : 1;
    };
} TIM1CCER1bits @ 0x21D;
#endif

// Register: TIM1CCER2
volatile unsigned char           TIM1CCER2             @ 0x21E;
// bit and bitfield definitions
volatile bit T1CC3E                 @ ((unsigned)&TIM1CCER2*8)+0;
volatile bit T1CC3P                 @ ((unsigned)&TIM1CCER2*8)+1;
volatile bit T1CC3NE                @ ((unsigned)&TIM1CCER2*8)+2;
volatile bit T1CC3NP                @ ((unsigned)&TIM1CCER2*8)+3;
volatile bit T1CC4E                 @ ((unsigned)&TIM1CCER2*8)+4;
volatile bit T1CC4P                 @ ((unsigned)&TIM1CCER2*8)+5;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	T1CC3E                : 1;
        unsigned	T1CC3P                : 1;
        unsigned	T1CC3NE               : 1;
        unsigned	T1CC3NP               : 1;
        unsigned	T1CC4E                : 1;
        unsigned	T1CC4P                : 1;
    };
} TIM1CCER2bits @ 0x21E;
#endif
 
// Register: ODCON0
volatile unsigned char           ODCON0             @ 0x21F;
// bit and bitfield definitions
volatile bit UROD                  @ ((unsigned)&ODCON0*8)+0;
volatile bit I2COD                 @ ((unsigned)&ODCON0*8)+1;
volatile bit SPIOD                 @ ((unsigned)&ODCON0*8)+2;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	UROD                 : 1;
        unsigned	I2COD                : 1;
        unsigned	SPIOD                : 1;
    };
} ODCON0bits @ 0x21F;
#endif
//
// Special function register definitions: Bank 5--------------------------------------------------------------
//

// Register: TIM1CNTRH
volatile unsigned char           TIM1CNTRH             @ 0x28C;
// bit and bitfield definitions
 
// Register: TIM1CNTRL
volatile unsigned char           TIM1CNTRL             @ 0x28D;
// bit and bitfield definitions

// Register: TIM1PSCRH
volatile unsigned char           TIM1PSCRH             @ 0x28E;
// bit and bitfield definitions 

// Register: TIM1PSCRL
volatile unsigned char           TIM1PSCRL             @ 0x28F;
// bit and bitfield definitions 

// Register: TIM1ARRH
volatile unsigned char           TIM1ARRH              @ 0x290;
// bit and bitfield definitions 

// Register: TIM1ARRL
volatile unsigned char           TIM1ARRL              @ 0x291;
// bit and bitfield definitions

// Register: TIM1RCR
volatile unsigned char           TIM1RCR               @ 0x292;
// bit and bitfield definitions

// Register: TIM1CCR1H
volatile unsigned char           TIM1CCR1H             @ 0x293;
// bit and bitfield definitions

// Register: TIM1CCR1L
volatile unsigned char           TIM1CCR1L             @ 0x294;
// bit and bitfield definitions

// Register: TIM1CCR2H
volatile unsigned char           TIM1CCR2H             @ 0x295;
// bit and bitfield definitions

// Register: TIM1CCR2L
volatile unsigned char           TIM1CCR2L             @ 0x296;
// bit and bitfield definitions

// Register: TIM1CCR3H
volatile unsigned char           TIM1CCR3H             @ 0x297;
// bit and bitfield definitions

// Register: TIM1CCR3L
volatile unsigned char           TIM1CCR3L             @ 0x298;
// bit and bitfield definitions

// Register: TIM1CCR4H
volatile unsigned char           TIM1CCR4H             @ 0x299;
// bit and bitfield definitions

// Register: TIM1CCR4L
volatile unsigned char           TIM1CCR4L             @ 0x29A;
// bit and bitfield definitions

// Register: TIM1BKR
volatile unsigned char           TIM1BKR               @ 0x29B;
// bit and bitfield definitions
volatile bit T1LOCK0               @ ((unsigned)&TIM1BKR*8)+0;
volatile bit T1LOCK1               @ ((unsigned)&TIM1BKR*8)+1;
volatile bit T1OSSI                @ ((unsigned)&TIM1BKR*8)+2;
volatile bit T1OSSR                @ ((unsigned)&TIM1BKR*8)+3;
volatile bit T1BKE                 @ ((unsigned)&TIM1BKR*8)+4;
volatile bit T1BKP                 @ ((unsigned)&TIM1BKR*8)+5;
volatile bit T1AOE                 @ ((unsigned)&TIM1BKR*8)+6;
volatile bit T1MOE                 @ ((unsigned)&TIM1BKR*8)+7;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	T1LOCK0               : 1;
        unsigned	T1LOCK1               : 1;
        unsigned	T1OSSI                : 1;
        unsigned	T1OSSR                : 1;
        unsigned	T1BKE                 : 1;
        unsigned	T1BKP                 : 1;
        unsigned	T1AOE                 : 1;
        unsigned	T1MOE                 : 1;
    };
} TIM1BKRbits @ 0x29B;
#endif

// Register: TIM1DTR
volatile unsigned char           TIM1DTR               @ 0x29C;
// bit and bitfield definitions
volatile bit T1DTG0                 @ ((unsigned)&TIM1DTR*8)+0;
volatile bit T1DTG1                 @ ((unsigned)&TIM1DTR*8)+1;
volatile bit T1DTG2                 @ ((unsigned)&TIM1DTR*8)+2;
volatile bit T1DTG3                 @ ((unsigned)&TIM1DTR*8)+3;
volatile bit T1DTG4                 @ ((unsigned)&TIM1DTR*8)+4;
volatile bit T1DTG5                 @ ((unsigned)&TIM1DTR*8)+5;
volatile bit T1DTG6                 @ ((unsigned)&TIM1DTR*8)+6;
volatile bit T1DTG7                 @ ((unsigned)&TIM1DTR*8)+7;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	T1DTG0                 : 1;
        unsigned	T1DTG1                 : 1;
        unsigned	T1DTG2                 : 1;
        unsigned	T1DTG3                 : 1;
        unsigned	T1DTG4                 : 1;
        unsigned	T1DTG5                 : 1;
        unsigned	T1DTG6                 : 1;
        unsigned	T1DTG7                 : 1;
    };
    struct {
        unsigned	T1DTG                  : 8;
    };
} TIM1DTRbits @ 0x29C;
#endif

// Register: TIM1OISR
volatile unsigned char           TIM1OISR            @ 0x29D;
// bit and bitfield definitions
volatile bit T1OIS1                @ ((unsigned)&TIM1OISR*8)+0;
volatile bit T1OIS1N               @ ((unsigned)&TIM1OISR*8)+1;
volatile bit T1OIS2                @ ((unsigned)&TIM1OISR*8)+2;
volatile bit T1OIS2N               @ ((unsigned)&TIM1OISR*8)+3;
volatile bit T1OIS3                @ ((unsigned)&TIM1OISR*8)+4;
volatile bit T1OIS3N               @ ((unsigned)&TIM1OISR*8)+5;
volatile bit T1OIS4                @ ((unsigned)&TIM1OISR*8)+6;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	T1OIS1               : 1;
        unsigned	T1OIS1N              : 1;
        unsigned	T1OIS2               : 1;
        unsigned	T1OIS2N              : 1;
        unsigned	T1OIS3               : 1;
        unsigned	T1OIS3N              : 1;
        unsigned	T1OIS4               : 1;
    };
} TIM1OISRbits @ 0x29D;
#endif

// Register: TIM2CCR3H
volatile unsigned char           TIM2CCR3H            @ 0x29E;
// bit and bitfield definitions

// Register: TIM2CCR3L
volatile unsigned char           TIM2CCR3L            @ 0x29F;
// bit and bitfield definitions 
//
// Special function register definitions: Bank 6
//

// Register: TIM2CR1
volatile unsigned char           TIM2CR1            @ 0x30C;
// bit and bitfield definitions
volatile bit T2CEN                 @ ((unsigned)&TIM2CR1*8)+0;
volatile bit T2UDIS                @ ((unsigned)&TIM2CR1*8)+1;
volatile bit T2URS                 @ ((unsigned)&TIM2CR1*8)+2;
volatile bit T2OPM                 @ ((unsigned)&TIM2CR1*8)+3;
volatile bit T2ARPE                @ ((unsigned)&TIM2CR1*8)+7;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	T2CEN                : 1;
        unsigned	T2UDIS               : 1;
        unsigned	T2URS                : 1;
        unsigned	T2OPM                : 1;
        unsigned	                     : 1;
        unsigned	                     : 1;
        unsigned	                     : 1;
        unsigned	T2ARPE               : 1;
    };
} TIM2CR1bits @ 0x30C;
#endif

// Register: TIM2IER
volatile unsigned char           TIM2IER              @ 0x30D;
// bit and bitfield definitions
volatile bit T2UIE                 @ ((unsigned)&TIM2IER*8)+0;
volatile bit T2CC1IE               @ ((unsigned)&TIM2IER*8)+1;
volatile bit T2CC2IE               @ ((unsigned)&TIM2IER*8)+2;
volatile bit T2CC3IE               @ ((unsigned)&TIM2IER*8)+3;

#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	T2UIE              : 1;
        unsigned	T2CC1IE              : 1;
        unsigned	T2CC2IE              : 1;
        unsigned	T2CC3IE              : 1;
    };
} TIM2IERbits @ 0x30D;
#endif

// Register: TIM2SR1
volatile unsigned char           TIM2SR1              @ 0x30E;
// bit and bitfield definitions
volatile bit T2UIF                 @ ((unsigned)&TIM2SR1*8)+0;
volatile bit T2CC1IF               @ ((unsigned)&TIM2SR1*8)+1;
volatile bit T2CC2IF               @ ((unsigned)&TIM2SR1*8)+2;
volatile bit T2CC3IF               @ ((unsigned)&TIM2SR1*8)+3;

#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	T2UIF                : 1;
        unsigned	T2CC1IF              : 1;
        unsigned	T2CC2IF              : 1;
        unsigned	T2CC3IF              : 1;
    };
} TIM2SR1bits @ 0x30E;
#endif

// Register: TIM2SR2
volatile unsigned char           TIM2SR2              @ 0x30F;
// bit and bitfield definitions
volatile bit T2CC1OF               @ ((unsigned)&TIM2SR2*8)+1;
volatile bit T2CC2OF               @ ((unsigned)&TIM2SR2*8)+2;
volatile bit T2CC3OF               @ ((unsigned)&TIM2SR2*8)+3;

#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	                   : 1;
        unsigned	T2CC1OF              : 1;
        unsigned	T2CC2OF              : 1;
        unsigned	T2CC3OF              : 1;
    };
} TIM2SR2bits @ 0x30F;
#endif

// Register: TIM2EGR
volatile unsigned char           TIM2EGR              @ 0x310;
// bit and bitfield definitions
volatile bit T2UG                 @ ((unsigned)&TIM2EGR*8)+0;
volatile bit T2CC1G               @ ((unsigned)&TIM2EGR*8)+1;
volatile bit T2CC2G               @ ((unsigned)&TIM2EGR*8)+2;
volatile bit T2CC3G               @ ((unsigned)&TIM2EGR*8)+3;

#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	T2UG                 : 1;
        unsigned	T2CC1G               : 1;
        unsigned	T2CC2G               : 1;
        unsigned	T2CC3G               : 1;
    };
} TIM2EGRbits @ 0x310;
#endif


// Register: TIM2CCMR1
volatile unsigned char           TIM2CCMR1              @ 0x311;
// bit and bitfield definitions
volatile bit T2CC1S0               @ ((unsigned)&TIM2CCMR1*8)+0;
volatile bit T2CC1S1               @ ((unsigned)&TIM2CCMR1*8)+1;
volatile bit T2OC1PE               @ ((unsigned)&TIM2CCMR1*8)+3;
volatile bit T2OC1M0               @ ((unsigned)&TIM2CCMR1*8)+4;
volatile bit T2OC1M1               @ ((unsigned)&TIM2CCMR1*8)+5;
volatile bit T2OC1M2               @ ((unsigned)&TIM2CCMR1*8)+6;

volatile bit T2IC1PSC0             @ ((unsigned)&TIM2CCMR1*8)+2;
volatile bit T2IC1PSC1             @ ((unsigned)&TIM2CCMR1*8)+3;
volatile bit T2IC1F0               @ ((unsigned)&TIM2CCMR1*8)+4;
volatile bit T2IC1F1               @ ((unsigned)&TIM2CCMR1*8)+5;
volatile bit T2IC1F2               @ ((unsigned)&TIM2CCMR1*8)+6;
volatile bit T2IC1F3               @ ((unsigned)&TIM2CCMR1*8)+7;

#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	T2CC1S0              : 1;
        unsigned	T2CC1S1              : 1;
        unsigned	                     : 1;
        unsigned	T2OC1PE              : 1;
        unsigned	T2OC1M0              : 1;
        unsigned	T2OC1M1              : 1;
        unsigned	T2OC1M2              : 1;
    };
    struct {
        unsigned	                     : 1;
        unsigned	                     : 1;
        unsigned	T2IC1PSC0            : 1;
        unsigned	T2IC1PSC1            : 1;
        unsigned	T2IC1F0              : 1;
        unsigned	T2IC1F1              : 1;
        unsigned	T2IC1F2              : 1;
        unsigned	T2IC1F3              : 1;
    };
    struct {
        unsigned	T2CC1S               : 2;
        unsigned	                     : 2;
        unsigned	T2OC1M               : 3;
    };
    struct {
        unsigned	                   : 2;
        unsigned	T2IC1PSC           : 2;
        unsigned	T2IC1F             : 4;
    };
} TIM2CCMR1bits @ 0x311;
#endif


// Register: TIM2CCMR2
volatile unsigned char           TIM2CCMR2              @ 0x312;
// bit and bitfield definitions
volatile bit T2CC2S0               @ ((unsigned)&TIM2CCMR2*8)+0;
volatile bit T2CC2S1               @ ((unsigned)&TIM2CCMR2*8)+1;
volatile bit T2OC2PE               @ ((unsigned)&TIM2CCMR2*8)+3;
volatile bit T2OC2M0               @ ((unsigned)&TIM2CCMR2*8)+4;
volatile bit T2OC2M1               @ ((unsigned)&TIM2CCMR2*8)+5;
volatile bit T2OC2M2               @ ((unsigned)&TIM2CCMR2*8)+6;

volatile bit T2IC2PSC0             @ ((unsigned)&TIM2CCMR2*8)+2;
volatile bit T2IC2PSC1             @ ((unsigned)&TIM2CCMR2*8)+3;
volatile bit T2IC2F0               @ ((unsigned)&TIM2CCMR2*8)+4;
volatile bit T2IC2F1               @ ((unsigned)&TIM2CCMR2*8)+5;
volatile bit T2IC2F2               @ ((unsigned)&TIM2CCMR2*8)+6;
volatile bit T2IC2F3               @ ((unsigned)&TIM2CCMR2*8)+7;

#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	T2CC2S0              : 1;
        unsigned	T2CC2S1              : 1;
        unsigned	                   : 1;
        unsigned	T2OC2PE              : 1;
        unsigned	T2OC2M0              : 1;
        unsigned	T2OC2M1              : 1;
        unsigned	T2OC2M2              : 1;
    };
    struct {
        unsigned	                   : 1;
        unsigned	                   : 1;
        unsigned	T2IC2PSC0            : 1;
        unsigned	T2IC2PSC1            : 1;
        unsigned	T2IC2F0              : 1;
        unsigned	T2IC2F1              : 1;
        unsigned	T2IC2F2              : 1;
        unsigned	T2IC2F3              : 1;
    };
    struct {
        unsigned	T2CC2S             : 2;
        unsigned	                   : 2;
        unsigned	T2OC2M               : 3;
    };
    struct {
        unsigned	                   : 2;
        unsigned	T2IC2PSC             : 2;
        unsigned	T2IC2F               : 4;
    };
} TIM2CCMR2bits @ 0x312;
#endif

// Register: TIM2CCMR3
volatile unsigned char           TIM2CCMR3              @ 0x313;
// bit and bitfield definitions
volatile bit T2CC3S0               @ ((unsigned)&TIM2CCMR3*8)+0;
volatile bit T2CC3S1               @ ((unsigned)&TIM2CCMR3*8)+1;
volatile bit T2OC3PE               @ ((unsigned)&TIM2CCMR3*8)+3;
volatile bit T2OC3M0               @ ((unsigned)&TIM2CCMR3*8)+4;
volatile bit T2OC3M1               @ ((unsigned)&TIM2CCMR3*8)+5;
volatile bit T2OC3M2               @ ((unsigned)&TIM2CCMR3*8)+6;

volatile bit T2IC3PSC0             @ ((unsigned)&TIM2CCMR3*8)+2;
volatile bit T2IC3PSC1             @ ((unsigned)&TIM2CCMR3*8)+3;
volatile bit T2IC3F0               @ ((unsigned)&TIM2CCMR3*8)+4;
volatile bit T2IC3F1               @ ((unsigned)&TIM2CCMR3*8)+5;
volatile bit T2IC3F2               @ ((unsigned)&TIM2CCMR3*8)+6;
volatile bit T2IC3F3               @ ((unsigned)&TIM2CCMR3*8)+7;

#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	T2CC3S0              : 1;
        unsigned	T2CC3S1              : 1;
        unsigned	                     : 1;
        unsigned	T2OC3PE              : 1;
        unsigned	T2OC3M0              : 1;
        unsigned	T2OC3M1              : 1;
        unsigned	T2OC3M2              : 1;
    };
    struct {
        unsigned	                     : 1;
        unsigned	                     : 1;
        unsigned	T2IC3PSC0            : 1;
        unsigned	T2IC3PSC1            : 1;
        unsigned	T2IC3F0              : 1;
        unsigned	T2IC3F1              : 1;
        unsigned	T2IC3F2              : 1;
        unsigned	T2IC3F3              : 1;
    };
    struct {
        unsigned	T2CC3S               : 2;
        unsigned	                     : 2;
        unsigned	T2OC3M               : 3;
    };
    struct {
        unsigned	                     : 2;
        unsigned	T2IC3PSC             : 2;
        unsigned	T2IC3F               : 4;
    };
} TIM2CCMR3bits @ 0x313;
#endif

// Register: TIM2CCER1
volatile unsigned char           TIM2CCER1             @ 0x314;
// bit and bitfield definitions
volatile bit T2CC1E               @ ((unsigned)&TIM2CCER1*8)+0;
volatile bit T2CC1P               @ ((unsigned)&TIM2CCER1*8)+1;
volatile bit T2CC2E               @ ((unsigned)&TIM2CCER1*8)+4;
volatile bit T2CC2P               @ ((unsigned)&TIM2CCER1*8)+5;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	T2CC1E               : 1;
        unsigned	T2CC1P               : 1;
        unsigned	                     : 2;
        unsigned	T2CC2E               : 1;
        unsigned	T2CC2P               : 1;
    };
} TIM2CCER1bits @ 0x314;
#endif

// Register: TIM2CCER2
volatile unsigned char           TIM2CCER2             @ 0x315;
// bit and bitfield definitions
volatile bit T2CC3E               @ ((unsigned)&TIM2CCER2*8)+0;
volatile bit T2CC3P               @ ((unsigned)&TIM2CCER2*8)+1;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	T2CC3E               : 1;
        unsigned	T2CC3P               : 1;
    };
} TIM2CCER2bits @ 0x315;
#endif

// Register: TIM2CNTRH
volatile unsigned char           TIM2CNTRH             @ 0x316;
// bit and bitfield definitions

// Register: TIM2CNTRL
volatile unsigned char           TIM2CNTRL             @ 0x317;
// bit and bitfield definitions

// Register: TIM2PSCR
volatile unsigned char           TIM2PSCR              @ 0x318;
// bit and bitfield definitions
volatile bit T2PSC0              @ ((unsigned)&TIM2PSCR*8)+0;
volatile bit T2PSC1              @ ((unsigned)&TIM2PSCR*8)+1;
volatile bit T2PSC2              @ ((unsigned)&TIM2PSCR*8)+2;
volatile bit T2PSC3              @ ((unsigned)&TIM2PSCR*8)+3;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	T2PSC0              : 1;
        unsigned	T2PSC1              : 1;
        unsigned	T2PSC2              : 1;
        unsigned	T2PSC3              : 1;
    };
    struct {
        unsigned	T2PSC               : 4;
    };
} TIM2PSCRbits @ 0x318;
#endif

// Register: TIM2ARRH
volatile unsigned char           TIM2ARRH              @ 0x319;
// bit and bitfield definitions

// Register: TIM2ARRL
volatile unsigned char           TIM2ARRL              @ 0x31A;
// bit and bitfield definitions

// Register: TIM2CCR1H
volatile unsigned char           TIM2CCR1H              @ 0x31B;
// bit and bitfield definitions

// Register: TIM2CCR1L
volatile unsigned char           TIM2CCR1L              @ 0x31C;
// bit and bitfield definitions

// Register: TIM2CCR2H
volatile unsigned char           TIM2CCR2H              @ 0x31D;
// bit and bitfield definitions

// Register: TIM2CCR2L
volatile unsigned char           TIM2CCR2L              @ 0x31E;
// bit and bitfield definitions

// Register: TCKSRC
volatile unsigned char           TCKSRC         @ 0x31F;
// bit and bitfield definitions
volatile bit T1CKSRC0              @ ((unsigned)&TCKSRC*8)+0;
volatile bit T1CKSRC1              @ ((unsigned)&TCKSRC*8)+1;
volatile bit T1CKSRC2              @ ((unsigned)&TCKSRC*8)+2;
volatile bit T2CKSRC0              @ ((unsigned)&TCKSRC*8)+4;
volatile bit T2CKSRC1              @ ((unsigned)&TCKSRC*8)+5;
volatile bit T2CKSRC2              @ ((unsigned)&TCKSRC*8)+6;
volatile bit LFMOD                 @ ((unsigned)&TCKSRC*8)+7;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	T1CKSRC0              : 1;
        unsigned	T1CKSRC1              : 1;
        unsigned	T1CKSRC2              : 1;
        unsigned	                      : 1;
        unsigned	T2CKSRC0              : 1;
        unsigned	T2CKSRC1              : 1;
        unsigned	T2CKSRC2              : 1;
        unsigned	LFMOD                 : 1;
    };
    struct {
        unsigned	T1CKSRC               : 3;
        unsigned	                      : 1;
        unsigned	T2CKSRC               : 3;
    };
} TCKSRCbits @ 0x31F;
#endif


// Register: EECON4
volatile unsigned char           EECON4                  @ 0x391;
// bit and bitfield definitions
volatile bit PONLY             @ ((unsigned)&EECON4*8)+6;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	           	 : 6;
        unsigned	PONLY        : 1;
    };
} EECON4bits @ 0x391;
#endif
//
// Special function register definitions: Bank 7
//

//
// Special function register definitions: Bank 8
//

// Register: I2CCR1
// LVDIErrupt-On-Change Flag Register
volatile unsigned char           I2CCR1               @ 0x40C;
// bit and bitfield definitions
volatile bit MASTER               @ ((unsigned)&I2CCR1*8)+0;
volatile bit SPEED                @ ((unsigned)&I2CCR1*8)+1;
volatile bit SLV10B               @ ((unsigned)&I2CCR1*8)+3;
volatile bit MST10B               @ ((unsigned)&I2CCR1*8)+4;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	MASTER              : 1;
        unsigned	SPEED               : 1;
        unsigned	                    : 1;
        unsigned	SLV10B              : 1;
        unsigned	MST10B              : 1;
    };
} I2CCR1bits @ 0x40C;
#endif

// Register: I2CCR2
// LVDIErrupt-On-Change Flag Register
volatile unsigned char           I2CCR2               @ 0x40D;
// bit and bitfield definitions
volatile bit RXHLD                 @ ((unsigned)&I2CCR2*8)+1;
volatile bit SNACK                 @ ((unsigned)&I2CCR2*8)+4;
volatile bit AGCALL                @ ((unsigned)&I2CCR2*8)+5;
volatile bit SOFTRST               @ ((unsigned)&I2CCR2*8)+6;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	                    : 1;
        unsigned	RXHLD               : 1;
        unsigned	                    : 2;
        unsigned	SNACK               : 1;
        unsigned	AGCALL              : 1;
        unsigned	SOFTRST             : 1;
    };
} I2CCR2bits @ 0x40D;
#endif

// Register: I2CCR3
// LVDIErrupt-On-Change Flag Register
volatile unsigned char           I2CCR3               @ 0x40E;
// bit and bitfield definitions
volatile bit ENABLE                 @ ((unsigned)&I2CCR3*8)+0;
volatile bit EVSTRE                 @ ((unsigned)&I2CCR3*8)+2;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	ENABLE              : 1;
        unsigned	                    : 1;
        unsigned	EVSTRE              : 1;
    };
} I2CCR3bits @ 0x40E;
#endif

// Register: I2COARL
// LVDIErrupt-On-Change Flag Register
volatile unsigned char           I2COARL               @ 0x40F;
// bit and bitfield definitions
volatile bit ADD0                   @ ((unsigned)&I2COARL*8)+0;
volatile bit ADD1                   @ ((unsigned)&I2COARL*8)+1;
volatile bit ADD2                   @ ((unsigned)&I2COARL*8)+2;
volatile bit ADD3                   @ ((unsigned)&I2COARL*8)+3;
volatile bit ADD4                   @ ((unsigned)&I2COARL*8)+4;
volatile bit ADD5                   @ ((unsigned)&I2COARL*8)+5;
volatile bit ADD6                   @ ((unsigned)&I2COARL*8)+6;
volatile bit ADD7                   @ ((unsigned)&I2COARL*8)+7;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	ADD0              : 1;
        unsigned	ADD1              : 1;
        unsigned	ADD2              : 1;
        unsigned	ADD3              : 1;
        unsigned	ADD4              : 1;
        unsigned	ADD5              : 1;
        unsigned	ADD6              : 1;
        unsigned	ADD7              : 1;
    };
    struct {
        unsigned	ADD               : 8;
    };
} I2COARLbits @ 0x40E;
#endif

// Register: I2COARH
// LVDIErrupt-On-Change Flag Register
volatile unsigned char           I2COARH               @ 0x410;
// bit and bitfield definitions
volatile bit ADD8                   @ ((unsigned)&I2COARH*8)+0;
volatile bit ADD9                   @ ((unsigned)&I2COARH*8)+1;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	ADD8              : 1;
        unsigned	ADD9              : 1;
    };
} I2COARHbits @ 0x410;
#endif

// Register: I2CFREQ
// LVDIErrupt-On-Change Flag Register
volatile unsigned char           I2CFREQ               @ 0x411;
// bit and bitfield definitions
volatile bit FREQ0                   @ ((unsigned)&I2CFREQ*8)+0;
volatile bit FREQ1                   @ ((unsigned)&I2CFREQ*8)+1;
volatile bit FREQ2                   @ ((unsigned)&I2CFREQ*8)+2;
volatile bit FREQ3                   @ ((unsigned)&I2CFREQ*8)+3;
volatile bit FREQ4                   @ ((unsigned)&I2CFREQ*8)+4;
volatile bit FREQ5                   @ ((unsigned)&I2CFREQ*8)+5;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	FREQ0              : 1;
        unsigned	FREQ1              : 1;
        unsigned	FREQ2              : 1;
        unsigned	FREQ3              : 1;
        unsigned	FREQ4              : 1;
        unsigned	FREQ5              : 1;
    };
    struct {
        unsigned	FREQ               : 6;
    };
} I2CFREQbits @ 0x411;
#endif

// Register: I2CDR
// LVDIErrupt-On-Change Flag Register
volatile unsigned char           I2CDR               @ 0x412;
// bit and bitfield definitions

// Register: I2CCMD
// LVDIErrupt-On-Change Flag Register
volatile unsigned char           I2CCMD               @ 0x413;
// bit and bitfield definitions
volatile bit MSTDIR                    @ ((unsigned)&I2CCMD*8)+0;
volatile bit STOP                      @ ((unsigned)&I2CCMD*8)+1;
volatile bit RESTART                   @ ((unsigned)&I2CCMD*8)+2;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	MSTDIR              : 1;
        unsigned	STOP                : 1;
        unsigned	RESTART             : 1;
    };
} I2CCMDbits @ 0x413;
#endif

// Register: I2CCCRL
// LVDIErrupt-On-Change Flag Register
volatile unsigned char           I2CCCRL               @ 0x414;
// bit and bitfield definitions
volatile bit CCR0                    @ ((unsigned)&I2CCCRL*8)+0;
volatile bit CCR1                    @ ((unsigned)&I2CCCRL*8)+1;
volatile bit CCR2                    @ ((unsigned)&I2CCCRL*8)+2;
volatile bit CCR3                    @ ((unsigned)&I2CCCRL*8)+3;
volatile bit CCR4                    @ ((unsigned)&I2CCCRL*8)+4;
volatile bit CCR5                    @ ((unsigned)&I2CCCRL*8)+5;
volatile bit CCR6                    @ ((unsigned)&I2CCCRL*8)+6;
volatile bit CCR7                    @ ((unsigned)&I2CCCRL*8)+7;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	CCR0                : 1;
        unsigned	CCR1                : 1;
        unsigned	CCR2                : 1;
        unsigned	CCR3                : 1;
        unsigned	CCR4                : 1;
        unsigned	CCR5                : 1;
        unsigned	CCR6                : 1;
        unsigned	CCR7                : 1;
    };
    struct {
        unsigned	CCR                 : 7;
    };
} I2CCCRLbits @ 0x414;
#endif

// Register: I2CCCRH
// LVDIErrupt-On-Change Flag Register
volatile unsigned char           I2CCCRH               @ 0x415;
// bit and bitfield definitions
volatile bit CCR8                    @ ((unsigned)&I2CCCRH*8)+0;
volatile bit CCR9                    @ ((unsigned)&I2CCCRH*8)+1;
volatile bit CCR10                   @ ((unsigned)&I2CCCRH*8)+2;
volatile bit CCR11                   @ ((unsigned)&I2CCCRH*8)+3;
volatile bit DUTY                    @ ((unsigned)&I2CCCRH*8)+6;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	CCR8                : 1;
        unsigned	CCR9                : 1;
        unsigned	CCR10               : 1;
        unsigned	CCR11               : 1;
        unsigned	                    : 2;
        unsigned	DUTY                : 1;
    };
} I2CCCRHbits @ 0x415;
#endif

// Register: I2CITR
// LVDIErrupt-On-Change Flag Register
volatile unsigned char           I2CITR               @ 0x416;
// bit and bitfield definitions
volatile bit ITERREN                 @ ((unsigned)&I2CITR*8)+0;
volatile bit ITEVEN                  @ ((unsigned)&I2CITR*8)+1;
volatile bit ITBUFEN                 @ ((unsigned)&I2CITR*8)+2;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	ITERREN               : 1;
        unsigned	ITEVEN                : 1;
        unsigned	ITBUFEN               : 1;
    };
} I2CITRbits @ 0x416;
#endif

// Register: I2CSR1
// LVDIErrupt-On-Change Flag Register
volatile unsigned char           I2CSR1               @ 0x417;
// bit and bitfield definitions
volatile bit SBF                    @ ((unsigned)&I2CSR1*8)+0;
volatile bit ADDF                   @ ((unsigned)&I2CSR1*8)+1;
volatile bit ADD10F                 @ ((unsigned)&I2CSR1*8)+3;
volatile bit STOPF                  @ ((unsigned)&I2CSR1*8)+4;
volatile bit IICRXNE                @ ((unsigned)&I2CSR1*8)+6;
volatile bit IICTXE                 @ ((unsigned)&I2CSR1*8)+7;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	SBF               : 1;
        unsigned	ADDF              : 1;
        unsigned	                  : 1;
        unsigned	ADD10F            : 1;
        unsigned	STOPF             : 1;
        unsigned	                  : 1;
        unsigned	IICRXNE           : 1;
        unsigned	IICTXE            : 1;
    };
} I2CSR1bits @ 0x417;
#endif

// Register: I2CSR2
// LVDIErrupt-On-Change Flag Register
volatile unsigned char           I2CSR2               @ 0x418;
// bit and bitfield definitions
volatile bit BERR                   @ ((unsigned)&I2CSR2*8)+0;
volatile bit ARLO                   @ ((unsigned)&I2CSR2*8)+1;
volatile bit AF                     @ ((unsigned)&I2CSR2*8)+2;
volatile bit OVR                    @ ((unsigned)&I2CSR2*8)+3;
volatile bit TXARBT                 @ ((unsigned)&I2CSR2*8)+4;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	BERR              : 1;
        unsigned	ARLO              : 1;
        unsigned	AF                : 1;
        unsigned	OVR               : 1;
        unsigned	TXARBT            : 1;
    };
} I2CSR2bits @ 0x418;
#endif

// Register: I2CSR3
// LVDIErrupt-On-Change Flag Register
volatile unsigned char           I2CSR3               @ 0x419;
// bit and bitfield definitions
volatile bit RXHOLD                 @ ((unsigned)&I2CSR3*8)+0;
volatile bit ACTIVE                 @ ((unsigned)&I2CSR3*8)+1;
volatile bit RDREQ                  @ ((unsigned)&I2CSR3*8)+2;
volatile bit GCALL                  @ ((unsigned)&I2CSR3*8)+5;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	RXHOLD            : 1;
        unsigned	ACTIVE            : 1;
        unsigned	RDREQ             : 1;
        unsigned	                  : 2;
        unsigned	GCALL             : 1;
    };
} I2CSR3bits @ 0x419;
#endif


// Register: ADCON3
// LVDIErrupt-On-Change Flag Register
volatile unsigned char           ADCON3               @ 0x41A;
// bit and bitfield definitions
volatile bit ELVDS0                 @ ((unsigned)&ADCON3*8)+0;
volatile bit ELVDS1                 @ ((unsigned)&ADCON3*8)+1;
volatile bit LEBADT                 @ ((unsigned)&ADCON3*8)+3;
volatile bit ADCMPO                 @ ((unsigned)&ADCON3*8)+4;
volatile bit ADCMPEN                @ ((unsigned)&ADCON3*8)+5;
volatile bit ADCMPOP                @ ((unsigned)&ADCON3*8)+6;
volatile bit ADFBEN                 @ ((unsigned)&ADCON3*8)+7;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	ELVDS0            : 1;
        unsigned	ELVDS1            : 1;
        unsigned	                  : 1;
        unsigned	LEBADT            : 1;
        unsigned	ADCMPO            : 1;
        unsigned	ADCMPEN           : 1;
        unsigned	ADCMPOP           : 1;
        unsigned	ADFBEN            : 1;
    };
} ADCON3bits @ 0x41A;
#endif


// Register: ADCMPH
// LVDIErrupt-On-Change Flag Register
volatile unsigned char           ADCMPH               @ 0x41B;
// bit and bitfield definitions


// Register: LEBCON
// LVDIErrupt-On-Change Flag Register
volatile unsigned char           LEBCON               @ 0x41C;
// bit and bitfield definitions
volatile bit BKS0                 @ ((unsigned)&LEBCON*8)+0;
volatile bit BKS1                 @ ((unsigned)&LEBCON*8)+1;
volatile bit BKS2                 @ ((unsigned)&LEBCON*8)+2;
volatile bit EDGS                 @ ((unsigned)&LEBCON*8)+3;
volatile bit LEBCH0               @ ((unsigned)&LEBCON*8)+5;
volatile bit LEBCH1               @ ((unsigned)&LEBCON*8)+6;
volatile bit LEBEN                @ ((unsigned)&LEBCON*8)+7;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	BKS0              : 1;
        unsigned	BKS1              : 1;
        unsigned	BKS2              : 1;
        unsigned	EDGS              : 1;
        unsigned	                  : 1;
        unsigned	LEBCH0            : 1;
        unsigned	LEBCH1            : 1;
        unsigned	LEBEN             : 1;
    };
} LEBCONbits @ 0x41C;
#endif


// Register: MSCKCON
// LVDIErrupt-On-Change Flag Register
volatile unsigned char           MSCKCON               @ 0x41D;
// bit and bitfield definitions
volatile bit CKCNTI                 @ ((unsigned)&MSCKCON*8)+0;
volatile bit CKMAVG                 @ ((unsigned)&MSCKCON*8)+1;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	CKCNTI              : 1;
        unsigned	CKMAVG              : 1;
    };
} MSCKCONbits @ 0x41D;
#endif


// Register: SOSCPRL
// LVDIErrupt-On-Change Flag Register
volatile unsigned char           SOSCPRL               @ 0x41E;
// bit and bitfield definitions
volatile bit SOSCPR0                 @ ((unsigned)&SOSCPRL*8)+0;
volatile bit SOSCPR1                 @ ((unsigned)&SOSCPRL*8)+1;
volatile bit SOSCPR2                 @ ((unsigned)&SOSCPRL*8)+2;
volatile bit SOSCPR3                 @ ((unsigned)&SOSCPRL*8)+3;
volatile bit SOSCPR4                 @ ((unsigned)&SOSCPRL*8)+4;
volatile bit SOSCPR5                 @ ((unsigned)&SOSCPRL*8)+5;
volatile bit SOSCPR6                 @ ((unsigned)&SOSCPRL*8)+6;
volatile bit SOSCPR7                 @ ((unsigned)&SOSCPRL*8)+7;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	SOSCPR              : 8;
    };
} SOSCPRLbits @ 0x41E;
#endif

// Register: SOSCPRH
// LVDIErrupt-On-Change Flag Register
volatile unsigned char           SOSCPRH               @ 0x41F;
// bit and bitfield definitions
volatile bit SOSCPR8                  @ ((unsigned)&SOSCPRH*8)+0;
volatile bit SOSCPR9                  @ ((unsigned)&SOSCPRH*8)+1;
volatile bit SOSCPR10                 @ ((unsigned)&SOSCPRH*8)+2;
volatile bit SOSCPR11                 @ ((unsigned)&SOSCPRH*8)+3;

//
// Special function register definitions: Bank 9
//
 
// Register: URDATAL
// LVDIErrupt-On-Change Flag Register
volatile unsigned char           URDATAL               @ 0x48C;
// bit and bitfield definitions
//

// Register: URDATAH
// LVDIErrupt-On-Change Flag Register
volatile unsigned char           URDATAH               @ 0x48D;
// bit and bitfield definitions
volatile bit URDATA8                 @ ((unsigned)&URDATAH*8)+0;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	URDATA8            : 1;
    };
} URDATAHbits @ 0x48D;
#endif

// Register: URIER
// LVDIErrupt-On-Change Flag Register
volatile unsigned char           URIER               @ 0x48E;
// bit and bitfield definitions
volatile bit URRXNE                 @ ((unsigned)&URIER*8)+0;
volatile bit URTE                   @ ((unsigned)&URIER*8)+1;
volatile bit RXSE                   @ ((unsigned)&URIER*8)+2;
volatile bit IDELE                  @ ((unsigned)&URIER*8)+3;
volatile bit TCEN                   @ ((unsigned)&URIER*8)+5;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	URRXNE            : 1;
        unsigned	URTE              : 1;
        unsigned	RXSE              : 1;
        unsigned	IDELE             : 1;
        unsigned	                  : 1;
        unsigned	TCEN              : 1;
    };
} URIERbits @ 0x48E;
#endif

// Register: URLCR
// LVDIErrupt-On-Change Flag Register
volatile unsigned char           URLCR               @ 0x48F;
// bit and bitfield definitions
volatile bit LTH                    @ ((unsigned)&URLCR*8)+0;
volatile bit URSTOP                 @ ((unsigned)&URLCR*8)+2;
volatile bit PEN                    @ ((unsigned)&URLCR*8)+3;
volatile bit EVEN                   @ ((unsigned)&URLCR*8)+4;
volatile bit BKREQ                  @ ((unsigned)&URLCR*8)+6;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	LTH               : 1;
        unsigned	                  : 1;
        unsigned	URSTOP            : 1;
        unsigned	PEN               : 1;
        unsigned	EVEN              : 1;
        unsigned	                  : 1;
        unsigned	BKREQ             : 1;
    };
} URLCRbits @ 0x48F;
#endif

// Register: URLCREXT
// LVDIErrupt-On-Change Flag Register
volatile unsigned char           URLCREXT               @ 0x490;
// bit and bitfield definitions
volatile bit EXTEN                  @ ((unsigned)&URLCREXT*8)+0;
volatile bit RWU                    @ ((unsigned)&URLCREXT*8)+1;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	EXTEN             : 1;
        unsigned	RWU               : 1; 
    };
} URLCREXTbits @ 0x490;
#endif

// Register: URMCR
// LVDIErrupt-On-Change Flag Register
volatile unsigned char           URMCR               @ 0x491;
// bit and bitfield definitions
volatile bit SIREN                  @ ((unsigned)&URMCR*8)+0;
volatile bit HDSEL                  @ ((unsigned)&URMCR*8)+1;
volatile bit WAKE                   @ ((unsigned)&URMCR*8)+2;
volatile bit RXEN                   @ ((unsigned)&URMCR*8)+3;
volatile bit TXEN                   @ ((unsigned)&URMCR*8)+4;
volatile bit SIRLP                  @ ((unsigned)&URMCR*8)+5;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	SIREN             : 1;
        unsigned	HDSEL             : 1; 
        unsigned	WAKE              : 1; 
        unsigned	RXEN              : 1; 
        unsigned	TXEN              : 1; 
        unsigned	SIRLP             : 1; 
    };
} URMCRbits @ 0x491;
#endif

// Register: URLSR
// LVDIErrupt-On-Change Flag Register
volatile unsigned char           URLSR               @ 0x492;
// bit and bitfield definitions
volatile bit RXNEF                  @ ((unsigned)&URLSR*8)+0;
volatile bit OVERF                  @ ((unsigned)&URLSR*8)+1;
volatile bit PEF                    @ ((unsigned)&URLSR*8)+2;
volatile bit FEF                    @ ((unsigned)&URLSR*8)+3;
volatile bit BKF                    @ ((unsigned)&URLSR*8)+4;
volatile bit TXEF                   @ ((unsigned)&URLSR*8)+5;
volatile bit IDLEF                  @ ((unsigned)&URLSR*8)+6;
volatile bit ADDRF                  @ ((unsigned)&URLSR*8)+7;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	RXNEF             : 1;
        unsigned	OVERF             : 1; 
        unsigned	PEF               : 1; 
        unsigned	FEF               : 1; 
        unsigned	BKF               : 1; 
        unsigned	TXEF              : 1; 
        unsigned	IDLEF             : 1; 
        unsigned	ADDRF             : 1; 
    };
} URLSRbits @ 0x492;
#endif

// Register: URRAR
// LVDIErrupt-On-Change Flag Register
volatile unsigned char           URRAR               @ 0x493;
// bit and bitfield definitions
volatile bit RAR0                    @ ((unsigned)&URRAR*8)+0;
volatile bit RAR1                    @ ((unsigned)&URRAR*8)+1;
volatile bit RAR2                    @ ((unsigned)&URRAR*8)+2;
volatile bit RAR3                    @ ((unsigned)&URRAR*8)+3;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	RAR0              : 1;
        unsigned	RAR1              : 1;
        unsigned	RAR2              : 1;
        unsigned	RAR3              : 1;
    };
    struct {
        unsigned	RAR               : 4;
    };
} URRARbits @ 0x493;
#endif


// Register: URDLL
// LVDIErrupt-On-Change Flag Register
volatile unsigned char           URDLL               @ 0x494;
// bit and bitfield definitions

// Register: URDLH
// LVDIErrupt-On-Change Flag Register
volatile unsigned char           URDLH               @ 0x495;
// bit and bitfield definitions

// Register: URABCR
// LVDIErrupt-On-Change Flag Register
volatile unsigned char           URABCR               @ 0x496;
// bit and bitfield definitions
volatile bit ABREN                  @ ((unsigned)&URABCR*8)+0;
volatile bit ABRF                   @ ((unsigned)&URABCR*8)+1;
volatile bit ABRM                   @ ((unsigned)&URABCR*8)+2;
volatile bit ABRE                   @ ((unsigned)&URABCR*8)+3;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	ABREN             : 1;
        unsigned	ABRF              : 1; 
        unsigned	ABRM              : 1; 
        unsigned	ABRE              : 1; 
    };
} URABCRbits @ 0x496;
#endif

// Register: URSYNCR
// LVDIErrupt-On-Change Flag Register
volatile unsigned char           URSYNCR               @ 0x497;
// bit and bitfield definitions
volatile bit SYNEN                  @ ((unsigned)&URSYNCR*8)+0;
volatile bit URCPOL                 @ ((unsigned)&URSYNCR*8)+1;
volatile bit URCPHA                 @ ((unsigned)&URSYNCR*8)+2;
volatile bit LBCL                   @ ((unsigned)&URSYNCR*8)+3;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	SYNEN             : 1;
        unsigned	URCPOL            : 1; 
        unsigned	URCPHA            : 1; 
        unsigned	LBCL              : 1; 
    };
} URSYNCRbits @ 0x497;
#endif

// Register: URLINCR
// LVDIErrupt-On-Change Flag Register
volatile unsigned char           URLINCR               @ 0x498;
// bit and bitfield definitions
volatile bit BLTH0                  @ ((unsigned)&URLINCR*8)+0;
volatile bit BLTH1                  @ ((unsigned)&URLINCR*8)+1;
volatile bit BLTH2                  @ ((unsigned)&URLINCR*8)+2;
volatile bit BLTH3                  @ ((unsigned)&URLINCR*8)+3;
volatile bit LINEN                  @ ((unsigned)&URLINCR*8)+4;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	BLTH0             : 1;
        unsigned	BLTH1             : 1; 
        unsigned	BLTH2             : 1; 
        unsigned	BLTH3             : 1; 
        unsigned	LINEN             : 1; 
    };
    struct {
        unsigned	BLTH             : 4;
    };
} URLINCRbits @ 0x498;
#endif

// Register: URSDCR0
// LVDIErrupt-On-Change Flag Register
volatile unsigned char           URSDCR0               @ 0x499;
// bit and bitfield definitions
volatile bit SDEN                   @ ((unsigned)&URSDCR0*8)+4;
volatile bit CKOE                   @ ((unsigned)&URSDCR0*8)+5;
volatile bit NACK                   @ ((unsigned)&URSDCR0*8)+6;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	                  : 4;
        unsigned	SDEN              : 1; 
        unsigned	CKOE              : 1; 
        unsigned	NACK              : 1; 
    };
} URSDCR0bits @ 0x499;
#endif

// Register: URSDCR1
// LVDIErrupt-On-Change Flag Register
volatile unsigned char           URSDCR1               @ 0x49A;
// bit and bitfield definitions
volatile bit GT0                   @ ((unsigned)&URSDCR1*8)+0;
volatile bit GT1                   @ ((unsigned)&URSDCR1*8)+1;
volatile bit GT2                   @ ((unsigned)&URSDCR1*8)+2;
volatile bit GT3                   @ ((unsigned)&URSDCR1*8)+3;
volatile bit GT4                   @ ((unsigned)&URSDCR1*8)+4;
volatile bit GT5                   @ ((unsigned)&URSDCR1*8)+5;
volatile bit GT6                   @ ((unsigned)&URSDCR1*8)+6;
volatile bit GT7                   @ ((unsigned)&URSDCR1*8)+7;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	GT0               : 1;
        unsigned	GT1               : 1;
        unsigned	GT2               : 1;
        unsigned	GT3               : 1;
        unsigned	GT4               : 1;
        unsigned	GT5               : 1;
        unsigned	GT6               : 1;
        unsigned	GT7               : 1;
    };
    struct {
        unsigned	GT                : 8;
    };
} URSDCR1bits @ 0x49A;
#endif

// Register: URSDCR2
// LVDIErrupt-On-Change Flag Register
volatile unsigned char           URSDCR2               @ 0x49B;
// bit and bitfield definitions
volatile bit PSC0                   @ ((unsigned)&URSDCR2*8)+0;
volatile bit PSC1                   @ ((unsigned)&URSDCR2*8)+1;
volatile bit PSC2                   @ ((unsigned)&URSDCR2*8)+2;
volatile bit PSC3                   @ ((unsigned)&URSDCR2*8)+3;
volatile bit PSC4                   @ ((unsigned)&URSDCR2*8)+4;
volatile bit PSC5                   @ ((unsigned)&URSDCR2*8)+5;
volatile bit PSC6                   @ ((unsigned)&URSDCR2*8)+6;
volatile bit PSC7                   @ ((unsigned)&URSDCR2*8)+7;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	PSC0               : 1;
        unsigned	PSC1               : 1;
        unsigned	PSC2               : 1;
        unsigned	PSC3               : 1;
        unsigned	PSC4               : 1;
        unsigned	PSC5               : 1;
        unsigned	PSC6               : 1;
        unsigned	PSC7               : 1;
    };
    struct {
        unsigned	PSC                : 8;
    };
} URSDCR2bits @ 0x49B;
#endif

// Register: URTC
// LVDIErrupt-On-Change Flag Register
volatile unsigned char           URTC               @ 0x49C;
// bit and bitfield definitions
volatile bit TCF                   @ ((unsigned)&URTC*8)+0;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	TCF               : 1;
    };
} URTCbits @ 0x49C;
#endif

// Special function register definitions: Bank 10

//
// Special function register definitions: Bank 31
//


// Register: STATUS_SHAD
// LVDIErrupt-On-Change Flag Register
volatile unsigned char           STATUS_SHAD           @ 0xFE4;
// bit and bitfield definitions

// Register: WREG_SHAD
// LVDIErrupt-On-Change Flag Register
volatile unsigned char           WREG_SHAD             @ 0xFE5;
// bit and bitfield definitions

// Register: BSREG_SHAD
// LVDIErrupt-On-Change Flag Register
volatile unsigned char           BSREG_SHAD            @ 0xFE6;
// bit and bitfield definitions

// Register: PCLATH_SHAD
// LVDIErrupt-On-Change Flag Register
volatile unsigned char           PCLATH_SHAD            @ 0xFE7;
// bit and bitfield definitions

// Register: FSR0L_SHAD
// LVDIErrupt-On-Change Flag Register
volatile unsigned char           FSR0L_SHAD            @ 0xFE8;
// bit and bitfield definitions

// Register: FSR0L_SHAD
// LVDIErrupt-On-Change Flag Register
volatile unsigned char           FSR0H_SHAD            @ 0xFE9;
// bit and bitfield definitions

// Register: FSR0L_SHAD
// LVDIErrupt-On-Change Flag Register
volatile unsigned char           FSR1L_SHAD            @ 0xFEA;
// bit and bitfield definitions

// Register: FSR0L_SHAD
// LVDIErrupt-On-Change Flag Register
volatile unsigned char           FSR1H_SHAD            @ 0xFEB;
// bit and bitfield definitions

// Register: STKPTR
// LVDIErrupt-On-Change Flag Register
volatile unsigned char           STKPTR                @ 0xFED;
// bit and bitfield definitions

// Register: TOSL
// LVDIErrupt-On-Change Flag Register
volatile unsigned char           TOSL                  @ 0xFEE;
// bit and bitfield definitions

// Register: TOSH
// LVDIErrupt-On-Change Flag Register
volatile unsigned char           TOSH                  @ 0xFEF;
// bit and bitfield definitions

//=======================================================
const unsigned char ad3nop @0x03 = 00;
#endif