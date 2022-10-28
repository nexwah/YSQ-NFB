//Deviec:FT62F08X
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

		//;IAP_FW.C: 165: user_isr();
		MOVLP 	0H 			//001B 	0180
		MOVLP 	1H 			//001C 	0181
		LCALL 	11BH 			//001D 	311B
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
		MOVLP 	2H 			//0029 	0182
		LCALL 	2FFH 			//002A 	32FF
		MOVLP 	0H 			//002B 	0180
		BCR 	7EH, 0H 			//002C 	207E
		MOVLB 	0H 			//002D 	1020
		LJUMP 	2FH 			//002E 	382F

		//;IAP_FW.C: 348: iap_usart_init();
		LCALL 	38H 			//002F 	3038
		ORG		0030H
		MOVLP 	0H 			//0030 	0180

		//;IAP_FW.C: 349: Power_On_App_Check();
		LCALL 	4BH 			//0031 	304B

		//;IAP_FW.C: 351: GIE=1;
		BSR 	BH, 7H 			//0032 	278B

		//;IAP_FW.C: 352: PEIE=1;
		BSR 	BH, 6H 			//0033 	270B

		//;IAP_FW.C: 354: if(read_flag !=1)
		BTSS 	20H, 0H 		//0034 	2C20
		LJUMP 	400H 			//0035 	3C00

		//;IAP_FW.C: 357: }
		//;IAP_FW.C: 358: while(1)
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

		//;USART_DRV.C: 10: AFP2 = 0B00000011;
		LDWI 	3H 			//003D 	0003
		MOVLB 	2H 			//003E 	1022
		STR 	1DH 			//003F 	109D
		ORG		0040H

		//;USART_DRV.C: 12: TRISB &= ~(0X1<<6 );
		MOVLB 	1H 			//0040 	1021
		BCR 	DH, 6H 			//0041 	230D

		//;USART_DRV.C: 16: URDLL=9;
		LDWI 	9H 			//0042 	0009
		MOVLB 	9H 			//0043 	1029
		STR 	14H 			//0044 	1094

		//;USART_DRV.C: 19: URLCR=(0x1 );
		LDWI 	1H 			//0045 	0001
		STR 	FH 			//0046 	108F

		//;USART_DRV.C: 21: URMCR=(0X1<<4 )|(0x1<<3 );
		LDWI 	18H 			//0047 	0018
		ORG		0048H
		STR 	11H 			//0048 	1091

		//;USART_DRV.C: 23: URRXNE |= (0X1<<0 );
		BSR 	EH, 0H 			//0049 	240E
		RET 					//004A 	1008

		//;IAP_FW.C: 91: unsigned int CRC_Eeprom;
		//;IAP_FW.C: 93: count=0;
		MOVLB 	0H 			//004B 	1020
		LDWI 	0H 			//004C 	0000
		CLRF 	21H 			//004D 	11A1

		//;IAP_FW.C: 94: flag=0;
		CLRF 	20H 			//004E 	11A0

		//;IAP_FW.C: 96: CRC_Eeprom=EEPROMread(0);
		LCALL 	67H 			//004F 	3067
		ORG		0050H
		MOVLP 	0H 			//0050 	0180
		STR 	34H 			//0051 	10B4
		CLRF 	35H 			//0052 	11B5

		//;IAP_FW.C: 97: CRC_Eeprom= CRC_Eeprom << 8;
		STR 	35H 			//0053 	10B5
		LDWI 	1H 			//0054 	0001
		CLRF 	34H 			//0055 	11B4

		//;IAP_FW.C: 98: CRC_Eeprom= CRC_Eeprom + EEPROMread(1);
		LCALL 	67H 			//0056 	3067
		MOVLP 	0H 			//0057 	0180
		ORG		0058H
		ADDWR 	34H, 1H 		//0058 	17B4
		BTSC 	3H, 0H 			//0059 	2803
		INCR 	35H, 1H 		//005A 	1AB5

		//;IAP_FW.C: 100: All_Page_Read_CRC();
		LCALL 	7DH 			//005B 	307D
		MOVLP 	0H 			//005C 	0180

		//;IAP_FW.C: 101: read_flag=1;
		BSR 	20H, 0H 			//005D 	2420

		//;IAP_FW.C: 102: if(CRC_Eeprom == CRC_16)
		LDR 	24H, 0H 			//005E 	1824
		XORWR 	35H, 0H 		//005F 	1635
		ORG		0060H
		BTSS 	3H, 2H 			//0060 	2D03
		LJUMP 	64H 			//0061 	3864
		LDR 	23H, 0H 			//0062 	1823
		XORWR 	34H, 0H 		//0063 	1634
		BTSC 	3H, 2H 			//0064 	2903

		//;IAP_FW.C: 103: {
		//;IAP_FW.C: 104: read_flag=0;
		BCR 	20H, 0H 			//0065 	2020
		RET 					//0066 	1008
		STR 	2CH 			//0067 	10AC
		ORG		0068H

		//;MEM_DRV.C: 50: unsigned char ReEEPROMread;
		//;MEM_DRV.C: 52: DRDEN=1;
		MOVLB 	3H 			//0068 	1023
		BSR 	18H, 0H 			//0069 	2418

		//;MEM_DRV.C: 53: __nop();
		NOP 					//006A 	1000

		//;MEM_DRV.C: 54: __nop();
		NOP 					//006B 	1000

		//;MEM_DRV.C: 55: EEADRL = EEAddr;
		MOVLB 	0H 			//006C 	1020
		LDR 	2CH, 0H 			//006D 	182C
		MOVLB 	3H 			//006E 	1023
		STR 	11H 			//006F 	1091
		ORG		0070H

		//;MEM_DRV.C: 56: CFGS=0;
		BCR 	15H, 6H 			//0070 	2315

		//;MEM_DRV.C: 57: EEPGD=0;
		BCR 	15H, 7H 			//0071 	2395

		//;MEM_DRV.C: 58: RD = 1;
		BSR 	15H, 0H 			//0072 	2415

		//;MEM_DRV.C: 59: __nop();
		NOP 					//0073 	1000

		//;MEM_DRV.C: 60: ReEEPROMread = EEDATL;
		MOVLB 	3H 			//0074 	1023
		LDR 	13H, 0H 			//0075 	1813
		MOVLB 	0H 			//0076 	1020
		STR 	2DH 			//0077 	10AD
		ORG		0078H

		//;MEM_DRV.C: 61: DRDEN=0;
		MOVLB 	3H 			//0078 	1023
		BCR 	18H, 0H 			//0079 	2018

		//;MEM_DRV.C: 62: return ReEEPROMread;
		MOVLB 	0H 			//007A 	1020
		LDR 	2DH, 0H 			//007B 	182D
		RET 					//007C 	1008

		//;IAP_FW.C: 62: unsigned int iap_addr;
		//;IAP_FW.C: 63: CRC_16 = 0;
		//;IAP_FW.C: 64: EECON1 = (0x1<<7 )|(0X1<<2 );
		LCALL 	115H 			//007D 	3115
		MOVLP 	0H 			//007E 	0180

		//;IAP_FW.C: 65: for(iap_addr=0X400;iap_addr<0x2000;iap_addr++)
		MOVLB 	0H 			//007F 	1020
		ORG		0080H
		LDWI 	4H 			//0080 	0004
		CLRF 	32H 			//0081 	11B2
		STR 	33H 			//0082 	10B3

		//;IAP_FW.C: 66: {
		//;IAP_FW.C: 67: EEADRH = iap_addr>>8;
		LDR 	33H, 0H 			//0083 	1833
		MOVLB 	3H 			//0084 	1023
		STR 	12H 			//0085 	1092

		//;IAP_FW.C: 68: EEADRL = iap_addr>>0;
		MOVLB 	0H 			//0086 	1020
		LDR 	32H, 0H 			//0087 	1832
		ORG		0088H
		MOVLB 	3H 			//0088 	1023
		STR 	11H 			//0089 	1091

		//;IAP_FW.C: 69: iap_mem_rd();
		LCALL 	BDH 			//008A 	30BD
		MOVLP 	0H 			//008B 	0180

		//;IAP_FW.C: 70: CRC16_CCITT(EEDATL);
		LDR 	13H, 0H 			//008C 	1813
		LCALL 	9EH 			//008D 	309E
		MOVLP 	0H 			//008E 	0180

		//;IAP_FW.C: 71: CRC16_CCITT(EEDATH);
		MOVLB 	3H 			//008F 	1023
		ORG		0090H
		LDR 	14H, 0H 			//0090 	1814
		LCALL 	9EH 			//0091 	309E
		MOVLP 	0H 			//0092 	0180
		INCR 	32H, 1H 		//0093 	1AB2
		BTSC 	3H, 2H 			//0094 	2903
		INCR 	33H, 1H 		//0095 	1AB3
		LDWI 	20H 			//0096 	0020
		SUBWR 	33H, 0H 		//0097 	1233
		ORG		0098H
		LDWI 	0H 			//0098 	0000
		BTSC 	3H, 2H 			//0099 	2903
		SUBWR 	32H, 0H 		//009A 	1232
		BTSC 	3H, 0H 			//009B 	2803
		RET 					//009C 	1008
		LJUMP 	83H 			//009D 	3883
		MOVLB 	0H 			//009E 	1020
		STR 	30H 			//009F 	10B0
		ORG		00A0H

		//;IAP_FW.C: 47: unsigned char i;
		//;IAP_FW.C: 49: CRC_16 ^= data;
		XORWR 	23H, 1H 		//00A0 	16A3

		//;IAP_FW.C: 51: for(i = 0;i < 8;i++)
		CLRF 	31H 			//00A1 	11B1

		//;IAP_FW.C: 52: {
		//;IAP_FW.C: 53: if(CRC_16 & 0x01)
		BTSS 	23H, 0H 		//00A2 	2C23
		LJUMP 	B5H 			//00A3 	38B5

		//;IAP_FW.C: 54: CRC_16 = (CRC_16 >> 1) ^ 0x8408;
		LDR 	24H, 0H 			//00A4 	1824
		STR 	2DH 			//00A5 	10AD
		LDR 	23H, 0H 			//00A6 	1823
		STR 	2CH 			//00A7 	10AC
		ORG		00A8H
		LDWI 	8H 			//00A8 	0008
		LSRF 	2DH, 1H 		//00A9 	06AD
		RRR 	2CH, 1H 			//00AA 	1CAC
		XORWR 	2CH, 0H 		//00AB 	162C
		STR 	2EH 			//00AC 	10AE
		LDWI 	84H 			//00AD 	0084
		XORWR 	2DH, 0H 		//00AE 	162D
		STR 	2FH 			//00AF 	10AF
		ORG		00B0H
		LDR 	2EH, 0H 			//00B0 	182E
		STR 	23H 			//00B1 	10A3
		LDR 	2FH, 0H 			//00B2 	182F
		STR 	24H 			//00B3 	10A4
		LJUMP 	B7H 			//00B4 	38B7

		//;IAP_FW.C: 55: else
		//;IAP_FW.C: 56: CRC_16 = CRC_16 >> 1;
		LSRF 	24H, 1H 		//00B5 	06A4
		RRR 	23H, 1H 			//00B6 	1CA3
		LDWI 	8H 			//00B7 	0008
		ORG		00B8H
		INCR 	31H, 1H 		//00B8 	1AB1
		SUBWR 	31H, 0H 		//00B9 	1231
		BTSC 	3H, 0H 			//00BA 	2803
		RET 					//00BB 	1008
		LJUMP 	A2H 			//00BC 	38A2

		//;MEM_DRV.C: 36: EECON1 |=(0x1<<0 );
		BSR 	15H, 0H 			//00BD 	2415
		NOP 					//00BE 	1000

		//;MEM_DRV.C: 38: while(EECON1 & (0x1<<0 ));
		MOVLB 	3H 			//00BF 	1023
		ORG		00C0H
		BTSS 	15H, 0H 		//00C0 	2C15
		RET 					//00C1 	1008
		LJUMP 	BFH 			//00C2 	38BF

		//;IAP_FW.C: 76: All_Page_Read_CRC();
		LCALL 	D8H 			//00C3 	30D8

		//;IAP_FW.C: 78: EECON1 &=~(0x1<<7 );
		MOVLB 	3H 			//00C4 	1023
		BCR 	15H, 7H 			//00C5 	2395

		//;IAP_FW.C: 79: EECON1 =(0X1<<2 );
		LDWI 	4H 			//00C6 	0004
		STR 	15H 			//00C7 	1095
		ORG		00C8H

		//;IAP_FW.C: 81: EEADRL=0;
		CLRF 	11H 			//00C8 	1191

		//;IAP_FW.C: 82: EEDATL=CRC_H;
		MOVLB 	0H 			//00C9 	1020
		LDR 	24H, 0H 			//00CA 	1824
		MOVLB 	3H 			//00CB 	1023
		STR 	13H 			//00CC 	1093

		//;IAP_FW.C: 83: iap_mem_prog();
		MOVLP 	2H 			//00CD 	0182
		LCALL 	253H 			//00CE 	3253
		MOVLP 	0H 			//00CF 	0180
		ORG		00D0H

		//;IAP_FW.C: 84: EEADRL=1;
		LDWI 	1H 			//00D0 	0001
		STR 	11H 			//00D1 	1091

		//;IAP_FW.C: 85: EEDATL=CRC_L;
		MOVLB 	0H 			//00D2 	1020
		LDR 	23H, 0H 			//00D3 	1823
		MOVLB 	3H 			//00D4 	1023
		STR 	13H 			//00D5 	1093

		//;IAP_FW.C: 86: iap_mem_prog();
		MOVLP 	2H 			//00D6 	0182
		LJUMP 	253H 			//00D7 	3A53
		ORG		00D8H

		//;IAP_FW.C: 62: unsigned int iap_addr;
		//;IAP_FW.C: 63: CRC_16 = 0;
		//;IAP_FW.C: 64: EECON1 = (0x1<<7 )|(0X1<<2 );
		LCALL 	115H 			//00D8 	3115

		//;IAP_FW.C: 65: for(iap_addr=0X400;iap_addr<0x2000;iap_addr++)
		LDWI 	4H 			//00D9 	0004
		CLRF 	78H 			//00DA 	11F8
		STR 	79H 			//00DB 	10F9

		//;IAP_FW.C: 66: {
		//;IAP_FW.C: 67: EEADRH = iap_addr>>8;
		LDR 	79H, 0H 			//00DC 	1879
		MOVLB 	3H 			//00DD 	1023
		STR 	12H 			//00DE 	1092

		//;IAP_FW.C: 68: EEADRL = iap_addr>>0;
		LDR 	78H, 0H 			//00DF 	1878
		ORG		00E0H
		STR 	11H 			//00E0 	1091

		//;IAP_FW.C: 69: iap_mem_rd();
		MOVLP 	2H 			//00E1 	0182
		LCALL 	286H 			//00E2 	3286
		MOVLP 	0H 			//00E3 	0180

		//;IAP_FW.C: 70: CRC16_CCITT(EEDATL);
		LDR 	13H, 0H 			//00E4 	1813
		LCALL 	F6H 			//00E5 	30F6
		MOVLP 	0H 			//00E6 	0180

		//;IAP_FW.C: 71: CRC16_CCITT(EEDATH);
		MOVLB 	3H 			//00E7 	1023
		ORG		00E8H
		LDR 	14H, 0H 			//00E8 	1814
		LCALL 	F6H 			//00E9 	30F6
		MOVLP 	0H 			//00EA 	0180
		INCR 	78H, 1H 		//00EB 	1AF8
		BTSC 	3H, 2H 			//00EC 	2903
		INCR 	79H, 1H 		//00ED 	1AF9
		LDWI 	20H 			//00EE 	0020
		SUBWR 	79H, 0H 		//00EF 	1279
		ORG		00F0H
		LDWI 	0H 			//00F0 	0000
		BTSC 	3H, 2H 			//00F1 	2903
		SUBWR 	78H, 0H 		//00F2 	1278
		BTSC 	3H, 0H 			//00F3 	2803
		RET 					//00F4 	1008
		LJUMP 	DCH 			//00F5 	38DC
		STR 	76H 			//00F6 	10F6

		//;IAP_FW.C: 47: unsigned char i;
		//;IAP_FW.C: 49: CRC_16 ^= data;
		MOVLB 	0H 			//00F7 	1020
		ORG		00F8H
		XORWR 	23H, 1H 		//00F8 	16A3

		//;IAP_FW.C: 51: for(i = 0;i < 8;i++)
		CLRF 	77H 			//00F9 	11F7

		//;IAP_FW.C: 52: {
		//;IAP_FW.C: 53: if(CRC_16 & 0x01)
		BTSS 	23H, 0H 		//00FA 	2C23
		LJUMP 	10DH 			//00FB 	390D

		//;IAP_FW.C: 54: CRC_16 = (CRC_16 >> 1) ^ 0x8408;
		LDR 	24H, 0H 			//00FC 	1824
		STR 	73H 			//00FD 	10F3
		LDR 	23H, 0H 			//00FE 	1823
		STR 	72H 			//00FF 	10F2
		ORG		0100H
		LDWI 	8H 			//0100 	0008
		LSRF 	73H, 1H 		//0101 	06F3
		RRR 	72H, 1H 			//0102 	1CF2
		XORWR 	72H, 0H 		//0103 	1672
		STR 	74H 			//0104 	10F4
		LDWI 	84H 			//0105 	0084
		XORWR 	73H, 0H 		//0106 	1673
		STR 	75H 			//0107 	10F5
		ORG		0108H
		LDR 	74H, 0H 			//0108 	1874
		STR 	23H 			//0109 	10A3
		LDR 	75H, 0H 			//010A 	1875
		STR 	24H 			//010B 	10A4
		LJUMP 	10FH 			//010C 	390F

		//;IAP_FW.C: 55: else
		//;IAP_FW.C: 56: CRC_16 = CRC_16 >> 1;
		LSRF 	24H, 1H 		//010D 	06A4
		RRR 	23H, 1H 			//010E 	1CA3
		LDWI 	8H 			//010F 	0008
		ORG		0110H
		INCR 	77H, 1H 		//0110 	1AF7
		SUBWR 	77H, 0H 		//0111 	1277
		BTSC 	3H, 0H 			//0112 	2803
		RET 					//0113 	1008
		LJUMP 	FAH 			//0114 	38FA
		LDWI 	84H 			//0115 	0084
		CLRF 	23H 			//0116 	11A3
		CLRF 	24H 			//0117 	11A4
		ORG		0118H
		MOVLB 	3H 			//0118 	1023
		STR 	15H 			//0119 	1095
		RET 					//011A 	1008

		//;IAP_FW.C: 170: if(URRXNE && RXNEF)
		MOVLB 	9H 			//011B 	1029
		BTSC 	EH, 0H 			//011C 	280E
		BTSS 	12H, 0H 		//011D 	2C12
		LJUMP 	218H 			//011E 	3A18

		//;IAP_FW.C: 171: {
		//;IAP_FW.C: 172: if(FEF==1)
		BTSC 	12H, 3H 		//011F 	2992
		ORG		0120H

		//;IAP_FW.C: 173: {FEF=0;}
		BCR 	12H, 3H 			//0120 	2192

		//;IAP_FW.C: 174: iap_recdata = URDATAL;
		LDR 	CH, 0H 			//0121 	180C
		MOVLB 	0H 			//0122 	1020
		STR 	22H 			//0123 	10A2

		//;IAP_FW.C: 175: count++;
		INCR 	21H, 1H 		//0124 	1AA1

		//;IAP_FW.C: 176: switch(count)
		LJUMP 	13EH 			//0125 	393E

		//;IAP_FW.C: 179: if(iap_recdata!= 0x46)
		LDWI 	46H 			//0126 	0046
		XORWR 	22H, 0H 		//0127 	1622
		ORG		0128H
		BTSC 	3H, 2H 			//0128 	2903
		LJUMP 	14BH 			//0129 	394B

		//;IAP_FW.C: 180: {iap_err_flag=1;}
		BSR 	20H, 1H 			//012A 	24A0
		LJUMP 	14BH 			//012B 	394B

		//;IAP_FW.C: 183: if(iap_recdata != 0x4D)
		LDWI 	4DH 			//012C 	004D
		LJUMP 	127H 			//012D 	3927

		//;IAP_FW.C: 187: if(iap_recdata != 0x44)
		LDWI 	44H 			//012E 	0044
		LJUMP 	127H 			//012F 	3927
		ORG		0130H

		//;IAP_FW.C: 191: if(iap_recdata != 0x49)
		LDWI 	49H 			//0130 	0049
		LJUMP 	127H 			//0131 	3927

		//;IAP_FW.C: 195: if(iap_recdata != 0x41)
		LDWI 	41H 			//0132 	0041
		LJUMP 	127H 			//0133 	3927

		//;IAP_FW.C: 199: if(iap_recdata != 0x50)
		LDWI 	50H 			//0134 	0050
		LJUMP 	127H 			//0135 	3927

		//;IAP_FW.C: 203: if(iap_recdata != 0x55)
		LDWI 	55H 			//0136 	0055
		LJUMP 	127H 			//0137 	3927
		ORG		0138H

		//;IAP_FW.C: 207: if(iap_recdata != 0xaa)
		LDWI 	AAH 			//0138 	00AA
		XORWR 	22H, 0H 		//0139 	1622
		BTSS 	3H, 2H 			//013A 	2D03
		LJUMP 	12AH 			//013B 	392A

		//;IAP_FW.C: 209: else
		//;IAP_FW.C: 210: {iap_ok_flag=1;}
		BSR 	20H, 2H 			//013C 	2520
		LJUMP 	14BH 			//013D 	394B
		LDR 	21H, 0H 			//013E 	1821
		ADDWI 	FFH 			//013F 	0EFF
		ORG		0140H
		BTSS 	3H, 0H 			//0140 	2C03
		LJUMP 	12AH 			//0141 	392A
		STR 	4H 			//0142 	1084
		LDWI 	8H 			//0143 	0008
		SUBWR 	4H, 0H 		//0144 	1204
		BTSC 	3H, 0H 			//0145 	2803
		LJUMP 	12AH 			//0146 	392A
		MOVLP 	2H 			//0147 	0182
		ORG		0148H
		LSLF 	4H, 0H 			//0148 	0504
		ADDWI 	EFH 			//0149 	0EEF
		STR 	2H 			//014A 	1082

		//;IAP_FW.C: 216: if(iap_ok_flag==1)
		BTSS 	20H, 2H 		//014B 	2D20
		LJUMP 	20FH 			//014C 	3A0F

		//;IAP_FW.C: 217: {
		//;IAP_FW.C: 218: count=0;
		CLRF 	21H 			//014D 	11A1

		//;IAP_FW.C: 219: iap_ok_flag =0;
		BCR 	20H, 2H 			//014E 	2120

		//;IAP_FW.C: 220: unsigned char i ;
		//;IAP_FW.C: 221: unsigned int iap_addr;
		//;IAP_FW.C: 222: RXNE &= ~(0X1<<0 );
		BCR 	1CH, 1H 			//014F 	209C
		ORG		0150H

		//;IAP_FW.C: 223: EECON1 = (0x1<<7 )|(0X1<<2 );
		LDWI 	84H 			//0150 	0084
		MOVLB 	3H 			//0151 	1023
		STR 	15H 			//0152 	1095

		//;IAP_FW.C: 224: iap_usart_send(0xaa);
		LDWI 	AAH 			//0153 	00AA
		LCALL 	24CH 			//0154 	324C
		MOVLP 	1H 			//0155 	0181

		//;IAP_FW.C: 230: switch(iap_databuf[0])
		LJUMP 	1FBH 			//0156 	39FB

		//;IAP_FW.C: 231: {
		//;IAP_FW.C: 232: case 0X05:
		//;IAP_FW.C: 233: for(i=1;i<133;i++)
		MOVLB 	0H 			//0157 	1020
		ORG		0158H
		CLRF 	2BH 			//0158 	11AB
		INCR 	2BH, 1H 		//0159 	1AAB

		//;IAP_FW.C: 234: {
		//;IAP_FW.C: 235: iap_databuf[i]=iap_usart_rec();
		LCALL 	25AH 			//015A 	325A
		MOVLP 	1H 			//015B 	0181
		MOVLB 	0H 			//015C 	1020
		STR 	25H 			//015D 	10A5
		LDR 	2BH, 0H 			//015E 	182B
		ADDWI 	6BH 			//015F 	0E6B
		ORG		0160H
		STR 	26H 			//0160 	10A6
		LDWI 	23H 			//0161 	0023
		CLRF 	27H 			//0162 	11A7
		ADDWFC 	27H, 1H 		//0163 	0DA7
		LDR 	26H, 0H 			//0164 	1826
		STR 	6H 			//0165 	1086
		LDR 	27H, 0H 			//0166 	1827
		STR 	7H 			//0167 	1087
		ORG		0168H
		LDR 	25H, 0H 			//0168 	1825
		STR 	1H 			//0169 	1081
		LDWI 	85H 			//016A 	0085
		INCR 	2BH, 1H 		//016B 	1AAB
		SUBWR 	2BH, 0H 		//016C 	122B
		BTSS 	3H, 0H 			//016D 	2C03
		LJUMP 	15AH 			//016E 	395A

		//;IAP_FW.C: 236: }
		//;IAP_FW.C: 237: CRC_16 = 0;
		CLRF 	23H 			//016F 	11A3
		ORG		0170H
		CLRF 	24H 			//0170 	11A4

		//;IAP_FW.C: 238: for(i=0;i<131;i++)
		CLRF 	2BH 			//0171 	11AB

		//;IAP_FW.C: 239: {
		//;IAP_FW.C: 240: CRC16_CCITT(iap_databuf[i]);
		LDR 	2BH, 0H 			//0172 	182B
		ADDWI 	6BH 			//0173 	0E6B
		STR 	6H 			//0174 	1086
		LDWI 	23H 			//0175 	0023
		CLRF 	7H 			//0176 	1187
		ADDWFC 	7H, 1H 		//0177 	0D87
		ORG		0178H
		LDR 	1H, 0H 			//0178 	1801
		MOVLP 	0H 			//0179 	0180
		LCALL 	F6H 			//017A 	30F6
		MOVLP 	1H 			//017B 	0181
		LDWI 	83H 			//017C 	0083
		INCR 	2BH, 1H 		//017D 	1AAB
		SUBWR 	2BH, 0H 		//017E 	122B
		BTSS 	3H, 0H 			//017F 	2C03
		ORG		0180H
		LJUMP 	172H 			//0180 	3972

		//;IAP_FW.C: 241: }
		//;IAP_FW.C: 242: if((CRC_H !=iap_databuf[131]) || (CRC_L !=iap_databuf[132]))
		LDWI 	EEH 			//0181 	00EE
		STR 	6H 			//0182 	1086
		LDWI 	23H 			//0183 	0023
		STR 	7H 			//0184 	1087
		LDR 	1H, 0H 			//0185 	1801
		XORWR 	24H, 0H 		//0186 	1624
		BTSS 	3H, 2H 			//0187 	2D03
		ORG		0188H
		LJUMP 	1ECH 			//0188 	39EC
		LDWI 	EFH 			//0189 	00EF
		STR 	6H 			//018A 	1086
		LDR 	1H, 0H 			//018B 	1801
		XORWR 	23H, 0H 		//018C 	1623
		BTSS 	3H, 2H 			//018D 	2D03
		LJUMP 	1ECH 			//018E 	39EC

		//;IAP_FW.C: 246: }
		//;IAP_FW.C: 247: iap_addr = iap_databuf[1];
		//;IAP_FW.C: 245: break;
		//;IAP_FW.C: 243: {
		//;IAP_FW.C: 244: iap_usart_send(0x44);
		LDWI 	6BH 			//018F 	006B
		ORG		0190H
		STR 	6H 			//0190 	1086

		//;IAP_FW.C: 248: iap_addr = ((iap_addr<<8)+iap_databuf[2]);
		LCALL 	2B3H 			//0191 	32B3
		MOVLP 	1H 			//0192 	0181

		//;IAP_FW.C: 249: if(iap_addr < 0X400)
		LDWI 	4H 			//0193 	0004
		SUBWR 	2AH, 0H 		//0194 	122A
		LDWI 	0H 			//0195 	0000
		BTSC 	3H, 2H 			//0196 	2903
		SUBWR 	29H, 0H 		//0197 	1229
		ORG		0198H
		BTSS 	3H, 0H 			//0198 	2C03
		LJUMP 	1ECH 			//0199 	39EC

		//;IAP_FW.C: 253: }
		//;IAP_FW.C: 254: if(data_check_erase_or_not(iap_addr,1))
		//;IAP_FW.C: 252: break;
		//;IAP_FW.C: 250: {
		//;IAP_FW.C: 251: iap_usart_send(0x44);
		LDR 	2AH, 0H 			//019A 	182A
		LCALL 	2DAH 			//019B 	32DA
		MOVLP 	1H 			//019C 	0181
		LCALL 	21AH 			//019D 	321A
		MOVLP 	1H 			//019E 	0181
		XORWI 	0H 			//019F 	0A00
		ORG		01A0H
		BTSS 	3H, 2H 			//01A0 	2D03
		LJUMP 	1DFH 			//01A1 	39DF

		//;IAP_FW.C: 262: else
		//;IAP_FW.C: 263: {
		//;IAP_FW.C: 264: if(data_check_erase_or_not(iap_addr,0))
		//;IAP_FW.C: 261: }
		//;IAP_FW.C: 259: }
		//;IAP_FW.C: 260: iap_usart_send(0X00);
		//;IAP_FW.C: 257: {
		//;IAP_FW.C: 258: Eeprom_Write_Crc();
		//;IAP_FW.C: 255: {
		//;IAP_FW.C: 256: if(iap_addr == (0x2000-0x40))
		MOVLB 	0H 			//01A2 	1020
		LDR 	2AH, 0H 			//01A3 	182A
		STR 	73H 			//01A4 	10F3
		LDR 	29H, 0H 			//01A5 	1829
		STR 	72H 			//01A6 	10F2
		CLRF 	74H 			//01A7 	11F4
		ORG		01A8H
		LCALL 	21AH 			//01A8 	321A
		MOVLP 	1H 			//01A9 	0181
		XORWI 	0H 			//01AA 	0A00
		BTSC 	3H, 2H 			//01AB 	2903
		LJUMP 	1BBH 			//01AC 	39BB

		//;IAP_FW.C: 265: {
		//;IAP_FW.C: 266: for(i=0;i<128;i=i+2)
		MOVLB 	0H 			//01AD 	1020
		CLRF 	2BH 			//01AE 	11AB

		//;IAP_FW.C: 267: {
		//;IAP_FW.C: 268: EEADRH = iap_addr>>8;
		LDR 	2AH, 0H 			//01AF 	182A
		ORG		01B0H
		MOVLB 	3H 			//01B0 	1023
		STR 	12H 			//01B1 	1092

		//;IAP_FW.C: 269: EEADRL = iap_addr>>0;
		//;IAP_FW.C: 270: EEDATH = iap_databuf[i+3];
		//;IAP_FW.C: 271: EEDATL = iap_databuf[i+4];
		LCALL 	28CH 			//01B2 	328C
		MOVLP 	1H 			//01B3 	0181

		//;IAP_FW.C: 272: iap_mem_prog();
		LCALL 	253H 			//01B4 	3253
		MOVLP 	1H 			//01B5 	0181

		//;IAP_FW.C: 273: iap_addr++;
		LCALL 	2D1H 			//01B6 	32D1
		MOVLP 	1H 			//01B7 	0181
		ORG		01B8H
		BTSC 	3H, 0H 			//01B8 	2803
		LJUMP 	1D2H 			//01B9 	39D2
		LJUMP 	1AFH 			//01BA 	39AF

		//;IAP_FW.C: 276: else
		//;IAP_FW.C: 277: {
		//;IAP_FW.C: 278: EEADRH = iap_addr>>8;
		MOVLB 	0H 			//01BB 	1020
		LDR 	2AH, 0H 			//01BC 	182A
		MOVLB 	3H 			//01BD 	1023
		STR 	12H 			//01BE 	1092

		//;IAP_FW.C: 279: EEADRL = iap_addr>>0;
		MOVLB 	0H 			//01BF 	1020
		ORG		01C0H
		LDR 	29H, 0H 			//01C0 	1829
		MOVLB 	3H 			//01C1 	1023
		STR 	11H 			//01C2 	1091

		//;IAP_FW.C: 280: iap_mem_erase();
		LCALL 	2E0H 			//01C3 	32E0
		MOVLP 	1H 			//01C4 	0181

		//;IAP_FW.C: 281: for(i=0;i<128;i=i+2)
		MOVLB 	0H 			//01C5 	1020
		CLRF 	2BH 			//01C6 	11AB

		//;IAP_FW.C: 282: {
		//;IAP_FW.C: 283: EEADRH = iap_addr>>8;
		LDR 	2AH, 0H 			//01C7 	182A
		ORG		01C8H
		MOVLB 	3H 			//01C8 	1023
		STR 	12H 			//01C9 	1092

		//;IAP_FW.C: 284: EEADRL = iap_addr>>0;
		//;IAP_FW.C: 285: EEDATH = iap_databuf[i+3];
		//;IAP_FW.C: 286: EEDATL = iap_databuf[i+4];
		LCALL 	28CH 			//01CA 	328C
		MOVLP 	1H 			//01CB 	0181

		//;IAP_FW.C: 287: iap_mem_prog();
		LCALL 	253H 			//01CC 	3253
		MOVLP 	1H 			//01CD 	0181

		//;IAP_FW.C: 288: iap_addr++;
		LCALL 	2D1H 			//01CE 	32D1
		MOVLP 	1H 			//01CF 	0181
		ORG		01D0H
		BTSS 	3H, 0H 			//01D0 	2C03
		LJUMP 	1C7H 			//01D1 	39C7

		//;IAP_FW.C: 289: }
		//;IAP_FW.C: 290: }
		//;IAP_FW.C: 291: iap_addr = iap_databuf[1];
		LDWI 	6BH 			//01D2 	006B
		STR 	6H 			//01D3 	1086
		LDWI 	23H 			//01D4 	0023
		STR 	7H 			//01D5 	1087

		//;IAP_FW.C: 292: iap_addr = ((iap_addr<<8)+iap_databuf[2]);
		LCALL 	2B3H 			//01D6 	32B3
		MOVLP 	1H 			//01D7 	0181
		ORG		01D8H

		//;IAP_FW.C: 293: if(data_check_erase_or_not(iap_addr,1))
		LCALL 	2DAH 			//01D8 	32DA
		MOVLP 	1H 			//01D9 	0181
		LCALL 	21AH 			//01DA 	321A
		MOVLP 	1H 			//01DB 	0181
		XORWI 	0H 			//01DC 	0A00
		BTSC 	3H, 2H 			//01DD 	2903
		LJUMP 	1ECH 			//01DE 	39EC

		//;IAP_FW.C: 294: {
		//;IAP_FW.C: 295: if(iap_addr == (0x2000-0x40))
		LDWI 	C0H 			//01DF 	00C0
		ORG		01E0H
		MOVLB 	0H 			//01E0 	1020
		XORWR 	29H, 0H 		//01E1 	1629
		LDWI 	1FH 			//01E2 	001F
		BTSC 	3H, 2H 			//01E3 	2903
		XORWR 	2AH, 0H 		//01E4 	162A
		BTSS 	3H, 2H 			//01E5 	2D03
		LJUMP 	1EAH 			//01E6 	39EA

		//;IAP_FW.C: 296: {
		//;IAP_FW.C: 297: Eeprom_Write_Crc();
		MOVLP 	0H 			//01E7 	0180
		ORG		01E8H
		LCALL 	C3H 			//01E8 	30C3
		MOVLP 	1H 			//01E9 	0181

		//;IAP_FW.C: 298: }
		//;IAP_FW.C: 299: iap_usart_send(0X00);
		LDWI 	0H 			//01EA 	0000
		LJUMP 	154H 			//01EB 	3954

		//;IAP_FW.C: 300: }
		//;IAP_FW.C: 301: else
		//;IAP_FW.C: 302: {
		//;IAP_FW.C: 303: iap_usart_send(0x44);
		LDWI 	44H 			//01EC 	0044
		LJUMP 	154H 			//01ED 	3954

		//;IAP_FW.C: 308: iap_usart_send(0X00);
		LDWI 	0H 			//01EE 	0000
		LCALL 	24CH 			//01EF 	324C
		ORG		01F0H
		MOVLP 	1H 			//01F0 	0181

		//;IAP_FW.C: 309: iap_wait_tx_idle();
		LCALL 	275H 			//01F1 	3275
		MOVLP 	1H 			//01F2 	0181
		RESET 					//01F3 	1001

		//;IAP_FW.C: 311: break;
		LJUMP 	1FBH 			//01F4 	39FB

		//;IAP_FW.C: 314: iap_usart_send(0x44);
		LDWI 	44H 			//01F5 	0044
		LCALL 	24CH 			//01F6 	324C
		MOVLP 	1H 			//01F7 	0181
		ORG		01F8H

		//;IAP_FW.C: 316: iap_wait_tx_idle();
		LCALL 	275H 			//01F8 	3275
		MOVLP 	1H 			//01F9 	0181
		RESET 					//01FA 	1001

		//;IAP_FW.C: 318: break;
		//;IAP_FW.C: 226: {
		//;IAP_FW.C: 228: iap_databuf[0]=iap_usart_rec();
		LDWI 	6BH 			//01FB 	006B
		STR 	6H 			//01FC 	1086
		LDWI 	23H 			//01FD 	0023
		STR 	7H 			//01FE 	1087
		LCALL 	25AH 			//01FF 	325A
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
		LJUMP 	157H 			//020A 	3957
		XORWI 	3H 			//020B 	0A03
		BTSC 	3H, 2H 			//020C 	2903
		LJUMP 	1EEH 			//020D 	39EE
		LJUMP 	1F5H 			//020E 	39F5

		//;IAP_FW.C: 320: }
		//;IAP_FW.C: 321: }
		//;IAP_FW.C: 323: if(iap_err_flag==1)
		BTSS 	20H, 1H 		//020F 	2CA0
		ORG		0210H
		RET 					//0210 	1008

		//;IAP_FW.C: 324: {
		//;IAP_FW.C: 325: count=0;
		CLRF 	21H 			//0211 	11A1

		//;IAP_FW.C: 326: iap_err_flag=0;
		BCR 	20H, 1H 			//0212 	20A0

		//;IAP_FW.C: 327: if(read_flag !=1)
		BTSC 	20H, 0H 		//0213 	2820
		RET 					//0214 	1008

		//;IAP_FW.C: 328: {
		//;IAP_FW.C: 329: uart_rxnef=1;
		BSR 	20H, 3H 			//0215 	25A0
		LJUMP 	404H 			//0216 	3C04
		RET 					//0217 	1008
		ORG		0218H
		LJUMP 	404H 			//0218 	3C04
		RET 					//0219 	1008

		//;IAP_FW.C: 109: unsigned char i ,j,k;
		//;IAP_FW.C: 110: for(i=0;i<64;i++)
		//+                          ck]
		CLRF 	7BH 			//021A 	11FB

		//;IAP_FW.C: 111: {
		//;IAP_FW.C: 112: EEADRH = addr>>8;
		LDR 	73H, 0H 			//021B 	1873
		MOVLB 	3H 			//021C 	1023
		STR 	12H 			//021D 	1092

		//;IAP_FW.C: 113: EEADRL = addr>>0;
		LDR 	72H, 0H 			//021E 	1872
		STR 	11H 			//021F 	1091
		ORG		0220H

		//;IAP_FW.C: 114: j = iap_databuf[i*2+3];
		LDR 	7BH, 0H 			//0220 	187B
		STR 	75H 			//0221 	10F5
		LDWI 	6EH 			//0222 	006E
		LCALL 	2C3H 			//0223 	32C3
		MOVLP 	1H 			//0224 	0181
		STR 	79H 			//0225 	10F9

		//;IAP_FW.C: 115: k = iap_databuf[i*2+4];
		LDR 	7BH, 0H 			//0226 	187B
		STR 	75H 			//0227 	10F5
		ORG		0228H
		LDWI 	6FH 			//0228 	006F
		LCALL 	2C3H 			//0229 	32C3
		MOVLP 	1H 			//022A 	0181
		STR 	7AH 			//022B 	10FA

		//;IAP_FW.C: 116: iap_mem_rd();
		LCALL 	286H 			//022C 	3286
		MOVLP 	1H 			//022D 	0181

		//;IAP_FW.C: 117: if(mode == 0)
		LDR 	74H, 0H 			//022E 	1874
		BTSS 	3H, 2H 			//022F 	2D03
		ORG		0230H
		LJUMP 	23BH 			//0230 	3A3B

		//;IAP_FW.C: 118: {
		//;IAP_FW.C: 119: if(((EEDATH & j) != j) || ((EEDATL & k) != k))
		LDR 	79H, 0H 			//0231 	1879
		ANDWR 	14H, 0H 		//0232 	1514
		STR 	75H 			//0233 	10F5
		XORWR 	79H, 0H 		//0234 	1679
		BTSS 	3H, 2H 			//0235 	2D03
		RETW 	0H 			//0236 	0400
		LDR 	7AH, 0H 			//0237 	187A
		ORG		0238H
		ANDWR 	13H, 0H 		//0238 	1513
		STR 	75H 			//0239 	10F5
		LJUMP 	240H 			//023A 	3A40

		//;IAP_FW.C: 124: else
		//;IAP_FW.C: 125: {
		//;IAP_FW.C: 126: if((EEDATH != j) || (EEDATL != k))
		LDR 	14H, 0H 			//023B 	1814
		XORWR 	79H, 0H 		//023C 	1679
		BTSS 	3H, 2H 			//023D 	2D03
		RETW 	0H 			//023E 	0400
		LDR 	13H, 0H 			//023F 	1813
		ORG		0240H
		XORWR 	7AH, 0H 		//0240 	167A
		BTSS 	3H, 2H 			//0241 	2D03

		//;IAP_FW.C: 120: {
		//;IAP_FW.C: 121: return 0;
		RETW 	0H 			//0242 	0400

		//;IAP_FW.C: 129: }
		//;IAP_FW.C: 130: }
		//;IAP_FW.C: 131: addr++;
		INCR 	72H, 1H 		//0243 	1AF2
		BTSC 	3H, 2H 			//0244 	2903
		INCR 	73H, 1H 		//0245 	1AF3
		LDWI 	40H 			//0246 	0040
		INCR 	7BH, 1H 		//0247 	1AFB
		ORG		0248H
		SUBWR 	7BH, 0H 		//0248 	127B
		BTSC 	3H, 0H 			//0249 	2803

		//;IAP_FW.C: 132: }
		//;IAP_FW.C: 133: return 1;
		RETW 	1H 			//024A 	0401
		LJUMP 	21BH 			//024B 	3A1B
		STR 	72H 			//024C 	10F2

		//;USART_DRV.C: 45: while(!(URLSR & (0x1<<5 )));
		MOVLB 	9H 			//024D 	1029
		BTSS 	12H, 5H 		//024E 	2E92
		LJUMP 	24DH 			//024F 	3A4D
		ORG		0250H

		//;USART_DRV.C: 46: URDATAL = data;
		LDR 	72H, 0H 			//0250 	1872
		STR 	CH 			//0251 	108C
		RET 					//0252 	1008

		//;MEM_DRV.C: 29: EECON1 &=~(0x1<<4 );
		BCR 	15H, 4H 			//0253 	2215

		//;MEM_DRV.C: 30: Unlock_Flash();
		LCALL 	27CH 			//0254 	327C
		MOVLP 	1H 			//0255 	0181

		//;MEM_DRV.C: 31: while(EECON1 & (0x1<<1 ));
		MOVLB 	3H 			//0256 	1023
		BTSS 	15H, 1H 		//0257 	2C95
		ORG		0258H
		RET 					//0258 	1008
		LJUMP 	256H 			//0259 	3A56

		//;USART_DRV.C: 51: unsigned int a;
		//;USART_DRV.C: 52: for(a=0;a<47200;a++)
		CLRF 	73H 			//025A 	11F3
		CLRF 	74H 			//025B 	11F4

		//;USART_DRV.C: 53: {
		//;USART_DRV.C: 54: DelayUs();
		LCALL 	2E7H 			//025C 	32E7
		MOVLP 	1H 			//025D 	0181

		//;USART_DRV.C: 55: if(((0x1 << 0 ) & URLSR))
		MOVLB 	9H 			//025E 	1029
		BTSS 	12H, 0H 		//025F 	2C12
		ORG		0260H
		LJUMP 	26AH 			//0260 	3A6A

		//;USART_DRV.C: 56: {
		//;USART_DRV.C: 57: if((URLSR & (0x1<<2 )) || (URLSR & (0x1<<3 )))
		BTSC 	12H, 2H 		//0261 	2912
		LJUMP 	265H 			//0262 	3A65
		BTSS 	12H, 3H 		//0263 	2D92
		LJUMP 	268H 			//0264 	3A68

		//;USART_DRV.C: 58: {
		//;USART_DRV.C: 59: URLSR = ~((0x1<<2 )|(0x1<<3 ));
		LDWI 	F3H 			//0265 	00F3
		STR 	12H 			//0266 	1092

		//;USART_DRV.C: 60: return 0xff;
		RETW 	FFH 			//0267 	04FF
		ORG		0268H

		//;USART_DRV.C: 62: else
		//;USART_DRV.C: 63: {
		//;USART_DRV.C: 64: return URDATAL;
		LDR 	CH, 0H 			//0268 	180C
		RET 					//0269 	1008
		INCR 	73H, 1H 		//026A 	1AF3
		BTSC 	3H, 2H 			//026B 	2903
		INCR 	74H, 1H 		//026C 	1AF4
		LDWI 	B8H 			//026D 	00B8
		SUBWR 	74H, 0H 		//026E 	1274
		LDWI 	60H 			//026F 	0060
		ORG		0270H
		BTSC 	3H, 2H 			//0270 	2903
		SUBWR 	73H, 0H 		//0271 	1273
		BTSC 	3H, 0H 			//0272 	2803

		//;USART_DRV.C: 65: }
		//;USART_DRV.C: 66: }
		//;USART_DRV.C: 67: }
		//;USART_DRV.C: 68: return 0xff;
		RETW 	FFH 			//0273 	04FF
		LJUMP 	25CH 			//0274 	3A5C

		//;USART_DRV.C: 76: while(!(TCF & (0x1<<0 )));
		LDWI 	0H 			//0275 	0000
		BTSC 	1CH, 0H 		//0276 	281C
		LDWI 	1H 			//0277 	0001
		ORG		0278H
		ANDWI 	1H 			//0278 	0901
		BTSS 	3H, 2H 			//0279 	2D03
		RET 					//027A 	1008
		LJUMP 	275H 			//027B 	3A75
		LDWI 	3H 			//027C 	0003
		STR 	8H 			//027D 	1088
		LDWI 	55H 			//027E 	0055
		STR 	16H 			//027F 	1096
		ORG		0280H
		LDWI 	AAH 			//0280 	00AA
		STR 	16H 			//0281 	1096
		BSR 	15H, 1H 			//0282 	2495
		NOP 					//0283 	1000
		NOP 					//0284 	1000
		RET 					//0285 	1008

		//;MEM_DRV.C: 36: EECON1 |=(0x1<<0 );
		BSR 	15H, 0H 			//0286 	2415
		NOP 					//0287 	1000
		ORG		0288H

		//;MEM_DRV.C: 38: while(EECON1 & (0x1<<0 ));
		MOVLB 	3H 			//0288 	1023
		BTSS 	15H, 0H 		//0289 	2C15
		RET 					//028A 	1008
		LJUMP 	288H 			//028B 	3A88
		MOVLB 	0H 			//028C 	1020
		LDR 	29H, 0H 			//028D 	1829
		MOVLB 	3H 			//028E 	1023
		STR 	11H 			//028F 	1091
		ORG		0290H
		MOVLB 	0H 			//0290 	1020
		LDR 	2BH, 0H 			//0291 	182B
		STR 	25H 			//0292 	10A5
		LDWI 	6EH 			//0293 	006E
		CLRF 	26H 			//0294 	11A6
		STR 	27H 			//0295 	10A7
		LDWI 	23H 			//0296 	0023
		STR 	28H 			//0297 	10A8
		ORG		0298H
		LDR 	25H, 0H 			//0298 	1825
		ADDWR 	27H, 0H 		//0299 	1727
		STR 	6H 			//029A 	1086
		LDR 	26H, 0H 			//029B 	1826
		ADDWFC 	28H, 0H 		//029C 	0D28
		STR 	7H 			//029D 	1087
		LDR 	1H, 0H 			//029E 	1801
		MOVLB 	3H 			//029F 	1023
		ORG		02A0H
		STR 	14H 			//02A0 	1094
		MOVLB 	0H 			//02A1 	1020
		LDR 	2BH, 0H 			//02A2 	182B
		STR 	25H 			//02A3 	10A5
		LDWI 	6FH 			//02A4 	006F
		CLRF 	26H 			//02A5 	11A6
		STR 	27H 			//02A6 	10A7
		LDWI 	23H 			//02A7 	0023
		ORG		02A8H
		STR 	28H 			//02A8 	10A8
		LDR 	25H, 0H 			//02A9 	1825
		ADDWR 	27H, 0H 		//02AA 	1727
		STR 	6H 			//02AB 	1086
		LDR 	26H, 0H 			//02AC 	1826
		ADDWFC 	28H, 0H 		//02AD 	0D28
		STR 	7H 			//02AE 	1087
		LDR 	1H, 0H 			//02AF 	1801
		ORG		02B0H
		MOVLB 	3H 			//02B0 	1023
		STR 	13H 			//02B1 	1093
		RET 					//02B2 	1008
		ADDFSR 	1H, 1H 		//02B3 	0141
		LDR 	1H, 0H 			//02B4 	1801
		STR 	29H 			//02B5 	10A9
		LDWI 	6BH 			//02B6 	006B
		CLRF 	2AH 			//02B7 	11AA
		ORG		02B8H
		STR 	6H 			//02B8 	1086
		LDWI 	23H 			//02B9 	0023
		STR 	7H 			//02BA 	1087
		ADDFSR 	1H, 2H 		//02BB 	0142
		LDR 	29H, 0H 			//02BC 	1829
		STR 	25H 			//02BD 	10A5
		LDR 	1H, 0H 			//02BE 	1801
		STR 	29H 			//02BF 	10A9
		ORG		02C0H
		LDR 	25H, 0H 			//02C0 	1825
		STR 	2AH 			//02C1 	10AA
		RET 					//02C2 	1008
		CLRF 	76H 			//02C3 	11F6
		LSLF 	75H, 1H 		//02C4 	05F5
		RLR 	76H, 1H 			//02C5 	1DF6
		STR 	77H 			//02C6 	10F7
		LDWI 	23H 			//02C7 	0023
		ORG		02C8H
		STR 	78H 			//02C8 	10F8
		LDR 	75H, 0H 			//02C9 	1875
		ADDWR 	77H, 0H 		//02CA 	1777
		STR 	6H 			//02CB 	1086
		LDR 	76H, 0H 			//02CC 	1876
		ADDWFC 	78H, 0H 		//02CD 	0D78
		STR 	7H 			//02CE 	1087
		LDR 	1H, 0H 			//02CF 	1801
		ORG		02D0H
		RET 					//02D0 	1008
		MOVLB 	0H 			//02D1 	1020
		INCR 	29H, 1H 		//02D2 	1AA9
		BTSC 	3H, 2H 			//02D3 	2903
		INCR 	2AH, 1H 		//02D4 	1AAA
		LDWI 	80H 			//02D5 	0080
		INCR 	2BH, 1H 		//02D6 	1AAB
		INCR 	2BH, 1H 		//02D7 	1AAB
		ORG		02D8H
		SUBWR 	2BH, 0H 		//02D8 	122B
		RET 					//02D9 	1008
		STR 	73H 			//02DA 	10F3
		LDR 	29H, 0H 			//02DB 	1829
		STR 	72H 			//02DC 	10F2
		CLRF 	74H 			//02DD 	11F4
		INCR 	74H, 1H 		//02DE 	1AF4
		RET 					//02DF 	1008
		ORG		02E0H

		//;MEM_DRV.C: 21: EECON1 |=(0x1<<4 );
		BSR 	15H, 4H 			//02E0 	2615

		//;MEM_DRV.C: 22: Unlock_Flash();
		LCALL 	27CH 			//02E1 	327C
		MOVLP 	1H 			//02E2 	0181

		//;MEM_DRV.C: 23: while(EECON1 & (0x1<<1 ));
		MOVLB 	3H 			//02E3 	1023
		BTSS 	15H, 1H 		//02E4 	2C95
		RET 					//02E5 	1008
		LJUMP 	2E3H 			//02E6 	3AE3

		//;USART_DRV.C: 37: unsigned char a;
		//;USART_DRV.C: 38: for(a=0;a<10;a++)
		CLRF 	72H 			//02E7 	11F2
		ORG		02E8H

		//;USART_DRV.C: 39: {
		//;USART_DRV.C: 40: __nop();
		NOP 					//02E8 	1000
		LDWI 	AH 			//02E9 	000A
		INCR 	72H, 1H 		//02EA 	1AF2
		SUBWR 	72H, 0H 		//02EB 	1272
		BTSC 	3H, 0H 			//02EC 	2803
		RET 					//02ED 	1008
		LJUMP 	2E8H 			//02EE 	3AE8
		MOVLP 	1H 			//02EF 	0181
		ORG		02F0H
		LJUMP 	126H 			//02F0 	3926
		MOVLP 	1H 			//02F1 	0181
		LJUMP 	12CH 			//02F2 	392C
		MOVLP 	1H 			//02F3 	0181
		LJUMP 	12EH 			//02F4 	392E
		MOVLP 	1H 			//02F5 	0181
		LJUMP 	130H 			//02F6 	3930
		MOVLP 	1H 			//02F7 	0181
		ORG		02F8H
		LJUMP 	132H 			//02F8 	3932
		MOVLP 	1H 			//02F9 	0181
		LJUMP 	134H 			//02FA 	3934
		MOVLP 	1H 			//02FB 	0181
		LJUMP 	136H 			//02FC 	3936
		MOVLP 	1H 			//02FD 	0181
		LJUMP 	138H 			//02FE 	3938
		CLRWDT 			//02FF 	1064
		ORG		0300H
		LDWI 	1H 			//0300 	0001
		CLRF 	0H 			//0301 	1180
		ADDFSR 	0H, 1H 		//0302 	0101
		SUBWR 	7EH, 1H 		//0303 	12FE
		LDWI 	0H 			//0304 	0000
		SUBWFB 	7FH, 1H 		//0305 	0BFF
		LDR 	7FH, 0H 			//0306 	187F
		IORWR 	7EH, 0H 		//0307 	147E
		ORG		0308H
		BTSC 	3H, 2H 			//0308 	2903
		RETW 	0H 			//0309 	0400
		LJUMP 	300H 			//030A 	3B00
			END
