//Deviec:FT64F0AX
//-----------------------Variable---------------------------------
		_testdata		EQU		20H
		_y		EQU		74H
		_dataH		EQU		73H
		_dataL		EQU		72H
		_period		EQU		70H
//-----------------------Variable END---------------------------------
		ORG		0000H
		MOVLP 	0H 			//0000 	0180
		LJUMP 	3BH 			//0001 	383B
		ORG		0004H
		BSR 	7EH, 0H 			//0004 	247E
		MOVLP 	0H 			//0005 	0180

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 48: if(T4UIE&&T4UIF)
		MOVLB 	2H 			//0006 	1022
		BTSC 	12H, 0H 		//0007 	2812
		BTSS 	13H, 0H 		//0008 	2C13
		LJUMP 	EH 			//0009 	380E

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 49: {
		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 50: T4UIF=1;
		BSR 	13H, 0H 			//000A 	2413

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 51: PB3=~PB3;
		LDWI 	8H 			//000B 	0008
		ORG		000CH
		MOVLB 	0H 			//000C 	1020
		XORWR 	DH, 1H 		//000D 	168D

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 52: }
		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 54: if(T1CC1IE&&T1CC1IF)
		MOVLB 	4H 			//000E 	1024
		BTSC 	15H, 1H 		//000F 	2895
		BTSS 	16H, 1H 		//0010 	2C96
		LJUMP 	39H 			//0011 	3839

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 55: {
		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 56: T1CC1IF=1;
		BSR 	16H, 1H 			//0012 	2496

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 57: TIM1CNTRH=0X00;
		MOVLB 	5H 			//0013 	1025
		ORG		0014H
		CLRF 	CH 			//0014 	118C

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 58: TIM1CNTRL=0X00;
		CLRF 	DH 			//0015 	118D

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 59: T1CC1OF=0;
		MOVLB 	4H 			//0016 	1024
		BCR 	17H, 1H 			//0017 	2097

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 60: PB4=~PB4;
		LDWI 	10H 			//0018 	0010
		MOVLB 	0H 			//0019 	1020
		XORWR 	DH, 1H 		//001A 	168D

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 61: dataH=TIM1CCR1H;
		MOVLB 	5H 			//001B 	1025
		ORG		001CH
		LDR 	13H, 0H 			//001C 	1813
		STR 	73H 			//001D 	10F3

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 62: dataL=TIM1CCR1L;
		LDR 	14H, 0H 			//001E 	1814
		STR 	72H 			//001F 	10F2

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 63: testdata[y++]=(unsigned int)(dataH<<8|dataL);
		LSLF 	74H, 0H 		//0020 	0574
		ADDWI 	20H 			//0021 	0E20
		STR 	6H 			//0022 	1086
		CLRF 	7H 			//0023 	1187
		ORG		0024H
		LDR 	72H, 0H 			//0024 	1872
		MOVWI 	0H[1] 			//0025 	0FC0
		LDR 	73H, 0H 			//0026 	1873
		MOVWI 	1H[1] 			//0027 	0FC1
		INCR 	74H, 1H 		//0028 	1AF4

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 64: __nop();
		NOP 					//0029 	1000

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 66: if(y>=20)
		LDWI 	14H 			//002A 	0014
		SUBWR 	74H, 0H 		//002B 	1274
		ORG		002CH
		BTSS 	3H, 0H 			//002C 	2C03
		LJUMP 	39H 			//002D 	3839

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 67: {
		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 68: y=0;
		CLRF 	74H 			//002E 	11F4

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 71: period=testdata[1]/32;
		MOVLB 	0H 			//002F 	1020
		LDR 	23H, 0H 			//0030 	1823
		STR 	71H 			//0031 	10F1
		LDR 	22H, 0H 			//0032 	1822
		STR 	70H 			//0033 	10F0
		ORG		0034H
		LDWI 	5H 			//0034 	0005
		LSRF 	71H, 1H 		//0035 	06F1
		RRR 	70H, 1H 			//0036 	1CF0
		DECRSZ 	9H, 1H 		//0037 	1B89
		LJUMP 	35H 			//0038 	3835
		BCR 	7EH, 0H 			//0039 	207E
		RETI 					//003A 	1009
		MOVLP 	0H 			//003B 	0180
		ORG		003CH
		LJUMP 	3DH 			//003C 	383D
		LDWI 	20H 			//003D 	0020
		CLRF 	70H 			//003E 	11F0
		CLRF 	71H 			//003F 	11F1
		CLRF 	72H 			//0040 	11F2
		CLRF 	73H 			//0041 	11F3
		CLRF 	74H 			//0042 	11F4
		STR 	4H 			//0043 	1084
		ORG		0044H
		LDWI 	0H 			//0044 	0000
		STR 	5H 			//0045 	1085
		LDWI 	28H 			//0046 	0028
		MOVLP 	0H 			//0047 	0180
		LCALL 	AAH 			//0048 	30AA
		MOVLP 	0H 			//0049 	0180
		BCR 	7EH, 0H 			//004A 	207E
		MOVLB 	0H 			//004B 	1020
		ORG		004CH
		LJUMP 	4DH 			//004C 	384D

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 175: POWER_INITIAL();
		LCALL 	55H 			//004D 	3055
		MOVLP 	0H 			//004E 	0180

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 176: TIM1_INITIAL();
		LCALL 	78H 			//004F 	3078
		MOVLP 	0H 			//0050 	0180

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 177: TIM4_INITIAL();
		LCALL 	99H 			//0051 	3099
		MOVLP 	0H 			//0052 	0180

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 180: {
		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 181: __nop();
		NOP 					//0053 	1000
		ORG		0054H
		LJUMP 	53H 			//0054 	3853

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 83: OSCCON=0B01110001;
		LDWI 	71H 			//0055 	0071
		MOVLB 	1H 			//0056 	1021
		STR 	19H 			//0057 	1099

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 84: INTCON=0;
		CLRF 	BH 			//0058 	118B

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 86: PORTA=0B00000000;
		MOVLB 	0H 			//0059 	1020
		CLRF 	CH 			//005A 	118C

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 87: PORTB=0B00000000;
		CLRF 	DH 			//005B 	118D
		ORG		005CH

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 88: PORTC=0B00000000;
		CLRF 	EH 			//005C 	118E

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 90: WPUA=0B00000000;
		MOVLB 	3H 			//005D 	1023
		CLRF 	CH 			//005E 	118C

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 91: WPUB=0B00000000;
		CLRF 	DH 			//005F 	118D

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 92: WPUC=0B00000000;
		CLRF 	EH 			//0060 	118E

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 94: WPDA=0B00000000;
		MOVLB 	4H 			//0061 	1024
		CLRF 	CH 			//0062 	118C

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 95: WPDB=0B00000000;
		CLRF 	DH 			//0063 	118D
		ORG		0064H

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 96: WPDC=0B00000000;
		CLRF 	EH 			//0064 	118E

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 98: TRISA=0B00000001;
		LDWI 	1H 			//0065 	0001
		MOVLB 	1H 			//0066 	1021
		STR 	CH 			//0067 	108C

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 99: TRISB=0B00000000;
		CLRF 	DH 			//0068 	118D

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 100: TRISC=0B00000000;
		CLRF 	EH 			//0069 	118E

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 102: PSRC0=0B11111111;
		LDWI 	FFH 			//006A 	00FF
		MOVLB 	2H 			//006B 	1022
		ORG		006CH
		STR 	1AH 			//006C 	109A

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 103: PSRC1=0B11111111;
		STR 	1BH 			//006D 	109B

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 104: PSRC2=0B00001111;
		LDWI 	FH 			//006E 	000F
		STR 	1CH 			//006F 	109C

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 106: PSINK0=0B11111111;
		LDWI 	FFH 			//0070 	00FF
		MOVLB 	3H 			//0071 	1023
		STR 	1AH 			//0072 	109A

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 107: PSINK1=0B11111111;
		STR 	1BH 			//0073 	109B
		ORG		0074H

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 108: PSINK2=0B00000011;
		LDWI 	3H 			//0074 	0003
		STR 	1CH 			//0075 	109C

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 110: ANSELA=0B00000000;
		CLRF 	17H 			//0076 	1197
		RET 					//0077 	1008

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 137: PCKEN|=0B00000010;
		MOVLB 	1H 			//0078 	1021
		BSR 	1AH, 1H 			//0079 	249A

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 138: CKOCON=0B00100000;
		LDWI 	20H 			//007A 	0020
		STR 	15H 			//007B 	1095
		ORG		007CH

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 139: TCKSRC=0B00000011;
		LDWI 	3H 			//007C 	0003
		MOVLB 	6H 			//007D 	1026
		STR 	1FH 			//007E 	109F

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 141: TIM1CR1=0B00000110;
		LDWI 	6H 			//007F 	0006
		MOVLB 	4H 			//0080 	1024
		STR 	11H 			//0081 	1091

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 142: TIM1CR2=0B00000000;
		CLRF 	12H 			//0082 	1192

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 144: TIM1SMCR=0B01010000;
		LDWI 	50H 			//0083 	0050
		ORG		0084H
		STR 	13H 			//0084 	1093

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 145: TIM1SMCR=0B00000100;
		LDWI 	4H 			//0085 	0004
		STR 	13H 			//0086 	1093

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 146: TIM1ETR=0B00000000;
		CLRF 	14H 			//0087 	1194

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 147: TIM1IER=0B00000010;
		LDWI 	2H 			//0088 	0002
		STR 	15H 			//0089 	1095

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 149: TIM1SR1=0B00000000;
		CLRF 	16H 			//008A 	1196

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 150: TIM1SR2=0B00000000;
		CLRF 	17H 			//008B 	1197
		ORG		008CH

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 152: TIM1EGR=0B00000000;
		CLRF 	18H 			//008C 	1198

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 154: TIM1CCMR1=0B00000001;
		LDWI 	1H 			//008D 	0001
		STR 	19H 			//008E 	1099

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 156: TIM1CCER1=0B00000001;
		STR 	1DH 			//008F 	109D

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 157: TIM1CCER2=0B00000000;
		CLRF 	1EH 			//0090 	119E

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 159: TIM1CNTRH=0B00000000;
		MOVLB 	5H 			//0091 	1025
		CLRF 	CH 			//0092 	118C

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 160: TIM1CNTRL=0B00000000;
		CLRF 	DH 			//0093 	118D
		ORG		0094H

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 162: TIM1PSCRH=0B00000000;
		CLRF 	EH 			//0094 	118E

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 163: TIM1PSCRL=0B00000000;
		CLRF 	FH 			//0095 	118F

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 165: T1CEN=1;
		MOVLB 	4H 			//0096 	1024
		BSR 	11H, 0H 			//0097 	2411
		RET 					//0098 	1008

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 119: PCKEN|=0B00001000;
		MOVLB 	1H 			//0099 	1021
		BSR 	1AH, 3H 			//009A 	259A

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 120: TIM4CR1=0B00000101;
		LDWI 	5H 			//009B 	0005
		ORG		009CH
		MOVLB 	2H 			//009C 	1022
		STR 	11H 			//009D 	1091

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 121: TIM4IER=0B00000001;
		LDWI 	1H 			//009E 	0001
		STR 	12H 			//009F 	1092

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 122: TIM4SR=0B00000000;
		CLRF 	13H 			//00A0 	1193

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 123: TIM4EGR=0B00000000;
		CLRF 	14H 			//00A1 	1194

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 124: TIM4CNTR=0;
		CLRF 	15H 			//00A2 	1195

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 125: TIM4PSCR=0B00000100;
		LDWI 	4H 			//00A3 	0004
		ORG		00A4H
		STR 	16H 			//00A4 	1096

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 126: TIM4ARR=124;
		LDWI 	7CH 			//00A5 	007C
		STR 	17H 			//00A6 	1097

		//;TEST_FT64F0AX_TIM1_CAPTURE.C: 127: INTCON|=0B11000000;
		LDWI 	C0H 			//00A7 	00C0
		IORWR 	BH, 1H 		//00A8 	148B
		RET 					//00A9 	1008
		CLRWDT 			//00AA 	1064
		CLRF 	0H 			//00AB 	1180
		ORG		00ACH
		ADDFSR 	0H, 1H 		//00AC 	0101
		DECRSZ 	9H, 1H 		//00AD 	1B89
		LJUMP 	ABH 			//00AE 	38AB
		RETW 	0H 			//00AF 	0400
			END
