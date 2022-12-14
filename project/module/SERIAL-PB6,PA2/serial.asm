//Deviec:FT64F0AX
//-----------------------Variable---------------------------------
		_receivedata		EQU		7BH
		_toSend		EQU		20H
//		send@tbuf		EQU		78H
//		send@i		EQU		79H
//		send@tbuf		EQU		78H
//		send@len		EQU		75H
//		send@tbuf		EQU		78H
//		DelayMs@Time		EQU		72H
//		DelayMs@b		EQU		74H
//		DelayMs@a		EQU		73H
//		DelayMs@Time		EQU		72H
//		DelayMs@Time		EQU		72H
//		DelayUs@Time		EQU		70H
//		DelayUs@a		EQU		71H
//		DelayUs@Time		EQU		70H
//		DelayUs@Time		EQU		70H
//-----------------------Variable END---------------------------------
		ORG		0000H
		ORG		0000H
		MOVLP 	0H 			//0000 	0180
		LJUMP 	FH 			//0001 	380F
		ORG		0004H
		BSR 	7EH, 0H 			//0004 	247E
		MOVLP 	0H 			//0005 	0180

		//;SERIAL.C: 37: if(UR1RXNE&&UR1RXNEF)
		MOVLB 	9H 			//0006 	1029
		BTSC 	EH, 0H 			//0007 	280E
		BTSS 	12H, 0H 		//0008 	2C12
		LJUMP 	DH 			//0009 	380D

		//;SERIAL.C: 38: {
		//;SERIAL.C: 39: receivedata = UR1DATAL;
		LDR 	CH, 0H 			//000A 	180C
		STR 	7BH 			//000B 	10FB

		//;SERIAL.C: 40: UR1DATAL = receivedata;
		STR 	CH 			//000C 	108C
		BCR 	7EH, 0H 			//000D 	207E
		RETI 					//000E 	1009
		MOVLP 	0H 			//000F 	0180
		LJUMP 	11H 			//0010 	3811
		LDWI 	68H 			//0011 	0068
		STR 	20H 			//0012 	10A0
		LDWI 	65H 			//0013 	0065
		STR 	21H 			//0014 	10A1
		LDWI 	6CH 			//0015 	006C
		STR 	22H 			//0016 	10A2
		STR 	23H 			//0017 	10A3
		LDWI 	6FH 			//0018 	006F
		STR 	24H 			//0019 	10A4
		LDWI 	20H 			//001A 	0020
		STR 	25H 			//001B 	10A5
		LDWI 	77H 			//001C 	0077
		STR 	26H 			//001D 	10A6
		LDWI 	6FH 			//001E 	006F
		STR 	27H 			//001F 	10A7
		LDWI 	72H 			//0020 	0072
		STR 	28H 			//0021 	10A8
		LDWI 	6CH 			//0022 	006C
		STR 	29H 			//0023 	10A9
		LDWI 	64H 			//0024 	0064
		STR 	2AH 			//0025 	10AA
		LDWI 	DH 			//0026 	000D
		STR 	2BH 			//0027 	10AB
		LDWI 	AH 			//0028 	000A
		STR 	2CH 			//0029 	10AC
		CLRF 	2DH 			//002A 	11AD
		CLRF 	7BH 			//002B 	11FB
		BCR 	7EH, 0H 			//002C 	207E
		MOVLB 	0H 			//002D 	1020
		LJUMP 	2FH 			//002E 	382F

		//;SERIAL.C: 151: POWER_INITIAL();
		LCALL 	6DH 			//002F 	306D
		MOVLP 	0H 			//0030 	0180

		//;SERIAL.C: 152: UART_INITIAL();
		LCALL 	92H 			//0031 	3092
		MOVLP 	0H 			//0032 	0180

		//;SERIAL.C: 153: DelayMs(5000);
		LDWI 	88H 			//0033 	0088
		LCALL 	5CH 			//0034 	305C
		MOVLP 	0H 			//0035 	0180

		//;SERIAL.C: 154: send(toSend,13);
		LDWI 	DH 			//0036 	000D
		STR 	75H 			//0037 	10F5
		LDWI 	20H 			//0038 	0020
		CLRF 	76H 			//0039 	11F6
		LCALL 	3EH 			//003A 	303E
		MOVLP 	0H 			//003B 	0180

		//;SERIAL.C: 156: {
		//;SERIAL.C: 157: __nop();
		NOP 					//003C 	1000
		LJUMP 	3CH 			//003D 	383C
		STR 	78H 			//003E 	10F8

		//;SERIAL.C: 136: for(int i=0;i<len;i++)
		CLRF 	79H 			//003F 	11F9
		CLRF 	7AH 			//0040 	11FA
		LDR 	7AH, 0H 			//0041 	187A
		XORWI 	80H 			//0042 	0A80
		STR 	77H 			//0043 	10F7
		LDR 	76H, 0H 			//0044 	1876
		XORWI 	80H 			//0045 	0A80
		SUBWR 	77H, 0H 		//0046 	1277
		BTSS 	3H, 2H 			//0047 	2D03
		LJUMP 	4BH 			//0048 	384B
		LDR 	75H, 0H 			//0049 	1875
		SUBWR 	79H, 0H 		//004A 	1279
		BTSC 	3H, 0H 			//004B 	2803
		RET 					//004C 	1008

		//;SERIAL.C: 137: {
		//;SERIAL.C: 138: UR1DATAL=tbuf[i];
		LDR 	79H, 0H 			//004D 	1879
		ADDWR 	78H, 0H 		//004E 	1778
		STR 	77H 			//004F 	10F7
		STR 	6H 			//0050 	1086
		CLRF 	7H 			//0051 	1187
		LDR 	1H, 0H 			//0052 	1801
		MOVLB 	9H 			//0053 	1029
		STR 	CH 			//0054 	108C

		//;SERIAL.C: 139: DelayMs(1);
		LDWI 	1H 			//0055 	0001
		LCALL 	5CH 			//0056 	305C
		MOVLP 	0H 			//0057 	0180
		INCR 	79H, 1H 		//0058 	1AF9
		BTSC 	3H, 2H 			//0059 	2903
		INCR 	7AH, 1H 		//005A 	1AFA
		LJUMP 	41H 			//005B 	3841
		STR 	72H 			//005C 	10F2

		//;SERIAL.C: 103: unsigned char a,b;
		//;SERIAL.C: 104: for(a=0;a<Time;a++)
		CLRF 	73H 			//005D 	11F3
		LDR 	72H, 0H 			//005E 	1872
		SUBWR 	73H, 0H 		//005F 	1273
		BTSC 	3H, 0H 			//0060 	2803
		RET 					//0061 	1008

		//;SERIAL.C: 105: {
		//;SERIAL.C: 106: for(b=0;b<5;b++)
		CLRF 	74H 			//0062 	11F4

		//;SERIAL.C: 107: {
		//;SERIAL.C: 108: DelayUs(197);
		LDWI 	C5H 			//0063 	00C5
		LCALL 	A5H 			//0064 	30A5
		MOVLP 	0H 			//0065 	0180
		LDWI 	5H 			//0066 	0005
		INCR 	74H, 1H 		//0067 	1AF4
		SUBWR 	74H, 0H 		//0068 	1274
		BTSS 	3H, 0H 			//0069 	2C03
		LJUMP 	63H 			//006A 	3863
		INCR 	73H, 1H 		//006B 	1AF3
		LJUMP 	5EH 			//006C 	385E

		//;SERIAL.C: 51: OSCCON=0B01110001;
		LDWI 	71H 			//006D 	0071
		MOVLB 	1H 			//006E 	1021
		STR 	19H 			//006F 	1099

		//;SERIAL.C: 53: INTCON=0;
		CLRF 	BH 			//0070 	118B

		//;SERIAL.C: 55: PORTA=0B00000000;
		MOVLB 	0H 			//0071 	1020
		CLRF 	CH 			//0072 	118C

		//;SERIAL.C: 56: PORTB=0B00000000;
		CLRF 	DH 			//0073 	118D

		//;SERIAL.C: 57: PORTC=0B00000000;
		CLRF 	EH 			//0074 	118E

		//;SERIAL.C: 59: WPUA=0B00000000;
		MOVLB 	3H 			//0075 	1023
		CLRF 	CH 			//0076 	118C

		//;SERIAL.C: 60: WPUB=0B00000000;
		CLRF 	DH 			//0077 	118D

		//;SERIAL.C: 61: WPUC=0B00000000;
		CLRF 	EH 			//0078 	118E

		//;SERIAL.C: 63: WPDA=0B00000000;
		MOVLB 	4H 			//0079 	1024
		CLRF 	CH 			//007A 	118C

		//;SERIAL.C: 64: WPDB=0B00000000;
		CLRF 	DH 			//007B 	118D

		//;SERIAL.C: 65: WPDC=0B00000000;
		CLRF 	EH 			//007C 	118E

		//;SERIAL.C: 67: TRISA=0B11111111;
		LDWI 	FFH 			//007D 	00FF
		MOVLB 	1H 			//007E 	1021
		STR 	CH 			//007F 	108C

		//;SERIAL.C: 68: TRISB=0B10111111;
		LDWI 	BFH 			//0080 	00BF
		STR 	DH 			//0081 	108D

		//;SERIAL.C: 69: TRISC=0B00000011;
		LDWI 	3H 			//0082 	0003
		STR 	EH 			//0083 	108E

		//;SERIAL.C: 71: PSRC0=0B11111111;
		LDWI 	FFH 			//0084 	00FF
		MOVLB 	2H 			//0085 	1022
		STR 	1AH 			//0086 	109A

		//;SERIAL.C: 72: PSRC1=0B11111111;
		STR 	1BH 			//0087 	109B

		//;SERIAL.C: 73: PSRC2=0B00001111;
		LDWI 	FH 			//0088 	000F
		STR 	1CH 			//0089 	109C

		//;SERIAL.C: 75: PSINK0=0B11111111;
		LDWI 	FFH 			//008A 	00FF
		MOVLB 	3H 			//008B 	1023
		STR 	1AH 			//008C 	109A

		//;SERIAL.C: 76: PSINK1=0B11111111;
		STR 	1BH 			//008D 	109B

		//;SERIAL.C: 77: PSINK2=0B00000011;
		LDWI 	3H 			//008E 	0003
		STR 	1CH 			//008F 	109C

		//;SERIAL.C: 79: ANSELA=0B00000000;
		CLRF 	17H 			//0090 	1197
		RET 					//0091 	1008

		//;SERIAL.C: 120: AFP0 = 0B01000000;
		LDWI 	40H 			//0092 	0040
		STR 	1EH 			//0093 	109E

		//;SERIAL.C: 121: AFP1 = 0B01000000;
		STR 	1FH 			//0094 	109F

		//;SERIAL.C: 122: PCKEN|=0B00100000;
		MOVLB 	1H 			//0095 	1021
		BSR 	1AH, 5H 			//0096 	269A

		//;SERIAL.C: 123: UR1IER=0B00100001;
		LDWI 	21H 			//0097 	0021
		MOVLB 	9H 			//0098 	1029
		STR 	EH 			//0099 	108E

		//;SERIAL.C: 124: UR1LCR=0B00000001;
		LDWI 	1H 			//009A 	0001
		STR 	FH 			//009B 	108F

		//;SERIAL.C: 125: UR1MCR=0B00011000;
		LDWI 	18H 			//009C 	0018
		STR 	11H 			//009D 	1091

		//;SERIAL.C: 127: UR1DLL=104;
		LDWI 	68H 			//009E 	0068
		STR 	14H 			//009F 	1094

		//;SERIAL.C: 128: UR1DLH=0;
		CLRF 	15H 			//00A0 	1195

		//;SERIAL.C: 129: UR1TCF=1;
		BSR 	1CH, 0H 			//00A1 	241C

		//;SERIAL.C: 130: INTCON=0B11000000;
		LDWI 	C0H 			//00A2 	00C0
		STR 	BH 			//00A3 	108B
		RET 					//00A4 	1008
		STR 	70H 			//00A5 	10F0

		//;SERIAL.C: 89: unsigned char a;
		//;SERIAL.C: 90: for(a=0;a<Time;a++)
		CLRF 	71H 			//00A6 	11F1
		LDR 	70H, 0H 			//00A7 	1870
		SUBWR 	71H, 0H 		//00A8 	1271
		BTSC 	3H, 0H 			//00A9 	2803
		RET 					//00AA 	1008

		//;SERIAL.C: 91: {
		//;SERIAL.C: 92: __nop();
		NOP 					//00AB 	1000
		ORG		00ACH
		INCR 	71H, 1H 		//00AC 	1AF1
		LJUMP 	A7H 			//00AD 	38A7
			END
