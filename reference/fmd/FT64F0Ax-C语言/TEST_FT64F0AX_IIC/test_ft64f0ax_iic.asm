//Deviec:FT64F0AX
//-----------------------Variable---------------------------------
		_IICReadData		EQU		75H
//		IIC_Write@address		EQU		71H
//		IIC_Write@data		EQU		70H
//		IIC_Write@address		EQU		C00000H
//		IIC_Read@address		EQU		70H
//		IIC_Read@iicdata		EQU		71H
//		IIC_Read@address		EQU		C00000H
//		DelayMs@Time		EQU		72H
//		DelayMs@b		EQU		74H
//		DelayMs@a		EQU		73H
//		DelayMs@Time		EQU		C00000H
//		DelayUs@Time		EQU		70H
//		DelayUs@a		EQU		71H
//		DelayUs@Time		EQU		C00000H
//-----------------------Variable END---------------------------------
		ORG		0000H
		MOVLP 	0H 			//0000 	0180
		LJUMP 	2H 			//0001 	3802
		MOVLP 	7H 			//0002 	0187
		LJUMP 	77CH 			//0003 	3F7C
		ORG		077CH
		CLRF 	75H 			//077C 	11F5
		MOVLB 	0H 			//077D 	1020
		LJUMP 	77FH 			//077E 	3F7F

		//;TEST_FT64F0AX_IIC.C: 181: POWER_INITIAL();
		LCALL 	7DEH 			//077F 	37DE
		MOVLP 	7H 			//0780 	0187

		//;TEST_FT64F0AX_IIC.C: 182: IIC_INITIAL();
		LCALL 	7ABH 			//0781 	37AB
		MOVLP 	7H 			//0782 	0187

		//;TEST_FT64F0AX_IIC.C: 184: IIC_Write(0x12,0x55);
		LDWI 	55H 			//0783 	0055
		ORG		0784H
		STR 	70H 			//0784 	10F0
		LDWI 	12H 			//0785 	0012
		LCALL 	7CFH 			//0786 	37CF
		MOVLP 	7H 			//0787 	0187

		//;TEST_FT64F0AX_IIC.C: 185: DelayMs(10);
		LDWI 	AH 			//0788 	000A
		LCALL 	791H 			//0789 	3791
		MOVLP 	7H 			//078A 	0187

		//;TEST_FT64F0AX_IIC.C: 186: IICReadData=IIC_Read(0x12);
		LDWI 	12H 			//078B 	0012
		ORG		078CH
		LCALL 	7BEH 			//078C 	37BE
		MOVLP 	7H 			//078D 	0187
		STR 	75H 			//078E 	10F5

		//;TEST_FT64F0AX_IIC.C: 189: {
		//;TEST_FT64F0AX_IIC.C: 190: __nop();
		NOP 					//078F 	1000
		LJUMP 	78FH 			//0790 	3F8F
		STR 	72H 			//0791 	10F2

		//;TEST_FT64F0AX_IIC.C: 113: unsigned char a,b;
		//;TEST_FT64F0AX_IIC.C: 114: for(a=0;a<Time;a++)
		CLRF 	73H 			//0792 	11F3
		LDR 	72H, 0H 			//0793 	1872
		ORG		0794H
		SUBWR 	73H, 0H 		//0794 	1273
		BTSC 	3H, 0H 			//0795 	2803
		RET 					//0796 	1008

		//;TEST_FT64F0AX_IIC.C: 115: {
		//;TEST_FT64F0AX_IIC.C: 116: for(b=0;b<5;b++)
		CLRF 	74H 			//0797 	11F4

		//;TEST_FT64F0AX_IIC.C: 117: {
		//;TEST_FT64F0AX_IIC.C: 118: DelayUs(197);
		LDWI 	C5H 			//0798 	00C5
		LCALL 	7A2H 			//0799 	37A2
		MOVLP 	7H 			//079A 	0187
		LDWI 	5H 			//079B 	0005
		ORG		079CH
		INCR 	74H, 1H 		//079C 	1AF4
		SUBWR 	74H, 0H 		//079D 	1274
		BTSS 	3H, 0H 			//079E 	2C03
		LJUMP 	798H 			//079F 	3F98
		INCR 	73H, 1H 		//07A0 	1AF3
		LJUMP 	793H 			//07A1 	3F93
		STR 	70H 			//07A2 	10F0

		//;TEST_FT64F0AX_IIC.C: 99: unsigned char a;
		//;TEST_FT64F0AX_IIC.C: 100: for(a=0;a<Time;a++)
		CLRF 	71H 			//07A3 	11F1
		ORG		07A4H
		LDR 	70H, 0H 			//07A4 	1870
		SUBWR 	71H, 0H 		//07A5 	1271
		BTSC 	3H, 0H 			//07A6 	2803
		RET 					//07A7 	1008

		//;TEST_FT64F0AX_IIC.C: 101: {
		//;TEST_FT64F0AX_IIC.C: 102: __nop();
		NOP 					//07A8 	1000
		INCR 	71H, 1H 		//07A9 	1AF1
		LJUMP 	7A4H 			//07AA 	3FA4

		//;TEST_FT64F0AX_IIC.C: 77: PCKEN|=0B01000000;
		MOVLB 	1H 			//07AB 	1021
		ORG		07ACH
		BSR 	1AH, 6H 			//07AC 	271A

		//;TEST_FT64F0AX_IIC.C: 78: ODCON0|=0B00000010;
		MOVLB 	4H 			//07AD 	1024
		BSR 	1FH, 1H 			//07AE 	249F

		//;TEST_FT64F0AX_IIC.C: 80: I2CCR1=0B00000001;
		LDWI 	1H 			//07AF 	0001
		MOVLB 	8H 			//07B0 	1028
		STR 	CH 			//07B1 	108C

		//;TEST_FT64F0AX_IIC.C: 81: I2CCR2=0B00000000;
		CLRF 	DH 			//07B2 	118D

		//;TEST_FT64F0AX_IIC.C: 82: I2CCR3=0B00000000;
		CLRF 	EH 			//07B3 	118E
		ORG		07B4H

		//;TEST_FT64F0AX_IIC.C: 83: I2COARL=0B01010000;
		LDWI 	50H 			//07B4 	0050
		STR 	FH 			//07B5 	108F

		//;TEST_FT64F0AX_IIC.C: 84: I2COARH=0B00000000;
		CLRF 	10H 			//07B6 	1190

		//;TEST_FT64F0AX_IIC.C: 85: I2CFREQ=0B00010000;
		LDWI 	10H 			//07B7 	0010
		STR 	11H 			//07B8 	1091

		//;TEST_FT64F0AX_IIC.C: 86: I2CCCRL=0B00000000;
		CLRF 	14H 			//07B9 	1194

		//;TEST_FT64F0AX_IIC.C: 87: I2CCCRH=0B00000000;
		CLRF 	15H 			//07BA 	1195

		//;TEST_FT64F0AX_IIC.C: 88: I2CITR=0B00000000;
		CLRF 	16H 			//07BB 	1196
		ORG		07BCH

		//;TEST_FT64F0AX_IIC.C: 89: ENABLE=1;
		BSR 	EH, 0H 			//07BC 	240E
		RET 					//07BD 	1008
		STR 	70H 			//07BE 	10F0

		//;TEST_FT64F0AX_IIC.C: 148: while(!IICTXE);
		MOVLB 	8H 			//07BF 	1028
		BTSS 	17H, 7H 		//07C0 	2F97
		LJUMP 	7BFH 			//07C1 	3FBF

		//;TEST_FT64F0AX_IIC.C: 149: I2CDR=address;
		LDR 	70H, 0H 			//07C2 	1870
		STR 	12H 			//07C3 	1092
		ORG		07C4H

		//;TEST_FT64F0AX_IIC.C: 150: I2CCMD=0B00000110;
		LDWI 	6H 			//07C4 	0006
		STR 	13H 			//07C5 	1093

		//;TEST_FT64F0AX_IIC.C: 151: while(!IICTXE);
		BTSS 	17H, 7H 		//07C6 	2F97
		LJUMP 	7C6H 			//07C7 	3FC6

		//;TEST_FT64F0AX_IIC.C: 152: I2CCMD=0B00000011;
		LDWI 	3H 			//07C8 	0003
		STR 	13H 			//07C9 	1093

		//;TEST_FT64F0AX_IIC.C: 153: while(!IICRXNE);
		BTSS 	17H, 6H 		//07CA 	2F17
		LJUMP 	7CAH 			//07CB 	3FCA
		ORG		07CCH

		//;TEST_FT64F0AX_IIC.C: 154: iicdata=I2CDR;
		LDR 	12H, 0H 			//07CC 	1812
		STR 	71H 			//07CD 	10F1

		//;TEST_FT64F0AX_IIC.C: 155: return iicdata;
		RET 					//07CE 	1008
		STR 	71H 			//07CF 	10F1

		//;TEST_FT64F0AX_IIC.C: 165: while(!IICTXE);
		BTSS 	17H, 7H 		//07D0 	2F97
		LJUMP 	7D0H 			//07D1 	3FD0

		//;TEST_FT64F0AX_IIC.C: 166: I2CDR = address;
		LDR 	71H, 0H 			//07D2 	1871
		STR 	12H 			//07D3 	1092
		ORG		07D4H

		//;TEST_FT64F0AX_IIC.C: 167: I2CCMD= 0B00000000;
		CLRF 	13H 			//07D4 	1193

		//;TEST_FT64F0AX_IIC.C: 168: while(!IICTXE);
		BTSS 	17H, 7H 		//07D5 	2F97
		LJUMP 	7D5H 			//07D6 	3FD5

		//;TEST_FT64F0AX_IIC.C: 169: I2CDR = data;
		LDR 	70H, 0H 			//07D7 	1870
		STR 	12H 			//07D8 	1092

		//;TEST_FT64F0AX_IIC.C: 170: I2CCMD= 0B00000010;
		LDWI 	2H 			//07D9 	0002
		STR 	13H 			//07DA 	1093

		//;TEST_FT64F0AX_IIC.C: 171: while(!IICTXE);
		BTSC 	17H, 7H 		//07DB 	2B97
		ORG		07DCH
		RET 					//07DC 	1008
		LJUMP 	7DBH 			//07DD 	3FDB

		//;TEST_FT64F0AX_IIC.C: 39: OSCCON=0B01110001;
		LDWI 	71H 			//07DE 	0071
		MOVLB 	1H 			//07DF 	1021
		STR 	19H 			//07E0 	1099

		//;TEST_FT64F0AX_IIC.C: 41: INTCON=0;
		CLRF 	BH 			//07E1 	118B

		//;TEST_FT64F0AX_IIC.C: 43: PORTA=0B00000000;
		MOVLB 	0H 			//07E2 	1020
		CLRF 	CH 			//07E3 	118C
		ORG		07E4H

		//;TEST_FT64F0AX_IIC.C: 44: PORTB=0B00000000;
		CLRF 	DH 			//07E4 	118D

		//;TEST_FT64F0AX_IIC.C: 45: PORTC=0B00000000;
		CLRF 	EH 			//07E5 	118E

		//;TEST_FT64F0AX_IIC.C: 47: WPUA=0B00000000;
		MOVLB 	3H 			//07E6 	1023
		CLRF 	CH 			//07E7 	118C

		//;TEST_FT64F0AX_IIC.C: 48: WPUB=0B00000000;
		CLRF 	DH 			//07E8 	118D

		//;TEST_FT64F0AX_IIC.C: 49: WPUC=0B00000000;
		CLRF 	EH 			//07E9 	118E

		//;TEST_FT64F0AX_IIC.C: 51: WPDA=0B00000000;
		MOVLB 	4H 			//07EA 	1024
		CLRF 	CH 			//07EB 	118C
		ORG		07ECH

		//;TEST_FT64F0AX_IIC.C: 52: WPDB=0B00000000;
		CLRF 	DH 			//07EC 	118D

		//;TEST_FT64F0AX_IIC.C: 53: WPDC=0B00000000;
		CLRF 	EH 			//07ED 	118E

		//;TEST_FT64F0AX_IIC.C: 55: TRISA=0B00000000;
		MOVLB 	1H 			//07EE 	1021
		CLRF 	CH 			//07EF 	118C

		//;TEST_FT64F0AX_IIC.C: 56: TRISB=0B00000000;
		CLRF 	DH 			//07F0 	118D

		//;TEST_FT64F0AX_IIC.C: 57: TRISC=0B00000000;
		CLRF 	EH 			//07F1 	118E

		//;TEST_FT64F0AX_IIC.C: 59: PSRC0=0B11111111;
		LDWI 	FFH 			//07F2 	00FF
		MOVLB 	2H 			//07F3 	1022
		ORG		07F4H
		STR 	1AH 			//07F4 	109A

		//;TEST_FT64F0AX_IIC.C: 60: PSRC1=0B11111111;
		STR 	1BH 			//07F5 	109B

		//;TEST_FT64F0AX_IIC.C: 61: PSRC2=0B00001111;
		LDWI 	FH 			//07F6 	000F
		STR 	1CH 			//07F7 	109C

		//;TEST_FT64F0AX_IIC.C: 63: PSINK0=0B11111111;
		LDWI 	FFH 			//07F8 	00FF
		MOVLB 	3H 			//07F9 	1023
		STR 	1AH 			//07FA 	109A

		//;TEST_FT64F0AX_IIC.C: 64: PSINK1=0B11111111;
		STR 	1BH 			//07FB 	109B
		ORG		07FCH

		//;TEST_FT64F0AX_IIC.C: 65: PSINK2=0B00000011;
		LDWI 	3H 			//07FC 	0003
		STR 	1CH 			//07FD 	109C

		//;TEST_FT64F0AX_IIC.C: 67: ANSELA=0B00000000;
		CLRF 	17H 			//07FE 	1197
		RET 					//07FF 	1008
			END
