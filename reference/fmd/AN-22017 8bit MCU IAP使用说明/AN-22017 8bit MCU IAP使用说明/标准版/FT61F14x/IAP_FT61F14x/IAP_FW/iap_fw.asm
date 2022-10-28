//Deviec:FT61F14X
//-----------------------Variable---------------------------------
		_iap_databuf		EQU		A0H
//		Power_On_App_Check@CRC_Eeprom		EQU		2DH
//		EEPROMread@EEAddr		EQU		25H
//		EEPROMread@ReEEPROMread		EQU		26H
//		EEPROMread@EEAddr		EQU		BA000H
//		All_Page_Read_CRC@iap_addr		EQU		2BH
//		CRC16_CCITT@data		EQU		29H
//		CRC16_CCITT@i		EQU		2AH
//		CRC16_CCITT@data		EQU		BA000H
//		user_isr@iap_addr		EQU		7BH
//		user_isr@i		EQU		7DH
//		iap_usart_send@data		EQU		72H
//		iap_usart_send@data		EQU		C00000H
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

		//;IAP_FW.C: 166: user_isr();
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
		LCALL 	2A6H 			//0027 	32A6
		MOVLP 	0H 			//0028 	0180
		BCR 	7EH, 0H 			//0029 	207E
		MOVLB 	0H 			//002A 	1020
		LJUMP 	2CH 			//002B 	382C
		ORG		002CH

		//;IAP_FW.C: 350: iap_usart_init();
		LCALL 	35H 			//002C 	3035
		MOVLP 	0H 			//002D 	0180

		//;IAP_FW.C: 351: Power_On_App_Check();
		LCALL 	48H 			//002E 	3048

		//;IAP_FW.C: 353: GIE=1;
		BSR 	BH, 7H 			//002F 	278B

		//;IAP_FW.C: 354: PEIE=1;
		BSR 	BH, 6H 			//0030 	270B

		//;IAP_FW.C: 356: if(read_flag !=1)
		BTSS 	20H, 0H 		//0031 	2C20
		LJUMP 	400H 			//0032 	3C00

		//;IAP_FW.C: 359: }
		//;IAP_FW.C: 360: while(1)
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

		//;USART_DRV.C: 10: AFP1 = 0B00010100;
		LDWI 	14H 			//003A 	0014
		MOVLB 	3H 			//003B 	1023
		ORG		003CH
		STR 	1FH 			//003C 	109F

		//;USART_DRV.C: 12: TRISB &= ~(0X1<<6 );
		MOVLB 	1H 			//003D 	1021
		BCR 	DH, 6H 			//003E 	230D

		//;USART_DRV.C: 16: URDLL=9;
		LDWI 	9H 			//003F 	0009
		MOVLB 	9H 			//0040 	1029
		STR 	14H 			//0041 	1094

		//;USART_DRV.C: 19: URLCR=(0x1 );
		LDWI 	1H 			//0042 	0001
		STR 	FH 			//0043 	108F
		ORG		0044H

		//;USART_DRV.C: 21: URMCR=(0X1<<4 )|(0x1<<3 );
		LDWI 	18H 			//0044 	0018
		STR 	11H 			//0045 	1091

		//;USART_DRV.C: 23: URRXNE |= (0X1<<0 );
		BSR 	EH, 0H 			//0046 	240E
		RET 					//0047 	1008

		//;IAP_FW.C: 90: unsigned int CRC_Eeprom;
		//;IAP_FW.C: 92: count=0;
		MOVLB 	0H 			//0048 	1020
		LDWI 	0H 			//0049 	0000
		CLRF 	21H 			//004A 	11A1

		//;IAP_FW.C: 93: flag=0;
		CLRF 	20H 			//004B 	11A0
		ORG		004CH

		//;IAP_FW.C: 95: CRC_Eeprom=EEPROMread(0);
		LCALL 	64H 			//004C 	3064
		MOVLP 	0H 			//004D 	0180
		STR 	2DH 			//004E 	10AD
		CLRF 	2EH 			//004F 	11AE

		//;IAP_FW.C: 96: CRC_Eeprom= CRC_Eeprom << 8;
		STR 	2EH 			//0050 	10AE
		LDWI 	1H 			//0051 	0001
		CLRF 	2DH 			//0052 	11AD

		//;IAP_FW.C: 97: CRC_Eeprom= CRC_Eeprom + EEPROMread(1);
		LCALL 	64H 			//0053 	3064
		ORG		0054H
		MOVLP 	0H 			//0054 	0180
		ADDWR 	2DH, 1H 		//0055 	17AD
		BTSC 	3H, 0H 			//0056 	2803
		INCR 	2EH, 1H 		//0057 	1AAE

		//;IAP_FW.C: 99: All_Page_Read_CRC();
		LCALL 	77H 			//0058 	3077
		MOVLP 	0H 			//0059 	0180

		//;IAP_FW.C: 100: read_flag=1;
		BSR 	20H, 0H 			//005A 	2420

		//;IAP_FW.C: 101: if(CRC_Eeprom == CRC_16)
		LDR 	24H, 0H 			//005B 	1824
		ORG		005CH
		XORWR 	2EH, 0H 		//005C 	162E
		BTSS 	3H, 2H 			//005D 	2D03
		LJUMP 	61H 			//005E 	3861
		LDR 	23H, 0H 			//005F 	1823
		XORWR 	2DH, 0H 		//0060 	162D
		BTSC 	3H, 2H 			//0061 	2903

		//;IAP_FW.C: 102: {
		//;IAP_FW.C: 103: read_flag=0;
		BCR 	20H, 0H 			//0062 	2020
		RET 					//0063 	1008
		ORG		0064H
		STR 	25H 			//0064 	10A5

		//;MEM_DRV.C: 49: unsigned char ReEEPROMread;
		//;MEM_DRV.C: 51: EEADRL = EEAddr;
		MOVLB 	3H 			//0065 	1023
		STR 	11H 			//0066 	1091

		//;MEM_DRV.C: 53: EEPGD=0;
		BCR 	15H, 7H 			//0067 	2395

		//;MEM_DRV.C: 54: CFGS=0;
		BCR 	15H, 6H 			//0068 	2315

		//;MEM_DRV.C: 55: RD = 1;
		BSR 	15H, 0H 			//0069 	2415

		//;MEM_DRV.C: 56: __nop();
		NOP 					//006A 	1000

		//;MEM_DRV.C: 57: __nop();
		NOP 					//006B 	1000
		ORG		006CH

		//;MEM_DRV.C: 58: __nop();
		NOP 					//006C 	1000

		//;MEM_DRV.C: 59: __nop();
		NOP 					//006D 	1000

		//;MEM_DRV.C: 60: ReEEPROMread = EEDATL;
		MOVLB 	3H 			//006E 	1023
		LDR 	13H, 0H 			//006F 	1813
		MOVLB 	0H 			//0070 	1020
		STR 	26H 			//0071 	10A6

		//;MEM_DRV.C: 61: RD=0;
		MOVLB 	3H 			//0072 	1023
		BCR 	15H, 0H 			//0073 	2015
		ORG		0074H

		//;MEM_DRV.C: 62: return ReEEPROMread;
		MOVLB 	0H 			//0074 	1020
		LDR 	26H, 0H 			//0075 	1826
		RET 					//0076 	1008

		//;IAP_FW.C: 61: unsigned int iap_addr;
		//;IAP_FW.C: 62: CRC_16 = 0;
		//;IAP_FW.C: 63: EECON1 = (0x1<<7 )|(0X1<<2 );
		MOVLP 	2H 			//0077 	0182
		LCALL 	291H 			//0078 	3291
		MOVLP 	0H 			//0079 	0180
		STR 	15H 			//007A 	1095

		//;IAP_FW.C: 64: for(iap_addr=0X400;iap_addr<0x1000;iap_addr++)
		MOVLB 	0H 			//007B 	1020
		ORG		007CH
		LDWI 	4H 			//007C 	0004
		CLRF 	2BH 			//007D 	11AB
		STR 	2CH 			//007E 	10AC

		//;IAP_FW.C: 65: {
		//;IAP_FW.C: 66: EEADRH = iap_addr>>8;
		LDR 	2CH, 0H 			//007F 	182C
		MOVLB 	3H 			//0080 	1023
		STR 	12H 			//0081 	1092

		//;IAP_FW.C: 67: EEADRL = iap_addr>>0;
		MOVLB 	0H 			//0082 	1020
		LDR 	2BH, 0H 			//0083 	182B
		ORG		0084H
		MOVLB 	3H 			//0084 	1023
		STR 	11H 			//0085 	1091

		//;IAP_FW.C: 68: iap_mem_rd();
		LCALL 	B9H 			//0086 	30B9
		MOVLP 	0H 			//0087 	0180

		//;IAP_FW.C: 69: CRC16_CCITT(EEDATL);
		LDR 	13H, 0H 			//0088 	1813
		LCALL 	9AH 			//0089 	309A
		MOVLP 	0H 			//008A 	0180

		//;IAP_FW.C: 70: CRC16_CCITT(EEDATH);
		MOVLB 	3H 			//008B 	1023
		ORG		008CH
		LDR 	14H, 0H 			//008C 	1814
		LCALL 	9AH 			//008D 	309A
		MOVLP 	0H 			//008E 	0180
		INCR 	2BH, 1H 		//008F 	1AAB
		BTSC 	3H, 2H 			//0090 	2903
		INCR 	2CH, 1H 		//0091 	1AAC
		LDWI 	10H 			//0092 	0010
		SUBWR 	2CH, 0H 		//0093 	122C
		ORG		0094H
		LDWI 	0H 			//0094 	0000
		BTSC 	3H, 2H 			//0095 	2903
		SUBWR 	2BH, 0H 		//0096 	122B
		BTSC 	3H, 0H 			//0097 	2803
		RET 					//0098 	1008
		LJUMP 	7FH 			//0099 	387F
		MOVLB 	0H 			//009A 	1020
		STR 	29H 			//009B 	10A9
		ORG		009CH

		//;IAP_FW.C: 46: unsigned char i;
		//;IAP_FW.C: 48: CRC_16 ^= data;
		XORWR 	23H, 1H 		//009C 	16A3

		//;IAP_FW.C: 50: for(i = 0;i < 8;i++)
		CLRF 	2AH 			//009D 	11AA

		//;IAP_FW.C: 51: {
		//;IAP_FW.C: 52: if(CRC_16 & 0x01)
		BTSS 	23H, 0H 		//009E 	2C23
		LJUMP 	B1H 			//009F 	38B1

		//;IAP_FW.C: 53: CRC_16 = (CRC_16 >> 1) ^ 0x8408;
		LDR 	24H, 0H 			//00A0 	1824
		STR 	26H 			//00A1 	10A6
		LDR 	23H, 0H 			//00A2 	1823
		STR 	25H 			//00A3 	10A5
		ORG		00A4H
		LDWI 	8H 			//00A4 	0008
		LSRF 	26H, 1H 		//00A5 	06A6
		RRR 	25H, 1H 			//00A6 	1CA5
		XORWR 	25H, 0H 		//00A7 	1625
		STR 	27H 			//00A8 	10A7
		LDWI 	84H 			//00A9 	0084
		XORWR 	26H, 0H 		//00AA 	1626
		STR 	28H 			//00AB 	10A8
		ORG		00ACH
		LDR 	27H, 0H 			//00AC 	1827
		STR 	23H 			//00AD 	10A3
		LDR 	28H, 0H 			//00AE 	1828
		STR 	24H 			//00AF 	10A4
		LJUMP 	B3H 			//00B0 	38B3

		//;IAP_FW.C: 54: else
		//;IAP_FW.C: 55: CRC_16 = CRC_16 >> 1;
		LSRF 	24H, 1H 		//00B1 	06A4
		RRR 	23H, 1H 			//00B2 	1CA3
		LDWI 	8H 			//00B3 	0008
		ORG		00B4H
		INCR 	2AH, 1H 		//00B4 	1AAA
		SUBWR 	2AH, 0H 		//00B5 	122A
		BTSC 	3H, 0H 			//00B6 	2803
		RET 					//00B7 	1008
		LJUMP 	9EH 			//00B8 	389E

		//;MEM_DRV.C: 35: EECON1 |=(0x1<<0 );
		BSR 	15H, 0H 			//00B9 	2415
		NOP 					//00BA 	1000

		//;MEM_DRV.C: 37: while(EECON1 & (0x1<<0 ));
		MOVLB 	3H 			//00BB 	1023
		ORG		00BCH
		BTSC 	15H, 0H 		//00BC 	2815
		LJUMP 	BBH 			//00BD 	38BB
		RET 					//00BE 	1008

		//;IAP_FW.C: 75: All_Page_Read_CRC();
		LCALL 	21BH 			//00BF 	321B
		MOVLP 	0H 			//00C0 	0180

		//;IAP_FW.C: 77: EECON1 &=~(0x1<<7 );
		MOVLB 	3H 			//00C1 	1023
		BCR 	15H, 7H 			//00C2 	2395

		//;IAP_FW.C: 78: EECON1 =(0X1<<2 );
		LDWI 	4H 			//00C3 	0004
		ORG		00C4H
		STR 	15H 			//00C4 	1095

		//;IAP_FW.C: 80: EEADRL=0;
		CLRF 	11H 			//00C5 	1191

		//;IAP_FW.C: 81: EEDATL=CRC_H;
		MOVLB 	0H 			//00C6 	1020
		LDR 	24H, 0H 			//00C7 	1824
		MOVLB 	3H 			//00C8 	1023
		STR 	13H 			//00C9 	1093

		//;IAP_FW.C: 82: iap_mem_prog();
		LCALL 	1E2H 			//00CA 	31E2
		MOVLP 	0H 			//00CB 	0180
		ORG		00CCH

		//;IAP_FW.C: 83: EEADRL=1;
		LDWI 	1H 			//00CC 	0001
		STR 	11H 			//00CD 	1091

		//;IAP_FW.C: 84: EEDATL=CRC_L;
		MOVLB 	0H 			//00CE 	1020
		LDR 	23H, 0H 			//00CF 	1823
		MOVLB 	3H 			//00D0 	1023
		STR 	13H 			//00D1 	1093

		//;IAP_FW.C: 85: iap_mem_prog();
		LJUMP 	1E2H 			//00D2 	39E2

		//;IAP_FW.C: 171: if(URRXNE && RXNEF)
		MOVLB 	9H 			//00D3 	1029
		ORG		00D4H
		BTSC 	EH, 0H 			//00D4 	280E
		BTSS 	12H, 0H 		//00D5 	2C12
		LJUMP 	1A8H 			//00D6 	39A8

		//;IAP_FW.C: 172: {
		//;IAP_FW.C: 173: if(FEF==1)
		BTSC 	12H, 3H 		//00D7 	2992

		//;IAP_FW.C: 174: {FEF=0;}
		BCR 	12H, 3H 			//00D8 	2192

		//;IAP_FW.C: 175: iap_recdata = URDATAL;
		LDR 	CH, 0H 			//00D9 	180C
		MOVLB 	0H 			//00DA 	1020
		STR 	22H 			//00DB 	10A2
		ORG		00DCH

		//;IAP_FW.C: 176: count++;
		INCR 	21H, 1H 		//00DC 	1AA1

		//;IAP_FW.C: 177: switch(count)
		LJUMP 	F6H 			//00DD 	38F6

		//;IAP_FW.C: 180: if(iap_recdata!= 0x46)
		LDWI 	46H 			//00DE 	0046
		XORWR 	22H, 0H 		//00DF 	1622
		BTSC 	3H, 2H 			//00E0 	2903
		LJUMP 	103H 			//00E1 	3903

		//;IAP_FW.C: 181: {iap_err_flag=1;}
		BSR 	20H, 1H 			//00E2 	24A0
		LJUMP 	103H 			//00E3 	3903
		ORG		00E4H

		//;IAP_FW.C: 184: if(iap_recdata != 0x4D)
		LDWI 	4DH 			//00E4 	004D
		LJUMP 	DFH 			//00E5 	38DF

		//;IAP_FW.C: 188: if(iap_recdata != 0x44)
		LDWI 	44H 			//00E6 	0044
		LJUMP 	DFH 			//00E7 	38DF

		//;IAP_FW.C: 192: if(iap_recdata != 0x49)
		LDWI 	49H 			//00E8 	0049
		LJUMP 	DFH 			//00E9 	38DF

		//;IAP_FW.C: 196: if(iap_recdata != 0x41)
		LDWI 	41H 			//00EA 	0041
		LJUMP 	DFH 			//00EB 	38DF
		ORG		00ECH

		//;IAP_FW.C: 200: if(iap_recdata != 0x50)
		LDWI 	50H 			//00EC 	0050
		LJUMP 	DFH 			//00ED 	38DF

		//;IAP_FW.C: 204: if(iap_recdata != 0x55)
		LDWI 	55H 			//00EE 	0055
		LJUMP 	DFH 			//00EF 	38DF

		//;IAP_FW.C: 208: if(iap_recdata != 0xaa)
		LDWI 	AAH 			//00F0 	00AA
		XORWR 	22H, 0H 		//00F1 	1622
		BTSS 	3H, 2H 			//00F2 	2D03
		LJUMP 	E2H 			//00F3 	38E2
		ORG		00F4H

		//;IAP_FW.C: 210: else
		//;IAP_FW.C: 211: {iap_ok_flag=1;}
		BSR 	20H, 2H 			//00F4 	2520
		LJUMP 	103H 			//00F5 	3903
		LDR 	21H, 0H 			//00F6 	1821
		ADDWI 	FFH 			//00F7 	0EFF
		BTSS 	3H, 0H 			//00F8 	2C03
		LJUMP 	E2H 			//00F9 	38E2
		STR 	4H 			//00FA 	1084
		LDWI 	8H 			//00FB 	0008
		ORG		00FCH
		SUBWR 	4H, 0H 		//00FC 	1204
		BTSC 	3H, 0H 			//00FD 	2803
		LJUMP 	E2H 			//00FE 	38E2
		MOVLP 	2H 			//00FF 	0182
		LSLF 	4H, 0H 			//0100 	0504
		ADDWI 	96H 			//0101 	0E96
		STR 	2H 			//0102 	1082

		//;IAP_FW.C: 217: if(iap_ok_flag==1)
		BTSS 	20H, 2H 		//0103 	2D20
		ORG		0104H
		LJUMP 	19FH 			//0104 	399F

		//;IAP_FW.C: 218: {
		//;IAP_FW.C: 219: count=0;
		CLRF 	21H 			//0105 	11A1

		//;IAP_FW.C: 220: iap_ok_flag =0;
		BCR 	20H, 2H 			//0106 	2120

		//;IAP_FW.C: 221: unsigned char i ;
		//;IAP_FW.C: 222: unsigned int iap_addr;
		//;IAP_FW.C: 223: URRXNE &= ~(0X1<<0 );
		MOVLB 	9H 			//0107 	1029
		BCR 	EH, 0H 			//0108 	200E

		//;IAP_FW.C: 224: EECON1 = (0x1<<7 )|(0X1<<2 );
		LDWI 	84H 			//0109 	0084
		MOVLB 	3H 			//010A 	1023
		STR 	15H 			//010B 	1095
		ORG		010CH

		//;IAP_FW.C: 225: iap_usart_send(0xaa);
		LDWI 	AAH 			//010C 	00AA
		LCALL 	1DBH 			//010D 	31DB
		MOVLP 	0H 			//010E 	0180

		//;IAP_FW.C: 231: switch(iap_databuf[0])
		LJUMP 	191H 			//010F 	3991

		//;IAP_FW.C: 232: {
		//;IAP_FW.C: 233: case 0X05:
		//;IAP_FW.C: 234: for(i=1;i<69;i++)
		CLRF 	7DH 			//0110 	11FD
		INCR 	7DH, 1H 		//0111 	1AFD

		//;IAP_FW.C: 235: {
		//;IAP_FW.C: 236: iap_databuf[i]=iap_usart_rec();
		LDR 	7DH, 0H 			//0112 	187D
		ADDWI 	A0H 			//0113 	0EA0
		ORG		0114H
		STR 	6H 			//0114 	1086
		CLRF 	7H 			//0115 	1187
		LCALL 	1E9H 			//0116 	31E9
		MOVLP 	0H 			//0117 	0180
		STR 	1H 			//0118 	1081
		LDWI 	45H 			//0119 	0045
		INCR 	7DH, 1H 		//011A 	1AFD
		SUBWR 	7DH, 0H 		//011B 	127D
		ORG		011CH
		BTSS 	3H, 0H 			//011C 	2C03
		LJUMP 	112H 			//011D 	3912

		//;IAP_FW.C: 237: }
		//;IAP_FW.C: 238: CRC_16 = 0;
		MOVLB 	0H 			//011E 	1020
		CLRF 	23H 			//011F 	11A3
		CLRF 	24H 			//0120 	11A4

		//;IAP_FW.C: 239: for(i=0;i<67;i++)
		CLRF 	7DH 			//0121 	11FD

		//;IAP_FW.C: 240: {
		//;IAP_FW.C: 241: CRC16_CCITT(iap_databuf[i]);
		LDR 	7DH, 0H 			//0122 	187D
		ADDWI 	A0H 			//0123 	0EA0
		ORG		0124H
		STR 	6H 			//0124 	1086
		CLRF 	7H 			//0125 	1187
		LDR 	1H, 0H 			//0126 	1801
		LCALL 	23BH 			//0127 	323B
		MOVLP 	0H 			//0128 	0180
		LDWI 	43H 			//0129 	0043
		INCR 	7DH, 1H 		//012A 	1AFD
		SUBWR 	7DH, 0H 		//012B 	127D
		ORG		012CH
		BTSS 	3H, 0H 			//012C 	2C03
		LJUMP 	122H 			//012D 	3922

		//;IAP_FW.C: 242: }
		//;IAP_FW.C: 243: if((CRC_H !=iap_databuf[67]) || (CRC_L !=iap_databuf[68]))
		MOVLB 	1H 			//012E 	1021
		LDR 	63H, 0H 			//012F 	1863
		MOVLB 	0H 			//0130 	1020
		XORWR 	24H, 0H 		//0131 	1624
		BTSS 	3H, 2H 			//0132 	2D03
		LJUMP 	182H 			//0133 	3982
		ORG		0134H
		MOVLB 	1H 			//0134 	1021
		LDR 	64H, 0H 			//0135 	1864
		MOVLB 	0H 			//0136 	1020
		XORWR 	23H, 0H 		//0137 	1623
		BTSS 	3H, 2H 			//0138 	2D03
		LJUMP 	182H 			//0139 	3982

		//;IAP_FW.C: 247: }
		//;IAP_FW.C: 248: iap_addr = iap_databuf[1];
		//;IAP_FW.C: 246: break;
		//;IAP_FW.C: 244: {
		//;IAP_FW.C: 245: iap_usart_send(0x44);
		//;IAP_FW.C: 249: iap_addr = ((iap_addr<<8)+iap_databuf[2]);
		LCALL 	279H 			//013A 	3279
		MOVLP 	0H 			//013B 	0180
		ORG		013CH

		//;IAP_FW.C: 250: if(iap_addr < 0X400)
		LDWI 	4H 			//013C 	0004
		SUBWR 	7CH, 0H 		//013D 	127C
		LDWI 	0H 			//013E 	0000
		BTSC 	3H, 2H 			//013F 	2903
		SUBWR 	7BH, 0H 		//0140 	127B
		BTSS 	3H, 0H 			//0141 	2C03
		LJUMP 	182H 			//0142 	3982

		//;IAP_FW.C: 254: }
		//;IAP_FW.C: 255: if(data_check_erase_or_not(iap_addr,1))
		//;IAP_FW.C: 253: break;
		//;IAP_FW.C: 251: {
		//;IAP_FW.C: 252: iap_usart_send(0x44);
		LCALL 	28BH 			//0143 	328B
		ORG		0144H
		MOVLP 	0H 			//0144 	0180
		INCR 	74H, 1H 		//0145 	1AF4
		LCALL 	1AAH 			//0146 	31AA
		MOVLP 	0H 			//0147 	0180
		XORWI 	0H 			//0148 	0A00
		BTSS 	3H, 2H 			//0149 	2D03
		LJUMP 	177H 			//014A 	3977

		//;IAP_FW.C: 263: else
		//;IAP_FW.C: 264: {
		//;IAP_FW.C: 265: if(data_check_erase_or_not(iap_addr,0))
		//;IAP_FW.C: 262: }
		//;IAP_FW.C: 260: }
		//;IAP_FW.C: 261: iap_usart_send(0X00);
		//;IAP_FW.C: 258: {
		//;IAP_FW.C: 259: Eeprom_Write_Crc();
		//;IAP_FW.C: 256: {
		//;IAP_FW.C: 257: if(iap_addr == (0x1000-0x20))
		LCALL 	28BH 			//014B 	328B
		ORG		014CH
		MOVLP 	0H 			//014C 	0180
		LCALL 	1AAH 			//014D 	31AA
		MOVLP 	0H 			//014E 	0180
		XORWI 	0H 			//014F 	0A00
		BTSC 	3H, 2H 			//0150 	2903
		LJUMP 	15CH 			//0151 	395C

		//;IAP_FW.C: 266: {
		//;IAP_FW.C: 267: for(i=0;i<64;i=i+2)
		CLRF 	7DH 			//0152 	11FD

		//;IAP_FW.C: 268: {
		//;IAP_FW.C: 269: EEADRH = iap_addr>>8;
		//;IAP_FW.C: 270: EEADRL = iap_addr>>0;
		//;IAP_FW.C: 271: EEDATH = iap_databuf[i+3];
		//;IAP_FW.C: 272: EEDATL = iap_databuf[i+4];
		LCALL 	269H 			//0153 	3269
		ORG		0154H
		MOVLP 	0H 			//0154 	0180

		//;IAP_FW.C: 273: iap_mem_prog();
		LCALL 	1E2H 			//0155 	31E2
		MOVLP 	0H 			//0156 	0180

		//;IAP_FW.C: 274: iap_addr++;
		LCALL 	283H 			//0157 	3283
		MOVLP 	0H 			//0158 	0180
		BTSC 	3H, 0H 			//0159 	2803
		LJUMP 	16BH 			//015A 	396B
		LJUMP 	153H 			//015B 	3953
		ORG		015CH

		//;IAP_FW.C: 277: else
		//;IAP_FW.C: 278: {
		//;IAP_FW.C: 279: EEADRH = iap_addr>>8;
		LDR 	7CH, 0H 			//015C 	187C
		STR 	12H 			//015D 	1092

		//;IAP_FW.C: 280: EEADRL = iap_addr>>0;
		LDR 	7BH, 0H 			//015E 	187B
		STR 	11H 			//015F 	1091

		//;IAP_FW.C: 281: iap_mem_erase();
		LCALL 	25AH 			//0160 	325A
		MOVLP 	0H 			//0161 	0180

		//;IAP_FW.C: 282: for(i=0;i<64;i=i+2)
		CLRF 	7DH 			//0162 	11FD

		//;IAP_FW.C: 283: {
		//;IAP_FW.C: 284: EEADRH = iap_addr>>8;
		//;IAP_FW.C: 285: EEADRL = iap_addr>>0;
		//;IAP_FW.C: 286: EEDATH = iap_databuf[i+3];
		//;IAP_FW.C: 287: EEDATL = iap_databuf[i+4];
		LCALL 	269H 			//0163 	3269
		ORG		0164H
		MOVLP 	0H 			//0164 	0180

		//;IAP_FW.C: 288: iap_mem_prog();
		LCALL 	1E2H 			//0165 	31E2
		MOVLP 	0H 			//0166 	0180

		//;IAP_FW.C: 289: iap_addr++;
		LCALL 	283H 			//0167 	3283
		MOVLP 	0H 			//0168 	0180
		BTSS 	3H, 0H 			//0169 	2C03
		LJUMP 	163H 			//016A 	3963

		//;IAP_FW.C: 290: }
		//;IAP_FW.C: 291: }
		//;IAP_FW.C: 292: iap_addr = iap_databuf[1];
		//;IAP_FW.C: 293: iap_addr = ((iap_addr<<8)+iap_databuf[2]);
		LCALL 	279H 			//016B 	3279
		ORG		016CH
		MOVLP 	0H 			//016C 	0180

		//;IAP_FW.C: 294: if(data_check_erase_or_not(iap_addr,1))
		STR 	73H 			//016D 	10F3
		LDR 	7BH, 0H 			//016E 	187B
		STR 	72H 			//016F 	10F2
		CLRF 	74H 			//0170 	11F4
		INCR 	74H, 1H 		//0171 	1AF4
		LCALL 	1AAH 			//0172 	31AA
		MOVLP 	0H 			//0173 	0180
		ORG		0174H
		XORWI 	0H 			//0174 	0A00
		BTSC 	3H, 2H 			//0175 	2903
		LJUMP 	182H 			//0176 	3982

		//;IAP_FW.C: 295: {
		//;IAP_FW.C: 296: if(iap_addr == (0x1000-0x20))
		LDWI 	E0H 			//0177 	00E0
		XORWR 	7BH, 0H 		//0178 	167B
		LDWI 	FH 			//0179 	000F
		BTSC 	3H, 2H 			//017A 	2903
		XORWR 	7CH, 0H 		//017B 	167C
		ORG		017CH
		BTSS 	3H, 2H 			//017C 	2D03
		LJUMP 	180H 			//017D 	3980

		//;IAP_FW.C: 297: {
		//;IAP_FW.C: 298: Eeprom_Write_Crc();
		LCALL 	BFH 			//017E 	30BF
		MOVLP 	0H 			//017F 	0180

		//;IAP_FW.C: 299: }
		//;IAP_FW.C: 300: iap_usart_send(0X00);
		LDWI 	0H 			//0180 	0000
		LJUMP 	10DH 			//0181 	390D

		//;IAP_FW.C: 301: }
		//;IAP_FW.C: 302: else
		//;IAP_FW.C: 303: {
		//;IAP_FW.C: 304: iap_usart_send(0x44);
		LDWI 	44H 			//0182 	0044
		LJUMP 	10DH 			//0183 	390D
		ORG		0184H

		//;IAP_FW.C: 309: iap_usart_send(0X00);
		LDWI 	0H 			//0184 	0000
		LCALL 	1DBH 			//0185 	31DB
		MOVLP 	0H 			//0186 	0180

		//;IAP_FW.C: 310: iap_wait_tx_idle();
		LCALL 	204H 			//0187 	3204
		MOVLP 	0H 			//0188 	0180
		RESET 					//0189 	1001

		//;IAP_FW.C: 312: break;
		LJUMP 	191H 			//018A 	3991

		//;IAP_FW.C: 315: iap_usart_send(0x44);
		LDWI 	44H 			//018B 	0044
		ORG		018CH
		LCALL 	1DBH 			//018C 	31DB
		MOVLP 	0H 			//018D 	0180

		//;IAP_FW.C: 316: iap_wait_tx_idle();
		LCALL 	204H 			//018E 	3204
		MOVLP 	0H 			//018F 	0180
		RESET 					//0190 	1001

		//;IAP_FW.C: 318: break;
		//;IAP_FW.C: 227: {
		//;IAP_FW.C: 229: iap_databuf[0]=iap_usart_rec();
		LCALL 	1E9H 			//0191 	31E9
		MOVLP 	0H 			//0192 	0180
		MOVLB 	1H 			//0193 	1021
		ORG		0194H
		STR 	20H 			//0194 	10A0
		CLRWDT 			//0195 	1064
		MOVLB 	1H 			//0196 	1021
		LDR 	20H, 0H 			//0197 	1820
		XORWI 	5H 			//0198 	0A05
		BTSC 	3H, 2H 			//0199 	2903
		LJUMP 	110H 			//019A 	3910
		XORWI 	3H 			//019B 	0A03
		ORG		019CH
		BTSC 	3H, 2H 			//019C 	2903
		LJUMP 	184H 			//019D 	3984
		LJUMP 	18BH 			//019E 	398B

		//;IAP_FW.C: 320: }
		//;IAP_FW.C: 321: }
		//;IAP_FW.C: 323: if(iap_err_flag==1)
		BTSS 	20H, 1H 		//019F 	2CA0
		RET 					//01A0 	1008

		//;IAP_FW.C: 324: {
		//;IAP_FW.C: 325: count=0;
		CLRF 	21H 			//01A1 	11A1

		//;IAP_FW.C: 326: iap_err_flag=0;
		BCR 	20H, 1H 			//01A2 	20A0

		//;IAP_FW.C: 327: if(read_flag !=1)
		BTSC 	20H, 0H 		//01A3 	2820
		ORG		01A4H
		RET 					//01A4 	1008

		//;IAP_FW.C: 328: {
		//;IAP_FW.C: 329: uart_rxnef=1;
		BSR 	20H, 3H 			//01A5 	25A0
		LJUMP 	404H 			//01A6 	3C04
		RET 					//01A7 	1008
		LJUMP 	404H 			//01A8 	3C04
		RET 					//01A9 	1008

		//;IAP_FW.C: 109: unsigned char i ,j,k;
		//;IAP_FW.C: 110: for(i=0;i<32;i++)
		//+                          ck]
		CLRF 	78H 			//01AA 	11F8

		//;IAP_FW.C: 111: {
		//;IAP_FW.C: 112: EEADRH = addr>>8;
		LDR 	73H, 0H 			//01AB 	1873
		ORG		01ACH
		MOVLB 	3H 			//01AC 	1023
		STR 	12H 			//01AD 	1092

		//;IAP_FW.C: 113: EEADRL = addr>>0;
		LDR 	72H, 0H 			//01AE 	1872
		STR 	11H 			//01AF 	1091

		//;IAP_FW.C: 114: j = iap_databuf[i*2+3];
		LSLF 	78H, 0H 		//01B0 	0578
		ADDWI 	A3H 			//01B1 	0EA3
		STR 	6H 			//01B2 	1086
		CLRF 	7H 			//01B3 	1187
		ORG		01B4H
		LDR 	1H, 0H 			//01B4 	1801
		STR 	76H 			//01B5 	10F6

		//;IAP_FW.C: 115: k = iap_databuf[i*2+4];
		LSLF 	78H, 0H 		//01B6 	0578
		ADDWI 	A4H 			//01B7 	0EA4
		STR 	6H 			//01B8 	1086
		LDR 	1H, 0H 			//01B9 	1801
		STR 	77H 			//01BA 	10F7

		//;IAP_FW.C: 116: iap_mem_rd();
		LCALL 	215H 			//01BB 	3215
		ORG		01BCH
		MOVLP 	0H 			//01BC 	0180

		//;IAP_FW.C: 117: if(mode == 0)
		LDR 	74H, 0H 			//01BD 	1874
		BTSS 	3H, 2H 			//01BE 	2D03
		LJUMP 	1CAH 			//01BF 	39CA

		//;IAP_FW.C: 118: {
		//;IAP_FW.C: 119: if(((EEDATH & j) != j) || ((EEDATL & k) != k))
		LDR 	76H, 0H 			//01C0 	1876
		ANDWR 	14H, 0H 		//01C1 	1514
		STR 	75H 			//01C2 	10F5
		XORWR 	76H, 0H 		//01C3 	1676
		ORG		01C4H
		BTSS 	3H, 2H 			//01C4 	2D03
		RETW 	0H 			//01C5 	0400
		LDR 	77H, 0H 			//01C6 	1877
		ANDWR 	13H, 0H 		//01C7 	1513
		STR 	75H 			//01C8 	10F5
		LJUMP 	1CFH 			//01C9 	39CF

		//;IAP_FW.C: 124: else
		//;IAP_FW.C: 125: {
		//;IAP_FW.C: 126: if((EEDATH != j) || (EEDATL != k))
		LDR 	14H, 0H 			//01CA 	1814
		XORWR 	76H, 0H 		//01CB 	1676
		ORG		01CCH
		BTSS 	3H, 2H 			//01CC 	2D03
		RETW 	0H 			//01CD 	0400
		LDR 	13H, 0H 			//01CE 	1813
		XORWR 	77H, 0H 		//01CF 	1677
		BTSS 	3H, 2H 			//01D0 	2D03

		//;IAP_FW.C: 120: {
		//;IAP_FW.C: 121: return 0;
		RETW 	0H 			//01D1 	0400

		//;IAP_FW.C: 129: }
		//;IAP_FW.C: 130: }
		//;IAP_FW.C: 131: addr++;
		INCR 	72H, 1H 		//01D2 	1AF2
		BTSC 	3H, 2H 			//01D3 	2903
		ORG		01D4H
		INCR 	73H, 1H 		//01D4 	1AF3
		LDWI 	20H 			//01D5 	0020
		INCR 	78H, 1H 		//01D6 	1AF8
		SUBWR 	78H, 0H 		//01D7 	1278
		BTSC 	3H, 0H 			//01D8 	2803

		//;IAP_FW.C: 132: }
		//;IAP_FW.C: 133: return 1;
		RETW 	1H 			//01D9 	0401
		LJUMP 	1ABH 			//01DA 	39AB
		STR 	72H 			//01DB 	10F2
		ORG		01DCH

		//;USART_DRV.C: 42: while(!(URLSR & (0x1<<5 )));
		MOVLB 	9H 			//01DC 	1029
		BTSS 	12H, 5H 		//01DD 	2E92
		LJUMP 	1DCH 			//01DE 	39DC

		//;USART_DRV.C: 43: URDATAL = data;
		LDR 	72H, 0H 			//01DF 	1872
		STR 	CH 			//01E0 	108C
		RET 					//01E1 	1008

		//;MEM_DRV.C: 28: EECON1 &=~(0x1<<4 );
		BCR 	15H, 4H 			//01E2 	2215

		//;MEM_DRV.C: 29: Unlock_Flash();
		LCALL 	20BH 			//01E3 	320B
		ORG		01E4H
		MOVLP 	0H 			//01E4 	0180

		//;MEM_DRV.C: 30: while(EECON1 & (0x1<<1 ));
		MOVLB 	3H 			//01E5 	1023
		BTSC 	15H, 1H 		//01E6 	2895
		LJUMP 	1E5H 			//01E7 	39E5
		RET 					//01E8 	1008

		//;USART_DRV.C: 47: unsigned int a;
		//;USART_DRV.C: 48: for(a=0;a<47200;a++)
		CLRF 	73H 			//01E9 	11F3
		CLRF 	74H 			//01EA 	11F4

		//;USART_DRV.C: 49: {
		//;USART_DRV.C: 50: DelayUs();
		LCALL 	261H 			//01EB 	3261
		ORG		01ECH
		MOVLP 	0H 			//01EC 	0180

		//;USART_DRV.C: 51: if(((0x1 << 0 ) & URLSR))
		MOVLB 	9H 			//01ED 	1029
		BTSS 	12H, 0H 		//01EE 	2C12
		LJUMP 	1F9H 			//01EF 	39F9

		//;USART_DRV.C: 52: {
		//;USART_DRV.C: 53: if((URLSR & (0x1<<2 )) || (URLSR & (0x1<<3 )))
		BTSC 	12H, 2H 		//01F0 	2912
		LJUMP 	1F4H 			//01F1 	39F4
		BTSS 	12H, 3H 		//01F2 	2D92
		LJUMP 	1F7H 			//01F3 	39F7
		ORG		01F4H

		//;USART_DRV.C: 54: {
		//;USART_DRV.C: 55: URLSR = ~((0x1<<2 )|(0x1<<3 ));
		LDWI 	F3H 			//01F4 	00F3
		STR 	12H 			//01F5 	1092

		//;USART_DRV.C: 56: return 0xff;
		RETW 	FFH 			//01F6 	04FF

		//;USART_DRV.C: 58: else
		//;USART_DRV.C: 59: {
		//;USART_DRV.C: 60: return URDATAL;
		LDR 	CH, 0H 			//01F7 	180C
		RET 					//01F8 	1008
		INCR 	73H, 1H 		//01F9 	1AF3
		BTSC 	3H, 2H 			//01FA 	2903
		INCR 	74H, 1H 		//01FB 	1AF4
		ORG		01FCH
		LDWI 	B8H 			//01FC 	00B8
		SUBWR 	74H, 0H 		//01FD 	1274
		LDWI 	60H 			//01FE 	0060
		BTSC 	3H, 2H 			//01FF 	2903
		SUBWR 	73H, 0H 		//0200 	1273
		BTSC 	3H, 0H 			//0201 	2803

		//;USART_DRV.C: 61: }
		//;USART_DRV.C: 62: }
		//;USART_DRV.C: 63: }
		//;USART_DRV.C: 64: return 0xff;
		RETW 	FFH 			//0202 	04FF
		LJUMP 	1EBH 			//0203 	39EB
		ORG		0204H

		//;USART_DRV.C: 69: while(!(TCF & (0x1<<0 )));
		LDWI 	0H 			//0204 	0000
		BTSC 	1CH, 0H 		//0205 	281C
		LDWI 	1H 			//0206 	0001
		ANDWI 	1H 			//0207 	0901
		BTSS 	3H, 2H 			//0208 	2D03
		RET 					//0209 	1008
		LJUMP 	204H 			//020A 	3A04
		LDWI 	3H 			//020B 	0003
		ORG		020CH
		STR 	8H 			//020C 	1088
		LDWI 	55H 			//020D 	0055
		STR 	16H 			//020E 	1096
		LDWI 	AAH 			//020F 	00AA
		STR 	16H 			//0210 	1096
		BSR 	15H, 1H 			//0211 	2495
		NOP 					//0212 	1000
		NOP 					//0213 	1000
		ORG		0214H
		RET 					//0214 	1008

		//;MEM_DRV.C: 35: EECON1 |=(0x1<<0 );
		BSR 	15H, 0H 			//0215 	2415
		NOP 					//0216 	1000

		//;MEM_DRV.C: 37: while(EECON1 & (0x1<<0 ));
		MOVLB 	3H 			//0217 	1023
		BTSC 	15H, 0H 		//0218 	2815
		LJUMP 	217H 			//0219 	3A17
		RET 					//021A 	1008

		//;IAP_FW.C: 61: unsigned int iap_addr;
		//;IAP_FW.C: 62: CRC_16 = 0;
		MOVLB 	0H 			//021B 	1020
		ORG		021CH

		//;IAP_FW.C: 63: EECON1 = (0x1<<7 )|(0X1<<2 );
		LCALL 	291H 			//021C 	3291
		MOVLP 	0H 			//021D 	0180
		STR 	15H 			//021E 	1095

		//;IAP_FW.C: 64: for(iap_addr=0X400;iap_addr<0x1000;iap_addr++)
		LDWI 	4H 			//021F 	0004
		CLRF 	78H 			//0220 	11F8
		STR 	79H 			//0221 	10F9

		//;IAP_FW.C: 65: {
		//;IAP_FW.C: 66: EEADRH = iap_addr>>8;
		LDR 	79H, 0H 			//0222 	1879
		MOVLB 	3H 			//0223 	1023
		ORG		0224H
		STR 	12H 			//0224 	1092

		//;IAP_FW.C: 67: EEADRL = iap_addr>>0;
		LDR 	78H, 0H 			//0225 	1878
		STR 	11H 			//0226 	1091

		//;IAP_FW.C: 68: iap_mem_rd();
		LCALL 	215H 			//0227 	3215
		MOVLP 	0H 			//0228 	0180

		//;IAP_FW.C: 69: CRC16_CCITT(EEDATL);
		LDR 	13H, 0H 			//0229 	1813
		LCALL 	23BH 			//022A 	323B
		MOVLP 	0H 			//022B 	0180
		ORG		022CH

		//;IAP_FW.C: 70: CRC16_CCITT(EEDATH);
		MOVLB 	3H 			//022C 	1023
		LDR 	14H, 0H 			//022D 	1814
		LCALL 	23BH 			//022E 	323B
		MOVLP 	0H 			//022F 	0180
		INCR 	78H, 1H 		//0230 	1AF8
		BTSC 	3H, 2H 			//0231 	2903
		INCR 	79H, 1H 		//0232 	1AF9
		LDWI 	10H 			//0233 	0010
		ORG		0234H
		SUBWR 	79H, 0H 		//0234 	1279
		LDWI 	0H 			//0235 	0000
		BTSC 	3H, 2H 			//0236 	2903
		SUBWR 	78H, 0H 		//0237 	1278
		BTSC 	3H, 0H 			//0238 	2803
		RET 					//0239 	1008
		LJUMP 	222H 			//023A 	3A22
		STR 	76H 			//023B 	10F6
		ORG		023CH

		//;IAP_FW.C: 46: unsigned char i;
		//;IAP_FW.C: 48: CRC_16 ^= data;
		MOVLB 	0H 			//023C 	1020
		XORWR 	23H, 1H 		//023D 	16A3

		//;IAP_FW.C: 50: for(i = 0;i < 8;i++)
		CLRF 	77H 			//023E 	11F7

		//;IAP_FW.C: 51: {
		//;IAP_FW.C: 52: if(CRC_16 & 0x01)
		BTSS 	23H, 0H 		//023F 	2C23
		LJUMP 	252H 			//0240 	3A52

		//;IAP_FW.C: 53: CRC_16 = (CRC_16 >> 1) ^ 0x8408;
		LDR 	24H, 0H 			//0241 	1824
		STR 	73H 			//0242 	10F3
		LDR 	23H, 0H 			//0243 	1823
		ORG		0244H
		STR 	72H 			//0244 	10F2
		LDWI 	8H 			//0245 	0008
		LSRF 	73H, 1H 		//0246 	06F3
		RRR 	72H, 1H 			//0247 	1CF2
		XORWR 	72H, 0H 		//0248 	1672
		STR 	74H 			//0249 	10F4
		LDWI 	84H 			//024A 	0084
		XORWR 	73H, 0H 		//024B 	1673
		ORG		024CH
		STR 	75H 			//024C 	10F5
		LDR 	74H, 0H 			//024D 	1874
		STR 	23H 			//024E 	10A3
		LDR 	75H, 0H 			//024F 	1875
		STR 	24H 			//0250 	10A4
		LJUMP 	254H 			//0251 	3A54

		//;IAP_FW.C: 54: else
		//;IAP_FW.C: 55: CRC_16 = CRC_16 >> 1;
		LSRF 	24H, 1H 		//0252 	06A4
		RRR 	23H, 1H 			//0253 	1CA3
		ORG		0254H
		LDWI 	8H 			//0254 	0008
		INCR 	77H, 1H 		//0255 	1AF7
		SUBWR 	77H, 0H 		//0256 	1277
		BTSC 	3H, 0H 			//0257 	2803
		RET 					//0258 	1008
		LJUMP 	23FH 			//0259 	3A3F

		//;MEM_DRV.C: 20: EECON1 |=(0x1<<4 );
		BSR 	15H, 4H 			//025A 	2615

		//;MEM_DRV.C: 21: Unlock_Flash();
		LCALL 	20BH 			//025B 	320B
		ORG		025CH
		MOVLP 	0H 			//025C 	0180

		//;MEM_DRV.C: 22: while(EECON1 & (0x1<<1 ));
		MOVLB 	3H 			//025D 	1023
		BTSC 	15H, 1H 		//025E 	2895
		LJUMP 	25DH 			//025F 	3A5D
		RET 					//0260 	1008

		//;USART_DRV.C: 34: unsigned char a;
		//;USART_DRV.C: 35: for(a=0;a<10;a++)
		CLRF 	72H 			//0261 	11F2

		//;USART_DRV.C: 36: {
		//;USART_DRV.C: 37: __nop();
		NOP 					//0262 	1000
		LDWI 	AH 			//0263 	000A
		ORG		0264H
		INCR 	72H, 1H 		//0264 	1AF2
		SUBWR 	72H, 0H 		//0265 	1272
		BTSC 	3H, 0H 			//0266 	2803
		RET 					//0267 	1008
		LJUMP 	262H 			//0268 	3A62
		LDR 	7CH, 0H 			//0269 	187C
		STR 	12H 			//026A 	1092
		LDR 	7BH, 0H 			//026B 	187B
		ORG		026CH
		STR 	11H 			//026C 	1091
		LDR 	7DH, 0H 			//026D 	187D
		ADDWI 	A3H 			//026E 	0EA3
		STR 	6H 			//026F 	1086
		CLRF 	7H 			//0270 	1187
		LDR 	1H, 0H 			//0271 	1801
		STR 	14H 			//0272 	1094
		LDR 	7DH, 0H 			//0273 	187D
		ORG		0274H
		ADDWI 	A4H 			//0274 	0EA4
		STR 	6H 			//0275 	1086
		LDR 	1H, 0H 			//0276 	1801
		STR 	13H 			//0277 	1093
		RET 					//0278 	1008
		MOVLB 	1H 			//0279 	1021
		LDR 	21H, 0H 			//027A 	1821
		STR 	7BH 			//027B 	10FB
		ORG		027CH
		CLRF 	7CH 			//027C 	11FC
		STR 	7AH 			//027D 	10FA
		LDR 	22H, 0H 			//027E 	1822
		STR 	7BH 			//027F 	10FB
		LDR 	7AH, 0H 			//0280 	187A
		STR 	7CH 			//0281 	10FC
		RET 					//0282 	1008
		INCR 	7BH, 1H 		//0283 	1AFB
		ORG		0284H
		BTSC 	3H, 2H 			//0284 	2903
		INCR 	7CH, 1H 		//0285 	1AFC
		LDWI 	40H 			//0286 	0040
		INCR 	7DH, 1H 		//0287 	1AFD
		INCR 	7DH, 1H 		//0288 	1AFD
		SUBWR 	7DH, 0H 		//0289 	127D
		RET 					//028A 	1008
		LDR 	7CH, 0H 			//028B 	187C
		ORG		028CH
		STR 	73H 			//028C 	10F3
		LDR 	7BH, 0H 			//028D 	187B
		STR 	72H 			//028E 	10F2
		CLRF 	74H 			//028F 	11F4
		RET 					//0290 	1008
		LDWI 	84H 			//0291 	0084
		CLRF 	23H 			//0292 	11A3
		CLRF 	24H 			//0293 	11A4
		ORG		0294H
		MOVLB 	3H 			//0294 	1023
		RET 					//0295 	1008
		MOVLP 	0H 			//0296 	0180
		LJUMP 	DEH 			//0297 	38DE
		MOVLP 	0H 			//0298 	0180
		LJUMP 	E4H 			//0299 	38E4
		MOVLP 	0H 			//029A 	0180
		LJUMP 	E6H 			//029B 	38E6
		ORG		029CH
		MOVLP 	0H 			//029C 	0180
		LJUMP 	E8H 			//029D 	38E8
		MOVLP 	0H 			//029E 	0180
		LJUMP 	EAH 			//029F 	38EA
		MOVLP 	0H 			//02A0 	0180
		LJUMP 	ECH 			//02A1 	38EC
		MOVLP 	0H 			//02A2 	0180
		LJUMP 	EEH 			//02A3 	38EE
		ORG		02A4H
		MOVLP 	0H 			//02A4 	0180
		LJUMP 	F0H 			//02A5 	38F0
		CLRWDT 			//02A6 	1064
		CLRF 	0H 			//02A7 	1180
		ADDFSR 	0H, 1H 		//02A8 	0101
		DECRSZ 	9H, 1H 		//02A9 	1B89
		LJUMP 	2A7H 			//02AA 	3AA7
		RETW 	0H 			//02AB 	0400
			END
