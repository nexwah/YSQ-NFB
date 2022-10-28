//Deviec:FT61F0AX
//-----------------------Variable---------------------------------
		_iap_databuf		EQU		25H
//		EEPROMread@EEAddr		EQU		6AH
//		EEPROMread@EEAddr		EQU		BA000H
//		user_isr@i		EQU		7AH
//		user_isr@j		EQU		79H
//		iap_usart_send@data		EQU		72H
//		iap_usart_send@data		EQU		C00000H
//		iap_usart_rec@a		EQU		73H
//		DelayUs@a		EQU		72H
//		Eeprom_Write_Flag@data		EQU		72H
//		Eeprom_Write_Flag@data		EQU		C00000H
//-----------------------Variable END---------------------------------
		ORG		0000H
		MOVLP 	0H 			//0000 	0180
		LJUMP 	1FH 			//0001 	381F
		ORG		0005H
		STR 	70H 			//0005 	10F0
		SWAPR 	8H, 0H 		//0006 	1E08
		STR 	71H 			//0007 	10F1
		MOVLB 	1FH 			//0008 	103F
		SWAPR 	71H, 0H 		//0009 	1E71
		STR 	66H 			//000A 	10E6
		SWAPR 	3H, 0H 		//000B 	1E03
		SWAPR 	9H, 0H 		//000C 	1E09
		STR 	64H 			//000D 	10E4
		LDR 	AH, 0H 			//000E 	180A
		STR 	67H 			//000F 	10E7
		LDR 	4H, 0H 			//0010 	1804
		STR 	68H 			//0011 	10E8
		LDR 	5H, 0H 			//0012 	1805
		STR 	69H 			//0013 	10E9
		LDR 	6H, 0H 			//0014 	1806
		STR 	6AH 			//0015 	10EA
		LDR 	7H, 0H 			//0016 	1807
		STR 	6BH 			//0017 	10EB
		LDR 	70H, 0H 			//0018 	1870
		STR 	65H 			//0019 	10E5
		BSR 	7EH, 0H 			//001A 	247E

		//;IAP_FW.C: 72: user_isr();
		MOVLP 	0H 			//001B 	0180
		MOVLP 	0H 			//001C 	0180
		ORG		001CH
		LCALL 	5FH 			//001C 	305F
		BCR 	7EH, 0H 			//001D 	207E
		RETI 					//001E 	1009
		MOVLP 	0H 			//001F 	0180
		LJUMP 	21H 			//0020 	3821
		LDWI 	25H 			//0021 	0025
		STR 	4H 			//0022 	1084
		LDWI 	0H 			//0023 	0000
		ORG		0024H
		STR 	5H 			//0024 	1085
		LDWI 	45H 			//0025 	0045
		MOVLP 	1H 			//0026 	0181
		LCALL 	1E3H 			//0027 	31E3
		MOVLP 	0H 			//0028 	0180
		BCR 	7EH, 0H 			//0029 	207E
		MOVLB 	0H 			//002A 	1020
		LJUMP 	2CH 			//002B 	382C
		ORG		002CH

		//;IAP_FW.C: 246: iap_usart_init();
		LCALL 	3AH 			//002C 	303A
		MOVLP 	0H 			//002D 	0180

		//;IAP_FW.C: 247: count=0;
		MOVLB 	0H 			//002E 	1020
		LDWI 	0H 			//002F 	0000
		CLRF 	21H 			//0030 	11A1

		//;IAP_FW.C: 248: flag=0;
		CLRF 	20H 			//0031 	11A0

		//;IAP_FW.C: 250: if(!EEPROMread(0))
		LCALL 	50H 			//0032 	3050
		XORWI 	0H 			//0033 	0A00
		ORG		0034H
		BTSC 	3H, 2H 			//0034 	2903
		LJUMP 	200H 			//0035 	3A00

		//;IAP_FW.C: 253: }
		//;IAP_FW.C: 254: read_flag =1;
		MOVLB 	0H 			//0036 	1020
		BSR 	20H, 0H 			//0037 	2420

		//;IAP_FW.C: 255: while(1)
		CLRWDT 			//0038 	1064
		LJUMP 	38H 			//0039 	3838

		//;USART_DRV.C: 7: PCKEN = (0X1<<5 );
		LDWI 	20H 			//003A 	0020
		MOVLB 	1H 			//003B 	1021
		ORG		003CH
		STR 	1AH 			//003C 	109A

		//;USART_DRV.C: 8: OSCCON = 0B01110001;
		LDWI 	71H 			//003D 	0071
		STR 	19H 			//003E 	1099

		//;USART_DRV.C: 11: AFP0 = 0B01000000;
		LDWI 	40H 			//003F 	0040
		MOVLB 	3H 			//0040 	1023
		STR 	1EH 			//0041 	109E

		//;USART_DRV.C: 12: AFP1 = 0B01000000;
		STR 	1FH 			//0042 	109F

		//;USART_DRV.C: 14: TRISB &= ~(0X1<<6 );
		MOVLB 	1H 			//0043 	1021
		ORG		0044H
		BCR 	DH, 6H 			//0044 	230D

		//;USART_DRV.C: 18: UR1DLL=9;
		LDWI 	9H 			//0045 	0009
		MOVLB 	9H 			//0046 	1029
		STR 	14H 			//0047 	1094

		//;USART_DRV.C: 21: UR1LCR=(0x1 );
		LDWI 	1H 			//0048 	0001
		STR 	FH 			//0049 	108F

		//;USART_DRV.C: 23: UR1MCR=(0X1<<4 )|(0x1<<3 );
		LDWI 	18H 			//004A 	0018
		STR 	11H 			//004B 	1091
		ORG		004CH

		//;USART_DRV.C: 25: UR1RXNE |= (0X1<<0 );
		BSR 	EH, 0H 			//004C 	240E

		//;USART_DRV.C: 27: INTCON |=(0x1<<6)|(0x1<<7);
		LDWI 	C0H 			//004D 	00C0
		IORWR 	BH, 1H 		//004E 	148B
		RET 					//004F 	1008
		STR 	6AH 			//0050 	10EA

		//;MEM_DRV.C: 49: EEADRL = EEAddr;
		MOVLB 	3H 			//0051 	1023
		STR 	11H 			//0052 	1091

		//;MEM_DRV.C: 50: EEPGD=0;
		BCR 	15H, 7H 			//0053 	2395
		ORG		0054H

		//;MEM_DRV.C: 51: CFGS=0;
		BCR 	15H, 6H 			//0054 	2315

		//;MEM_DRV.C: 52: RD = 1;
		BSR 	15H, 0H 			//0055 	2415

		//;MEM_DRV.C: 53: __nop();
		NOP 					//0056 	1000

		//;MEM_DRV.C: 54: __nop();
		NOP 					//0057 	1000

		//;MEM_DRV.C: 55: __nop();
		NOP 					//0058 	1000

		//;MEM_DRV.C: 56: __nop();
		NOP 					//0059 	1000

		//;MEM_DRV.C: 57: __nop();
		NOP 					//005A 	1000

		//;MEM_DRV.C: 58: RD=0;
		MOVLB 	3H 			//005B 	1023
		ORG		005CH
		BCR 	15H, 0H 			//005C 	2015

		//;MEM_DRV.C: 59: return EEDATL;
		LDR 	13H, 0H 			//005D 	1813
		RET 					//005E 	1008

		//;IAP_FW.C: 77: if(UR1RXNE && UR1RXNEF)
		MOVLB 	9H 			//005F 	1029
		BTSC 	EH, 0H 			//0060 	280E
		BTSS 	12H, 0H 		//0061 	2C12
		LJUMP 	171H 			//0062 	3971

		//;IAP_FW.C: 78: {
		//;IAP_FW.C: 79: if(UR1FEF==1)
		BTSC 	12H, 3H 		//0063 	2992
		ORG		0064H

		//;IAP_FW.C: 80: {UR1FEF=0;}
		BCR 	12H, 3H 			//0064 	2192

		//;IAP_FW.C: 81: iap_recdata= UR1DATAL;
		LDR 	CH, 0H 			//0065 	180C
		MOVLB 	0H 			//0066 	1020
		STR 	22H 			//0067 	10A2

		//;IAP_FW.C: 82: count++;
		INCR 	21H, 1H 		//0068 	1AA1

		//;IAP_FW.C: 83: switch(count)
		LJUMP 	82H 			//0069 	3882

		//;IAP_FW.C: 86: if(iap_recdata != 0x46)
		LDWI 	46H 			//006A 	0046
		XORWR 	22H, 0H 		//006B 	1622
		ORG		006CH
		BTSC 	3H, 2H 			//006C 	2903
		LJUMP 	8FH 			//006D 	388F

		//;IAP_FW.C: 87: {iap_err_flag=1;}
		BSR 	20H, 1H 			//006E 	24A0
		LJUMP 	8FH 			//006F 	388F

		//;IAP_FW.C: 90: if(iap_recdata != 0x4D)
		LDWI 	4DH 			//0070 	004D
		LJUMP 	6BH 			//0071 	386B

		//;IAP_FW.C: 94: if(iap_recdata!= 0x44)
		LDWI 	44H 			//0072 	0044
		LJUMP 	6BH 			//0073 	386B
		ORG		0074H

		//;IAP_FW.C: 98: if(iap_recdata != 0x49)
		LDWI 	49H 			//0074 	0049
		LJUMP 	6BH 			//0075 	386B

		//;IAP_FW.C: 102: if(iap_recdata != 0x41)
		LDWI 	41H 			//0076 	0041
		LJUMP 	6BH 			//0077 	386B

		//;IAP_FW.C: 106: if(iap_recdata != 0x50)
		LDWI 	50H 			//0078 	0050
		LJUMP 	6BH 			//0079 	386B

		//;IAP_FW.C: 110: if(iap_recdata!= 0x55)
		LDWI 	55H 			//007A 	0055
		LJUMP 	6BH 			//007B 	386B
		ORG		007CH

		//;IAP_FW.C: 114: if(iap_recdata!= 0xaa)
		LDWI 	AAH 			//007C 	00AA
		XORWR 	22H, 0H 		//007D 	1622
		BTSS 	3H, 2H 			//007E 	2D03
		LJUMP 	6EH 			//007F 	386E

		//;IAP_FW.C: 116: else
		//;IAP_FW.C: 117: {iap_ok_flag=1;}
		BSR 	20H, 2H 			//0080 	2520
		LJUMP 	8FH 			//0081 	388F
		LDR 	21H, 0H 			//0082 	1821
		ADDWI 	FFH 			//0083 	0EFF
		ORG		0084H
		BTSS 	3H, 0H 			//0084 	2C03
		LJUMP 	6EH 			//0085 	386E
		STR 	4H 			//0086 	1084
		LDWI 	8H 			//0087 	0008
		SUBWR 	4H, 0H 		//0088 	1204
		BTSC 	3H, 0H 			//0089 	2803
		LJUMP 	6EH 			//008A 	386E
		MOVLP 	1H 			//008B 	0181
		ORG		008CH
		LSLF 	4H, 0H 			//008C 	0504
		ADDWI 	D3H 			//008D 	0ED3
		STR 	2H 			//008E 	1082

		//;IAP_FW.C: 123: if(iap_ok_flag==1)
		BTSS 	20H, 2H 		//008F 	2D20
		LJUMP 	168H 			//0090 	3968

		//;IAP_FW.C: 124: {
		//;IAP_FW.C: 125: count=0;
		CLRF 	21H 			//0091 	11A1

		//;IAP_FW.C: 126: iap_ok_flag =0;
		BCR 	20H, 2H 			//0092 	2120

		//;IAP_FW.C: 127: unsigned char i,j ;
		//;IAP_FW.C: 128: UR1RXNE &= ~(0X1<<0 );
		MOVLB 	9H 			//0093 	1029
		ORG		0094H
		BCR 	EH, 0H 			//0094 	200E

		//;IAP_FW.C: 129: Eeprom_Write_Flag(0xff);
		LDWI 	FFH 			//0095 	00FF
		LCALL 	195H 			//0096 	3195
		MOVLP 	0H 			//0097 	0180

		//;IAP_FW.C: 130: EECON1 = (0x1<<7 )|(0X1<<2 );
		LDWI 	84H 			//0098 	0084
		STR 	15H 			//0099 	1095

		//;IAP_FW.C: 131: iap_usart_send(0xaa);
		LDWI 	AAH 			//009A 	00AA
		LCALL 	18EH 			//009B 	318E
		ORG		009CH
		MOVLP 	0H 			//009C 	0180

		//;IAP_FW.C: 136: switch(iap_databuf[0])
		LJUMP 	154H 			//009D 	3954

		//;IAP_FW.C: 139: CRC_H=iap_usart_rec();
		LCALL 	173H 			//009E 	3173
		MOVLP 	0H 			//009F 	0180
		MOVLB 	0H 			//00A0 	1020
		STR 	24H 			//00A1 	10A4

		//;IAP_FW.C: 140: CRC_L=iap_usart_rec();
		LCALL 	173H 			//00A2 	3173
		MOVLP 	0H 			//00A3 	0180
		ORG		00A4H
		MOVLB 	0H 			//00A4 	1020

		//;IAP_FW.C: 141: if(CRC_16 < 0X200)
		LCALL 	1CFH 			//00A5 	31CF
		MOVLP 	0H 			//00A6 	0180
		BTSC 	3H, 2H 			//00A7 	2903
		SUBWR 	23H, 0H 		//00A8 	1223
		BTSS 	3H, 0H 			//00A9 	2C03
		LJUMP 	108H 			//00AA 	3908

		//;IAP_FW.C: 145: }
		//;IAP_FW.C: 146: for(CRC_16=0x200;CRC_16<=0x2800-0x40;CRC_16+=0x40)
		//;IAP_FW.C: 144: break;
		//;IAP_FW.C: 142: {
		//;IAP_FW.C: 143: iap_usart_send(0x44);
		LDWI 	2H 			//00AB 	0002
		ORG		00ACH
		STR 	24H 			//00AC 	10A4
		CLRF 	23H 			//00AD 	11A3
		LDWI 	27H 			//00AE 	0027
		SUBWR 	24H, 0H 		//00AF 	1224
		LDWI 	C1H 			//00B0 	00C1
		BTSC 	3H, 2H 			//00B1 	2903
		SUBWR 	23H, 0H 		//00B2 	1223
		BTSC 	3H, 0H 			//00B3 	2803
		ORG		00B4H
		LJUMP 	124H 			//00B4 	3924

		//;IAP_FW.C: 147: {
		//;IAP_FW.C: 148: EEADRH = CRC_H;
		//;IAP_FW.C: 149: EEADRL = CRC_L;
		LCALL 	1C7H 			//00B5 	31C7
		MOVLP 	0H 			//00B6 	0180

		//;IAP_FW.C: 150: iap_mem_erase();
		LCALL 	1B2H 			//00B7 	31B2
		MOVLP 	0H 			//00B8 	0180
		LDWI 	40H 			//00B9 	0040
		MOVLB 	0H 			//00BA 	1020
		ADDWR 	23H, 1H 		//00BB 	17A3
		ORG		00BCH
		BTSC 	3H, 0H 			//00BC 	2803
		INCR 	24H, 1H 		//00BD 	1AA4
		LJUMP 	AEH 			//00BE 	38AE

		//;IAP_FW.C: 154: case 0X05:
		//;IAP_FW.C: 153: break;
		//;IAP_FW.C: 151: }
		//;IAP_FW.C: 152: iap_usart_send(0X00);
		//;IAP_FW.C: 155: for(i=1;i<69;i++)
		CLRF 	7AH 			//00BF 	11FA
		INCR 	7AH, 1H 		//00C0 	1AFA

		//;IAP_FW.C: 156: {
		//;IAP_FW.C: 157: iap_databuf[i]=iap_usart_rec();
		LDR 	7AH, 0H 			//00C1 	187A
		ADDWI 	25H 			//00C2 	0E25
		STR 	6H 			//00C3 	1086
		ORG		00C4H
		CLRF 	7H 			//00C4 	1187
		LCALL 	173H 			//00C5 	3173
		MOVLP 	0H 			//00C6 	0180
		STR 	1H 			//00C7 	1081
		LDWI 	45H 			//00C8 	0045
		INCR 	7AH, 1H 		//00C9 	1AFA
		SUBWR 	7AH, 0H 		//00CA 	127A
		BTSS 	3H, 0H 			//00CB 	2C03
		ORG		00CCH
		LJUMP 	C1H 			//00CC 	38C1

		//;IAP_FW.C: 158: }
		//;IAP_FW.C: 159: CRC_16 = 0;
		MOVLB 	0H 			//00CD 	1020
		CLRF 	23H 			//00CE 	11A3
		CLRF 	24H 			//00CF 	11A4

		//;IAP_FW.C: 160: for(i=0;i<67;i++)
		CLRF 	7AH 			//00D0 	11FA

		//;IAP_FW.C: 161: {
		//;IAP_FW.C: 162: CRC_16 ^= iap_databuf[i];
		LDR 	7AH, 0H 			//00D1 	187A
		ADDWI 	25H 			//00D2 	0E25
		STR 	6H 			//00D3 	1086
		ORG		00D4H
		CLRF 	7H 			//00D4 	1187
		LDR 	1H, 0H 			//00D5 	1801
		XORWR 	23H, 1H 		//00D6 	16A3

		//;IAP_FW.C: 163: for(j = 0;j < 8;j++)
		CLRF 	79H 			//00D7 	11F9

		//;IAP_FW.C: 164: {
		//;IAP_FW.C: 165: if(CRC_16 & 0x01)
		BTSS 	23H, 0H 		//00D8 	2C23
		LJUMP 	EBH 			//00D9 	38EB

		//;IAP_FW.C: 166: CRC_16 = (CRC_16 >> 1) ^ 0x8408;
		LDR 	24H, 0H 			//00DA 	1824
		STR 	76H 			//00DB 	10F6
		ORG		00DCH
		LDR 	23H, 0H 			//00DC 	1823
		STR 	75H 			//00DD 	10F5
		LDWI 	8H 			//00DE 	0008
		LSRF 	76H, 1H 		//00DF 	06F6
		RRR 	75H, 1H 			//00E0 	1CF5
		XORWR 	75H, 0H 		//00E1 	1675
		STR 	77H 			//00E2 	10F7
		LDWI 	84H 			//00E3 	0084
		ORG		00E4H
		XORWR 	76H, 0H 		//00E4 	1676
		STR 	78H 			//00E5 	10F8
		LDR 	77H, 0H 			//00E6 	1877
		STR 	23H 			//00E7 	10A3
		LDR 	78H, 0H 			//00E8 	1878
		STR 	24H 			//00E9 	10A4
		LJUMP 	EDH 			//00EA 	38ED

		//;IAP_FW.C: 167: else
		//;IAP_FW.C: 168: CRC_16 = CRC_16 >> 1;
		LSRF 	24H, 1H 		//00EB 	06A4
		ORG		00ECH
		RRR 	23H, 1H 			//00EC 	1CA3
		LDWI 	8H 			//00ED 	0008
		INCR 	79H, 1H 		//00EE 	1AF9
		SUBWR 	79H, 0H 		//00EF 	1279
		BTSS 	3H, 0H 			//00F0 	2C03
		LJUMP 	D8H 			//00F1 	38D8
		LDWI 	43H 			//00F2 	0043
		INCR 	7AH, 1H 		//00F3 	1AFA
		ORG		00F4H
		SUBWR 	7AH, 0H 		//00F4 	127A
		BTSS 	3H, 0H 			//00F5 	2C03
		LJUMP 	D1H 			//00F6 	38D1

		//;IAP_FW.C: 169: }
		//;IAP_FW.C: 170: }
		//;IAP_FW.C: 171: if((CRC_H !=iap_databuf[67]) || (CRC_L !=iap_databuf[68]))
		LDR 	68H, 0H 			//00F7 	1868
		XORWR 	24H, 0H 		//00F8 	1624
		BTSS 	3H, 2H 			//00F9 	2D03
		LJUMP 	108H 			//00FA 	3908
		LDR 	69H, 0H 			//00FB 	1869
		ORG		00FCH
		XORWR 	23H, 0H 		//00FC 	1623
		BTSS 	3H, 2H 			//00FD 	2D03
		LJUMP 	108H 			//00FE 	3908

		//;IAP_FW.C: 175: }
		//;IAP_FW.C: 176: CRC_H = iap_databuf[1];
		//;IAP_FW.C: 174: break;
		//;IAP_FW.C: 172: {
		//;IAP_FW.C: 173: iap_usart_send(0x44);
		LDR 	26H, 0H 			//00FF 	1826
		STR 	24H 			//0100 	10A4

		//;IAP_FW.C: 177: CRC_L = iap_databuf[2];
		LDR 	27H, 0H 			//0101 	1827

		//;IAP_FW.C: 178: if(CRC_16 < 0X200)
		LCALL 	1CFH 			//0102 	31CF
		MOVLP 	0H 			//0103 	0180
		ORG		0104H
		BTSC 	3H, 2H 			//0104 	2903
		SUBWR 	23H, 0H 		//0105 	1223
		BTSC 	3H, 0H 			//0106 	2803
		LJUMP 	10AH 			//0107 	390A

		//;IAP_FW.C: 179: {
		//;IAP_FW.C: 180: iap_usart_send(0x44);
		LDWI 	44H 			//0108 	0044
		LJUMP 	9BH 			//0109 	389B

		//;IAP_FW.C: 181: break;
		//;IAP_FW.C: 182: }
		//;IAP_FW.C: 183: for(i=0;i<64;i=i+2)
		CLRF 	7AH 			//010A 	11FA

		//;IAP_FW.C: 184: {
		//;IAP_FW.C: 185: EEADRH = CRC_H;
		//;IAP_FW.C: 186: EEADRL = CRC_L;
		LCALL 	1C7H 			//010B 	31C7
		ORG		010CH
		MOVLP 	0H 			//010C 	0180

		//;IAP_FW.C: 187: EEDATH = iap_databuf[i+3];
		LDR 	7AH, 0H 			//010D 	187A
		ADDWI 	28H 			//010E 	0E28
		STR 	6H 			//010F 	1086
		CLRF 	7H 			//0110 	1187
		LDR 	1H, 0H 			//0111 	1801
		STR 	14H 			//0112 	1094

		//;IAP_FW.C: 188: EEDATL = iap_databuf[i+4];
		LDR 	7AH, 0H 			//0113 	187A
		ORG		0114H
		ADDWI 	29H 			//0114 	0E29
		STR 	6H 			//0115 	1086
		LDR 	1H, 0H 			//0116 	1801
		STR 	13H 			//0117 	1093

		//;IAP_FW.C: 189: iap_mem_prog();
		LCALL 	1A1H 			//0118 	31A1
		MOVLP 	0H 			//0119 	0180

		//;IAP_FW.C: 190: CRC_16++;
		MOVLB 	0H 			//011A 	1020
		INCR 	23H, 1H 		//011B 	1AA3
		ORG		011CH
		BTSC 	3H, 2H 			//011C 	2903
		INCR 	24H, 1H 		//011D 	1AA4
		LDWI 	40H 			//011E 	0040
		INCR 	7AH, 1H 		//011F 	1AFA
		INCR 	7AH, 1H 		//0120 	1AFA
		SUBWR 	7AH, 0H 		//0121 	127A
		BTSS 	3H, 0H 			//0122 	2C03
		LJUMP 	10BH 			//0123 	390B
		ORG		0124H

		//;IAP_FW.C: 191: }
		//;IAP_FW.C: 192: iap_usart_send(0X00);
		LDWI 	0H 			//0124 	0000
		LJUMP 	9BH 			//0125 	389B

		//;IAP_FW.C: 193: break;
		//;IAP_FW.C: 195: CRC_H=iap_usart_rec();
		LCALL 	173H 			//0126 	3173
		MOVLP 	0H 			//0127 	0180
		MOVLB 	0H 			//0128 	1020
		STR 	24H 			//0129 	10A4

		//;IAP_FW.C: 196: CRC_L=iap_usart_rec();
		LCALL 	173H 			//012A 	3173
		MOVLP 	0H 			//012B 	0180
		ORG		012CH
		MOVLB 	0H 			//012C 	1020
		STR 	23H 			//012D 	10A3

		//;IAP_FW.C: 197: for(i=0;i<32;i++)
		CLRF 	7AH 			//012E 	11FA

		//;IAP_FW.C: 198: {
		//;IAP_FW.C: 199: EEADRH = CRC_H;
		//;IAP_FW.C: 200: EEADRL = CRC_L;
		LCALL 	1C7H 			//012F 	31C7
		MOVLP 	0H 			//0130 	0180

		//;IAP_FW.C: 201: iap_mem_rd();
		LCALL 	1B9H 			//0131 	31B9
		MOVLP 	0H 			//0132 	0180

		//;IAP_FW.C: 202: iap_usart_send(EEDATH);
		LDR 	14H, 0H 			//0133 	1814
		ORG		0134H
		LCALL 	18EH 			//0134 	318E
		MOVLP 	0H 			//0135 	0180

		//;IAP_FW.C: 203: iap_usart_send(EEDATL);
		MOVLB 	3H 			//0136 	1023
		LDR 	13H, 0H 			//0137 	1813
		LCALL 	18EH 			//0138 	318E
		MOVLP 	0H 			//0139 	0180

		//;IAP_FW.C: 204: CRC_16++;
		MOVLB 	0H 			//013A 	1020
		INCR 	23H, 1H 		//013B 	1AA3
		ORG		013CH
		BTSC 	3H, 2H 			//013C 	2903
		INCR 	24H, 1H 		//013D 	1AA4
		LDWI 	20H 			//013E 	0020
		INCR 	7AH, 1H 		//013F 	1AFA
		SUBWR 	7AH, 0H 		//0140 	127A
		BTSC 	3H, 0H 			//0141 	2803
		LJUMP 	154H 			//0142 	3954
		LJUMP 	12FH 			//0143 	392F
		ORG		0144H

		//;IAP_FW.C: 208: Eeprom_Write_Flag(0);
		LDWI 	0H 			//0144 	0000
		LCALL 	195H 			//0145 	3195
		MOVLP 	0H 			//0146 	0180

		//;IAP_FW.C: 209: iap_usart_send(0X00);
		LDWI 	0H 			//0147 	0000
		LCALL 	18EH 			//0148 	318E
		MOVLP 	0H 			//0149 	0180

		//;IAP_FW.C: 210: iap_wait_tx_idle();
		LCALL 	19EH 			//014A 	319E
		MOVLP 	0H 			//014B 	0180
		ORG		014CH
		RESET 					//014C 	1001

		//;IAP_FW.C: 212: break;
		LJUMP 	154H 			//014D 	3954

		//;IAP_FW.C: 215: iap_usart_send(0x44);
		LDWI 	44H 			//014E 	0044
		LCALL 	18EH 			//014F 	318E
		MOVLP 	0H 			//0150 	0180

		//;IAP_FW.C: 216: iap_wait_tx_idle();
		LCALL 	19EH 			//0151 	319E
		MOVLP 	0H 			//0152 	0180
		RESET 					//0153 	1001
		ORG		0154H

		//;IAP_FW.C: 218: break;
		//;IAP_FW.C: 133: {
		//;IAP_FW.C: 134: iap_databuf[0]=iap_usart_rec();
		LCALL 	173H 			//0154 	3173
		MOVLP 	0H 			//0155 	0180
		MOVLB 	0H 			//0156 	1020
		STR 	25H 			//0157 	10A5
		CLRWDT 			//0158 	1064
		MOVLB 	0H 			//0159 	1020
		LDR 	25H, 0H 			//015A 	1825
		XORWI 	3H 			//015B 	0A03
		ORG		015CH
		BTSC 	3H, 2H 			//015C 	2903
		LJUMP 	126H 			//015D 	3926
		XORWI 	7H 			//015E 	0A07
		BTSC 	3H, 2H 			//015F 	2903
		LJUMP 	9EH 			//0160 	389E
		XORWI 	1H 			//0161 	0A01
		BTSC 	3H, 2H 			//0162 	2903
		LJUMP 	BFH 			//0163 	38BF
		ORG		0164H
		XORWI 	3H 			//0164 	0A03
		BTSC 	3H, 2H 			//0165 	2903
		LJUMP 	144H 			//0166 	3944
		LJUMP 	14EH 			//0167 	394E

		//;IAP_FW.C: 220: }
		//;IAP_FW.C: 221: }
		//;IAP_FW.C: 222: if(iap_err_flag==1)
		BTSS 	20H, 1H 		//0168 	2CA0
		RET 					//0169 	1008

		//;IAP_FW.C: 223: {
		//;IAP_FW.C: 224: count=0;
		CLRF 	21H 			//016A 	11A1

		//;IAP_FW.C: 225: iap_err_flag=0;
		BCR 	20H, 1H 			//016B 	20A0
		ORG		016CH

		//;IAP_FW.C: 226: if(read_flag !=1)
		BTSC 	20H, 0H 		//016C 	2820
		RET 					//016D 	1008

		//;IAP_FW.C: 227: {
		//;IAP_FW.C: 228: uart_rxnef=1;
		BSR 	20H, 3H 			//016E 	25A0
		LJUMP 	204H 			//016F 	3A04
		RET 					//0170 	1008
		LJUMP 	204H 			//0171 	3A04
		RET 					//0172 	1008

		//;USART_DRV.C: 53: unsigned int a;
		//;USART_DRV.C: 54: for(a=0;a<47200;a++)
		CLRF 	73H 			//0173 	11F3
		ORG		0174H
		CLRF 	74H 			//0174 	11F4

		//;USART_DRV.C: 55: {
		//;USART_DRV.C: 56: DelayUs();
		LCALL 	1BFH 			//0175 	31BF
		MOVLP 	0H 			//0176 	0180

		//;USART_DRV.C: 57: if(((0x1 << 0 ) & UR1LSR))
		MOVLB 	9H 			//0177 	1029
		BTSS 	12H, 0H 		//0178 	2C12
		LJUMP 	183H 			//0179 	3983

		//;USART_DRV.C: 58: {
		//;USART_DRV.C: 59: if((UR1LSR & (0x1<<2 )) || (UR1LSR & (0x1<<3 )))
		BTSC 	12H, 2H 		//017A 	2912
		LJUMP 	17EH 			//017B 	397E
		ORG		017CH
		BTSS 	12H, 3H 		//017C 	2D92
		LJUMP 	181H 			//017D 	3981

		//;USART_DRV.C: 60: {
		//;USART_DRV.C: 61: UR1LSR = ~((0x1<<2 )|(0x1<<3 ));
		LDWI 	F3H 			//017E 	00F3
		STR 	12H 			//017F 	1092

		//;USART_DRV.C: 62: return 0xff;
		RETW 	FFH 			//0180 	04FF

		//;USART_DRV.C: 64: else
		//;USART_DRV.C: 65: {
		//;USART_DRV.C: 66: return UR1DATAL;
		LDR 	CH, 0H 			//0181 	180C
		RET 					//0182 	1008
		INCR 	73H, 1H 		//0183 	1AF3
		ORG		0184H
		BTSC 	3H, 2H 			//0184 	2903
		INCR 	74H, 1H 		//0185 	1AF4
		LDWI 	B8H 			//0186 	00B8
		SUBWR 	74H, 0H 		//0187 	1274
		LDWI 	60H 			//0188 	0060
		BTSC 	3H, 2H 			//0189 	2903
		SUBWR 	73H, 0H 		//018A 	1273
		BTSC 	3H, 0H 			//018B 	2803
		ORG		018CH

		//;USART_DRV.C: 67: }
		//;USART_DRV.C: 68: }
		//;USART_DRV.C: 69: }
		//;USART_DRV.C: 70: return 0xff;
		RETW 	FFH 			//018C 	04FF
		LJUMP 	175H 			//018D 	3975
		STR 	72H 			//018E 	10F2

		//;USART_DRV.C: 47: while(!(UR1LSR & (0x1<<5 )));
		MOVLB 	9H 			//018F 	1029
		BTSS 	12H, 5H 		//0190 	2E92
		LJUMP 	18FH 			//0191 	398F

		//;USART_DRV.C: 48: UR1DATAL = data;
		LDR 	72H, 0H 			//0192 	1872
		STR 	CH 			//0193 	108C
		ORG		0194H
		RET 					//0194 	1008
		STR 	72H 			//0195 	10F2

		//;IAP_FW.C: 35: EECON1 &=~(0x1<<7 );
		MOVLB 	3H 			//0196 	1023
		BCR 	15H, 7H 			//0197 	2395

		//;IAP_FW.C: 36: EECON1 =(0X1<<2 );
		LDWI 	4H 			//0198 	0004
		STR 	15H 			//0199 	1095

		//;IAP_FW.C: 37: EEADRL=0;
		CLRF 	11H 			//019A 	1191

		//;IAP_FW.C: 38: EEDATL=data;
		LDR 	72H, 0H 			//019B 	1872
		ORG		019CH
		STR 	13H 			//019C 	1093

		//;IAP_FW.C: 39: iap_mem_prog();
		LJUMP 	1A1H 			//019D 	39A1

		//;USART_DRV.C: 77: while(!(UR1TC & (0x1<<0 )));
		BTSC 	1CH, 0H 		//019E 	281C
		RET 					//019F 	1008
		LJUMP 	19EH 			//01A0 	399E

		//;MEM_DRV.C: 29: EECON1 &=~(0x1<<4 );
		BCR 	15H, 4H 			//01A1 	2215

		//;MEM_DRV.C: 30: Unlock_Flash();
		LCALL 	1A8H 			//01A2 	31A8
		MOVLP 	0H 			//01A3 	0180
		ORG		01A4H

		//;MEM_DRV.C: 31: while(EECON1 & (0x1<<1 ));
		MOVLB 	3H 			//01A4 	1023
		BTSC 	15H, 1H 		//01A5 	2895
		LJUMP 	1A4H 			//01A6 	39A4
		RET 					//01A7 	1008
		LDWI 	3H 			//01A8 	0003
		STR 	8H 			//01A9 	1088
		LDWI 	55H 			//01AA 	0055
		STR 	16H 			//01AB 	1096
		ORG		01ACH
		LDWI 	AAH 			//01AC 	00AA
		STR 	16H 			//01AD 	1096
		BSR 	15H, 1H 			//01AE 	2495
		NOP 					//01AF 	1000
		NOP 					//01B0 	1000
		RET 					//01B1 	1008

		//;MEM_DRV.C: 21: EECON1 |=(0x1<<4 );
		BSR 	15H, 4H 			//01B2 	2615

		//;MEM_DRV.C: 22: Unlock_Flash();
		LCALL 	1A8H 			//01B3 	31A8
		ORG		01B4H
		MOVLP 	0H 			//01B4 	0180

		//;MEM_DRV.C: 23: while(EECON1 & (0x1<<1 ));
		MOVLB 	3H 			//01B5 	1023
		BTSC 	15H, 1H 		//01B6 	2895
		LJUMP 	1B5H 			//01B7 	39B5
		RET 					//01B8 	1008

		//;MEM_DRV.C: 36: EECON1 |=(0x1<<0 );
		BSR 	15H, 0H 			//01B9 	2415
		NOP 					//01BA 	1000

		//;MEM_DRV.C: 38: while(EECON1 & (0x1<<0 ));
		MOVLB 	3H 			//01BB 	1023
		ORG		01BCH
		BTSC 	15H, 0H 		//01BC 	2815
		LJUMP 	1BBH 			//01BD 	39BB
		RET 					//01BE 	1008

		//;USART_DRV.C: 39: unsigned char a;
		//;USART_DRV.C: 40: for(a=0;a<10;a++)
		CLRF 	72H 			//01BF 	11F2

		//;USART_DRV.C: 41: {
		//;USART_DRV.C: 42: __nop();
		NOP 					//01C0 	1000
		LDWI 	AH 			//01C1 	000A
		INCR 	72H, 1H 		//01C2 	1AF2
		SUBWR 	72H, 0H 		//01C3 	1272
		ORG		01C4H
		BTSC 	3H, 0H 			//01C4 	2803
		RET 					//01C5 	1008
		LJUMP 	1C0H 			//01C6 	39C0
		LDR 	24H, 0H 			//01C7 	1824
		MOVLB 	3H 			//01C8 	1023
		STR 	12H 			//01C9 	1092
		MOVLB 	0H 			//01CA 	1020
		LDR 	23H, 0H 			//01CB 	1823
		ORG		01CCH
		MOVLB 	3H 			//01CC 	1023
		STR 	11H 			//01CD 	1091
		RET 					//01CE 	1008
		STR 	23H 			//01CF 	10A3
		LDWI 	2H 			//01D0 	0002
		SUBWR 	24H, 0H 		//01D1 	1224
		RETW 	0H 			//01D2 	0400
		MOVLP 	0H 			//01D3 	0180
		ORG		01D4H
		LJUMP 	6AH 			//01D4 	386A
		MOVLP 	0H 			//01D5 	0180
		LJUMP 	70H 			//01D6 	3870
		MOVLP 	0H 			//01D7 	0180
		LJUMP 	72H 			//01D8 	3872
		MOVLP 	0H 			//01D9 	0180
		LJUMP 	74H 			//01DA 	3874
		MOVLP 	0H 			//01DB 	0180
		ORG		01DCH
		LJUMP 	76H 			//01DC 	3876
		MOVLP 	0H 			//01DD 	0180
		LJUMP 	78H 			//01DE 	3878
		MOVLP 	0H 			//01DF 	0180
		LJUMP 	7AH 			//01E0 	387A
		MOVLP 	0H 			//01E1 	0180
		LJUMP 	7CH 			//01E2 	387C
		CLRWDT 			//01E3 	1064
		ORG		01E4H
		CLRF 	0H 			//01E4 	1180
		ADDFSR 	0H, 1H 		//01E5 	0101
		DECRSZ 	9H, 1H 		//01E6 	1B89
		LJUMP 	1E4H 			//01E7 	39E4
		RETW 	0H 			//01E8 	0400
			END
