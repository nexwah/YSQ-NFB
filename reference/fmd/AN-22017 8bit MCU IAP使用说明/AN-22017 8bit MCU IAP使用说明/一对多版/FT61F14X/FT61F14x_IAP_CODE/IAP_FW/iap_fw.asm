//Deviec:FT61F14X
//-----------------------Variable---------------------------------
		_iap_databuf		EQU		A0H
//		Power_On_App_Check@CRC_Eeprom		EQU		32H
//		EEPROMread@EEAddr		EQU		2AH
//		EEPROMread@ReEEPROMread		EQU		2BH
//		EEPROMread@EEAddr		EQU		BA000H
//		All_Page_Read_CRC@iap_addr		EQU		30H
//		CRC16_CCITT@data		EQU		2EH
//		CRC16_CCITT@i		EQU		2FH
//		CRC16_CCITT@data		EQU		BA000H
//		user_isr@iap_addr		EQU		27H
//		user_isr@CRC16_dat1		EQU		25H
//		user_isr@i		EQU		29H
//		iap_usart_rec@a		EQU		73H
//		DelayUs@a		EQU		72H
//		data_check_erase_or_not@i		EQU		78H
//		data_check_erase_or_not@k		EQU		77H
//		data_check_erase_or_not@j		EQU		76H
//		data_check_erase_or_not@addr		EQU		72H
//		data_check_erase_or_not@mode		EQU		74H
//		i1All_Page_Read_CRC@iap_addr		EQU		78H
//		i1CRC16_CCITT@data		EQU		76H
//		i1CRC16_CCITT@i		EQU		77H
//		i1CRC16_CCITT@data		EQU		C00000H
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

		//;IAP_FW.C: 168: user_isr();
		MOVLP 	0H 			//001B 	0180
		MOVLP 	0H 			//001C 	0180
		ORG		001CH
		LCALL 	D3H 			//001C 	30D3
		BCR 	7EH, 0H 			//001D 	207E
		RETI 					//001E 	1009
		MOVLP 	0H 			//001F 	0180
		LJUMP 	21H 			//0020 	3821
		LDWI 	A0H 			//0021 	00A0
		STR 	4H 			//0022 	1084
		LDWI 	0H 			//0023 	0000
		ORG		0024H
		STR 	5H 			//0024 	1085
		LDWI 	45H 			//0025 	0045
		MOVLP 	2H 			//0026 	0182
		LCALL 	2C5H 			//0027 	32C5
		MOVLP 	0H 			//0028 	0180
		BCR 	7EH, 0H 			//0029 	207E
		MOVLB 	0H 			//002A 	1020
		LJUMP 	2CH 			//002B 	382C
		ORG		002CH

		//;IAP_FW.C: 366: iap_usart_init();
		LCALL 	35H 			//002C 	3035
		MOVLP 	0H 			//002D 	0180

		//;IAP_FW.C: 367: Power_On_App_Check();
		LCALL 	46H 			//002E 	3046

		//;IAP_FW.C: 369: GIE=1;
		BSR 	BH, 7H 			//002F 	278B

		//;IAP_FW.C: 370: PEIE=1;
		BSR 	BH, 6H 			//0030 	270B

		//;IAP_FW.C: 372: if(read_flag !=1)
		BTSS 	20H, 0H 		//0031 	2C20
		LJUMP 	400H 			//0032 	3C00

		//;IAP_FW.C: 375: }
		//;IAP_FW.C: 376: while(1)
		CLRWDT 			//0033 	1064
		ORG		0034H
		LJUMP 	33H 			//0034 	3833

		//;USART_DRV.C: 7: PCKEN = (0X1<<5 );
		LDWI 	20H 			//0035 	0020
		MOVLB 	1H 			//0036 	1021
		STR 	1AH 			//0037 	109A

		//;USART_DRV.C: 8: OSCCON = 0B01110001;
		LDWI 	71H 			//0038 	0071
		STR 	19H 			//0039 	1099

		//;USART_DRV.C: 11: AFP1 = 0B00000100;
		LDWI 	4H 			//003A 	0004
		MOVLB 	3H 			//003B 	1023
		ORG		003CH
		STR 	1FH 			//003C 	109F

		//;USART_DRV.C: 14: URDLL=104;
		LDWI 	68H 			//003D 	0068
		MOVLB 	9H 			//003E 	1029
		STR 	14H 			//003F 	1094

		//;USART_DRV.C: 19: URLCR=(0x1 );
		LDWI 	1H 			//0040 	0001
		STR 	FH 			//0041 	108F

		//;USART_DRV.C: 21: URMCR=(0X1<<4 )|(0x1<<3 );
		LDWI 	18H 			//0042 	0018
		STR 	11H 			//0043 	1091
		ORG		0044H

		//;USART_DRV.C: 23: URRXNE |= (0X1<<0 );
		BSR 	EH, 0H 			//0044 	240E
		RET 					//0045 	1008

		//;IAP_FW.C: 89: unsigned int CRC_Eeprom;
		//;IAP_FW.C: 91: count=0;
		MOVLB 	0H 			//0046 	1020
		LDWI 	0H 			//0047 	0000
		CLRF 	21H 			//0048 	11A1

		//;IAP_FW.C: 92: flag=0;
		CLRF 	20H 			//0049 	11A0

		//;IAP_FW.C: 94: CRC_Eeprom=EEPROMread(0);
		LCALL 	64H 			//004A 	3064
		MOVLP 	0H 			//004B 	0180
		ORG		004CH
		STR 	32H 			//004C 	10B2
		CLRF 	33H 			//004D 	11B3

		//;IAP_FW.C: 95: CRC_Eeprom= CRC_Eeprom << 8;
		STR 	33H 			//004E 	10B3
		LDWI 	1H 			//004F 	0001
		CLRF 	32H 			//0050 	11B2

		//;IAP_FW.C: 96: CRC_Eeprom= CRC_Eeprom + EEPROMread(1);
		LCALL 	64H 			//0051 	3064
		MOVLP 	0H 			//0052 	0180
		ADDWR 	32H, 1H 		//0053 	17B2
		ORG		0054H
		BTSC 	3H, 0H 			//0054 	2803
		INCR 	33H, 1H 		//0055 	1AB3

		//;IAP_FW.C: 98: All_Page_Read_CRC();
		LCALL 	77H 			//0056 	3077
		MOVLP 	0H 			//0057 	0180

		//;IAP_FW.C: 99: if(CRC_Eeprom == CRC_16)
		LDR 	24H, 0H 			//0058 	1824
		XORWR 	33H, 0H 		//0059 	1633
		BTSS 	3H, 2H 			//005A 	2D03
		LJUMP 	5EH 			//005B 	385E
		ORG		005CH
		LDR 	23H, 0H 			//005C 	1823
		XORWR 	32H, 0H 		//005D 	1632
		BTSS 	3H, 2H 			//005E 	2D03
		LJUMP 	62H 			//005F 	3862

		//;IAP_FW.C: 100: {
		//;IAP_FW.C: 101: read_flag=0;
		BCR 	20H, 0H 			//0060 	2020

		//;IAP_FW.C: 102: }
		RET 					//0061 	1008

		//;IAP_FW.C: 103: else
		//;IAP_FW.C: 104: {
		//;IAP_FW.C: 105: read_flag=1;
		BSR 	20H, 0H 			//0062 	2420
		RET 					//0063 	1008
		ORG		0064H
		STR 	2AH 			//0064 	10AA

		//;MEM_DRV.C: 50: unsigned char ReEEPROMread;
		//;MEM_DRV.C: 52: EEADRL = EEAddr;
		MOVLB 	3H 			//0065 	1023
		STR 	11H 			//0066 	1091

		//;MEM_DRV.C: 54: EEPGD=0;
		BCR 	15H, 7H 			//0067 	2395

		//;MEM_DRV.C: 55: CFGS=0;
		BCR 	15H, 6H 			//0068 	2315

		//;MEM_DRV.C: 56: RD = 1;
		BSR 	15H, 0H 			//0069 	2415

		//;MEM_DRV.C: 57: __nop();
		NOP 					//006A 	1000

		//;MEM_DRV.C: 58: __nop();
		NOP 					//006B 	1000
		ORG		006CH

		//;MEM_DRV.C: 59: __nop();
		NOP 					//006C 	1000

		//;MEM_DRV.C: 60: __nop();
		NOP 					//006D 	1000

		//;MEM_DRV.C: 61: ReEEPROMread = EEDATL;
		MOVLB 	3H 			//006E 	1023
		LDR 	13H, 0H 			//006F 	1813
		MOVLB 	0H 			//0070 	1020
		STR 	2BH 			//0071 	10AB

		//;MEM_DRV.C: 62: RD=0;
		MOVLB 	3H 			//0072 	1023
		BCR 	15H, 0H 			//0073 	2015
		ORG		0074H

		//;MEM_DRV.C: 63: return ReEEPROMread;
		MOVLB 	0H 			//0074 	1020
		LDR 	2BH, 0H 			//0075 	182B
		RET 					//0076 	1008

		//;IAP_FW.C: 60: unsigned int iap_addr;
		//;IAP_FW.C: 61: CRC_16 = 0;
		//;IAP_FW.C: 62: EECON1 = (0x1<<7 )|(0X1<<2 );
		MOVLP 	2H 			//0077 	0182
		LCALL 	2A0H 			//0078 	32A0
		MOVLP 	0H 			//0079 	0180
		STR 	15H 			//007A 	1095

		//;IAP_FW.C: 63: for(iap_addr=0X400;iap_addr<0x1000;iap_addr++)
		MOVLB 	0H 			//007B 	1020
		ORG		007CH
		LDWI 	4H 			//007C 	0004
		CLRF 	30H 			//007D 	11B0
		STR 	31H 			//007E 	10B1

		//;IAP_FW.C: 64: {
		//;IAP_FW.C: 65: EEADRH = iap_addr>>8;
		LDR 	31H, 0H 			//007F 	1831
		MOVLB 	3H 			//0080 	1023
		STR 	12H 			//0081 	1092

		//;IAP_FW.C: 66: EEADRL = iap_addr>>0;
		MOVLB 	0H 			//0082 	1020
		LDR 	30H, 0H 			//0083 	1830
		ORG		0084H
		MOVLB 	3H 			//0084 	1023
		STR 	11H 			//0085 	1091

		//;IAP_FW.C: 67: iap_mem_rd();
		LCALL 	B9H 			//0086 	30B9
		MOVLP 	0H 			//0087 	0180

		//;IAP_FW.C: 68: CRC16_CCITT(EEDATL);
		LDR 	13H, 0H 			//0088 	1813
		LCALL 	9AH 			//0089 	309A
		MOVLP 	0H 			//008A 	0180

		//;IAP_FW.C: 69: CRC16_CCITT(EEDATH);
		MOVLB 	3H 			//008B 	1023
		ORG		008CH
		LDR 	14H, 0H 			//008C 	1814
		LCALL 	9AH 			//008D 	309A
		MOVLP 	0H 			//008E 	0180
		INCR 	30H, 1H 		//008F 	1AB0
		BTSC 	3H, 2H 			//0090 	2903
		INCR 	31H, 1H 		//0091 	1AB1
		LDWI 	10H 			//0092 	0010
		SUBWR 	31H, 0H 		//0093 	1231
		ORG		0094H
		LDWI 	0H 			//0094 	0000
		BTSC 	3H, 2H 			//0095 	2903
		SUBWR 	30H, 0H 		//0096 	1230
		BTSC 	3H, 0H 			//0097 	2803
		RET 					//0098 	1008
		LJUMP 	7FH 			//0099 	387F
		MOVLB 	0H 			//009A 	1020
		STR 	2EH 			//009B 	10AE
		ORG		009CH

		//;IAP_FW.C: 45: unsigned char i;
		//;IAP_FW.C: 47: CRC_16 ^= data;
		XORWR 	23H, 1H 		//009C 	16A3

		//;IAP_FW.C: 49: for(i = 0;i < 8;i++)
		CLRF 	2FH 			//009D 	11AF

		//;IAP_FW.C: 50: {
		//;IAP_FW.C: 51: if(CRC_16 & 0x01)
		BTSS 	23H, 0H 		//009E 	2C23
		LJUMP 	B1H 			//009F 	38B1

		//;IAP_FW.C: 52: CRC_16 = (CRC_16 >> 1) ^ 0x8408;
		LDR 	24H, 0H 			//00A0 	1824
		STR 	2BH 			//00A1 	10AB
		LDR 	23H, 0H 			//00A2 	1823
		STR 	2AH 			//00A3 	10AA
		ORG		00A4H
		LDWI 	8H 			//00A4 	0008
		LSRF 	2BH, 1H 		//00A5 	06AB
		RRR 	2AH, 1H 			//00A6 	1CAA
		XORWR 	2AH, 0H 		//00A7 	162A
		STR 	2CH 			//00A8 	10AC
		LDWI 	84H 			//00A9 	0084
		XORWR 	2BH, 0H 		//00AA 	162B
		STR 	2DH 			//00AB 	10AD
		ORG		00ACH
		LDR 	2CH, 0H 			//00AC 	182C
		STR 	23H 			//00AD 	10A3
		LDR 	2DH, 0H 			//00AE 	182D
		STR 	24H 			//00AF 	10A4
		LJUMP 	B3H 			//00B0 	38B3

		//;IAP_FW.C: 53: else
		//;IAP_FW.C: 54: CRC_16 = CRC_16 >> 1;
		LSRF 	24H, 1H 		//00B1 	06A4
		RRR 	23H, 1H 			//00B2 	1CA3
		LDWI 	8H 			//00B3 	0008
		ORG		00B4H
		INCR 	2FH, 1H 		//00B4 	1AAF
		SUBWR 	2FH, 0H 		//00B5 	122F
		BTSC 	3H, 0H 			//00B6 	2803
		RET 					//00B7 	1008
		LJUMP 	9EH 			//00B8 	389E

		//;MEM_DRV.C: 36: EECON1 |=(0x1<<0 );
		BSR 	15H, 0H 			//00B9 	2415
		NOP 					//00BA 	1000

		//;MEM_DRV.C: 38: while(EECON1 & (0x1<<0 ));
		MOVLB 	3H 			//00BB 	1023
		ORG		00BCH
		BTSC 	15H, 0H 		//00BC 	2815
		LJUMP 	BBH 			//00BD 	38BB
		RET 					//00BE 	1008

		//;IAP_FW.C: 74: All_Page_Read_CRC();
		LCALL 	222H 			//00BF 	3222
		MOVLP 	0H 			//00C0 	0180

		//;IAP_FW.C: 76: EECON1 &=~(0x1<<7 );
		MOVLB 	3H 			//00C1 	1023
		BCR 	15H, 7H 			//00C2 	2395

		//;IAP_FW.C: 77: EECON1 =(0X1<<2 );
		LDWI 	4H 			//00C3 	0004
		ORG		00C4H
		STR 	15H 			//00C4 	1095

		//;IAP_FW.C: 79: EEADRL=0;
		CLRF 	11H 			//00C5 	1191

		//;IAP_FW.C: 80: EEDATL=CRC_H;
		MOVLB 	0H 			//00C6 	1020
		LDR 	24H, 0H 			//00C7 	1824
		MOVLB 	3H 			//00C8 	1023
		STR 	13H 			//00C9 	1093

		//;IAP_FW.C: 81: iap_mem_prog();
		LCALL 	1F0H 			//00CA 	31F0
		MOVLP 	0H 			//00CB 	0180
		ORG		00CCH

		//;IAP_FW.C: 82: EEADRL=1;
		LDWI 	1H 			//00CC 	0001
		STR 	11H 			//00CD 	1091

		//;IAP_FW.C: 83: EEDATL=CRC_L;
		MOVLB 	0H 			//00CE 	1020
		LDR 	23H, 0H 			//00CF 	1823
		MOVLB 	3H 			//00D0 	1023
		STR 	13H 			//00D1 	1093

		//;IAP_FW.C: 84: iap_mem_prog();
		LJUMP 	1F0H 			//00D2 	39F0

		//;IAP_FW.C: 173: if(URRXNE && RXNEF)
		MOVLB 	9H 			//00D3 	1029
		ORG		00D4H
		BTSC 	EH, 0H 			//00D4 	280E
		BTSS 	12H, 0H 		//00D5 	2C12
		LJUMP 	1BDH 			//00D6 	39BD

		//;IAP_FW.C: 174: {
		//;IAP_FW.C: 175: if(FEF==1)
		BTSC 	12H, 3H 		//00D7 	2992

		//;IAP_FW.C: 176: {FEF=0;}
		BCR 	12H, 3H 			//00D8 	2192

		//;IAP_FW.C: 177: iap_recdata= URDATAL;
		LDR 	CH, 0H 			//00D9 	180C
		MOVLB 	0H 			//00DA 	1020
		STR 	22H 			//00DB 	10A2
		ORG		00DCH

		//;IAP_FW.C: 178: count++;
		INCR 	21H, 1H 		//00DC 	1AA1

		//;IAP_FW.C: 179: switch(count)
		LJUMP 	F6H 			//00DD 	38F6

		//;IAP_FW.C: 183: if(iap_recdata != 0x46)
		LDWI 	46H 			//00DE 	0046
		XORWR 	22H, 0H 		//00DF 	1622
		BTSC 	3H, 2H 			//00E0 	2903
		LJUMP 	103H 			//00E1 	3903

		//;IAP_FW.C: 184: {iap_err_flag=1;}
		BSR 	20H, 1H 			//00E2 	24A0
		LJUMP 	103H 			//00E3 	3903
		ORG		00E4H

		//;IAP_FW.C: 189: if(iap_recdata != 0x4D)
		LDWI 	4DH 			//00E4 	004D
		LJUMP 	DFH 			//00E5 	38DF

		//;IAP_FW.C: 195: if(iap_recdata!= 0x44)
		LDWI 	44H 			//00E6 	0044
		LJUMP 	DFH 			//00E7 	38DF

		//;IAP_FW.C: 201: if(iap_recdata != 0x49)
		LDWI 	49H 			//00E8 	0049
		LJUMP 	DFH 			//00E9 	38DF

		//;IAP_FW.C: 207: if(iap_recdata != 0x41)
		LDWI 	41H 			//00EA 	0041
		LJUMP 	DFH 			//00EB 	38DF
		ORG		00ECH

		//;IAP_FW.C: 213: if(iap_recdata != 0x50)
		LDWI 	50H 			//00EC 	0050
		LJUMP 	DFH 			//00ED 	38DF

		//;IAP_FW.C: 219: if(iap_recdata!= 0x55)
		LDWI 	55H 			//00EE 	0055
		LJUMP 	DFH 			//00EF 	38DF

		//;IAP_FW.C: 226: if(iap_recdata!= 0xaa)
		LDWI 	AAH 			//00F0 	00AA
		XORWR 	22H, 0H 		//00F1 	1622
		BTSS 	3H, 2H 			//00F2 	2D03
		LJUMP 	E2H 			//00F3 	38E2
		ORG		00F4H

		//;IAP_FW.C: 228: else
		//;IAP_FW.C: 229: {iap_ok_flag=1;}
		BSR 	20H, 2H 			//00F4 	2520
		LJUMP 	103H 			//00F5 	3903
		LDR 	21H, 0H 			//00F6 	1821
		ADDWI 	FFH 			//00F7 	0EFF
		BTSS 	3H, 0H 			//00F8 	2C03
		LJUMP 	E2H 			//00F9 	38E2
		STR 	4H 			//00FA 	1084
		LDWI 	10H 			//00FB 	0010
		ORG		00FCH
		SUBWR 	4H, 0H 		//00FC 	1204
		BTSC 	3H, 0H 			//00FD 	2803
		LJUMP 	E2H 			//00FE 	38E2
		MOVLP 	2H 			//00FF 	0182
		LSLF 	4H, 0H 			//0100 	0504
		ADDWI 	A5H 			//0101 	0EA5
		STR 	2H 			//0102 	1082

		//;IAP_FW.C: 236: if(iap_ok_flag==1)
		BTSS 	20H, 2H 		//0103 	2D20
		ORG		0104H
		LJUMP 	1AFH 			//0104 	39AF

		//;IAP_FW.C: 237: {
		//;IAP_FW.C: 238: count=0;
		CLRF 	21H 			//0105 	11A1

		//;IAP_FW.C: 239: iap_ok_flag =0;
		BCR 	20H, 2H 			//0106 	2120

		//;IAP_FW.C: 240: unsigned char i ;
		//;IAP_FW.C: 241: unsigned int iap_addr;
		//;IAP_FW.C: 242: unsigned int CRC16_dat1;
		//;IAP_FW.C: 243: URRXNE &= ~(0X1<<0 );
		MOVLB 	9H 			//0107 	1029
		BCR 	EH, 0H 			//0108 	200E

		//;IAP_FW.C: 244: EECON1 = (0x1<<7 )|(0X1<<2 );
		LDWI 	84H 			//0109 	0084
		MOVLB 	3H 			//010A 	1023
		STR 	15H 			//010B 	1095
		ORG		010CH

		//;IAP_FW.C: 249: switch(iap_databuf[0])
		LJUMP 	1A0H 			//010C 	39A0

		//;IAP_FW.C: 250: {
		//;IAP_FW.C: 251: case 0X05:
		//;IAP_FW.C: 252: for(i=1;i<69;i++)
		MOVLB 	0H 			//010D 	1020
		CLRF 	29H 			//010E 	11A9
		INCR 	29H, 1H 		//010F 	1AA9

		//;IAP_FW.C: 253: {
		//;IAP_FW.C: 254: iap_databuf[i]=iap_usart_rec();
		LDR 	29H, 0H 			//0110 	1829
		ADDWI 	A0H 			//0111 	0EA0
		STR 	6H 			//0112 	1086
		CLRF 	7H 			//0113 	1187
		ORG		0114H
		LCALL 	1F7H 			//0114 	31F7
		MOVLP 	0H 			//0115 	0180
		STR 	1H 			//0116 	1081
		MOVLB 	0H 			//0117 	1020
		LDWI 	45H 			//0118 	0045
		INCR 	29H, 1H 		//0119 	1AA9
		SUBWR 	29H, 0H 		//011A 	1229
		BTSS 	3H, 0H 			//011B 	2C03
		ORG		011CH
		LJUMP 	110H 			//011C 	3910

		//;IAP_FW.C: 255: }
		//;IAP_FW.C: 256: CRC16_dat1 = iap_databuf[67];
		MOVLB 	1H 			//011D 	1021
		LDR 	63H, 0H 			//011E 	1863
		MOVLB 	0H 			//011F 	1020
		STR 	25H 			//0120 	10A5
		CLRF 	26H 			//0121 	11A6

		//;IAP_FW.C: 257: CRC16_dat1 = ((CRC16_dat1<<8)+iap_databuf[68]);
		STR 	7AH 			//0122 	10FA
		MOVLB 	1H 			//0123 	1021
		ORG		0124H
		LDR 	64H, 0H 			//0124 	1864
		MOVLB 	0H 			//0125 	1020
		STR 	25H 			//0126 	10A5
		LDR 	7AH, 0H 			//0127 	187A
		STR 	26H 			//0128 	10A6

		//;IAP_FW.C: 258: CRC_16 = 0;
		CLRF 	23H 			//0129 	11A3
		CLRF 	24H 			//012A 	11A4

		//;IAP_FW.C: 259: for(i=0;i<67;i++)
		CLRF 	29H 			//012B 	11A9
		ORG		012CH

		//;IAP_FW.C: 260: {
		//;IAP_FW.C: 261: CRC16_CCITT(iap_databuf[i]);
		LDR 	29H, 0H 			//012C 	1829
		ADDWI 	A0H 			//012D 	0EA0
		STR 	6H 			//012E 	1086
		CLRF 	7H 			//012F 	1187
		LDR 	1H, 0H 			//0130 	1801
		LCALL 	242H 			//0131 	3242
		MOVLP 	0H 			//0132 	0180
		LDWI 	43H 			//0133 	0043
		ORG		0134H
		INCR 	29H, 1H 		//0134 	1AA9
		SUBWR 	29H, 0H 		//0135 	1229
		BTSS 	3H, 0H 			//0136 	2C03
		LJUMP 	12CH 			//0137 	392C

		//;IAP_FW.C: 262: }
		//;IAP_FW.C: 263: if(CRC16_dat1 !=CRC_16)
		LDR 	24H, 0H 			//0138 	1824
		XORWR 	26H, 0H 		//0139 	1626
		BTSS 	3H, 2H 			//013A 	2D03
		LJUMP 	13EH 			//013B 	393E
		ORG		013CH
		LDR 	23H, 0H 			//013C 	1823
		XORWR 	25H, 0H 		//013D 	1625
		BTSC 	3H, 2H 			//013E 	2903
		LJUMP 	142H 			//013F 	3942
		RESET 					//0140 	1001

		//;IAP_FW.C: 266: break;
		LJUMP 	1A0H 			//0141 	39A0

		//;IAP_FW.C: 267: }
		//;IAP_FW.C: 268: iap_addr = iap_databuf[1];
		//;IAP_FW.C: 269: iap_addr = ((iap_addr<<8)+iap_databuf[2]);
		LCALL 	284H 			//0142 	3284
		MOVLP 	0H 			//0143 	0180
		ORG		0144H

		//;IAP_FW.C: 270: if(iap_addr < 0X400)
		LDWI 	4H 			//0144 	0004
		SUBWR 	28H, 0H 		//0145 	1228
		LDWI 	0H 			//0146 	0000
		BTSC 	3H, 2H 			//0147 	2903
		SUBWR 	27H, 0H 		//0148 	1227
		BTSC 	3H, 0H 			//0149 	2803
		LJUMP 	14DH 			//014A 	394D
		RESET 					//014B 	1001
		ORG		014CH

		//;IAP_FW.C: 273: break;
		LJUMP 	1A0H 			//014C 	39A0

		//;IAP_FW.C: 274: }
		//;IAP_FW.C: 275: if(data_check_erase_or_not(iap_addr,1))
		LCALL 	29AH 			//014D 	329A
		MOVLP 	0H 			//014E 	0180
		INCR 	74H, 1H 		//014F 	1AF4
		LCALL 	1BFH 			//0150 	31BF
		MOVLP 	0H 			//0151 	0180
		XORWI 	0H 			//0152 	0A00
		BTSC 	3H, 2H 			//0153 	2903
		ORG		0154H
		LJUMP 	160H 			//0154 	3960

		//;IAP_FW.C: 276: {
		//;IAP_FW.C: 277: if(iap_addr == (0x1000-0x20))
		LDWI 	E0H 			//0155 	00E0
		MOVLB 	0H 			//0156 	1020
		XORWR 	27H, 0H 		//0157 	1627
		LDWI 	FH 			//0158 	000F
		BTSC 	3H, 2H 			//0159 	2903
		XORWR 	28H, 0H 		//015A 	1628
		BTSS 	3H, 2H 			//015B 	2D03
		ORG		015CH
		LJUMP 	1A0H 			//015C 	39A0

		//;IAP_FW.C: 278: {
		//;IAP_FW.C: 279: Eeprom_Write_Crc();
		LCALL 	BFH 			//015D 	30BF
		MOVLP 	0H 			//015E 	0180
		LJUMP 	1A0H 			//015F 	39A0

		//;IAP_FW.C: 283: else
		//;IAP_FW.C: 284: {
		//;IAP_FW.C: 285: if(data_check_erase_or_not(iap_addr,0))
		MOVLB 	0H 			//0160 	1020
		LCALL 	29AH 			//0161 	329A
		MOVLP 	0H 			//0162 	0180
		LCALL 	1BFH 			//0163 	31BF
		ORG		0164H
		MOVLP 	0H 			//0164 	0180
		XORWI 	0H 			//0165 	0A00
		BTSC 	3H, 2H 			//0166 	2903
		LJUMP 	176H 			//0167 	3976

		//;IAP_FW.C: 286: {
		//;IAP_FW.C: 287: for(i=0;i<64;i=i+2)
		MOVLB 	0H 			//0168 	1020
		CLRF 	29H 			//0169 	11A9

		//;IAP_FW.C: 288: {
		//;IAP_FW.C: 289: EEADRH = iap_addr>>8;
		LDR 	28H, 0H 			//016A 	1828
		MOVLB 	3H 			//016B 	1023
		ORG		016CH
		STR 	12H 			//016C 	1092

		//;IAP_FW.C: 290: EEADRL = iap_addr>>0;
		//;IAP_FW.C: 291: EEDATH = iap_databuf[i+3];
		//;IAP_FW.C: 292: EEDATL = iap_databuf[i+4];
		LCALL 	270H 			//016D 	3270
		MOVLP 	0H 			//016E 	0180

		//;IAP_FW.C: 293: iap_mem_prog();
		LCALL 	1F0H 			//016F 	31F0
		MOVLP 	0H 			//0170 	0180

		//;IAP_FW.C: 294: iap_addr++;
		LCALL 	291H 			//0171 	3291
		MOVLP 	0H 			//0172 	0180
		BTSC 	3H, 0H 			//0173 	2803
		ORG		0174H
		LJUMP 	18DH 			//0174 	398D
		LJUMP 	16AH 			//0175 	396A

		//;IAP_FW.C: 297: else
		//;IAP_FW.C: 298: {
		//;IAP_FW.C: 299: EEADRH = iap_addr>>8;
		MOVLB 	0H 			//0176 	1020
		LDR 	28H, 0H 			//0177 	1828
		MOVLB 	3H 			//0178 	1023
		STR 	12H 			//0179 	1092

		//;IAP_FW.C: 300: EEADRL = iap_addr>>0;
		MOVLB 	0H 			//017A 	1020
		LDR 	27H, 0H 			//017B 	1827
		ORG		017CH
		MOVLB 	3H 			//017C 	1023
		STR 	11H 			//017D 	1091

		//;IAP_FW.C: 301: iap_mem_erase();
		LCALL 	261H 			//017E 	3261
		MOVLP 	0H 			//017F 	0180

		//;IAP_FW.C: 302: for(i=0;i<64;i=i+2)
		MOVLB 	0H 			//0180 	1020
		CLRF 	29H 			//0181 	11A9

		//;IAP_FW.C: 303: {
		//;IAP_FW.C: 304: EEADRH = iap_addr>>8;
		LDR 	28H, 0H 			//0182 	1828
		MOVLB 	3H 			//0183 	1023
		ORG		0184H
		STR 	12H 			//0184 	1092

		//;IAP_FW.C: 305: EEADRL = iap_addr>>0;
		//;IAP_FW.C: 306: EEDATH = iap_databuf[i+3];
		//;IAP_FW.C: 307: EEDATL = iap_databuf[i+4];
		LCALL 	270H 			//0185 	3270
		MOVLP 	0H 			//0186 	0180

		//;IAP_FW.C: 308: iap_mem_prog();
		LCALL 	1F0H 			//0187 	31F0
		MOVLP 	0H 			//0188 	0180

		//;IAP_FW.C: 309: iap_addr++;
		LCALL 	291H 			//0189 	3291
		MOVLP 	0H 			//018A 	0180
		BTSS 	3H, 0H 			//018B 	2C03
		ORG		018CH
		LJUMP 	182H 			//018C 	3982

		//;IAP_FW.C: 310: }
		//;IAP_FW.C: 311: }
		//;IAP_FW.C: 312: iap_addr = iap_databuf[1];
		//;IAP_FW.C: 313: iap_addr = ((iap_addr<<8)+iap_databuf[2]);
		LCALL 	284H 			//018D 	3284
		MOVLP 	0H 			//018E 	0180

		//;IAP_FW.C: 314: if(data_check_erase_or_not(iap_addr,1))
		STR 	73H 			//018F 	10F3
		LDR 	27H, 0H 			//0190 	1827
		STR 	72H 			//0191 	10F2
		CLRF 	74H 			//0192 	11F4
		INCR 	74H, 1H 		//0193 	1AF4
		ORG		0194H
		LCALL 	1BFH 			//0194 	31BF
		MOVLP 	0H 			//0195 	0180
		XORWI 	0H 			//0196 	0A00
		BTSS 	3H, 2H 			//0197 	2D03
		LJUMP 	155H 			//0198 	3955

		//;IAP_FW.C: 315: {
		//;IAP_FW.C: 316: if(iap_addr == (0x1000-0x20))
		RESET 					//0199 	1001

		//;IAP_FW.C: 325: break;
		LJUMP 	1A0H 			//019A 	39A0

		//;IAP_FW.C: 329: case 0X06:
		RESET 					//019B 	1001
		ORG		019CH

		//;IAP_FW.C: 332: break;
		LJUMP 	1A0H 			//019C 	39A0

		//;IAP_FW.C: 335: count=0;
		MOVLB 	0H 			//019D 	1020
		CLRF 	21H 			//019E 	11A1
		RESET 					//019F 	1001

		//;IAP_FW.C: 337: break;
		//;IAP_FW.C: 246: {
		//;IAP_FW.C: 247: iap_databuf[0]=iap_usart_rec();
		LCALL 	1F7H 			//01A0 	31F7
		MOVLP 	0H 			//01A1 	0180
		MOVLB 	1H 			//01A2 	1021
		STR 	20H 			//01A3 	10A0
		ORG		01A4H
		CLRWDT 			//01A4 	1064
		MOVLB 	1H 			//01A5 	1021
		LDR 	20H, 0H 			//01A6 	1820
		XORWI 	5H 			//01A7 	0A05
		BTSC 	3H, 2H 			//01A8 	2903
		LJUMP 	10DH 			//01A9 	390D
		XORWI 	3H 			//01AA 	0A03
		BTSC 	3H, 2H 			//01AB 	2903
		ORG		01ACH
		LJUMP 	19BH 			//01AC 	399B
		LJUMP 	19DH 			//01AD 	399D
		LJUMP 	1A0H 			//01AE 	39A0

		//;IAP_FW.C: 339: }
		//;IAP_FW.C: 340: }
		//;IAP_FW.C: 341: if(iap_err_flag==1)
		BTSS 	20H, 1H 		//01AF 	2CA0
		RET 					//01B0 	1008

		//;IAP_FW.C: 342: {
		//;IAP_FW.C: 343: count=0;
		CLRF 	21H 			//01B1 	11A1

		//;IAP_FW.C: 344: iap_err_flag=0;
		BCR 	20H, 1H 			//01B2 	20A0

		//;IAP_FW.C: 345: RXNEF=1;
		MOVLB 	9H 			//01B3 	1029
		ORG		01B4H
		BSR 	12H, 0H 			//01B4 	2412

		//;IAP_FW.C: 346: URDATAL=iap_recdata;
		MOVLB 	0H 			//01B5 	1020
		LDR 	22H, 0H 			//01B6 	1822
		MOVLB 	9H 			//01B7 	1029
		STR 	CH 			//01B8 	108C

		//;IAP_FW.C: 347: if(read_flag !=1)
		MOVLB 	0H 			//01B9 	1020
		BTSC 	20H, 0H 		//01BA 	2820
		RET 					//01BB 	1008
		ORG		01BCH
		LJUMP 	404H 			//01BC 	3C04
		LJUMP 	404H 			//01BD 	3C04
		RET 					//01BE 	1008

		//;IAP_FW.C: 112: unsigned char i ,j,k;
		//;IAP_FW.C: 113: for(i=0;i<32;i++)
		//+                          ck]
		CLRF 	78H 			//01BF 	11F8

		//;IAP_FW.C: 114: {
		//;IAP_FW.C: 115: EEADRH = addr>>8;
		LDR 	73H, 0H 			//01C0 	1873
		MOVLB 	3H 			//01C1 	1023
		STR 	12H 			//01C2 	1092

		//;IAP_FW.C: 116: EEADRL = addr>>0;
		LDR 	72H, 0H 			//01C3 	1872
		ORG		01C4H
		STR 	11H 			//01C4 	1091

		//;IAP_FW.C: 117: j = iap_databuf[i*2+3];
		LSLF 	78H, 0H 		//01C5 	0578
		ADDWI 	A3H 			//01C6 	0EA3
		STR 	6H 			//01C7 	1086
		CLRF 	7H 			//01C8 	1187
		LDR 	1H, 0H 			//01C9 	1801
		STR 	76H 			//01CA 	10F6

		//;IAP_FW.C: 118: k = iap_databuf[i*2+4];
		LSLF 	78H, 0H 		//01CB 	0578
		ORG		01CCH
		ADDWI 	A4H 			//01CC 	0EA4
		STR 	6H 			//01CD 	1086
		LDR 	1H, 0H 			//01CE 	1801
		STR 	77H 			//01CF 	10F7

		//;IAP_FW.C: 119: iap_mem_rd();
		LCALL 	21CH 			//01D0 	321C
		MOVLP 	0H 			//01D1 	0180

		//;IAP_FW.C: 120: if(mode == 0)
		LDR 	74H, 0H 			//01D2 	1874
		BTSS 	3H, 2H 			//01D3 	2D03
		ORG		01D4H
		LJUMP 	1DFH 			//01D4 	39DF

		//;IAP_FW.C: 121: {
		//;IAP_FW.C: 122: if(((EEDATH & j) != j) || ((EEDATL & k) != k))
		LDR 	76H, 0H 			//01D5 	1876
		ANDWR 	14H, 0H 		//01D6 	1514
		STR 	75H 			//01D7 	10F5
		XORWR 	76H, 0H 		//01D8 	1676
		BTSS 	3H, 2H 			//01D9 	2D03
		RETW 	0H 			//01DA 	0400
		LDR 	77H, 0H 			//01DB 	1877
		ORG		01DCH
		ANDWR 	13H, 0H 		//01DC 	1513
		STR 	75H 			//01DD 	10F5
		LJUMP 	1E4H 			//01DE 	39E4

		//;IAP_FW.C: 127: else
		//;IAP_FW.C: 128: {
		//;IAP_FW.C: 129: if((EEDATH != j) || (EEDATL != k))
		LDR 	14H, 0H 			//01DF 	1814
		XORWR 	76H, 0H 		//01E0 	1676
		BTSS 	3H, 2H 			//01E1 	2D03
		RETW 	0H 			//01E2 	0400
		LDR 	13H, 0H 			//01E3 	1813
		ORG		01E4H
		XORWR 	77H, 0H 		//01E4 	1677
		BTSS 	3H, 2H 			//01E5 	2D03

		//;IAP_FW.C: 123: {
		//;IAP_FW.C: 124: return 0;
		RETW 	0H 			//01E6 	0400

		//;IAP_FW.C: 132: }
		//;IAP_FW.C: 133: }
		//;IAP_FW.C: 134: addr++;
		INCR 	72H, 1H 		//01E7 	1AF2
		BTSC 	3H, 2H 			//01E8 	2903
		INCR 	73H, 1H 		//01E9 	1AF3
		LDWI 	20H 			//01EA 	0020
		INCR 	78H, 1H 		//01EB 	1AF8
		ORG		01ECH
		SUBWR 	78H, 0H 		//01EC 	1278
		BTSC 	3H, 0H 			//01ED 	2803

		//;IAP_FW.C: 135: }
		//;IAP_FW.C: 136: return 1;
		RETW 	1H 			//01EE 	0401
		LJUMP 	1C0H 			//01EF 	39C0

		//;MEM_DRV.C: 29: EECON1 &=~(0x1<<4 );
		BCR 	15H, 4H 			//01F0 	2215

		//;MEM_DRV.C: 30: Unlock_Flash();
		LCALL 	212H 			//01F1 	3212
		MOVLP 	0H 			//01F2 	0180

		//;MEM_DRV.C: 31: while(EECON1 & (0x1<<1 ));
		MOVLB 	3H 			//01F3 	1023
		ORG		01F4H
		BTSC 	15H, 1H 		//01F4 	2895
		LJUMP 	1F3H 			//01F5 	39F3
		RET 					//01F6 	1008

		//;USART_DRV.C: 51: unsigned int a;
		//;USART_DRV.C: 52: for(a=0;a<47200;a++)
		CLRF 	73H 			//01F7 	11F3
		CLRF 	74H 			//01F8 	11F4

		//;USART_DRV.C: 53: {
		//;USART_DRV.C: 54: DelayUs();
		LCALL 	268H 			//01F9 	3268
		MOVLP 	0H 			//01FA 	0180

		//;USART_DRV.C: 55: if(((0x1 << 0 ) & URLSR))
		MOVLB 	9H 			//01FB 	1029
		ORG		01FCH
		BTSS 	12H, 0H 		//01FC 	2C12
		LJUMP 	207H 			//01FD 	3A07

		//;USART_DRV.C: 56: {
		//;USART_DRV.C: 57: if((URLSR & (0x1<<2 )) || (URLSR & (0x1<<3 )))
		BTSC 	12H, 2H 		//01FE 	2912
		LJUMP 	202H 			//01FF 	3A02
		BTSS 	12H, 3H 		//0200 	2D92
		LJUMP 	205H 			//0201 	3A05

		//;USART_DRV.C: 58: {
		//;USART_DRV.C: 59: URLSR = ~((0x1<<2 )|(0x1<<3 ));
		LDWI 	F3H 			//0202 	00F3
		STR 	12H 			//0203 	1092
		ORG		0204H

		//;USART_DRV.C: 60: return 0xff;
		RETW 	FFH 			//0204 	04FF

		//;USART_DRV.C: 62: else
		//;USART_DRV.C: 63: {
		//;USART_DRV.C: 64: return URDATAL;
		LDR 	CH, 0H 			//0205 	180C
		RET 					//0206 	1008
		INCR 	73H, 1H 		//0207 	1AF3
		BTSC 	3H, 2H 			//0208 	2903
		INCR 	74H, 1H 		//0209 	1AF4
		LDWI 	B8H 			//020A 	00B8
		SUBWR 	74H, 0H 		//020B 	1274
		ORG		020CH
		LDWI 	60H 			//020C 	0060
		BTSC 	3H, 2H 			//020D 	2903
		SUBWR 	73H, 0H 		//020E 	1273
		BTSC 	3H, 0H 			//020F 	2803

		//;USART_DRV.C: 65: }
		//;USART_DRV.C: 66: }
		//;USART_DRV.C: 67: }
		//;USART_DRV.C: 68: return 0xff;
		RETW 	FFH 			//0210 	04FF
		LJUMP 	1F9H 			//0211 	39F9
		LDWI 	3H 			//0212 	0003
		STR 	8H 			//0213 	1088
		ORG		0214H
		LDWI 	55H 			//0214 	0055
		STR 	16H 			//0215 	1096
		LDWI 	AAH 			//0216 	00AA
		STR 	16H 			//0217 	1096
		BSR 	15H, 1H 			//0218 	2495
		NOP 					//0219 	1000
		NOP 					//021A 	1000
		RET 					//021B 	1008
		ORG		021CH

		//;MEM_DRV.C: 36: EECON1 |=(0x1<<0 );
		BSR 	15H, 0H 			//021C 	2415
		NOP 					//021D 	1000

		//;MEM_DRV.C: 38: while(EECON1 & (0x1<<0 ));
		MOVLB 	3H 			//021E 	1023
		BTSC 	15H, 0H 		//021F 	2815
		LJUMP 	21EH 			//0220 	3A1E
		RET 					//0221 	1008

		//;IAP_FW.C: 60: unsigned int iap_addr;
		//;IAP_FW.C: 61: CRC_16 = 0;
		MOVLB 	0H 			//0222 	1020

		//;IAP_FW.C: 62: EECON1 = (0x1<<7 )|(0X1<<2 );
		LCALL 	2A0H 			//0223 	32A0
		ORG		0224H
		MOVLP 	0H 			//0224 	0180
		STR 	15H 			//0225 	1095

		//;IAP_FW.C: 63: for(iap_addr=0X400;iap_addr<0x1000;iap_addr++)
		LDWI 	4H 			//0226 	0004
		CLRF 	78H 			//0227 	11F8
		STR 	79H 			//0228 	10F9

		//;IAP_FW.C: 64: {
		//;IAP_FW.C: 65: EEADRH = iap_addr>>8;
		LDR 	79H, 0H 			//0229 	1879
		MOVLB 	3H 			//022A 	1023
		STR 	12H 			//022B 	1092
		ORG		022CH

		//;IAP_FW.C: 66: EEADRL = iap_addr>>0;
		LDR 	78H, 0H 			//022C 	1878
		STR 	11H 			//022D 	1091

		//;IAP_FW.C: 67: iap_mem_rd();
		LCALL 	21CH 			//022E 	321C
		MOVLP 	0H 			//022F 	0180

		//;IAP_FW.C: 68: CRC16_CCITT(EEDATL);
		LDR 	13H, 0H 			//0230 	1813
		LCALL 	242H 			//0231 	3242
		MOVLP 	0H 			//0232 	0180

		//;IAP_FW.C: 69: CRC16_CCITT(EEDATH);
		MOVLB 	3H 			//0233 	1023
		ORG		0234H
		LDR 	14H, 0H 			//0234 	1814
		LCALL 	242H 			//0235 	3242
		MOVLP 	0H 			//0236 	0180
		INCR 	78H, 1H 		//0237 	1AF8
		BTSC 	3H, 2H 			//0238 	2903
		INCR 	79H, 1H 		//0239 	1AF9
		LDWI 	10H 			//023A 	0010
		SUBWR 	79H, 0H 		//023B 	1279
		ORG		023CH
		LDWI 	0H 			//023C 	0000
		BTSC 	3H, 2H 			//023D 	2903
		SUBWR 	78H, 0H 		//023E 	1278
		BTSC 	3H, 0H 			//023F 	2803
		RET 					//0240 	1008
		LJUMP 	229H 			//0241 	3A29
		STR 	76H 			//0242 	10F6

		//;IAP_FW.C: 45: unsigned char i;
		//;IAP_FW.C: 47: CRC_16 ^= data;
		MOVLB 	0H 			//0243 	1020
		ORG		0244H
		XORWR 	23H, 1H 		//0244 	16A3

		//;IAP_FW.C: 49: for(i = 0;i < 8;i++)
		CLRF 	77H 			//0245 	11F7

		//;IAP_FW.C: 50: {
		//;IAP_FW.C: 51: if(CRC_16 & 0x01)
		BTSS 	23H, 0H 		//0246 	2C23
		LJUMP 	259H 			//0247 	3A59

		//;IAP_FW.C: 52: CRC_16 = (CRC_16 >> 1) ^ 0x8408;
		LDR 	24H, 0H 			//0248 	1824
		STR 	73H 			//0249 	10F3
		LDR 	23H, 0H 			//024A 	1823
		STR 	72H 			//024B 	10F2
		ORG		024CH
		LDWI 	8H 			//024C 	0008
		LSRF 	73H, 1H 		//024D 	06F3
		RRR 	72H, 1H 			//024E 	1CF2
		XORWR 	72H, 0H 		//024F 	1672
		STR 	74H 			//0250 	10F4
		LDWI 	84H 			//0251 	0084
		XORWR 	73H, 0H 		//0252 	1673
		STR 	75H 			//0253 	10F5
		ORG		0254H
		LDR 	74H, 0H 			//0254 	1874
		STR 	23H 			//0255 	10A3
		LDR 	75H, 0H 			//0256 	1875
		STR 	24H 			//0257 	10A4
		LJUMP 	25BH 			//0258 	3A5B

		//;IAP_FW.C: 53: else
		//;IAP_FW.C: 54: CRC_16 = CRC_16 >> 1;
		LSRF 	24H, 1H 		//0259 	06A4
		RRR 	23H, 1H 			//025A 	1CA3
		LDWI 	8H 			//025B 	0008
		ORG		025CH
		INCR 	77H, 1H 		//025C 	1AF7
		SUBWR 	77H, 0H 		//025D 	1277
		BTSC 	3H, 0H 			//025E 	2803
		RET 					//025F 	1008
		LJUMP 	246H 			//0260 	3A46

		//;MEM_DRV.C: 21: EECON1 |=(0x1<<4 );
		BSR 	15H, 4H 			//0261 	2615

		//;MEM_DRV.C: 22: Unlock_Flash();
		LCALL 	212H 			//0262 	3212
		MOVLP 	0H 			//0263 	0180
		ORG		0264H

		//;MEM_DRV.C: 23: while(EECON1 & (0x1<<1 ));
		MOVLB 	3H 			//0264 	1023
		BTSC 	15H, 1H 		//0265 	2895
		LJUMP 	264H 			//0266 	3A64
		RET 					//0267 	1008

		//;USART_DRV.C: 37: unsigned char a;
		//;USART_DRV.C: 38: for(a=0;a<10;a++)
		CLRF 	72H 			//0268 	11F2

		//;USART_DRV.C: 39: {
		//;USART_DRV.C: 40: __nop();
		NOP 					//0269 	1000
		LDWI 	AH 			//026A 	000A
		INCR 	72H, 1H 		//026B 	1AF2
		ORG		026CH
		SUBWR 	72H, 0H 		//026C 	1272
		BTSC 	3H, 0H 			//026D 	2803
		RET 					//026E 	1008
		LJUMP 	269H 			//026F 	3A69
		MOVLB 	0H 			//0270 	1020
		LDR 	27H, 0H 			//0271 	1827
		MOVLB 	3H 			//0272 	1023
		STR 	11H 			//0273 	1091
		ORG		0274H
		MOVLB 	0H 			//0274 	1020
		LDR 	29H, 0H 			//0275 	1829
		ADDWI 	A3H 			//0276 	0EA3
		STR 	6H 			//0277 	1086
		CLRF 	7H 			//0278 	1187
		LDR 	1H, 0H 			//0279 	1801
		MOVLB 	3H 			//027A 	1023
		STR 	14H 			//027B 	1094
		ORG		027CH
		MOVLB 	0H 			//027C 	1020
		LDR 	29H, 0H 			//027D 	1829
		ADDWI 	A4H 			//027E 	0EA4
		STR 	6H 			//027F 	1086
		LDR 	1H, 0H 			//0280 	1801
		MOVLB 	3H 			//0281 	1023
		STR 	13H 			//0282 	1093
		RET 					//0283 	1008
		ORG		0284H
		MOVLB 	1H 			//0284 	1021
		LDR 	21H, 0H 			//0285 	1821
		MOVLB 	0H 			//0286 	1020
		STR 	27H 			//0287 	10A7
		CLRF 	28H 			//0288 	11A8
		STR 	7AH 			//0289 	10FA
		MOVLB 	1H 			//028A 	1021
		LDR 	22H, 0H 			//028B 	1822
		ORG		028CH
		MOVLB 	0H 			//028C 	1020
		STR 	27H 			//028D 	10A7
		LDR 	7AH, 0H 			//028E 	187A
		STR 	28H 			//028F 	10A8
		RET 					//0290 	1008
		MOVLB 	0H 			//0291 	1020
		INCR 	27H, 1H 		//0292 	1AA7
		BTSC 	3H, 2H 			//0293 	2903
		ORG		0294H
		INCR 	28H, 1H 		//0294 	1AA8
		LDWI 	40H 			//0295 	0040
		INCR 	29H, 1H 		//0296 	1AA9
		INCR 	29H, 1H 		//0297 	1AA9
		SUBWR 	29H, 0H 		//0298 	1229
		RET 					//0299 	1008
		LDR 	28H, 0H 			//029A 	1828
		STR 	73H 			//029B 	10F3
		ORG		029CH
		LDR 	27H, 0H 			//029C 	1827
		STR 	72H 			//029D 	10F2
		CLRF 	74H 			//029E 	11F4
		RET 					//029F 	1008
		LDWI 	84H 			//02A0 	0084
		CLRF 	23H 			//02A1 	11A3
		CLRF 	24H 			//02A2 	11A4
		MOVLB 	3H 			//02A3 	1023
		ORG		02A4H
		RET 					//02A4 	1008
		MOVLP 	1H 			//02A5 	0181
		LJUMP 	103H 			//02A6 	3903
		MOVLP 	1H 			//02A7 	0181
		LJUMP 	103H 			//02A8 	3903
		MOVLP 	1H 			//02A9 	0181
		LJUMP 	103H 			//02AA 	3903
		MOVLP 	1H 			//02AB 	0181
		ORG		02ACH
		LJUMP 	103H 			//02AC 	3903
		MOVLP 	1H 			//02AD 	0181
		LJUMP 	103H 			//02AE 	3903
		MOVLP 	1H 			//02AF 	0181
		LJUMP 	103H 			//02B0 	3903
		MOVLP 	1H 			//02B1 	0181
		LJUMP 	103H 			//02B2 	3903
		MOVLP 	1H 			//02B3 	0181
		ORG		02B4H
		LJUMP 	103H 			//02B4 	3903
		MOVLP 	0H 			//02B5 	0180
		LJUMP 	DEH 			//02B6 	38DE
		MOVLP 	0H 			//02B7 	0180
		LJUMP 	E4H 			//02B8 	38E4
		MOVLP 	0H 			//02B9 	0180
		LJUMP 	E6H 			//02BA 	38E6
		MOVLP 	0H 			//02BB 	0180
		ORG		02BCH
		LJUMP 	E8H 			//02BC 	38E8
		MOVLP 	0H 			//02BD 	0180
		LJUMP 	EAH 			//02BE 	38EA
		MOVLP 	0H 			//02BF 	0180
		LJUMP 	ECH 			//02C0 	38EC
		MOVLP 	0H 			//02C1 	0180
		LJUMP 	EEH 			//02C2 	38EE
		MOVLP 	0H 			//02C3 	0180
		ORG		02C4H
		LJUMP 	F0H 			//02C4 	38F0
		CLRWDT 			//02C5 	1064
		CLRF 	0H 			//02C6 	1180
		ADDFSR 	0H, 1H 		//02C7 	0101
		DECRSZ 	9H, 1H 		//02C8 	1B89
		LJUMP 	2C6H 			//02C9 	3AC6
		RETW 	0H 			//02CA 	0400
			END
