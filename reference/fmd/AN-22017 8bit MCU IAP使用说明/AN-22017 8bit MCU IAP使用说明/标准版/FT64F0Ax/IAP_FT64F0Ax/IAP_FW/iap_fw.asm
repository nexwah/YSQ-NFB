//Deviec:FT61F0AX
//-----------------------Variable---------------------------------
		_iap_databuf		EQU		236BH
//		Power_On_App_Check@CRC_Eeprom		EQU		34H
//		EEPROMread@EEAddr		EQU		2CH
//		EEPROMread@ReEEPROMread		EQU		2DH
//		EEPROMread@EEAddr		EQU		BA000H
//		All_Page_Read_CRC@iap_addr		EQU		32H
//		CRC16_CCITT@data		EQU		30H
//		CRC16_CCITT@i		EQU		31H
//		CRC16_CCITT@data		EQU		BA000H
//		user_isr@iap_addr		EQU		29H
//		user_isr@i		EQU		2BH
//		iap_usart_send@data		EQU		72H
//		iap_usart_send@data		EQU		C00000H
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

		//;IAP_FW.C: 165: user_isr();
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
		MOVLP 	2H 			//0029 	0182
		LCALL 	2FBH 			//002A 	32FB
		MOVLP 	0H 			//002B 	0180
		ORG		002CH
		BCR 	7EH, 0H 			//002C 	207E
		MOVLB 	0H 			//002D 	1020
		LJUMP 	2FH 			//002E 	382F

		//;IAP_FW.C: 345: iap_usart_init();
		LCALL 	38H 			//002F 	3038
		MOVLP 	0H 			//0030 	0180

		//;IAP_FW.C: 346: Power_On_App_Check();
		LCALL 	4CH 			//0031 	304C

		//;IAP_FW.C: 348: GIE=1;
		BSR 	BH, 7H 			//0032 	278B

		//;IAP_FW.C: 349: PEIE=1;
		BSR 	BH, 6H 			//0033 	270B
		ORG		0034H

		//;IAP_FW.C: 351: if(read_flag !=1)
		BTSS 	20H, 0H 		//0034 	2C20
		LJUMP 	400H 			//0035 	3C00

		//;IAP_FW.C: 354: }
		//;IAP_FW.C: 355: while(1)
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

		//;USART_DRV.C: 10: AFP0 = 0B01000000;
		LDWI 	40H 			//003D 	0040
		MOVLB 	3H 			//003E 	1023
		STR 	1EH 			//003F 	109E

		//;USART_DRV.C: 11: AFP1 = 0B01000000;
		STR 	1FH 			//0040 	109F

		//;USART_DRV.C: 13: TRISB &= ~(0X1<<6 );
		MOVLB 	1H 			//0041 	1021
		BCR 	DH, 6H 			//0042 	230D

		//;USART_DRV.C: 17: UR1DLL=9;
		LDWI 	9H 			//0043 	0009
		ORG		0044H
		MOVLB 	9H 			//0044 	1029
		STR 	14H 			//0045 	1094

		//;USART_DRV.C: 20: UR1LCR=(0x1 );
		LDWI 	1H 			//0046 	0001
		STR 	FH 			//0047 	108F

		//;USART_DRV.C: 22: UR1MCR=(0X1<<4 )|(0x1<<3 );
		LDWI 	18H 			//0048 	0018
		STR 	11H 			//0049 	1091

		//;USART_DRV.C: 24: UR1RXNE |= (0X1<<0 );
		BSR 	EH, 0H 			//004A 	240E
		RET 					//004B 	1008
		ORG		004CH

		//;IAP_FW.C: 90: unsigned int CRC_Eeprom;
		//;IAP_FW.C: 92: count=0;
		MOVLB 	0H 			//004C 	1020
		LDWI 	0H 			//004D 	0000
		CLRF 	21H 			//004E 	11A1

		//;IAP_FW.C: 93: flag=0;
		CLRF 	20H 			//004F 	11A0

		//;IAP_FW.C: 95: CRC_Eeprom=EEPROMread(0);
		LCALL 	68H 			//0050 	3068
		MOVLP 	0H 			//0051 	0180
		STR 	34H 			//0052 	10B4
		CLRF 	35H 			//0053 	11B5
		ORG		0054H

		//;IAP_FW.C: 96: CRC_Eeprom= CRC_Eeprom << 8;
		STR 	35H 			//0054 	10B5
		LDWI 	1H 			//0055 	0001
		CLRF 	34H 			//0056 	11B4

		//;IAP_FW.C: 97: CRC_Eeprom= CRC_Eeprom + EEPROMread(1);
		LCALL 	68H 			//0057 	3068
		MOVLP 	0H 			//0058 	0180
		ADDWR 	34H, 1H 		//0059 	17B4
		BTSC 	3H, 0H 			//005A 	2803
		INCR 	35H, 1H 		//005B 	1AB5
		ORG		005CH

		//;IAP_FW.C: 99: All_Page_Read_CRC();
		LCALL 	7BH 			//005C 	307B
		MOVLP 	0H 			//005D 	0180

		//;IAP_FW.C: 100: read_flag=1;
		BSR 	20H, 0H 			//005E 	2420

		//;IAP_FW.C: 101: if(CRC_Eeprom == CRC_16)
		LDR 	24H, 0H 			//005F 	1824
		XORWR 	35H, 0H 		//0060 	1635
		BTSS 	3H, 2H 			//0061 	2D03
		LJUMP 	65H 			//0062 	3865
		LDR 	23H, 0H 			//0063 	1823
		ORG		0064H
		XORWR 	34H, 0H 		//0064 	1634
		BTSC 	3H, 2H 			//0065 	2903

		//;IAP_FW.C: 102: {
		//;IAP_FW.C: 103: read_flag=0;
		BCR 	20H, 0H 			//0066 	2020
		RET 					//0067 	1008
		STR 	2CH 			//0068 	10AC

		//;MEM_DRV.C: 50: unsigned char ReEEPROMread;
		//;MEM_DRV.C: 52: EEADRL = EEAddr;
		MOVLB 	3H 			//0069 	1023
		STR 	11H 			//006A 	1091

		//;MEM_DRV.C: 54: EEPGD=0;
		BCR 	15H, 7H 			//006B 	2395
		ORG		006CH

		//;MEM_DRV.C: 55: CFGS=0;
		BCR 	15H, 6H 			//006C 	2315

		//;MEM_DRV.C: 56: RD = 1;
		BSR 	15H, 0H 			//006D 	2415

		//;MEM_DRV.C: 57: __nop();
		NOP 					//006E 	1000

		//;MEM_DRV.C: 58: __nop();
		NOP 					//006F 	1000

		//;MEM_DRV.C: 59: __nop();
		NOP 					//0070 	1000

		//;MEM_DRV.C: 60: __nop();
		NOP 					//0071 	1000

		//;MEM_DRV.C: 61: ReEEPROMread = EEDATL;
		MOVLB 	3H 			//0072 	1023
		LDR 	13H, 0H 			//0073 	1813
		ORG		0074H
		MOVLB 	0H 			//0074 	1020
		STR 	2DH 			//0075 	10AD

		//;MEM_DRV.C: 62: RD=0;
		MOVLB 	3H 			//0076 	1023
		BCR 	15H, 0H 			//0077 	2015

		//;MEM_DRV.C: 63: return ReEEPROMread;
		MOVLB 	0H 			//0078 	1020
		LDR 	2DH, 0H 			//0079 	182D
		RET 					//007A 	1008

		//;IAP_FW.C: 61: unsigned int iap_addr;
		//;IAP_FW.C: 62: CRC_16 = 0;
		//;IAP_FW.C: 63: EECON1 = (0x1<<7 )|(0X1<<2 );
		LCALL 	115H 			//007B 	3115
		ORG		007CH
		MOVLP 	0H 			//007C 	0180
		STR 	15H 			//007D 	1095

		//;IAP_FW.C: 64: for(iap_addr=0X400;iap_addr<0x2800;iap_addr++)
		MOVLB 	0H 			//007E 	1020
		LDWI 	4H 			//007F 	0004
		CLRF 	32H 			//0080 	11B2
		STR 	33H 			//0081 	10B3

		//;IAP_FW.C: 65: {
		//;IAP_FW.C: 66: EEADRH = iap_addr>>8;
		LDR 	33H, 0H 			//0082 	1833
		MOVLB 	3H 			//0083 	1023
		ORG		0084H
		STR 	12H 			//0084 	1092

		//;IAP_FW.C: 67: EEADRL = iap_addr>>0;
		MOVLB 	0H 			//0085 	1020
		LDR 	32H, 0H 			//0086 	1832
		MOVLB 	3H 			//0087 	1023
		STR 	11H 			//0088 	1091

		//;IAP_FW.C: 68: iap_mem_rd();
		LCALL 	BCH 			//0089 	30BC
		MOVLP 	0H 			//008A 	0180

		//;IAP_FW.C: 69: CRC16_CCITT(EEDATL);
		LDR 	13H, 0H 			//008B 	1813
		ORG		008CH
		LCALL 	9DH 			//008C 	309D
		MOVLP 	0H 			//008D 	0180

		//;IAP_FW.C: 70: CRC16_CCITT(EEDATH);
		MOVLB 	3H 			//008E 	1023
		LDR 	14H, 0H 			//008F 	1814
		LCALL 	9DH 			//0090 	309D
		MOVLP 	0H 			//0091 	0180
		INCR 	32H, 1H 		//0092 	1AB2
		BTSC 	3H, 2H 			//0093 	2903
		ORG		0094H
		INCR 	33H, 1H 		//0094 	1AB3
		LDWI 	28H 			//0095 	0028
		SUBWR 	33H, 0H 		//0096 	1233
		LDWI 	0H 			//0097 	0000
		BTSC 	3H, 2H 			//0098 	2903
		SUBWR 	32H, 0H 		//0099 	1232
		BTSC 	3H, 0H 			//009A 	2803
		RET 					//009B 	1008
		ORG		009CH
		LJUMP 	82H 			//009C 	3882
		MOVLB 	0H 			//009D 	1020
		STR 	30H 			//009E 	10B0

		//;IAP_FW.C: 46: unsigned char i;
		//;IAP_FW.C: 48: CRC_16 ^= data;
		XORWR 	23H, 1H 		//009F 	16A3

		//;IAP_FW.C: 50: for(i = 0;i < 8;i++)
		CLRF 	31H 			//00A0 	11B1

		//;IAP_FW.C: 51: {
		//;IAP_FW.C: 52: if(CRC_16 & 0x01)
		BTSS 	23H, 0H 		//00A1 	2C23
		LJUMP 	B4H 			//00A2 	38B4

		//;IAP_FW.C: 53: CRC_16 = (CRC_16 >> 1) ^ 0x8408;
		LDR 	24H, 0H 			//00A3 	1824
		ORG		00A4H
		STR 	2DH 			//00A4 	10AD
		LDR 	23H, 0H 			//00A5 	1823
		STR 	2CH 			//00A6 	10AC
		LDWI 	8H 			//00A7 	0008
		LSRF 	2DH, 1H 		//00A8 	06AD
		RRR 	2CH, 1H 			//00A9 	1CAC
		XORWR 	2CH, 0H 		//00AA 	162C
		STR 	2EH 			//00AB 	10AE
		ORG		00ACH
		LDWI 	84H 			//00AC 	0084
		XORWR 	2DH, 0H 		//00AD 	162D
		STR 	2FH 			//00AE 	10AF
		LDR 	2EH, 0H 			//00AF 	182E
		STR 	23H 			//00B0 	10A3
		LDR 	2FH, 0H 			//00B1 	182F
		STR 	24H 			//00B2 	10A4
		LJUMP 	B6H 			//00B3 	38B6
		ORG		00B4H

		//;IAP_FW.C: 54: else
		//;IAP_FW.C: 55: CRC_16 = CRC_16 >> 1;
		LSRF 	24H, 1H 		//00B4 	06A4
		RRR 	23H, 1H 			//00B5 	1CA3
		LDWI 	8H 			//00B6 	0008
		INCR 	31H, 1H 		//00B7 	1AB1
		SUBWR 	31H, 0H 		//00B8 	1231
		BTSC 	3H, 0H 			//00B9 	2803
		RET 					//00BA 	1008
		LJUMP 	A1H 			//00BB 	38A1
		ORG		00BCH

		//;MEM_DRV.C: 36: EECON1 |=(0x1<<0 );
		BSR 	15H, 0H 			//00BC 	2415
		NOP 					//00BD 	1000

		//;MEM_DRV.C: 38: while(EECON1 & (0x1<<0 ));
		MOVLB 	3H 			//00BE 	1023
		BTSC 	15H, 0H 		//00BF 	2815
		LJUMP 	BEH 			//00C0 	38BE
		RET 					//00C1 	1008

		//;IAP_FW.C: 75: All_Page_Read_CRC();
		LCALL 	D7H 			//00C2 	30D7

		//;IAP_FW.C: 77: EECON1 &=~(0x1<<7 );
		MOVLB 	3H 			//00C3 	1023
		ORG		00C4H
		BCR 	15H, 7H 			//00C4 	2395

		//;IAP_FW.C: 78: EECON1 =(0X1<<2 );
		LDWI 	4H 			//00C5 	0004
		STR 	15H 			//00C6 	1095

		//;IAP_FW.C: 80: EEADRL=0;
		CLRF 	11H 			//00C7 	1191

		//;IAP_FW.C: 81: EEDATL=CRC_H;
		MOVLB 	0H 			//00C8 	1020
		LDR 	24H, 0H 			//00C9 	1824
		MOVLB 	3H 			//00CA 	1023
		STR 	13H 			//00CB 	1093
		ORG		00CCH

		//;IAP_FW.C: 82: iap_mem_prog();
		MOVLP 	2H 			//00CC 	0182
		LCALL 	253H 			//00CD 	3253
		MOVLP 	0H 			//00CE 	0180

		//;IAP_FW.C: 83: EEADRL=1;
		LDWI 	1H 			//00CF 	0001
		STR 	11H 			//00D0 	1091

		//;IAP_FW.C: 84: EEDATL=CRC_L;
		MOVLB 	0H 			//00D1 	1020
		LDR 	23H, 0H 			//00D2 	1823
		MOVLB 	3H 			//00D3 	1023
		ORG		00D4H
		STR 	13H 			//00D4 	1093

		//;IAP_FW.C: 85: iap_mem_prog();
		MOVLP 	2H 			//00D5 	0182
		LJUMP 	253H 			//00D6 	3A53

		//;IAP_FW.C: 61: unsigned int iap_addr;
		//;IAP_FW.C: 62: CRC_16 = 0;
		//;IAP_FW.C: 63: EECON1 = (0x1<<7 )|(0X1<<2 );
		LCALL 	115H 			//00D7 	3115
		STR 	15H 			//00D8 	1095

		//;IAP_FW.C: 64: for(iap_addr=0X400;iap_addr<0x2800;iap_addr++)
		LDWI 	4H 			//00D9 	0004
		CLRF 	78H 			//00DA 	11F8
		STR 	79H 			//00DB 	10F9
		ORG		00DCH

		//;IAP_FW.C: 65: {
		//;IAP_FW.C: 66: EEADRH = iap_addr>>8;
		LDR 	79H, 0H 			//00DC 	1879
		MOVLB 	3H 			//00DD 	1023
		STR 	12H 			//00DE 	1092

		//;IAP_FW.C: 67: EEADRL = iap_addr>>0;
		LDR 	78H, 0H 			//00DF 	1878
		STR 	11H 			//00E0 	1091

		//;IAP_FW.C: 68: iap_mem_rd();
		MOVLP 	2H 			//00E1 	0182
		LCALL 	282H 			//00E2 	3282
		MOVLP 	0H 			//00E3 	0180
		ORG		00E4H

		//;IAP_FW.C: 69: CRC16_CCITT(EEDATL);
		LDR 	13H, 0H 			//00E4 	1813
		LCALL 	F6H 			//00E5 	30F6
		MOVLP 	0H 			//00E6 	0180

		//;IAP_FW.C: 70: CRC16_CCITT(EEDATH);
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

		//;IAP_FW.C: 46: unsigned char i;
		//;IAP_FW.C: 48: CRC_16 ^= data;
		MOVLB 	0H 			//00F7 	1020
		XORWR 	23H, 1H 		//00F8 	16A3

		//;IAP_FW.C: 50: for(i = 0;i < 8;i++)
		CLRF 	77H 			//00F9 	11F7

		//;IAP_FW.C: 51: {
		//;IAP_FW.C: 52: if(CRC_16 & 0x01)
		BTSS 	23H, 0H 		//00FA 	2C23
		LJUMP 	10DH 			//00FB 	390D
		ORG		00FCH

		//;IAP_FW.C: 53: CRC_16 = (CRC_16 >> 1) ^ 0x8408;
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

		//;IAP_FW.C: 54: else
		//;IAP_FW.C: 55: CRC_16 = CRC_16 >> 1;
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

		//;IAP_FW.C: 170: if(UR1RXNE && UR1RXNEF)
		MOVLB 	9H 			//011A 	1029
		BTSC 	EH, 0H 			//011B 	280E
		ORG		011CH
		BTSS 	12H, 0H 		//011C 	2C12
		LJUMP 	218H 			//011D 	3A18

		//;IAP_FW.C: 171: {
		//;IAP_FW.C: 172: if(UR1FEF==1)
		BTSC 	12H, 3H 		//011E 	2992

		//;IAP_FW.C: 173: {UR1FEF=0;}
		BCR 	12H, 3H 			//011F 	2192

		//;IAP_FW.C: 174: iap_recdata= UR1DATAL;
		LDR 	CH, 0H 			//0120 	180C
		MOVLB 	0H 			//0121 	1020
		STR 	22H 			//0122 	10A2

		//;IAP_FW.C: 175: count++;
		INCR 	21H, 1H 		//0123 	1AA1
		ORG		0124H

		//;IAP_FW.C: 176: switch(count)
		LJUMP 	13DH 			//0124 	393D

		//;IAP_FW.C: 179: if(iap_recdata != 0x46)
		LDWI 	46H 			//0125 	0046
		XORWR 	22H, 0H 		//0126 	1622
		BTSC 	3H, 2H 			//0127 	2903
		LJUMP 	14AH 			//0128 	394A

		//;IAP_FW.C: 180: {iap_err_flag=1;}
		BSR 	20H, 1H 			//0129 	24A0
		LJUMP 	14AH 			//012A 	394A

		//;IAP_FW.C: 183: if(iap_recdata != 0x4D)
		LDWI 	4DH 			//012B 	004D
		ORG		012CH
		LJUMP 	126H 			//012C 	3926

		//;IAP_FW.C: 187: if(iap_recdata!= 0x44)
		LDWI 	44H 			//012D 	0044
		LJUMP 	126H 			//012E 	3926

		//;IAP_FW.C: 191: if(iap_recdata != 0x49)
		LDWI 	49H 			//012F 	0049
		LJUMP 	126H 			//0130 	3926

		//;IAP_FW.C: 195: if(iap_recdata != 0x41)
		LDWI 	41H 			//0131 	0041
		LJUMP 	126H 			//0132 	3926

		//;IAP_FW.C: 199: if(iap_recdata != 0x50)
		LDWI 	50H 			//0133 	0050
		ORG		0134H
		LJUMP 	126H 			//0134 	3926

		//;IAP_FW.C: 203: if(iap_recdata!= 0x55)
		LDWI 	55H 			//0135 	0055
		LJUMP 	126H 			//0136 	3926

		//;IAP_FW.C: 207: if(iap_recdata!= 0xaa)
		LDWI 	AAH 			//0137 	00AA
		XORWR 	22H, 0H 		//0138 	1622
		BTSS 	3H, 2H 			//0139 	2D03
		LJUMP 	129H 			//013A 	3929

		//;IAP_FW.C: 209: else
		//;IAP_FW.C: 210: {iap_ok_flag=1;}
		BSR 	20H, 2H 			//013B 	2520
		ORG		013CH
		LJUMP 	14AH 			//013C 	394A
		LDR 	21H, 0H 			//013D 	1821
		ADDWI 	FFH 			//013E 	0EFF
		BTSS 	3H, 0H 			//013F 	2C03
		LJUMP 	129H 			//0140 	3929
		STR 	4H 			//0141 	1084
		LDWI 	8H 			//0142 	0008
		SUBWR 	4H, 0H 		//0143 	1204
		ORG		0144H
		BTSC 	3H, 0H 			//0144 	2803
		LJUMP 	129H 			//0145 	3929
		MOVLP 	2H 			//0146 	0182
		LSLF 	4H, 0H 			//0147 	0504
		ADDWI 	EBH 			//0148 	0EEB
		STR 	2H 			//0149 	1082

		//;IAP_FW.C: 216: if(iap_ok_flag==1)
		BTSS 	20H, 2H 		//014A 	2D20
		LJUMP 	20FH 			//014B 	3A0F
		ORG		014CH

		//;IAP_FW.C: 217: {
		//;IAP_FW.C: 218: count=0;
		CLRF 	21H 			//014C 	11A1

		//;IAP_FW.C: 219: iap_ok_flag =0;
		BCR 	20H, 2H 			//014D 	2120

		//;IAP_FW.C: 220: unsigned char i ;
		//;IAP_FW.C: 221: unsigned int iap_addr;
		//;IAP_FW.C: 222: UR1RXNE &= ~(0X1<<0 );
		MOVLB 	9H 			//014E 	1029
		BCR 	EH, 0H 			//014F 	200E

		//;IAP_FW.C: 223: EECON1 = (0x1<<7 )|(0X1<<2 );
		LDWI 	84H 			//0150 	0084
		MOVLB 	3H 			//0151 	1023
		STR 	15H 			//0152 	1095

		//;IAP_FW.C: 224: iap_usart_send(0xaa);
		LDWI 	AAH 			//0153 	00AA
		ORG		0154H
		LCALL 	24CH 			//0154 	324C
		MOVLP 	1H 			//0155 	0181

		//;IAP_FW.C: 229: switch(iap_databuf[0])
		LJUMP 	1FBH 			//0156 	39FB

		//;IAP_FW.C: 230: {
		//;IAP_FW.C: 231: case 0X05:
		//;IAP_FW.C: 232: for(i=1;i<133;i++)
		MOVLB 	0H 			//0157 	1020
		CLRF 	2BH 			//0158 	11AB
		INCR 	2BH, 1H 		//0159 	1AAB

		//;IAP_FW.C: 233: {
		//;IAP_FW.C: 234: iap_databuf[i]=iap_usart_rec();
		LCALL 	25AH 			//015A 	325A
		MOVLP 	1H 			//015B 	0181
		ORG		015CH
		MOVLB 	0H 			//015C 	1020
		STR 	25H 			//015D 	10A5
		LDR 	2BH, 0H 			//015E 	182B
		ADDWI 	6BH 			//015F 	0E6B
		STR 	26H 			//0160 	10A6
		LDWI 	23H 			//0161 	0023
		CLRF 	27H 			//0162 	11A7
		ADDWFC 	27H, 1H 		//0163 	0DA7
		ORG		0164H
		LDR 	26H, 0H 			//0164 	1826
		STR 	6H 			//0165 	1086
		LDR 	27H, 0H 			//0166 	1827
		STR 	7H 			//0167 	1087
		LDR 	25H, 0H 			//0168 	1825
		STR 	1H 			//0169 	1081
		LDWI 	85H 			//016A 	0085
		INCR 	2BH, 1H 		//016B 	1AAB
		ORG		016CH
		SUBWR 	2BH, 0H 		//016C 	122B
		BTSS 	3H, 0H 			//016D 	2C03
		LJUMP 	15AH 			//016E 	395A

		//;IAP_FW.C: 235: }
		//;IAP_FW.C: 236: CRC_16 = 0;
		CLRF 	23H 			//016F 	11A3
		CLRF 	24H 			//0170 	11A4

		//;IAP_FW.C: 237: for(i=0;i<131;i++)
		CLRF 	2BH 			//0171 	11AB

		//;IAP_FW.C: 238: {
		//;IAP_FW.C: 239: CRC16_CCITT(iap_databuf[i]);
		LDR 	2BH, 0H 			//0172 	182B
		ADDWI 	6BH 			//0173 	0E6B
		ORG		0174H
		STR 	6H 			//0174 	1086
		LDWI 	23H 			//0175 	0023
		CLRF 	7H 			//0176 	1187
		ADDWFC 	7H, 1H 		//0177 	0D87
		LDR 	1H, 0H 			//0178 	1801
		MOVLP 	0H 			//0179 	0180
		LCALL 	F6H 			//017A 	30F6
		MOVLP 	1H 			//017B 	0181
		ORG		017CH
		LDWI 	83H 			//017C 	0083
		INCR 	2BH, 1H 		//017D 	1AAB
		SUBWR 	2BH, 0H 		//017E 	122B
		BTSS 	3H, 0H 			//017F 	2C03
		LJUMP 	172H 			//0180 	3972

		//;IAP_FW.C: 240: }
		//;IAP_FW.C: 241: if((CRC_H !=iap_databuf[131]) || (CRC_L !=iap_databuf[132]))
		LDWI 	EEH 			//0181 	00EE
		STR 	6H 			//0182 	1086
		LDWI 	23H 			//0183 	0023
		ORG		0184H
		STR 	7H 			//0184 	1087
		LDR 	1H, 0H 			//0185 	1801
		XORWR 	24H, 0H 		//0186 	1624
		BTSS 	3H, 2H 			//0187 	2D03
		LJUMP 	1ECH 			//0188 	39EC
		LDWI 	EFH 			//0189 	00EF
		STR 	6H 			//018A 	1086
		LDR 	1H, 0H 			//018B 	1801
		ORG		018CH
		XORWR 	23H, 0H 		//018C 	1623
		BTSS 	3H, 2H 			//018D 	2D03
		LJUMP 	1ECH 			//018E 	39EC

		//;IAP_FW.C: 245: }
		//;IAP_FW.C: 246: iap_addr = iap_databuf[1];
		//;IAP_FW.C: 244: break;
		//;IAP_FW.C: 242: {
		//;IAP_FW.C: 243: iap_usart_send(0x44);
		LDWI 	6BH 			//018F 	006B
		STR 	6H 			//0190 	1086

		//;IAP_FW.C: 247: iap_addr = ((iap_addr<<8)+iap_databuf[2]);
		LCALL 	2AFH 			//0191 	32AF
		MOVLP 	1H 			//0192 	0181

		//;IAP_FW.C: 248: if(iap_addr < 0X400)
		LDWI 	4H 			//0193 	0004
		ORG		0194H
		SUBWR 	2AH, 0H 		//0194 	122A
		LDWI 	0H 			//0195 	0000
		BTSC 	3H, 2H 			//0196 	2903
		SUBWR 	29H, 0H 		//0197 	1229
		BTSS 	3H, 0H 			//0198 	2C03
		LJUMP 	1ECH 			//0199 	39EC

		//;IAP_FW.C: 252: }
		//;IAP_FW.C: 253: if(data_check_erase_or_not(iap_addr,1))
		//;IAP_FW.C: 251: break;
		//;IAP_FW.C: 249: {
		//;IAP_FW.C: 250: iap_usart_send(0x44);
		LDR 	2AH, 0H 			//019A 	182A
		LCALL 	2D6H 			//019B 	32D6
		ORG		019CH
		MOVLP 	1H 			//019C 	0181
		LCALL 	21AH 			//019D 	321A
		MOVLP 	1H 			//019E 	0181
		XORWI 	0H 			//019F 	0A00
		BTSS 	3H, 2H 			//01A0 	2D03
		LJUMP 	1DFH 			//01A1 	39DF

		//;IAP_FW.C: 261: else
		//;IAP_FW.C: 262: {
		//;IAP_FW.C: 263: if(data_check_erase_or_not(iap_addr,0))
		//;IAP_FW.C: 260: }
		//;IAP_FW.C: 258: }
		//;IAP_FW.C: 259: iap_usart_send(0X00);
		//;IAP_FW.C: 256: {
		//;IAP_FW.C: 257: Eeprom_Write_Crc();
		//;IAP_FW.C: 254: {
		//;IAP_FW.C: 255: if(iap_addr == (0x2800-0x40))
		MOVLB 	0H 			//01A2 	1020
		LDR 	2AH, 0H 			//01A3 	182A
		ORG		01A4H
		STR 	73H 			//01A4 	10F3
		LDR 	29H, 0H 			//01A5 	1829
		STR 	72H 			//01A6 	10F2
		CLRF 	74H 			//01A7 	11F4
		LCALL 	21AH 			//01A8 	321A
		MOVLP 	1H 			//01A9 	0181
		XORWI 	0H 			//01AA 	0A00
		BTSC 	3H, 2H 			//01AB 	2903
		ORG		01ACH
		LJUMP 	1BBH 			//01AC 	39BB

		//;IAP_FW.C: 264: {
		//;IAP_FW.C: 265: for(i=0;i<128;i=i+2)
		MOVLB 	0H 			//01AD 	1020
		CLRF 	2BH 			//01AE 	11AB

		//;IAP_FW.C: 266: {
		//;IAP_FW.C: 267: EEADRH = iap_addr>>8;
		LDR 	2AH, 0H 			//01AF 	182A
		MOVLB 	3H 			//01B0 	1023
		STR 	12H 			//01B1 	1092

		//;IAP_FW.C: 268: EEADRL = iap_addr>>0;
		//;IAP_FW.C: 269: EEDATH = iap_databuf[i+3];
		//;IAP_FW.C: 270: EEDATL = iap_databuf[i+4];
		LCALL 	288H 			//01B2 	3288
		MOVLP 	1H 			//01B3 	0181
		ORG		01B4H

		//;IAP_FW.C: 271: iap_mem_prog();
		LCALL 	253H 			//01B4 	3253
		MOVLP 	1H 			//01B5 	0181

		//;IAP_FW.C: 272: iap_addr++;
		LCALL 	2CDH 			//01B6 	32CD
		MOVLP 	1H 			//01B7 	0181
		BTSC 	3H, 0H 			//01B8 	2803
		LJUMP 	1D2H 			//01B9 	39D2
		LJUMP 	1AFH 			//01BA 	39AF

		//;IAP_FW.C: 275: else
		//;IAP_FW.C: 276: {
		//;IAP_FW.C: 277: EEADRH = iap_addr>>8;
		MOVLB 	0H 			//01BB 	1020
		ORG		01BCH
		LDR 	2AH, 0H 			//01BC 	182A
		MOVLB 	3H 			//01BD 	1023
		STR 	12H 			//01BE 	1092

		//;IAP_FW.C: 278: EEADRL = iap_addr>>0;
		MOVLB 	0H 			//01BF 	1020
		LDR 	29H, 0H 			//01C0 	1829
		MOVLB 	3H 			//01C1 	1023
		STR 	11H 			//01C2 	1091

		//;IAP_FW.C: 279: iap_mem_erase();
		LCALL 	2DCH 			//01C3 	32DC
		ORG		01C4H
		MOVLP 	1H 			//01C4 	0181

		//;IAP_FW.C: 280: for(i=0;i<128;i=i+2)
		MOVLB 	0H 			//01C5 	1020
		CLRF 	2BH 			//01C6 	11AB

		//;IAP_FW.C: 281: {
		//;IAP_FW.C: 282: EEADRH = iap_addr>>8;
		LDR 	2AH, 0H 			//01C7 	182A
		MOVLB 	3H 			//01C8 	1023
		STR 	12H 			//01C9 	1092

		//;IAP_FW.C: 283: EEADRL = iap_addr>>0;
		//;IAP_FW.C: 284: EEDATH = iap_databuf[i+3];
		//;IAP_FW.C: 285: EEDATL = iap_databuf[i+4];
		LCALL 	288H 			//01CA 	3288
		MOVLP 	1H 			//01CB 	0181
		ORG		01CCH

		//;IAP_FW.C: 286: iap_mem_prog();
		LCALL 	253H 			//01CC 	3253
		MOVLP 	1H 			//01CD 	0181

		//;IAP_FW.C: 287: iap_addr++;
		LCALL 	2CDH 			//01CE 	32CD
		MOVLP 	1H 			//01CF 	0181
		BTSS 	3H, 0H 			//01D0 	2C03
		LJUMP 	1C7H 			//01D1 	39C7

		//;IAP_FW.C: 288: }
		//;IAP_FW.C: 289: }
		//;IAP_FW.C: 290: iap_addr = iap_databuf[1];
		LDWI 	6BH 			//01D2 	006B
		STR 	6H 			//01D3 	1086
		ORG		01D4H
		LDWI 	23H 			//01D4 	0023
		STR 	7H 			//01D5 	1087

		//;IAP_FW.C: 291: iap_addr = ((iap_addr<<8)+iap_databuf[2]);
		LCALL 	2AFH 			//01D6 	32AF
		MOVLP 	1H 			//01D7 	0181

		//;IAP_FW.C: 292: if(data_check_erase_or_not(iap_addr,1))
		LCALL 	2D6H 			//01D8 	32D6
		MOVLP 	1H 			//01D9 	0181
		LCALL 	21AH 			//01DA 	321A
		MOVLP 	1H 			//01DB 	0181
		ORG		01DCH
		XORWI 	0H 			//01DC 	0A00
		BTSC 	3H, 2H 			//01DD 	2903
		LJUMP 	1ECH 			//01DE 	39EC

		//;IAP_FW.C: 293: {
		//;IAP_FW.C: 294: if(iap_addr == (0x2800-0x40))
		LDWI 	C0H 			//01DF 	00C0
		MOVLB 	0H 			//01E0 	1020
		XORWR 	29H, 0H 		//01E1 	1629
		LDWI 	27H 			//01E2 	0027
		BTSC 	3H, 2H 			//01E3 	2903
		ORG		01E4H
		XORWR 	2AH, 0H 		//01E4 	162A
		BTSS 	3H, 2H 			//01E5 	2D03
		LJUMP 	1EAH 			//01E6 	39EA

		//;IAP_FW.C: 295: {
		//;IAP_FW.C: 296: Eeprom_Write_Crc();
		MOVLP 	0H 			//01E7 	0180
		LCALL 	C2H 			//01E8 	30C2
		MOVLP 	1H 			//01E9 	0181

		//;IAP_FW.C: 297: }
		//;IAP_FW.C: 298: iap_usart_send(0X00);
		LDWI 	0H 			//01EA 	0000
		LJUMP 	154H 			//01EB 	3954
		ORG		01ECH

		//;IAP_FW.C: 299: }
		//;IAP_FW.C: 300: else
		//;IAP_FW.C: 301: {
		//;IAP_FW.C: 302: iap_usart_send(0x44);
		LDWI 	44H 			//01EC 	0044
		LJUMP 	154H 			//01ED 	3954

		//;IAP_FW.C: 307: iap_usart_send(0X00);
		LDWI 	0H 			//01EE 	0000
		LCALL 	24CH 			//01EF 	324C
		MOVLP 	1H 			//01F0 	0181

		//;IAP_FW.C: 308: iap_wait_tx_idle();
		LCALL 	275H 			//01F1 	3275
		MOVLP 	1H 			//01F2 	0181
		RESET 					//01F3 	1001
		ORG		01F4H

		//;IAP_FW.C: 310: break;
		LJUMP 	1FBH 			//01F4 	39FB

		//;IAP_FW.C: 313: iap_usart_send(0x44);
		LDWI 	44H 			//01F5 	0044
		LCALL 	24CH 			//01F6 	324C
		MOVLP 	1H 			//01F7 	0181

		//;IAP_FW.C: 314: iap_wait_tx_idle();
		LCALL 	275H 			//01F8 	3275
		MOVLP 	1H 			//01F9 	0181
		RESET 					//01FA 	1001

		//;IAP_FW.C: 316: break;
		//;IAP_FW.C: 226: {
		//;IAP_FW.C: 227: iap_databuf[0]=iap_usart_rec();
		LDWI 	6BH 			//01FB 	006B
		ORG		01FCH
		STR 	6H 			//01FC 	1086
		LDWI 	23H 			//01FD 	0023
		STR 	7H 			//01FE 	1087
		LCALL 	25AH 			//01FF 	325A
		MOVLP 	1H 			//0200 	0181
		MOVWI 	0H[1] 			//0201 	0FC0
		CLRWDT 			//0202 	1064
		LDWI 	6BH 			//0203 	006B
		ORG		0204H
		STR 	6H 			//0204 	1086
		LDWI 	23H 			//0205 	0023
		STR 	7H 			//0206 	1087
		LDR 	1H, 0H 			//0207 	1801
		XORWI 	5H 			//0208 	0A05
		BTSC 	3H, 2H 			//0209 	2903
		LJUMP 	157H 			//020A 	3957
		XORWI 	3H 			//020B 	0A03
		ORG		020CH
		BTSC 	3H, 2H 			//020C 	2903
		LJUMP 	1EEH 			//020D 	39EE
		LJUMP 	1F5H 			//020E 	39F5

		//;IAP_FW.C: 318: }
		//;IAP_FW.C: 319: }
		//;IAP_FW.C: 320: if(iap_err_flag==1)
		BTSS 	20H, 1H 		//020F 	2CA0
		RET 					//0210 	1008

		//;IAP_FW.C: 321: {
		//;IAP_FW.C: 322: count=0;
		CLRF 	21H 			//0211 	11A1

		//;IAP_FW.C: 323: iap_err_flag=0;
		BCR 	20H, 1H 			//0212 	20A0

		//;IAP_FW.C: 324: if(read_flag !=1)
		BTSC 	20H, 0H 		//0213 	2820
		ORG		0214H
		RET 					//0214 	1008

		//;IAP_FW.C: 325: {
		//;IAP_FW.C: 326: uart_rxnef=1;
		BSR 	20H, 3H 			//0215 	25A0
		LJUMP 	404H 			//0216 	3C04
		RET 					//0217 	1008
		LJUMP 	404H 			//0218 	3C04
		RET 					//0219 	1008

		//;IAP_FW.C: 109: unsigned char i ,j,k;
		//;IAP_FW.C: 110: for(i=0;i<64;i++)
		//+                          ck]
		CLRF 	7BH 			//021A 	11FB

		//;IAP_FW.C: 111: {
		//;IAP_FW.C: 112: EEADRH = addr>>8;
		LDR 	73H, 0H 			//021B 	1873
		ORG		021CH
		MOVLB 	3H 			//021C 	1023
		STR 	12H 			//021D 	1092

		//;IAP_FW.C: 113: EEADRL = addr>>0;
		LDR 	72H, 0H 			//021E 	1872
		STR 	11H 			//021F 	1091

		//;IAP_FW.C: 114: j = iap_databuf[i*2+3];
		LDR 	7BH, 0H 			//0220 	187B
		STR 	75H 			//0221 	10F5
		LDWI 	6EH 			//0222 	006E
		LCALL 	2BFH 			//0223 	32BF
		ORG		0224H
		MOVLP 	1H 			//0224 	0181
		STR 	79H 			//0225 	10F9

		//;IAP_FW.C: 115: k = iap_databuf[i*2+4];
		LDR 	7BH, 0H 			//0226 	187B
		STR 	75H 			//0227 	10F5
		LDWI 	6FH 			//0228 	006F
		LCALL 	2BFH 			//0229 	32BF
		MOVLP 	1H 			//022A 	0181
		STR 	7AH 			//022B 	10FA
		ORG		022CH

		//;IAP_FW.C: 116: iap_mem_rd();
		LCALL 	282H 			//022C 	3282
		MOVLP 	1H 			//022D 	0181

		//;IAP_FW.C: 117: if(mode == 0)
		LDR 	74H, 0H 			//022E 	1874
		BTSS 	3H, 2H 			//022F 	2D03
		LJUMP 	23BH 			//0230 	3A3B

		//;IAP_FW.C: 118: {
		//;IAP_FW.C: 119: if(((EEDATH & j) != j) || ((EEDATL & k) != k))
		LDR 	79H, 0H 			//0231 	1879
		ANDWR 	14H, 0H 		//0232 	1514
		STR 	75H 			//0233 	10F5
		ORG		0234H
		XORWR 	79H, 0H 		//0234 	1679
		BTSS 	3H, 2H 			//0235 	2D03
		RETW 	0H 			//0236 	0400
		LDR 	7AH, 0H 			//0237 	187A
		ANDWR 	13H, 0H 		//0238 	1513
		STR 	75H 			//0239 	10F5
		LJUMP 	240H 			//023A 	3A40

		//;IAP_FW.C: 124: else
		//;IAP_FW.C: 125: {
		//;IAP_FW.C: 126: if((EEDATH != j) || (EEDATL != k))
		LDR 	14H, 0H 			//023B 	1814
		ORG		023CH
		XORWR 	79H, 0H 		//023C 	1679
		BTSS 	3H, 2H 			//023D 	2D03
		RETW 	0H 			//023E 	0400
		LDR 	13H, 0H 			//023F 	1813
		XORWR 	7AH, 0H 		//0240 	167A
		BTSS 	3H, 2H 			//0241 	2D03

		//;IAP_FW.C: 120: {
		//;IAP_FW.C: 121: return 0;
		RETW 	0H 			//0242 	0400

		//;IAP_FW.C: 129: }
		//;IAP_FW.C: 130: }
		//;IAP_FW.C: 131: addr++;
		INCR 	72H, 1H 		//0243 	1AF2
		ORG		0244H
		BTSC 	3H, 2H 			//0244 	2903
		INCR 	73H, 1H 		//0245 	1AF3
		LDWI 	40H 			//0246 	0040
		INCR 	7BH, 1H 		//0247 	1AFB
		SUBWR 	7BH, 0H 		//0248 	127B
		BTSC 	3H, 0H 			//0249 	2803

		//;IAP_FW.C: 132: }
		//;IAP_FW.C: 133: return 1;
		RETW 	1H 			//024A 	0401
		LJUMP 	21BH 			//024B 	3A1B
		ORG		024CH
		STR 	72H 			//024C 	10F2

		//;USART_DRV.C: 46: while(!(UR1LSR & (0x1<<5 )));
		MOVLB 	9H 			//024D 	1029
		BTSS 	12H, 5H 		//024E 	2E92
		LJUMP 	24DH 			//024F 	3A4D

		//;USART_DRV.C: 47: UR1DATAL = data;
		LDR 	72H, 0H 			//0250 	1872
		STR 	CH 			//0251 	108C
		RET 					//0252 	1008

		//;MEM_DRV.C: 29: EECON1 &=~(0x1<<4 );
		BCR 	15H, 4H 			//0253 	2215
		ORG		0254H

		//;MEM_DRV.C: 30: Unlock_Flash();
		LCALL 	278H 			//0254 	3278
		MOVLP 	1H 			//0255 	0181

		//;MEM_DRV.C: 31: while(EECON1 & (0x1<<1 ));
		MOVLB 	3H 			//0256 	1023
		BTSC 	15H, 1H 		//0257 	2895
		LJUMP 	256H 			//0258 	3A56
		RET 					//0259 	1008

		//;USART_DRV.C: 52: unsigned int a;
		//;USART_DRV.C: 53: for(a=0;a<47200;a++)
		CLRF 	73H 			//025A 	11F3
		CLRF 	74H 			//025B 	11F4
		ORG		025CH

		//;USART_DRV.C: 54: {
		//;USART_DRV.C: 55: DelayUs();
		LCALL 	2E3H 			//025C 	32E3
		MOVLP 	1H 			//025D 	0181

		//;USART_DRV.C: 56: if(((0x1 << 0 ) & UR1LSR))
		MOVLB 	9H 			//025E 	1029
		BTSS 	12H, 0H 		//025F 	2C12
		LJUMP 	26AH 			//0260 	3A6A

		//;USART_DRV.C: 57: {
		//;USART_DRV.C: 58: if((UR1LSR & (0x1<<2 )) || (UR1LSR & (0x1<<3 )))
		BTSC 	12H, 2H 		//0261 	2912
		LJUMP 	265H 			//0262 	3A65
		BTSS 	12H, 3H 		//0263 	2D92
		ORG		0264H
		LJUMP 	268H 			//0264 	3A68

		//;USART_DRV.C: 59: {
		//;USART_DRV.C: 60: UR1LSR = ~((0x1<<2 )|(0x1<<3 ));
		LDWI 	F3H 			//0265 	00F3
		STR 	12H 			//0266 	1092

		//;USART_DRV.C: 61: return 0xff;
		RETW 	FFH 			//0267 	04FF

		//;USART_DRV.C: 63: else
		//;USART_DRV.C: 64: {
		//;USART_DRV.C: 65: return UR1DATAL;
		LDR 	CH, 0H 			//0268 	180C
		RET 					//0269 	1008
		INCR 	73H, 1H 		//026A 	1AF3
		BTSC 	3H, 2H 			//026B 	2903
		ORG		026CH
		INCR 	74H, 1H 		//026C 	1AF4
		LDWI 	B8H 			//026D 	00B8
		SUBWR 	74H, 0H 		//026E 	1274
		LDWI 	60H 			//026F 	0060
		BTSC 	3H, 2H 			//0270 	2903
		SUBWR 	73H, 0H 		//0271 	1273
		BTSC 	3H, 0H 			//0272 	2803

		//;USART_DRV.C: 66: }
		//;USART_DRV.C: 67: }
		//;USART_DRV.C: 68: }
		//;USART_DRV.C: 69: return 0xff;
		RETW 	FFH 			//0273 	04FF
		ORG		0274H
		LJUMP 	25CH 			//0274 	3A5C

		//;USART_DRV.C: 76: while(!(UR1TC & (0x1<<0 )));
		BTSC 	1CH, 0H 		//0275 	281C
		RET 					//0276 	1008
		LJUMP 	275H 			//0277 	3A75
		LDWI 	3H 			//0278 	0003
		STR 	8H 			//0279 	1088
		LDWI 	55H 			//027A 	0055
		STR 	16H 			//027B 	1096
		ORG		027CH
		LDWI 	AAH 			//027C 	00AA
		STR 	16H 			//027D 	1096
		BSR 	15H, 1H 			//027E 	2495
		NOP 					//027F 	1000
		NOP 					//0280 	1000
		RET 					//0281 	1008

		//;MEM_DRV.C: 36: EECON1 |=(0x1<<0 );
		BSR 	15H, 0H 			//0282 	2415
		NOP 					//0283 	1000
		ORG		0284H

		//;MEM_DRV.C: 38: while(EECON1 & (0x1<<0 ));
		MOVLB 	3H 			//0284 	1023
		BTSC 	15H, 0H 		//0285 	2815
		LJUMP 	284H 			//0286 	3A84
		RET 					//0287 	1008
		MOVLB 	0H 			//0288 	1020
		LDR 	29H, 0H 			//0289 	1829
		MOVLB 	3H 			//028A 	1023
		STR 	11H 			//028B 	1091
		ORG		028CH
		MOVLB 	0H 			//028C 	1020
		LDR 	2BH, 0H 			//028D 	182B
		STR 	25H 			//028E 	10A5
		LDWI 	6EH 			//028F 	006E
		CLRF 	26H 			//0290 	11A6
		STR 	27H 			//0291 	10A7
		LDWI 	23H 			//0292 	0023
		STR 	28H 			//0293 	10A8
		ORG		0294H
		LDR 	25H, 0H 			//0294 	1825
		ADDWR 	27H, 0H 		//0295 	1727
		STR 	6H 			//0296 	1086
		LDR 	26H, 0H 			//0297 	1826
		ADDWFC 	28H, 0H 		//0298 	0D28
		STR 	7H 			//0299 	1087
		LDR 	1H, 0H 			//029A 	1801
		MOVLB 	3H 			//029B 	1023
		ORG		029CH
		STR 	14H 			//029C 	1094
		MOVLB 	0H 			//029D 	1020
		LDR 	2BH, 0H 			//029E 	182B
		STR 	25H 			//029F 	10A5
		LDWI 	6FH 			//02A0 	006F
		CLRF 	26H 			//02A1 	11A6
		STR 	27H 			//02A2 	10A7
		LDWI 	23H 			//02A3 	0023
		ORG		02A4H
		STR 	28H 			//02A4 	10A8
		LDR 	25H, 0H 			//02A5 	1825
		ADDWR 	27H, 0H 		//02A6 	1727
		STR 	6H 			//02A7 	1086
		LDR 	26H, 0H 			//02A8 	1826
		ADDWFC 	28H, 0H 		//02A9 	0D28
		STR 	7H 			//02AA 	1087
		LDR 	1H, 0H 			//02AB 	1801
		ORG		02ACH
		MOVLB 	3H 			//02AC 	1023
		STR 	13H 			//02AD 	1093
		RET 					//02AE 	1008
		ADDFSR 	1H, 1H 		//02AF 	0141
		LDR 	1H, 0H 			//02B0 	1801
		STR 	29H 			//02B1 	10A9
		LDWI 	6BH 			//02B2 	006B
		CLRF 	2AH 			//02B3 	11AA
		ORG		02B4H
		STR 	6H 			//02B4 	1086
		LDWI 	23H 			//02B5 	0023
		STR 	7H 			//02B6 	1087
		ADDFSR 	1H, 2H 		//02B7 	0142
		LDR 	29H, 0H 			//02B8 	1829
		STR 	25H 			//02B9 	10A5
		LDR 	1H, 0H 			//02BA 	1801
		STR 	29H 			//02BB 	10A9
		ORG		02BCH
		LDR 	25H, 0H 			//02BC 	1825
		STR 	2AH 			//02BD 	10AA
		RET 					//02BE 	1008
		CLRF 	76H 			//02BF 	11F6
		LSLF 	75H, 1H 		//02C0 	05F5
		RLR 	76H, 1H 			//02C1 	1DF6
		STR 	77H 			//02C2 	10F7
		LDWI 	23H 			//02C3 	0023
		ORG		02C4H
		STR 	78H 			//02C4 	10F8
		LDR 	75H, 0H 			//02C5 	1875
		ADDWR 	77H, 0H 		//02C6 	1777
		STR 	6H 			//02C7 	1086
		LDR 	76H, 0H 			//02C8 	1876
		ADDWFC 	78H, 0H 		//02C9 	0D78
		STR 	7H 			//02CA 	1087
		LDR 	1H, 0H 			//02CB 	1801
		ORG		02CCH
		RET 					//02CC 	1008
		MOVLB 	0H 			//02CD 	1020
		INCR 	29H, 1H 		//02CE 	1AA9
		BTSC 	3H, 2H 			//02CF 	2903
		INCR 	2AH, 1H 		//02D0 	1AAA
		LDWI 	80H 			//02D1 	0080
		INCR 	2BH, 1H 		//02D2 	1AAB
		INCR 	2BH, 1H 		//02D3 	1AAB
		ORG		02D4H
		SUBWR 	2BH, 0H 		//02D4 	122B
		RET 					//02D5 	1008
		STR 	73H 			//02D6 	10F3
		LDR 	29H, 0H 			//02D7 	1829
		STR 	72H 			//02D8 	10F2
		CLRF 	74H 			//02D9 	11F4
		INCR 	74H, 1H 		//02DA 	1AF4
		RET 					//02DB 	1008
		ORG		02DCH

		//;MEM_DRV.C: 21: EECON1 |=(0x1<<4 );
		BSR 	15H, 4H 			//02DC 	2615

		//;MEM_DRV.C: 22: Unlock_Flash();
		LCALL 	278H 			//02DD 	3278
		MOVLP 	1H 			//02DE 	0181

		//;MEM_DRV.C: 23: while(EECON1 & (0x1<<1 ));
		MOVLB 	3H 			//02DF 	1023
		BTSC 	15H, 1H 		//02E0 	2895
		LJUMP 	2DFH 			//02E1 	3ADF
		RET 					//02E2 	1008

		//;USART_DRV.C: 38: unsigned char a;
		//;USART_DRV.C: 39: for(a=0;a<10;a++)
		CLRF 	72H 			//02E3 	11F2
		ORG		02E4H

		//;USART_DRV.C: 40: {
		//;USART_DRV.C: 41: __nop();
		NOP 					//02E4 	1000
		LDWI 	AH 			//02E5 	000A
		INCR 	72H, 1H 		//02E6 	1AF2
		SUBWR 	72H, 0H 		//02E7 	1272
		BTSC 	3H, 0H 			//02E8 	2803
		RET 					//02E9 	1008
		LJUMP 	2E4H 			//02EA 	3AE4
		MOVLP 	1H 			//02EB 	0181
		ORG		02ECH
		LJUMP 	125H 			//02EC 	3925
		MOVLP 	1H 			//02ED 	0181
		LJUMP 	12BH 			//02EE 	392B
		MOVLP 	1H 			//02EF 	0181
		LJUMP 	12DH 			//02F0 	392D
		MOVLP 	1H 			//02F1 	0181
		LJUMP 	12FH 			//02F2 	392F
		MOVLP 	1H 			//02F3 	0181
		ORG		02F4H
		LJUMP 	131H 			//02F4 	3931
		MOVLP 	1H 			//02F5 	0181
		LJUMP 	133H 			//02F6 	3933
		MOVLP 	1H 			//02F7 	0181
		LJUMP 	135H 			//02F8 	3935
		MOVLP 	1H 			//02F9 	0181
		LJUMP 	137H 			//02FA 	3937
		CLRWDT 			//02FB 	1064
		ORG		02FCH
		LDWI 	1H 			//02FC 	0001
		CLRF 	0H 			//02FD 	1180
		ADDFSR 	0H, 1H 		//02FE 	0101
		SUBWR 	7EH, 1H 		//02FF 	12FE
		LDWI 	0H 			//0300 	0000
		SUBWFB 	7FH, 1H 		//0301 	0BFF
		LDR 	7FH, 0H 			//0302 	187F
		IORWR 	7EH, 0H 		//0303 	147E
		ORG		0304H
		BTSC 	3H, 2H 			//0304 	2903
		RETW 	0H 			//0305 	0400
		LJUMP 	2FCH 			//0306 	3AFC
			END
