//Deviec:FT64F0AX
//-----------------------Variable---------------------------------
		_IRbitNum		EQU		78H
		_IRbitTime		EQU		77H
		_IRDataTimer		EQU		70H
		_bitdata		EQU		79H
		_ReceiveFinish		EQU		76H
		_rdata1		EQU		75H
		_rdata2		EQU		74H
//-----------------------Variable END---------------------------------
		ORG		0000H
		MOVLP 	0H 			//0000 	0180
		LJUMP 	41H 			//0001 	3841
		ORG		0004H
		BSR 	7EH, 0H 			//0004 	247E
		MOVLP 	0H 			//0005 	0180

		//;TEST_FT64F0AX_IR_Receive.C: 50: if(T4UIE&&T4UIF)
		MOVLB 	2H 			//0006 	1022
		BTSC 	12H, 0H 		//0007 	2812
		BTSS 	13H, 0H 		//0008 	2C13
		LJUMP 	12H 			//0009 	3812

		//;TEST_FT64F0AX_IR_Receive.C: 51: {
		//;TEST_FT64F0AX_IR_Receive.C: 52: T4UIF=1;
		BSR 	13H, 0H 			//000A 	2413
		LDWI 	33H 			//000B 	0033
		ORG		000CH

		//;TEST_FT64F0AX_IR_Receive.C: 54: IRbitTime++;
		INCR 	77H, 1H 		//000C 	1AF7

		//;TEST_FT64F0AX_IR_Receive.C: 55: if(IRbitTime>50)
		SUBWR 	77H, 0H 		//000D 	1277
		BTSS 	3H, 0H 			//000E 	2C03
		LJUMP 	12H 			//000F 	3812

		//;TEST_FT64F0AX_IR_Receive.C: 56: {
		//;TEST_FT64F0AX_IR_Receive.C: 57: T4UIE=0;
		BCR 	12H, 0H 			//0010 	2012

		//;TEST_FT64F0AX_IR_Receive.C: 58: IRbitTime=0;
		CLRF 	77H 			//0011 	11F7

		//;TEST_FT64F0AX_IR_Receive.C: 59: }
		//;TEST_FT64F0AX_IR_Receive.C: 60: }
		//;TEST_FT64F0AX_IR_Receive.C: 63: if(EPIF0&0X08)
		MOVLB 	0H 			//0012 	1020
		BTSS 	14H, 3H 		//0013 	2D94
		ORG		0014H
		LJUMP 	3FH 			//0014 	383F

		//;TEST_FT64F0AX_IR_Receive.C: 64: {
		//;TEST_FT64F0AX_IR_Receive.C: 65: EPIF0|=0X08;
		BSR 	14H, 3H 			//0015 	2594

		//;TEST_FT64F0AX_IR_Receive.C: 67: if(PA3==0)
		BTSC 	CH, 3H 			//0016 	298C
		LJUMP 	3FH 			//0017 	383F

		//;TEST_FT64F0AX_IR_Receive.C: 68: {
		//;TEST_FT64F0AX_IR_Receive.C: 69: T4UIE=1;
		MOVLB 	2H 			//0018 	1022
		BSR 	12H, 0H 			//0019 	2412

		//;TEST_FT64F0AX_IR_Receive.C: 70: if(IRbitTime>21)
		LDWI 	16H 			//001A 	0016
		SUBWR 	77H, 0H 		//001B 	1277
		ORG		001CH
		BTSS 	3H, 0H 			//001C 	2C03
		LJUMP 	25H 			//001D 	3825

		//;TEST_FT64F0AX_IR_Receive.C: 71: {
		//;TEST_FT64F0AX_IR_Receive.C: 72: IRDataTimer[0]=0;
		CLRF 	70H 			//001E 	11F0

		//;TEST_FT64F0AX_IR_Receive.C: 73: IRDataTimer[1]=0;
		CLRF 	71H 			//001F 	11F1

		//;TEST_FT64F0AX_IR_Receive.C: 74: IRDataTimer[2]=0;
		CLRF 	72H 			//0020 	11F2

		//;TEST_FT64F0AX_IR_Receive.C: 75: IRDataTimer[3]=0;
		CLRF 	73H 			//0021 	11F3

		//;TEST_FT64F0AX_IR_Receive.C: 76: IRbitNum=0;
		CLRF 	78H 			//0022 	11F8

		//;TEST_FT64F0AX_IR_Receive.C: 77: bitdata=0x00;
		CLRF 	79H 			//0023 	11F9
		ORG		0024H

		//;TEST_FT64F0AX_IR_Receive.C: 78: }
		LJUMP 	2FH 			//0024 	382F

		//;TEST_FT64F0AX_IR_Receive.C: 79: else if(IRbitTime>3)
		LDWI 	4H 			//0025 	0004
		SUBWR 	77H, 0H 		//0026 	1277
		BTSS 	3H, 0H 			//0027 	2C03
		LJUMP 	2FH 			//0028 	382F

		//;TEST_FT64F0AX_IR_Receive.C: 80: {
		//;TEST_FT64F0AX_IR_Receive.C: 81: IRDataTimer[IRbitNum-1]|=bitdata;
		LDR 	78H, 0H 			//0029 	1878
		ADDWI 	6FH 			//002A 	0E6F
		STR 	6H 			//002B 	1086
		ORG		002CH
		CLRF 	7H 			//002C 	1187
		LDR 	79H, 0H 			//002D 	1879
		IORWR 	1H, 1H 		//002E 	1481

		//;TEST_FT64F0AX_IR_Receive.C: 82: }
		//;TEST_FT64F0AX_IR_Receive.C: 83: IRbitTime = 0;
		CLRF 	77H 			//002F 	11F7

		//;TEST_FT64F0AX_IR_Receive.C: 84: bitdata<<=1;
		LSLF 	79H, 1H 		//0030 	05F9

		//;TEST_FT64F0AX_IR_Receive.C: 85: if(bitdata==0)
		LDR 	79H, 0H 			//0031 	1879
		BTSS 	3H, 2H 			//0032 	2D03
		LJUMP 	37H 			//0033 	3837
		ORG		0034H

		//;TEST_FT64F0AX_IR_Receive.C: 86: {
		//;TEST_FT64F0AX_IR_Receive.C: 87: bitdata=0x01;
		CLRF 	79H 			//0034 	11F9
		INCR 	79H, 1H 		//0035 	1AF9

		//;TEST_FT64F0AX_IR_Receive.C: 88: IRbitNum++;
		INCR 	78H, 1H 		//0036 	1AF8

		//;TEST_FT64F0AX_IR_Receive.C: 89: }
		//;TEST_FT64F0AX_IR_Receive.C: 90: if(IRbitNum>4)
		LDWI 	5H 			//0037 	0005
		SUBWR 	78H, 0H 		//0038 	1278
		BTSS 	3H, 0H 			//0039 	2C03
		LJUMP 	3FH 			//003A 	383F

		//;TEST_FT64F0AX_IR_Receive.C: 91: {
		//;TEST_FT64F0AX_IR_Receive.C: 92: IRbitNum=0;
		CLRF 	78H 			//003B 	11F8
		ORG		003CH

		//;TEST_FT64F0AX_IR_Receive.C: 93: T4UIE=0;
		BCR 	12H, 0H 			//003C 	2012

		//;TEST_FT64F0AX_IR_Receive.C: 94: ReceiveFinish=1;
		CLRF 	76H 			//003D 	11F6
		INCR 	76H, 1H 		//003E 	1AF6
		BCR 	7EH, 0H 			//003F 	207E
		RETI 					//0040 	1009
		MOVLP 	0H 			//0041 	0180
		LJUMP 	43H 			//0042 	3843
		LDWI 	1H 			//0043 	0001
		ORG		0044H
		STR 	79H 			//0044 	10F9
		CLRF 	70H 			//0045 	11F0
		CLRF 	71H 			//0046 	11F1
		CLRF 	72H 			//0047 	11F2
		CLRF 	73H 			//0048 	11F3
		CLRF 	74H 			//0049 	11F4
		CLRF 	75H 			//004A 	11F5
		CLRF 	76H 			//004B 	11F6
		ORG		004CH
		CLRF 	77H 			//004C 	11F7
		CLRF 	78H 			//004D 	11F8
		BCR 	7EH, 0H 			//004E 	207E
		MOVLB 	0H 			//004F 	1020
		LJUMP 	51H 			//0050 	3851

		//;TEST_FT64F0AX_IR_Receive.C: 176: POWER_INITIAL();
		LCALL 	6BH 			//0051 	306B
		MOVLP 	0H 			//0052 	0180

		//;TEST_FT64F0AX_IR_Receive.C: 177: TIMER4_INITIAL();
		LCALL 	9CH 			//0053 	309C
		ORG		0054H
		MOVLP 	0H 			//0054 	0180

		//;TEST_FT64F0AX_IR_Receive.C: 178: Px_Level_Change_INITIAL();
		LCALL 	91H 			//0055 	3091
		MOVLP 	0H 			//0056 	0180

		//;TEST_FT64F0AX_IR_Receive.C: 179: GIE=1;
		BSR 	BH, 7H 			//0057 	278B

		//;TEST_FT64F0AX_IR_Receive.C: 182: {
		//;TEST_FT64F0AX_IR_Receive.C: 183: if(ReceiveFinish==1)
		DECRSZ 	76H, 0H 		//0058 	1B76
		LJUMP 	58H 			//0059 	3858

		//;TEST_FT64F0AX_IR_Receive.C: 184: {
		//;TEST_FT64F0AX_IR_Receive.C: 185: ReceiveFinish=0;
		CLRF 	76H 			//005A 	11F6

		//;TEST_FT64F0AX_IR_Receive.C: 186: rdata1=0xFF-IRDataTimer[0];
		COMR 	70H, 0H 		//005B 	1970
		ORG		005CH
		STR 	75H 			//005C 	10F5

		//;TEST_FT64F0AX_IR_Receive.C: 187: rdata2=0xFF-IRDataTimer[2];
		COMR 	72H, 0H 		//005D 	1972
		STR 	74H 			//005E 	10F4

		//;TEST_FT64F0AX_IR_Receive.C: 188: if((rdata1==IRDataTimer[1])&&(rdata2==IRDataTimer[3]))
		LDR 	71H, 0H 			//005F 	1871
		XORWR 	75H, 0H 		//0060 	1675
		BTSS 	3H, 2H 			//0061 	2D03
		LJUMP 	58H 			//0062 	3858
		LDR 	73H, 0H 			//0063 	1873
		ORG		0064H
		XORWR 	74H, 0H 		//0064 	1674
		BTSS 	3H, 2H 			//0065 	2D03
		LJUMP 	58H 			//0066 	3858

		//;TEST_FT64F0AX_IR_Receive.C: 189: {
		//;TEST_FT64F0AX_IR_Receive.C: 190: PB3=~PB3;
		LDWI 	8H 			//0067 	0008
		MOVLB 	0H 			//0068 	1020
		XORWR 	DH, 1H 		//0069 	168D
		LJUMP 	58H 			//006A 	3858

		//;TEST_FT64F0AX_IR_Receive.C: 107: OSCCON=0B01110001;
		LDWI 	71H 			//006B 	0071
		ORG		006CH
		MOVLB 	1H 			//006C 	1021
		STR 	19H 			//006D 	1099

		//;TEST_FT64F0AX_IR_Receive.C: 108: INTCON=0;
		CLRF 	BH 			//006E 	118B

		//;TEST_FT64F0AX_IR_Receive.C: 110: PORTA=0B00000000;
		MOVLB 	0H 			//006F 	1020
		CLRF 	CH 			//0070 	118C

		//;TEST_FT64F0AX_IR_Receive.C: 111: PORTB=0B00000000;
		CLRF 	DH 			//0071 	118D

		//;TEST_FT64F0AX_IR_Receive.C: 112: PORTC=0B00000000;
		CLRF 	EH 			//0072 	118E

		//;TEST_FT64F0AX_IR_Receive.C: 114: WPUA=0B00001000;
		LDWI 	8H 			//0073 	0008
		ORG		0074H
		MOVLB 	3H 			//0074 	1023
		STR 	CH 			//0075 	108C

		//;TEST_FT64F0AX_IR_Receive.C: 115: WPUB=0B00000000;
		CLRF 	DH 			//0076 	118D

		//;TEST_FT64F0AX_IR_Receive.C: 116: WPUC=0B00000000;
		CLRF 	EH 			//0077 	118E

		//;TEST_FT64F0AX_IR_Receive.C: 118: WPDA=0B00000000;
		MOVLB 	4H 			//0078 	1024
		CLRF 	CH 			//0079 	118C

		//;TEST_FT64F0AX_IR_Receive.C: 119: WPDB=0B00000000;
		CLRF 	DH 			//007A 	118D

		//;TEST_FT64F0AX_IR_Receive.C: 120: WPDC=0B00000000;
		CLRF 	EH 			//007B 	118E
		ORG		007CH

		//;TEST_FT64F0AX_IR_Receive.C: 122: TRISA=0B11111111;
		LDWI 	FFH 			//007C 	00FF
		MOVLB 	1H 			//007D 	1021
		STR 	CH 			//007E 	108C

		//;TEST_FT64F0AX_IR_Receive.C: 123: TRISB=0B11110111;
		LDWI 	F7H 			//007F 	00F7
		STR 	DH 			//0080 	108D

		//;TEST_FT64F0AX_IR_Receive.C: 124: TRISC=0B00000011;
		LDWI 	3H 			//0081 	0003
		STR 	EH 			//0082 	108E

		//;TEST_FT64F0AX_IR_Receive.C: 126: PSRC0=0B11111111;
		LDWI 	FFH 			//0083 	00FF
		ORG		0084H
		MOVLB 	2H 			//0084 	1022
		STR 	1AH 			//0085 	109A

		//;TEST_FT64F0AX_IR_Receive.C: 127: PSRC1=0B11111111;
		STR 	1BH 			//0086 	109B

		//;TEST_FT64F0AX_IR_Receive.C: 128: PSRC2=0B00001111;
		LDWI 	FH 			//0087 	000F
		STR 	1CH 			//0088 	109C

		//;TEST_FT64F0AX_IR_Receive.C: 130: PSINK0=0B11111111;
		LDWI 	FFH 			//0089 	00FF
		MOVLB 	3H 			//008A 	1023
		STR 	1AH 			//008B 	109A
		ORG		008CH

		//;TEST_FT64F0AX_IR_Receive.C: 131: PSINK1=0B11111111;
		STR 	1BH 			//008C 	109B

		//;TEST_FT64F0AX_IR_Receive.C: 132: PSINK2=0B00000011;
		LDWI 	3H 			//008D 	0003
		STR 	1CH 			//008E 	109C

		//;TEST_FT64F0AX_IR_Receive.C: 134: ANSELA=0B00000000;
		CLRF 	17H 			//008F 	1197
		RET 					//0090 	1008

		//;TEST_FT64F0AX_IR_Receive.C: 161: EPS0=0B00000000;
		CLRF 	18H 			//0091 	1198

		//;TEST_FT64F0AX_IR_Receive.C: 162: EPS1=0B00000000;
		CLRF 	19H 			//0092 	1199

		//;TEST_FT64F0AX_IR_Receive.C: 163: ITYPE0=0B11000000;
		LDWI 	C0H 			//0093 	00C0
		ORG		0094H
		STR 	1EH 			//0094 	109E

		//;TEST_FT64F0AX_IR_Receive.C: 164: ITYPE1=0B00000000;
		CLRF 	1FH 			//0095 	119F

		//;TEST_FT64F0AX_IR_Receive.C: 165: EPIE0=0B00001000;
		LDWI 	8H 			//0096 	0008
		MOVLB 	1H 			//0097 	1021
		STR 	14H 			//0098 	1094

		//;TEST_FT64F0AX_IR_Receive.C: 166: INTCON=0B01000000;
		LDWI 	40H 			//0099 	0040
		STR 	BH 			//009A 	108B
		RET 					//009B 	1008
		ORG		009CH

		//;TEST_FT64F0AX_IR_Receive.C: 144: PCKEN|=0B00001000;
		MOVLB 	1H 			//009C 	1021
		BSR 	1AH, 3H 			//009D 	259A

		//;TEST_FT64F0AX_IR_Receive.C: 145: TIM4CR1=0B00000101;
		LDWI 	5H 			//009E 	0005
		MOVLB 	2H 			//009F 	1022
		STR 	11H 			//00A0 	1091

		//;TEST_FT64F0AX_IR_Receive.C: 146: TIM4IER=0B00000001;
		LDWI 	1H 			//00A1 	0001
		STR 	12H 			//00A2 	1092

		//;TEST_FT64F0AX_IR_Receive.C: 147: TIM4SR=0B00000000;
		CLRF 	13H 			//00A3 	1193
		ORG		00A4H

		//;TEST_FT64F0AX_IR_Receive.C: 148: TIM4EGR=0B00000000;
		CLRF 	14H 			//00A4 	1194

		//;TEST_FT64F0AX_IR_Receive.C: 149: TIM4CNTR=0;
		CLRF 	15H 			//00A5 	1195

		//;TEST_FT64F0AX_IR_Receive.C: 150: TIM4PSCR=0B00000110;
		LDWI 	6H 			//00A6 	0006
		STR 	16H 			//00A7 	1096

		//;TEST_FT64F0AX_IR_Receive.C: 151: TIM4ARR=140;
		LDWI 	8CH 			//00A8 	008C
		STR 	17H 			//00A9 	1097
		RET 					//00AA 	1008
			END
