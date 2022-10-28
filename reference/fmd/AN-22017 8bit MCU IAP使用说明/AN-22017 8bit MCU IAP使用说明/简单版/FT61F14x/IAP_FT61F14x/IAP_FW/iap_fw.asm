//Deviec:FT61F14X
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
		NOP 					//0000 	1000
		MOVLP 	0H 			//0001 	0180
		LJUMP 	1FH 			//0002 	381F
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

		//;IAP_FW.C: 73: user_isr();
		MOVLP 	0H 			//001B 	0180
		MOVLP 	0H 			//001C 	0180
		ORG		001CH
		LCALL 	5EH 			//001C 	305E
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
		LCALL 	1E6H 			//0027 	31E6
		MOVLP 	0H 			//0028 	0180
		BCR 	7EH, 0H 			//0029 	207E
		MOVLB 	0H 			//002A 	1020
		LJUMP 	2CH 			//002B 	382C
		ORG		002CH

		//;IAP_FW.C: 250: iap_usart_init();
		LCALL 	3AH 			//002C 	303A
		MOVLP 	0H 			//002D 	0180

		//;IAP_FW.C: 251: count=0;
		MOVLB 	0H 			//002E 	1020
		LDWI 	0H 			//002F 	0000
		CLRF 	21H 			//0030 	11A1

		//;IAP_FW.C: 252: flag=0;
		CLRF 	20H 			//0031 	11A0

		//;IAP_FW.C: 254: if(!EEPROMread(0))
		LCALL 	4FH 			//0032 	304F
		XORWI 	0H 			//0033 	0A00
		ORG		0034H
		BTSC 	3H, 2H 			//0034 	2903
		LJUMP 	200H 			//0035 	3A00

		//;IAP_FW.C: 257: }
		//;IAP_FW.C: 258: read_flag =1;
		MOVLB 	0H 			//0036 	1020
		BSR 	20H, 0H 			//0037 	2420

		//;IAP_FW.C: 259: while(1)
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

		//;USART_DRV.C: 12: AFP1 = 0B00010100;
		LDWI 	14H 			//003F 	0014
		MOVLB 	3H 			//0040 	1023
		STR 	1FH 			//0041 	109F

		//;USART_DRV.C: 14: TRISB &= ~(0X1<<6 );
		MOVLB 	1H 			//0042 	1021
		BCR 	DH, 6H 			//0043 	230D
		ORG		0044H

		//;USART_DRV.C: 19: URDLL=9;
		LDWI 	9H 			//0044 	0009
		MOVLB 	9H 			//0045 	1029
		STR 	14H 			//0046 	1094

		//;USART_DRV.C: 22: URLCR=(0x1 );
		LDWI 	1H 			//0047 	0001
		STR 	FH 			//0048 	108F

		//;USART_DRV.C: 24: URMCR=(0X1<<4 )|(0x1<<3 );
		LDWI 	18H 			//0049 	0018
		STR 	11H 			//004A 	1091

		//;USART_DRV.C: 26: URRXNE |= (0X1<<0 );
		BSR 	EH, 0H 			//004B 	240E
		ORG		004CH

		//;USART_DRV.C: 28: INTCON |=(0x1<<6)|(0x1<<7);
		LDWI 	C0H 			//004C 	00C0
		IORWR 	BH, 1H 		//004D 	148B
		RET 					//004E 	1008
		STR 	6AH 			//004F 	10EA

		//;MEM_DRV.C: 49: EEADRL = EEAddr;
		MOVLB 	3H 			//0050 	1023
		STR 	11H 			//0051 	1091

		//;MEM_DRV.C: 51: EEPGD=0;
		BCR 	15H, 7H 			//0052 	2395

		//;MEM_DRV.C: 52: CFGS=0;
		BCR 	15H, 6H 			//0053 	2315
		ORG		0054H

		//;MEM_DRV.C: 53: RD = 1;
		BSR 	15H, 0H 			//0054 	2415

		//;MEM_DRV.C: 54: __nop();
		NOP 					//0055 	1000

		//;MEM_DRV.C: 55: __nop();
		NOP 					//0056 	1000

		//;MEM_DRV.C: 56: __nop();
		NOP 					//0057 	1000

		//;MEM_DRV.C: 57: __nop();
		NOP 					//0058 	1000

		//;MEM_DRV.C: 58: __nop();
		NOP 					//0059 	1000

		//;MEM_DRV.C: 59: RD=0;
		MOVLB 	3H 			//005A 	1023
		BCR 	15H, 0H 			//005B 	2015
		ORG		005CH

		//;MEM_DRV.C: 60: return EEDATL;
		LDR 	13H, 0H 			//005C 	1813
		RET 					//005D 	1008

		//;IAP_FW.C: 78: if(URRXNE && RXNEF)
		MOVLB 	9H 			//005E 	1029
		BTSC 	EH, 0H 			//005F 	280E
		BTSS 	12H, 0H 		//0060 	2C12
		LJUMP 	170H 			//0061 	3970

		//;IAP_FW.C: 79: {
		//;IAP_FW.C: 80: if(FEF==1)
		BTSC 	12H, 3H 		//0062 	2992

		//;IAP_FW.C: 81: {FEF=0;}
		BCR 	12H, 3H 			//0063 	2192
		ORG		0064H

		//;IAP_FW.C: 82: iap_recdata = URDATAL;
		LDR 	CH, 0H 			//0064 	180C
		MOVLB 	0H 			//0065 	1020
		STR 	22H 			//0066 	10A2

		//;IAP_FW.C: 83: count++;
		INCR 	21H, 1H 		//0067 	1AA1

		//;IAP_FW.C: 84: switch(count)
		LJUMP 	81H 			//0068 	3881

		//;IAP_FW.C: 87: if(iap_recdata!= 0x46)
		LDWI 	46H 			//0069 	0046
		XORWR 	22H, 0H 		//006A 	1622
		BTSC 	3H, 2H 			//006B 	2903
		ORG		006CH
		LJUMP 	8EH 			//006C 	388E

		//;IAP_FW.C: 88: {iap_err_flag=1;}
		BSR 	20H, 1H 			//006D 	24A0
		LJUMP 	8EH 			//006E 	388E

		//;IAP_FW.C: 91: if(iap_recdata != 0x4D)
		LDWI 	4DH 			//006F 	004D
		LJUMP 	6AH 			//0070 	386A

		//;IAP_FW.C: 95: if(iap_recdata != 0x44)
		LDWI 	44H 			//0071 	0044
		LJUMP 	6AH 			//0072 	386A

		//;IAP_FW.C: 99: if(iap_recdata != 0x49)
		LDWI 	49H 			//0073 	0049
		ORG		0074H
		LJUMP 	6AH 			//0074 	386A

		//;IAP_FW.C: 103: if(iap_recdata != 0x41)
		LDWI 	41H 			//0075 	0041
		LJUMP 	6AH 			//0076 	386A

		//;IAP_FW.C: 107: if(iap_recdata != 0x50)
		LDWI 	50H 			//0077 	0050
		LJUMP 	6AH 			//0078 	386A

		//;IAP_FW.C: 111: if(iap_recdata != 0x55)
		LDWI 	55H 			//0079 	0055
		LJUMP 	6AH 			//007A 	386A

		//;IAP_FW.C: 115: if(iap_recdata != 0xaa)
		LDWI 	AAH 			//007B 	00AA
		ORG		007CH
		XORWR 	22H, 0H 		//007C 	1622
		BTSS 	3H, 2H 			//007D 	2D03
		LJUMP 	6DH 			//007E 	386D

		//;IAP_FW.C: 117: else
		//;IAP_FW.C: 118: {iap_ok_flag=1;}
		BSR 	20H, 2H 			//007F 	2520
		LJUMP 	8EH 			//0080 	388E
		LDR 	21H, 0H 			//0081 	1821
		ADDWI 	FFH 			//0082 	0EFF
		BTSS 	3H, 0H 			//0083 	2C03
		ORG		0084H
		LJUMP 	6DH 			//0084 	386D
		STR 	4H 			//0085 	1084
		LDWI 	8H 			//0086 	0008
		SUBWR 	4H, 0H 		//0087 	1204
		BTSC 	3H, 0H 			//0088 	2803
		LJUMP 	6DH 			//0089 	386D
		MOVLP 	1H 			//008A 	0181
		LSLF 	4H, 0H 			//008B 	0504
		ORG		008CH
		ADDWI 	D6H 			//008C 	0ED6
		STR 	2H 			//008D 	1082

		//;IAP_FW.C: 124: if(iap_ok_flag==1)
		BTSS 	20H, 2H 		//008E 	2D20
		LJUMP 	167H 			//008F 	3967

		//;IAP_FW.C: 125: {
		//;IAP_FW.C: 126: count=0;
		CLRF 	21H 			//0090 	11A1

		//;IAP_FW.C: 127: iap_ok_flag =0;
		BCR 	20H, 2H 			//0091 	2120

		//;IAP_FW.C: 128: unsigned char i ,j;
		//;IAP_FW.C: 129: URRXNE &= ~(0X1<<0 );
		MOVLB 	9H 			//0092 	1029
		BCR 	EH, 0H 			//0093 	200E
		ORG		0094H

		//;IAP_FW.C: 130: Eeprom_Write_Flag(0xff);
		LDWI 	FFH 			//0094 	00FF
		LCALL 	194H 			//0095 	3194
		MOVLP 	0H 			//0096 	0180

		//;IAP_FW.C: 131: EECON1 = (0x1<<7 )|(0X1<<2 );
		LDWI 	84H 			//0097 	0084
		STR 	15H 			//0098 	1095

		//;IAP_FW.C: 132: iap_usart_send(0xaa);
		LDWI 	AAH 			//0099 	00AA
		LCALL 	18DH 			//009A 	318D
		MOVLP 	0H 			//009B 	0180
		ORG		009CH

		//;IAP_FW.C: 137: switch(iap_databuf[0])
		LJUMP 	153H 			//009C 	3953

		//;IAP_FW.C: 140: CRC_H=iap_usart_rec();
		LCALL 	172H 			//009D 	3172
		MOVLP 	0H 			//009E 	0180
		MOVLB 	0H 			//009F 	1020
		STR 	24H 			//00A0 	10A4

		//;IAP_FW.C: 141: CRC_L=iap_usart_rec();
		LCALL 	172H 			//00A1 	3172
		MOVLP 	0H 			//00A2 	0180
		MOVLB 	0H 			//00A3 	1020
		ORG		00A4H

		//;IAP_FW.C: 142: if(CRC_16 < 0X200)
		LCALL 	1D2H 			//00A4 	31D2
		MOVLP 	0H 			//00A5 	0180
		BTSC 	3H, 2H 			//00A6 	2903
		SUBWR 	23H, 0H 		//00A7 	1223
		BTSS 	3H, 0H 			//00A8 	2C03
		LJUMP 	107H 			//00A9 	3907

		//;IAP_FW.C: 146: }
		//;IAP_FW.C: 147: for(CRC_16=0x200;CRC_16<=0x1000-0x20;CRC_16+=0x20)
		//;IAP_FW.C: 145: break;
		//;IAP_FW.C: 143: {
		//;IAP_FW.C: 144: iap_usart_send(0x44);
		LDWI 	2H 			//00AA 	0002
		STR 	24H 			//00AB 	10A4
		ORG		00ACH
		CLRF 	23H 			//00AC 	11A3
		LDWI 	FH 			//00AD 	000F
		SUBWR 	24H, 0H 		//00AE 	1224
		LDWI 	E1H 			//00AF 	00E1
		BTSC 	3H, 2H 			//00B0 	2903
		SUBWR 	23H, 0H 		//00B1 	1223
		BTSC 	3H, 0H 			//00B2 	2803
		LJUMP 	123H 			//00B3 	3923
		ORG		00B4H

		//;IAP_FW.C: 148: {
		//;IAP_FW.C: 149: EEADRH = CRC_H;
		//;IAP_FW.C: 150: EEADRL = CRC_L;
		LCALL 	1CAH 			//00B4 	31CA
		MOVLP 	0H 			//00B5 	0180

		//;IAP_FW.C: 151: iap_mem_erase();
		LCALL 	1B5H 			//00B6 	31B5
		MOVLP 	0H 			//00B7 	0180
		LDWI 	20H 			//00B8 	0020
		MOVLB 	0H 			//00B9 	1020
		ADDWR 	23H, 1H 		//00BA 	17A3
		BTSC 	3H, 0H 			//00BB 	2803
		ORG		00BCH
		INCR 	24H, 1H 		//00BC 	1AA4
		LJUMP 	ADH 			//00BD 	38AD

		//;IAP_FW.C: 155: case 0X05:
		//;IAP_FW.C: 154: break;
		//;IAP_FW.C: 152: }
		//;IAP_FW.C: 153: iap_usart_send(0X00);
		//;IAP_FW.C: 156: for(i=1;i<69;i++)
		CLRF 	7AH 			//00BE 	11FA
		INCR 	7AH, 1H 		//00BF 	1AFA

		//;IAP_FW.C: 157: {
		//;IAP_FW.C: 158: iap_databuf[i]=iap_usart_rec();
		LDR 	7AH, 0H 			//00C0 	187A
		ADDWI 	25H 			//00C1 	0E25
		STR 	6H 			//00C2 	1086
		CLRF 	7H 			//00C3 	1187
		ORG		00C4H
		LCALL 	172H 			//00C4 	3172
		MOVLP 	0H 			//00C5 	0180
		STR 	1H 			//00C6 	1081
		LDWI 	45H 			//00C7 	0045
		INCR 	7AH, 1H 		//00C8 	1AFA
		SUBWR 	7AH, 0H 		//00C9 	127A
		BTSS 	3H, 0H 			//00CA 	2C03
		LJUMP 	C0H 			//00CB 	38C0
		ORG		00CCH

		//;IAP_FW.C: 159: }
		//;IAP_FW.C: 160: CRC_16 = 0;
		MOVLB 	0H 			//00CC 	1020
		CLRF 	23H 			//00CD 	11A3
		CLRF 	24H 			//00CE 	11A4

		//;IAP_FW.C: 161: for(i=0;i<67;i++)
		CLRF 	7AH 			//00CF 	11FA

		//;IAP_FW.C: 162: {
		//;IAP_FW.C: 163: CRC_16 ^= iap_databuf[i];
		LDR 	7AH, 0H 			//00D0 	187A
		ADDWI 	25H 			//00D1 	0E25
		STR 	6H 			//00D2 	1086
		CLRF 	7H 			//00D3 	1187
		ORG		00D4H
		LDR 	1H, 0H 			//00D4 	1801
		XORWR 	23H, 1H 		//00D5 	16A3

		//;IAP_FW.C: 164: for(j = 0;j < 8;j++)
		CLRF 	79H 			//00D6 	11F9

		//;IAP_FW.C: 165: {
		//;IAP_FW.C: 166: if(CRC_16 & 0x01)
		BTSS 	23H, 0H 		//00D7 	2C23
		LJUMP 	EAH 			//00D8 	38EA

		//;IAP_FW.C: 167: CRC_16 = (CRC_16 >> 1) ^ 0x8408;
		LDR 	24H, 0H 			//00D9 	1824
		STR 	76H 			//00DA 	10F6
		LDR 	23H, 0H 			//00DB 	1823
		ORG		00DCH
		STR 	75H 			//00DC 	10F5
		LDWI 	8H 			//00DD 	0008
		LSRF 	76H, 1H 		//00DE 	06F6
		RRR 	75H, 1H 			//00DF 	1CF5
		XORWR 	75H, 0H 		//00E0 	1675
		STR 	77H 			//00E1 	10F7
		LDWI 	84H 			//00E2 	0084
		XORWR 	76H, 0H 		//00E3 	1676
		ORG		00E4H
		STR 	78H 			//00E4 	10F8
		LDR 	77H, 0H 			//00E5 	1877
		STR 	23H 			//00E6 	10A3
		LDR 	78H, 0H 			//00E7 	1878
		STR 	24H 			//00E8 	10A4
		LJUMP 	ECH 			//00E9 	38EC

		//;IAP_FW.C: 168: else
		//;IAP_FW.C: 169: CRC_16 = CRC_16 >> 1;
		LSRF 	24H, 1H 		//00EA 	06A4
		RRR 	23H, 1H 			//00EB 	1CA3
		ORG		00ECH
		LDWI 	8H 			//00EC 	0008
		INCR 	79H, 1H 		//00ED 	1AF9
		SUBWR 	79H, 0H 		//00EE 	1279
		BTSS 	3H, 0H 			//00EF 	2C03
		LJUMP 	D7H 			//00F0 	38D7
		LDWI 	43H 			//00F1 	0043
		INCR 	7AH, 1H 		//00F2 	1AFA
		SUBWR 	7AH, 0H 		//00F3 	127A
		ORG		00F4H
		BTSS 	3H, 0H 			//00F4 	2C03
		LJUMP 	D0H 			//00F5 	38D0

		//;IAP_FW.C: 170: }
		//;IAP_FW.C: 171: }
		//;IAP_FW.C: 172: if((CRC_H !=iap_databuf[67]) || (CRC_L !=iap_databuf[68]))
		LDR 	68H, 0H 			//00F6 	1868
		XORWR 	24H, 0H 		//00F7 	1624
		BTSS 	3H, 2H 			//00F8 	2D03
		LJUMP 	107H 			//00F9 	3907
		LDR 	69H, 0H 			//00FA 	1869
		XORWR 	23H, 0H 		//00FB 	1623
		ORG		00FCH
		BTSS 	3H, 2H 			//00FC 	2D03
		LJUMP 	107H 			//00FD 	3907

		//;IAP_FW.C: 176: }
		//;IAP_FW.C: 177: CRC_H = iap_databuf[1];
		//;IAP_FW.C: 175: break;
		//;IAP_FW.C: 173: {
		//;IAP_FW.C: 174: iap_usart_send(0x44);
		LDR 	26H, 0H 			//00FE 	1826
		STR 	24H 			//00FF 	10A4

		//;IAP_FW.C: 178: CRC_L = iap_databuf[2];
		LDR 	27H, 0H 			//0100 	1827

		//;IAP_FW.C: 179: if(CRC_16 < 0X200)
		LCALL 	1D2H 			//0101 	31D2
		MOVLP 	0H 			//0102 	0180
		BTSC 	3H, 2H 			//0103 	2903
		ORG		0104H
		SUBWR 	23H, 0H 		//0104 	1223
		BTSC 	3H, 0H 			//0105 	2803
		LJUMP 	109H 			//0106 	3909

		//;IAP_FW.C: 180: {
		//;IAP_FW.C: 181: iap_usart_send(0x44);
		LDWI 	44H 			//0107 	0044
		LJUMP 	9AH 			//0108 	389A

		//;IAP_FW.C: 182: break;
		//;IAP_FW.C: 183: }
		//;IAP_FW.C: 184: for(i=0;i<64;i=i+2)
		CLRF 	7AH 			//0109 	11FA

		//;IAP_FW.C: 185: {
		//;IAP_FW.C: 186: EEADRH = CRC_H;
		//;IAP_FW.C: 187: EEADRL = CRC_L;
		LCALL 	1CAH 			//010A 	31CA
		MOVLP 	0H 			//010B 	0180
		ORG		010CH

		//;IAP_FW.C: 188: EEDATH = iap_databuf[i+3];
		LDR 	7AH, 0H 			//010C 	187A
		ADDWI 	28H 			//010D 	0E28
		STR 	6H 			//010E 	1086
		CLRF 	7H 			//010F 	1187
		LDR 	1H, 0H 			//0110 	1801
		STR 	14H 			//0111 	1094

		//;IAP_FW.C: 189: EEDATL = iap_databuf[i+4];
		LDR 	7AH, 0H 			//0112 	187A
		ADDWI 	29H 			//0113 	0E29
		ORG		0114H
		STR 	6H 			//0114 	1086
		LDR 	1H, 0H 			//0115 	1801
		STR 	13H 			//0116 	1093

		//;IAP_FW.C: 190: iap_mem_prog();
		LCALL 	1A4H 			//0117 	31A4
		MOVLP 	0H 			//0118 	0180

		//;IAP_FW.C: 191: CRC_16++;
		MOVLB 	0H 			//0119 	1020
		INCR 	23H, 1H 		//011A 	1AA3
		BTSC 	3H, 2H 			//011B 	2903
		ORG		011CH
		INCR 	24H, 1H 		//011C 	1AA4
		LDWI 	40H 			//011D 	0040
		INCR 	7AH, 1H 		//011E 	1AFA
		INCR 	7AH, 1H 		//011F 	1AFA
		SUBWR 	7AH, 0H 		//0120 	127A
		BTSS 	3H, 0H 			//0121 	2C03
		LJUMP 	10AH 			//0122 	390A

		//;IAP_FW.C: 192: }
		//;IAP_FW.C: 193: iap_usart_send(0X00);
		LDWI 	0H 			//0123 	0000
		ORG		0124H
		LJUMP 	9AH 			//0124 	389A

		//;IAP_FW.C: 194: break;
		//;IAP_FW.C: 196: CRC_H=iap_usart_rec();
		LCALL 	172H 			//0125 	3172
		MOVLP 	0H 			//0126 	0180
		MOVLB 	0H 			//0127 	1020
		STR 	24H 			//0128 	10A4

		//;IAP_FW.C: 197: CRC_L=iap_usart_rec();
		LCALL 	172H 			//0129 	3172
		MOVLP 	0H 			//012A 	0180
		MOVLB 	0H 			//012B 	1020
		ORG		012CH
		STR 	23H 			//012C 	10A3

		//;IAP_FW.C: 198: for(i=0;i<32;i++)
		CLRF 	7AH 			//012D 	11FA

		//;IAP_FW.C: 199: {
		//;IAP_FW.C: 200: EEADRH = CRC_H;
		//;IAP_FW.C: 201: EEADRL = CRC_L;
		LCALL 	1CAH 			//012E 	31CA
		MOVLP 	0H 			//012F 	0180

		//;IAP_FW.C: 202: iap_mem_rd();
		LCALL 	1BCH 			//0130 	31BC
		MOVLP 	0H 			//0131 	0180

		//;IAP_FW.C: 203: iap_usart_send(EEDATH);
		LDR 	14H, 0H 			//0132 	1814
		LCALL 	18DH 			//0133 	318D
		ORG		0134H
		MOVLP 	0H 			//0134 	0180

		//;IAP_FW.C: 204: iap_usart_send(EEDATL);
		MOVLB 	3H 			//0135 	1023
		LDR 	13H, 0H 			//0136 	1813
		LCALL 	18DH 			//0137 	318D
		MOVLP 	0H 			//0138 	0180

		//;IAP_FW.C: 205: CRC_16++;
		MOVLB 	0H 			//0139 	1020
		INCR 	23H, 1H 		//013A 	1AA3
		BTSC 	3H, 2H 			//013B 	2903
		ORG		013CH
		INCR 	24H, 1H 		//013C 	1AA4
		LDWI 	20H 			//013D 	0020
		INCR 	7AH, 1H 		//013E 	1AFA
		SUBWR 	7AH, 0H 		//013F 	127A
		BTSC 	3H, 0H 			//0140 	2803
		LJUMP 	153H 			//0141 	3953
		LJUMP 	12EH 			//0142 	392E

		//;IAP_FW.C: 209: Eeprom_Write_Flag(0);
		LDWI 	0H 			//0143 	0000
		ORG		0144H
		LCALL 	194H 			//0144 	3194
		MOVLP 	0H 			//0145 	0180

		//;IAP_FW.C: 210: iap_usart_send(0X00);
		LDWI 	0H 			//0146 	0000
		LCALL 	18DH 			//0147 	318D
		MOVLP 	0H 			//0148 	0180

		//;IAP_FW.C: 211: iap_wait_tx_idle();
		LCALL 	19DH 			//0149 	319D
		MOVLP 	0H 			//014A 	0180
		RESET 					//014B 	1001
		ORG		014CH

		//;IAP_FW.C: 213: break;
		LJUMP 	153H 			//014C 	3953

		//;IAP_FW.C: 216: iap_usart_send(0x44);
		LDWI 	44H 			//014D 	0044
		LCALL 	18DH 			//014E 	318D
		MOVLP 	0H 			//014F 	0180

		//;IAP_FW.C: 217: iap_wait_tx_idle();
		LCALL 	19DH 			//0150 	319D
		MOVLP 	0H 			//0151 	0180
		RESET 					//0152 	1001

		//;IAP_FW.C: 219: break;
		//;IAP_FW.C: 134: {
		//;IAP_FW.C: 135: iap_databuf[0]=iap_usart_rec();
		LCALL 	172H 			//0153 	3172
		ORG		0154H
		MOVLP 	0H 			//0154 	0180
		MOVLB 	0H 			//0155 	1020
		STR 	25H 			//0156 	10A5
		CLRWDT 			//0157 	1064
		MOVLB 	0H 			//0158 	1020
		LDR 	25H, 0H 			//0159 	1825
		XORWI 	3H 			//015A 	0A03
		BTSC 	3H, 2H 			//015B 	2903
		ORG		015CH
		LJUMP 	125H 			//015C 	3925
		XORWI 	7H 			//015D 	0A07
		BTSC 	3H, 2H 			//015E 	2903
		LJUMP 	9DH 			//015F 	389D
		XORWI 	1H 			//0160 	0A01
		BTSC 	3H, 2H 			//0161 	2903
		LJUMP 	BEH 			//0162 	38BE
		XORWI 	3H 			//0163 	0A03
		ORG		0164H
		BTSC 	3H, 2H 			//0164 	2903
		LJUMP 	143H 			//0165 	3943
		LJUMP 	14DH 			//0166 	394D

		//;IAP_FW.C: 221: }
		//;IAP_FW.C: 222: }
		//;IAP_FW.C: 224: if(iap_err_flag==1)
		BTSS 	20H, 1H 		//0167 	2CA0
		RET 					//0168 	1008

		//;IAP_FW.C: 225: {
		//;IAP_FW.C: 226: count=0;
		CLRF 	21H 			//0169 	11A1

		//;IAP_FW.C: 227: iap_err_flag=0;
		BCR 	20H, 1H 			//016A 	20A0

		//;IAP_FW.C: 228: if(read_flag !=1)
		BTSC 	20H, 0H 		//016B 	2820
		ORG		016CH
		RET 					//016C 	1008

		//;IAP_FW.C: 229: {
		//;IAP_FW.C: 230: uart_rxnef=1;
		BSR 	20H, 3H 			//016D 	25A0
		LJUMP 	204H 			//016E 	3A04
		RET 					//016F 	1008
		LJUMP 	204H 			//0170 	3A04
		RET 					//0171 	1008

		//;USART_DRV.C: 50: unsigned int a;
		//;USART_DRV.C: 51: for(a=0;a<47200;a++)
		CLRF 	73H 			//0172 	11F3
		CLRF 	74H 			//0173 	11F4
		ORG		0174H

		//;USART_DRV.C: 52: {
		//;USART_DRV.C: 53: DelayUs();
		LCALL 	1C2H 			//0174 	31C2
		MOVLP 	0H 			//0175 	0180

		//;USART_DRV.C: 54: if(((0x1 << 0 ) & URLSR))
		MOVLB 	9H 			//0176 	1029
		BTSS 	12H, 0H 		//0177 	2C12
		LJUMP 	182H 			//0178 	3982

		//;USART_DRV.C: 55: {
		//;USART_DRV.C: 56: if((URLSR & (0x1<<2 )) || (URLSR & (0x1<<3 )))
		BTSC 	12H, 2H 		//0179 	2912
		LJUMP 	17DH 			//017A 	397D
		BTSS 	12H, 3H 		//017B 	2D92
		ORG		017CH
		LJUMP 	180H 			//017C 	3980

		//;USART_DRV.C: 57: {
		//;USART_DRV.C: 58: URLSR = ~((0x1<<2 )|(0x1<<3 ));
		LDWI 	F3H 			//017D 	00F3
		STR 	12H 			//017E 	1092

		//;USART_DRV.C: 59: return 0xff;
		RETW 	FFH 			//017F 	04FF

		//;USART_DRV.C: 61: else
		//;USART_DRV.C: 62: {
		//;USART_DRV.C: 63: return URDATAL;
		LDR 	CH, 0H 			//0180 	180C
		RET 					//0181 	1008
		INCR 	73H, 1H 		//0182 	1AF3
		BTSC 	3H, 2H 			//0183 	2903
		ORG		0184H
		INCR 	74H, 1H 		//0184 	1AF4
		LDWI 	B8H 			//0185 	00B8
		SUBWR 	74H, 0H 		//0186 	1274
		LDWI 	60H 			//0187 	0060
		BTSC 	3H, 2H 			//0188 	2903
		SUBWR 	73H, 0H 		//0189 	1273
		BTSC 	3H, 0H 			//018A 	2803

		//;USART_DRV.C: 64: }
		//;USART_DRV.C: 65: }
		//;USART_DRV.C: 66: }
		//;USART_DRV.C: 67: return 0xff;
		RETW 	FFH 			//018B 	04FF
		ORG		018CH
		LJUMP 	174H 			//018C 	3974
		STR 	72H 			//018D 	10F2

		//;USART_DRV.C: 45: while(!(URLSR & (0x1<<5 )));
		MOVLB 	9H 			//018E 	1029
		BTSS 	12H, 5H 		//018F 	2E92
		LJUMP 	18EH 			//0190 	398E

		//;USART_DRV.C: 46: URDATAL = data;
		LDR 	72H, 0H 			//0191 	1872
		STR 	CH 			//0192 	108C
		RET 					//0193 	1008
		ORG		0194H
		STR 	72H 			//0194 	10F2

		//;IAP_FW.C: 35: EECON1 &=~(0x1<<7 );
		MOVLB 	3H 			//0195 	1023
		BCR 	15H, 7H 			//0196 	2395

		//;IAP_FW.C: 36: EECON1 =(0X1<<2 );
		LDWI 	4H 			//0197 	0004
		STR 	15H 			//0198 	1095

		//;IAP_FW.C: 37: EEADRL=0;
		CLRF 	11H 			//0199 	1191

		//;IAP_FW.C: 38: EEDATL=data;
		LDR 	72H, 0H 			//019A 	1872
		STR 	13H 			//019B 	1093
		ORG		019CH

		//;IAP_FW.C: 39: iap_mem_prog();
		LJUMP 	1A4H 			//019C 	39A4

		//;USART_DRV.C: 72: while(!(TCF & (0x1<<0 )));
		LDWI 	0H 			//019D 	0000
		BTSC 	1CH, 0H 		//019E 	281C
		LDWI 	1H 			//019F 	0001
		ANDWI 	1H 			//01A0 	0901
		BTSS 	3H, 2H 			//01A1 	2D03
		RET 					//01A2 	1008
		LJUMP 	19DH 			//01A3 	399D
		ORG		01A4H

		//;MEM_DRV.C: 28: EECON1 &=~(0x1<<4 );
		BCR 	15H, 4H 			//01A4 	2215

		//;MEM_DRV.C: 29: Unlock_Flash();
		LCALL 	1ABH 			//01A5 	31AB
		MOVLP 	0H 			//01A6 	0180

		//;MEM_DRV.C: 30: while(EECON1 & (0x1<<1 ));
		MOVLB 	3H 			//01A7 	1023
		BTSC 	15H, 1H 		//01A8 	2895
		LJUMP 	1A7H 			//01A9 	39A7
		RET 					//01AA 	1008
		LDWI 	3H 			//01AB 	0003
		ORG		01ACH
		STR 	8H 			//01AC 	1088
		LDWI 	55H 			//01AD 	0055
		STR 	16H 			//01AE 	1096
		LDWI 	AAH 			//01AF 	00AA
		STR 	16H 			//01B0 	1096
		BSR 	15H, 1H 			//01B1 	2495
		NOP 					//01B2 	1000
		NOP 					//01B3 	1000
		ORG		01B4H
		RET 					//01B4 	1008

		//;MEM_DRV.C: 20: EECON1 |=(0x1<<4 );
		BSR 	15H, 4H 			//01B5 	2615

		//;MEM_DRV.C: 21: Unlock_Flash();
		LCALL 	1ABH 			//01B6 	31AB
		MOVLP 	0H 			//01B7 	0180

		//;MEM_DRV.C: 22: while(EECON1 & (0x1<<1 ));
		MOVLB 	3H 			//01B8 	1023
		BTSC 	15H, 1H 		//01B9 	2895
		LJUMP 	1B8H 			//01BA 	39B8
		RET 					//01BB 	1008
		ORG		01BCH

		//;MEM_DRV.C: 35: EECON1 |=(0x1<<0 );
		BSR 	15H, 0H 			//01BC 	2415
		NOP 					//01BD 	1000

		//;MEM_DRV.C: 37: while(EECON1 & (0x1<<0 ));
		MOVLB 	3H 			//01BE 	1023
		BTSC 	15H, 0H 		//01BF 	2815
		LJUMP 	1BEH 			//01C0 	39BE
		RET 					//01C1 	1008

		//;USART_DRV.C: 37: unsigned char a;
		//;USART_DRV.C: 38: for(a=0;a<10;a++)
		CLRF 	72H 			//01C2 	11F2

		//;USART_DRV.C: 39: {
		//;USART_DRV.C: 40: __nop();
		NOP 					//01C3 	1000
		ORG		01C4H
		LDWI 	AH 			//01C4 	000A
		INCR 	72H, 1H 		//01C5 	1AF2
		SUBWR 	72H, 0H 		//01C6 	1272
		BTSC 	3H, 0H 			//01C7 	2803
		RET 					//01C8 	1008
		LJUMP 	1C3H 			//01C9 	39C3
		LDR 	24H, 0H 			//01CA 	1824
		MOVLB 	3H 			//01CB 	1023
		ORG		01CCH
		STR 	12H 			//01CC 	1092
		MOVLB 	0H 			//01CD 	1020
		LDR 	23H, 0H 			//01CE 	1823
		MOVLB 	3H 			//01CF 	1023
		STR 	11H 			//01D0 	1091
		RET 					//01D1 	1008
		STR 	23H 			//01D2 	10A3
		LDWI 	2H 			//01D3 	0002
		ORG		01D4H
		SUBWR 	24H, 0H 		//01D4 	1224
		RETW 	0H 			//01D5 	0400
		MOVLP 	0H 			//01D6 	0180
		LJUMP 	69H 			//01D7 	3869
		MOVLP 	0H 			//01D8 	0180
		LJUMP 	6FH 			//01D9 	386F
		MOVLP 	0H 			//01DA 	0180
		LJUMP 	71H 			//01DB 	3871
		ORG		01DCH
		MOVLP 	0H 			//01DC 	0180
		LJUMP 	73H 			//01DD 	3873
		MOVLP 	0H 			//01DE 	0180
		LJUMP 	75H 			//01DF 	3875
		MOVLP 	0H 			//01E0 	0180
		LJUMP 	77H 			//01E1 	3877
		MOVLP 	0H 			//01E2 	0180
		LJUMP 	79H 			//01E3 	3879
		ORG		01E4H
		MOVLP 	0H 			//01E4 	0180
		LJUMP 	7BH 			//01E5 	387B
		CLRWDT 			//01E6 	1064
		CLRF 	0H 			//01E7 	1180
		ADDFSR 	0H, 1H 		//01E8 	0101
		DECRSZ 	9H, 1H 		//01E9 	1B89
		LJUMP 	1E7H 			//01EA 	39E7
		RETW 	0H 			//01EB 	0400
			END
