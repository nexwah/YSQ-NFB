//Deviec:FT62F08X
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
		NOP 					//0003 	1000
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
		LCALL 	61H 			//001D 	3061
		BCR 	7EH, 0H 			//001D 	207E
		RETI 					//001E 	1009
		MOVLP 	0H 			//001F 	0180
		ORG		0020H
		LJUMP 	21H 			//0020 	3821
		LDWI 	25H 			//0021 	0025
		STR 	4H 			//0022 	1084
		LDWI 	0H 			//0023 	0000
		STR 	5H 			//0024 	1085
		LDWI 	45H 			//0025 	0045
		MOVLP 	1H 			//0026 	0181
		LCALL 	1E8H 			//0027 	31E8
		ORG		0028H
		MOVLP 	0H 			//0028 	0180
		BCR 	7EH, 0H 			//0029 	207E
		MOVLB 	0H 			//002A 	1020
		LJUMP 	2CH 			//002B 	382C

		//;IAP_FW.C: 251: iap_usart_init();
		LCALL 	3AH 			//002C 	303A
		MOVLP 	0H 			//002D 	0180

		//;IAP_FW.C: 252: count=0;
		MOVLB 	0H 			//002E 	1020
		LDWI 	0H 			//002F 	0000
		ORG		0030H
		CLRF 	21H 			//0030 	11A1

		//;IAP_FW.C: 253: flag=0;
		CLRF 	20H 			//0031 	11A0

		//;IAP_FW.C: 255: if(!EEPROMread(0))
		LCALL 	4FH 			//0032 	304F
		XORWI 	0H 			//0033 	0A00
		BTSC 	3H, 2H 			//0034 	2903
		LJUMP 	200H 			//0035 	3A00

		//;IAP_FW.C: 258: }
		//;IAP_FW.C: 259: read_flag =1;
		MOVLB 	0H 			//0036 	1020
		BSR 	20H, 0H 			//0037 	2420
		ORG		0038H

		//;IAP_FW.C: 260: while(1)
		CLRWDT 			//0038 	1064
		LJUMP 	38H 			//0039 	3838

		//;USART_DRV.C: 7: PCKEN = (0X1<<5 );
		LDWI 	20H 			//003A 	0020
		MOVLB 	1H 			//003B 	1021
		STR 	1AH 			//003C 	109A

		//;USART_DRV.C: 8: OSCCON = 0B01110001;
		LDWI 	71H 			//003D 	0071
		STR 	19H 			//003E 	1099

		//;USART_DRV.C: 11: AFP2 = 0B00000011;
		LDWI 	3H 			//003F 	0003
		ORG		0040H
		MOVLB 	2H 			//0040 	1022
		STR 	1DH 			//0041 	109D

		//;USART_DRV.C: 13: TRISB &= ~(0X1<<6 );
		MOVLB 	1H 			//0042 	1021
		BCR 	DH, 6H 			//0043 	230D

		//;USART_DRV.C: 17: URDLL=9;
		LDWI 	9H 			//0044 	0009
		MOVLB 	9H 			//0045 	1029
		STR 	14H 			//0046 	1094

		//;USART_DRV.C: 20: URLCR=(0x1 );
		LDWI 	1H 			//0047 	0001
		ORG		0048H
		STR 	FH 			//0048 	108F

		//;USART_DRV.C: 22: URMCR=(0X1<<4 )|(0x1<<3 );
		LDWI 	18H 			//0049 	0018
		STR 	11H 			//004A 	1091

		//;USART_DRV.C: 24: URRXNE |= (0X1<<0 );
		BSR 	EH, 0H 			//004B 	240E

		//;USART_DRV.C: 26: INTCON |=(0x1<<6)|(0x1<<7);
		LDWI 	C0H 			//004C 	00C0
		IORWR 	BH, 1H 		//004D 	148B
		RET 					//004E 	1008
		STR 	6AH 			//004F 	10EA
		ORG		0050H

		//;MEM_DRV.C: 51: DRDEN=1;
		MOVLB 	3H 			//0050 	1023
		BSR 	18H, 0H 			//0051 	2418

		//;MEM_DRV.C: 52: __nop();
		NOP 					//0052 	1000

		//;MEM_DRV.C: 53: __nop();
		NOP 					//0053 	1000

		//;MEM_DRV.C: 54: EEADRL = EEAddr;
		MOVLB 	0H 			//0054 	1020
		LDR 	6AH, 0H 			//0055 	186A
		MOVLB 	3H 			//0056 	1023
		STR 	11H 			//0057 	1091
		ORG		0058H

		//;MEM_DRV.C: 55: CFGS=0;
		BCR 	15H, 6H 			//0058 	2315

		//;MEM_DRV.C: 56: EEPGD=0;
		BCR 	15H, 7H 			//0059 	2395

		//;MEM_DRV.C: 57: RD = 1;
		BSR 	15H, 0H 			//005A 	2415

		//;MEM_DRV.C: 58: __nop();
		NOP 					//005B 	1000

		//;MEM_DRV.C: 59: __nop();
		NOP 					//005C 	1000

		//;MEM_DRV.C: 61: DRDEN=0;
		MOVLB 	3H 			//005D 	1023
		BCR 	18H, 0H 			//005E 	2018

		//;MEM_DRV.C: 62: return EEDATL;
		LDR 	13H, 0H 			//005F 	1813
		ORG		0060H
		RET 					//0060 	1008

		//;IAP_FW.C: 78: if(URRXNE && RXNEF)
		MOVLB 	9H 			//0061 	1029
		BTSC 	EH, 0H 			//0062 	280E
		BTSS 	12H, 0H 		//0063 	2C12
		LJUMP 	172H 			//0064 	3972

		//;IAP_FW.C: 79: {
		//;IAP_FW.C: 80: if(FEF==1)
		BTSC 	12H, 3H 		//0065 	2992

		//;IAP_FW.C: 81: {FEF=0;}
		BCR 	12H, 3H 			//0066 	2192

		//;IAP_FW.C: 82: iap_recdata = URDATAL;
		LDR 	CH, 0H 			//0067 	180C
		ORG		0068H
		MOVLB 	0H 			//0068 	1020
		STR 	22H 			//0069 	10A2

		//;IAP_FW.C: 83: count++;
		INCR 	21H, 1H 		//006A 	1AA1

		//;IAP_FW.C: 84: switch(count)
		LJUMP 	84H 			//006B 	3884

		//;IAP_FW.C: 87: if(iap_recdata!= 0x46)
		LDWI 	46H 			//006C 	0046
		XORWR 	22H, 0H 		//006D 	1622
		BTSC 	3H, 2H 			//006E 	2903
		LJUMP 	91H 			//006F 	3891
		ORG		0070H

		//;IAP_FW.C: 88: {iap_err_flag=1;}
		BSR 	20H, 1H 			//0070 	24A0
		LJUMP 	91H 			//0071 	3891

		//;IAP_FW.C: 91: if(iap_recdata != 0x4D)
		LDWI 	4DH 			//0072 	004D
		LJUMP 	6DH 			//0073 	386D

		//;IAP_FW.C: 95: if(iap_recdata != 0x44)
		LDWI 	44H 			//0074 	0044
		LJUMP 	6DH 			//0075 	386D

		//;IAP_FW.C: 99: if(iap_recdata != 0x49)
		LDWI 	49H 			//0076 	0049
		LJUMP 	6DH 			//0077 	386D
		ORG		0078H

		//;IAP_FW.C: 103: if(iap_recdata != 0x41)
		LDWI 	41H 			//0078 	0041
		LJUMP 	6DH 			//0079 	386D

		//;IAP_FW.C: 107: if(iap_recdata != 0x50)
		LDWI 	50H 			//007A 	0050
		LJUMP 	6DH 			//007B 	386D

		//;IAP_FW.C: 111: if(iap_recdata != 0x55)
		LDWI 	55H 			//007C 	0055
		LJUMP 	6DH 			//007D 	386D

		//;IAP_FW.C: 115: if(iap_recdata != 0xaa)
		LDWI 	AAH 			//007E 	00AA
		XORWR 	22H, 0H 		//007F 	1622
		ORG		0080H
		BTSS 	3H, 2H 			//0080 	2D03
		LJUMP 	70H 			//0081 	3870

		//;IAP_FW.C: 117: else
		//;IAP_FW.C: 118: {iap_ok_flag=1;}
		BSR 	20H, 2H 			//0082 	2520
		LJUMP 	91H 			//0083 	3891
		LDR 	21H, 0H 			//0084 	1821
		ADDWI 	FFH 			//0085 	0EFF
		BTSS 	3H, 0H 			//0086 	2C03
		LJUMP 	70H 			//0087 	3870
		ORG		0088H
		STR 	4H 			//0088 	1084
		LDWI 	8H 			//0089 	0008
		SUBWR 	4H, 0H 		//008A 	1204
		BTSC 	3H, 0H 			//008B 	2803
		LJUMP 	70H 			//008C 	3870
		MOVLP 	1H 			//008D 	0181
		LSLF 	4H, 0H 			//008E 	0504
		ADDWI 	D8H 			//008F 	0ED8
		ORG		0090H
		STR 	2H 			//0090 	1082

		//;IAP_FW.C: 124: if(iap_ok_flag==1)
		BTSS 	20H, 2H 		//0091 	2D20
		LJUMP 	169H 			//0092 	3969

		//;IAP_FW.C: 125: {
		//;IAP_FW.C: 126: count=0;
		CLRF 	21H 			//0093 	11A1

		//;IAP_FW.C: 127: iap_ok_flag =0;
		BCR 	20H, 2H 			//0094 	2120

		//;IAP_FW.C: 128: unsigned char i,j ;
		//;IAP_FW.C: 129: RXNE &= ~(0X1<<0 );
		BCR 	1CH, 1H 			//0095 	209C

		//;IAP_FW.C: 130: Eeprom_Write_Flag(0xff);
		LDWI 	FFH 			//0096 	00FF
		LCALL 	196H 			//0097 	3196
		ORG		0098H
		MOVLP 	0H 			//0098 	0180

		//;IAP_FW.C: 131: EECON1 = (0x1<<7 )|(0X1<<2 );
		LDWI 	84H 			//0099 	0084
		STR 	15H 			//009A 	1095

		//;IAP_FW.C: 132: iap_usart_send(0xaa);
		LDWI 	AAH 			//009B 	00AA
		LCALL 	18FH 			//009C 	318F
		MOVLP 	0H 			//009D 	0180

		//;IAP_FW.C: 137: switch(iap_databuf[0])
		LJUMP 	155H 			//009E 	3955

		//;IAP_FW.C: 140: CRC_H=iap_usart_rec();
		LCALL 	174H 			//009F 	3174
		ORG		00A0H
		MOVLP 	0H 			//00A0 	0180
		MOVLB 	0H 			//00A1 	1020
		STR 	24H 			//00A2 	10A4

		//;IAP_FW.C: 141: CRC_L=iap_usart_rec();
		LCALL 	174H 			//00A3 	3174
		MOVLP 	0H 			//00A4 	0180
		MOVLB 	0H 			//00A5 	1020

		//;IAP_FW.C: 142: if(CRC_16 < 0X200)
		LCALL 	1D4H 			//00A6 	31D4
		MOVLP 	0H 			//00A7 	0180
		ORG		00A8H
		BTSC 	3H, 2H 			//00A8 	2903
		SUBWR 	23H, 0H 		//00A9 	1223
		BTSS 	3H, 0H 			//00AA 	2C03
		LJUMP 	109H 			//00AB 	3909

		//;IAP_FW.C: 146: }
		//;IAP_FW.C: 147: for(CRC_16=0x200;CRC_16<=0x2000-0x40;CRC_16+=0x40)
		//;IAP_FW.C: 145: break;
		//;IAP_FW.C: 143: {
		//;IAP_FW.C: 144: iap_usart_send(0x44);
		LDWI 	2H 			//00AC 	0002
		STR 	24H 			//00AD 	10A4
		CLRF 	23H 			//00AE 	11A3
		LDWI 	1FH 			//00AF 	001F
		ORG		00B0H
		SUBWR 	24H, 0H 		//00B0 	1224
		LDWI 	C1H 			//00B1 	00C1
		BTSC 	3H, 2H 			//00B2 	2903
		SUBWR 	23H, 0H 		//00B3 	1223
		BTSC 	3H, 0H 			//00B4 	2803
		LJUMP 	125H 			//00B5 	3925

		//;IAP_FW.C: 148: {
		//;IAP_FW.C: 149: EEADRH = CRC_H;
		//;IAP_FW.C: 150: EEADRL = CRC_L;
		LCALL 	1CCH 			//00B6 	31CC
		MOVLP 	0H 			//00B7 	0180
		ORG		00B8H

		//;IAP_FW.C: 151: iap_mem_erase();
		LCALL 	1B7H 			//00B8 	31B7
		MOVLP 	0H 			//00B9 	0180
		LDWI 	40H 			//00BA 	0040
		MOVLB 	0H 			//00BB 	1020
		ADDWR 	23H, 1H 		//00BC 	17A3
		BTSC 	3H, 0H 			//00BD 	2803
		INCR 	24H, 1H 		//00BE 	1AA4
		LJUMP 	AFH 			//00BF 	38AF
		ORG		00C0H

		//;IAP_FW.C: 155: case 0X05:
		//;IAP_FW.C: 154: break;
		//;IAP_FW.C: 152: }
		//;IAP_FW.C: 153: iap_usart_send(0X00);
		//;IAP_FW.C: 156: for(i=1;i<69;i++)
		CLRF 	7AH 			//00C0 	11FA
		INCR 	7AH, 1H 		//00C1 	1AFA

		//;IAP_FW.C: 157: {
		//;IAP_FW.C: 158: iap_databuf[i]=iap_usart_rec();
		LDR 	7AH, 0H 			//00C2 	187A
		ADDWI 	25H 			//00C3 	0E25
		STR 	6H 			//00C4 	1086
		CLRF 	7H 			//00C5 	1187
		LCALL 	174H 			//00C6 	3174
		MOVLP 	0H 			//00C7 	0180
		ORG		00C8H
		STR 	1H 			//00C8 	1081
		LDWI 	45H 			//00C9 	0045
		INCR 	7AH, 1H 		//00CA 	1AFA
		SUBWR 	7AH, 0H 		//00CB 	127A
		BTSS 	3H, 0H 			//00CC 	2C03
		LJUMP 	C2H 			//00CD 	38C2

		//;IAP_FW.C: 159: }
		//;IAP_FW.C: 160: CRC_16 = 0;
		MOVLB 	0H 			//00CE 	1020
		CLRF 	23H 			//00CF 	11A3
		ORG		00D0H
		CLRF 	24H 			//00D0 	11A4

		//;IAP_FW.C: 161: for(i=0;i<67;i++)
		CLRF 	7AH 			//00D1 	11FA

		//;IAP_FW.C: 162: {
		//;IAP_FW.C: 163: CRC_16 ^= iap_databuf[i];
		LDR 	7AH, 0H 			//00D2 	187A
		ADDWI 	25H 			//00D3 	0E25
		STR 	6H 			//00D4 	1086
		CLRF 	7H 			//00D5 	1187
		LDR 	1H, 0H 			//00D6 	1801
		XORWR 	23H, 1H 		//00D7 	16A3
		ORG		00D8H

		//;IAP_FW.C: 164: for(j = 0;j < 8;j++)
		CLRF 	79H 			//00D8 	11F9

		//;IAP_FW.C: 165: {
		//;IAP_FW.C: 166: if(CRC_16 & 0x01)
		BTSS 	23H, 0H 		//00D9 	2C23
		LJUMP 	ECH 			//00DA 	38EC

		//;IAP_FW.C: 167: CRC_16 = (CRC_16 >> 1) ^ 0x8408;
		LDR 	24H, 0H 			//00DB 	1824
		STR 	76H 			//00DC 	10F6
		LDR 	23H, 0H 			//00DD 	1823
		STR 	75H 			//00DE 	10F5
		LDWI 	8H 			//00DF 	0008
		ORG		00E0H
		LSRF 	76H, 1H 		//00E0 	06F6
		RRR 	75H, 1H 			//00E1 	1CF5
		XORWR 	75H, 0H 		//00E2 	1675
		STR 	77H 			//00E3 	10F7
		LDWI 	84H 			//00E4 	0084
		XORWR 	76H, 0H 		//00E5 	1676
		STR 	78H 			//00E6 	10F8
		LDR 	77H, 0H 			//00E7 	1877
		ORG		00E8H
		STR 	23H 			//00E8 	10A3
		LDR 	78H, 0H 			//00E9 	1878
		STR 	24H 			//00EA 	10A4
		LJUMP 	EEH 			//00EB 	38EE

		//;IAP_FW.C: 168: else
		//;IAP_FW.C: 169: CRC_16 = CRC_16 >> 1;
		LSRF 	24H, 1H 		//00EC 	06A4
		RRR 	23H, 1H 			//00ED 	1CA3
		LDWI 	8H 			//00EE 	0008
		INCR 	79H, 1H 		//00EF 	1AF9
		ORG		00F0H
		SUBWR 	79H, 0H 		//00F0 	1279
		BTSS 	3H, 0H 			//00F1 	2C03
		LJUMP 	D9H 			//00F2 	38D9
		LDWI 	43H 			//00F3 	0043
		INCR 	7AH, 1H 		//00F4 	1AFA
		SUBWR 	7AH, 0H 		//00F5 	127A
		BTSS 	3H, 0H 			//00F6 	2C03
		LJUMP 	D2H 			//00F7 	38D2
		ORG		00F8H

		//;IAP_FW.C: 170: }
		//;IAP_FW.C: 171: }
		//;IAP_FW.C: 172: if((CRC_H !=iap_databuf[67]) || (CRC_L !=iap_databuf[68]))
		LDR 	68H, 0H 			//00F8 	1868
		XORWR 	24H, 0H 		//00F9 	1624
		BTSS 	3H, 2H 			//00FA 	2D03
		LJUMP 	109H 			//00FB 	3909
		LDR 	69H, 0H 			//00FC 	1869
		XORWR 	23H, 0H 		//00FD 	1623
		BTSS 	3H, 2H 			//00FE 	2D03
		LJUMP 	109H 			//00FF 	3909
		ORG		0100H

		//;IAP_FW.C: 176: }
		//;IAP_FW.C: 177: CRC_H = iap_databuf[1];
		//;IAP_FW.C: 175: break;
		//;IAP_FW.C: 173: {
		//;IAP_FW.C: 174: iap_usart_send(0x44);
		LDR 	26H, 0H 			//0100 	1826
		STR 	24H 			//0101 	10A4

		//;IAP_FW.C: 178: CRC_L = iap_databuf[2];
		LDR 	27H, 0H 			//0102 	1827

		//;IAP_FW.C: 179: if(CRC_16 < 0X200)
		LCALL 	1D4H 			//0103 	31D4
		MOVLP 	0H 			//0104 	0180
		BTSC 	3H, 2H 			//0105 	2903
		SUBWR 	23H, 0H 		//0106 	1223
		BTSC 	3H, 0H 			//0107 	2803
		ORG		0108H
		LJUMP 	10BH 			//0108 	390B

		//;IAP_FW.C: 180: {
		//;IAP_FW.C: 181: iap_usart_send(0x44);
		LDWI 	44H 			//0109 	0044
		LJUMP 	9CH 			//010A 	389C

		//;IAP_FW.C: 182: break;
		//;IAP_FW.C: 183: }
		//;IAP_FW.C: 184: for(i=0;i<64;i=i+2)
		CLRF 	7AH 			//010B 	11FA

		//;IAP_FW.C: 185: {
		//;IAP_FW.C: 186: EEADRH = CRC_H;
		//;IAP_FW.C: 187: EEADRL = CRC_L;
		LCALL 	1CCH 			//010C 	31CC
		MOVLP 	0H 			//010D 	0180

		//;IAP_FW.C: 188: EEDATH = iap_databuf[i+3];
		LDR 	7AH, 0H 			//010E 	187A
		ADDWI 	28H 			//010F 	0E28
		ORG		0110H
		STR 	6H 			//0110 	1086
		CLRF 	7H 			//0111 	1187
		LDR 	1H, 0H 			//0112 	1801
		STR 	14H 			//0113 	1094

		//;IAP_FW.C: 189: EEDATL = iap_databuf[i+4];
		LDR 	7AH, 0H 			//0114 	187A
		ADDWI 	29H 			//0115 	0E29
		STR 	6H 			//0116 	1086
		LDR 	1H, 0H 			//0117 	1801
		ORG		0118H
		STR 	13H 			//0118 	1093

		//;IAP_FW.C: 190: iap_mem_prog();
		LCALL 	1A6H 			//0119 	31A6
		MOVLP 	0H 			//011A 	0180

		//;IAP_FW.C: 191: CRC_16++;
		MOVLB 	0H 			//011B 	1020
		INCR 	23H, 1H 		//011C 	1AA3
		BTSC 	3H, 2H 			//011D 	2903
		INCR 	24H, 1H 		//011E 	1AA4
		LDWI 	40H 			//011F 	0040
		ORG		0120H
		INCR 	7AH, 1H 		//0120 	1AFA
		INCR 	7AH, 1H 		//0121 	1AFA
		SUBWR 	7AH, 0H 		//0122 	127A
		BTSS 	3H, 0H 			//0123 	2C03
		LJUMP 	10CH 			//0124 	390C

		//;IAP_FW.C: 192: }
		//;IAP_FW.C: 193: iap_usart_send(0X00);
		LDWI 	0H 			//0125 	0000
		LJUMP 	9CH 			//0126 	389C

		//;IAP_FW.C: 194: break;
		//;IAP_FW.C: 196: CRC_H=iap_usart_rec();
		LCALL 	174H 			//0127 	3174
		ORG		0128H
		MOVLP 	0H 			//0128 	0180
		MOVLB 	0H 			//0129 	1020
		STR 	24H 			//012A 	10A4

		//;IAP_FW.C: 197: CRC_L=iap_usart_rec();
		LCALL 	174H 			//012B 	3174
		MOVLP 	0H 			//012C 	0180
		MOVLB 	0H 			//012D 	1020
		STR 	23H 			//012E 	10A3

		//;IAP_FW.C: 198: for(i=0;i<32;i++)
		CLRF 	7AH 			//012F 	11FA
		ORG		0130H

		//;IAP_FW.C: 199: {
		//;IAP_FW.C: 200: EEADRH = CRC_H;
		//;IAP_FW.C: 201: EEADRL = CRC_L;
		LCALL 	1CCH 			//0130 	31CC
		MOVLP 	0H 			//0131 	0180

		//;IAP_FW.C: 202: iap_mem_rd();
		LCALL 	1BEH 			//0132 	31BE
		MOVLP 	0H 			//0133 	0180

		//;IAP_FW.C: 203: iap_usart_send(EEDATH);
		LDR 	14H, 0H 			//0134 	1814
		LCALL 	18FH 			//0135 	318F
		MOVLP 	0H 			//0136 	0180

		//;IAP_FW.C: 204: iap_usart_send(EEDATL);
		MOVLB 	3H 			//0137 	1023
		ORG		0138H
		LDR 	13H, 0H 			//0138 	1813
		LCALL 	18FH 			//0139 	318F
		MOVLP 	0H 			//013A 	0180

		//;IAP_FW.C: 205: CRC_16++;
		MOVLB 	0H 			//013B 	1020
		INCR 	23H, 1H 		//013C 	1AA3
		BTSC 	3H, 2H 			//013D 	2903
		INCR 	24H, 1H 		//013E 	1AA4
		LDWI 	20H 			//013F 	0020
		ORG		0140H
		INCR 	7AH, 1H 		//0140 	1AFA
		SUBWR 	7AH, 0H 		//0141 	127A
		BTSC 	3H, 0H 			//0142 	2803
		LJUMP 	155H 			//0143 	3955
		LJUMP 	130H 			//0144 	3930

		//;IAP_FW.C: 209: Eeprom_Write_Flag(0);
		LDWI 	0H 			//0145 	0000
		LCALL 	196H 			//0146 	3196
		MOVLP 	0H 			//0147 	0180
		ORG		0148H

		//;IAP_FW.C: 210: iap_usart_send(0X00);
		LDWI 	0H 			//0148 	0000
		LCALL 	18FH 			//0149 	318F
		MOVLP 	0H 			//014A 	0180

		//;IAP_FW.C: 211: iap_wait_tx_idle();
		LCALL 	19FH 			//014B 	319F
		MOVLP 	0H 			//014C 	0180
		RESET 					//014D 	1001

		//;IAP_FW.C: 213: break;
		LJUMP 	155H 			//014E 	3955

		//;IAP_FW.C: 216: iap_usart_send(0x44);
		LDWI 	44H 			//014F 	0044
		ORG		0150H
		LCALL 	18FH 			//0150 	318F
		MOVLP 	0H 			//0151 	0180

		//;IAP_FW.C: 218: iap_wait_tx_idle();
		LCALL 	19FH 			//0152 	319F
		MOVLP 	0H 			//0153 	0180
		RESET 					//0154 	1001

		//;IAP_FW.C: 220: break;
		//;IAP_FW.C: 134: {
		//;IAP_FW.C: 135: iap_databuf[0]=iap_usart_rec();
		LCALL 	174H 			//0155 	3174
		MOVLP 	0H 			//0156 	0180
		MOVLB 	0H 			//0157 	1020
		ORG		0158H
		STR 	25H 			//0158 	10A5
		CLRWDT 			//0159 	1064
		MOVLB 	0H 			//015A 	1020
		LDR 	25H, 0H 			//015B 	1825
		XORWI 	3H 			//015C 	0A03
		BTSC 	3H, 2H 			//015D 	2903
		LJUMP 	127H 			//015E 	3927
		XORWI 	7H 			//015F 	0A07
		ORG		0160H
		BTSC 	3H, 2H 			//0160 	2903
		LJUMP 	9FH 			//0161 	389F
		XORWI 	1H 			//0162 	0A01
		BTSC 	3H, 2H 			//0163 	2903
		LJUMP 	C0H 			//0164 	38C0
		XORWI 	3H 			//0165 	0A03
		BTSC 	3H, 2H 			//0166 	2903
		LJUMP 	145H 			//0167 	3945
		ORG		0168H
		LJUMP 	14FH 			//0168 	394F

		//;IAP_FW.C: 222: }
		//;IAP_FW.C: 223: }
		//;IAP_FW.C: 224: if(iap_err_flag==1)
		BTSS 	20H, 1H 		//0169 	2CA0
		RET 					//016A 	1008

		//;IAP_FW.C: 225: {
		//;IAP_FW.C: 226: count=0;
		CLRF 	21H 			//016B 	11A1

		//;IAP_FW.C: 227: iap_err_flag=0;
		BCR 	20H, 1H 			//016C 	20A0

		//;IAP_FW.C: 228: if(read_flag !=1)
		BTSC 	20H, 0H 		//016D 	2820
		RET 					//016E 	1008

		//;IAP_FW.C: 229: {
		//;IAP_FW.C: 230: uart_rxnef=1;
		BSR 	20H, 3H 			//016F 	25A0
		ORG		0170H
		LJUMP 	204H 			//0170 	3A04
		RET 					//0171 	1008
		LJUMP 	204H 			//0172 	3A04
		RET 					//0173 	1008

		//;USART_DRV.C: 52: unsigned int a;
		//;USART_DRV.C: 53: for(a=0;a<47200;a++)
		CLRF 	73H 			//0174 	11F3
		CLRF 	74H 			//0175 	11F4

		//;USART_DRV.C: 54: {
		//;USART_DRV.C: 55: DelayUs();
		LCALL 	1C4H 			//0176 	31C4
		MOVLP 	0H 			//0177 	0180
		ORG		0178H

		//;USART_DRV.C: 56: if(((0x1 << 0 ) & URLSR))
		MOVLB 	9H 			//0178 	1029
		BTSS 	12H, 0H 		//0179 	2C12
		LJUMP 	184H 			//017A 	3984

		//;USART_DRV.C: 57: {
		//;USART_DRV.C: 58: if((URLSR & (0x1<<2 )) || (URLSR & (0x1<<3 )))
		BTSC 	12H, 2H 		//017B 	2912
		LJUMP 	17FH 			//017C 	397F
		BTSS 	12H, 3H 		//017D 	2D92
		LJUMP 	182H 			//017E 	3982

		//;USART_DRV.C: 59: {
		//;USART_DRV.C: 60: URLSR = ~((0x1<<2 )|(0x1<<3 ));
		LDWI 	F3H 			//017F 	00F3
		ORG		0180H
		STR 	12H 			//0180 	1092

		//;USART_DRV.C: 61: return 0xff;
		RETW 	FFH 			//0181 	04FF

		//;USART_DRV.C: 63: else
		//;USART_DRV.C: 64: {
		//;USART_DRV.C: 65: return URDATAL;
		LDR 	CH, 0H 			//0182 	180C
		RET 					//0183 	1008
		INCR 	73H, 1H 		//0184 	1AF3
		BTSC 	3H, 2H 			//0185 	2903
		INCR 	74H, 1H 		//0186 	1AF4
		LDWI 	B8H 			//0187 	00B8
		ORG		0188H
		SUBWR 	74H, 0H 		//0188 	1274
		LDWI 	60H 			//0189 	0060
		BTSC 	3H, 2H 			//018A 	2903
		SUBWR 	73H, 0H 		//018B 	1273
		BTSC 	3H, 0H 			//018C 	2803

		//;USART_DRV.C: 66: }
		//;USART_DRV.C: 67: }
		//;USART_DRV.C: 68: }
		//;USART_DRV.C: 69: return 0xff;
		RETW 	FFH 			//018D 	04FF
		LJUMP 	176H 			//018E 	3976
		STR 	72H 			//018F 	10F2
		ORG		0190H

		//;USART_DRV.C: 46: while(!(URLSR & (0x1<<5 )));
		MOVLB 	9H 			//0190 	1029
		BTSS 	12H, 5H 		//0191 	2E92
		LJUMP 	190H 			//0192 	3990

		//;USART_DRV.C: 47: URDATAL = data;
		LDR 	72H, 0H 			//0193 	1872
		STR 	CH 			//0194 	108C
		RET 					//0195 	1008
		STR 	72H 			//0196 	10F2

		//;IAP_FW.C: 36: EECON1 &=~(0x1<<7 );
		MOVLB 	3H 			//0197 	1023
		ORG		0198H
		BCR 	15H, 7H 			//0198 	2395

		//;IAP_FW.C: 37: EECON1 =(0X1<<2 );
		LDWI 	4H 			//0199 	0004
		STR 	15H 			//019A 	1095

		//;IAP_FW.C: 38: EEADRL=0;
		CLRF 	11H 			//019B 	1191

		//;IAP_FW.C: 39: EEDATL=data;
		LDR 	72H, 0H 			//019C 	1872
		STR 	13H 			//019D 	1093

		//;IAP_FW.C: 40: iap_mem_prog();
		LJUMP 	1A6H 			//019E 	39A6

		//;USART_DRV.C: 77: while(!(TCF & (0x1<<0 )));
		LDWI 	0H 			//019F 	0000
		ORG		01A0H
		BTSC 	1CH, 0H 		//01A0 	281C
		LDWI 	1H 			//01A1 	0001
		ANDWI 	1H 			//01A2 	0901
		BTSS 	3H, 2H 			//01A3 	2D03
		RET 					//01A4 	1008
		LJUMP 	19FH 			//01A5 	399F

		//;MEM_DRV.C: 29: EECON1 &=~(0x1<<4 );
		BCR 	15H, 4H 			//01A6 	2215

		//;MEM_DRV.C: 30: Unlock_Flash();
		LCALL 	1ADH 			//01A7 	31AD
		ORG		01A8H
		MOVLP 	0H 			//01A8 	0180

		//;MEM_DRV.C: 31: while(EECON1 & (0x1<<1 ));
		MOVLB 	3H 			//01A9 	1023
		BTSS 	15H, 1H 		//01AA 	2C95
		RET 					//01AB 	1008
		LJUMP 	1A9H 			//01AC 	39A9
		LDWI 	3H 			//01AD 	0003
		STR 	8H 			//01AE 	1088
		LDWI 	55H 			//01AF 	0055
		ORG		01B0H
		STR 	16H 			//01B0 	1096
		LDWI 	AAH 			//01B1 	00AA
		STR 	16H 			//01B2 	1096
		BSR 	15H, 1H 			//01B3 	2495
		NOP 					//01B4 	1000
		NOP 					//01B5 	1000
		RET 					//01B6 	1008

		//;MEM_DRV.C: 21: EECON1 |=(0x1<<4 );
		BSR 	15H, 4H 			//01B7 	2615
		ORG		01B8H

		//;MEM_DRV.C: 22: Unlock_Flash();
		LCALL 	1ADH 			//01B8 	31AD
		MOVLP 	0H 			//01B9 	0180

		//;MEM_DRV.C: 23: while(EECON1 & (0x1<<1 ));
		MOVLB 	3H 			//01BA 	1023
		BTSS 	15H, 1H 		//01BB 	2C95
		RET 					//01BC 	1008
		LJUMP 	1BAH 			//01BD 	39BA

		//;MEM_DRV.C: 36: EECON1 |=(0x1<<0 );
		BSR 	15H, 0H 			//01BE 	2415
		NOP 					//01BF 	1000
		ORG		01C0H

		//;MEM_DRV.C: 38: while(EECON1 & (0x1<<0 ));
		MOVLB 	3H 			//01C0 	1023
		BTSS 	15H, 0H 		//01C1 	2C15
		RET 					//01C2 	1008
		LJUMP 	1C0H 			//01C3 	39C0

		//;USART_DRV.C: 38: unsigned char a;
		//;USART_DRV.C: 39: for(a=0;a<10;a++)
		CLRF 	72H 			//01C4 	11F2

		//;USART_DRV.C: 40: {
		//;USART_DRV.C: 41: __nop();
		NOP 					//01C5 	1000
		LDWI 	AH 			//01C6 	000A
		INCR 	72H, 1H 		//01C7 	1AF2
		ORG		01C8H
		SUBWR 	72H, 0H 		//01C8 	1272
		BTSC 	3H, 0H 			//01C9 	2803
		RET 					//01CA 	1008
		LJUMP 	1C5H 			//01CB 	39C5
		LDR 	24H, 0H 			//01CC 	1824
		MOVLB 	3H 			//01CD 	1023
		STR 	12H 			//01CE 	1092
		MOVLB 	0H 			//01CF 	1020
		ORG		01D0H
		LDR 	23H, 0H 			//01D0 	1823
		MOVLB 	3H 			//01D1 	1023
		STR 	11H 			//01D2 	1091
		RET 					//01D3 	1008
		STR 	23H 			//01D4 	10A3
		LDWI 	2H 			//01D5 	0002
		SUBWR 	24H, 0H 		//01D6 	1224
		RETW 	0H 			//01D7 	0400
		ORG		01D8H
		MOVLP 	0H 			//01D8 	0180
		LJUMP 	6CH 			//01D9 	386C
		MOVLP 	0H 			//01DA 	0180
		LJUMP 	72H 			//01DB 	3872
		MOVLP 	0H 			//01DC 	0180
		LJUMP 	74H 			//01DD 	3874
		MOVLP 	0H 			//01DE 	0180
		LJUMP 	76H 			//01DF 	3876
		ORG		01E0H
		MOVLP 	0H 			//01E0 	0180
		LJUMP 	78H 			//01E1 	3878
		MOVLP 	0H 			//01E2 	0180
		LJUMP 	7AH 			//01E3 	387A
		MOVLP 	0H 			//01E4 	0180
		LJUMP 	7CH 			//01E5 	387C
		MOVLP 	0H 			//01E6 	0180
		LJUMP 	7EH 			//01E7 	387E
		ORG		01E8H
		CLRWDT 			//01E8 	1064
		CLRF 	0H 			//01E9 	1180
		ADDFSR 	0H, 1H 		//01EA 	0101
		DECRSZ 	9H, 1H 		//01EB 	1B89
		LJUMP 	1E9H 			//01EC 	39E9
		RETW 	0H 			//01ED 	0400
			END
