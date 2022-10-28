//Deviec:FT64F0AX
//-----------------------Variable---------------------------------
		_iap_databuf		EQU		236BH
//		Power_On_App_Check@CRC_Eeprom		EQU		36H
//		EEPROMread@EEAddr		EQU		2EH
//		EEPROMread@ReEEPROMread		EQU		2FH
//		EEPROMread@EEAddr		EQU		BA000H
//		All_Page_Read_CRC@iap_addr		EQU		34H
//		CRC16_CCITT@data		EQU		32H
//		CRC16_CCITT@i		EQU		33H
//		CRC16_CCITT@data		EQU		BA000H
//		user_isr@iap_addr		EQU		2BH
//		user_isr@CRC16_dat1		EQU		29H
//		user_isr@i		EQU		2DH
//		iap_usart_rec@a		EQU		73H
//		DelayUs@a		EQU		72H
//		data_check_erase_or_not@i		EQU		7BH
//		data_check_erase_or_not@k		EQU		7AH
//		data_check_erase_or_not@j		EQU		79H
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

		//;IAP_FW.C: 167: user_isr();
		MOVLP 	0H 			//001B 	0180
		MOVLP 	1H 			//001C 	0181
		ORG		001CH
		LCALL 	11AH 			//001C 	311A
		BCR 	7EH, 0H 			//001D 	207E
		RETI 					//001E 	1009
		MOVLP 	0H 			//001F 	0180
		LJUMP 	21H 			//0020 	3821
		LDWI 	6BH 			//0021 	006B
		STR 	4H 			//0022 	1084
		LDWI 	23H 			//0023 	0023
		ORG		0024H
		STR 	5H 			//0024 	1085
		LDWI 	85H 			//0025 	0085
		STR 	7EH 			//0026 	10FE
		LDWI 	0H 			//0027 	0000
		CLRF 	7FH 			//0028 	11FF
		MOVLP 	3H 			//0029 	0183
		LCALL 	320H 			//002A 	3320
		MOVLP 	0H 			//002B 	0180
		ORG		002CH
		BCR 	7EH, 0H 			//002C 	207E
		MOVLB 	0H 			//002D 	1020
		LJUMP 	2FH 			//002E 	382F

		//;IAP_FW.C: 366: iap_usart_init();
		LCALL 	38H 			//002F 	3038
		MOVLP 	0H 			//0030 	0180

		//;IAP_FW.C: 367: Power_On_App_Check();
		LCALL 	49H 			//0031 	3049

		//;IAP_FW.C: 369: GIE=1;
		BSR 	BH, 7H 			//0032 	278B

		//;IAP_FW.C: 370: PEIE=1;
		BSR 	BH, 6H 			//0033 	270B
		ORG		0034H

		//;IAP_FW.C: 372: if(read_flag !=1)
		BTSS 	20H, 0H 		//0034 	2C20
		LJUMP 	400H 			//0035 	3C00

		//;IAP_FW.C: 375: }
		//;IAP_FW.C: 376: while(1)
		CLRWDT 			//0036 	1064
		LJUMP 	36H 			//0037 	3836

		//;USART_DRV.C: 7: PCKEN = (0X1<<5 );
		LDWI 	20H 			//0038 	0020
		MOVLB 	1H 			//0039 	1021
		STR 	1AH 			//003A 	109A

		//;USART_DRV.C: 8: OSCCON = 0B01110001;
		LDWI 	71H 			//003B 	0071
		ORG		003CH
		STR 	19H 			//003C 	1099

		//;USART_DRV.C: 11: AFP1 = 0B01000000;
		LDWI 	40H 			//003D 	0040
		MOVLB 	3H 			//003E 	1023
		STR 	1FH 			//003F 	109F

		//;USART_DRV.C: 16: UR1DLL=26;
		LDWI 	1AH 			//0040 	001A
		MOVLB 	9H 			//0041 	1029
		STR 	14H 			//0042 	1094

		//;USART_DRV.C: 20: UR1LCR=(0x1 );
		LDWI 	1H 			//0043 	0001
		ORG		0044H
		STR 	FH 			//0044 	108F

		//;USART_DRV.C: 22: UR1MCR=(0X1<<4 )|(0x1<<3 );
		LDWI 	18H 			//0045 	0018
		STR 	11H 			//0046 	1091

		//;USART_DRV.C: 24: UR1RXNE |= (0X1<<0 );
		BSR 	EH, 0H 			//0047 	240E
		RET 					//0048 	1008

		//;IAP_FW.C: 88: unsigned int CRC_Eeprom;
		//;IAP_FW.C: 90: count=0;
		MOVLB 	0H 			//0049 	1020
		LDWI 	0H 			//004A 	0000
		CLRF 	21H 			//004B 	11A1
		ORG		004CH

		//;IAP_FW.C: 91: flag=0;
		CLRF 	20H 			//004C 	11A0

		//;IAP_FW.C: 93: CRC_Eeprom=EEPROMread(0);
		LCALL 	67H 			//004D 	3067
		MOVLP 	0H 			//004E 	0180
		STR 	36H 			//004F 	10B6
		CLRF 	37H 			//0050 	11B7

		//;IAP_FW.C: 94: CRC_Eeprom= CRC_Eeprom << 8;
		STR 	37H 			//0051 	10B7
		LDWI 	1H 			//0052 	0001
		CLRF 	36H 			//0053 	11B6
		ORG		0054H

		//;IAP_FW.C: 95: CRC_Eeprom= CRC_Eeprom + EEPROMread(1);
		LCALL 	67H 			//0054 	3067
		MOVLP 	0H 			//0055 	0180
		ADDWR 	36H, 1H 		//0056 	17B6
		BTSC 	3H, 0H 			//0057 	2803
		INCR 	37H, 1H 		//0058 	1AB7

		//;IAP_FW.C: 97: All_Page_Read_CRC();
		LCALL 	7AH 			//0059 	307A
		MOVLP 	0H 			//005A 	0180

		//;IAP_FW.C: 98: if(CRC_Eeprom == CRC_16)
		LDR 	24H, 0H 			//005B 	1824
		ORG		005CH
		XORWR 	37H, 0H 		//005C 	1637
		BTSS 	3H, 2H 			//005D 	2D03
		LJUMP 	61H 			//005E 	3861
		LDR 	23H, 0H 			//005F 	1823
		XORWR 	36H, 0H 		//0060 	1636
		BTSS 	3H, 2H 			//0061 	2D03
		LJUMP 	65H 			//0062 	3865

		//;IAP_FW.C: 99: {
		//;IAP_FW.C: 100: read_flag=0;
		BCR 	20H, 0H 			//0063 	2020
		ORG		0064H

		//;IAP_FW.C: 101: }
		RET 					//0064 	1008

		//;IAP_FW.C: 102: else
		//;IAP_FW.C: 103: {
		//;IAP_FW.C: 104: read_flag=1;
		BSR 	20H, 0H 			//0065 	2420
		RET 					//0066 	1008
		STR 	2EH 			//0067 	10AE

		//;MEM_DRV.C: 50: unsigned char ReEEPROMread;
		//;MEM_DRV.C: 52: EEADRL = EEAddr;
		MOVLB 	3H 			//0068 	1023
		STR 	11H 			//0069 	1091

		//;MEM_DRV.C: 54: EEPGD=0;
		BCR 	15H, 7H 			//006A 	2395

		//;MEM_DRV.C: 55: CFGS=0;
		BCR 	15H, 6H 			//006B 	2315
		ORG		006CH

		//;MEM_DRV.C: 56: RD = 1;
		BSR 	15H, 0H 			//006C 	2415

		//;MEM_DRV.C: 57: __nop();
		NOP 					//006D 	1000

		//;MEM_DRV.C: 58: __nop();
		NOP 					//006E 	1000

		//;MEM_DRV.C: 59: __nop();
		NOP 					//006F 	1000

		//;MEM_DRV.C: 60: __nop();
		NOP 					//0070 	1000

		//;MEM_DRV.C: 61: ReEEPROMread = EEDATL;
		MOVLB 	3H 			//0071 	1023
		LDR 	13H, 0H 			//0072 	1813
		MOVLB 	0H 			//0073 	1020
		ORG		0074H
		STR 	2FH 			//0074 	10AF

		//;MEM_DRV.C: 62: RD=0;
		MOVLB 	3H 			//0075 	1023
		BCR 	15H, 0H 			//0076 	2015

		//;MEM_DRV.C: 63: return ReEEPROMread;
		MOVLB 	0H 			//0077 	1020
		LDR 	2FH, 0H 			//0078 	182F
		RET 					//0079 	1008

		//;IAP_FW.C: 59: unsigned int iap_addr;
		//;IAP_FW.C: 60: CRC_16 = 0;
		//;IAP_FW.C: 61: EECON1 = (0x1<<7 )|(0X1<<2 );
		LCALL 	115H 			//007A 	3115
		MOVLP 	0H 			//007B 	0180
		ORG		007CH
		STR 	15H 			//007C 	1095

		//;IAP_FW.C: 62: for(iap_addr=0X400;iap_addr<0x2800;iap_addr++)
		MOVLB 	0H 			//007D 	1020
		LDWI 	4H 			//007E 	0004
		CLRF 	34H 			//007F 	11B4
		STR 	35H 			//0080 	10B5

		//;IAP_FW.C: 63: {
		//;IAP_FW.C: 64: EEADRH = iap_addr>>8;
		LDR 	35H, 0H 			//0081 	1835
		MOVLB 	3H 			//0082 	1023
		STR 	12H 			//0083 	1092
		ORG		0084H

		//;IAP_FW.C: 65: EEADRL = iap_addr>>0;
		MOVLB 	0H 			//0084 	1020
		LDR 	34H, 0H 			//0085 	1834
		MOVLB 	3H 			//0086 	1023
		STR 	11H 			//0087 	1091

		//;IAP_FW.C: 66: iap_mem_rd();
		LCALL 	BBH 			//0088 	30BB
		MOVLP 	0H 			//0089 	0180

		//;IAP_FW.C: 67: CRC16_CCITT(EEDATL);
		LDR 	13H, 0H 			//008A 	1813
		LCALL 	9CH 			//008B 	309C
		ORG		008CH
		MOVLP 	0H 			//008C 	0180

		//;IAP_FW.C: 68: CRC16_CCITT(EEDATH);
		MOVLB 	3H 			//008D 	1023
		LDR 	14H, 0H 			//008E 	1814
		LCALL 	9CH 			//008F 	309C
		MOVLP 	0H 			//0090 	0180
		INCR 	34H, 1H 		//0091 	1AB4
		BTSC 	3H, 2H 			//0092 	2903
		INCR 	35H, 1H 		//0093 	1AB5
		ORG		0094H
		LDWI 	28H 			//0094 	0028
		SUBWR 	35H, 0H 		//0095 	1235
		LDWI 	0H 			//0096 	0000
		BTSC 	3H, 2H 			//0097 	2903
		SUBWR 	34H, 0H 		//0098 	1234
		BTSC 	3H, 0H 			//0099 	2803
		RET 					//009A 	1008
		LJUMP 	81H 			//009B 	3881
		ORG		009CH
		MOVLB 	0H 			//009C 	1020
		STR 	32H 			//009D 	10B2

		//;IAP_FW.C: 44: unsigned char i;
		//;IAP_FW.C: 46: CRC_16 ^= data;
		XORWR 	23H, 1H 		//009E 	16A3

		//;IAP_FW.C: 48: for(i = 0;i < 8;i++)
		CLRF 	33H 			//009F 	11B3

		//;IAP_FW.C: 49: {
		//;IAP_FW.C: 50: if(CRC_16 & 0x01)
		BTSS 	23H, 0H 		//00A0 	2C23
		LJUMP 	B3H 			//00A1 	38B3

		//;IAP_FW.C: 51: CRC_16 = (CRC_16 >> 1) ^ 0x8408;
		LDR 	24H, 0H 			//00A2 	1824
		STR 	2FH 			//00A3 	10AF
		ORG		00A4H
		LDR 	23H, 0H 			//00A4 	1823
		STR 	2EH 			//00A5 	10AE
		LDWI 	8H 			//00A6 	0008
		LSRF 	2FH, 1H 		//00A7 	06AF
		RRR 	2EH, 1H 			//00A8 	1CAE
		XORWR 	2EH, 0H 		//00A9 	162E
		STR 	30H 			//00AA 	10B0
		LDWI 	84H 			//00AB 	0084
		ORG		00ACH
		XORWR 	2FH, 0H 		//00AC 	162F
		STR 	31H 			//00AD 	10B1
		LDR 	30H, 0H 			//00AE 	1830
		STR 	23H 			//00AF 	10A3
		LDR 	31H, 0H 			//00B0 	1831
		STR 	24H 			//00B1 	10A4
		LJUMP 	B5H 			//00B2 	38B5

		//;IAP_FW.C: 52: else
		//;IAP_FW.C: 53: CRC_16 = CRC_16 >> 1;
		LSRF 	24H, 1H 		//00B3 	06A4
		ORG		00B4H
		RRR 	23H, 1H 			//00B4 	1CA3
		LDWI 	8H 			//00B5 	0008
		INCR 	33H, 1H 		//00B6 	1AB3
		SUBWR 	33H, 0H 		//00B7 	1233
		BTSC 	3H, 0H 			//00B8 	2803
		RET 					//00B9 	1008
		LJUMP 	A0H 			//00BA 	38A0

		//;MEM_DRV.C: 36: EECON1 |=(0x1<<0 );
		BSR 	15H, 0H 			//00BB 	2415
		ORG		00BCH
		NOP 					//00BC 	1000

		//;MEM_DRV.C: 38: while(EECON1 & (0x1<<0 ));
		MOVLB 	3H 			//00BD 	1023
		BTSC 	15H, 0H 		//00BE 	2815
		LJUMP 	BDH 			//00BF 	38BD
		RET 					//00C0 	1008

		//;IAP_FW.C: 73: All_Page_Read_CRC();
		LCALL 	D6H 			//00C1 	30D6

		//;IAP_FW.C: 75: EECON1 &=~(0x1<<7 );
		MOVLB 	3H 			//00C2 	1023
		BCR 	15H, 7H 			//00C3 	2395
		ORG		00C4H

		//;IAP_FW.C: 76: EECON1 =(0X1<<2 );
		LDWI 	4H 			//00C4 	0004
		STR 	15H 			//00C5 	1095

		//;IAP_FW.C: 78: EEADRL=0;
		CLRF 	11H 			//00C6 	1191

		//;IAP_FW.C: 79: EEDATL=CRC_H;
		MOVLB 	0H 			//00C7 	1020
		LDR 	24H, 0H 			//00C8 	1824
		MOVLB 	3H 			//00C9 	1023
		STR 	13H 			//00CA 	1093

		//;IAP_FW.C: 80: iap_mem_prog();
		MOVLP 	2H 			//00CB 	0182
		ORG		00CCH
		LCALL 	24DH 			//00CC 	324D
		MOVLP 	0H 			//00CD 	0180

		//;IAP_FW.C: 81: EEADRL=1;
		LDWI 	1H 			//00CE 	0001
		STR 	11H 			//00CF 	1091

		//;IAP_FW.C: 82: EEDATL=CRC_L;
		MOVLB 	0H 			//00D0 	1020
		LDR 	23H, 0H 			//00D1 	1823
		MOVLB 	3H 			//00D2 	1023
		STR 	13H 			//00D3 	1093
		ORG		00D4H

		//;IAP_FW.C: 83: iap_mem_prog();
		MOVLP 	2H 			//00D4 	0182
		LJUMP 	24DH 			//00D5 	3A4D

		//;IAP_FW.C: 59: unsigned int iap_addr;
		//;IAP_FW.C: 60: CRC_16 = 0;
		MOVLB 	0H 			//00D6 	1020

		//;IAP_FW.C: 61: EECON1 = (0x1<<7 )|(0X1<<2 );
		LCALL 	115H 			//00D7 	3115
		STR 	15H 			//00D8 	1095

		//;IAP_FW.C: 62: for(iap_addr=0X400;iap_addr<0x2800;iap_addr++)
		LDWI 	4H 			//00D9 	0004
		CLRF 	78H 			//00DA 	11F8
		STR 	79H 			//00DB 	10F9
		ORG		00DCH

		//;IAP_FW.C: 63: {
		//;IAP_FW.C: 64: EEADRH = iap_addr>>8;
		LDR 	79H, 0H 			//00DC 	1879
		MOVLB 	3H 			//00DD 	1023
		STR 	12H 			//00DE 	1092

		//;IAP_FW.C: 65: EEADRL = iap_addr>>0;
		LDR 	78H, 0H 			//00DF 	1878
		STR 	11H 			//00E0 	1091

		//;IAP_FW.C: 66: iap_mem_rd();
		MOVLP 	2H 			//00E1 	0182
		LCALL 	279H 			//00E2 	3279
		MOVLP 	0H 			//00E3 	0180
		ORG		00E4H

		//;IAP_FW.C: 67: CRC16_CCITT(EEDATL);
		LDR 	13H, 0H 			//00E4 	1813
		LCALL 	F6H 			//00E5 	30F6
		MOVLP 	0H 			//00E6 	0180

		//;IAP_FW.C: 68: CRC16_CCITT(EEDATH);
		MOVLB 	3H 			//00E7 	1023
		LDR 	14H, 0H 			//00E8 	1814
		LCALL 	F6H 			//00E9 	30F6
		MOVLP 	0H 			//00EA 	0180
		INCR 	78H, 1H 		//00EB 	1AF8
		ORG		00ECH
		BTSC 	3H, 2H 			//00EC 	2903
		INCR 	79H, 1H 		//00ED 	1AF9
		LDWI 	28H 			//00EE 	0028
		SUBWR 	79H, 0H 		//00EF 	1279
		LDWI 	0H 			//00F0 	0000
		BTSC 	3H, 2H 			//00F1 	2903
		SUBWR 	78H, 0H 		//00F2 	1278
		BTSC 	3H, 0H 			//00F3 	2803
		ORG		00F4H
		RET 					//00F4 	1008
		LJUMP 	DCH 			//00F5 	38DC
		STR 	76H 			//00F6 	10F6

		//;IAP_FW.C: 44: unsigned char i;
		//;IAP_FW.C: 46: CRC_16 ^= data;
		MOVLB 	0H 			//00F7 	1020
		XORWR 	23H, 1H 		//00F8 	16A3

		//;IAP_FW.C: 48: for(i = 0;i < 8;i++)
		CLRF 	77H 			//00F9 	11F7

		//;IAP_FW.C: 49: {
		//;IAP_FW.C: 50: if(CRC_16 & 0x01)
		BTSS 	23H, 0H 		//00FA 	2C23
		LJUMP 	10DH 			//00FB 	390D
		ORG		00FCH

		//;IAP_FW.C: 51: CRC_16 = (CRC_16 >> 1) ^ 0x8408;
		LDR 	24H, 0H 			//00FC 	1824
		STR 	73H 			//00FD 	10F3
		LDR 	23H, 0H 			//00FE 	1823
		STR 	72H 			//00FF 	10F2
		LDWI 	8H 			//0100 	0008
		LSRF 	73H, 1H 		//0101 	06F3
		RRR 	72H, 1H 			//0102 	1CF2
		XORWR 	72H, 0H 		//0103 	1672
		ORG		0104H
		STR 	74H 			//0104 	10F4
		LDWI 	84H 			//0105 	0084
		XORWR 	73H, 0H 		//0106 	1673
		STR 	75H 			//0107 	10F5
		LDR 	74H, 0H 			//0108 	1874
		STR 	23H 			//0109 	10A3
		LDR 	75H, 0H 			//010A 	1875
		STR 	24H 			//010B 	10A4
		ORG		010CH
		LJUMP 	10FH 			//010C 	390F

		//;IAP_FW.C: 52: else
		//;IAP_FW.C: 53: CRC_16 = CRC_16 >> 1;
		LSRF 	24H, 1H 		//010D 	06A4
		RRR 	23H, 1H 			//010E 	1CA3
		LDWI 	8H 			//010F 	0008
		INCR 	77H, 1H 		//0110 	1AF7
		SUBWR 	77H, 0H 		//0111 	1277
		BTSC 	3H, 0H 			//0112 	2803
		RET 					//0113 	1008
		ORG		0114H
		LJUMP 	FAH 			//0114 	38FA
		LDWI 	84H 			//0115 	0084
		CLRF 	23H 			//0116 	11A3
		CLRF 	24H 			//0117 	11A4
		MOVLB 	3H 			//0118 	1023
		RET 					//0119 	1008

		//;IAP_FW.C: 172: if(UR1RXNE && UR1RXNEF)
		MOVLB 	9H 			//011A 	1029
		BTSC 	EH, 0H 			//011B 	280E
		ORG		011CH
		BTSS 	12H, 0H 		//011C 	2C12
		LJUMP 	219H 			//011D 	3A19

		//;IAP_FW.C: 173: {
		//;IAP_FW.C: 174: if(UR1FEF==1)
		BTSC 	12H, 3H 		//011E 	2992

		//;IAP_FW.C: 175: {UR1FEF=0;}
		BCR 	12H, 3H 			//011F 	2192

		//;IAP_FW.C: 176: iap_recdata= UR1DATAL;
		LDR 	CH, 0H 			//0120 	180C
		MOVLB 	0H 			//0121 	1020
		STR 	22H 			//0122 	10A2

		//;IAP_FW.C: 177: count++;
		INCR 	21H, 1H 		//0123 	1AA1
		ORG		0124H

		//;IAP_FW.C: 178: switch(count)
		LJUMP 	13DH 			//0124 	393D

		//;IAP_FW.C: 182: if(iap_recdata != 0x46)
		LDWI 	46H 			//0125 	0046
		XORWR 	22H, 0H 		//0126 	1622
		BTSC 	3H, 2H 			//0127 	2903
		LJUMP 	14AH 			//0128 	394A

		//;IAP_FW.C: 183: {iap_err_flag=1;}
		BSR 	20H, 1H 			//0129 	24A0
		LJUMP 	14AH 			//012A 	394A

		//;IAP_FW.C: 188: if(iap_recdata != 0x4D)
		LDWI 	4DH 			//012B 	004D
		ORG		012CH
		LJUMP 	126H 			//012C 	3926

		//;IAP_FW.C: 194: if(iap_recdata!= 0x44)
		LDWI 	44H 			//012D 	0044
		LJUMP 	126H 			//012E 	3926

		//;IAP_FW.C: 200: if(iap_recdata != 0x49)
		LDWI 	49H 			//012F 	0049
		LJUMP 	126H 			//0130 	3926

		//;IAP_FW.C: 206: if(iap_recdata != 0x41)
		LDWI 	41H 			//0131 	0041
		LJUMP 	126H 			//0132 	3926

		//;IAP_FW.C: 212: if(iap_recdata != 0x50)
		LDWI 	50H 			//0133 	0050
		ORG		0134H
		LJUMP 	126H 			//0134 	3926

		//;IAP_FW.C: 218: if(iap_recdata!= 0x55)
		LDWI 	55H 			//0135 	0055
		LJUMP 	126H 			//0136 	3926

		//;IAP_FW.C: 225: if(iap_recdata!= 0xaa)
		LDWI 	AAH 			//0137 	00AA
		XORWR 	22H, 0H 		//0138 	1622
		BTSS 	3H, 2H 			//0139 	2D03
		LJUMP 	129H 			//013A 	3929

		//;IAP_FW.C: 227: else
		//;IAP_FW.C: 228: {iap_ok_flag=1;}
		BSR 	20H, 2H 			//013B 	2520
		ORG		013CH
		LJUMP 	14AH 			//013C 	394A
		LDR 	21H, 0H 			//013D 	1821
		ADDWI 	FFH 			//013E 	0EFF
		BTSS 	3H, 0H 			//013F 	2C03
		LJUMP 	129H 			//0140 	3929
		STR 	4H 			//0141 	1084
		LDWI 	10H 			//0142 	0010
		SUBWR 	4H, 0H 		//0143 	1204
		ORG		0144H
		BTSC 	3H, 0H 			//0144 	2803
		LJUMP 	129H 			//0145 	3929
		MOVLP 	3H 			//0146 	0183
		LSLF 	4H, 0H 			//0147 	0504
		ADDWI 	0H 			//0148 	0E00
		STR 	2H 			//0149 	1082

		//;IAP_FW.C: 235: if(iap_ok_flag==1)
		BTSS 	20H, 2H 		//014A 	2D20
		LJUMP 	20BH 			//014B 	3A0B
		ORG		014CH

		//;IAP_FW.C: 236: {
		//;IAP_FW.C: 237: count=0;
		CLRF 	21H 			//014C 	11A1

		//;IAP_FW.C: 238: iap_ok_flag =0;
		BCR 	20H, 2H 			//014D 	2120

		//;IAP_FW.C: 239: unsigned char i ;
		//;IAP_FW.C: 240: unsigned int iap_addr;
		//;IAP_FW.C: 241: unsigned int CRC16_dat1;
		//;IAP_FW.C: 242: UR1RXNE &= ~(0X1<<0 );
		MOVLB 	9H 			//014E 	1029
		BCR 	EH, 0H 			//014F 	200E

		//;IAP_FW.C: 243: EECON1 = (0x1<<7 )|(0X1<<2 );
		LDWI 	84H 			//0150 	0084
		MOVLB 	3H 			//0151 	1023
		STR 	15H 			//0152 	1095

		//;IAP_FW.C: 248: switch(iap_databuf[0])
		LJUMP 	1F6H 			//0153 	39F6
		ORG		0154H

		//;IAP_FW.C: 249: {
		//;IAP_FW.C: 250: case 0X05:
		//;IAP_FW.C: 251: for(i=1;i<133;i++)
		MOVLB 	0H 			//0154 	1020
		CLRF 	2DH 			//0155 	11AD
		INCR 	2DH, 1H 		//0156 	1AAD

		//;IAP_FW.C: 252: {
		//;IAP_FW.C: 253: iap_databuf[i]=iap_usart_rec();
		LCALL 	254H 			//0157 	3254
		MOVLP 	1H 			//0158 	0181
		MOVLB 	0H 			//0159 	1020
		STR 	25H 			//015A 	10A5
		LDR 	2DH, 0H 			//015B 	182D
		ORG		015CH
		ADDWI 	6BH 			//015C 	0E6B
		STR 	26H 			//015D 	10A6
		LDWI 	23H 			//015E 	0023
		CLRF 	27H 			//015F 	11A7
		ADDWFC 	27H, 1H 		//0160 	0DA7
		LDR 	26H, 0H 			//0161 	1826
		STR 	6H 			//0162 	1086
		LDR 	27H, 0H 			//0163 	1827
		ORG		0164H
		STR 	7H 			//0164 	1087
		LDR 	25H, 0H 			//0165 	1825
		STR 	1H 			//0166 	1081
		LDWI 	85H 			//0167 	0085
		INCR 	2DH, 1H 		//0168 	1AAD
		SUBWR 	2DH, 0H 		//0169 	122D
		BTSS 	3H, 0H 			//016A 	2C03
		LJUMP 	157H 			//016B 	3957
		ORG		016CH

		//;IAP_FW.C: 254: }
		//;IAP_FW.C: 255: CRC16_dat1 = iap_databuf[131];
		LDWI 	EEH 			//016C 	00EE
		STR 	6H 			//016D 	1086
		LDWI 	23H 			//016E 	0023
		STR 	7H 			//016F 	1087
		LDR 	1H, 0H 			//0170 	1801
		STR 	29H 			//0171 	10A9
		LDWI 	EFH 			//0172 	00EF
		CLRF 	2AH 			//0173 	11AA
		ORG		0174H

		//;IAP_FW.C: 256: CRC16_dat1 = ((CRC16_dat1<<8)+iap_databuf[132]);
		STR 	6H 			//0174 	1086
		LDR 	29H, 0H 			//0175 	1829
		STR 	25H 			//0176 	10A5
		LDR 	1H, 0H 			//0177 	1801
		STR 	29H 			//0178 	10A9
		LDR 	25H, 0H 			//0179 	1825
		STR 	2AH 			//017A 	10AA

		//;IAP_FW.C: 257: CRC_16 = 0;
		CLRF 	23H 			//017B 	11A3
		ORG		017CH
		CLRF 	24H 			//017C 	11A4

		//;IAP_FW.C: 258: for(i=0;i<131;i++)
		CLRF 	2DH 			//017D 	11AD

		//;IAP_FW.C: 259: {
		//;IAP_FW.C: 260: CRC16_CCITT(iap_databuf[i]);
		LDR 	2DH, 0H 			//017E 	182D
		ADDWI 	6BH 			//017F 	0E6B
		STR 	6H 			//0180 	1086
		LDWI 	23H 			//0181 	0023
		CLRF 	7H 			//0182 	1187
		ADDWFC 	7H, 1H 		//0183 	0D87
		ORG		0184H
		LDR 	1H, 0H 			//0184 	1801
		MOVLP 	0H 			//0185 	0180
		LCALL 	F6H 			//0186 	30F6
		MOVLP 	1H 			//0187 	0181
		LDWI 	83H 			//0188 	0083
		INCR 	2DH, 1H 		//0189 	1AAD
		SUBWR 	2DH, 0H 		//018A 	122D
		BTSS 	3H, 0H 			//018B 	2C03
		ORG		018CH
		LJUMP 	17EH 			//018C 	397E

		//;IAP_FW.C: 261: }
		//;IAP_FW.C: 262: if(CRC16_dat1 !=CRC_16)
		LDR 	24H, 0H 			//018D 	1824
		XORWR 	2AH, 0H 		//018E 	162A
		BTSS 	3H, 2H 			//018F 	2D03
		LJUMP 	193H 			//0190 	3993
		LDR 	23H, 0H 			//0191 	1823
		XORWR 	29H, 0H 		//0192 	1629
		BTSC 	3H, 2H 			//0193 	2903
		ORG		0194H
		LJUMP 	197H 			//0194 	3997
		RESET 					//0195 	1001

		//;IAP_FW.C: 265: break;
		LJUMP 	1F6H 			//0196 	39F6

		//;IAP_FW.C: 266: }
		//;IAP_FW.C: 267: iap_addr = iap_databuf[1];
		//;IAP_FW.C: 268: iap_addr = ((iap_addr<<8)+iap_databuf[2]);
		LCALL 	2A6H 			//0197 	32A6
		MOVLP 	1H 			//0198 	0181

		//;IAP_FW.C: 269: if(iap_addr < 0X400)
		LDWI 	4H 			//0199 	0004
		SUBWR 	2CH, 0H 		//019A 	122C
		LDWI 	0H 			//019B 	0000
		ORG		019CH
		BTSC 	3H, 2H 			//019C 	2903
		SUBWR 	2BH, 0H 		//019D 	122B
		BTSC 	3H, 0H 			//019E 	2803
		LJUMP 	1A2H 			//019F 	39A2
		RESET 					//01A0 	1001

		//;IAP_FW.C: 272: break;
		LJUMP 	1F6H 			//01A1 	39F6

		//;IAP_FW.C: 273: }
		//;IAP_FW.C: 274: if(data_check_erase_or_not(iap_addr,1))
		LCALL 	2D1H 			//01A2 	32D1
		MOVLP 	1H 			//01A3 	0181
		ORG		01A4H
		INCR 	74H, 1H 		//01A4 	1AF4
		LCALL 	21BH 			//01A5 	321B
		MOVLP 	1H 			//01A6 	0181
		XORWI 	0H 			//01A7 	0A00
		BTSC 	3H, 2H 			//01A8 	2903
		LJUMP 	1B6H 			//01A9 	39B6

		//;IAP_FW.C: 275: {
		//;IAP_FW.C: 276: if(iap_addr == (0x2800-0x40))
		LDWI 	C0H 			//01AA 	00C0
		MOVLB 	0H 			//01AB 	1020
		ORG		01ACH
		XORWR 	2BH, 0H 		//01AC 	162B
		LDWI 	27H 			//01AD 	0027
		BTSC 	3H, 2H 			//01AE 	2903
		XORWR 	2CH, 0H 		//01AF 	162C
		BTSS 	3H, 2H 			//01B0 	2D03
		LJUMP 	1F6H 			//01B1 	39F6

		//;IAP_FW.C: 277: {
		//;IAP_FW.C: 278: Eeprom_Write_Crc();
		MOVLP 	0H 			//01B2 	0180
		LCALL 	C1H 			//01B3 	30C1
		ORG		01B4H
		MOVLP 	1H 			//01B4 	0181
		LJUMP 	1F6H 			//01B5 	39F6

		//;IAP_FW.C: 282: else
		//;IAP_FW.C: 283: {
		//;IAP_FW.C: 284: if(data_check_erase_or_not(iap_addr,0))
		MOVLB 	0H 			//01B6 	1020
		LCALL 	2D1H 			//01B7 	32D1
		MOVLP 	1H 			//01B8 	0181
		LCALL 	21BH 			//01B9 	321B
		MOVLP 	1H 			//01BA 	0181
		XORWI 	0H 			//01BB 	0A00
		ORG		01BCH
		BTSC 	3H, 2H 			//01BC 	2903
		LJUMP 	1CCH 			//01BD 	39CC

		//;IAP_FW.C: 285: {
		//;IAP_FW.C: 286: for(i=0;i<128;i=i+2)
		MOVLB 	0H 			//01BE 	1020
		CLRF 	2DH 			//01BF 	11AD

		//;IAP_FW.C: 287: {
		//;IAP_FW.C: 288: EEADRH = iap_addr>>8;
		LDR 	2CH, 0H 			//01C0 	182C
		MOVLB 	3H 			//01C1 	1023
		STR 	12H 			//01C2 	1092

		//;IAP_FW.C: 289: EEADRL = iap_addr>>0;
		//;IAP_FW.C: 290: EEDATH = iap_databuf[i+3];
		//;IAP_FW.C: 291: EEDATL = iap_databuf[i+4];
		LCALL 	27FH 			//01C3 	327F
		ORG		01C4H
		MOVLP 	1H 			//01C4 	0181

		//;IAP_FW.C: 292: iap_mem_prog();
		LCALL 	24DH 			//01C5 	324D
		MOVLP 	1H 			//01C6 	0181

		//;IAP_FW.C: 293: iap_addr++;
		LCALL 	2C8H 			//01C7 	32C8
		MOVLP 	1H 			//01C8 	0181
		BTSC 	3H, 0H 			//01C9 	2803
		LJUMP 	1E3H 			//01CA 	39E3
		LJUMP 	1C0H 			//01CB 	39C0
		ORG		01CCH

		//;IAP_FW.C: 296: else
		//;IAP_FW.C: 297: {
		//;IAP_FW.C: 298: EEADRH = iap_addr>>8;
		MOVLB 	0H 			//01CC 	1020
		LDR 	2CH, 0H 			//01CD 	182C
		MOVLB 	3H 			//01CE 	1023
		STR 	12H 			//01CF 	1092

		//;IAP_FW.C: 299: EEADRL = iap_addr>>0;
		MOVLB 	0H 			//01D0 	1020
		LDR 	2BH, 0H 			//01D1 	182B
		MOVLB 	3H 			//01D2 	1023
		STR 	11H 			//01D3 	1091
		ORG		01D4H

		//;IAP_FW.C: 300: iap_mem_erase();
		LCALL 	2D7H 			//01D4 	32D7
		MOVLP 	1H 			//01D5 	0181

		//;IAP_FW.C: 301: for(i=0;i<128;i=i+2)
		MOVLB 	0H 			//01D6 	1020
		CLRF 	2DH 			//01D7 	11AD

		//;IAP_FW.C: 302: {
		//;IAP_FW.C: 303: EEADRH = iap_addr>>8;
		LDR 	2CH, 0H 			//01D8 	182C
		MOVLB 	3H 			//01D9 	1023
		STR 	12H 			//01DA 	1092

		//;IAP_FW.C: 304: EEADRL = iap_addr>>0;
		//;IAP_FW.C: 305: EEDATH = iap_databuf[i+3];
		//;IAP_FW.C: 306: EEDATL = iap_databuf[i+4];
		LCALL 	27FH 			//01DB 	327F
		ORG		01DCH
		MOVLP 	1H 			//01DC 	0181

		//;IAP_FW.C: 307: iap_mem_prog();
		LCALL 	24DH 			//01DD 	324D
		MOVLP 	1H 			//01DE 	0181

		//;IAP_FW.C: 308: iap_addr++;
		LCALL 	2C8H 			//01DF 	32C8
		MOVLP 	1H 			//01E0 	0181
		BTSS 	3H, 0H 			//01E1 	2C03
		LJUMP 	1D8H 			//01E2 	39D8

		//;IAP_FW.C: 309: }
		//;IAP_FW.C: 310: }
		//;IAP_FW.C: 311: iap_addr = iap_databuf[1];
		//;IAP_FW.C: 312: iap_addr = ((iap_addr<<8)+iap_databuf[2]);
		LCALL 	2A6H 			//01E3 	32A6
		ORG		01E4H
		MOVLP 	1H 			//01E4 	0181

		//;IAP_FW.C: 313: if(data_check_erase_or_not(iap_addr,1))
		STR 	73H 			//01E5 	10F3
		LDR 	2BH, 0H 			//01E6 	182B
		STR 	72H 			//01E7 	10F2
		CLRF 	74H 			//01E8 	11F4
		INCR 	74H, 1H 		//01E9 	1AF4
		LCALL 	21BH 			//01EA 	321B
		MOVLP 	1H 			//01EB 	0181
		ORG		01ECH
		XORWI 	0H 			//01EC 	0A00
		BTSS 	3H, 2H 			//01ED 	2D03
		LJUMP 	1AAH 			//01EE 	39AA

		//;IAP_FW.C: 314: {
		//;IAP_FW.C: 315: if(iap_addr == (0x2800-0x40))
		RESET 					//01EF 	1001

		//;IAP_FW.C: 324: break;
		LJUMP 	1F6H 			//01F0 	39F6

		//;IAP_FW.C: 328: case 0X06:
		RESET 					//01F1 	1001

		//;IAP_FW.C: 331: break;
		LJUMP 	1F6H 			//01F2 	39F6

		//;IAP_FW.C: 334: count=0;
		MOVLB 	0H 			//01F3 	1020
		ORG		01F4H
		CLRF 	21H 			//01F4 	11A1
		RESET 					//01F5 	1001

		//;IAP_FW.C: 336: break;
		//;IAP_FW.C: 245: {
		//;IAP_FW.C: 246: iap_databuf[0]=iap_usart_rec();
		LDWI 	6BH 			//01F6 	006B
		STR 	6H 			//01F7 	1086
		LDWI 	23H 			//01F8 	0023
		STR 	7H 			//01F9 	1087
		LCALL 	254H 			//01FA 	3254
		MOVLP 	1H 			//01FB 	0181
		ORG		01FCH
		MOVWI 	0H[1] 			//01FC 	0FC0
		CLRWDT 			//01FD 	1064
		LDWI 	6BH 			//01FE 	006B
		STR 	6H 			//01FF 	1086
		LDWI 	23H 			//0200 	0023
		STR 	7H 			//0201 	1087
		LDR 	1H, 0H 			//0202 	1801
		XORWI 	5H 			//0203 	0A05
		ORG		0204H
		BTSC 	3H, 2H 			//0204 	2903
		LJUMP 	154H 			//0205 	3954
		XORWI 	3H 			//0206 	0A03
		BTSC 	3H, 2H 			//0207 	2903
		LJUMP 	1F1H 			//0208 	39F1
		LJUMP 	1F3H 			//0209 	39F3
		LJUMP 	1F6H 			//020A 	39F6

		//;IAP_FW.C: 338: }
		//;IAP_FW.C: 339: }
		//;IAP_FW.C: 340: if(iap_err_flag==1)
		BTSS 	20H, 1H 		//020B 	2CA0
		ORG		020CH
		RET 					//020C 	1008

		//;IAP_FW.C: 341: {
		//;IAP_FW.C: 342: count=0;
		CLRF 	21H 			//020D 	11A1

		//;IAP_FW.C: 343: iap_err_flag=0;
		BCR 	20H, 1H 			//020E 	20A0

		//;IAP_FW.C: 344: UR1RXNEF=1;
		MOVLB 	9H 			//020F 	1029
		BSR 	12H, 0H 			//0210 	2412

		//;IAP_FW.C: 345: UR1DATAL=iap_recdata;
		MOVLB 	0H 			//0211 	1020
		LDR 	22H, 0H 			//0212 	1822
		MOVLB 	9H 			//0213 	1029
		ORG		0214H
		STR 	CH 			//0214 	108C

		//;IAP_FW.C: 346: if(read_flag !=1)
		MOVLB 	0H 			//0215 	1020
		BTSC 	20H, 0H 		//0216 	2820
		RET 					//0217 	1008
		LJUMP 	404H 			//0218 	3C04
		LJUMP 	404H 			//0219 	3C04
		RET 					//021A 	1008

		//;IAP_FW.C: 111: unsigned char i ,j,k;
		//;IAP_FW.C: 112: for(i=0;i<64;i++)
		//+                          ck]
		CLRF 	7BH 			//021B 	11FB
		ORG		021CH

		//;IAP_FW.C: 113: {
		//;IAP_FW.C: 114: EEADRH = addr>>8;
		LDR 	73H, 0H 			//021C 	1873
		MOVLB 	3H 			//021D 	1023
		STR 	12H 			//021E 	1092

		//;IAP_FW.C: 115: EEADRL = addr>>0;
		LDR 	72H, 0H 			//021F 	1872
		STR 	11H 			//0220 	1091

		//;IAP_FW.C: 116: j = iap_databuf[i*2+3];
		LDR 	7BH, 0H 			//0221 	187B
		STR 	75H 			//0222 	10F5
		LDWI 	6EH 			//0223 	006E
		ORG		0224H
		LCALL 	2BAH 			//0224 	32BA
		MOVLP 	1H 			//0225 	0181
		STR 	79H 			//0226 	10F9

		//;IAP_FW.C: 117: k = iap_databuf[i*2+4];
		LDR 	7BH, 0H 			//0227 	187B
		STR 	75H 			//0228 	10F5
		LDWI 	6FH 			//0229 	006F
		LCALL 	2BAH 			//022A 	32BA
		MOVLP 	1H 			//022B 	0181
		ORG		022CH
		STR 	7AH 			//022C 	10FA

		//;IAP_FW.C: 118: iap_mem_rd();
		LCALL 	279H 			//022D 	3279
		MOVLP 	1H 			//022E 	0181

		//;IAP_FW.C: 119: if(mode == 0)
		LDR 	74H, 0H 			//022F 	1874
		BTSS 	3H, 2H 			//0230 	2D03
		LJUMP 	23CH 			//0231 	3A3C

		//;IAP_FW.C: 120: {
		//;IAP_FW.C: 121: if(((EEDATH & j) != j) || ((EEDATL & k) != k))
		LDR 	79H, 0H 			//0232 	1879
		ANDWR 	14H, 0H 		//0233 	1514
		ORG		0234H
		STR 	75H 			//0234 	10F5
		XORWR 	79H, 0H 		//0235 	1679
		BTSS 	3H, 2H 			//0236 	2D03
		RETW 	0H 			//0237 	0400
		LDR 	7AH, 0H 			//0238 	187A
		ANDWR 	13H, 0H 		//0239 	1513
		STR 	75H 			//023A 	10F5
		LJUMP 	241H 			//023B 	3A41
		ORG		023CH

		//;IAP_FW.C: 126: else
		//;IAP_FW.C: 127: {
		//;IAP_FW.C: 128: if((EEDATH != j) || (EEDATL != k))
		LDR 	14H, 0H 			//023C 	1814
		XORWR 	79H, 0H 		//023D 	1679
		BTSS 	3H, 2H 			//023E 	2D03
		RETW 	0H 			//023F 	0400
		LDR 	13H, 0H 			//0240 	1813
		XORWR 	7AH, 0H 		//0241 	167A
		BTSS 	3H, 2H 			//0242 	2D03

		//;IAP_FW.C: 122: {
		//;IAP_FW.C: 123: return 0;
		RETW 	0H 			//0243 	0400
		ORG		0244H

		//;IAP_FW.C: 131: }
		//;IAP_FW.C: 132: }
		//;IAP_FW.C: 133: addr++;
		INCR 	72H, 1H 		//0244 	1AF2
		BTSC 	3H, 2H 			//0245 	2903
		INCR 	73H, 1H 		//0246 	1AF3
		LDWI 	40H 			//0247 	0040
		INCR 	7BH, 1H 		//0248 	1AFB
		SUBWR 	7BH, 0H 		//0249 	127B
		BTSC 	3H, 0H 			//024A 	2803

		//;IAP_FW.C: 134: }
		//;IAP_FW.C: 135: return 1;
		RETW 	1H 			//024B 	0401
		ORG		024CH
		LJUMP 	21CH 			//024C 	3A1C

		//;MEM_DRV.C: 29: EECON1 &=~(0x1<<4 );
		BCR 	15H, 4H 			//024D 	2215

		//;MEM_DRV.C: 30: Unlock_Flash();
		LCALL 	26FH 			//024E 	326F
		MOVLP 	1H 			//024F 	0181

		//;MEM_DRV.C: 31: while(EECON1 & (0x1<<1 ));
		MOVLB 	3H 			//0250 	1023
		BTSC 	15H, 1H 		//0251 	2895
		LJUMP 	250H 			//0252 	3A50
		RET 					//0253 	1008
		ORG		0254H

		//;USART_DRV.C: 52: unsigned int a;
		//;USART_DRV.C: 53: for(a=0;a<47200;a++)
		CLRF 	73H 			//0254 	11F3
		CLRF 	74H 			//0255 	11F4

		//;USART_DRV.C: 54: {
		//;USART_DRV.C: 55: DelayUs();
		LCALL 	2DEH 			//0256 	32DE
		MOVLP 	1H 			//0257 	0181

		//;USART_DRV.C: 56: if(((0x1 << 0 ) & UR1LSR))
		MOVLB 	9H 			//0258 	1029
		BTSS 	12H, 0H 		//0259 	2C12
		LJUMP 	264H 			//025A 	3A64

		//;USART_DRV.C: 57: {
		//;USART_DRV.C: 58: if((UR1LSR & (0x1<<2 )) || (UR1LSR & (0x1<<3 )))
		BTSC 	12H, 2H 		//025B 	2912
		ORG		025CH
		LJUMP 	25FH 			//025C 	3A5F
		BTSS 	12H, 3H 		//025D 	2D92
		LJUMP 	262H 			//025E 	3A62

		//;USART_DRV.C: 59: {
		//;USART_DRV.C: 60: UR1LSR = ~((0x1<<2 )|(0x1<<3 ));
		LDWI 	F3H 			//025F 	00F3
		STR 	12H 			//0260 	1092

		//;USART_DRV.C: 61: return 0xff;
		RETW 	FFH 			//0261 	04FF

		//;USART_DRV.C: 63: else
		//;USART_DRV.C: 64: {
		//;USART_DRV.C: 65: return UR1DATAL;
		LDR 	CH, 0H 			//0262 	180C
		RET 					//0263 	1008
		ORG		0264H
		INCR 	73H, 1H 		//0264 	1AF3
		BTSC 	3H, 2H 			//0265 	2903
		INCR 	74H, 1H 		//0266 	1AF4
		LDWI 	B8H 			//0267 	00B8
		SUBWR 	74H, 0H 		//0268 	1274
		LDWI 	60H 			//0269 	0060
		BTSC 	3H, 2H 			//026A 	2903
		SUBWR 	73H, 0H 		//026B 	1273
		ORG		026CH
		BTSC 	3H, 0H 			//026C 	2803

		//;USART_DRV.C: 66: }
		//;USART_DRV.C: 67: }
		//;USART_DRV.C: 68: }
		//;USART_DRV.C: 69: return 0xff;
		RETW 	FFH 			//026D 	04FF
		LJUMP 	256H 			//026E 	3A56
		LDWI 	3H 			//026F 	0003
		STR 	8H 			//0270 	1088
		LDWI 	55H 			//0271 	0055
		STR 	16H 			//0272 	1096
		LDWI 	AAH 			//0273 	00AA
		ORG		0274H
		STR 	16H 			//0274 	1096
		BSR 	15H, 1H 			//0275 	2495
		NOP 					//0276 	1000
		NOP 					//0277 	1000
		RET 					//0278 	1008

		//;MEM_DRV.C: 36: EECON1 |=(0x1<<0 );
		BSR 	15H, 0H 			//0279 	2415
		NOP 					//027A 	1000

		//;MEM_DRV.C: 38: while(EECON1 & (0x1<<0 ));
		MOVLB 	3H 			//027B 	1023
		ORG		027CH
		BTSC 	15H, 0H 		//027C 	2815
		LJUMP 	27BH 			//027D 	3A7B
		RET 					//027E 	1008
		MOVLB 	0H 			//027F 	1020
		LDR 	2BH, 0H 			//0280 	182B
		MOVLB 	3H 			//0281 	1023
		STR 	11H 			//0282 	1091
		MOVLB 	0H 			//0283 	1020
		ORG		0284H
		LDR 	2DH, 0H 			//0284 	182D
		STR 	25H 			//0285 	10A5
		LDWI 	6EH 			//0286 	006E
		CLRF 	26H 			//0287 	11A6
		STR 	27H 			//0288 	10A7
		LDWI 	23H 			//0289 	0023
		STR 	28H 			//028A 	10A8
		LDR 	25H, 0H 			//028B 	1825
		ORG		028CH
		ADDWR 	27H, 0H 		//028C 	1727
		STR 	6H 			//028D 	1086
		LDR 	26H, 0H 			//028E 	1826
		ADDWFC 	28H, 0H 		//028F 	0D28
		STR 	7H 			//0290 	1087
		LDR 	1H, 0H 			//0291 	1801
		MOVLB 	3H 			//0292 	1023
		STR 	14H 			//0293 	1094
		ORG		0294H
		MOVLB 	0H 			//0294 	1020
		LDR 	2DH, 0H 			//0295 	182D
		STR 	25H 			//0296 	10A5
		LDWI 	6FH 			//0297 	006F
		CLRF 	26H 			//0298 	11A6
		STR 	27H 			//0299 	10A7
		LDWI 	23H 			//029A 	0023
		STR 	28H 			//029B 	10A8
		ORG		029CH
		LDR 	25H, 0H 			//029C 	1825
		ADDWR 	27H, 0H 		//029D 	1727
		STR 	6H 			//029E 	1086
		LDR 	26H, 0H 			//029F 	1826
		ADDWFC 	28H, 0H 		//02A0 	0D28
		STR 	7H 			//02A1 	1087
		LDR 	1H, 0H 			//02A2 	1801
		MOVLB 	3H 			//02A3 	1023
		ORG		02A4H
		STR 	13H 			//02A4 	1093
		RET 					//02A5 	1008
		LDWI 	6BH 			//02A6 	006B
		STR 	6H 			//02A7 	1086
		LDWI 	23H 			//02A8 	0023
		STR 	7H 			//02A9 	1087
		ADDFSR 	1H, 1H 		//02AA 	0141
		LDR 	1H, 0H 			//02AB 	1801
		ORG		02ACH
		STR 	2BH 			//02AC 	10AB
		LDWI 	6BH 			//02AD 	006B
		CLRF 	2CH 			//02AE 	11AC
		STR 	6H 			//02AF 	1086
		LDWI 	23H 			//02B0 	0023
		STR 	7H 			//02B1 	1087
		ADDFSR 	1H, 2H 		//02B2 	0142
		LDR 	2BH, 0H 			//02B3 	182B
		ORG		02B4H
		STR 	25H 			//02B4 	10A5
		LDR 	1H, 0H 			//02B5 	1801
		STR 	2BH 			//02B6 	10AB
		LDR 	25H, 0H 			//02B7 	1825
		STR 	2CH 			//02B8 	10AC
		RET 					//02B9 	1008
		CLRF 	76H 			//02BA 	11F6
		LSLF 	75H, 1H 		//02BB 	05F5
		ORG		02BCH
		RLR 	76H, 1H 			//02BC 	1DF6
		STR 	77H 			//02BD 	10F7
		LDWI 	23H 			//02BE 	0023
		STR 	78H 			//02BF 	10F8
		LDR 	75H, 0H 			//02C0 	1875
		ADDWR 	77H, 0H 		//02C1 	1777
		STR 	6H 			//02C2 	1086
		LDR 	76H, 0H 			//02C3 	1876
		ORG		02C4H
		ADDWFC 	78H, 0H 		//02C4 	0D78
		STR 	7H 			//02C5 	1087
		LDR 	1H, 0H 			//02C6 	1801
		RET 					//02C7 	1008
		MOVLB 	0H 			//02C8 	1020
		INCR 	2BH, 1H 		//02C9 	1AAB
		BTSC 	3H, 2H 			//02CA 	2903
		INCR 	2CH, 1H 		//02CB 	1AAC
		ORG		02CCH
		LDWI 	80H 			//02CC 	0080
		INCR 	2DH, 1H 		//02CD 	1AAD
		INCR 	2DH, 1H 		//02CE 	1AAD
		SUBWR 	2DH, 0H 		//02CF 	122D
		RET 					//02D0 	1008
		LDR 	2CH, 0H 			//02D1 	182C
		STR 	73H 			//02D2 	10F3
		LDR 	2BH, 0H 			//02D3 	182B
		ORG		02D4H
		STR 	72H 			//02D4 	10F2
		CLRF 	74H 			//02D5 	11F4
		RET 					//02D6 	1008

		//;MEM_DRV.C: 21: EECON1 |=(0x1<<4 );
		BSR 	15H, 4H 			//02D7 	2615

		//;MEM_DRV.C: 22: Unlock_Flash();
		LCALL 	26FH 			//02D8 	326F
		MOVLP 	1H 			//02D9 	0181

		//;MEM_DRV.C: 23: while(EECON1 & (0x1<<1 ));
		MOVLB 	3H 			//02DA 	1023
		BTSC 	15H, 1H 		//02DB 	2895
		ORG		02DCH
		LJUMP 	2DAH 			//02DC 	3ADA
		RET 					//02DD 	1008

		//;USART_DRV.C: 38: unsigned char a;
		//;USART_DRV.C: 39: for(a=0;a<10;a++)
		CLRF 	72H 			//02DE 	11F2

		//;USART_DRV.C: 40: {
		//;USART_DRV.C: 41: __nop();
		NOP 					//02DF 	1000
		LDWI 	AH 			//02E0 	000A
		INCR 	72H, 1H 		//02E1 	1AF2
		SUBWR 	72H, 0H 		//02E2 	1272
		BTSC 	3H, 0H 			//02E3 	2803
		ORG		02E4H
		RET 					//02E4 	1008
		LJUMP 	2DFH 			//02E5 	3ADF
		ORG		0300H
		MOVLP 	1H 			//0300 	0181
		LJUMP 	14AH 			//0301 	394A
		MOVLP 	1H 			//0302 	0181
		LJUMP 	14AH 			//0303 	394A
		MOVLP 	1H 			//0304 	0181
		LJUMP 	14AH 			//0305 	394A
		MOVLP 	1H 			//0306 	0181
		LJUMP 	14AH 			//0307 	394A
		ORG		0308H
		MOVLP 	1H 			//0308 	0181
		LJUMP 	14AH 			//0309 	394A
		MOVLP 	1H 			//030A 	0181
		LJUMP 	14AH 			//030B 	394A
		MOVLP 	1H 			//030C 	0181
		LJUMP 	14AH 			//030D 	394A
		MOVLP 	1H 			//030E 	0181
		LJUMP 	14AH 			//030F 	394A
		ORG		0310H
		MOVLP 	1H 			//0310 	0181
		LJUMP 	125H 			//0311 	3925
		MOVLP 	1H 			//0312 	0181
		LJUMP 	12BH 			//0313 	392B
		MOVLP 	1H 			//0314 	0181
		LJUMP 	12DH 			//0315 	392D
		MOVLP 	1H 			//0316 	0181
		LJUMP 	12FH 			//0317 	392F
		ORG		0318H
		MOVLP 	1H 			//0318 	0181
		LJUMP 	131H 			//0319 	3931
		MOVLP 	1H 			//031A 	0181
		LJUMP 	133H 			//031B 	3933
		MOVLP 	1H 			//031C 	0181
		LJUMP 	135H 			//031D 	3935
		MOVLP 	1H 			//031E 	0181
		LJUMP 	137H 			//031F 	3937
		ORG		0320H
		CLRWDT 			//0320 	1064
		LDWI 	1H 			//0321 	0001
		CLRF 	0H 			//0322 	1180
		ADDFSR 	0H, 1H 		//0323 	0101
		SUBWR 	7EH, 1H 		//0324 	12FE
		LDWI 	0H 			//0325 	0000
		SUBWFB 	7FH, 1H 		//0326 	0BFF
		LDR 	7FH, 0H 			//0327 	187F
		ORG		0328H
		IORWR 	7EH, 0H 		//0328 	147E
		BTSC 	3H, 2H 			//0329 	2903
		RETW 	0H 			//032A 	0400
		LJUMP 	321H 			//032B 	3B21
			END
