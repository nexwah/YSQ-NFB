//Deviec:FT62F08X
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

		//;IAP_FW.C: 167: user_isr();
		MOVLP 	0H 			//001B 	0180
		MOVLP 	1H 			//001C 	0181
		LCALL 	11FH 			//001D 	311F
		BCR 	7EH, 0H 			//001D 	207E
		RETI 					//001E 	1009
		MOVLP 	0H 			//001F 	0180
		ORG		0020H
		LJUMP 	21H 			//0020 	3821
		LDWI 	6BH 			//0021 	006B
		STR 	4H 			//0022 	1084
		LDWI 	23H 			//0023 	0023
		STR 	5H 			//0024 	1085
		LDWI 	85H 			//0025 	0085
		STR 	7EH 			//0026 	10FE
		LDWI 	0H 			//0027 	0000
		ORG		0028H
		CLRF 	7FH 			//0028 	11FF
		MOVLP 	3H 			//0029 	0183
		LCALL 	320H 			//002A 	3320
		MOVLP 	0H 			//002B 	0180
		BCR 	7EH, 0H 			//002C 	207E
		MOVLB 	0H 			//002D 	1020
		LJUMP 	2FH 			//002E 	382F

		//;IAP_FW.C: 365: iap_usart_init();
		LCALL 	38H 			//002F 	3038
		ORG		0030H
		MOVLP 	0H 			//0030 	0180

		//;IAP_FW.C: 366: Power_On_App_Check();
		LCALL 	49H 			//0031 	3049

		//;IAP_FW.C: 368: GIE=1;
		BSR 	BH, 7H 			//0032 	278B

		//;IAP_FW.C: 369: PEIE=1;
		BSR 	BH, 6H 			//0033 	270B

		//;IAP_FW.C: 371: if(read_flag !=1)
		BTSS 	20H, 0H 		//0034 	2C20
		LJUMP 	400H 			//0035 	3C00

		//;IAP_FW.C: 374: }
		//;IAP_FW.C: 375: while(1)
		CLRWDT 			//0036 	1064
		LJUMP 	36H 			//0037 	3836
		ORG		0038H

		//;USART_DRV.C: 7: PCKEN = (0X1<<5 );
		LDWI 	20H 			//0038 	0020
		MOVLB 	1H 			//0039 	1021
		STR 	1AH 			//003A 	109A

		//;USART_DRV.C: 8: OSCCON = 0B01110001;
		LDWI 	71H 			//003B 	0071
		STR 	19H 			//003C 	1099

		//;USART_DRV.C: 11: AFP2 = 0B00000010;
		LDWI 	2H 			//003D 	0002
		MOVLB 	2H 			//003E 	1022
		STR 	1DH 			//003F 	109D
		ORG		0040H

		//;USART_DRV.C: 16: URDLL=26;
		LDWI 	1AH 			//0040 	001A
		MOVLB 	9H 			//0041 	1029
		STR 	14H 			//0042 	1094

		//;USART_DRV.C: 20: URLCR=(0x1 );
		LDWI 	1H 			//0043 	0001
		STR 	FH 			//0044 	108F

		//;USART_DRV.C: 22: URMCR=(0X1<<4 )|(0x1<<3 );
		LDWI 	18H 			//0045 	0018
		STR 	11H 			//0046 	1091

		//;USART_DRV.C: 24: URRXNE |= (0X1<<0 );
		BSR 	EH, 0H 			//0047 	240E
		ORG		0048H
		RET 					//0048 	1008

		//;IAP_FW.C: 88: unsigned int CRC_Eeprom;
		//;IAP_FW.C: 90: count=0;
		MOVLB 	0H 			//0049 	1020
		LDWI 	0H 			//004A 	0000
		CLRF 	21H 			//004B 	11A1

		//;IAP_FW.C: 91: flag=0;
		CLRF 	20H 			//004C 	11A0

		//;IAP_FW.C: 93: CRC_Eeprom=EEPROMread(0);
		LCALL 	67H 			//004D 	3067
		MOVLP 	0H 			//004E 	0180
		STR 	36H 			//004F 	10B6
		ORG		0050H
		CLRF 	37H 			//0050 	11B7

		//;IAP_FW.C: 94: CRC_Eeprom= CRC_Eeprom << 8;
		STR 	37H 			//0051 	10B7
		LDWI 	1H 			//0052 	0001
		CLRF 	36H 			//0053 	11B6

		//;IAP_FW.C: 95: CRC_Eeprom= CRC_Eeprom + EEPROMread(1);
		LCALL 	67H 			//0054 	3067
		MOVLP 	0H 			//0055 	0180
		ADDWR 	36H, 1H 		//0056 	17B6
		BTSC 	3H, 0H 			//0057 	2803
		ORG		0058H
		INCR 	37H, 1H 		//0058 	1AB7

		//;IAP_FW.C: 97: All_Page_Read_CRC();
		LCALL 	80H 			//0059 	3080
		MOVLP 	0H 			//005A 	0180

		//;IAP_FW.C: 98: if(CRC_Eeprom == CRC_16)
		LDR 	24H, 0H 			//005B 	1824
		XORWR 	37H, 0H 		//005C 	1637
		BTSS 	3H, 2H 			//005D 	2D03
		LJUMP 	61H 			//005E 	3861
		LDR 	23H, 0H 			//005F 	1823
		ORG		0060H
		XORWR 	36H, 0H 		//0060 	1636
		BTSS 	3H, 2H 			//0061 	2D03
		LJUMP 	65H 			//0062 	3865

		//;IAP_FW.C: 99: {
		//;IAP_FW.C: 100: read_flag=0;
		BCR 	20H, 0H 			//0063 	2020

		//;IAP_FW.C: 101: }
		RET 					//0064 	1008

		//;IAP_FW.C: 102: else
		//;IAP_FW.C: 103: {
		//;IAP_FW.C: 104: read_flag=1;
		BSR 	20H, 0H 			//0065 	2420
		RET 					//0066 	1008
		STR 	2EH 			//0067 	10AE
		ORG		0068H

		//;MEM_DRV.C: 50: unsigned char ReEEPROMread;
		//;MEM_DRV.C: 51: DRDEN=1;
		MOVLB 	3H 			//0068 	1023
		BSR 	18H, 0H 			//0069 	2418

		//;MEM_DRV.C: 52: __nop();
		NOP 					//006A 	1000

		//;MEM_DRV.C: 53: __nop();
		NOP 					//006B 	1000

		//;MEM_DRV.C: 54: EEADRL = EEAddr;
		MOVLB 	0H 			//006C 	1020
		LDR 	2EH, 0H 			//006D 	182E
		MOVLB 	3H 			//006E 	1023
		STR 	11H 			//006F 	1091
		ORG		0070H

		//;MEM_DRV.C: 56: EEPGD=0;
		BCR 	15H, 7H 			//0070 	2395

		//;MEM_DRV.C: 57: CFGS=0;
		BCR 	15H, 6H 			//0071 	2315

		//;MEM_DRV.C: 58: RD = 1;
		BSR 	15H, 0H 			//0072 	2415

		//;MEM_DRV.C: 59: __nop();
		NOP 					//0073 	1000

		//;MEM_DRV.C: 60: __nop();
		NOP 					//0074 	1000

		//;MEM_DRV.C: 61: __nop();
		NOP 					//0075 	1000

		//;MEM_DRV.C: 62: __nop();
		NOP 					//0076 	1000

		//;MEM_DRV.C: 63: ReEEPROMread = EEDATL;
		MOVLB 	3H 			//0077 	1023
		ORG		0078H
		LDR 	13H, 0H 			//0078 	1813
		MOVLB 	0H 			//0079 	1020
		STR 	2FH 			//007A 	10AF

		//;MEM_DRV.C: 65: DRDEN=0;
		MOVLB 	3H 			//007B 	1023
		BCR 	18H, 0H 			//007C 	2018

		//;MEM_DRV.C: 66: return ReEEPROMread;
		MOVLB 	0H 			//007D 	1020
		LDR 	2FH, 0H 			//007E 	182F
		RET 					//007F 	1008
		ORG		0080H

		//;IAP_FW.C: 59: unsigned int iap_addr;
		//;IAP_FW.C: 60: CRC_16 = 0;
		//;IAP_FW.C: 61: EECON1 = (0x1<<7 )|(0X1<<2 );
		LCALL 	119H 			//0080 	3119
		MOVLP 	0H 			//0081 	0180

		//;IAP_FW.C: 62: for(iap_addr=0X400;iap_addr<0x2000;iap_addr++)
		MOVLB 	0H 			//0082 	1020
		LDWI 	4H 			//0083 	0004
		CLRF 	34H 			//0084 	11B4
		STR 	35H 			//0085 	10B5

		//;IAP_FW.C: 63: {
		//;IAP_FW.C: 64: EEADRH = iap_addr>>8;
		LDR 	35H, 0H 			//0086 	1835
		MOVLB 	3H 			//0087 	1023
		ORG		0088H
		STR 	12H 			//0088 	1092

		//;IAP_FW.C: 65: EEADRL = iap_addr>>0;
		MOVLB 	0H 			//0089 	1020
		LDR 	34H, 0H 			//008A 	1834
		MOVLB 	3H 			//008B 	1023
		STR 	11H 			//008C 	1091

		//;IAP_FW.C: 66: iap_mem_rd();
		LCALL 	C0H 			//008D 	30C0
		MOVLP 	0H 			//008E 	0180

		//;IAP_FW.C: 67: CRC16_CCITT(EEDATL);
		LDR 	13H, 0H 			//008F 	1813
		ORG		0090H
		LCALL 	A1H 			//0090 	30A1
		MOVLP 	0H 			//0091 	0180

		//;IAP_FW.C: 68: CRC16_CCITT(EEDATH);
		MOVLB 	3H 			//0092 	1023
		LDR 	14H, 0H 			//0093 	1814
		LCALL 	A1H 			//0094 	30A1
		MOVLP 	0H 			//0095 	0180
		INCR 	34H, 1H 		//0096 	1AB4
		BTSC 	3H, 2H 			//0097 	2903
		ORG		0098H
		INCR 	35H, 1H 		//0098 	1AB5
		LDWI 	20H 			//0099 	0020
		SUBWR 	35H, 0H 		//009A 	1235
		LDWI 	0H 			//009B 	0000
		BTSC 	3H, 2H 			//009C 	2903
		SUBWR 	34H, 0H 		//009D 	1234
		BTSC 	3H, 0H 			//009E 	2803
		RET 					//009F 	1008
		ORG		00A0H
		LJUMP 	86H 			//00A0 	3886
		MOVLB 	0H 			//00A1 	1020
		STR 	32H 			//00A2 	10B2

		//;IAP_FW.C: 44: unsigned char i;
		//;IAP_FW.C: 46: CRC_16 ^= data;
		XORWR 	23H, 1H 		//00A3 	16A3

		//;IAP_FW.C: 48: for(i = 0;i < 8;i++)
		CLRF 	33H 			//00A4 	11B3

		//;IAP_FW.C: 49: {
		//;IAP_FW.C: 50: if(CRC_16 & 0x01)
		BTSS 	23H, 0H 		//00A5 	2C23
		LJUMP 	B8H 			//00A6 	38B8

		//;IAP_FW.C: 51: CRC_16 = (CRC_16 >> 1) ^ 0x8408;
		LDR 	24H, 0H 			//00A7 	1824
		ORG		00A8H
		STR 	2FH 			//00A8 	10AF
		LDR 	23H, 0H 			//00A9 	1823
		STR 	2EH 			//00AA 	10AE
		LDWI 	8H 			//00AB 	0008
		LSRF 	2FH, 1H 		//00AC 	06AF
		RRR 	2EH, 1H 			//00AD 	1CAE
		XORWR 	2EH, 0H 		//00AE 	162E
		STR 	30H 			//00AF 	10B0
		ORG		00B0H
		LDWI 	84H 			//00B0 	0084
		XORWR 	2FH, 0H 		//00B1 	162F
		STR 	31H 			//00B2 	10B1
		LDR 	30H, 0H 			//00B3 	1830
		STR 	23H 			//00B4 	10A3
		LDR 	31H, 0H 			//00B5 	1831
		STR 	24H 			//00B6 	10A4
		LJUMP 	BAH 			//00B7 	38BA
		ORG		00B8H

		//;IAP_FW.C: 52: else
		//;IAP_FW.C: 53: CRC_16 = CRC_16 >> 1;
		LSRF 	24H, 1H 		//00B8 	06A4
		RRR 	23H, 1H 			//00B9 	1CA3
		LDWI 	8H 			//00BA 	0008
		INCR 	33H, 1H 		//00BB 	1AB3
		SUBWR 	33H, 0H 		//00BC 	1233
		BTSC 	3H, 0H 			//00BD 	2803
		RET 					//00BE 	1008
		LJUMP 	A5H 			//00BF 	38A5
		ORG		00C0H

		//;MEM_DRV.C: 36: EECON1 |=(0x1<<0 );
		BSR 	15H, 0H 			//00C0 	2415
		NOP 					//00C1 	1000

		//;MEM_DRV.C: 38: while(EECON1 & (0x1<<0 ));
		MOVLB 	3H 			//00C2 	1023
		BTSS 	15H, 0H 		//00C3 	2C15
		RET 					//00C4 	1008
		LJUMP 	C2H 			//00C5 	38C2

		//;IAP_FW.C: 73: All_Page_Read_CRC();
		LCALL 	DBH 			//00C6 	30DB

		//;IAP_FW.C: 75: EECON1 &=~(0x1<<7 );
		MOVLB 	3H 			//00C7 	1023
		ORG		00C8H
		BCR 	15H, 7H 			//00C8 	2395

		//;IAP_FW.C: 76: EECON1 =(0X1<<2 );
		LDWI 	4H 			//00C9 	0004
		STR 	15H 			//00CA 	1095

		//;IAP_FW.C: 78: EEADRL=0;
		CLRF 	11H 			//00CB 	1191

		//;IAP_FW.C: 79: EEDATL=CRC_H;
		MOVLB 	0H 			//00CC 	1020
		LDR 	24H, 0H 			//00CD 	1824
		MOVLB 	3H 			//00CE 	1023
		STR 	13H 			//00CF 	1093
		ORG		00D0H

		//;IAP_FW.C: 80: iap_mem_prog();
		MOVLP 	2H 			//00D0 	0182
		LCALL 	252H 			//00D1 	3252
		MOVLP 	0H 			//00D2 	0180

		//;IAP_FW.C: 81: EEADRL=1;
		LDWI 	1H 			//00D3 	0001
		STR 	11H 			//00D4 	1091

		//;IAP_FW.C: 82: EEDATL=CRC_L;
		MOVLB 	0H 			//00D5 	1020
		LDR 	23H, 0H 			//00D6 	1823
		MOVLB 	3H 			//00D7 	1023
		ORG		00D8H
		STR 	13H 			//00D8 	1093

		//;IAP_FW.C: 83: iap_mem_prog();
		MOVLP 	2H 			//00D9 	0182
		LJUMP 	252H 			//00DA 	3A52

		//;IAP_FW.C: 59: unsigned int iap_addr;
		//;IAP_FW.C: 60: CRC_16 = 0;
		MOVLB 	0H 			//00DB 	1020

		//;IAP_FW.C: 61: EECON1 = (0x1<<7 )|(0X1<<2 );
		LCALL 	119H 			//00DC 	3119

		//;IAP_FW.C: 62: for(iap_addr=0X400;iap_addr<0x2000;iap_addr++)
		LDWI 	4H 			//00DD 	0004
		CLRF 	78H 			//00DE 	11F8
		STR 	79H 			//00DF 	10F9
		ORG		00E0H

		//;IAP_FW.C: 63: {
		//;IAP_FW.C: 64: EEADRH = iap_addr>>8;
		LDR 	79H, 0H 			//00E0 	1879
		MOVLB 	3H 			//00E1 	1023
		STR 	12H 			//00E2 	1092

		//;IAP_FW.C: 65: EEADRL = iap_addr>>0;
		LDR 	78H, 0H 			//00E3 	1878
		STR 	11H 			//00E4 	1091

		//;IAP_FW.C: 66: iap_mem_rd();
		MOVLP 	2H 			//00E5 	0182
		LCALL 	27EH 			//00E6 	327E
		MOVLP 	0H 			//00E7 	0180
		ORG		00E8H

		//;IAP_FW.C: 67: CRC16_CCITT(EEDATL);
		LDR 	13H, 0H 			//00E8 	1813
		LCALL 	FAH 			//00E9 	30FA
		MOVLP 	0H 			//00EA 	0180

		//;IAP_FW.C: 68: CRC16_CCITT(EEDATH);
		MOVLB 	3H 			//00EB 	1023
		LDR 	14H, 0H 			//00EC 	1814
		LCALL 	FAH 			//00ED 	30FA
		MOVLP 	0H 			//00EE 	0180
		INCR 	78H, 1H 		//00EF 	1AF8
		ORG		00F0H
		BTSC 	3H, 2H 			//00F0 	2903
		INCR 	79H, 1H 		//00F1 	1AF9
		LDWI 	20H 			//00F2 	0020
		SUBWR 	79H, 0H 		//00F3 	1279
		LDWI 	0H 			//00F4 	0000
		BTSC 	3H, 2H 			//00F5 	2903
		SUBWR 	78H, 0H 		//00F6 	1278
		BTSC 	3H, 0H 			//00F7 	2803
		ORG		00F8H
		RET 					//00F8 	1008
		LJUMP 	E0H 			//00F9 	38E0
		STR 	76H 			//00FA 	10F6

		//;IAP_FW.C: 44: unsigned char i;
		//;IAP_FW.C: 46: CRC_16 ^= data;
		MOVLB 	0H 			//00FB 	1020
		XORWR 	23H, 1H 		//00FC 	16A3

		//;IAP_FW.C: 48: for(i = 0;i < 8;i++)
		CLRF 	77H 			//00FD 	11F7

		//;IAP_FW.C: 49: {
		//;IAP_FW.C: 50: if(CRC_16 & 0x01)
		BTSS 	23H, 0H 		//00FE 	2C23
		LJUMP 	111H 			//00FF 	3911
		ORG		0100H

		//;IAP_FW.C: 51: CRC_16 = (CRC_16 >> 1) ^ 0x8408;
		LDR 	24H, 0H 			//0100 	1824
		STR 	73H 			//0101 	10F3
		LDR 	23H, 0H 			//0102 	1823
		STR 	72H 			//0103 	10F2
		LDWI 	8H 			//0104 	0008
		LSRF 	73H, 1H 		//0105 	06F3
		RRR 	72H, 1H 			//0106 	1CF2
		XORWR 	72H, 0H 		//0107 	1672
		ORG		0108H
		STR 	74H 			//0108 	10F4
		LDWI 	84H 			//0109 	0084
		XORWR 	73H, 0H 		//010A 	1673
		STR 	75H 			//010B 	10F5
		LDR 	74H, 0H 			//010C 	1874
		STR 	23H 			//010D 	10A3
		LDR 	75H, 0H 			//010E 	1875
		STR 	24H 			//010F 	10A4
		ORG		0110H
		LJUMP 	113H 			//0110 	3913

		//;IAP_FW.C: 52: else
		//;IAP_FW.C: 53: CRC_16 = CRC_16 >> 1;
		LSRF 	24H, 1H 		//0111 	06A4
		RRR 	23H, 1H 			//0112 	1CA3
		LDWI 	8H 			//0113 	0008
		INCR 	77H, 1H 		//0114 	1AF7
		SUBWR 	77H, 0H 		//0115 	1277
		BTSC 	3H, 0H 			//0116 	2803
		RET 					//0117 	1008
		ORG		0118H
		LJUMP 	FEH 			//0118 	38FE
		LDWI 	84H 			//0119 	0084
		CLRF 	23H 			//011A 	11A3
		CLRF 	24H 			//011B 	11A4
		MOVLB 	3H 			//011C 	1023
		STR 	15H 			//011D 	1095
		RET 					//011E 	1008

		//;IAP_FW.C: 172: if(URRXNE && RXNEF)
		MOVLB 	9H 			//011F 	1029
		ORG		0120H
		BTSC 	EH, 0H 			//0120 	280E
		BTSS 	12H, 0H 		//0121 	2C12
		LJUMP 	21EH 			//0122 	3A1E

		//;IAP_FW.C: 173: {
		//;IAP_FW.C: 174: if(FEF==1)
		BTSC 	12H, 3H 		//0123 	2992

		//;IAP_FW.C: 175: {FEF=0;}
		BCR 	12H, 3H 			//0124 	2192

		//;IAP_FW.C: 176: iap_recdata= URDATAL;
		LDR 	CH, 0H 			//0125 	180C
		MOVLB 	0H 			//0126 	1020
		STR 	22H 			//0127 	10A2
		ORG		0128H

		//;IAP_FW.C: 177: count++;
		INCR 	21H, 1H 		//0128 	1AA1

		//;IAP_FW.C: 178: switch(count)
		LJUMP 	142H 			//0129 	3942

		//;IAP_FW.C: 182: if(iap_recdata != 0x46)
		LDWI 	46H 			//012A 	0046
		XORWR 	22H, 0H 		//012B 	1622
		BTSC 	3H, 2H 			//012C 	2903
		LJUMP 	14FH 			//012D 	394F

		//;IAP_FW.C: 183: {iap_err_flag=1;}
		BSR 	20H, 1H 			//012E 	24A0
		LJUMP 	14FH 			//012F 	394F
		ORG		0130H

		//;IAP_FW.C: 188: if(iap_recdata != 0x4D)
		LDWI 	4DH 			//0130 	004D
		LJUMP 	12BH 			//0131 	392B

		//;IAP_FW.C: 194: if(iap_recdata!= 0x44)
		LDWI 	44H 			//0132 	0044
		LJUMP 	12BH 			//0133 	392B

		//;IAP_FW.C: 200: if(iap_recdata != 0x49)
		LDWI 	49H 			//0134 	0049
		LJUMP 	12BH 			//0135 	392B

		//;IAP_FW.C: 206: if(iap_recdata != 0x41)
		LDWI 	41H 			//0136 	0041
		LJUMP 	12BH 			//0137 	392B
		ORG		0138H

		//;IAP_FW.C: 212: if(iap_recdata != 0x50)
		LDWI 	50H 			//0138 	0050
		LJUMP 	12BH 			//0139 	392B

		//;IAP_FW.C: 218: if(iap_recdata!= 0x55)
		LDWI 	55H 			//013A 	0055
		LJUMP 	12BH 			//013B 	392B

		//;IAP_FW.C: 225: if(iap_recdata!= 0xaa)
		LDWI 	AAH 			//013C 	00AA
		XORWR 	22H, 0H 		//013D 	1622
		BTSS 	3H, 2H 			//013E 	2D03
		LJUMP 	12EH 			//013F 	392E
		ORG		0140H

		//;IAP_FW.C: 227: else
		//;IAP_FW.C: 228: {iap_ok_flag=1;}
		BSR 	20H, 2H 			//0140 	2520
		LJUMP 	14FH 			//0141 	394F
		LDR 	21H, 0H 			//0142 	1821
		ADDWI 	FFH 			//0143 	0EFF
		BTSS 	3H, 0H 			//0144 	2C03
		LJUMP 	12EH 			//0145 	392E
		STR 	4H 			//0146 	1084
		LDWI 	10H 			//0147 	0010
		ORG		0148H
		SUBWR 	4H, 0H 		//0148 	1204
		BTSC 	3H, 0H 			//0149 	2803
		LJUMP 	12EH 			//014A 	392E
		MOVLP 	3H 			//014B 	0183
		LSLF 	4H, 0H 			//014C 	0504
		ADDWI 	0H 			//014D 	0E00
		STR 	2H 			//014E 	1082

		//;IAP_FW.C: 235: if(iap_ok_flag==1)
		BTSS 	20H, 2H 		//014F 	2D20
		ORG		0150H
		LJUMP 	210H 			//0150 	3A10

		//;IAP_FW.C: 236: {
		//;IAP_FW.C: 237: count=0;
		CLRF 	21H 			//0151 	11A1

		//;IAP_FW.C: 238: iap_ok_flag =0;
		BCR 	20H, 2H 			//0152 	2120

		//;IAP_FW.C: 239: unsigned char i ;
		//;IAP_FW.C: 240: unsigned int iap_addr;
		//;IAP_FW.C: 241: unsigned int CRC16_dat1;
		//;IAP_FW.C: 242: URRXNE &= ~(0X1<<0 );
		MOVLB 	9H 			//0153 	1029
		BCR 	EH, 0H 			//0154 	200E

		//;IAP_FW.C: 243: EECON1 = (0x1<<7 )|(0X1<<2 );
		LDWI 	84H 			//0155 	0084
		MOVLB 	3H 			//0156 	1023
		STR 	15H 			//0157 	1095
		ORG		0158H

		//;IAP_FW.C: 248: switch(iap_databuf[0])
		LJUMP 	1FBH 			//0158 	39FB

		//;IAP_FW.C: 249: {
		//;IAP_FW.C: 250: case 0X05:
		//;IAP_FW.C: 251: for(i=1;i<133;i++)
		MOVLB 	0H 			//0159 	1020
		CLRF 	2DH 			//015A 	11AD
		INCR 	2DH, 1H 		//015B 	1AAD

		//;IAP_FW.C: 252: {
		//;IAP_FW.C: 253: iap_databuf[i]=iap_usart_rec();
		LCALL 	259H 			//015C 	3259
		MOVLP 	1H 			//015D 	0181
		MOVLB 	0H 			//015E 	1020
		STR 	25H 			//015F 	10A5
		ORG		0160H
		LDR 	2DH, 0H 			//0160 	182D
		ADDWI 	6BH 			//0161 	0E6B
		STR 	26H 			//0162 	10A6
		LDWI 	23H 			//0163 	0023
		CLRF 	27H 			//0164 	11A7
		ADDWFC 	27H, 1H 		//0165 	0DA7
		LDR 	26H, 0H 			//0166 	1826
		STR 	6H 			//0167 	1086
		ORG		0168H
		LDR 	27H, 0H 			//0168 	1827
		STR 	7H 			//0169 	1087
		LDR 	25H, 0H 			//016A 	1825
		STR 	1H 			//016B 	1081
		LDWI 	85H 			//016C 	0085
		INCR 	2DH, 1H 		//016D 	1AAD
		SUBWR 	2DH, 0H 		//016E 	122D
		BTSS 	3H, 0H 			//016F 	2C03
		ORG		0170H
		LJUMP 	15CH 			//0170 	395C

		//;IAP_FW.C: 254: }
		//;IAP_FW.C: 255: CRC16_dat1 = iap_databuf[131];
		LDWI 	EEH 			//0171 	00EE
		STR 	6H 			//0172 	1086
		LDWI 	23H 			//0173 	0023
		STR 	7H 			//0174 	1087
		LDR 	1H, 0H 			//0175 	1801
		STR 	29H 			//0176 	10A9
		LDWI 	EFH 			//0177 	00EF
		ORG		0178H
		CLRF 	2AH 			//0178 	11AA

		//;IAP_FW.C: 256: CRC16_dat1 = ((CRC16_dat1<<8)+iap_databuf[132]);
		STR 	6H 			//0179 	1086
		LDR 	29H, 0H 			//017A 	1829
		STR 	25H 			//017B 	10A5
		LDR 	1H, 0H 			//017C 	1801
		STR 	29H 			//017D 	10A9
		LDR 	25H, 0H 			//017E 	1825
		STR 	2AH 			//017F 	10AA
		ORG		0180H

		//;IAP_FW.C: 257: CRC_16 = 0;
		CLRF 	23H 			//0180 	11A3
		CLRF 	24H 			//0181 	11A4

		//;IAP_FW.C: 258: for(i=0;i<131;i++)
		CLRF 	2DH 			//0182 	11AD

		//;IAP_FW.C: 259: {
		//;IAP_FW.C: 260: CRC16_CCITT(iap_databuf[i]);
		LDR 	2DH, 0H 			//0183 	182D
		ADDWI 	6BH 			//0184 	0E6B
		STR 	6H 			//0185 	1086
		LDWI 	23H 			//0186 	0023
		CLRF 	7H 			//0187 	1187
		ORG		0188H
		ADDWFC 	7H, 1H 		//0188 	0D87
		LDR 	1H, 0H 			//0189 	1801
		MOVLP 	0H 			//018A 	0180
		LCALL 	FAH 			//018B 	30FA
		MOVLP 	1H 			//018C 	0181
		LDWI 	83H 			//018D 	0083
		INCR 	2DH, 1H 		//018E 	1AAD
		SUBWR 	2DH, 0H 		//018F 	122D
		ORG		0190H
		BTSS 	3H, 0H 			//0190 	2C03
		LJUMP 	183H 			//0191 	3983

		//;IAP_FW.C: 261: }
		//;IAP_FW.C: 262: if(CRC16_dat1 !=CRC_16)
		LDR 	24H, 0H 			//0192 	1824
		XORWR 	2AH, 0H 		//0193 	162A
		BTSS 	3H, 2H 			//0194 	2D03
		LJUMP 	198H 			//0195 	3998
		LDR 	23H, 0H 			//0196 	1823
		XORWR 	29H, 0H 		//0197 	1629
		ORG		0198H
		BTSC 	3H, 2H 			//0198 	2903
		LJUMP 	19CH 			//0199 	399C
		RESET 					//019A 	1001

		//;IAP_FW.C: 265: break;
		LJUMP 	1FBH 			//019B 	39FB

		//;IAP_FW.C: 266: }
		//;IAP_FW.C: 267: iap_addr = iap_databuf[1];
		//;IAP_FW.C: 268: iap_addr = ((iap_addr<<8)+iap_databuf[2]);
		LCALL 	2ABH 			//019C 	32AB
		MOVLP 	1H 			//019D 	0181

		//;IAP_FW.C: 269: if(iap_addr < 0X400)
		LDWI 	4H 			//019E 	0004
		SUBWR 	2CH, 0H 		//019F 	122C
		ORG		01A0H
		LDWI 	0H 			//01A0 	0000
		BTSC 	3H, 2H 			//01A1 	2903
		SUBWR 	2BH, 0H 		//01A2 	122B
		BTSC 	3H, 0H 			//01A3 	2803
		LJUMP 	1A7H 			//01A4 	39A7
		RESET 					//01A5 	1001

		//;IAP_FW.C: 272: break;
		LJUMP 	1FBH 			//01A6 	39FB

		//;IAP_FW.C: 273: }
		//;IAP_FW.C: 274: if(data_check_erase_or_not(iap_addr,1))
		LCALL 	2D6H 			//01A7 	32D6
		ORG		01A8H
		MOVLP 	1H 			//01A8 	0181
		INCR 	74H, 1H 		//01A9 	1AF4
		LCALL 	220H 			//01AA 	3220
		MOVLP 	1H 			//01AB 	0181
		XORWI 	0H 			//01AC 	0A00
		BTSC 	3H, 2H 			//01AD 	2903
		LJUMP 	1BBH 			//01AE 	39BB

		//;IAP_FW.C: 275: {
		//;IAP_FW.C: 276: if(iap_addr == (0x2000-0x40))
		LDWI 	C0H 			//01AF 	00C0
		ORG		01B0H
		MOVLB 	0H 			//01B0 	1020
		XORWR 	2BH, 0H 		//01B1 	162B
		LDWI 	1FH 			//01B2 	001F
		BTSC 	3H, 2H 			//01B3 	2903
		XORWR 	2CH, 0H 		//01B4 	162C
		BTSS 	3H, 2H 			//01B5 	2D03
		LJUMP 	1FBH 			//01B6 	39FB

		//;IAP_FW.C: 277: {
		//;IAP_FW.C: 278: Eeprom_Write_Crc();
		MOVLP 	0H 			//01B7 	0180
		ORG		01B8H
		LCALL 	C6H 			//01B8 	30C6
		MOVLP 	1H 			//01B9 	0181
		LJUMP 	1FBH 			//01BA 	39FB

		//;IAP_FW.C: 282: else
		//;IAP_FW.C: 283: {
		//;IAP_FW.C: 284: if(data_check_erase_or_not(iap_addr,0))
		MOVLB 	0H 			//01BB 	1020
		LCALL 	2D6H 			//01BC 	32D6
		MOVLP 	1H 			//01BD 	0181
		LCALL 	220H 			//01BE 	3220
		MOVLP 	1H 			//01BF 	0181
		ORG		01C0H
		XORWI 	0H 			//01C0 	0A00
		BTSC 	3H, 2H 			//01C1 	2903
		LJUMP 	1D1H 			//01C2 	39D1

		//;IAP_FW.C: 285: {
		//;IAP_FW.C: 286: for(i=0;i<128;i=i+2)
		MOVLB 	0H 			//01C3 	1020
		CLRF 	2DH 			//01C4 	11AD

		//;IAP_FW.C: 287: {
		//;IAP_FW.C: 288: EEADRH = iap_addr>>8;
		LDR 	2CH, 0H 			//01C5 	182C
		MOVLB 	3H 			//01C6 	1023
		STR 	12H 			//01C7 	1092
		ORG		01C8H

		//;IAP_FW.C: 289: EEADRL = iap_addr>>0;
		//;IAP_FW.C: 290: EEDATH = iap_databuf[i+3];
		//;IAP_FW.C: 291: EEDATL = iap_databuf[i+4];
		LCALL 	284H 			//01C8 	3284
		MOVLP 	1H 			//01C9 	0181

		//;IAP_FW.C: 292: iap_mem_prog();
		LCALL 	252H 			//01CA 	3252
		MOVLP 	1H 			//01CB 	0181

		//;IAP_FW.C: 293: iap_addr++;
		LCALL 	2CDH 			//01CC 	32CD
		MOVLP 	1H 			//01CD 	0181
		BTSC 	3H, 0H 			//01CE 	2803
		LJUMP 	1E8H 			//01CF 	39E8
		ORG		01D0H
		LJUMP 	1C5H 			//01D0 	39C5

		//;IAP_FW.C: 296: else
		//;IAP_FW.C: 297: {
		//;IAP_FW.C: 298: EEADRH = iap_addr>>8;
		MOVLB 	0H 			//01D1 	1020
		LDR 	2CH, 0H 			//01D2 	182C
		MOVLB 	3H 			//01D3 	1023
		STR 	12H 			//01D4 	1092

		//;IAP_FW.C: 299: EEADRL = iap_addr>>0;
		MOVLB 	0H 			//01D5 	1020
		LDR 	2BH, 0H 			//01D6 	182B
		MOVLB 	3H 			//01D7 	1023
		ORG		01D8H
		STR 	11H 			//01D8 	1091

		//;IAP_FW.C: 300: iap_mem_erase();
		LCALL 	2DCH 			//01D9 	32DC
		MOVLP 	1H 			//01DA 	0181

		//;IAP_FW.C: 301: for(i=0;i<128;i=i+2)
		MOVLB 	0H 			//01DB 	1020
		CLRF 	2DH 			//01DC 	11AD

		//;IAP_FW.C: 302: {
		//;IAP_FW.C: 303: EEADRH = iap_addr>>8;
		LDR 	2CH, 0H 			//01DD 	182C
		MOVLB 	3H 			//01DE 	1023
		STR 	12H 			//01DF 	1092
		ORG		01E0H

		//;IAP_FW.C: 304: EEADRL = iap_addr>>0;
		//;IAP_FW.C: 305: EEDATH = iap_databuf[i+3];
		//;IAP_FW.C: 306: EEDATL = iap_databuf[i+4];
		LCALL 	284H 			//01E0 	3284
		MOVLP 	1H 			//01E1 	0181

		//;IAP_FW.C: 307: iap_mem_prog();
		LCALL 	252H 			//01E2 	3252
		MOVLP 	1H 			//01E3 	0181

		//;IAP_FW.C: 308: iap_addr++;
		LCALL 	2CDH 			//01E4 	32CD
		MOVLP 	1H 			//01E5 	0181
		BTSS 	3H, 0H 			//01E6 	2C03
		LJUMP 	1DDH 			//01E7 	39DD
		ORG		01E8H

		//;IAP_FW.C: 309: }
		//;IAP_FW.C: 310: }
		//;IAP_FW.C: 311: iap_addr = iap_databuf[1];
		//;IAP_FW.C: 312: iap_addr = ((iap_addr<<8)+iap_databuf[2]);
		LCALL 	2ABH 			//01E8 	32AB
		MOVLP 	1H 			//01E9 	0181

		//;IAP_FW.C: 313: if(data_check_erase_or_not(iap_addr,1))
		STR 	73H 			//01EA 	10F3
		LDR 	2BH, 0H 			//01EB 	182B
		STR 	72H 			//01EC 	10F2
		CLRF 	74H 			//01ED 	11F4
		INCR 	74H, 1H 		//01EE 	1AF4
		LCALL 	220H 			//01EF 	3220
		ORG		01F0H
		MOVLP 	1H 			//01F0 	0181
		XORWI 	0H 			//01F1 	0A00
		BTSS 	3H, 2H 			//01F2 	2D03
		LJUMP 	1AFH 			//01F3 	39AF

		//;IAP_FW.C: 314: {
		//;IAP_FW.C: 315: if(iap_addr == (0x2000-0x40))
		RESET 					//01F4 	1001

		//;IAP_FW.C: 324: break;
		LJUMP 	1FBH 			//01F5 	39FB

		//;IAP_FW.C: 328: case 0X06:
		RESET 					//01F6 	1001

		//;IAP_FW.C: 331: break;
		LJUMP 	1FBH 			//01F7 	39FB
		ORG		01F8H

		//;IAP_FW.C: 334: count=0;
		MOVLB 	0H 			//01F8 	1020
		CLRF 	21H 			//01F9 	11A1
		RESET 					//01FA 	1001

		//;IAP_FW.C: 336: break;
		//;IAP_FW.C: 245: {
		//;IAP_FW.C: 246: iap_databuf[0]=iap_usart_rec();
		LDWI 	6BH 			//01FB 	006B
		STR 	6H 			//01FC 	1086
		LDWI 	23H 			//01FD 	0023
		STR 	7H 			//01FE 	1087
		LCALL 	259H 			//01FF 	3259
		ORG		0200H
		MOVLP 	1H 			//0200 	0181
		MOVWI 	0H[1] 			//0201 	0FC0
		CLRWDT 			//0202 	1064
		LDWI 	6BH 			//0203 	006B
		STR 	6H 			//0204 	1086
		LDWI 	23H 			//0205 	0023
		STR 	7H 			//0206 	1087
		LDR 	1H, 0H 			//0207 	1801
		ORG		0208H
		XORWI 	5H 			//0208 	0A05
		BTSC 	3H, 2H 			//0209 	2903
		LJUMP 	159H 			//020A 	3959
		XORWI 	3H 			//020B 	0A03
		BTSC 	3H, 2H 			//020C 	2903
		LJUMP 	1F6H 			//020D 	39F6
		LJUMP 	1F8H 			//020E 	39F8
		LJUMP 	1FBH 			//020F 	39FB
		ORG		0210H

		//;IAP_FW.C: 338: }
		//;IAP_FW.C: 339: }
		//;IAP_FW.C: 340: if(iap_err_flag==1)
		BTSS 	20H, 1H 		//0210 	2CA0
		RET 					//0211 	1008

		//;IAP_FW.C: 341: {
		//;IAP_FW.C: 342: count=0;
		CLRF 	21H 			//0212 	11A1

		//;IAP_FW.C: 343: iap_err_flag=0;
		BCR 	20H, 1H 			//0213 	20A0

		//;IAP_FW.C: 344: RXNEF=1;
		MOVLB 	9H 			//0214 	1029
		BSR 	12H, 0H 			//0215 	2412

		//;IAP_FW.C: 345: URDATAL=iap_recdata;
		MOVLB 	0H 			//0216 	1020
		LDR 	22H, 0H 			//0217 	1822
		ORG		0218H
		MOVLB 	9H 			//0218 	1029
		STR 	CH 			//0219 	108C

		//;IAP_FW.C: 346: if(read_flag !=1)
		MOVLB 	0H 			//021A 	1020
		BTSC 	20H, 0H 		//021B 	2820
		RET 					//021C 	1008
		LJUMP 	404H 			//021D 	3C04
		LJUMP 	404H 			//021E 	3C04
		RET 					//021F 	1008
		ORG		0220H

		//;IAP_FW.C: 111: unsigned char i ,j,k;
		//;IAP_FW.C: 112: for(i=0;i<64;i++)
		//+                          ck]
		CLRF 	7BH 			//0220 	11FB

		//;IAP_FW.C: 113: {
		//;IAP_FW.C: 114: EEADRH = addr>>8;
		LDR 	73H, 0H 			//0221 	1873
		MOVLB 	3H 			//0222 	1023
		STR 	12H 			//0223 	1092

		//;IAP_FW.C: 115: EEADRL = addr>>0;
		LDR 	72H, 0H 			//0224 	1872
		STR 	11H 			//0225 	1091

		//;IAP_FW.C: 116: j = iap_databuf[i*2+3];
		LDR 	7BH, 0H 			//0226 	187B
		STR 	75H 			//0227 	10F5
		ORG		0228H
		LDWI 	6EH 			//0228 	006E
		LCALL 	2BFH 			//0229 	32BF
		MOVLP 	1H 			//022A 	0181
		STR 	79H 			//022B 	10F9

		//;IAP_FW.C: 117: k = iap_databuf[i*2+4];
		LDR 	7BH, 0H 			//022C 	187B
		STR 	75H 			//022D 	10F5
		LDWI 	6FH 			//022E 	006F
		LCALL 	2BFH 			//022F 	32BF
		ORG		0230H
		MOVLP 	1H 			//0230 	0181
		STR 	7AH 			//0231 	10FA

		//;IAP_FW.C: 118: iap_mem_rd();
		LCALL 	27EH 			//0232 	327E
		MOVLP 	1H 			//0233 	0181

		//;IAP_FW.C: 119: if(mode == 0)
		LDR 	74H, 0H 			//0234 	1874
		BTSS 	3H, 2H 			//0235 	2D03
		LJUMP 	241H 			//0236 	3A41

		//;IAP_FW.C: 120: {
		//;IAP_FW.C: 121: if(((EEDATH & j) != j) || ((EEDATL & k) != k))
		LDR 	79H, 0H 			//0237 	1879
		ORG		0238H
		ANDWR 	14H, 0H 		//0238 	1514
		STR 	75H 			//0239 	10F5
		XORWR 	79H, 0H 		//023A 	1679
		BTSS 	3H, 2H 			//023B 	2D03
		RETW 	0H 			//023C 	0400
		LDR 	7AH, 0H 			//023D 	187A
		ANDWR 	13H, 0H 		//023E 	1513
		STR 	75H 			//023F 	10F5
		ORG		0240H
		LJUMP 	246H 			//0240 	3A46

		//;IAP_FW.C: 126: else
		//;IAP_FW.C: 127: {
		//;IAP_FW.C: 128: if((EEDATH != j) || (EEDATL != k))
		LDR 	14H, 0H 			//0241 	1814
		XORWR 	79H, 0H 		//0242 	1679
		BTSS 	3H, 2H 			//0243 	2D03
		RETW 	0H 			//0244 	0400
		LDR 	13H, 0H 			//0245 	1813
		XORWR 	7AH, 0H 		//0246 	167A
		BTSS 	3H, 2H 			//0247 	2D03
		ORG		0248H

		//;IAP_FW.C: 122: {
		//;IAP_FW.C: 123: return 0;
		RETW 	0H 			//0248 	0400

		//;IAP_FW.C: 131: }
		//;IAP_FW.C: 132: }
		//;IAP_FW.C: 133: addr++;
		INCR 	72H, 1H 		//0249 	1AF2
		BTSC 	3H, 2H 			//024A 	2903
		INCR 	73H, 1H 		//024B 	1AF3
		LDWI 	40H 			//024C 	0040
		INCR 	7BH, 1H 		//024D 	1AFB
		SUBWR 	7BH, 0H 		//024E 	127B
		BTSC 	3H, 0H 			//024F 	2803
		ORG		0250H

		//;IAP_FW.C: 134: }
		//;IAP_FW.C: 135: return 1;
		RETW 	1H 			//0250 	0401
		LJUMP 	221H 			//0251 	3A21

		//;MEM_DRV.C: 29: EECON1 &=~(0x1<<4 );
		BCR 	15H, 4H 			//0252 	2215

		//;MEM_DRV.C: 30: Unlock_Flash();
		LCALL 	274H 			//0253 	3274
		MOVLP 	1H 			//0254 	0181

		//;MEM_DRV.C: 31: while(EECON1 & (0x1<<1 ));
		MOVLB 	3H 			//0255 	1023
		BTSS 	15H, 1H 		//0256 	2C95
		RET 					//0257 	1008
		ORG		0258H
		LJUMP 	255H 			//0258 	3A55

		//;USART_DRV.C: 52: unsigned int a;
		//;USART_DRV.C: 53: for(a=0;a<47200;a++)
		CLRF 	73H 			//0259 	11F3
		CLRF 	74H 			//025A 	11F4

		//;USART_DRV.C: 54: {
		//;USART_DRV.C: 55: DelayUs();
		LCALL 	2E3H 			//025B 	32E3
		MOVLP 	1H 			//025C 	0181

		//;USART_DRV.C: 56: if(((0x1 << 0 ) & URLSR))
		MOVLB 	9H 			//025D 	1029
		BTSS 	12H, 0H 		//025E 	2C12
		LJUMP 	269H 			//025F 	3A69
		ORG		0260H

		//;USART_DRV.C: 57: {
		//;USART_DRV.C: 58: if((URLSR & (0x1<<2 )) || (URLSR & (0x1<<3 )))
		BTSC 	12H, 2H 		//0260 	2912
		LJUMP 	264H 			//0261 	3A64
		BTSS 	12H, 3H 		//0262 	2D92
		LJUMP 	267H 			//0263 	3A67

		//;USART_DRV.C: 59: {
		//;USART_DRV.C: 60: URLSR = ~((0x1<<2 )|(0x1<<3 ));
		LDWI 	F3H 			//0264 	00F3
		STR 	12H 			//0265 	1092

		//;USART_DRV.C: 61: return 0xff;
		RETW 	FFH 			//0266 	04FF

		//;USART_DRV.C: 63: else
		//;USART_DRV.C: 64: {
		//;USART_DRV.C: 65: return URDATAL;
		LDR 	CH, 0H 			//0267 	180C
		ORG		0268H
		RET 					//0268 	1008
		INCR 	73H, 1H 		//0269 	1AF3
		BTSC 	3H, 2H 			//026A 	2903
		INCR 	74H, 1H 		//026B 	1AF4
		LDWI 	B8H 			//026C 	00B8
		SUBWR 	74H, 0H 		//026D 	1274
		LDWI 	60H 			//026E 	0060
		BTSC 	3H, 2H 			//026F 	2903
		ORG		0270H
		SUBWR 	73H, 0H 		//0270 	1273
		BTSC 	3H, 0H 			//0271 	2803

		//;USART_DRV.C: 66: }
		//;USART_DRV.C: 67: }
		//;USART_DRV.C: 68: }
		//;USART_DRV.C: 69: return 0xff;
		RETW 	FFH 			//0272 	04FF
		LJUMP 	25BH 			//0273 	3A5B
		LDWI 	3H 			//0274 	0003
		STR 	8H 			//0275 	1088
		LDWI 	55H 			//0276 	0055
		STR 	16H 			//0277 	1096
		ORG		0278H
		LDWI 	AAH 			//0278 	00AA
		STR 	16H 			//0279 	1096
		BSR 	15H, 1H 			//027A 	2495
		NOP 					//027B 	1000
		NOP 					//027C 	1000
		RET 					//027D 	1008

		//;MEM_DRV.C: 36: EECON1 |=(0x1<<0 );
		BSR 	15H, 0H 			//027E 	2415
		NOP 					//027F 	1000
		ORG		0280H

		//;MEM_DRV.C: 38: while(EECON1 & (0x1<<0 ));
		MOVLB 	3H 			//0280 	1023
		BTSS 	15H, 0H 		//0281 	2C15
		RET 					//0282 	1008
		LJUMP 	280H 			//0283 	3A80
		MOVLB 	0H 			//0284 	1020
		LDR 	2BH, 0H 			//0285 	182B
		MOVLB 	3H 			//0286 	1023
		STR 	11H 			//0287 	1091
		ORG		0288H
		MOVLB 	0H 			//0288 	1020
		LDR 	2DH, 0H 			//0289 	182D
		STR 	25H 			//028A 	10A5
		LDWI 	6EH 			//028B 	006E
		CLRF 	26H 			//028C 	11A6
		STR 	27H 			//028D 	10A7
		LDWI 	23H 			//028E 	0023
		STR 	28H 			//028F 	10A8
		ORG		0290H
		LDR 	25H, 0H 			//0290 	1825
		ADDWR 	27H, 0H 		//0291 	1727
		STR 	6H 			//0292 	1086
		LDR 	26H, 0H 			//0293 	1826
		ADDWFC 	28H, 0H 		//0294 	0D28
		STR 	7H 			//0295 	1087
		LDR 	1H, 0H 			//0296 	1801
		MOVLB 	3H 			//0297 	1023
		ORG		0298H
		STR 	14H 			//0298 	1094
		MOVLB 	0H 			//0299 	1020
		LDR 	2DH, 0H 			//029A 	182D
		STR 	25H 			//029B 	10A5
		LDWI 	6FH 			//029C 	006F
		CLRF 	26H 			//029D 	11A6
		STR 	27H 			//029E 	10A7
		LDWI 	23H 			//029F 	0023
		ORG		02A0H
		STR 	28H 			//02A0 	10A8
		LDR 	25H, 0H 			//02A1 	1825
		ADDWR 	27H, 0H 		//02A2 	1727
		STR 	6H 			//02A3 	1086
		LDR 	26H, 0H 			//02A4 	1826
		ADDWFC 	28H, 0H 		//02A5 	0D28
		STR 	7H 			//02A6 	1087
		LDR 	1H, 0H 			//02A7 	1801
		ORG		02A8H
		MOVLB 	3H 			//02A8 	1023
		STR 	13H 			//02A9 	1093
		RET 					//02AA 	1008
		LDWI 	6BH 			//02AB 	006B
		STR 	6H 			//02AC 	1086
		LDWI 	23H 			//02AD 	0023
		STR 	7H 			//02AE 	1087
		ADDFSR 	1H, 1H 		//02AF 	0141
		ORG		02B0H
		LDR 	1H, 0H 			//02B0 	1801
		STR 	2BH 			//02B1 	10AB
		LDWI 	6BH 			//02B2 	006B
		CLRF 	2CH 			//02B3 	11AC
		STR 	6H 			//02B4 	1086
		LDWI 	23H 			//02B5 	0023
		STR 	7H 			//02B6 	1087
		ADDFSR 	1H, 2H 		//02B7 	0142
		ORG		02B8H
		LDR 	2BH, 0H 			//02B8 	182B
		STR 	25H 			//02B9 	10A5
		LDR 	1H, 0H 			//02BA 	1801
		STR 	2BH 			//02BB 	10AB
		LDR 	25H, 0H 			//02BC 	1825
		STR 	2CH 			//02BD 	10AC
		RET 					//02BE 	1008
		CLRF 	76H 			//02BF 	11F6
		ORG		02C0H
		LSLF 	75H, 1H 		//02C0 	05F5
		RLR 	76H, 1H 			//02C1 	1DF6
		STR 	77H 			//02C2 	10F7
		LDWI 	23H 			//02C3 	0023
		STR 	78H 			//02C4 	10F8
		LDR 	75H, 0H 			//02C5 	1875
		ADDWR 	77H, 0H 		//02C6 	1777
		STR 	6H 			//02C7 	1086
		ORG		02C8H
		LDR 	76H, 0H 			//02C8 	1876
		ADDWFC 	78H, 0H 		//02C9 	0D78
		STR 	7H 			//02CA 	1087
		LDR 	1H, 0H 			//02CB 	1801
		RET 					//02CC 	1008
		MOVLB 	0H 			//02CD 	1020
		INCR 	2BH, 1H 		//02CE 	1AAB
		BTSC 	3H, 2H 			//02CF 	2903
		ORG		02D0H
		INCR 	2CH, 1H 		//02D0 	1AAC
		LDWI 	80H 			//02D1 	0080
		INCR 	2DH, 1H 		//02D2 	1AAD
		INCR 	2DH, 1H 		//02D3 	1AAD
		SUBWR 	2DH, 0H 		//02D4 	122D
		RET 					//02D5 	1008
		LDR 	2CH, 0H 			//02D6 	182C
		STR 	73H 			//02D7 	10F3
		ORG		02D8H
		LDR 	2BH, 0H 			//02D8 	182B
		STR 	72H 			//02D9 	10F2
		CLRF 	74H 			//02DA 	11F4
		RET 					//02DB 	1008

		//;MEM_DRV.C: 21: EECON1 |=(0x1<<4 );
		BSR 	15H, 4H 			//02DC 	2615

		//;MEM_DRV.C: 22: Unlock_Flash();
		LCALL 	274H 			//02DD 	3274
		MOVLP 	1H 			//02DE 	0181

		//;MEM_DRV.C: 23: while(EECON1 & (0x1<<1 ));
		MOVLB 	3H 			//02DF 	1023
		ORG		02E0H
		BTSS 	15H, 1H 		//02E0 	2C95
		RET 					//02E1 	1008
		LJUMP 	2DFH 			//02E2 	3ADF

		//;USART_DRV.C: 38: unsigned char a;
		//;USART_DRV.C: 39: for(a=0;a<10;a++)
		CLRF 	72H 			//02E3 	11F2

		//;USART_DRV.C: 40: {
		//;USART_DRV.C: 41: __nop();
		NOP 					//02E4 	1000
		LDWI 	AH 			//02E5 	000A
		INCR 	72H, 1H 		//02E6 	1AF2
		SUBWR 	72H, 0H 		//02E7 	1272
		ORG		02E8H
		BTSC 	3H, 0H 			//02E8 	2803
		RET 					//02E9 	1008
		LJUMP 	2E4H 			//02EA 	3AE4
		ORG		0300H
		MOVLP 	1H 			//0300 	0181
		LJUMP 	14FH 			//0301 	394F
		MOVLP 	1H 			//0302 	0181
		LJUMP 	14FH 			//0303 	394F
		MOVLP 	1H 			//0304 	0181
		LJUMP 	14FH 			//0305 	394F
		MOVLP 	1H 			//0306 	0181
		LJUMP 	14FH 			//0307 	394F
		ORG		0308H
		MOVLP 	1H 			//0308 	0181
		LJUMP 	14FH 			//0309 	394F
		MOVLP 	1H 			//030A 	0181
		LJUMP 	14FH 			//030B 	394F
		MOVLP 	1H 			//030C 	0181
		LJUMP 	14FH 			//030D 	394F
		MOVLP 	1H 			//030E 	0181
		LJUMP 	14FH 			//030F 	394F
		ORG		0310H
		MOVLP 	1H 			//0310 	0181
		LJUMP 	12AH 			//0311 	392A
		MOVLP 	1H 			//0312 	0181
		LJUMP 	130H 			//0313 	3930
		MOVLP 	1H 			//0314 	0181
		LJUMP 	132H 			//0315 	3932
		MOVLP 	1H 			//0316 	0181
		LJUMP 	134H 			//0317 	3934
		ORG		0318H
		MOVLP 	1H 			//0318 	0181
		LJUMP 	136H 			//0319 	3936
		MOVLP 	1H 			//031A 	0181
		LJUMP 	138H 			//031B 	3938
		MOVLP 	1H 			//031C 	0181
		LJUMP 	13AH 			//031D 	393A
		MOVLP 	1H 			//031E 	0181
		LJUMP 	13CH 			//031F 	393C
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
