//Deviec:FT64F0AX
//-----------------------Variable---------------------------------
		_command		EQU		340H
		_valc		EQU		32CH
		_n		EQU		2EBH
		_HTVP_		EQU		6EH
		_HTVN_		EQU		6CH
		_HTVI_		EQU		6AH
		_HTVP		EQU		2BCH
		_HTVN		EQU		2B9H
		_HTVI		EQU		2B6H
		_I		EQU		2B3H
		_V		EQU		2B0H
		_R		EQU		2ADH
		_T		EQU		16BH
		_diffT		EQU		168H
		_bat		EQU		165H
		_PowerOn		EQU		68H
		_BTNpressed		EQU		2E9H
		_BTNtimer		EQU		66H
		_HTOn		EQU		2E7H
		_HTtimer		EQU		2E5H
		_SmokeOn		EQU		2E3H
		_Smoketimer		EQU		2E1H
		_PuffOn		EQU		64H
		_RDE1		EQU		2DFH
		_RDE2		EQU		2DDH
		_t1E		EQU		2DBH
		_t2E		EQU		2D9H
		_T1E		EQU		2D7H
		_T2E		EQU		2D5H
		_PTE		EQU		2D3H
		_PFE		EQU		2D1H
		_T0E		EQU		2CFH
		_TRE		EQU		2CDH
		_R0E		EQU		2CBH
		_BATL		EQU		2C9H
		_BTNcnt		EQU		328H
		_HTcnt		EQU		324H
		_HTtimecnt		EQU		161H
		_Smokecnt		EQU		320H
		_Smoketimecnt		EQU		4BH
		_Puffcnt		EQU		2A0H
		_timeleft		EQU		2C7H
		_timeleft1		EQU		2C5H
		_timeleft2		EQU		2C3H
		_timeleft3		EQU		2C1H
		_timenow		EQU		2BFH
		_Toffset		EQU		2AAH
		_m		EQU		2A7H
		_Tm		EQU		2A4H
		_R0		EQU		5BH
		_T0		EQU		58H
		_Tr		EQU		55H
		_t1		EQU		16EH
		_t2		EQU		62H
		_T1		EQU		52H
		_T2		EQU		4FH
		_pf		EQU		60H
		_pt		EQU		5EH
//		UART_Check@data_3715		EQU		14CH
//		UART_Check@dataL_3716		EQU		15AH
//		UART_Check@data_3713		EQU		14AH
//		UART_Check@dataL_3714		EQU		159H
//		UART_Check@data_3710		EQU		15FH
//		UART_Check@dataH_3712		EQU		158H
//		UART_Check@dataL_3711		EQU		157H
//		UART_Check@dataL_3709		EQU		156H
//		UART_Check@dataL_3708		EQU		155H
//		UART_Check@data_3705		EQU		15DH
//		UART_Check@dataH_3707		EQU		154H
//		UART_Check@dataL_3706		EQU		153H
//		UART_Check@data		EQU		15BH
//		UART_Check@dataH_3704		EQU		152H
//		UART_Check@dataL_3703		EQU		151H
//		UART_Check@dataH		EQU		150H
//		UART_Check@dataL_3700		EQU		14FH
//		UART_Check@dataL		EQU		14EH
//		UART_Check@msg_3697		EQU		220H
//		UART_Check@msg		EQU		1A0H
//		SmokingProcess@msg		EQU		1A3H
//		SmokingProcess@i_3686		EQU		1C0H
//		SmokingProcess@i_3685		EQU		1BEH
//		SmokingProcess@i		EQU		1BCH
//		SmokingProcess@msg_3690		EQU		1ADH
//		SmokingProcess@puffno		EQU		1B7H
//		BatteryLevel@Vdd		EQU		124H
//		HeatingProcess@i_3675		EQU		1C1H
//		HeatingProcess@i_3674		EQU		1BFH
//		HeatingProcess@i		EQU		1BDH
//		HeatingProcess@msg_3678		EQU		1ADH
//		HeatingProcess@msg		EQU		1A3H
//		strlen@cp		EQU		A3H
//		strlen@s		EQU		A0H
//		sprintf@val		EQU		13AH
//		sprintf@tmpval.vd		EQU		136H
//		sprintf@tmpval.integ		EQU		136H
//		sprintf@tmpval		EQU		136H
//		sprintf@fval		EQU		144H
//		sprintf@prec		EQU		147H
//		sprintf@width		EQU		142H
//		sprintf@exp		EQU		140H
//		sprintf@flag		EQU		13EH
//		sprintf@c		EQU		149H
//		sprintf@ap		EQU		135H
//		sprintf@sp		EQU		120H
//		sprintf@f		EQU		122H
//		scale@scl		EQU		DCH
//		scale@scl		EQU		DCH
//		scale@scl		EQU		DCH
//		___awmod@sign		EQU		A5H
//		___awmod@counter		EQU		A4H
//		___awmod@divisor		EQU		A0H
//		___awmod@dividend		EQU		A2H
//		isdigit@c		EQU		A1H
//		isdigit@c		EQU		A1H
//		isdigit@c		EQU		A1H
//		fround@prec		EQU		DFH
//		fround@prec		EQU		DFH
//		fround@prec		EQU		DFH
//		___wmul@product		EQU		B2H
//		___wmul@multiplier		EQU		AEH
//		___wmul@multiplicand		EQU		B0H
//		___lbmod@dividend		EQU		A2H
//		___lbmod@rem		EQU		A4H
//		___lbmod@counter		EQU		A3H
//		___lbmod@dividend		EQU		A2H
//		___lbmod@divisor		EQU		A0H
//		___lbmod@dividend		EQU		A2H
//		___lbdiv@dividend		EQU		A6H
//		___lbdiv@quotient		EQU		A8H
//		___lbdiv@counter		EQU		A7H
//		___lbdiv@dividend		EQU		A6H
//		___lbdiv@divisor		EQU		A5H
//		___lbdiv@dividend		EQU		A6H
//		__tdiv_to_l_@quot		EQU		A9H
//		__tdiv_to_l_@exp1		EQU		AEH
//		__tdiv_to_l_@cntr		EQU		ADH
//		__tdiv_to_l_@f1		EQU		A0H
//		__tdiv_to_l_@f2		EQU		A3H
//		__div_to_l_@quot		EQU		AEH
//		__div_to_l_@exp1		EQU		B3H
//		__div_to_l_@cntr		EQU		B2H
//		__div_to_l_@f1		EQU		A0H
//		__div_to_l_@f2		EQU		A3H
//		___lltoft@exp		EQU		ACH
//		___lltoft@c		EQU		A8H
//		___llmod@counter		EQU		B5H
//		___llmod@divisor		EQU		ADH
//		___llmod@dividend		EQU		B1H
//		___lldiv@quotient		EQU		A8H
//		___lldiv@counter		EQU		ACH
//		___lldiv@divisor		EQU		A0H
//		___lldiv@dividend		EQU		A4H
//		___ftsub@f2		EQU		C0H
//		___ftsub@f1		EQU		C3H
//		___ftadd@exp1		EQU		BFH
//		___ftadd@exp2		EQU		BEH
//		___ftadd@sign		EQU		BDH
//		___ftadd@f1		EQU		B4H
//		___ftadd@f2		EQU		B7H
//		___ftneg@f1		EQU		A0H
//		send@i		EQU		129H
//		send@tbuf		EQU		124H
//		send@len		EQU		126H
//		___lwtoft@c		EQU		A8H
//		EEPROM_INIT@EEReadData		EQU		E6H
//		___lbtoft@c		EQU		ACH
//		___lbtoft@c		EQU		ACH
//		___lbtoft@c		EQU		ACH
//		EEPROMwrite@EEAddr		EQU		A1H
//		EEPROMwrite@EEAddr		EQU		A1H
//		EEPROMwrite@Data		EQU		A0H
//		EEPROMwrite@EEAddr		EQU		A1H
//		EEPROMread@EEAddr		EQU		A0H
//		EEPROMread@ReEEPROMread		EQU		A1H
//		EEPROMread@EEAddr		EQU		A0H
//		EEPROMread@EEAddr		EQU		A0H
//		BatteryChargingLevel@i		EQU		128H
//		BatteryChargingLevel@Vdd		EQU		126H
//		___ftge@ff1		EQU		B2H
//		___ftge@ff2		EQU		B5H
//		___ftdiv@f3		EQU		E0H
//		___ftdiv@sign		EQU		E3H
//		___ftdiv@exp		EQU		DFH
//		___ftdiv@cntr		EQU		DEH
//		___ftdiv@f2		EQU		D5H
//		___ftdiv@f1		EQU		D8H
//		GET_ADC_DATA@adcChannel		EQU		EFH
//		GET_ADC_DATA@adcChannel		EQU		EFH
//		GET_ADC_DATA@adcChannel		EQU		EFH
//		DelayMs@a		EQU		122H
//		DelayMs@Time		EQU		120H
//		DelayUs@a		EQU		EDH
//		DelayUs@Time		EQU		EAH
//		___fttol@lval		EQU		E5H
//		___fttol@exp1		EQU		E9H
//		___fttol@sign1		EQU		E4H
//		___fttol@f1		EQU		DDH
//		___ftmul@f3_as_product		EQU		D0H
//		___ftmul@sign		EQU		D4H
//		___ftmul@cntr		EQU		D3H
//		___ftmul@exp		EQU		CFH
//		___ftmul@f1		EQU		C6H
//		___ftmul@f2		EQU		C9H
//		___awtoft@sign		EQU		B1H
//		___awtoft@c		EQU		AEH
//		___ftpack@arg		EQU		A0H
//		___ftpack@exp		EQU		A3H
//		___ftpack@sign		EQU		A4H
//		___awdiv@quotient		EQU		ACH
//		___awdiv@sign		EQU		ABH
//		___awdiv@counter		EQU		AAH
//		___awdiv@divisor		EQU		A6H
//		___awdiv@dividend		EQU		A8H
//		ISR@i		EQU		49H
//		ISR@len		EQU		47H
//		i1___awtoft@sign		EQU		7DH
//		i1___awtoft@c		EQU		25H
//		strstr@s1		EQU		7DH
//		strstr@s1		EQU		7DH
//		strstr@s2		EQU		7BH
//		strstr@s1		EQU		7DH
//		i1strlen@cp		EQU		73H
//		i1strlen@s		EQU		70H
//		strncmp@s1		EQU		7AH
//		strncmp@s1		EQU		7AH
//		strncmp@s2		EQU		75H
//		strncmp@len		EQU		77H
//		strncmp@s1		EQU		7AH
//		strchr@ptr		EQU		72H
//		strchr@ptr		EQU		72H
//		strchr@chr		EQU		70H
//		strchr@ptr		EQU		72H
//		memset@p1		EQU		75H
//		memset@p		EQU		74H
//		memset@p1		EQU		75H
//		memset@c		EQU		70H
//		memset@n		EQU		72H
//		memset@p1		EQU		75H
//		charArrayToInt@arr		EQU		24H
//		charArrayToInt@i		EQU		22H
//		charArrayToInt@res		EQU		20H
//		charArrayToInt@arr		EQU		24H
//		charArrayToInt@arr		EQU		24H
//		i1___wmul@product		EQU		74H
//		i1___wmul@multiplier		EQU		70H
//		i1___wmul@multiplicand		EQU		72H
//		atof@s		EQU		45H
//		atof@s		EQU		45H
//		atof@s		EQU		45H
//		strtod@s		EQU		40H
//		strtod@_u._l		EQU		3CH
//		strtod@_u._v		EQU		3CH
//		strtod@_u		EQU		3CH
//		strtod@expon		EQU		3BH
//		strtod@flags		EQU		3AH
//		strtod@eexp		EQU		39H
//		strtod@s		EQU		40H
//		strtod@res		EQU		29H
//		strtod@s		EQU		40H
//		i1isdigit@c		EQU		71H
//		i1isdigit@c		EQU		71H
//		i1isdigit@c		EQU		71H
//		i1___ftneg@f1		EQU		70H
//		i1___ftmul@f3_as_product		EQU		24H
//		i1___ftmul@sign		EQU		28H
//		i1___ftmul@cntr		EQU		27H
//		i1___ftmul@exp		EQU		23H
//		i1___ftmul@f1		EQU		78H
//		i1___ftmul@f2		EQU		7BH
//		i1___ftge@ff1		EQU		70H
//		i1___ftge@ff2		EQU		73H
//		i1___ftdiv@f3		EQU		24H
//		i1___ftdiv@sign		EQU		28H
//		i1___ftdiv@exp		EQU		27H
//		i1___ftdiv@cntr		EQU		23H
//		i1___ftdiv@f2		EQU		78H
//		i1___ftdiv@f1		EQU		7BH
//		isspace@c		EQU		71H
//		isspace@c		EQU		71H
//		isspace@c		EQU		71H
//		___lmul@product		EQU		78H
//		___lmul@multiplier		EQU		70H
//		___lmul@multiplicand		EQU		74H
//		___bmul@multiplier		EQU		72H
//		___bmul@product		EQU		71H
//		___bmul@multiplier		EQU		72H
//		___bmul@multiplicand		EQU		70H
//		___bmul@multiplier		EQU		72H
//		___altoft@sign		EQU		7DH
//		___altoft@exp		EQU		7CH
//		___altoft@c		EQU		78H
//		i1___ftpack@arg		EQU		70H
//		i1___ftpack@exp		EQU		73H
//		i1___ftpack@sign		EQU		74H
//-----------------------Variable END---------------------------------
		ORG		0000H
		ORG		0000H
		MOVLP 	2H 			//0000 	0182
		LJUMP 	207H 			//0001 	3A07
		ORG		0004H
		BSR 	7EH, 0H 			//0004 	247E
		MOVLP 	0H 			//0005 	0180

		//;NFB.C: 60: if(UR1RXNE&&UR1RXNEF)
		MOVLB 	9H 			//0006 	1029
		BTSC 	EH, 0H 			//0007 	280E
		BTSS 	12H, 0H 		//0008 	2C12
		LJUMP 	17AH 			//0009 	397A

		//;NFB.C: 61: {
		//;NFB.C: 62: command[n] = UR1DATAL;
		MOVLB 	5H 			//000A 	1025
		LDR 	6BH, 0H 			//000B 	186B
		ADDWI 	40H 			//000C 	0E40
		STR 	6H 			//000D 	1086
		LDWI 	3H 			//000E 	0003
		STR 	7H 			//000F 	1087
		MOVLB 	9H 			//0010 	1029
		LDR 	CH, 0H 			//0011 	180C
		STR 	1H 			//0012 	1081

		//;NFB.C: 63: n++;
		MOVLB 	5H 			//0013 	1025
		INCR 	6BH, 1H 		//0014 	1AEB
		BTSC 	3H, 2H 			//0015 	2903
		INCR 	6CH, 1H 		//0016 	1AEC

		//;NFB.C: 64: if(strstr(command,"\r\n")){
		LDWI 	E1H 			//0017 	00E1
		STR 	7BH 			//0018 	10FB
		LDWI 	A0H 			//0019 	00A0
		STR 	7CH 			//001A 	10FC
		LDWI 	40H 			//001B 	0040
		MOVLP 	5H 			//001C 	0185
		LCALL 	5FFH 			//001D 	35FF
		MOVLP 	0H 			//001E 	0180
		XORWI 	0H 			//001F 	0A00
		BTSC 	3H, 2H 			//0020 	2903
		LJUMP 	17AH 			//0021 	397A

		//;NFB.C: 65: int len = strlen(command)-5;
		LDWI 	40H 			//0022 	0040
		STR 	70H 			//0023 	10F0
		LDWI 	3H 			//0024 	0003
		STR 	71H 			//0025 	10F1
		MOVLP 	6H 			//0026 	0186
		LCALL 	66CH 			//0027 	366C
		MOVLP 	0H 			//0028 	0180
		LDR 	71H, 0H 			//0029 	1871
		MOVLB 	0H 			//002A 	1020
		STR 	48H 			//002B 	10C8
		LDR 	70H, 0H 			//002C 	1870
		STR 	47H 			//002D 	10C7
		LDWI 	FBH 			//002E 	00FB
		ADDWR 	47H, 1H 		//002F 	17C7
		LDWI 	FFH 			//0030 	00FF
		ADDWFC 	48H, 1H 		//0031 	0DC8

		//;NFB.C: 66: for(int i=0;i<len;i++){
		CLRF 	49H 			//0032 	11C9
		CLRF 	4AH 			//0033 	11CA
		LDR 	4AH, 0H 			//0034 	184A
		XORWI 	80H 			//0035 	0A80
		STR 	46H 			//0036 	10C6
		LDR 	48H, 0H 			//0037 	1848
		XORWI 	80H 			//0038 	0A80
		SUBWR 	46H, 0H 		//0039 	1246
		BTSS 	3H, 2H 			//003A 	2D03
		LJUMP 	3EH 			//003B 	383E
		LDR 	47H, 0H 			//003C 	1847
		SUBWR 	49H, 0H 		//003D 	1249
		BTSC 	3H, 0H 			//003E 	2803
		LJUMP 	51H 			//003F 	3851

		//;NFB.C: 67: valc[i] += command[i+3];
		MOVLB 	0H 			//0040 	1020
		LDR 	49H, 0H 			//0041 	1849
		ADDWI 	2CH 			//0042 	0E2C
		STR 	6H 			//0043 	1086
		LDWI 	3H 			//0044 	0003
		STR 	7H 			//0045 	1087
		LDR 	49H, 0H 			//0046 	1849
		ADDWI 	43H 			//0047 	0E43
		STR 	4H 			//0048 	1084
		LDWI 	3H 			//0049 	0003
		STR 	5H 			//004A 	1085
		LDR 	0H, 0H 			//004B 	1800
		ADDWR 	1H, 1H 		//004C 	1781
		INCR 	49H, 1H 		//004D 	1AC9
		BTSC 	3H, 2H 			//004E 	2903
		INCR 	4AH, 1H 		//004F 	1ACA
		LJUMP 	34H 			//0050 	3834

		//;NFB.C: 68: }
		//;NFB.C: 69: if(strstr(command,"t1:")){
		LDWI 	16H 			//0051 	0016
		STR 	7BH 			//0052 	10FB
		LDWI 	A1H 			//0053 	00A1
		STR 	7CH 			//0054 	10FC
		LDWI 	40H 			//0055 	0040
		MOVLP 	5H 			//0056 	0185
		LCALL 	5FFH 			//0057 	35FF
		MOVLP 	0H 			//0058 	0180
		XORWI 	0H 			//0059 	0A00
		BTSC 	3H, 2H 			//005A 	2903
		LJUMP 	69H 			//005B 	3869

		//;NFB.C: 70: t1 = charArrayToInt(valc);
		LDWI 	2CH 			//005C 	002C
		MOVLP 	6H 			//005D 	0186
		LCALL 	688H 			//005E 	3688
		MOVLP 	0H 			//005F 	0180
		LDR 	77H, 0H 			//0060 	1877
		MOVLB 	2H 			//0061 	1022
		STR 	6FH 			//0062 	10EF
		LDR 	76H, 0H 			//0063 	1876
		STR 	6EH 			//0064 	10EE

		//;NFB.C: 71: t1E = 1;
		MOVLB 	5H 			//0065 	1025
		CLRF 	5BH 			//0066 	11DB
		INCR 	5BH, 1H 		//0067 	1ADB
		CLRF 	5CH 			//0068 	11DC

		//;NFB.C: 72: }
		//;NFB.C: 73: if(strstr(command,"t2:")){
		LDWI 	1EH 			//0069 	001E
		STR 	7BH 			//006A 	10FB
		LDWI 	A1H 			//006B 	00A1
		STR 	7CH 			//006C 	10FC
		LDWI 	40H 			//006D 	0040
		MOVLP 	5H 			//006E 	0185
		LCALL 	5FFH 			//006F 	35FF
		MOVLP 	0H 			//0070 	0180
		XORWI 	0H 			//0071 	0A00
		BTSC 	3H, 2H 			//0072 	2903
		LJUMP 	80H 			//0073 	3880

		//;NFB.C: 74: t2 = charArrayToInt(valc);
		LDWI 	2CH 			//0074 	002C
		MOVLP 	6H 			//0075 	0186
		LCALL 	688H 			//0076 	3688
		MOVLP 	0H 			//0077 	0180
		LDR 	77H, 0H 			//0078 	1877
		STR 	63H 			//0079 	10E3
		LDR 	76H, 0H 			//007A 	1876
		STR 	62H 			//007B 	10E2

		//;NFB.C: 75: t2E = 1;
		MOVLB 	5H 			//007C 	1025
		CLRF 	59H 			//007D 	11D9
		INCR 	59H, 1H 		//007E 	1AD9
		CLRF 	5AH 			//007F 	11DA

		//;NFB.C: 76: }
		//;NFB.C: 77: if(strstr(command,"pf:")){
		LDWI 	22H 			//0080 	0022
		STR 	7BH 			//0081 	10FB
		LDWI 	A1H 			//0082 	00A1
		STR 	7CH 			//0083 	10FC
		LDWI 	40H 			//0084 	0040
		MOVLP 	5H 			//0085 	0185
		LCALL 	5FFH 			//0086 	35FF
		MOVLP 	0H 			//0087 	0180
		XORWI 	0H 			//0088 	0A00
		BTSC 	3H, 2H 			//0089 	2903
		LJUMP 	97H 			//008A 	3897

		//;NFB.C: 78: pf = charArrayToInt(valc);
		LDWI 	2CH 			//008B 	002C
		MOVLP 	6H 			//008C 	0186
		LCALL 	688H 			//008D 	3688
		MOVLP 	0H 			//008E 	0180
		LDR 	77H, 0H 			//008F 	1877
		STR 	61H 			//0090 	10E1
		LDR 	76H, 0H 			//0091 	1876
		STR 	60H 			//0092 	10E0

		//;NFB.C: 79: PFE = 1;
		MOVLB 	5H 			//0093 	1025
		CLRF 	51H 			//0094 	11D1
		INCR 	51H, 1H 		//0095 	1AD1
		CLRF 	52H 			//0096 	11D2

		//;NFB.C: 80: }
		//;NFB.C: 81: if(strstr(command,"T1:")){
		LDWI 	12H 			//0097 	0012
		STR 	7BH 			//0098 	10FB
		LDWI 	A1H 			//0099 	00A1
		STR 	7CH 			//009A 	10FC
		LDWI 	40H 			//009B 	0040
		MOVLP 	5H 			//009C 	0185
		LCALL 	5FFH 			//009D 	35FF
		MOVLP 	0H 			//009E 	0180
		XORWI 	0H 			//009F 	0A00
		BTSC 	3H, 2H 			//00A0 	2903
		LJUMP 	B7H 			//00A1 	38B7

		//;NFB.C: 82: T1 = (float)charArrayToInt(valc);
		LDWI 	2CH 			//00A2 	002C
		MOVLP 	6H 			//00A3 	0186
		LCALL 	688H 			//00A4 	3688
		MOVLP 	0H 			//00A5 	0180
		LDR 	77H, 0H 			//00A6 	1877
		STR 	26H 			//00A7 	10A6
		LDR 	76H, 0H 			//00A8 	1876
		STR 	25H 			//00A9 	10A5
		MOVLP 	24H 			//00AA 	01A4
		LCALL 	46BH 			//00AB 	346B
		MOVLP 	0H 			//00AC 	0180
		LDR 	25H, 0H 			//00AD 	1825
		STR 	52H 			//00AE 	10D2
		LDR 	26H, 0H 			//00AF 	1826
		STR 	53H 			//00B0 	10D3
		LDR 	27H, 0H 			//00B1 	1827
		STR 	54H 			//00B2 	10D4

		//;NFB.C: 83: T1E = 1;
		MOVLB 	5H 			//00B3 	1025
		CLRF 	57H 			//00B4 	11D7
		INCR 	57H, 1H 		//00B5 	1AD7
		CLRF 	58H 			//00B6 	11D8

		//;NFB.C: 84: }
		//;NFB.C: 85: if(strstr(command,"T2:")){
		LDWI 	1AH 			//00B7 	001A
		STR 	7BH 			//00B8 	10FB
		LDWI 	A1H 			//00B9 	00A1
		STR 	7CH 			//00BA 	10FC
		LDWI 	40H 			//00BB 	0040
		MOVLP 	5H 			//00BC 	0185
		LCALL 	5FFH 			//00BD 	35FF
		MOVLP 	0H 			//00BE 	0180
		XORWI 	0H 			//00BF 	0A00
		BTSC 	3H, 2H 			//00C0 	2903
		LJUMP 	D7H 			//00C1 	38D7

		//;NFB.C: 86: T2 = (float)charArrayToInt(valc);
		LDWI 	2CH 			//00C2 	002C
		MOVLP 	6H 			//00C3 	0186
		LCALL 	688H 			//00C4 	3688
		MOVLP 	0H 			//00C5 	0180
		LDR 	77H, 0H 			//00C6 	1877
		STR 	26H 			//00C7 	10A6
		LDR 	76H, 0H 			//00C8 	1876
		STR 	25H 			//00C9 	10A5
		MOVLP 	24H 			//00CA 	01A4
		LCALL 	46BH 			//00CB 	346B
		MOVLP 	0H 			//00CC 	0180
		LDR 	25H, 0H 			//00CD 	1825
		STR 	4FH 			//00CE 	10CF
		LDR 	26H, 0H 			//00CF 	1826
		STR 	50H 			//00D0 	10D0
		LDR 	27H, 0H 			//00D1 	1827
		STR 	51H 			//00D2 	10D1

		//;NFB.C: 87: T2E = 1;
		MOVLB 	5H 			//00D3 	1025
		CLRF 	55H 			//00D4 	11D5
		INCR 	55H, 1H 		//00D5 	1AD5
		CLRF 	56H 			//00D6 	11D6

		//;NFB.C: 88: }
		//;NFB.C: 89: if(strstr(command,"pt:")){
		LDWI 	2AH 			//00D7 	002A
		STR 	7BH 			//00D8 	10FB
		LDWI 	A1H 			//00D9 	00A1
		STR 	7CH 			//00DA 	10FC
		LDWI 	40H 			//00DB 	0040
		MOVLP 	5H 			//00DC 	0185
		LCALL 	5FFH 			//00DD 	35FF
		MOVLP 	0H 			//00DE 	0180
		XORWI 	0H 			//00DF 	0A00
		BTSC 	3H, 2H 			//00E0 	2903
		LJUMP 	EEH 			//00E1 	38EE

		//;NFB.C: 90: pt = charArrayToInt(valc);
		LDWI 	2CH 			//00E2 	002C
		MOVLP 	6H 			//00E3 	0186
		LCALL 	688H 			//00E4 	3688
		MOVLP 	0H 			//00E5 	0180
		LDR 	77H, 0H 			//00E6 	1877
		STR 	5FH 			//00E7 	10DF
		LDR 	76H, 0H 			//00E8 	1876
		STR 	5EH 			//00E9 	10DE

		//;NFB.C: 91: PTE = 1;
		MOVLB 	5H 			//00EA 	1025
		CLRF 	53H 			//00EB 	11D3
		INCR 	53H, 1H 		//00EC 	1AD3
		CLRF 	54H 			//00ED 	11D4

		//;NFB.C: 92: }
		//;NFB.C: 93: if(strstr(command,"T0:")){
		LDWI 	EH 			//00EE 	000E
		STR 	7BH 			//00EF 	10FB
		LDWI 	A1H 			//00F0 	00A1
		STR 	7CH 			//00F1 	10FC
		LDWI 	40H 			//00F2 	0040
		MOVLP 	5H 			//00F3 	0185
		LCALL 	5FFH 			//00F4 	35FF
		MOVLP 	0H 			//00F5 	0180
		XORWI 	0H 			//00F6 	0A00
		BTSC 	3H, 2H 			//00F7 	2903
		LJUMP 	10EH 			//00F8 	390E

		//;NFB.C: 94: T0 = (float)charArrayToInt(valc);
		LDWI 	2CH 			//00F9 	002C
		MOVLP 	6H 			//00FA 	0186
		LCALL 	688H 			//00FB 	3688
		MOVLP 	0H 			//00FC 	0180
		LDR 	77H, 0H 			//00FD 	1877
		STR 	26H 			//00FE 	10A6
		LDR 	76H, 0H 			//00FF 	1876
		STR 	25H 			//0100 	10A5
		MOVLP 	24H 			//0101 	01A4
		LCALL 	46BH 			//0102 	346B
		MOVLP 	0H 			//0103 	0180
		LDR 	25H, 0H 			//0104 	1825
		STR 	58H 			//0105 	10D8
		LDR 	26H, 0H 			//0106 	1826
		STR 	59H 			//0107 	10D9
		LDR 	27H, 0H 			//0108 	1827
		STR 	5AH 			//0109 	10DA

		//;NFB.C: 95: T0E = 1;
		MOVLB 	5H 			//010A 	1025
		CLRF 	4FH 			//010B 	11CF
		INCR 	4FH, 1H 		//010C 	1ACF
		CLRF 	50H 			//010D 	11D0

		//;NFB.C: 96: }
		//;NFB.C: 97: if(strstr(command,"Tr:")){
		LDWI 	26H 			//010E 	0026
		STR 	7BH 			//010F 	10FB
		LDWI 	A1H 			//0110 	00A1
		STR 	7CH 			//0111 	10FC
		LDWI 	40H 			//0112 	0040
		MOVLP 	5H 			//0113 	0185
		LCALL 	5FFH 			//0114 	35FF
		MOVLP 	0H 			//0115 	0180
		XORWI 	0H 			//0116 	0A00
		BTSC 	3H, 2H 			//0117 	2903
		LJUMP 	12EH 			//0118 	392E

		//;NFB.C: 98: Tr = (float)charArrayToInt(valc);
		LDWI 	2CH 			//0119 	002C
		MOVLP 	6H 			//011A 	0186
		LCALL 	688H 			//011B 	3688
		MOVLP 	0H 			//011C 	0180
		LDR 	77H, 0H 			//011D 	1877
		STR 	26H 			//011E 	10A6
		LDR 	76H, 0H 			//011F 	1876
		STR 	25H 			//0120 	10A5
		MOVLP 	24H 			//0121 	01A4
		LCALL 	46BH 			//0122 	346B
		MOVLP 	0H 			//0123 	0180
		LDR 	25H, 0H 			//0124 	1825
		STR 	55H 			//0125 	10D5
		LDR 	26H, 0H 			//0126 	1826
		STR 	56H 			//0127 	10D6
		LDR 	27H, 0H 			//0128 	1827
		STR 	57H 			//0129 	10D7

		//;NFB.C: 99: TRE = 1;
		MOVLB 	5H 			//012A 	1025
		CLRF 	4DH 			//012B 	11CD
		INCR 	4DH, 1H 		//012C 	1ACD
		CLRF 	4EH 			//012D 	11CE

		//;NFB.C: 100: }
		//;NFB.C: 101: if(strstr(command,"R0:")){
		LDWI 	AH 			//012E 	000A
		STR 	7BH 			//012F 	10FB
		LDWI 	A1H 			//0130 	00A1
		STR 	7CH 			//0131 	10FC
		LDWI 	40H 			//0132 	0040
		MOVLP 	5H 			//0133 	0185
		LCALL 	5FFH 			//0134 	35FF
		MOVLP 	0H 			//0135 	0180
		XORWI 	0H 			//0136 	0A00
		BTSC 	3H, 2H 			//0137 	2903
		LJUMP 	147H 			//0138 	3947

		//;NFB.C: 102: R0 = (float)atof(valc);
		LDWI 	2CH 			//0139 	002C
		MOVLP 	24H 			//013A 	01A4
		LCALL 	460H 			//013B 	3460
		MOVLP 	0H 			//013C 	0180
		LDR 	41H, 0H 			//013D 	1841
		STR 	5BH 			//013E 	10DB
		LDR 	42H, 0H 			//013F 	1842
		STR 	5CH 			//0140 	10DC
		LDR 	43H, 0H 			//0141 	1843
		STR 	5DH 			//0142 	10DD

		//;NFB.C: 103: R0E = 1;
		MOVLB 	5H 			//0143 	1025
		CLRF 	4BH 			//0144 	11CB
		INCR 	4BH, 1H 		//0145 	1ACB
		CLRF 	4CH 			//0146 	11CC

		//;NFB.C: 104: }
		//;NFB.C: 105: if(strstr(command,"rd1")){
		LDWI 	2H 			//0147 	0002
		STR 	7BH 			//0148 	10FB
		LDWI 	A1H 			//0149 	00A1
		STR 	7CH 			//014A 	10FC
		LDWI 	40H 			//014B 	0040
		MOVLP 	5H 			//014C 	0185
		LCALL 	5FFH 			//014D 	35FF
		MOVLP 	0H 			//014E 	0180
		XORWI 	0H 			//014F 	0A00
		BTSC 	3H, 2H 			//0150 	2903
		LJUMP 	156H 			//0151 	3956

		//;NFB.C: 106: RDE1 = 1;
		MOVLB 	5H 			//0152 	1025
		CLRF 	5FH 			//0153 	11DF
		INCR 	5FH, 1H 		//0154 	1ADF
		CLRF 	60H 			//0155 	11E0

		//;NFB.C: 107: }
		//;NFB.C: 108: if(strstr(command,"rd2")){
		LDWI 	6H 			//0156 	0006
		STR 	7BH 			//0157 	10FB
		LDWI 	A1H 			//0158 	00A1
		STR 	7CH 			//0159 	10FC
		LDWI 	40H 			//015A 	0040
		MOVLP 	5H 			//015B 	0185
		LCALL 	5FFH 			//015C 	35FF
		MOVLP 	0H 			//015D 	0180
		XORWI 	0H 			//015E 	0A00
		BTSC 	3H, 2H 			//015F 	2903
		LJUMP 	165H 			//0160 	3965

		//;NFB.C: 109: RDE2 = 1;
		MOVLB 	5H 			//0161 	1025
		CLRF 	5DH 			//0162 	11DD
		INCR 	5DH, 1H 		//0163 	1ADD
		CLRF 	5EH 			//0164 	11DE

		//;NFB.C: 110: }
		//;NFB.C: 111: n = 0;
		MOVLB 	5H 			//0165 	1025
		LDWI 	14H 			//0166 	0014
		CLRF 	6BH 			//0167 	11EB
		CLRF 	6CH 			//0168 	11EC
		CLRF 	70H 			//0169 	11F0
		CLRF 	71H 			//016A 	11F1
		STR 	72H 			//016B 	10F2
		LDWI 	40H 			//016C 	0040
		CLRF 	73H 			//016D 	11F3
		MOVLP 	7H 			//016E 	0187
		LCALL 	7A0H 			//016F 	37A0
		MOVLP 	0H 			//0170 	0180
		LDWI 	14H 			//0171 	0014

		//;NFB.C: 113: memset(valc,0,20);
		CLRF 	70H 			//0172 	11F0
		CLRF 	71H 			//0173 	11F1
		STR 	72H 			//0174 	10F2
		LDWI 	2CH 			//0175 	002C
		CLRF 	73H 			//0176 	11F3
		MOVLP 	7H 			//0177 	0187
		LCALL 	7A0H 			//0178 	37A0
		MOVLP 	0H 			//0179 	0180

		//;NFB.C: 114: }
		//;NFB.C: 115: }
		//;NFB.C: 116: if(EPIF0&0X10)
		MOVLB 	0H 			//017A 	1020
		BTSS 	14H, 4H 		//017B 	2E14
		LJUMP 	18BH 			//017C 	398B

		//;NFB.C: 117: {
		//;NFB.C: 118: EPIF0=0X10;
		LDWI 	10H 			//017D 	0010
		STR 	14H 			//017E 	1094

		//;NFB.C: 119: BTNpressed = 1;
		MOVLB 	5H 			//017F 	1025
		CLRF 	69H 			//0180 	11E9
		INCR 	69H, 1H 		//0181 	1AE9
		CLRF 	6AH 			//0182 	11EA

		//;NFB.C: 120: BATL = 1;
		CLRF 	49H 			//0183 	11C9
		INCR 	49H, 1H 		//0184 	1AC9
		CLRF 	4AH 			//0185 	11CA

		//;NFB.C: 121: BTNcnt = 0;
		MOVLB 	6H 			//0186 	1026
		CLRF 	28H 			//0187 	11A8
		CLRF 	29H 			//0188 	11A9
		CLRF 	2AH 			//0189 	11AA
		CLRF 	2BH 			//018A 	11AB

		//;NFB.C: 122: }
		//;NFB.C: 123: if(T2UIE&&T2UIF)
		MOVLB 	6H 			//018B 	1026
		BTSC 	DH, 0H 			//018C 	280D
		BTSS 	EH, 0H 			//018D 	2C0E
		LJUMP 	205H 			//018E 	3A05

		//;NFB.C: 124: {
		//;NFB.C: 125: T2UIF=1;
		BSR 	EH, 0H 			//018F 	240E

		//;NFB.C: 126: if(BTNpressed){
		MOVLB 	5H 			//0190 	1025
		LDR 	69H, 0H 			//0191 	1869
		IORWR 	6AH, 0H 		//0192 	146A
		BTSC 	3H, 2H 			//0193 	2903
		LJUMP 	1B3H 			//0194 	39B3

		//;NFB.C: 127: BTNcnt++;
		LDWI 	1H 			//0195 	0001
		MOVLB 	6H 			//0196 	1026
		ADDWR 	28H, 1H 		//0197 	17A8
		LDWI 	0H 			//0198 	0000
		ADDWFC 	29H, 1H 		//0199 	0DA9
		ADDWFC 	2AH, 1H 		//019A 	0DAA
		ADDWFC 	2BH, 1H 		//019B 	0DAB

		//;NFB.C: 128: if(PB4){
		MOVLB 	0H 			//019C 	1020
		BTSC 	DH, 4H 			//019D 	2A0D
		LJUMP 	1B0H 			//019E 	39B0

		//;NFB.C: 130: } else if(BTNcnt>=1500){
		MOVLB 	6H 			//019F 	1026
		LDR 	2BH, 0H 			//01A0 	182B
		BTSS 	3H, 2H 			//01A1 	2D03
		LJUMP 	1ACH 			//01A2 	39AC
		LDR 	2AH, 0H 			//01A3 	182A
		BTSS 	3H, 2H 			//01A4 	2D03
		LJUMP 	1ACH 			//01A5 	39AC
		LDWI 	DCH 			//01A6 	00DC
		SUBWR 	28H, 0H 		//01A7 	1228
		LDWI 	5H 			//01A8 	0005
		SUBWFB 	29H, 0H 		//01A9 	0B29
		BTSS 	3H, 0H 			//01AA 	2C03
		LJUMP 	1B3H 			//01AB 	39B3

		//;NFB.C: 131: BTNtimer = 1;
		MOVLB 	0H 			//01AC 	1020
		CLRF 	66H 			//01AD 	11E6
		INCR 	66H, 1H 		//01AE 	1AE6
		CLRF 	67H 			//01AF 	11E7

		//;NFB.C: 129: BTNpressed = 0;
		MOVLB 	5H 			//01B0 	1025
		CLRF 	69H 			//01B1 	11E9
		CLRF 	6AH 			//01B2 	11EA

		//;NFB.C: 133: }
		//;NFB.C: 134: }
		//;NFB.C: 135: if(HTOn){
		MOVLB 	5H 			//01B3 	1025
		LDR 	67H, 0H 			//01B4 	1867
		IORWR 	68H, 0H 		//01B5 	1468
		BTSC 	3H, 2H 			//01B6 	2903
		LJUMP 	1DCH 			//01B7 	39DC

		//;NFB.C: 136: HTcnt++;
		LDWI 	1H 			//01B8 	0001
		MOVLB 	6H 			//01B9 	1026
		ADDWR 	24H, 1H 		//01BA 	17A4
		LDWI 	0H 			//01BB 	0000
		ADDWFC 	25H, 1H 		//01BC 	0DA5
		ADDWFC 	26H, 1H 		//01BD 	0DA6
		ADDWFC 	27H, 1H 		//01BE 	0DA7

		//;NFB.C: 137: if(HTcnt>=50){
		LDR 	27H, 0H 			//01BF 	1827
		BTSS 	3H, 2H 			//01C0 	2D03
		LJUMP 	1CCH 			//01C1 	39CC
		LDR 	26H, 0H 			//01C2 	1826
		BTSS 	3H, 2H 			//01C3 	2D03
		LJUMP 	1CCH 			//01C4 	39CC
		LDR 	25H, 0H 			//01C5 	1825
		BTSS 	3H, 2H 			//01C6 	2D03
		LJUMP 	1CCH 			//01C7 	39CC
		LDWI 	32H 			//01C8 	0032
		SUBWR 	24H, 0H 		//01C9 	1224
		BTSS 	3H, 0H 			//01CA 	2C03
		LJUMP 	1DCH 			//01CB 	39DC

		//;NFB.C: 138: HTtimer = 1;
		MOVLB 	5H 			//01CC 	1025
		LDWI 	1H 			//01CD 	0001
		CLRF 	65H 			//01CE 	11E5
		INCR 	65H, 1H 		//01CF 	1AE5
		CLRF 	66H 			//01D0 	11E6

		//;NFB.C: 139: HTtimecnt++;
		MOVLB 	2H 			//01D1 	1022
		ADDWR 	61H, 1H 		//01D2 	17E1
		LDWI 	0H 			//01D3 	0000
		ADDWFC 	62H, 1H 		//01D4 	0DE2
		ADDWFC 	63H, 1H 		//01D5 	0DE3
		ADDWFC 	64H, 1H 		//01D6 	0DE4

		//;NFB.C: 140: HTcnt = 0;
		MOVLB 	6H 			//01D7 	1026
		CLRF 	24H 			//01D8 	11A4
		CLRF 	25H 			//01D9 	11A5
		CLRF 	26H 			//01DA 	11A6
		CLRF 	27H 			//01DB 	11A7

		//;NFB.C: 141: }
		//;NFB.C: 142: }
		//;NFB.C: 143: if(SmokeOn){
		MOVLB 	5H 			//01DC 	1025
		LDR 	63H, 0H 			//01DD 	1863
		IORWR 	64H, 0H 		//01DE 	1464
		BTSC 	3H, 2H 			//01DF 	2903
		LJUMP 	205H 			//01E0 	3A05

		//;NFB.C: 144: Smokecnt++;
		LDWI 	1H 			//01E1 	0001
		MOVLB 	6H 			//01E2 	1026
		ADDWR 	20H, 1H 		//01E3 	17A0
		LDWI 	0H 			//01E4 	0000
		ADDWFC 	21H, 1H 		//01E5 	0DA1
		ADDWFC 	22H, 1H 		//01E6 	0DA2
		ADDWFC 	23H, 1H 		//01E7 	0DA3

		//;NFB.C: 145: if(Smokecnt>=10){
		LDR 	23H, 0H 			//01E8 	1823
		BTSS 	3H, 2H 			//01E9 	2D03
		LJUMP 	1F5H 			//01EA 	39F5
		LDR 	22H, 0H 			//01EB 	1822
		BTSS 	3H, 2H 			//01EC 	2D03
		LJUMP 	1F5H 			//01ED 	39F5
		LDR 	21H, 0H 			//01EE 	1821
		BTSS 	3H, 2H 			//01EF 	2D03
		LJUMP 	1F5H 			//01F0 	39F5
		LDWI 	AH 			//01F1 	000A
		SUBWR 	20H, 0H 		//01F2 	1220
		BTSS 	3H, 0H 			//01F3 	2C03
		LJUMP 	205H 			//01F4 	3A05

		//;NFB.C: 146: Smoketimer = 1;
		MOVLB 	5H 			//01F5 	1025
		LDWI 	1H 			//01F6 	0001
		CLRF 	61H 			//01F7 	11E1
		INCR 	61H, 1H 		//01F8 	1AE1
		CLRF 	62H 			//01F9 	11E2

		//;NFB.C: 147: Smoketimecnt++;
		MOVLB 	0H 			//01FA 	1020
		ADDWR 	4BH, 1H 		//01FB 	17CB
		LDWI 	0H 			//01FC 	0000
		ADDWFC 	4CH, 1H 		//01FD 	0DCC
		ADDWFC 	4DH, 1H 		//01FE 	0DCD
		ADDWFC 	4EH, 1H 		//01FF 	0DCE

		//;NFB.C: 148: Smokecnt = 0;
		MOVLB 	6H 			//0200 	1026
		CLRF 	20H 			//0201 	11A0
		CLRF 	21H 			//0202 	11A1
		CLRF 	22H 			//0203 	11A2
		CLRF 	23H 			//0204 	11A3
		BCR 	7EH, 0H 			//0205 	207E
		RETI 					//0206 	1009
		MOVLP 	2H 			//0207 	0182
		LJUMP 	209H 			//0208 	3A09
		LDWI 	4BH 			//0209 	004B
		STR 	4H 			//020A 	1084
		LDWI 	0H 			//020B 	0000
		STR 	5H 			//020C 	1085
		LDWI 	25H 			//020D 	0025
		MOVLP 	7H 			//020E 	0187
		LCALL 	7C2H 			//020F 	37C2
		MOVLP 	2H 			//0210 	0182
		LDWI 	61H 			//0211 	0061
		STR 	4H 			//0212 	1084
		LDWI 	1H 			//0213 	0001
		STR 	5H 			//0214 	1085
		LDWI 	FH 			//0215 	000F
		MOVLP 	7H 			//0216 	0187
		LCALL 	7C2H 			//0217 	37C2
		MOVLP 	2H 			//0218 	0182
		LDWI 	A0H 			//0219 	00A0
		STR 	4H 			//021A 	1084
		LDWI 	2H 			//021B 	0002
		STR 	5H 			//021C 	1085
		LDWI 	4DH 			//021D 	004D
		MOVLP 	7H 			//021E 	0187
		LCALL 	7C2H 			//021F 	37C2
		MOVLP 	2H 			//0220 	0182
		LDWI 	20H 			//0221 	0020
		STR 	4H 			//0222 	1084
		LDWI 	3H 			//0223 	0003
		STR 	5H 			//0224 	1085
		LDWI 	34H 			//0225 	0034
		MOVLP 	7H 			//0226 	0187
		LCALL 	7C2H 			//0227 	37C2
		MOVLP 	2H 			//0228 	0182
		BCR 	7EH, 0H 			//0229 	207E
		MOVLB 	0H 			//022A 	1020
		LJUMP 	22CH 			//022B 	3A2C

		//;NFB.C: 870: POWER_INITIAL();
		LCALL 	5CBH 			//022C 	35CB
		MOVLP 	2H 			//022D 	0182

		//;NFB.C: 871: EEPROM_INIT();
		LCALL 	460H 			//022E 	3460

		//;NFB.C: 872: UART_INITIAL();
		MOVLP 	7H 			//022F 	0187
		LCALL 	78DH 			//0230 	378D
		MOVLP 	2H 			//0231 	0182

		//;NFB.C: 873: IO_INT_INITIAL();
		LCALL 	5B6H 			//0232 	35B6
		MOVLP 	2H 			//0233 	0182

		//;NFB.C: 874: ADC_INITIAL();
		LCALL 	59AH 			//0234 	359A
		MOVLP 	2H 			//0235 	0182

		//;NFB.C: 875: OP0_INITIAL();
		LCALL 	5C3H 			//0236 	35C3

		//;NFB.C: 876: TIM2_INITIAL();
		MOVLP 	7H 			//0237 	0187
		LCALL 	7B3H 			//0238 	37B3
		MOVLP 	2H 			//0239 	0182

		//;NFB.C: 877: INIT();
		LCALL 	5ADH 			//023A 	35AD

		//;NFB.C: 878: send((char*)"Version_1.0 OCT2022\r\n",21);
		LDWI 	AAH 			//023B 	00AA
		MOVLB 	2H 			//023C 	1022
		STR 	24H 			//023D 	10A4
		LDWI 	A0H 			//023E 	00A0
		STR 	25H 			//023F 	10A5
		LDWI 	15H 			//0240 	0015
		STR 	26H 			//0241 	10A6
		CLRF 	27H 			//0242 	11A7
		MOVLP 	13H 			//0243 	0193
		LCALL 	3B7H 			//0244 	33B7
		MOVLP 	2H 			//0245 	0182
		LJUMP 	285H 			//0246 	3A85

		//;NFB.C: 884: if(BATL){
		MOVLB 	5H 			//0247 	1025
		LDR 	49H, 0H 			//0248 	1849
		IORWR 	4AH, 0H 		//0249 	144A
		BTSC 	3H, 2H 			//024A 	2903
		LJUMP 	251H 			//024B 	3A51

		//;NFB.C: 885: BATL = 0;
		CLRF 	49H 			//024C 	11C9
		CLRF 	4AH 			//024D 	11CA

		//;NFB.C: 886: BatteryLevel();
		MOVLP 	8H 			//024E 	0188
		LCALL 	D7H 			//024F 	30D7
		MOVLP 	2H 			//0250 	0182

		//;NFB.C: 887: }
		//;NFB.C: 888: if(BTNtimer){
		MOVLB 	0H 			//0251 	1020
		LDR 	66H, 0H 			//0252 	1866
		IORWR 	67H, 0H 		//0253 	1467
		BTSC 	3H, 2H 			//0254 	2903
		LJUMP 	26FH 			//0255 	3A6F
		LDWI 	1H 			//0256 	0001

		//;NFB.C: 889: BTNtimer=0;
		CLRF 	66H 			//0257 	11E6
		CLRF 	67H 			//0258 	11E7

		//;NFB.C: 890: PowerOn = 1 - PowerOn;
		MOVLB 	5H 			//0259 	1025
		STR 	6DH 			//025A 	10ED
		MOVLB 	0H 			//025B 	1020
		LDR 	68H, 0H 			//025C 	1868
		MOVLB 	5H 			//025D 	1025
		SUBWR 	6DH, 0H 		//025E 	126D
		MOVLB 	0H 			//025F 	1020
		STR 	68H 			//0260 	10E8
		COMR 	69H, 0H 		//0261 	1969
		BTSC 	3H, 0H 			//0262 	2803
		INCR 	9H, 1H 			//0263 	1A89
		STR 	69H 			//0264 	10E9

		//;NFB.C: 891: if(PowerOn){
		IORWR 	68H, 0H 		//0265 	1468
		BTSC 	3H, 2H 			//0266 	2903
		LJUMP 	26CH 			//0267 	3A6C

		//;NFB.C: 892: PowerOnProcess();
		MOVLP 	8H 			//0268 	0188
		LCALL 	A0H 			//0269 	30A0
		MOVLP 	2H 			//026A 	0182

		//;NFB.C: 893: } else{
		LJUMP 	26FH 			//026B 	3A6F

		//;NFB.C: 894: PowerOffProcess();
		MOVLP 	10H 			//026C 	0190
		LCALL 	65H 			//026D 	3065
		MOVLP 	2H 			//026E 	0182

		//;NFB.C: 895: }
		//;NFB.C: 896: }
		//;NFB.C: 897: if(HTtimer){
		MOVLB 	5H 			//026F 	1025
		LDR 	65H, 0H 			//0270 	1865
		IORWR 	66H, 0H 		//0271 	1466
		BTSC 	3H, 2H 			//0272 	2903
		LJUMP 	279H 			//0273 	3A79

		//;NFB.C: 898: HTtimer = 0;
		CLRF 	65H 			//0274 	11E5
		CLRF 	66H 			//0275 	11E6

		//;NFB.C: 899: HeatingProcess();
		MOVLP 	10H 			//0276 	0190
		LCALL 	8CH 			//0277 	308C
		MOVLP 	2H 			//0278 	0182

		//;NFB.C: 900: }
		//;NFB.C: 901: if(Smoketimer){
		MOVLB 	5H 			//0279 	1025
		LDR 	61H, 0H 			//027A 	1861
		IORWR 	62H, 0H 		//027B 	1462
		BTSC 	3H, 2H 			//027C 	2903
		LJUMP 	283H 			//027D 	3A83

		//;NFB.C: 902: Smoketimer = 0;
		CLRF 	61H 			//027E 	11E1
		CLRF 	62H 			//027F 	11E2

		//;NFB.C: 903: SmokingProcess();
		MOVLP 	9H 			//0280 	0189
		LCALL 	180H 			//0281 	3180
		MOVLP 	2H 			//0282 	0182

		//;NFB.C: 904: }
		//;NFB.C: 905: UART_Check();
		LCALL 	299H 			//0283 	3299
		MOVLP 	2H 			//0284 	0182

		//;NFB.C: 906: } else{
		//;NFB.C: 881: {
		//;NFB.C: 883: if(!PA6){
		MOVLB 	0H 			//0285 	1020
		BTSS 	CH, 6H 			//0286 	2F0C
		LJUMP 	247H 			//0287 	3A47

		//;NFB.C: 907: BatteryChargingLevel();
		MOVLP 	8H 			//0288 	0188
		LCALL 	20H 			//0289 	3020
		MOVLP 	2H 			//028A 	0182

		//;NFB.C: 908: if(BTNtimer){
		MOVLB 	0H 			//028B 	1020
		LDR 	66H, 0H 			//028C 	1866
		IORWR 	67H, 0H 		//028D 	1467
		BTSC 	3H, 2H 			//028E 	2903
		LJUMP 	292H 			//028F 	3A92

		//;NFB.C: 909: BTNtimer=0;
		CLRF 	66H 			//0290 	11E6
		CLRF 	67H 			//0291 	11E7

		//;NFB.C: 910: }
		//;NFB.C: 911: if(!PA6){
		BTSC 	CH, 6H 			//0292 	2B0C
		LJUMP 	285H 			//0293 	3A85

		//;NFB.C: 912: PB7 = 1;
		BSR 	DH, 7H 			//0294 	278D

		//;NFB.C: 913: PB3 = 1;
		BSR 	DH, 3H 			//0295 	258D

		//;NFB.C: 914: PB2 = 1;
		BSR 	DH, 2H 			//0296 	250D

		//;NFB.C: 915: PA1 = 1;
		BSR 	CH, 1H 			//0297 	248C
		LJUMP 	285H 			//0298 	3A85

		//;NFB.C: 791: if(RDE1){
		MOVLB 	5H 			//0299 	1025
		LDR 	5FH, 0H 			//029A 	185F
		IORWR 	60H, 0H 		//029B 	1460
		BTSC 	3H, 2H 			//029C 	2903
		LJUMP 	2F2H 			//029D 	3AF2
		LDWI 	A0H 			//029E 	00A0

		//;NFB.C: 792: RDE1 = 0;
		CLRF 	5FH 			//029F 	11DF
		CLRF 	60H 			//02A0 	11E0

		//;NFB.C: 793: char msg[80];
		//;NFB.C: 794: sprintf(msg,"HTP%d,%d,%0.0f,%0.0f,%d,%d\r\n",t1,t2,T1,T2,pf,pt);
		MOVLB 	2H 			//02A1 	1022
		STR 	20H 			//02A2 	10A0
		LDWI 	1H 			//02A3 	0001
		STR 	21H 			//02A4 	10A1
		LDWI 	28H 			//02A5 	0028
		STR 	22H 			//02A6 	10A2
		LDWI 	A0H 			//02A7 	00A0
		STR 	23H 			//02A8 	10A3
		LDR 	6FH, 0H 			//02A9 	186F
		STR 	25H 			//02AA 	10A5
		LDR 	6EH, 0H 			//02AB 	186E
		STR 	24H 			//02AC 	10A4
		MOVLB 	0H 			//02AD 	1020
		LDR 	63H, 0H 			//02AE 	1863
		MOVLB 	2H 			//02AF 	1022
		STR 	27H 			//02B0 	10A7
		MOVLB 	0H 			//02B1 	1020
		LDR 	62H, 0H 			//02B2 	1862
		MOVLB 	2H 			//02B3 	1022
		STR 	26H 			//02B4 	10A6
		MOVLB 	0H 			//02B5 	1020
		LDR 	52H, 0H 			//02B6 	1852
		MOVLB 	2H 			//02B7 	1022
		STR 	28H 			//02B8 	10A8
		MOVLB 	0H 			//02B9 	1020
		LDR 	53H, 0H 			//02BA 	1853
		MOVLB 	2H 			//02BB 	1022
		STR 	29H 			//02BC 	10A9
		MOVLB 	0H 			//02BD 	1020
		LDR 	54H, 0H 			//02BE 	1854
		MOVLB 	2H 			//02BF 	1022
		STR 	2AH 			//02C0 	10AA
		MOVLB 	0H 			//02C1 	1020
		LDR 	4FH, 0H 			//02C2 	184F
		MOVLB 	2H 			//02C3 	1022
		STR 	2BH 			//02C4 	10AB
		MOVLB 	0H 			//02C5 	1020
		LDR 	50H, 0H 			//02C6 	1850
		MOVLB 	2H 			//02C7 	1022
		STR 	2CH 			//02C8 	10AC
		MOVLB 	0H 			//02C9 	1020
		LDR 	51H, 0H 			//02CA 	1851
		MOVLB 	2H 			//02CB 	1022
		STR 	2DH 			//02CC 	10AD
		MOVLB 	0H 			//02CD 	1020
		LDR 	61H, 0H 			//02CE 	1861
		MOVLB 	2H 			//02CF 	1022
		STR 	2FH 			//02D0 	10AF
		MOVLB 	0H 			//02D1 	1020
		LDR 	60H, 0H 			//02D2 	1860
		MOVLB 	2H 			//02D3 	1022
		STR 	2EH 			//02D4 	10AE
		MOVLB 	0H 			//02D5 	1020
		LDR 	5FH, 0H 			//02D6 	185F
		MOVLB 	2H 			//02D7 	1022
		STR 	31H 			//02D8 	10B1
		MOVLB 	0H 			//02D9 	1020
		LDR 	5EH, 0H 			//02DA 	185E
		MOVLB 	2H 			//02DB 	1022
		STR 	30H 			//02DC 	10B0
		MOVLP 	19H 			//02DD 	0199
		LCALL 	12FH 			//02DE 	312F
		MOVLP 	2H 			//02DF 	0182

		//;NFB.C: 795: send(msg,strlen(msg));
		LDWI 	A0H 			//02E0 	00A0
		STR 	24H 			//02E1 	10A4
		LDWI 	1H 			//02E2 	0001
		STR 	25H 			//02E3 	10A5
		LDWI 	A0H 			//02E4 	00A0
		MOVLB 	1H 			//02E5 	1021
		STR 	20H 			//02E6 	10A0
		LDWI 	1H 			//02E7 	0001
		STR 	21H 			//02E8 	10A1
		MOVLP 	CH 			//02E9 	018C
		LCALL 	4C6H 			//02EA 	34C6
		MOVLP 	2H 			//02EB 	0182
		MOVLP 	EH 			//02EC 	018E
		LCALL 	64FH 			//02ED 	364F
		MOVLP 	2H 			//02EE 	0182
		MOVLP 	13H 			//02EF 	0193
		LCALL 	3B7H 			//02F0 	33B7
		MOVLP 	2H 			//02F1 	0182

		//;NFB.C: 796: }
		//;NFB.C: 797: if(RDE2){
		MOVLB 	5H 			//02F2 	1025
		LDR 	5DH, 0H 			//02F3 	185D
		IORWR 	5EH, 0H 		//02F4 	145E
		BTSC 	3H, 2H 			//02F5 	2903
		LJUMP 	33BH 			//02F6 	3B3B
		LDWI 	20H 			//02F7 	0020

		//;NFB.C: 798: RDE2 = 0;
		CLRF 	5DH 			//02F8 	11DD
		CLRF 	5EH 			//02F9 	11DE

		//;NFB.C: 799: char msg[80];
		//;NFB.C: 800: sprintf(msg,"TCR%0.0f,%0.0f,%0.2f\r\n",T0,Tr,R0);
		MOVLB 	2H 			//02FA 	1022
		STR 	20H 			//02FB 	10A0
		LDWI 	2H 			//02FC 	0002
		STR 	21H 			//02FD 	10A1
		LDWI 	93H 			//02FE 	0093
		STR 	22H 			//02FF 	10A2
		LDWI 	A0H 			//0300 	00A0
		STR 	23H 			//0301 	10A3
		MOVLB 	0H 			//0302 	1020
		LDR 	58H, 0H 			//0303 	1858
		MOVLB 	2H 			//0304 	1022
		STR 	24H 			//0305 	10A4
		MOVLB 	0H 			//0306 	1020
		LDR 	59H, 0H 			//0307 	1859
		MOVLB 	2H 			//0308 	1022
		STR 	25H 			//0309 	10A5
		MOVLB 	0H 			//030A 	1020
		LDR 	5AH, 0H 			//030B 	185A
		MOVLB 	2H 			//030C 	1022
		STR 	26H 			//030D 	10A6
		MOVLB 	0H 			//030E 	1020
		LDR 	55H, 0H 			//030F 	1855
		MOVLB 	2H 			//0310 	1022
		STR 	27H 			//0311 	10A7
		MOVLB 	0H 			//0312 	1020
		LDR 	56H, 0H 			//0313 	1856
		MOVLB 	2H 			//0314 	1022
		STR 	28H 			//0315 	10A8
		MOVLB 	0H 			//0316 	1020
		LDR 	57H, 0H 			//0317 	1857
		MOVLB 	2H 			//0318 	1022
		STR 	29H 			//0319 	10A9
		MOVLB 	0H 			//031A 	1020
		LDR 	5BH, 0H 			//031B 	185B
		MOVLB 	2H 			//031C 	1022
		STR 	2AH 			//031D 	10AA
		MOVLB 	0H 			//031E 	1020
		LDR 	5CH, 0H 			//031F 	185C
		MOVLB 	2H 			//0320 	1022
		STR 	2BH 			//0321 	10AB
		MOVLB 	0H 			//0322 	1020
		LDR 	5DH, 0H 			//0323 	185D
		MOVLB 	2H 			//0324 	1022
		STR 	2CH 			//0325 	10AC
		MOVLP 	19H 			//0326 	0199
		LCALL 	12FH 			//0327 	312F
		MOVLP 	2H 			//0328 	0182

		//;NFB.C: 801: send(msg,strlen(msg));
		LDWI 	20H 			//0329 	0020
		STR 	24H 			//032A 	10A4
		LDWI 	2H 			//032B 	0002
		STR 	25H 			//032C 	10A5
		LDWI 	20H 			//032D 	0020
		MOVLB 	1H 			//032E 	1021
		STR 	20H 			//032F 	10A0
		LDWI 	2H 			//0330 	0002
		STR 	21H 			//0331 	10A1
		MOVLP 	CH 			//0332 	018C
		LCALL 	4C6H 			//0333 	34C6
		MOVLP 	2H 			//0334 	0182
		MOVLP 	EH 			//0335 	018E
		LCALL 	64FH 			//0336 	364F
		MOVLP 	2H 			//0337 	0182
		MOVLP 	13H 			//0338 	0193
		LCALL 	3B7H 			//0339 	33B7
		MOVLP 	2H 			//033A 	0182

		//;NFB.C: 802: }
		//;NFB.C: 803: if(t1E){
		MOVLB 	5H 			//033B 	1025
		LDR 	5BH, 0H 			//033C 	185B
		IORWR 	5CH, 0H 		//033D 	145C
		BTSC 	3H, 2H 			//033E 	2903
		LJUMP 	34BH 			//033F 	3B4B

		//;NFB.C: 804: t1E = 0;
		CLRF 	5BH 			//0340 	11DB
		CLRF 	5CH 			//0341 	11DC

		//;NFB.C: 805: unsigned char dataL = t1;
		MOVLB 	2H 			//0342 	1022
		LDR 	6EH, 0H 			//0343 	186E
		STR 	4EH 			//0344 	10CE

		//;NFB.C: 806: EEPROMwrite(0x01,dataL);
		LDR 	4EH, 0H 			//0345 	184E
		MOVLB 	1H 			//0346 	1021
		STR 	20H 			//0347 	10A0
		LDWI 	1H 			//0348 	0001
		LCALL 	561H 			//0349 	3561
		MOVLP 	2H 			//034A 	0182

		//;NFB.C: 807: }
		//;NFB.C: 808: if(t2E){
		MOVLB 	5H 			//034B 	1025
		LDR 	59H, 0H 			//034C 	1859
		IORWR 	5AH, 0H 		//034D 	145A
		BTSC 	3H, 2H 			//034E 	2903
		LJUMP 	367H 			//034F 	3B67

		//;NFB.C: 809: t2E = 0;
		CLRF 	59H 			//0350 	11D9
		CLRF 	5AH 			//0351 	11DA

		//;NFB.C: 810: unsigned char dataL = t2&0xFF;
		MOVLB 	0H 			//0352 	1020
		LDR 	62H, 0H 			//0353 	1862
		MOVLB 	2H 			//0354 	1022
		STR 	4FH 			//0355 	10CF

		//;NFB.C: 811: unsigned char dataH = (t2>>8)&0xFF;
		MOVLB 	0H 			//0356 	1020
		LDR 	63H, 0H 			//0357 	1863
		MOVLB 	2H 			//0358 	1022
		STR 	50H 			//0359 	10D0

		//;NFB.C: 812: EEPROMwrite(0x02,dataL);
		LDR 	4FH, 0H 			//035A 	184F
		MOVLB 	1H 			//035B 	1021
		STR 	20H 			//035C 	10A0
		LDWI 	2H 			//035D 	0002
		LCALL 	561H 			//035E 	3561
		MOVLP 	2H 			//035F 	0182

		//;NFB.C: 813: EEPROMwrite(0x03,dataH);
		MOVLB 	2H 			//0360 	1022
		LDR 	50H, 0H 			//0361 	1850
		MOVLB 	1H 			//0362 	1021
		STR 	20H 			//0363 	10A0
		LDWI 	3H 			//0364 	0003
		LCALL 	561H 			//0365 	3561
		MOVLP 	2H 			//0366 	0182

		//;NFB.C: 814: }
		//;NFB.C: 815: if(T1E){
		MOVLB 	5H 			//0367 	1025
		LDR 	57H, 0H 			//0368 	1857
		IORWR 	58H, 0H 		//0369 	1458
		BTSC 	3H, 2H 			//036A 	2903
		LJUMP 	394H 			//036B 	3B94

		//;NFB.C: 816: T1E = 0;
		CLRF 	57H 			//036C 	11D7
		CLRF 	58H 			//036D 	11D8

		//;NFB.C: 817: int data = (int)T1;
		MOVLB 	0H 			//036E 	1020
		LDR 	52H, 0H 			//036F 	1852
		MOVLB 	1H 			//0370 	1021
		STR 	5DH 			//0371 	10DD
		MOVLB 	0H 			//0372 	1020
		LDR 	53H, 0H 			//0373 	1853
		MOVLB 	1H 			//0374 	1021
		STR 	5EH 			//0375 	10DE
		MOVLB 	0H 			//0376 	1020
		LDR 	54H, 0H 			//0377 	1854
		MOVLB 	1H 			//0378 	1021
		STR 	5FH 			//0379 	10DF
		MOVLP 	15H 			//037A 	0195
		LCALL 	553H 			//037B 	3553
		MOVLP 	2H 			//037C 	0182
		LDR 	5EH, 0H 			//037D 	185E
		MOVLB 	2H 			//037E 	1022
		STR 	5CH 			//037F 	10DC
		MOVLB 	1H 			//0380 	1021
		LDR 	5DH, 0H 			//0381 	185D
		MOVLB 	2H 			//0382 	1022
		STR 	5BH 			//0383 	10DB

		//;NFB.C: 818: unsigned char dataL = data&0xFF;
		STR 	51H 			//0384 	10D1

		//;NFB.C: 819: unsigned char dataH = (data>>8)&0xFF;
		LDR 	5CH, 0H 			//0385 	185C
		STR 	52H 			//0386 	10D2

		//;NFB.C: 820: EEPROMwrite(0x04,dataL);
		LDR 	51H, 0H 			//0387 	1851
		MOVLB 	1H 			//0388 	1021
		STR 	20H 			//0389 	10A0
		LDWI 	4H 			//038A 	0004
		LCALL 	561H 			//038B 	3561
		MOVLP 	2H 			//038C 	0182

		//;NFB.C: 821: EEPROMwrite(0x05,dataH);
		MOVLB 	2H 			//038D 	1022
		LDR 	52H, 0H 			//038E 	1852
		MOVLB 	1H 			//038F 	1021
		STR 	20H 			//0390 	10A0
		LDWI 	5H 			//0391 	0005
		LCALL 	561H 			//0392 	3561
		MOVLP 	2H 			//0393 	0182

		//;NFB.C: 822: }
		//;NFB.C: 823: if(T2E){
		MOVLB 	5H 			//0394 	1025
		LDR 	55H, 0H 			//0395 	1855
		IORWR 	56H, 0H 		//0396 	1456
		BTSC 	3H, 2H 			//0397 	2903
		LJUMP 	3C1H 			//0398 	3BC1

		//;NFB.C: 824: T2E = 0;
		CLRF 	55H 			//0399 	11D5
		CLRF 	56H 			//039A 	11D6

		//;NFB.C: 825: int data = (int)T2;
		MOVLB 	0H 			//039B 	1020
		LDR 	4FH, 0H 			//039C 	184F
		MOVLB 	1H 			//039D 	1021
		STR 	5DH 			//039E 	10DD
		MOVLB 	0H 			//039F 	1020
		LDR 	50H, 0H 			//03A0 	1850
		MOVLB 	1H 			//03A1 	1021
		STR 	5EH 			//03A2 	10DE
		MOVLB 	0H 			//03A3 	1020
		LDR 	51H, 0H 			//03A4 	1851
		MOVLB 	1H 			//03A5 	1021
		STR 	5FH 			//03A6 	10DF
		MOVLP 	15H 			//03A7 	0195
		LCALL 	553H 			//03A8 	3553
		MOVLP 	2H 			//03A9 	0182
		LDR 	5EH, 0H 			//03AA 	185E
		MOVLB 	2H 			//03AB 	1022
		STR 	5EH 			//03AC 	10DE
		MOVLB 	1H 			//03AD 	1021
		LDR 	5DH, 0H 			//03AE 	185D
		MOVLB 	2H 			//03AF 	1022
		STR 	5DH 			//03B0 	10DD

		//;NFB.C: 826: unsigned char dataL = data&0xFF;
		STR 	53H 			//03B1 	10D3

		//;NFB.C: 827: unsigned char dataH = (data>>8)&0xFF;
		LDR 	5EH, 0H 			//03B2 	185E
		STR 	54H 			//03B3 	10D4

		//;NFB.C: 828: EEPROMwrite(0x06,dataL);
		LDR 	53H, 0H 			//03B4 	1853
		MOVLB 	1H 			//03B5 	1021
		STR 	20H 			//03B6 	10A0
		LDWI 	6H 			//03B7 	0006
		LCALL 	561H 			//03B8 	3561
		MOVLP 	2H 			//03B9 	0182

		//;NFB.C: 829: EEPROMwrite(0x07,dataH);
		MOVLB 	2H 			//03BA 	1022
		LDR 	54H, 0H 			//03BB 	1854
		MOVLB 	1H 			//03BC 	1021
		STR 	20H 			//03BD 	10A0
		LDWI 	7H 			//03BE 	0007
		LCALL 	561H 			//03BF 	3561
		MOVLP 	2H 			//03C0 	0182

		//;NFB.C: 830: }
		//;NFB.C: 831: if(PFE){
		MOVLB 	5H 			//03C1 	1025
		LDR 	51H, 0H 			//03C2 	1851
		IORWR 	52H, 0H 		//03C3 	1452
		BTSC 	3H, 2H 			//03C4 	2903
		LJUMP 	3D2H 			//03C5 	3BD2

		//;NFB.C: 832: PFE = 0;
		CLRF 	51H 			//03C6 	11D1
		CLRF 	52H 			//03C7 	11D2

		//;NFB.C: 833: unsigned char dataL = pf&0xFF;
		MOVLB 	0H 			//03C8 	1020
		LDR 	60H, 0H 			//03C9 	1860
		MOVLB 	2H 			//03CA 	1022
		STR 	55H 			//03CB 	10D5

		//;NFB.C: 834: EEPROMwrite(0x08,dataL);
		LDR 	55H, 0H 			//03CC 	1855
		MOVLB 	1H 			//03CD 	1021
		STR 	20H 			//03CE 	10A0
		LDWI 	8H 			//03CF 	0008
		LCALL 	561H 			//03D0 	3561
		MOVLP 	2H 			//03D1 	0182

		//;NFB.C: 835: }
		//;NFB.C: 836: if(PTE){
		MOVLB 	5H 			//03D2 	1025
		LDR 	53H, 0H 			//03D3 	1853
		IORWR 	54H, 0H 		//03D4 	1454
		BTSC 	3H, 2H 			//03D5 	2903
		LJUMP 	3E3H 			//03D6 	3BE3

		//;NFB.C: 837: PTE = 0;
		CLRF 	53H 			//03D7 	11D3
		CLRF 	54H 			//03D8 	11D4

		//;NFB.C: 838: unsigned char dataL = pt&0xFF;
		MOVLB 	0H 			//03D9 	1020
		LDR 	5EH, 0H 			//03DA 	185E
		MOVLB 	2H 			//03DB 	1022
		STR 	56H 			//03DC 	10D6

		//;NFB.C: 839: EEPROMwrite(0x09,dataL);
		LDR 	56H, 0H 			//03DD 	1856
		MOVLB 	1H 			//03DE 	1021
		STR 	20H 			//03DF 	10A0
		LDWI 	9H 			//03E0 	0009
		LCALL 	561H 			//03E1 	3561
		MOVLP 	2H 			//03E2 	0182

		//;NFB.C: 840: }
		//;NFB.C: 841: if(T0E){
		MOVLB 	5H 			//03E3 	1025
		LDR 	4FH, 0H 			//03E4 	184F
		IORWR 	50H, 0H 		//03E5 	1450
		BTSC 	3H, 2H 			//03E6 	2903
		LJUMP 	410H 			//03E7 	3C10

		//;NFB.C: 842: T0E = 0;
		CLRF 	4FH 			//03E8 	11CF
		CLRF 	50H 			//03E9 	11D0

		//;NFB.C: 843: int data = (int)T0;
		MOVLB 	0H 			//03EA 	1020
		LDR 	58H, 0H 			//03EB 	1858
		MOVLB 	1H 			//03EC 	1021
		STR 	5DH 			//03ED 	10DD
		MOVLB 	0H 			//03EE 	1020
		LDR 	59H, 0H 			//03EF 	1859
		MOVLB 	1H 			//03F0 	1021
		STR 	5EH 			//03F1 	10DE
		MOVLB 	0H 			//03F2 	1020
		LDR 	5AH, 0H 			//03F3 	185A
		MOVLB 	1H 			//03F4 	1021
		STR 	5FH 			//03F5 	10DF
		MOVLP 	15H 			//03F6 	0195
		LCALL 	553H 			//03F7 	3553
		MOVLP 	2H 			//03F8 	0182
		LDR 	5EH, 0H 			//03F9 	185E
		MOVLB 	2H 			//03FA 	1022
		STR 	60H 			//03FB 	10E0
		MOVLB 	1H 			//03FC 	1021
		LDR 	5DH, 0H 			//03FD 	185D
		MOVLB 	2H 			//03FE 	1022
		STR 	5FH 			//03FF 	10DF

		//;NFB.C: 844: unsigned char dataL = data&0xFF;
		STR 	57H 			//0400 	10D7

		//;NFB.C: 845: unsigned char dataH = (data>>8)&0xFF;
		LDR 	60H, 0H 			//0401 	1860
		STR 	58H 			//0402 	10D8

		//;NFB.C: 846: EEPROMwrite(0x0A,dataL);
		LDR 	57H, 0H 			//0403 	1857
		MOVLB 	1H 			//0404 	1021
		STR 	20H 			//0405 	10A0
		LDWI 	AH 			//0406 	000A
		LCALL 	561H 			//0407 	3561
		MOVLP 	2H 			//0408 	0182

		//;NFB.C: 847: EEPROMwrite(0x0B,dataH);
		MOVLB 	2H 			//0409 	1022
		LDR 	58H, 0H 			//040A 	1858
		MOVLB 	1H 			//040B 	1021
		STR 	20H 			//040C 	10A0
		LDWI 	BH 			//040D 	000B
		LCALL 	561H 			//040E 	3561
		MOVLP 	2H 			//040F 	0182

		//;NFB.C: 848: }
		//;NFB.C: 849: if(TRE){
		MOVLB 	5H 			//0410 	1025
		LDR 	4DH, 0H 			//0411 	184D
		IORWR 	4EH, 0H 		//0412 	144E
		BTSC 	3H, 2H 			//0413 	2903
		LJUMP 	434H 			//0414 	3C34

		//;NFB.C: 850: TRE = 0;
		CLRF 	4DH 			//0415 	11CD
		CLRF 	4EH 			//0416 	11CE

		//;NFB.C: 851: int data = (int)Tr;
		MOVLB 	0H 			//0417 	1020
		LDR 	55H, 0H 			//0418 	1855
		MOVLB 	1H 			//0419 	1021
		STR 	5DH 			//041A 	10DD
		MOVLB 	0H 			//041B 	1020
		LDR 	56H, 0H 			//041C 	1856
		MOVLB 	1H 			//041D 	1021
		STR 	5EH 			//041E 	10DE
		MOVLB 	0H 			//041F 	1020
		LDR 	57H, 0H 			//0420 	1857
		MOVLB 	1H 			//0421 	1021
		STR 	5FH 			//0422 	10DF
		MOVLP 	15H 			//0423 	0195
		LCALL 	553H 			//0424 	3553
		MOVLP 	2H 			//0425 	0182
		LDR 	5EH, 0H 			//0426 	185E
		MOVLB 	2H 			//0427 	1022
		STR 	4BH 			//0428 	10CB
		MOVLB 	1H 			//0429 	1021
		LDR 	5DH, 0H 			//042A 	185D
		MOVLB 	2H 			//042B 	1022
		STR 	4AH 			//042C 	10CA

		//;NFB.C: 852: unsigned char dataL = data&0xFF;
		STR 	59H 			//042D 	10D9

		//;NFB.C: 853: EEPROMwrite(0x0C,dataL);
		LDR 	59H, 0H 			//042E 	1859
		MOVLB 	1H 			//042F 	1021
		STR 	20H 			//0430 	10A0
		LDWI 	CH 			//0431 	000C
		LCALL 	561H 			//0432 	3561
		MOVLP 	2H 			//0433 	0182

		//;NFB.C: 854: }
		//;NFB.C: 855: if(R0E){
		MOVLB 	5H 			//0434 	1025
		LDR 	4BH, 0H 			//0435 	184B
		IORWR 	4CH, 0H 		//0436 	144C
		BTSC 	3H, 2H 			//0437 	2903
		RET 					//0438 	1008

		//;NFB.C: 856: R0E = 0;
		CLRF 	4BH 			//0439 	11CB
		CLRF 	4CH 			//043A 	11CC

		//;NFB.C: 857: int data = (int)(R0*100);
		MOVLB 	0H 			//043B 	1020
		LDR 	5BH, 0H 			//043C 	185B
		MOVLB 	1H 			//043D 	1021
		STR 	49H 			//043E 	10C9
		MOVLB 	0H 			//043F 	1020
		LDR 	5CH, 0H 			//0440 	185C
		MOVLB 	1H 			//0441 	1021
		STR 	4AH 			//0442 	10CA
		MOVLB 	0H 			//0443 	1020
		LDR 	5DH, 0H 			//0444 	185D
		MOVLB 	1H 			//0445 	1021
		STR 	4BH 			//0446 	10CB
		LDWI 	C8H 			//0447 	00C8
		CLRF 	46H 			//0448 	11C6
		STR 	47H 			//0449 	10C7
		LDWI 	42H 			//044A 	0042
		STR 	48H 			//044B 	10C8
		MOVLP 	CH 			//044C 	018C
		LCALL 	42EH 			//044D 	342E
		MOVLP 	2H 			//044E 	0182
		LCALL 	5F2H 			//044F 	35F2
		MOVLP 	15H 			//0450 	0195
		LCALL 	553H 			//0451 	3553
		MOVLP 	2H 			//0452 	0182
		LDR 	5EH, 0H 			//0453 	185E
		MOVLB 	2H 			//0454 	1022
		STR 	4DH 			//0455 	10CD
		MOVLB 	1H 			//0456 	1021
		LDR 	5DH, 0H 			//0457 	185D
		MOVLB 	2H 			//0458 	1022
		STR 	4CH 			//0459 	10CC

		//;NFB.C: 858: unsigned char dataL = data&0xFF;
		STR 	5AH 			//045A 	10DA

		//;NFB.C: 859: EEPROMwrite(0x0D,dataL);
		LDR 	5AH, 0H 			//045B 	185A
		MOVLB 	1H 			//045C 	1021
		STR 	20H 			//045D 	10A0
		LDWI 	DH 			//045E 	000D
		LJUMP 	561H 			//045F 	3D61

		//;NFB.C: 499: unsigned char EEReadData=EEPROMread(0x00);
		LDWI 	0H 			//0460 	0000
		LCALL 	549H 			//0461 	3549
		MOVLP 	2H 			//0462 	0182
		STR 	66H 			//0463 	10E6

		//;NFB.C: 500: if(EEReadData != 0x01){
		DECR 	66H, 0H 		//0464 	1366
		BTSC 	3H, 2H 			//0465 	2903
		LJUMP 	4B9H 			//0466 	3CB9
		LDWI 	0H 			//0467 	0000

		//;NFB.C: 501: EEPROMwrite(0x00,0x01);
		CLRF 	20H 			//0468 	11A0
		INCR 	20H, 1H 		//0469 	1AA0
		LCALL 	561H 			//046A 	3561
		MOVLP 	2H 			//046B 	0182

		//;NFB.C: 502: EEPROMwrite(0x01,0x14);
		LDWI 	14H 			//046C 	0014
		MOVLB 	1H 			//046D 	1021
		STR 	20H 			//046E 	10A0
		LDWI 	1H 			//046F 	0001
		LCALL 	561H 			//0470 	3561
		MOVLP 	2H 			//0471 	0182

		//;NFB.C: 503: EEPROMwrite(0x02,0x36);
		LDWI 	36H 			//0472 	0036
		MOVLB 	1H 			//0473 	1021
		STR 	20H 			//0474 	10A0
		LDWI 	2H 			//0475 	0002
		LCALL 	561H 			//0476 	3561
		MOVLP 	2H 			//0477 	0182

		//;NFB.C: 504: EEPROMwrite(0x03,0x01);
		MOVLB 	1H 			//0478 	1021
		LDWI 	3H 			//0479 	0003
		CLRF 	20H 			//047A 	11A0
		INCR 	20H, 1H 		//047B 	1AA0
		LCALL 	561H 			//047C 	3561
		MOVLP 	2H 			//047D 	0182

		//;NFB.C: 505: EEPROMwrite(0x04,0x40);
		LDWI 	40H 			//047E 	0040
		MOVLB 	1H 			//047F 	1021
		STR 	20H 			//0480 	10A0
		LDWI 	4H 			//0481 	0004
		LCALL 	561H 			//0482 	3561
		MOVLP 	2H 			//0483 	0182

		//;NFB.C: 506: EEPROMwrite(0x05,0x01);
		MOVLB 	1H 			//0484 	1021
		LDWI 	5H 			//0485 	0005
		CLRF 	20H 			//0486 	11A0
		INCR 	20H, 1H 		//0487 	1AA0
		LCALL 	561H 			//0488 	3561
		MOVLP 	2H 			//0489 	0182

		//;NFB.C: 507: EEPROMwrite(0x06,0x27);
		LDWI 	27H 			//048A 	0027
		MOVLB 	1H 			//048B 	1021
		STR 	20H 			//048C 	10A0
		LDWI 	6H 			//048D 	0006
		LCALL 	561H 			//048E 	3561
		MOVLP 	2H 			//048F 	0182

		//;NFB.C: 508: EEPROMwrite(0x07,0x01);
		MOVLB 	1H 			//0490 	1021
		LDWI 	7H 			//0491 	0007
		CLRF 	20H 			//0492 	11A0
		INCR 	20H, 1H 		//0493 	1AA0
		LCALL 	561H 			//0494 	3561
		MOVLP 	2H 			//0495 	0182

		//;NFB.C: 509: EEPROMwrite(0x08,0x0F);
		LDWI 	FH 			//0496 	000F
		MOVLB 	1H 			//0497 	1021
		STR 	20H 			//0498 	10A0
		LDWI 	8H 			//0499 	0008
		LCALL 	561H 			//049A 	3561
		MOVLP 	2H 			//049B 	0182

		//;NFB.C: 510: EEPROMwrite(0x09,0x05);
		LDWI 	5H 			//049C 	0005
		MOVLB 	1H 			//049D 	1021
		STR 	20H 			//049E 	10A0
		LDWI 	9H 			//049F 	0009
		LCALL 	561H 			//04A0 	3561
		MOVLP 	2H 			//04A1 	0182

		//;NFB.C: 511: EEPROMwrite(0x0A,0x28);
		LDWI 	28H 			//04A2 	0028
		MOVLB 	1H 			//04A3 	1021
		STR 	20H 			//04A4 	10A0
		LDWI 	AH 			//04A5 	000A
		LCALL 	561H 			//04A6 	3561
		MOVLP 	2H 			//04A7 	0182

		//;NFB.C: 512: EEPROMwrite(0x0B,0x0A);
		LDWI 	AH 			//04A8 	000A
		MOVLB 	1H 			//04A9 	1021
		STR 	20H 			//04AA 	10A0
		LDWI 	BH 			//04AB 	000B
		LCALL 	561H 			//04AC 	3561
		MOVLP 	2H 			//04AD 	0182

		//;NFB.C: 513: EEPROMwrite(0x0C,0x19);
		LDWI 	19H 			//04AE 	0019
		MOVLB 	1H 			//04AF 	1021
		STR 	20H 			//04B0 	10A0
		LDWI 	CH 			//04B1 	000C
		LCALL 	561H 			//04B2 	3561
		MOVLP 	2H 			//04B3 	0182

		//;NFB.C: 514: EEPROMwrite(0x0D,0x41);
		LDWI 	41H 			//04B4 	0041
		MOVLB 	1H 			//04B5 	1021
		STR 	20H 			//04B6 	10A0
		LDWI 	DH 			//04B7 	000D
		LJUMP 	561H 			//04B8 	3D61

		//;NFB.C: 515: } else{
		//;NFB.C: 516: t1 = EEPROMread(0x01);
		LDWI 	1H 			//04B9 	0001
		LCALL 	549H 			//04BA 	3549
		MOVLP 	2H 			//04BB 	0182
		MOVLB 	2H 			//04BC 	1022
		STR 	6EH 			//04BD 	10EE
		LDWI 	2H 			//04BE 	0002
		CLRF 	6FH 			//04BF 	11EF

		//;NFB.C: 517: t2 = (EEPROMread(0x03)<<8)+EEPROMread(0x02);
		LCALL 	549H 			//04C0 	3549
		MOVLP 	2H 			//04C1 	0182
		STR 	64H 			//04C2 	10E4
		LDWI 	3H 			//04C3 	0003
		LCALL 	549H 			//04C4 	3549
		MOVLP 	2H 			//04C5 	0182
		MOVLB 	0H 			//04C6 	1020
		STR 	63H 			//04C7 	10E3
		MOVLB 	1H 			//04C8 	1021
		LDR 	64H, 0H 			//04C9 	1864
		MOVLB 	0H 			//04CA 	1020
		STR 	62H 			//04CB 	10E2

		//;NFB.C: 518: T1 = (EEPROMread(0x05)<<8)+EEPROMread(0x04);
		LDWI 	4H 			//04CC 	0004
		LCALL 	549H 			//04CD 	3549
		MOVLP 	2H 			//04CE 	0182
		STR 	64H 			//04CF 	10E4
		LDWI 	5H 			//04D0 	0005
		LCALL 	549H 			//04D1 	3549
		MOVLP 	2H 			//04D2 	0182
		LCALL 	5F9H 			//04D3 	35F9
		MOVLP 	14H 			//04D4 	0194
		LCALL 	4C1H 			//04D5 	34C1
		MOVLP 	2H 			//04D6 	0182
		LDR 	2EH, 0H 			//04D7 	182E
		MOVLB 	0H 			//04D8 	1020
		STR 	52H 			//04D9 	10D2
		MOVLB 	1H 			//04DA 	1021
		LDR 	2FH, 0H 			//04DB 	182F
		MOVLB 	0H 			//04DC 	1020
		STR 	53H 			//04DD 	10D3
		MOVLB 	1H 			//04DE 	1021
		LDR 	30H, 0H 			//04DF 	1830
		MOVLB 	0H 			//04E0 	1020
		STR 	54H 			//04E1 	10D4

		//;NFB.C: 519: T2 = (EEPROMread(0x07)<<8)+EEPROMread(0x06);
		LDWI 	6H 			//04E2 	0006
		LCALL 	549H 			//04E3 	3549
		MOVLP 	2H 			//04E4 	0182
		STR 	64H 			//04E5 	10E4
		LDWI 	7H 			//04E6 	0007
		LCALL 	549H 			//04E7 	3549
		MOVLP 	2H 			//04E8 	0182
		LCALL 	5F9H 			//04E9 	35F9
		MOVLP 	14H 			//04EA 	0194
		LCALL 	4C1H 			//04EB 	34C1
		MOVLP 	2H 			//04EC 	0182
		LDR 	2EH, 0H 			//04ED 	182E
		MOVLB 	0H 			//04EE 	1020
		STR 	4FH 			//04EF 	10CF
		MOVLB 	1H 			//04F0 	1021
		LDR 	2FH, 0H 			//04F1 	182F
		MOVLB 	0H 			//04F2 	1020
		STR 	50H 			//04F3 	10D0
		MOVLB 	1H 			//04F4 	1021
		LDR 	30H, 0H 			//04F5 	1830
		MOVLB 	0H 			//04F6 	1020
		STR 	51H 			//04F7 	10D1

		//;NFB.C: 520: pf = EEPROMread(0x08);
		LDWI 	8H 			//04F8 	0008
		LCALL 	549H 			//04F9 	3549
		MOVLP 	2H 			//04FA 	0182
		MOVLB 	0H 			//04FB 	1020
		STR 	60H 			//04FC 	10E0
		LDWI 	9H 			//04FD 	0009
		CLRF 	61H 			//04FE 	11E1

		//;NFB.C: 521: pt = EEPROMread(0x09);
		LCALL 	549H 			//04FF 	3549
		MOVLP 	2H 			//0500 	0182
		MOVLB 	0H 			//0501 	1020
		STR 	5EH 			//0502 	10DE
		LDWI 	AH 			//0503 	000A
		CLRF 	5FH 			//0504 	11DF

		//;NFB.C: 522: T0 = (EEPROMread(0x0B)<<8)+EEPROMread(0x0A);
		LCALL 	549H 			//0505 	3549
		MOVLP 	2H 			//0506 	0182
		STR 	64H 			//0507 	10E4
		LDWI 	BH 			//0508 	000B
		LCALL 	549H 			//0509 	3549
		MOVLP 	2H 			//050A 	0182
		LCALL 	5F9H 			//050B 	35F9
		MOVLP 	14H 			//050C 	0194
		LCALL 	4C1H 			//050D 	34C1
		MOVLP 	2H 			//050E 	0182
		LDR 	2EH, 0H 			//050F 	182E
		MOVLB 	0H 			//0510 	1020
		STR 	58H 			//0511 	10D8
		MOVLB 	1H 			//0512 	1021
		LDR 	2FH, 0H 			//0513 	182F
		MOVLB 	0H 			//0514 	1020
		STR 	59H 			//0515 	10D9
		MOVLB 	1H 			//0516 	1021
		LDR 	30H, 0H 			//0517 	1830
		MOVLB 	0H 			//0518 	1020
		STR 	5AH 			//0519 	10DA

		//;NFB.C: 523: Tr = EEPROMread(0x0C);
		LDWI 	CH 			//051A 	000C
		LCALL 	549H 			//051B 	3549
		MOVLP 	2H 			//051C 	0182
		LCALL 	580H 			//051D 	3580
		MOVLP 	2H 			//051E 	0182
		LDR 	28H, 0H 			//051F 	1828
		MOVLB 	0H 			//0520 	1020
		STR 	55H 			//0521 	10D5
		MOVLB 	1H 			//0522 	1021
		LDR 	29H, 0H 			//0523 	1829
		MOVLB 	0H 			//0524 	1020
		STR 	56H 			//0525 	10D6
		MOVLB 	1H 			//0526 	1021
		LDR 	2AH, 0H 			//0527 	182A
		MOVLB 	0H 			//0528 	1020
		STR 	57H 			//0529 	10D7

		//;NFB.C: 524: R0 = (float)EEPROMread(0x0D)/100;
		LDWI 	0H 			//052A 	0000
		MOVLB 	1H 			//052B 	1021
		STR 	55H 			//052C 	10D5
		LDWI 	C8H 			//052D 	00C8
		STR 	56H 			//052E 	10D6
		LDWI 	42H 			//052F 	0042
		STR 	57H 			//0530 	10D7
		LDWI 	DH 			//0531 	000D
		LCALL 	549H 			//0532 	3549
		MOVLP 	2H 			//0533 	0182
		LCALL 	580H 			//0534 	3580
		LDR 	28H, 0H 			//0535 	1828
		STR 	58H 			//0536 	10D8
		LDR 	29H, 0H 			//0537 	1829
		STR 	59H 			//0538 	10D9
		LDR 	2AH, 0H 			//0539 	182A
		STR 	5AH 			//053A 	10DA
		MOVLP 	13H 			//053B 	0193
		LCALL 	35AH 			//053C 	335A
		LDR 	55H, 0H 			//053D 	1855
		MOVLB 	0H 			//053E 	1020
		STR 	5BH 			//053F 	10DB
		MOVLB 	1H 			//0540 	1021
		LDR 	56H, 0H 			//0541 	1856
		MOVLB 	0H 			//0542 	1020
		STR 	5CH 			//0543 	10DC
		MOVLB 	1H 			//0544 	1021
		LDR 	57H, 0H 			//0545 	1857
		MOVLB 	0H 			//0546 	1020
		STR 	5DH 			//0547 	10DD
		RET 					//0548 	1008
		MOVLB 	1H 			//0549 	1021
		STR 	20H 			//054A 	10A0

		//;NFB.C: 400: unsigned char ReEEPROMread;
		//;NFB.C: 401: while(GIE)
		BTSS 	BH, 7H 			//054B 	2F8B
		LJUMP 	551H 			//054C 	3D51

		//;NFB.C: 402: {
		//;NFB.C: 403: GIE = 0;
		BCR 	BH, 7H 			//054D 	238B

		//;NFB.C: 404: __nop();
		NOP 					//054E 	1000

		//;NFB.C: 405: __nop();
		NOP 					//054F 	1000
		LJUMP 	54BH 			//0550 	3D4B

		//;NFB.C: 406: }
		//;NFB.C: 407: EEADRL=EEAddr;
		MOVLB 	1H 			//0551 	1021
		LDR 	20H, 0H 			//0552 	1820
		MOVLB 	3H 			//0553 	1023
		STR 	11H 			//0554 	1091

		//;NFB.C: 409: CFGS=0;
		BCR 	15H, 6H 			//0555 	2315

		//;NFB.C: 410: EEPGD=0;
		BCR 	15H, 7H 			//0556 	2395

		//;NFB.C: 411: RD=1;
		BSR 	15H, 0H 			//0557 	2415

		//;NFB.C: 412: __nop();
		NOP 					//0558 	1000

		//;NFB.C: 413: __nop();
		NOP 					//0559 	1000

		//;NFB.C: 414: __nop();
		NOP 					//055A 	1000

		//;NFB.C: 415: __nop();
		NOP 					//055B 	1000

		//;NFB.C: 416: ReEEPROMread=EEDATL;
		MOVLB 	3H 			//055C 	1023
		LDR 	13H, 0H 			//055D 	1813
		MOVLB 	1H 			//055E 	1021
		STR 	21H 			//055F 	10A1

		//;NFB.C: 418: return ReEEPROMread;
		RET 					//0560 	1008
		STR 	21H 			//0561 	10A1

		//;NFB.C: 450: while(GIE)
		BTSS 	BH, 7H 			//0562 	2F8B
		LJUMP 	568H 			//0563 	3D68

		//;NFB.C: 451: {
		//;NFB.C: 452: GIE = 0;
		BCR 	BH, 7H 			//0564 	238B

		//;NFB.C: 453: __nop();
		NOP 					//0565 	1000

		//;NFB.C: 454: __nop();
		NOP 					//0566 	1000
		LJUMP 	562H 			//0567 	3D62

		//;NFB.C: 455: }
		//;NFB.C: 456: EEADRL=EEAddr;
		MOVLB 	1H 			//0568 	1021
		LDR 	21H, 0H 			//0569 	1821
		MOVLB 	3H 			//056A 	1023
		STR 	11H 			//056B 	1091

		//;NFB.C: 457: EEDATL=Data;
		MOVLB 	1H 			//056C 	1021
		LDR 	20H, 0H 			//056D 	1820
		MOVLB 	3H 			//056E 	1023
		STR 	13H 			//056F 	1093

		//;NFB.C: 459: CFGS=0;
		BCR 	15H, 6H 			//0570 	2315

		//;NFB.C: 460: EEPGD=0;
		BCR 	15H, 7H 			//0571 	2395

		//;NFB.C: 461: WREN=1;
		BSR 	15H, 2H 			//0572 	2515

		//;NFB.C: 462: EEIF=0;
		BCR 	BH, 2H 			//0573 	210B

		//;NFB.C: 464: Unlock_Flash();
		LCALL 	590H 			//0574 	3590
		MOVLP 	2H 			//0575 	0182

		//;NFB.C: 465: __nop();
		NOP 					//0576 	1000

		//;NFB.C: 466: __nop();
		NOP 					//0577 	1000

		//;NFB.C: 467: __nop();
		NOP 					//0578 	1000

		//;NFB.C: 468: __nop();
		NOP 					//0579 	1000

		//;NFB.C: 470: while(WR);
		MOVLB 	3H 			//057A 	1023
		BTSC 	15H, 1H 		//057B 	2895
		LJUMP 	57AH 			//057C 	3D7A

		//;NFB.C: 471: WREN=0;
		BCR 	15H, 2H 			//057D 	2115

		//;NFB.C: 472: GIE=1;
		BSR 	BH, 7H 			//057E 	278B
		RET 					//057F 	1008
		STR 	2CH 			//0580 	10AC
		STR 	20H 			//0581 	10A0
		LDWI 	8EH 			//0582 	008E
		CLRF 	21H 			//0583 	11A1
		CLRF 	22H 			//0584 	11A2
		STR 	23H 			//0585 	10A3
		CLRF 	24H 			//0586 	11A4
		MOVLP 	CH 			//0587 	018C
		LCALL 	4DCH 			//0588 	34DC
		LDR 	20H, 0H 			//0589 	1820
		STR 	28H 			//058A 	10A8
		LDR 	21H, 0H 			//058B 	1821
		STR 	29H 			//058C 	10A9
		LDR 	22H, 0H 			//058D 	1822
		STR 	2AH 			//058E 	10AA
		RET 					//058F 	1008
		LDWI 	3H 			//0590 	0003
		STR 	8H 			//0591 	1088
		LDWI 	55H 			//0592 	0055
		STR 	16H 			//0593 	1096
		LDWI 	AAH 			//0594 	00AA
		STR 	16H 			//0595 	1096
		BSR 	15H, 1H 			//0596 	2495
		NOP 					//0597 	1000
		NOP 					//0598 	1000
		RET 					//0599 	1008

		//;NFB.C: 337: PCKEN|=0B00000001;
		BSR 	1AH, 0H 			//059A 	241A

		//;NFB.C: 339: ANSELA|=0B00010111;
		LDWI 	17H 			//059B 	0017
		MOVLB 	3H 			//059C 	1023
		IORWR 	17H, 1H 		//059D 	1497

		//;NFB.C: 342: ADCON0=0B00000000;
		MOVLB 	1H 			//059E 	1021
		CLRF 	1DH 			//059F 	119D

		//;NFB.C: 348: ADCON1=0B11100100;
		LDWI 	E4H 			//05A0 	00E4
		STR 	1EH 			//05A1 	109E

		//;NFB.C: 354: ADCON2=0B01000000;
		LDWI 	40H 			//05A2 	0040
		STR 	1FH 			//05A3 	109F

		//;NFB.C: 357: ADCON3=0B00000000;
		MOVLB 	8H 			//05A4 	1028
		CLRF 	1AH 			//05A5 	119A

		//;NFB.C: 358: ADDLY=0B00000000;
		MOVLB 	0H 			//05A6 	1020
		CLRF 	1FH 			//05A7 	119F

		//;NFB.C: 359: ADCMPH=0B00000000;
		MOVLB 	8H 			//05A8 	1028
		CLRF 	1BH 			//05A9 	119B

		//;NFB.C: 360: ADON=1;
		MOVLB 	1H 			//05AA 	1021
		BSR 	1DH, 0H 			//05AB 	241D
		RET 					//05AC 	1008

		//;NFB.C: 488: PA0=0;
		MOVLB 	0H 			//05AD 	1020
		BCR 	CH, 0H 			//05AE 	200C

		//;NFB.C: 489: PB0=0;
		BCR 	DH, 0H 			//05AF 	200D

		//;NFB.C: 490: PA1=1;
		BSR 	CH, 1H 			//05B0 	248C

		//;NFB.C: 491: PB2=1;
		BSR 	DH, 2H 			//05B1 	250D

		//;NFB.C: 492: PB3=1;
		BSR 	DH, 3H 			//05B2 	258D

		//;NFB.C: 493: PC1=1;
		BSR 	EH, 1H 			//05B3 	248E

		//;NFB.C: 494: PB7=1;
		BSR 	DH, 7H 			//05B4 	278D
		RET 					//05B5 	1008

		//;NFB.C: 246: EPS0=0B00000000;
		MOVLB 	2H 			//05B6 	1022
		CLRF 	18H 			//05B7 	1198

		//;NFB.C: 247: EPS1=0B00000001;
		LDWI 	1H 			//05B8 	0001
		STR 	19H 			//05B9 	1099

		//;NFB.C: 248: ITYPE0=0B00000000;
		CLRF 	1EH 			//05BA 	119E

		//;NFB.C: 249: ITYPE1=0B00000010;
		LDWI 	2H 			//05BB 	0002
		STR 	1FH 			//05BC 	109F

		//;NFB.C: 250: EPIE0=0B00010000;
		LDWI 	10H 			//05BD 	0010
		MOVLB 	1H 			//05BE 	1021
		STR 	14H 			//05BF 	1094

		//;NFB.C: 251: INTCON=0B11000000;
		LDWI 	C0H 			//05C0 	00C0
		STR 	BH 			//05C1 	108B
		RET 					//05C2 	1008

		//;NFB.C: 388: OP0CR0 = 0B00111011;
		LDWI 	3BH 			//05C3 	003B
		MOVLB 	1FH 			//05C4 	103F
		STR 	FH 			//05C5 	108F

		//;NFB.C: 389: OP0CFG = 0B00010001;
		LDWI 	11H 			//05C6 	0011
		STR 	11H 			//05C7 	1091

		//;NFB.C: 390: AN4SELB = 1;
		MOVLB 	8H 			//05C8 	1028
		BSR 	1AH, 2H 			//05C9 	251A
		RET 					//05CA 	1008

		//;NFB.C: 161: OSCCON=0B01110001;
		LDWI 	71H 			//05CB 	0071
		MOVLB 	1H 			//05CC 	1021
		STR 	19H 			//05CD 	1099

		//;NFB.C: 163: INTCON=0;
		CLRF 	BH 			//05CE 	118B

		//;NFB.C: 165: PORTA=0B00000000;
		MOVLB 	0H 			//05CF 	1020
		CLRF 	CH 			//05D0 	118C

		//;NFB.C: 166: PORTB=0B00000000;
		CLRF 	DH 			//05D1 	118D

		//;NFB.C: 167: PORTC=0B00000000;
		CLRF 	EH 			//05D2 	118E

		//;NFB.C: 169: WPUA=0B00000000;
		MOVLB 	3H 			//05D3 	1023
		CLRF 	CH 			//05D4 	118C

		//;NFB.C: 170: WPUB=0B00010000;
		LDWI 	10H 			//05D5 	0010
		STR 	DH 			//05D6 	108D

		//;NFB.C: 171: WPUC=0B00000000;
		CLRF 	EH 			//05D7 	118E

		//;NFB.C: 173: WPDA=0B01000000;
		LDWI 	40H 			//05D8 	0040
		MOVLB 	4H 			//05D9 	1024
		STR 	CH 			//05DA 	108C

		//;NFB.C: 174: WPDB=0B00000000;
		CLRF 	DH 			//05DB 	118D

		//;NFB.C: 175: WPDC=0B00000000;
		CLRF 	EH 			//05DC 	118E

		//;NFB.C: 177: TRISA=0B11111100;
		LDWI 	FCH 			//05DD 	00FC
		MOVLB 	1H 			//05DE 	1021
		STR 	CH 			//05DF 	108C

		//;NFB.C: 178: TRISB=0B00110010;
		LDWI 	32H 			//05E0 	0032
		STR 	DH 			//05E1 	108D

		//;NFB.C: 179: TRISC=0B00000001;
		LDWI 	1H 			//05E2 	0001
		STR 	EH 			//05E3 	108E

		//;NFB.C: 181: PSRC0=0B11111111;
		LDWI 	FFH 			//05E4 	00FF
		MOVLB 	2H 			//05E5 	1022
		STR 	1AH 			//05E6 	109A

		//;NFB.C: 182: PSRC1=0B11111111;
		STR 	1BH 			//05E7 	109B

		//;NFB.C: 183: PSRC2=0B00001111;
		LDWI 	FH 			//05E8 	000F
		STR 	1CH 			//05E9 	109C

		//;NFB.C: 185: PSINK0=0B11111111;
		LDWI 	FFH 			//05EA 	00FF
		MOVLB 	3H 			//05EB 	1023
		STR 	1AH 			//05EC 	109A

		//;NFB.C: 186: PSINK1=0B11111111;
		STR 	1BH 			//05ED 	109B

		//;NFB.C: 187: PSINK2=0B00000011;
		LDWI 	3H 			//05EE 	0003
		STR 	1CH 			//05EF 	109C

		//;NFB.C: 189: ANSELA=0B00000000;
		CLRF 	17H 			//05F0 	1197
		RET 					//05F1 	1008
		LDR 	46H, 0H 			//05F2 	1846
		STR 	5DH 			//05F3 	10DD
		LDR 	47H, 0H 			//05F4 	1847
		STR 	5EH 			//05F5 	10DE
		LDR 	48H, 0H 			//05F6 	1848
		STR 	5FH 			//05F7 	10DF
		RET 					//05F8 	1008
		STR 	65H 			//05F9 	10E5
		LDR 	64H, 0H 			//05FA 	1864
		STR 	2EH 			//05FB 	10AE
		LDR 	65H, 0H 			//05FC 	1865
		STR 	2FH 			//05FD 	10AF
		RET 					//05FE 	1008
		STR 	7DH 			//05FF 	10FD
		LDR 	7DH, 0H 			//0600 	187D
		BTSC 	3H, 2H 			//0601 	2903
		RETW 	0H 			//0602 	0400
		LDR 	7DH, 0H 			//0603 	187D
		STR 	6H 			//0604 	1086
		LDWI 	3H 			//0605 	0003
		STR 	7H 			//0606 	1087
		LDR 	1H, 0H 			//0607 	1801
		BTSC 	3H, 2H 			//0608 	2903
		RETW 	0H 			//0609 	0400
		LDR 	7CH, 0H 			//060A 	187C
		STR 	76H 			//060B 	10F6
		LDR 	7BH, 0H 			//060C 	187B
		STR 	75H 			//060D 	10F5
		LDR 	7CH, 0H 			//060E 	187C
		STR 	71H 			//060F 	10F1
		LDR 	7BH, 0H 			//0610 	187B
		STR 	70H 			//0611 	10F0
		LCALL 	66CH 			//0612 	366C
		MOVLP 	5H 			//0613 	0185
		LDR 	71H, 0H 			//0614 	1871
		STR 	78H 			//0615 	10F8
		LDR 	70H, 0H 			//0616 	1870
		STR 	77H 			//0617 	10F7
		LDR 	7DH, 0H 			//0618 	187D
		LCALL 	641H 			//0619 	3641
		MOVLP 	5H 			//061A 	0185
		LDR 	75H, 0H 			//061B 	1875
		IORWR 	76H, 0H 		//061C 	1476
		BTSS 	3H, 2H 			//061D 	2D03
		LJUMP 	621H 			//061E 	3E21
		LDR 	7DH, 0H 			//061F 	187D
		RET 					//0620 	1008
		LDR 	7BH, 0H 			//0621 	187B
		STR 	4H 			//0622 	1084
		LDR 	7CH, 0H 			//0623 	187C
		STR 	5H 			//0624 	1085
		LDR 	0H, 0H 			//0625 	1800
		STR 	70H 			//0626 	10F0
		CLRF 	71H 			//0627 	11F1
		LDR 	7DH, 0H 			//0628 	187D
		ADDWI 	1H 			//0629 	0E01
		LCALL 	62DH 			//062A 	362D
		MOVLP 	5H 			//062B 	0185
		LJUMP 	5FFH 			//062C 	3DFF
		STR 	72H 			//062D 	10F2
		LDR 	72H, 0H 			//062E 	1872
		STR 	6H 			//062F 	1086
		LDWI 	3H 			//0630 	0003
		STR 	7H 			//0631 	1087
		LDR 	1H, 0H 			//0632 	1801
		XORWR 	70H, 0H 		//0633 	1670
		BTSS 	3H, 2H 			//0634 	2D03
		LJUMP 	638H 			//0635 	3E38
		LDR 	72H, 0H 			//0636 	1872
		RET 					//0637 	1008
		LDR 	72H, 0H 			//0638 	1872
		STR 	6H 			//0639 	1086
		LDWI 	3H 			//063A 	0003
		STR 	7H 			//063B 	1087
		INCR 	72H, 1H 		//063C 	1AF2
		LDR 	1H, 0H 			//063D 	1801
		BTSC 	3H, 2H 			//063E 	2903
		RETW 	0H 			//063F 	0400
		LJUMP 	62EH 			//0640 	3E2E
		STR 	7AH 			//0641 	10FA
		LDWI 	1H 			//0642 	0001
		SUBWR 	77H, 1H 		//0643 	12F7
		LDWI 	0H 			//0644 	0000
		SUBWFB 	78H, 1H 		//0645 	0BF8
		INCRSZ 	77H, 0H 		//0646 	1F77
		LJUMP 	64BH 			//0647 	3E4B
		INCR 	78H, 0H 		//0648 	1A78
		BTSC 	3H, 2H 			//0649 	2903
		LJUMP 	669H 			//064A 	3E69
		LDR 	7AH, 0H 			//064B 	187A
		LCALL 	6CFH 			//064C 	36CF
		MOVLP 	5H 			//064D 	0185
		BTSC 	3H, 2H 			//064E 	2903
		LJUMP 	659H 			//064F 	3E59
		LCALL 	682H 			//0650 	3682
		MOVLP 	5H 			//0651 	0185
		STR 	79H 			//0652 	10F9
		LDR 	7AH, 0H 			//0653 	187A
		STR 	6H 			//0654 	1086
		LDR 	1H, 0H 			//0655 	1801
		XORWR 	79H, 0H 		//0656 	1679
		BTSC 	3H, 2H 			//0657 	2903
		LJUMP 	664H 			//0658 	3E64
		LDR 	7AH, 0H 			//0659 	187A
		STR 	6H 			//065A 	1086
		LDWI 	3H 			//065B 	0003
		STR 	7H 			//065C 	1087
		LCALL 	682H 			//065D 	3682
		SUBWR 	1H, 0H 		//065E 	1201
		STR 	75H 			//065F 	10F5
		CLRF 	76H 			//0660 	11F6
		BTSS 	3H, 0H 			//0661 	2C03
		DECR 	76H, 1H 		//0662 	13F6
		RET 					//0663 	1008
		INCR 	7AH, 1H 		//0664 	1AFA
		INCR 	75H, 1H 		//0665 	1AF5
		BTSC 	3H, 2H 			//0666 	2903
		INCR 	76H, 1H 		//0667 	1AF6
		LJUMP 	642H 			//0668 	3E42
		CLRF 	75H 			//0669 	11F5
		CLRF 	76H 			//066A 	11F6
		RET 					//066B 	1008
		LDR 	71H, 0H 			//066C 	1871
		STR 	74H 			//066D 	10F4
		LDR 	70H, 0H 			//066E 	1870
		STR 	73H 			//066F 	10F3
		LDR 	73H, 0H 			//0670 	1873
		STR 	4H 			//0671 	1084
		LDR 	74H, 0H 			//0672 	1874
		STR 	5H 			//0673 	1085
		MOVIW 	FSR0++ 		//0674 	1012
		BTSC 	3H, 2H 			//0675 	2903
		LJUMP 	67BH 			//0676 	3E7B
		INCR 	73H, 1H 		//0677 	1AF3
		BTSC 	3H, 2H 			//0678 	2903
		INCR 	74H, 1H 		//0679 	1AF4
		LJUMP 	670H 			//067A 	3E70
		LDR 	70H, 0H 			//067B 	1870
		SUBWR 	73H, 0H 		//067C 	1273
		STR 	70H 			//067D 	10F0
		LDR 	71H, 0H 			//067E 	1871
		SUBWFB 	74H, 0H 		//067F 	0B74
		STR 	71H 			//0680 	10F1
		RET 					//0681 	1008
		LDR 	75H, 0H 			//0682 	1875
		STR 	4H 			//0683 	1084
		LDR 	76H, 0H 			//0684 	1876
		STR 	5H 			//0685 	1085
		LDR 	0H, 0H 			//0686 	1800
		RET 					//0687 	1008
		MOVLB 	0H 			//0688 	1020
		STR 	24H 			//0689 	10A4

		//;NFB.C: 50: int res = 0;
		CLRF 	20H 			//068A 	11A0
		CLRF 	21H 			//068B 	11A1

		//;NFB.C: 51: for (int i = 0; arr[i] != '\0'; ++i){
		CLRF 	22H 			//068C 	11A2
		CLRF 	23H 			//068D 	11A3
		LDR 	22H, 0H 			//068E 	1822
		ADDWR 	24H, 0H 		//068F 	1724
		STR 	78H 			//0690 	10F8
		LCALL 	6CFH 			//0691 	36CF
		MOVLP 	5H 			//0692 	0185
		BTSC 	3H, 2H 			//0693 	2903
		LJUMP 	6B5H 			//0694 	3EB5

		//;NFB.C: 52: res = (res * 10) + (arr[i] - '0');
		LDR 	22H, 0H 			//0695 	1822
		ADDWR 	24H, 0H 		//0696 	1724
		STR 	78H 			//0697 	10F8
		STR 	6H 			//0698 	1086
		LDR 	1H, 0H 			//0699 	1801
		STR 	79H 			//069A 	10F9
		CLRF 	7AH 			//069B 	11FA
		LDR 	21H, 0H 			//069C 	1821
		STR 	71H 			//069D 	10F1
		LDR 	20H, 0H 			//069E 	1820
		STR 	70H 			//069F 	10F0
		LDWI 	AH 			//06A0 	000A
		STR 	72H 			//06A1 	10F2
		CLRF 	73H 			//06A2 	11F3
		LCALL 	6BAH 			//06A3 	36BA
		MOVLP 	5H 			//06A4 	0185
		LDR 	79H, 0H 			//06A5 	1879
		ADDWR 	70H, 0H 		//06A6 	1770
		STR 	7BH 			//06A7 	10FB
		LDR 	7AH, 0H 			//06A8 	187A
		ADDWFC 	71H, 0H 		//06A9 	0D71
		STR 	7CH 			//06AA 	10FC
		LDR 	7BH, 0H 			//06AB 	187B
		ADDWI 	D0H 			//06AC 	0ED0
		STR 	20H 			//06AD 	10A0
		LDWI 	FFH 			//06AE 	00FF
		ADDWFC 	7CH, 0H 		//06AF 	0D7C
		STR 	21H 			//06B0 	10A1
		INCR 	22H, 1H 		//06B1 	1AA2
		BTSC 	3H, 2H 			//06B2 	2903
		INCR 	23H, 1H 		//06B3 	1AA3
		LJUMP 	68EH 			//06B4 	3E8E

		//;NFB.C: 53: }
		//;NFB.C: 54: return res;
		LDR 	21H, 0H 			//06B5 	1821
		STR 	77H 			//06B6 	10F7
		LDR 	20H, 0H 			//06B7 	1820
		STR 	76H 			//06B8 	10F6
		RET 					//06B9 	1008
		CLRF 	74H 			//06BA 	11F4
		CLRF 	75H 			//06BB 	11F5
		BTSS 	70H, 0H 		//06BC 	2C70
		LJUMP 	6C2H 			//06BD 	3EC2
		LDR 	72H, 0H 			//06BE 	1872
		ADDWR 	74H, 1H 		//06BF 	17F4
		LDR 	73H, 0H 			//06C0 	1873
		ADDWFC 	75H, 1H 		//06C1 	0DF5
		LSLF 	72H, 1H 		//06C2 	05F2
		RLR 	73H, 1H 			//06C3 	1DF3
		LSRF 	71H, 1H 		//06C4 	06F1
		RRR 	70H, 1H 			//06C5 	1CF0
		LDR 	70H, 0H 			//06C6 	1870
		IORWR 	71H, 0H 		//06C7 	1471
		BTSS 	3H, 2H 			//06C8 	2D03
		LJUMP 	6BCH 			//06C9 	3EBC
		LDR 	75H, 0H 			//06CA 	1875
		STR 	71H 			//06CB 	10F1
		LDR 	74H, 0H 			//06CC 	1874
		STR 	70H 			//06CD 	10F0
		RET 					//06CE 	1008
		STR 	6H 			//06CF 	1086
		LDWI 	3H 			//06D0 	0003
		STR 	7H 			//06D1 	1087
		LDR 	1H, 0H 			//06D2 	1801
		RET 					//06D3 	1008
		LDWI 	A0H 			//06D4 	00A0
		STR 	6H 			//06D5 	1086
		CLRF 	7H 			//06D6 	1187
		MOVIW 	0H[1] 			//06D7 	0F40
		MOVLB 	1H 			//06D8 	1021
		STR 	26H 			//06D9 	10A6
		MOVIW 	1H[1] 			//06DA 	0F41
		STR 	27H 			//06DB 	10A7
		MOVIW 	2H[1] 			//06DC 	0F42
		STR 	28H 			//06DD 	10A8
		MOVIW 	3H[1] 			//06DE 	0F43
		STR 	29H 			//06DF 	10A9
		BCR 	3H, 0H 			//06E0 	2003
		RLR 	28H, 0H 			//06E1 	1D28
		RLR 	29H, 0H 			//06E2 	1D29
		STR 	33H 			//06E3 	10B3
		LDR 	33H, 0H 			//06E4 	1833
		BTSS 	3H, 2H 			//06E5 	2D03
		LJUMP 	6ECH 			//06E6 	3EEC
		CLRF 	20H 			//06E7 	11A0
		CLRF 	21H 			//06E8 	11A1
		CLRF 	22H 			//06E9 	11A2
		CLRF 	23H 			//06EA 	11A3
		RET 					//06EB 	1008
		LDWI 	A3H 			//06EC 	00A3
		LCALL 	77CH 			//06ED 	377C
		MOVLP 	6H 			//06EE 	0186
		BCR 	3H, 0H 			//06EF 	2003
		RLR 	28H, 0H 			//06F0 	1D28
		RLR 	29H, 0H 			//06F1 	1D29
		STR 	32H 			//06F2 	10B2
		LDR 	32H, 0H 			//06F3 	1832
		BTSC 	3H, 2H 			//06F4 	2903
		LJUMP 	6E7H 			//06F5 	3EE7
		LDWI 	A0H 			//06F6 	00A0
		STR 	6H 			//06F7 	1086
		LDWI 	80H 			//06F8 	0080
		ADDFSR 	1H, 1H 		//06F9 	0141
		ADDFSR 	1H, 1H 		//06FA 	0141
		IORWR 	1H, 1H 		//06FB 	1481
		LDWI 	A0H 			//06FC 	00A0
		ADDFSR 	1H, 1H 		//06FD 	0141
		STR 	6H 			//06FE 	1086
		LDWI 	A3H 			//06FF 	00A3
		LCALL 	787H 			//0700 	3787
		MOVLP 	6H 			//0701 	0186
		STR 	6H 			//0702 	1086
		LDWI 	80H 			//0703 	0080
		CLRF 	7H 			//0704 	1187
		ADDFSR 	1H, 1H 		//0705 	0141
		ADDFSR 	1H, 1H 		//0706 	0141
		IORWR 	1H, 1H 		//0707 	1481
		LDWI 	A3H 			//0708 	00A3
		ADDFSR 	1H, 1H 		//0709 	0141
		STR 	6H 			//070A 	1086
		LDWI 	7FH 			//070B 	007F
		LCALL 	787H 			//070C 	3787
		MOVLP 	6H 			//070D 	0186
		CLRF 	2EH 			//070E 	11AE
		CLRF 	2FH 			//070F 	11AF
		CLRF 	30H 			//0710 	11B0
		CLRF 	31H 			//0711 	11B1
		SUBWR 	33H, 1H 		//0712 	12B3
		LDWI 	A0H 			//0713 	00A0
		ADDWR 	32H, 0H 		//0714 	1732
		STR 	26H 			//0715 	10A6
		SUBWR 	33H, 1H 		//0716 	12B3
		LDWI 	20H 			//0717 	0020
		STR 	32H 			//0718 	10B2
		LDWI 	A3H 			//0719 	00A3
		LSLF 	2EH, 1H 		//071A 	05AE
		RLR 	2FH, 1H 			//071B 	1DAF
		RLR 	30H, 1H 			//071C 	1DB0
		RLR 	31H, 1H 			//071D 	1DB1
		LCALL 	77CH 			//071E 	377C
		MOVLP 	6H 			//071F 	0186
		LDWI 	A0H 			//0720 	00A0
		STR 	6H 			//0721 	1086
		MOVIW 	0H[1] 			//0722 	0F40
		STR 	2AH 			//0723 	10AA
		MOVIW 	1H[1] 			//0724 	0F41
		STR 	2BH 			//0725 	10AB
		MOVIW 	2H[1] 			//0726 	0F42
		STR 	2CH 			//0727 	10AC
		MOVIW 	3H[1] 			//0728 	0F43
		STR 	2DH 			//0729 	10AD
		LDR 	29H, 0H 			//072A 	1829
		SUBWR 	2DH, 0H 		//072B 	122D
		BTSS 	3H, 2H 			//072C 	2D03
		LJUMP 	738H 			//072D 	3F38
		LDR 	28H, 0H 			//072E 	1828
		SUBWR 	2CH, 0H 		//072F 	122C
		BTSS 	3H, 2H 			//0730 	2D03
		LJUMP 	738H 			//0731 	3F38
		LDR 	27H, 0H 			//0732 	1827
		SUBWR 	2BH, 0H 		//0733 	122B
		BTSS 	3H, 2H 			//0734 	2D03
		LJUMP 	738H 			//0735 	3F38
		LDR 	26H, 0H 			//0736 	1826
		SUBWR 	2AH, 0H 		//0737 	122A
		BTSS 	3H, 0H 			//0738 	2C03
		LJUMP 	74CH 			//0739 	3F4C
		LDWI 	A3H 			//073A 	00A3
		LCALL 	77CH 			//073B 	377C
		MOVLP 	6H 			//073C 	0186
		LDWI 	A0H 			//073D 	00A0
		STR 	6H 			//073E 	1086
		LDR 	26H, 0H 			//073F 	1826
		SUBWR 	1H, 1H 		//0740 	1281
		ADDFSR 	1H, 1H 		//0741 	0141
		LDR 	27H, 0H 			//0742 	1827
		SUBWFB 	1H, 1H 		//0743 	0B81
		ADDFSR 	1H, 1H 		//0744 	0141
		LDR 	28H, 0H 			//0745 	1828
		SUBWFB 	1H, 1H 		//0746 	0B81
		ADDFSR 	1H, 1H 		//0747 	0141
		LDR 	29H, 0H 			//0748 	1829
		SUBWFB 	1H, 1H 		//0749 	0B81
		ADDFSR 	1H, 3DH 		//074A 	017D
		BSR 	2EH, 0H 			//074B 	242E
		LDWI 	A0H 			//074C 	00A0
		STR 	6H 			//074D 	1086
		CLRF 	7H 			//074E 	1187
		LSLF 	1H, 1H 			//074F 	0581
		ADDFSR 	1H, 1H 		//0750 	0141
		RLR 	1H, 1H 			//0751 	1D81
		ADDFSR 	1H, 1H 		//0752 	0141
		RLR 	1H, 1H 			//0753 	1D81
		ADDFSR 	1H, 1H 		//0754 	0141
		RLR 	1H, 1H 			//0755 	1D81
		DECRSZ 	32H, 1H 		//0756 	1BB2
		LJUMP 	719H 			//0757 	3F19
		BTSS 	33H, 7H 		//0758 	2FB3
		LJUMP 	766H 			//0759 	3F66
		LDR 	33H, 0H 			//075A 	1833
		XORWI 	80H 			//075B 	0A80
		ADDWI 	9FH 			//075C 	0E9F
		BTSS 	3H, 0H 			//075D 	2C03
		LJUMP 	6E7H 			//075E 	3EE7
		LSRF 	31H, 1H 		//075F 	06B1
		RRR 	30H, 1H 			//0760 	1CB0
		RRR 	2FH, 1H 			//0761 	1CAF
		RRR 	2EH, 1H 			//0762 	1CAE
		INCRSZ 	33H, 1H 		//0763 	1FB3
		LJUMP 	75FH 			//0764 	3F5F
		LJUMP 	773H 			//0765 	3F73
		LDWI 	20H 			//0766 	0020
		SUBWR 	33H, 0H 		//0767 	1233
		BTSC 	3H, 0H 			//0768 	2803
		LJUMP 	6E7H 			//0769 	3EE7
		LDR 	33H, 0H 			//076A 	1833
		BTSC 	3H, 2H 			//076B 	2903
		LJUMP 	773H 			//076C 	3F73
		LSLF 	2EH, 1H 		//076D 	05AE
		RLR 	2FH, 1H 			//076E 	1DAF
		RLR 	30H, 1H 			//076F 	1DB0
		RLR 	31H, 1H 			//0770 	1DB1
		DECR 	33H, 1H 		//0771 	13B3
		LJUMP 	76AH 			//0772 	3F6A
		LDR 	31H, 0H 			//0773 	1831
		STR 	23H 			//0774 	10A3
		LDR 	30H, 0H 			//0775 	1830
		STR 	22H 			//0776 	10A2
		LDR 	2FH, 0H 			//0777 	182F
		STR 	21H 			//0778 	10A1
		LDR 	2EH, 0H 			//0779 	182E
		STR 	20H 			//077A 	10A0
		RET 					//077B 	1008
		STR 	6H 			//077C 	1086
		CLRF 	7H 			//077D 	1187
		MOVIW 	0H[1] 			//077E 	0F40
		STR 	26H 			//077F 	10A6
		MOVIW 	1H[1] 			//0780 	0F41
		STR 	27H 			//0781 	10A7
		MOVIW 	2H[1] 			//0782 	0F42
		STR 	28H 			//0783 	10A8
		MOVIW 	3H[1] 			//0784 	0F43
		STR 	29H 			//0785 	10A9
		RET 					//0786 	1008
		CLRF 	7H 			//0787 	1187
		ADDFSR 	1H, 1H 		//0788 	0141
		ADDFSR 	1H, 1H 		//0789 	0141
		ADDFSR 	1H, 1H 		//078A 	0141
		CLRF 	1H 			//078B 	1181
		RET 					//078C 	1008

		//;NFB.C: 226: AFP0 = 0B01000000;
		LDWI 	40H 			//078D 	0040
		MOVLB 	3H 			//078E 	1023
		STR 	1EH 			//078F 	109E

		//;NFB.C: 227: AFP1 = 0B01000000;
		STR 	1FH 			//0790 	109F

		//;NFB.C: 228: PCKEN|=0B00100000;
		MOVLB 	1H 			//0791 	1021
		BSR 	1AH, 5H 			//0792 	269A

		//;NFB.C: 229: UR1IER=0B00000001;
		LDWI 	1H 			//0793 	0001
		MOVLB 	9H 			//0794 	1029
		STR 	EH 			//0795 	108E

		//;NFB.C: 230: UR1LCR=0B00000001;
		STR 	FH 			//0796 	108F

		//;NFB.C: 231: UR1MCR=0B00011000;
		LDWI 	18H 			//0797 	0018
		STR 	11H 			//0798 	1091

		//;NFB.C: 233: UR1DLL=104;
		LDWI 	68H 			//0799 	0068
		STR 	14H 			//079A 	1094

		//;NFB.C: 234: UR1DLH=0;
		CLRF 	15H 			//079B 	1195

		//;NFB.C: 235: UR1TCF=1;
		BSR 	1CH, 0H 			//079C 	241C

		//;NFB.C: 236: INTCON=0B11000000;
		LDWI 	C0H 			//079D 	00C0
		STR 	BH 			//079E 	108B
		RET 					//079F 	1008
		STR 	75H 			//07A0 	10F5
		STR 	74H 			//07A1 	10F4
		LDWI 	1H 			//07A2 	0001
		SUBWR 	72H, 1H 		//07A3 	12F2
		LDWI 	0H 			//07A4 	0000
		SUBWFB 	73H, 1H 		//07A5 	0BF3
		INCRSZ 	72H, 0H 		//07A6 	1F72
		LJUMP 	7ABH 			//07A7 	3FAB
		INCR 	73H, 0H 		//07A8 	1A73
		BTSC 	3H, 2H 			//07A9 	2903
		RET 					//07AA 	1008
		LDR 	74H, 0H 			//07AB 	1874
		STR 	6H 			//07AC 	1086
		LDWI 	3H 			//07AD 	0003
		STR 	7H 			//07AE 	1087
		LDR 	70H, 0H 			//07AF 	1870
		STR 	1H 			//07B0 	1081
		INCR 	74H, 1H 		//07B1 	1AF4
		LJUMP 	7A2H 			//07B2 	3FA2

		//;NFB.C: 317: PCKEN|=0B00000100;
		MOVLB 	1H 			//07B3 	1021
		BSR 	1AH, 2H 			//07B4 	251A

		//;NFB.C: 318: CKOCON=0B00100000;
		LDWI 	20H 			//07B5 	0020
		STR 	15H 			//07B6 	1095

		//;NFB.C: 319: TCKSRC=0B00000000;
		MOVLB 	6H 			//07B7 	1026
		CLRF 	1FH 			//07B8 	119F

		//;NFB.C: 321: TIM2CR1=0B10000101;
		LDWI 	85H 			//07B9 	0085
		STR 	CH 			//07BA 	108C

		//;NFB.C: 323: TIM2IER=0B00000001;
		LDWI 	1H 			//07BB 	0001
		STR 	DH 			//07BC 	108D

		//;NFB.C: 325: TIM2ARRH=0x3e;
		LDWI 	3EH 			//07BD 	003E
		STR 	19H 			//07BE 	1099

		//;NFB.C: 326: TIM2ARRL=0x80;
		LDWI 	80H 			//07BF 	0080
		STR 	1AH 			//07C0 	109A
		RET 					//07C1 	1008
		CLRWDT 			//07C2 	1064
		CLRF 	0H 			//07C3 	1180
		ORG		07C4H
		ADDFSR 	0H, 1H 		//07C4 	0101
		DECRSZ 	9H, 1H 		//07C5 	1B89
		LJUMP 	7C3H 			//07C6 	3FC3
		RETW 	0H 			//07C7 	0400
		ORG		0820H

		//;NFB.C: 558: int Vdd = GET_ADC_DATA(2);
		LDWI 	2H 			//0820 	0002
		LCALL 	411H 			//0821 	3411
		MOVLP 	8H 			//0822 	0188
		LDR 	21H, 0H 			//0823 	1821
		STR 	27H 			//0824 	10A7
		LDR 	20H, 0H 			//0825 	1820
		STR 	26H 			//0826 	10A6

		//;NFB.C: 559: for(int i=0;i<4;i++){
		CLRF 	28H 			//0827 	11A8
		CLRF 	29H 			//0828 	11A9

		//;NFB.C: 560: Vdd = (Vdd+GET_ADC_DATA(2))/2;
		LDWI 	2H 			//0829 	0002
		LCALL 	411H 			//082A 	3411
		MOVLP 	8H 			//082B 	0188
		LDR 	26H, 0H 			//082C 	1826
		ADDWR 	20H, 0H 		//082D 	1720
		STR 	24H 			//082E 	10A4
		LDR 	27H, 0H 			//082F 	1827
		ADDWFC 	21H, 0H 		//0830 	0D21
		STR 	25H 			//0831 	10A5
		LSRF 	25H, 1H 		//0832 	06A5
		RRR 	24H, 1H 			//0833 	1CA4
		LDR 	24H, 0H 			//0834 	1824
		STR 	26H 			//0835 	10A6
		LDR 	25H, 0H 			//0836 	1825
		STR 	27H 			//0837 	10A7
		INCR 	28H, 1H 		//0838 	1AA8
		BTSC 	3H, 2H 			//0839 	2903
		INCR 	29H, 1H 		//083A 	1AA9
		LDR 	29H, 0H 			//083B 	1829
		XORWI 	80H 			//083C 	0A80
		STR 	24H 			//083D 	10A4
		LDWI 	80H 			//083E 	0080
		SUBWR 	24H, 0H 		//083F 	1224
		BTSS 	3H, 2H 			//0840 	2D03
		LJUMP 	44H 			//0841 	3844
		LDWI 	4H 			//0842 	0004
		SUBWR 	28H, 0H 		//0843 	1228
		BTSS 	3H, 0H 			//0844 	2C03
		LJUMP 	29H 			//0845 	3829

		//;NFB.C: 561: }
		//;NFB.C: 562: bat = (float)Vdd*2/4096;
		LCALL 	6B4H 			//0846 	36B4
		MOVLP 	8H 			//0847 	0188
		LCALL 	166H 			//0848 	3166
		LDR 	27H, 0H 			//0849 	1827
		MOVLB 	1H 			//084A 	1021
		STR 	2FH 			//084B 	10AF
		MOVLB 	2H 			//084C 	1022
		LDR 	26H, 0H 			//084D 	1826
		MOVLB 	1H 			//084E 	1021
		STR 	2EH 			//084F 	10AE
		MOVLP 	14H 			//0850 	0194
		LCALL 	4C1H 			//0851 	34C1
		MOVLP 	8H 			//0852 	0188
		MOVLP 	17H 			//0853 	0197
		LCALL 	786H 			//0854 	3786
		MOVLP 	8H 			//0855 	0188
		LCALL 	42EH 			//0856 	342E
		MOVLP 	16H 			//0857 	0196
		LCALL 	6DBH 			//0858 	36DB
		MOVLP 	8H 			//0859 	0188
		MOVLP 	13H 			//085A 	0193
		LCALL 	35AH 			//085B 	335A
		MOVLP 	8H 			//085C 	0188

		//;NFB.C: 563: bat = bat*2;
		LCALL 	13DH 			//085D 	313D
		MOVLP 	8H 			//085E 	0188
		LCALL 	42EH 			//085F 	342E
		MOVLP 	8H 			//0860 	0188
		LCALL 	15AH 			//0861 	315A
		MOVLP 	8H 			//0862 	0188

		//;NFB.C: 564: if(bat>=3.9){
		LCALL 	131H 			//0863 	3131
		MOVLP 	8H 			//0864 	0188
		LCALL 	16CH 			//0865 	316C
		MOVLP 	8H 			//0866 	0188
		LCALL 	49AH 			//0867 	349A
		MOVLP 	8H 			//0868 	0188
		BTSS 	3H, 0H 			//0869 	2C03
		LJUMP 	76H 			//086A 	3876

		//;NFB.C: 565: PB3 = 0;
		MOVLB 	0H 			//086B 	1020
		BCR 	DH, 3H 			//086C 	218D

		//;NFB.C: 566: PB2 = 0;
		BCR 	DH, 2H 			//086D 	210D

		//;NFB.C: 567: PA1 = 0;
		BCR 	CH, 1H 			//086E 	208C

		//;NFB.C: 568: if(PB5){
		BTSS 	DH, 5H 			//086F 	2E8D
		LJUMP 	73H 			//0870 	3873

		//;NFB.C: 569: PB7 = 0;
		BCR 	DH, 7H 			//0871 	238D

		//;NFB.C: 570: } else{
		LJUMP 	9BH 			//0872 	389B

		//;NFB.C: 571: PB7 = ~PB7;
		LDWI 	80H 			//0873 	0080
		XORWR 	DH, 1H 		//0874 	168D
		LJUMP 	9BH 			//0875 	389B
		MOVLB 	2H 			//0876 	1022
		LCALL 	131H 			//0877 	3131
		MOVLP 	8H 			//0878 	0188
		LCALL 	17AH 			//0879 	317A
		MOVLP 	8H 			//087A 	0188
		LCALL 	49AH 			//087B 	349A
		MOVLP 	8H 			//087C 	0188
		BTSS 	3H, 0H 			//087D 	2C03
		LJUMP 	86H 			//087E 	3886

		//;NFB.C: 574: PB7 = 1;
		MOVLB 	0H 			//087F 	1020
		BSR 	DH, 7H 			//0880 	278D

		//;NFB.C: 575: PB3 = ~PB3;
		LDWI 	8H 			//0881 	0008
		XORWR 	DH, 1H 		//0882 	168D

		//;NFB.C: 576: PB2 = 0;
		BCR 	DH, 2H 			//0883 	210D

		//;NFB.C: 577: PA1 = 0;
		BCR 	CH, 1H 			//0884 	208C

		//;NFB.C: 578: } else if(bat>=3.1){
		LJUMP 	9BH 			//0885 	389B
		MOVLB 	2H 			//0886 	1022
		LCALL 	131H 			//0887 	3131
		MOVLP 	8H 			//0888 	0188
		LCALL 	173H 			//0889 	3173
		MOVLP 	8H 			//088A 	0188
		LCALL 	49AH 			//088B 	349A
		MOVLP 	8H 			//088C 	0188
		BTSS 	3H, 0H 			//088D 	2C03
		LJUMP 	95H 			//088E 	3895

		//;NFB.C: 579: PB7 = 1;
		MOVLB 	0H 			//088F 	1020
		BSR 	DH, 7H 			//0890 	278D

		//;NFB.C: 580: PB3 = 1;
		BSR 	DH, 3H 			//0891 	258D

		//;NFB.C: 581: PB2 = ~PB2;
		LDWI 	4H 			//0892 	0004
		XORWR 	DH, 1H 		//0893 	168D
		LJUMP 	84H 			//0894 	3884

		//;NFB.C: 584: PB7 = 1;
		MOVLB 	0H 			//0895 	1020
		BSR 	DH, 7H 			//0896 	278D

		//;NFB.C: 585: PB3 = 1;
		BSR 	DH, 3H 			//0897 	258D

		//;NFB.C: 586: PB2 = 1;
		BSR 	DH, 2H 			//0898 	250D

		//;NFB.C: 587: PA1 = ~PA1;
		LDWI 	2H 			//0899 	0002
		XORWR 	CH, 1H 		//089A 	168C

		//;NFB.C: 588: }
		//;NFB.C: 589: DelayMs(500);
		MOVLP 	17H 			//089B 	0197
		LCALL 	75BH 			//089C 	375B
		MOVLP 	8H 			//089D 	0188
		MOVLP 	14H 			//089E 	0194
		LJUMP 	4A3H 			//089F 	3CA3

		//;NFB.C: 594: send((char*)"P1\r\n",4);
		LDWI 	F8H 			//08A0 	00F8
		MOVLB 	2H 			//08A1 	1022
		STR 	24H 			//08A2 	10A4
		LDWI 	A0H 			//08A3 	00A0
		MOVLP 	17H 			//08A4 	0197
		LCALL 	78DH 			//08A5 	378D
		MOVLP 	8H 			//08A6 	0188
		MOVLP 	13H 			//08A7 	0193
		LCALL 	3B7H 			//08A8 	33B7
		MOVLP 	8H 			//08A9 	0188

		//;NFB.C: 595: PC1 = 0;
		MOVLB 	0H 			//08AA 	1020
		BCR 	EH, 1H 			//08AB 	208E

		//;NFB.C: 596: PB0 = 1;
		BSR 	DH, 0H 			//08AC 	240D

		//;NFB.C: 597: DelayMs(500);
		MOVLP 	17H 			//08AD 	0197
		LCALL 	75BH 			//08AE 	375B
		MOVLP 	8H 			//08AF 	0188
		MOVLP 	14H 			//08B0 	0194
		LCALL 	4A3H 			//08B1 	34A3
		MOVLP 	8H 			//08B2 	0188

		//;NFB.C: 598: PB0 = 0;
		MOVLB 	0H 			//08B3 	1020
		BCR 	DH, 0H 			//08B4 	200D

		//;NFB.C: 599: BatteryLevel();
		LCALL 	D7H 			//08B5 	30D7

		//;NFB.C: 600: timeleft = 20;
		LDWI 	14H 			//08B6 	0014
		MOVLB 	5H 			//08B7 	1025
		STR 	47H 			//08B8 	10C7
		LDWI 	9H 			//08B9 	0009
		CLRF 	48H 			//08BA 	11C8

		//;NFB.C: 601: timeleft1 = 9;
		STR 	45H 			//08BB 	10C5
		LDWI 	F3H 			//08BC 	00F3
		CLRF 	46H 			//08BD 	11C6

		//;NFB.C: 602: send((char*)"H1\r\n",4);
		MOVLB 	2H 			//08BE 	1022
		STR 	24H 			//08BF 	10A4
		LDWI 	A0H 			//08C0 	00A0
		MOVLP 	17H 			//08C1 	0197
		LCALL 	78DH 			//08C2 	378D
		MOVLP 	8H 			//08C3 	0188
		MOVLP 	13H 			//08C4 	0193
		LCALL 	3B7H 			//08C5 	33B7

		//;NFB.C: 603: HTOn = 1;
		MOVLB 	5H 			//08C6 	1025
		CLRF 	67H 			//08C7 	11E7
		INCR 	67H, 1H 		//08C8 	1AE7
		CLRF 	68H 			//08C9 	11E8

		//;NFB.C: 604: PA0 = 1;
		MOVLB 	0H 			//08CA 	1020
		BSR 	CH, 0H 			//08CB 	240C

		//;NFB.C: 605: HTcnt = 0;
		MOVLB 	6H 			//08CC 	1026
		CLRF 	24H 			//08CD 	11A4
		CLRF 	25H 			//08CE 	11A5
		CLRF 	26H 			//08CF 	11A6
		CLRF 	27H 			//08D0 	11A7

		//;NFB.C: 606: HTtimecnt = 0;
		MOVLB 	2H 			//08D1 	1022
		CLRF 	61H 			//08D2 	11E1
		CLRF 	62H 			//08D3 	11E2
		CLRF 	63H 			//08D4 	11E3
		CLRF 	64H 			//08D5 	11E4
		RET 					//08D6 	1008

		//;NFB.C: 530: int Vdd = GET_ADC_DATA(2);
		LDWI 	2H 			//08D7 	0002
		LCALL 	411H 			//08D8 	3411
		MOVLP 	8H 			//08D9 	0188
		LDR 	21H, 0H 			//08DA 	1821
		STR 	25H 			//08DB 	10A5
		LDR 	20H, 0H 			//08DC 	1820
		STR 	24H 			//08DD 	10A4

		//;NFB.C: 531: bat = (float)Vdd*2/4096;
		LCALL 	6B4H 			//08DE 	36B4
		MOVLP 	8H 			//08DF 	0188
		LCALL 	166H 			//08E0 	3166
		LDR 	25H, 0H 			//08E1 	1825
		MOVLB 	1H 			//08E2 	1021
		STR 	2FH 			//08E3 	10AF
		MOVLB 	2H 			//08E4 	1022
		LDR 	24H, 0H 			//08E5 	1824
		MOVLB 	1H 			//08E6 	1021
		STR 	2EH 			//08E7 	10AE
		MOVLP 	14H 			//08E8 	0194
		LCALL 	4C1H 			//08E9 	34C1
		MOVLP 	8H 			//08EA 	0188
		MOVLP 	17H 			//08EB 	0197
		LCALL 	786H 			//08EC 	3786
		MOVLP 	8H 			//08ED 	0188
		LCALL 	42EH 			//08EE 	342E
		MOVLP 	16H 			//08EF 	0196
		LCALL 	6DBH 			//08F0 	36DB
		MOVLP 	8H 			//08F1 	0188
		MOVLP 	13H 			//08F2 	0193
		LCALL 	35AH 			//08F3 	335A
		MOVLP 	8H 			//08F4 	0188

		//;NFB.C: 532: bat = bat*2;
		LCALL 	13DH 			//08F5 	313D
		MOVLP 	8H 			//08F6 	0188
		LCALL 	42EH 			//08F7 	342E
		MOVLP 	8H 			//08F8 	0188
		LCALL 	15AH 			//08F9 	315A
		MOVLP 	8H 			//08FA 	0188

		//;NFB.C: 533: if(bat>=3.9){
		LCALL 	131H 			//08FB 	3131
		MOVLP 	8H 			//08FC 	0188
		LCALL 	16CH 			//08FD 	316C
		MOVLP 	8H 			//08FE 	0188
		LCALL 	49AH 			//08FF 	349A
		MOVLP 	8H 			//0900 	0188
		BTSS 	3H, 0H 			//0901 	2C03
		LJUMP 	106H 			//0902 	3906

		//;NFB.C: 534: PB3 = 0;
		MOVLB 	0H 			//0903 	1020
		BCR 	DH, 3H 			//0904 	218D
		LJUMP 	111H 			//0905 	3911

		//;NFB.C: 537: } else if(bat>=3.5){
		//;NFB.C: 536: PA1 = 0;
		//;NFB.C: 535: PB2 = 0;
		MOVLB 	2H 			//0906 	1022
		LCALL 	131H 			//0907 	3131
		MOVLP 	8H 			//0908 	0188
		LCALL 	17AH 			//0909 	317A
		MOVLP 	8H 			//090A 	0188
		LCALL 	49AH 			//090B 	349A
		MOVLP 	8H 			//090C 	0188
		BTSS 	3H, 0H 			//090D 	2C03
		LJUMP 	113H 			//090E 	3913

		//;NFB.C: 538: PB3 = 1;
		MOVLB 	0H 			//090F 	1020
		BSR 	DH, 3H 			//0910 	258D

		//;NFB.C: 539: PB2 = 0;
		BCR 	DH, 2H 			//0911 	210D
		LJUMP 	11FH 			//0912 	391F

		//;NFB.C: 541: } else if(bat>=3.1){
		//;NFB.C: 540: PA1 = 0;
		MOVLB 	2H 			//0913 	1022
		LCALL 	131H 			//0914 	3131
		MOVLP 	8H 			//0915 	0188
		LCALL 	173H 			//0916 	3173
		MOVLP 	8H 			//0917 	0188
		LCALL 	49AH 			//0918 	349A
		MOVLP 	8H 			//0919 	0188
		BTSS 	3H, 0H 			//091A 	2C03
		LJUMP 	121H 			//091B 	3921

		//;NFB.C: 542: PB3 = 1;
		MOVLB 	0H 			//091C 	1020
		BSR 	DH, 3H 			//091D 	258D

		//;NFB.C: 543: PB2 = 1;
		BSR 	DH, 2H 			//091E 	250D

		//;NFB.C: 544: PA1 = 0;
		BCR 	CH, 1H 			//091F 	208C

		//;NFB.C: 545: } else{
		LJUMP 	125H 			//0920 	3925

		//;NFB.C: 546: PB3 = 1;
		MOVLB 	0H 			//0921 	1020
		BSR 	DH, 3H 			//0922 	258D

		//;NFB.C: 547: PB2 = 1;
		BSR 	DH, 2H 			//0923 	250D

		//;NFB.C: 548: PA1 = 1;
		BSR 	CH, 1H 			//0924 	248C

		//;NFB.C: 549: }
		//;NFB.C: 550: DelayMs(1000);
		LDWI 	E8H 			//0925 	00E8
		MOVLB 	2H 			//0926 	1022
		STR 	20H 			//0927 	10A0
		LDWI 	3H 			//0928 	0003
		STR 	21H 			//0929 	10A1
		MOVLP 	14H 			//092A 	0194
		LCALL 	4A3H 			//092B 	34A3

		//;NFB.C: 551: PB3 = 1;
		MOVLB 	0H 			//092C 	1020
		BSR 	DH, 3H 			//092D 	258D

		//;NFB.C: 552: PB2 = 1;
		BSR 	DH, 2H 			//092E 	250D

		//;NFB.C: 553: PA1 = 1;
		BSR 	CH, 1H 			//092F 	248C
		RET 					//0930 	1008
		LDR 	65H, 0H 			//0931 	1865
		MOVLB 	1H 			//0932 	1021
		STR 	32H 			//0933 	10B2
		MOVLB 	2H 			//0934 	1022
		LDR 	66H, 0H 			//0935 	1866
		MOVLB 	1H 			//0936 	1021
		STR 	33H 			//0937 	10B3
		MOVLB 	2H 			//0938 	1022
		LDR 	67H, 0H 			//0939 	1867
		MOVLB 	1H 			//093A 	1021
		STR 	34H 			//093B 	10B4
		RET 					//093C 	1008
		LDR 	55H, 0H 			//093D 	1855
		MOVLB 	2H 			//093E 	1022
		STR 	65H 			//093F 	10E5
		MOVLB 	1H 			//0940 	1021
		LDR 	56H, 0H 			//0941 	1856
		MOVLB 	2H 			//0942 	1022
		STR 	66H 			//0943 	10E6
		MOVLB 	1H 			//0944 	1021
		LDR 	57H, 0H 			//0945 	1857
		MOVLB 	2H 			//0946 	1022
		STR 	67H 			//0947 	10E7
		MOVLB 	1H 			//0948 	1021
		LDWI 	40H 			//0949 	0040
		CLRF 	46H 			//094A 	11C6
		CLRF 	47H 			//094B 	11C7
		STR 	48H 			//094C 	10C8
		MOVLB 	2H 			//094D 	1022
		LDR 	65H, 0H 			//094E 	1865
		MOVLB 	1H 			//094F 	1021
		STR 	49H 			//0950 	10C9
		MOVLB 	2H 			//0951 	1022
		LDR 	66H, 0H 			//0952 	1866
		MOVLB 	1H 			//0953 	1021
		STR 	4AH 			//0954 	10CA
		MOVLB 	2H 			//0955 	1022
		LDR 	67H, 0H 			//0956 	1867
		MOVLB 	1H 			//0957 	1021
		STR 	4BH 			//0958 	10CB
		RET 					//0959 	1008
		LDR 	46H, 0H 			//095A 	1846
		MOVLB 	2H 			//095B 	1022
		STR 	65H 			//095C 	10E5
		MOVLB 	1H 			//095D 	1021
		LDR 	47H, 0H 			//095E 	1847
		MOVLB 	2H 			//095F 	1022
		STR 	66H 			//0960 	10E6
		MOVLB 	1H 			//0961 	1021
		LDR 	48H, 0H 			//0962 	1848
		MOVLB 	2H 			//0963 	1022
		STR 	67H 			//0964 	10E7
		RET 					//0965 	1008
		LDWI 	40H 			//0966 	0040
		CLRF 	46H 			//0967 	11C6
		CLRF 	47H 			//0968 	11C7
		STR 	48H 			//0969 	10C8
		MOVLB 	2H 			//096A 	1022
		RET 					//096B 	1008
		LDWI 	9AH 			//096C 	009A
		STR 	35H 			//096D 	10B5
		LDWI 	79H 			//096E 	0079
		STR 	36H 			//096F 	10B6
		LDWI 	40H 			//0970 	0040
		STR 	37H 			//0971 	10B7
		RET 					//0972 	1008
		LDWI 	66H 			//0973 	0066
		STR 	35H 			//0974 	10B5
		LDWI 	46H 			//0975 	0046
		STR 	36H 			//0976 	10B6
		LDWI 	40H 			//0977 	0040
		STR 	37H 			//0978 	10B7
		RET 					//0979 	1008
		LDWI 	60H 			//097A 	0060
		CLRF 	35H 			//097B 	11B5
		STR 	36H 			//097C 	10B6
		LDWI 	40H 			//097D 	0040
		STR 	37H 			//097E 	10B7
		RET 					//097F 	1008

		//;NFB.C: 721: if(PA0){
		MOVLB 	0H 			//0980 	1020
		BTSS 	CH, 0H 			//0981 	2C0C
		LJUMP 	28CH 			//0982 	3A8C

		//;NFB.C: 722: HTVP_ = GET_ADC_DATA(2);
		LDWI 	2H 			//0983 	0002
		LCALL 	411H 			//0984 	3411

		//;NFB.C: 723: for(int i=0;i<4;i++){
		MOVLP 	17H 			//0985 	0197
		LCALL 	79AH 			//0986 	379A
		MOVLP 	8H 			//0987 	0188
		CLRF 	3CH 			//0988 	11BC
		CLRF 	3DH 			//0989 	11BD

		//;NFB.C: 724: HTVP_ = (HTVP_+GET_ADC_DATA(2))/2;
		LDWI 	2H 			//098A 	0002
		LCALL 	411H 			//098B 	3411
		MOVLP 	8H 			//098C 	0188
		MOVLB 	0H 			//098D 	1020
		LDR 	6EH, 0H 			//098E 	186E
		MOVLB 	2H 			//098F 	1022
		ADDWR 	20H, 0H 		//0990 	1720
		STR 	4AH 			//0991 	10CA
		MOVLB 	0H 			//0992 	1020
		LDR 	6FH, 0H 			//0993 	186F
		LCALL 	6BBH 			//0994 	36BB
		MOVLP 	8H 			//0995 	0188
		STR 	6EH 			//0996 	10EE
		MOVLB 	2H 			//0997 	1022
		LDR 	4BH, 0H 			//0998 	184B
		MOVLB 	0H 			//0999 	1020
		STR 	6FH 			//099A 	10EF
		MOVLB 	3H 			//099B 	1023
		INCR 	3CH, 1H 		//099C 	1ABC
		BTSC 	3H, 2H 			//099D 	2903
		INCR 	3DH, 1H 		//099E 	1ABD
		LDR 	3DH, 0H 			//099F 	183D
		LCALL 	6D0H 			//09A0 	36D0
		MOVLP 	8H 			//09A1 	0188
		BTSS 	3H, 2H 			//09A2 	2D03
		LJUMP 	1A7H 			//09A3 	39A7
		LDWI 	4H 			//09A4 	0004
		MOVLB 	3H 			//09A5 	1023
		SUBWR 	3CH, 0H 		//09A6 	123C
		BTSS 	3H, 0H 			//09A7 	2C03
		LJUMP 	18AH 			//09A8 	398A

		//;NFB.C: 725: }
		//;NFB.C: 726: HTVN_ = GET_ADC_DATA(1);
		LDWI 	1H 			//09A9 	0001
		LCALL 	411H 			//09AA 	3411

		//;NFB.C: 727: for(int i=0;i<4;i++){
		MOVLP 	17H 			//09AB 	0197
		LCALL 	7B0H 			//09AC 	37B0
		MOVLP 	8H 			//09AD 	0188
		CLRF 	3EH 			//09AE 	11BE
		CLRF 	3FH 			//09AF 	11BF

		//;NFB.C: 728: HTVN_ = (HTVN_+GET_ADC_DATA(1))/2;
		LDWI 	1H 			//09B0 	0001
		LCALL 	411H 			//09B1 	3411
		MOVLP 	8H 			//09B2 	0188
		MOVLB 	0H 			//09B3 	1020
		LDR 	6CH, 0H 			//09B4 	186C
		MOVLB 	2H 			//09B5 	1022
		ADDWR 	20H, 0H 		//09B6 	1720
		STR 	4AH 			//09B7 	10CA
		MOVLB 	0H 			//09B8 	1020
		LDR 	6DH, 0H 			//09B9 	186D
		LCALL 	6BBH 			//09BA 	36BB
		MOVLP 	8H 			//09BB 	0188
		STR 	6CH 			//09BC 	10EC
		MOVLB 	2H 			//09BD 	1022
		LDR 	4BH, 0H 			//09BE 	184B
		MOVLB 	0H 			//09BF 	1020
		STR 	6DH 			//09C0 	10ED
		MOVLB 	3H 			//09C1 	1023
		INCR 	3EH, 1H 		//09C2 	1ABE
		BTSC 	3H, 2H 			//09C3 	2903
		INCR 	3FH, 1H 		//09C4 	1ABF
		LDR 	3FH, 0H 			//09C5 	183F
		LCALL 	6D0H 			//09C6 	36D0
		MOVLP 	8H 			//09C7 	0188
		BTSS 	3H, 2H 			//09C8 	2D03
		LJUMP 	1CDH 			//09C9 	39CD
		LDWI 	4H 			//09CA 	0004
		MOVLB 	3H 			//09CB 	1023
		SUBWR 	3EH, 0H 		//09CC 	123E
		BTSS 	3H, 0H 			//09CD 	2C03
		LJUMP 	1B0H 			//09CE 	39B0

		//;NFB.C: 729: }
		//;NFB.C: 730: HTVI_ = GET_ADC_DATA(4);
		LDWI 	4H 			//09CF 	0004
		LCALL 	411H 			//09D0 	3411

		//;NFB.C: 731: for(int i=0;i<4;i++){
		MOVLP 	17H 			//09D1 	0197
		LCALL 	7A7H 			//09D2 	37A7
		MOVLP 	8H 			//09D3 	0188
		CLRF 	40H 			//09D4 	11C0
		CLRF 	41H 			//09D5 	11C1

		//;NFB.C: 732: HTVI_ = (HTVI_+GET_ADC_DATA(4))/2;
		LDWI 	4H 			//09D6 	0004
		LCALL 	411H 			//09D7 	3411
		MOVLP 	8H 			//09D8 	0188
		MOVLB 	0H 			//09D9 	1020
		LDR 	6AH, 0H 			//09DA 	186A
		MOVLB 	2H 			//09DB 	1022
		ADDWR 	20H, 0H 		//09DC 	1720
		STR 	4AH 			//09DD 	10CA
		MOVLB 	0H 			//09DE 	1020
		LDR 	6BH, 0H 			//09DF 	186B
		LCALL 	6BBH 			//09E0 	36BB
		MOVLP 	8H 			//09E1 	0188
		STR 	6AH 			//09E2 	10EA
		MOVLB 	2H 			//09E3 	1022
		LDR 	4BH, 0H 			//09E4 	184B
		MOVLB 	0H 			//09E5 	1020
		STR 	6BH 			//09E6 	10EB
		MOVLB 	3H 			//09E7 	1023
		INCR 	40H, 1H 		//09E8 	1AC0
		BTSC 	3H, 2H 			//09E9 	2903
		INCR 	41H, 1H 		//09EA 	1AC1
		LDR 	41H, 0H 			//09EB 	1841
		LCALL 	6D0H 			//09EC 	36D0
		MOVLP 	8H 			//09ED 	0188
		BTSS 	3H, 2H 			//09EE 	2D03
		LJUMP 	1F3H 			//09EF 	39F3
		LDWI 	4H 			//09F0 	0004
		MOVLB 	3H 			//09F1 	1023
		SUBWR 	40H, 0H 		//09F2 	1240
		BTSS 	3H, 0H 			//09F3 	2C03
		LJUMP 	1D6H 			//09F4 	39D6

		//;NFB.C: 733: }
		//;NFB.C: 734: HTVP = (float)HTVP_*2/4096;
		LCALL 	6B4H 			//09F5 	36B4
		MOVLP 	17H 			//09F6 	0197
		LCALL 	72AH 			//09F7 	372A
		MOVLP 	8H 			//09F8 	0188
		LCALL 	48AH 			//09F9 	348A
		MOVLP 	17H 			//09FA 	0197
		LCALL 	707H 			//09FB 	3707
		MOVLP 	8H 			//09FC 	0188
		LCALL 	42EH 			//09FD 	342E
		MOVLP 	16H 			//09FE 	0196
		LCALL 	6DBH 			//09FF 	36DB
		MOVLP 	8H 			//0A00 	0188
		MOVLP 	13H 			//0A01 	0193
		LCALL 	35AH 			//0A02 	335A
		MOVLP 	8H 			//0A03 	0188

		//;NFB.C: 735: HTVN = (float)HTVN_*2/4096;
		MOVLP 	16H 			//0A04 	0196
		LCALL 	69FH 			//0A05 	369F
		MOVLP 	8H 			//0A06 	0188
		LCALL 	48AH 			//0A07 	348A
		MOVLP 	17H 			//0A08 	0197
		LCALL 	707H 			//0A09 	3707
		MOVLP 	8H 			//0A0A 	0188
		LCALL 	42EH 			//0A0B 	342E
		MOVLP 	16H 			//0A0C 	0196
		LCALL 	6DBH 			//0A0D 	36DB
		MOVLP 	8H 			//0A0E 	0188
		MOVLP 	13H 			//0A0F 	0193
		LCALL 	35AH 			//0A10 	335A
		MOVLP 	8H 			//0A11 	0188

		//;NFB.C: 736: HTVI = (float)HTVI_*2/4096;
		MOVLP 	16H 			//0A12 	0196
		LCALL 	6BDH 			//0A13 	36BD
		MOVLP 	8H 			//0A14 	0188
		LCALL 	48AH 			//0A15 	348A
		MOVLP 	17H 			//0A16 	0197
		LCALL 	707H 			//0A17 	3707
		MOVLP 	8H 			//0A18 	0188
		LCALL 	42EH 			//0A19 	342E
		MOVLP 	16H 			//0A1A 	0196
		LCALL 	6DBH 			//0A1B 	36DB
		MOVLP 	8H 			//0A1C 	0188
		MOVLP 	13H 			//0A1D 	0193
		LCALL 	35AH 			//0A1E 	335A
		MOVLP 	8H 			//0A1F 	0188

		//;NFB.C: 737: I = HTVI/0.01/39;
		MOVLP 	16H 			//0A20 	0196
		LCALL 	661H 			//0A21 	3661
		MOVLP 	8H 			//0A22 	0188
		MOVLP 	13H 			//0A23 	0193
		LCALL 	35AH 			//0A24 	335A
		MOVLP 	8H 			//0A25 	0188
		LCALL 	68FH 			//0A26 	368F

		//;NFB.C: 737: I = HTVI/0.01/39;
		MOVLP 	17H 			//0A27 	0197
		LCALL 	7B9H 			//0A28 	37B9
		MOVLP 	8H 			//0A29 	0188
		LDR 	39H, 0H 			//0A2A 	1839
		MOVLB 	1H 			//0A2B 	1021
		STR 	58H 			//0A2C 	10D8
		MOVLB 	3H 			//0A2D 	1023
		LDR 	3AH, 0H 			//0A2E 	183A
		MOVLB 	1H 			//0A2F 	1021
		STR 	59H 			//0A30 	10D9
		MOVLB 	3H 			//0A31 	1023
		LDR 	3BH, 0H 			//0A32 	183B
		MOVLB 	1H 			//0A33 	1021
		STR 	5AH 			//0A34 	10DA
		MOVLP 	13H 			//0A35 	0193
		LCALL 	35AH 			//0A36 	335A
		MOVLP 	8H 			//0A37 	0188

		//;NFB.C: 738: V = (HTVP-HTVN)*2;
		MOVLP 	15H 			//0A38 	0195
		LCALL 	5C6H 			//0A39 	35C6
		MOVLP 	8H 			//0A3A 	0188
		MOVLP 	13H 			//0A3B 	0193
		LCALL 	3DAH 			//0A3C 	33DA
		MOVLP 	8H 			//0A3D 	0188
		MOVLP 	17H 			//0A3E 	0197
		LCALL 	7CEH 			//0A3F 	37CE
		MOVLP 	8H 			//0A40 	0188
		LCALL 	42EH 			//0A41 	342E

		//;NFB.C: 739: R = V/I;
		MOVLP 	16H 			//0A42 	0196
		LCALL 	613H 			//0A43 	3613
		MOVLP 	8H 			//0A44 	0188
		MOVLP 	13H 			//0A45 	0193
		LCALL 	35AH 			//0A46 	335A
		MOVLP 	8H 			//0A47 	0188

		//;NFB.C: 740: T = (((R/R0)-1)/(T0/1000000))+Tr;
		MOVLP 	16H 			//0A48 	0196
		LCALL 	642H 			//0A49 	3642
		MOVLP 	8H 			//0A4A 	0188
		MOVLP 	13H 			//0A4B 	0193
		LCALL 	35AH 			//0A4C 	335A
		MOVLP 	8H 			//0A4D 	0188
		LCALL 	68FH 			//0A4E 	368F

		//;NFB.C: 740: T = (((R/R0)-1)/(T0/1000000))+Tr;
		MOVLP 	16H 			//0A4F 	0196
		LCALL 	680H 			//0A50 	3680
		MOVLP 	8H 			//0A51 	0188
		MOVLP 	13H 			//0A52 	0193
		LCALL 	35AH 			//0A53 	335A
		MOVLP 	8H 			//0A54 	0188
		MOVLP 	17H 			//0A55 	0197
		LCALL 	76DH 			//0A56 	376D
		MOVLP 	8H 			//0A57 	0188
		MOVLP 	13H 			//0A58 	0193
		LCALL 	3F5H 			//0A59 	33F5
		MOVLP 	8H 			//0A5A 	0188
		LDR 	34H, 0H 			//0A5B 	1834
		MOVLB 	3H 			//0A5C 	1023
		STR 	20H 			//0A5D 	10A0
		MOVLB 	1H 			//0A5E 	1021
		LDR 	35H, 0H 			//0A5F 	1835
		MOVLB 	3H 			//0A60 	1023
		STR 	21H 			//0A61 	10A1
		MOVLB 	1H 			//0A62 	1021
		LDR 	36H, 0H 			//0A63 	1836
		MOVLB 	3H 			//0A64 	1023
		STR 	22H 			//0A65 	10A2

		//;NFB.C: 740: T = (((R/R0)-1)/(T0/1000000))+Tr;
		MOVLP 	17H 			//0A66 	0197
		LCALL 	71CH 			//0A67 	371C
		MOVLP 	8H 			//0A68 	0188
		LDR 	39H, 0H 			//0A69 	1839
		MOVLB 	1H 			//0A6A 	1021
		STR 	55H 			//0A6B 	10D5
		MOVLB 	3H 			//0A6C 	1023
		LDR 	3AH, 0H 			//0A6D 	183A
		MOVLB 	1H 			//0A6E 	1021
		STR 	56H 			//0A6F 	10D6
		MOVLB 	3H 			//0A70 	1023
		LDR 	3BH, 0H 			//0A71 	183B
		MOVLB 	1H 			//0A72 	1021
		STR 	57H 			//0A73 	10D7
		MOVLB 	3H 			//0A74 	1023
		LDR 	20H, 0H 			//0A75 	1820
		MOVLB 	1H 			//0A76 	1021
		STR 	58H 			//0A77 	10D8
		MOVLB 	3H 			//0A78 	1023
		LDR 	21H, 0H 			//0A79 	1821
		MOVLB 	1H 			//0A7A 	1021
		STR 	59H 			//0A7B 	10D9
		MOVLB 	3H 			//0A7C 	1023
		LDR 	22H, 0H 			//0A7D 	1822
		MOVLB 	1H 			//0A7E 	1021
		STR 	5AH 			//0A7F 	10DA
		MOVLP 	13H 			//0A80 	0193
		LCALL 	35AH 			//0A81 	335A
		MOVLP 	8H 			//0A82 	0188
		MOVLP 	17H 			//0A83 	0197
		LCALL 	76DH 			//0A84 	376D
		MOVLP 	8H 			//0A85 	0188
		MOVLP 	13H 			//0A86 	0193
		LCALL 	3F5H 			//0A87 	33F5
		MOVLP 	8H 			//0A88 	0188
		MOVLP 	17H 			//0A89 	0197
		LCALL 	743H 			//0A8A 	3743
		MOVLP 	8H 			//0A8B 	0188

		//;NFB.C: 741: }
		//;NFB.C: 742: if(Smoketimecnt>=timeleft2){
		MOVLB 	5H 			//0A8C 	1025
		LDR 	43H, 0H 			//0A8D 	1843
		MOVLB 	2H 			//0A8E 	1022
		STR 	4AH 			//0A8F 	10CA
		MOVLB 	5H 			//0A90 	1025
		LDR 	44H, 0H 			//0A91 	1844
		LCALL 	657H 			//0A92 	3657
		MOVLP 	8H 			//0A93 	0188
		BTSS 	3H, 2H 			//0A94 	2D03
		LJUMP 	2A0H 			//0A95 	3AA0
		LCALL 	6EAH 			//0A96 	36EA
		MOVLP 	8H 			//0A97 	0188
		BTSS 	3H, 2H 			//0A98 	2D03
		LJUMP 	2A0H 			//0A99 	3AA0
		LCALL 	6F4H 			//0A9A 	36F4
		MOVLP 	8H 			//0A9B 	0188
		BTSS 	3H, 2H 			//0A9C 	2D03
		LJUMP 	2A0H 			//0A9D 	3AA0
		LCALL 	6EFH 			//0A9E 	36EF
		MOVLP 	8H 			//0A9F 	0188
		BTSC 	3H, 0H 			//0AA0 	2803

		//;NFB.C: 743: if(PA0){
		BTSS 	CH, 0H 			//0AA1 	2C0C
		LJUMP 	2C1H 			//0AA2 	3AC1

		//;NFB.C: 744: char msg[10];
		//;NFB.C: 745: sprintf(msg,"T:%0.1f\r\n",T);
		LDWI 	A3H 			//0AA3 	00A3
		MOVLB 	2H 			//0AA4 	1022
		STR 	20H 			//0AA5 	10A0
		LDWI 	1H 			//0AA6 	0001
		MOVLP 	17H 			//0AA7 	0197
		LCALL 	761H 			//0AA8 	3761
		MOVLP 	8H 			//0AA9 	0188
		MOVLP 	19H 			//0AAA 	0199
		LCALL 	12FH 			//0AAB 	312F
		MOVLP 	8H 			//0AAC 	0188

		//;NFB.C: 746: send(msg,strlen(msg));
		LDWI 	A3H 			//0AAD 	00A3
		STR 	24H 			//0AAE 	10A4
		LDWI 	1H 			//0AAF 	0001
		STR 	25H 			//0AB0 	10A5
		LDWI 	A3H 			//0AB1 	00A3
		MOVLB 	1H 			//0AB2 	1021
		STR 	20H 			//0AB3 	10A0
		LDWI 	1H 			//0AB4 	0001
		STR 	21H 			//0AB5 	10A1
		LCALL 	4C6H 			//0AB6 	34C6
		MOVLP 	8H 			//0AB7 	0188
		LCALL 	64FH 			//0AB8 	364F
		MOVLP 	13H 			//0AB9 	0193
		LCALL 	3B7H 			//0ABA 	33B7
		MOVLP 	8H 			//0ABB 	0188

		//;NFB.C: 747: timeleft2 += 100;
		LDWI 	64H 			//0ABC 	0064
		MOVLB 	5H 			//0ABD 	1025
		ADDWR 	43H, 1H 		//0ABE 	17C3
		BTSC 	3H, 0H 			//0ABF 	2803
		INCR 	44H, 1H 		//0AC0 	1AC4

		//;NFB.C: 748: }
		//;NFB.C: 749: }
		//;NFB.C: 750: diffT = T2-T;
		MOVLB 	2H 			//0AC1 	1022
		MOVLP 	16H 			//0AC2 	0196
		LCALL 	636H 			//0AC3 	3636
		MOVLP 	8H 			//0AC4 	0188
		MOVLB 	0H 			//0AC5 	1020
		LDR 	4FH, 0H 			//0AC6 	184F
		MOVLB 	1H 			//0AC7 	1021
		STR 	43H 			//0AC8 	10C3
		MOVLB 	0H 			//0AC9 	1020
		LDR 	50H, 0H 			//0ACA 	1850
		MOVLB 	1H 			//0ACB 	1021
		STR 	44H 			//0ACC 	10C4
		MOVLB 	0H 			//0ACD 	1020
		LDR 	51H, 0H 			//0ACE 	1851
		MOVLB 	1H 			//0ACF 	1021
		STR 	45H 			//0AD0 	10C5
		MOVLP 	13H 			//0AD1 	0193
		LCALL 	3DAH 			//0AD2 	33DA
		MOVLP 	8H 			//0AD3 	0188
		LDR 	40H, 0H 			//0AD4 	1840
		MOVLB 	2H 			//0AD5 	1022
		STR 	68H 			//0AD6 	10E8
		MOVLB 	1H 			//0AD7 	1021
		LDR 	41H, 0H 			//0AD8 	1841
		MOVLB 	2H 			//0AD9 	1022
		STR 	69H 			//0ADA 	10E9
		MOVLB 	1H 			//0ADB 	1021
		LDR 	42H, 0H 			//0ADC 	1842
		MOVLB 	2H 			//0ADD 	1022
		STR 	6AH 			//0ADE 	10EA

		//;NFB.C: 751: if(diffT>0){
		MOVLB 	1H 			//0ADF 	1021
		CLRF 	32H 			//0AE0 	11B2
		CLRF 	33H 			//0AE1 	11B3
		CLRF 	34H 			//0AE2 	11B4
		LCALL 	69BH 			//0AE3 	369B
		MOVLP 	8H 			//0AE4 	0188
		LCALL 	49AH 			//0AE5 	349A
		MOVLP 	8H 			//0AE6 	0188
		BTSC 	3H, 0H 			//0AE7 	2803
		LJUMP 	2ECH 			//0AE8 	3AEC

		//;NFB.C: 752: PA0 = 1;
		MOVLB 	0H 			//0AE9 	1020
		BSR 	CH, 0H 			//0AEA 	240C

		//;NFB.C: 753: } else{
		LJUMP 	2EEH 			//0AEB 	3AEE

		//;NFB.C: 754: PA0 = 0;
		MOVLB 	0H 			//0AEC 	1020
		BCR 	CH, 0H 			//0AED 	200C

		//;NFB.C: 755: }
		//;NFB.C: 756: if(Smoketimecnt>=timeleft3){
		MOVLB 	5H 			//0AEE 	1025
		LDR 	41H, 0H 			//0AEF 	1841
		MOVLB 	2H 			//0AF0 	1022
		STR 	4AH 			//0AF1 	10CA
		MOVLB 	5H 			//0AF2 	1025
		LDR 	42H, 0H 			//0AF3 	1842
		LCALL 	657H 			//0AF4 	3657
		MOVLP 	8H 			//0AF5 	0188
		BTSS 	3H, 2H 			//0AF6 	2D03
		LJUMP 	302H 			//0AF7 	3B02
		LCALL 	6EAH 			//0AF8 	36EA
		MOVLP 	8H 			//0AF9 	0188
		BTSS 	3H, 2H 			//0AFA 	2D03
		LJUMP 	302H 			//0AFB 	3B02
		LCALL 	6F4H 			//0AFC 	36F4
		MOVLP 	8H 			//0AFD 	0188
		BTSS 	3H, 2H 			//0AFE 	2D03
		LJUMP 	302H 			//0AFF 	3B02
		LCALL 	6EFH 			//0B00 	36EF
		MOVLP 	8H 			//0B01 	0188
		BTSS 	3H, 0H 			//0B02 	2C03
		LJUMP 	30AH 			//0B03 	3B0A

		//;NFB.C: 757: PA0 = 1;
		BSR 	CH, 0H 			//0B04 	240C

		//;NFB.C: 758: timeleft3 += 10;
		LDWI 	AH 			//0B05 	000A
		MOVLB 	5H 			//0B06 	1025
		ADDWR 	41H, 1H 		//0B07 	17C1
		BTSC 	3H, 0H 			//0B08 	2803
		INCR 	42H, 1H 		//0B09 	1AC2

		//;NFB.C: 759: }
		//;NFB.C: 760: if(diffT>pt && !PuffOn && Smoketimecnt>200){
		MOVLB 	0H 			//0B0A 	1020
		LDR 	5FH, 0H 			//0B0B 	185F
		MOVLB 	1H 			//0B0C 	1021
		STR 	2FH 			//0B0D 	10AF
		MOVLB 	0H 			//0B0E 	1020
		LDR 	5EH, 0H 			//0B0F 	185E
		MOVLB 	1H 			//0B10 	1021
		STR 	2EH 			//0B11 	10AE
		MOVLP 	14H 			//0B12 	0194
		LCALL 	4C1H 			//0B13 	34C1
		MOVLP 	8H 			//0B14 	0188
		LDR 	2EH, 0H 			//0B15 	182E
		STR 	32H 			//0B16 	10B2
		LDR 	2FH, 0H 			//0B17 	182F
		STR 	33H 			//0B18 	10B3
		LDR 	30H, 0H 			//0B19 	1830
		STR 	34H 			//0B1A 	10B4
		LCALL 	69BH 			//0B1B 	369B
		MOVLP 	8H 			//0B1C 	0188
		LCALL 	49AH 			//0B1D 	349A
		MOVLP 	8H 			//0B1E 	0188
		BTSC 	3H, 0H 			//0B1F 	2803
		LJUMP 	375H 			//0B20 	3B75
		MOVLB 	0H 			//0B21 	1020
		LDR 	64H, 0H 			//0B22 	1864
		IORWR 	65H, 0H 		//0B23 	1465
		BTSS 	3H, 2H 			//0B24 	2D03
		LJUMP 	375H 			//0B25 	3B75
		LDR 	4EH, 0H 			//0B26 	184E
		BTSS 	3H, 2H 			//0B27 	2D03
		LJUMP 	333H 			//0B28 	3B33
		LDR 	4DH, 0H 			//0B29 	184D
		BTSS 	3H, 2H 			//0B2A 	2D03
		LJUMP 	333H 			//0B2B 	3B33
		LDR 	4CH, 0H 			//0B2C 	184C
		BTSS 	3H, 2H 			//0B2D 	2D03
		LJUMP 	333H 			//0B2E 	3B33
		LDWI 	C9H 			//0B2F 	00C9
		SUBWR 	4BH, 0H 		//0B30 	124B
		BTSS 	3H, 0H 			//0B31 	2C03
		LJUMP 	375H 			//0B32 	3B75

		//;NFB.C: 761: Puffcnt++;
		LDWI 	1H 			//0B33 	0001
		MOVLB 	5H 			//0B34 	1025
		ADDWR 	20H, 1H 		//0B35 	17A0
		LDWI 	0H 			//0B36 	0000
		ADDWFC 	21H, 1H 		//0B37 	0DA1
		ADDWFC 	22H, 1H 		//0B38 	0DA2
		ADDWFC 	23H, 1H 		//0B39 	0DA3

		//;NFB.C: 762: int puffno = Puffcnt;
		LDR 	21H, 0H 			//0B3A 	1821
		MOVLB 	3H 			//0B3B 	1023
		STR 	38H 			//0B3C 	10B8
		MOVLB 	5H 			//0B3D 	1025
		LDR 	20H, 0H 			//0B3E 	1820
		MOVLB 	3H 			//0B3F 	1023
		STR 	37H 			//0B40 	10B7

		//;NFB.C: 763: char msg[10];
		//;NFB.C: 764: sprintf(msg,"D%d,%0.1f\r\n",puffno,diffT);
		LDWI 	ADH 			//0B41 	00AD
		MOVLB 	2H 			//0B42 	1022
		STR 	20H 			//0B43 	10A0
		LDWI 	1H 			//0B44 	0001
		STR 	21H 			//0B45 	10A1
		LDWI 	C0H 			//0B46 	00C0
		STR 	22H 			//0B47 	10A2
		LDWI 	A0H 			//0B48 	00A0
		STR 	23H 			//0B49 	10A3
		MOVLB 	3H 			//0B4A 	1023
		LDR 	38H, 0H 			//0B4B 	1838
		MOVLB 	2H 			//0B4C 	1022
		STR 	25H 			//0B4D 	10A5
		MOVLB 	3H 			//0B4E 	1023
		LDR 	37H, 0H 			//0B4F 	1837
		MOVLB 	2H 			//0B50 	1022
		STR 	24H 			//0B51 	10A4
		LDR 	68H, 0H 			//0B52 	1868
		STR 	26H 			//0B53 	10A6
		LDR 	69H, 0H 			//0B54 	1869
		STR 	27H 			//0B55 	10A7
		LDR 	6AH, 0H 			//0B56 	186A
		STR 	28H 			//0B57 	10A8
		MOVLP 	19H 			//0B58 	0199
		LCALL 	12FH 			//0B59 	312F
		MOVLP 	8H 			//0B5A 	0188

		//;NFB.C: 765: send(msg,strlen(msg));
		LDWI 	ADH 			//0B5B 	00AD
		STR 	24H 			//0B5C 	10A4
		LDWI 	1H 			//0B5D 	0001
		STR 	25H 			//0B5E 	10A5
		LDWI 	ADH 			//0B5F 	00AD
		MOVLB 	1H 			//0B60 	1021
		STR 	20H 			//0B61 	10A0
		LDWI 	1H 			//0B62 	0001
		STR 	21H 			//0B63 	10A1
		LCALL 	4C6H 			//0B64 	34C6
		MOVLP 	8H 			//0B65 	0188
		LCALL 	64FH 			//0B66 	364F
		MOVLP 	13H 			//0B67 	0193
		LCALL 	3B7H 			//0B68 	33B7
		MOVLP 	8H 			//0B69 	0188

		//;NFB.C: 766: PuffOn = 1;
		MOVLB 	0H 			//0B6A 	1020
		CLRF 	64H 			//0B6B 	11E4
		INCR 	64H, 1H 		//0B6C 	1AE4
		CLRF 	65H 			//0B6D 	11E5

		//;NFB.C: 767: timenow = Smoketimecnt;
		LDR 	4CH, 0H 			//0B6E 	184C
		MOVLB 	5H 			//0B6F 	1025
		STR 	40H 			//0B70 	10C0
		MOVLB 	0H 			//0B71 	1020
		LDR 	4BH, 0H 			//0B72 	184B
		MOVLB 	5H 			//0B73 	1025
		STR 	3FH 			//0B74 	10BF

		//;NFB.C: 768: }
		//;NFB.C: 769: if(PuffOn){
		MOVLB 	0H 			//0B75 	1020
		LDR 	64H, 0H 			//0B76 	1864
		IORWR 	65H, 0H 		//0B77 	1465
		BTSC 	3H, 2H 			//0B78 	2903
		LJUMP 	3ABH 			//0B79 	3BAB

		//;NFB.C: 770: if(Smoketimecnt-timenow>=200){
		MOVLB 	5H 			//0B7A 	1025
		LDR 	3FH, 0H 			//0B7B 	183F
		MOVLB 	2H 			//0B7C 	1022
		STR 	4AH 			//0B7D 	10CA
		MOVLB 	5H 			//0B7E 	1025
		LDR 	40H, 0H 			//0B7F 	1840
		MOVLB 	2H 			//0B80 	1022
		LCALL 	662H 			//0B81 	3662
		MOVLP 	8H 			//0B82 	0188
		MOVLB 	0H 			//0B83 	1020
		LDR 	4BH, 0H 			//0B84 	184B
		MOVLB 	2H 			//0B85 	1022
		STR 	4EH 			//0B86 	10CE
		MOVLB 	0H 			//0B87 	1020
		LDR 	4CH, 0H 			//0B88 	184C
		MOVLB 	2H 			//0B89 	1022
		STR 	4FH 			//0B8A 	10CF
		MOVLB 	0H 			//0B8B 	1020
		LDR 	4DH, 0H 			//0B8C 	184D
		MOVLB 	2H 			//0B8D 	1022
		STR 	50H 			//0B8E 	10D0
		MOVLB 	0H 			//0B8F 	1020
		LDR 	4EH, 0H 			//0B90 	184E
		MOVLB 	2H 			//0B91 	1022
		STR 	51H 			//0B92 	10D1
		LDR 	4AH, 0H 			//0B93 	184A
		SUBWR 	4EH, 1H 		//0B94 	12CE
		LDR 	4BH, 0H 			//0B95 	184B
		SUBWFB 	4FH, 1H 		//0B96 	0BCF
		LDR 	4CH, 0H 			//0B97 	184C
		SUBWFB 	50H, 1H 		//0B98 	0BD0
		LDR 	4DH, 0H 			//0B99 	184D
		SUBWFB 	51H, 1H 		//0B9A 	0BD1
		LDR 	51H, 0H 			//0B9B 	1851
		BTSS 	3H, 2H 			//0B9C 	2D03
		LJUMP 	3A8H 			//0B9D 	3BA8
		LDR 	50H, 0H 			//0B9E 	1850
		BTSS 	3H, 2H 			//0B9F 	2D03
		LJUMP 	3A8H 			//0BA0 	3BA8
		LDR 	4FH, 0H 			//0BA1 	184F
		BTSS 	3H, 2H 			//0BA2 	2D03
		LJUMP 	3A8H 			//0BA3 	3BA8
		LDWI 	C8H 			//0BA4 	00C8
		SUBWR 	4EH, 0H 		//0BA5 	124E
		BTSS 	3H, 0H 			//0BA6 	2C03
		LJUMP 	3ABH 			//0BA7 	3BAB

		//;NFB.C: 771: PuffOn = 0;
		MOVLB 	0H 			//0BA8 	1020
		CLRF 	64H 			//0BA9 	11E4
		CLRF 	65H 			//0BAA 	11E5

		//;NFB.C: 772: }
		//;NFB.C: 773: }
		//;NFB.C: 774: if(Smoketimecnt>=(t2*100) || Puffcnt>=pf){
		MOVLB 	0H 			//0BAB 	1020
		LDR 	63H, 0H 			//0BAC 	1863
		MOVLB 	1H 			//0BAD 	1021
		STR 	2FH 			//0BAE 	10AF
		MOVLB 	0H 			//0BAF 	1020
		LDR 	62H, 0H 			//0BB0 	1862
		MOVLB 	1H 			//0BB1 	1021
		STR 	2EH 			//0BB2 	10AE
		LDWI 	64H 			//0BB3 	0064
		STR 	30H 			//0BB4 	10B0
		CLRF 	31H 			//0BB5 	11B1
		LCALL 	5E9H 			//0BB6 	35E9
		MOVLP 	8H 			//0BB7 	0188
		LDR 	2EH, 0H 			//0BB8 	182E
		MOVLB 	2H 			//0BB9 	1022
		STR 	4AH 			//0BBA 	10CA
		MOVLB 	1H 			//0BBB 	1021
		LDR 	2FH, 0H 			//0BBC 	182F
		LCALL 	657H 			//0BBD 	3657
		MOVLP 	8H 			//0BBE 	0188
		BTSS 	3H, 2H 			//0BBF 	2D03
		LJUMP 	3CBH 			//0BC0 	3BCB
		LCALL 	6EAH 			//0BC1 	36EA
		MOVLP 	8H 			//0BC2 	0188
		BTSS 	3H, 2H 			//0BC3 	2D03
		LJUMP 	3CBH 			//0BC4 	3BCB
		LCALL 	6F4H 			//0BC5 	36F4
		MOVLP 	8H 			//0BC6 	0188
		BTSS 	3H, 2H 			//0BC7 	2D03
		LJUMP 	3CBH 			//0BC8 	3BCB
		LCALL 	6EFH 			//0BC9 	36EF
		MOVLP 	8H 			//0BCA 	0188
		BTSC 	3H, 0H 			//0BCB 	2803
		LJUMP 	3ECH 			//0BCC 	3BEC
		LDR 	60H, 0H 			//0BCD 	1860
		MOVLB 	2H 			//0BCE 	1022
		STR 	4AH 			//0BCF 	10CA
		MOVLB 	0H 			//0BD0 	1020
		LDR 	61H, 0H 			//0BD1 	1861
		MOVLB 	2H 			//0BD2 	1022
		LCALL 	662H 			//0BD3 	3662
		MOVLP 	8H 			//0BD4 	0188
		LDR 	4DH, 0H 			//0BD5 	184D
		MOVLB 	5H 			//0BD6 	1025
		SUBWR 	23H, 0H 		//0BD7 	1223
		BTSS 	3H, 2H 			//0BD8 	2D03
		LJUMP 	3EAH 			//0BD9 	3BEA
		MOVLB 	2H 			//0BDA 	1022
		LDR 	4CH, 0H 			//0BDB 	184C
		MOVLB 	5H 			//0BDC 	1025
		SUBWR 	22H, 0H 		//0BDD 	1222
		BTSS 	3H, 2H 			//0BDE 	2D03
		LJUMP 	3EAH 			//0BDF 	3BEA
		MOVLB 	2H 			//0BE0 	1022
		LDR 	4BH, 0H 			//0BE1 	184B
		MOVLB 	5H 			//0BE2 	1025
		SUBWR 	21H, 0H 		//0BE3 	1221
		BTSS 	3H, 2H 			//0BE4 	2D03
		LJUMP 	3EAH 			//0BE5 	3BEA
		MOVLB 	2H 			//0BE6 	1022
		LDR 	4AH, 0H 			//0BE7 	184A
		MOVLB 	5H 			//0BE8 	1025
		SUBWR 	20H, 0H 		//0BE9 	1220
		BTSS 	3H, 0H 			//0BEA 	2C03
		RET 					//0BEB 	1008

		//;NFB.C: 775: send((char*)"T0\r\n",4);
		MOVLP 	17H 			//0BEC 	0197
		LCALL 	7A3H 			//0BED 	37A3
		MOVLP 	8H 			//0BEE 	0188
		MOVLP 	17H 			//0BEF 	0197
		LCALL 	78DH 			//0BF0 	378D
		MOVLP 	8H 			//0BF1 	0188
		MOVLP 	13H 			//0BF2 	0193
		LCALL 	3B7H 			//0BF3 	33B7
		MOVLP 	8H 			//0BF4 	0188

		//;NFB.C: 776: send((char*)"S0\r\n",4);
		MOVLP 	17H 			//0BF5 	0197
		LCALL 	796H 			//0BF6 	3796
		MOVLP 	8H 			//0BF7 	0188
		MOVLP 	17H 			//0BF8 	0197
		LCALL 	78DH 			//0BF9 	378D
		MOVLP 	8H 			//0BFA 	0188
		MOVLP 	13H 			//0BFB 	0193
		LCALL 	3B7H 			//0BFC 	33B7
		MOVLP 	8H 			//0BFD 	0188

		//;NFB.C: 777: PA0 = 0;
		MOVLB 	0H 			//0BFE 	1020
		BCR 	CH, 0H 			//0BFF 	200C

		//;NFB.C: 778: SmokeOn = 0;
		//;NFB.C: 779: Smoketimer = 0;
		//;NFB.C: 780: PuffOn = 0;
		MOVLP 	17H 			//0C00 	0197
		LCALL 	7C7H 			//0C01 	37C7
		MOVLP 	8H 			//0C02 	0188
		CLRF 	64H 			//0C03 	11E4
		CLRF 	65H 			//0C04 	11E5

		//;NFB.C: 781: PowerOn = 0;
		CLRF 	68H 			//0C05 	11E8
		CLRF 	69H 			//0C06 	11E9

		//;NFB.C: 782: PC1=1;
		BSR 	EH, 1H 			//0C07 	248E

		//;NFB.C: 783: PB0 = 1;
		BSR 	DH, 0H 			//0C08 	240D

		//;NFB.C: 784: DelayMs(500);
		MOVLP 	17H 			//0C09 	0197
		LCALL 	75BH 			//0C0A 	375B
		MOVLP 	8H 			//0C0B 	0188
		MOVLP 	14H 			//0C0C 	0194
		LCALL 	4A3H 			//0C0D 	34A3

		//;NFB.C: 785: PB0 = 0;
		MOVLB 	0H 			//0C0E 	1020
		BCR 	DH, 0H 			//0C0F 	200D
		RET 					//0C10 	1008
		MOVLB 	1H 			//0C11 	1021
		STR 	6FH 			//0C12 	10EF

		//;NFB.C: 370: ADCON0&=0B00001111;
		LDWI 	FH 			//0C13 	000F
		ANDWR 	1DH, 1H 		//0C14 	159D

		//;NFB.C: 371: ADCON0|=adcChannel<<4;
		SWAPR 	6FH, 0H 		//0C15 	1E6F
		ANDWI 	F0H 			//0C16 	09F0
		IORWR 	1DH, 1H 		//0C17 	149D

		//;NFB.C: 372: DelayUs(100);
		LDWI 	64H 			//0C18 	0064
		STR 	6AH 			//0C19 	10EA
		CLRF 	6BH 			//0C1A 	11EB
		MOVLP 	14H 			//0C1B 	0194
		LCALL 	4DDH 			//0C1C 	34DD
		MOVLP 	8H 			//0C1D 	0188

		//;NFB.C: 373: GO=1;
		MOVLB 	1H 			//0C1E 	1021
		BSR 	1DH, 1H 			//0C1F 	249D

		//;NFB.C: 374: __nop();
		NOP 					//0C20 	1000

		//;NFB.C: 375: __nop();
		NOP 					//0C21 	1000

		//;NFB.C: 376: while(GO);
		MOVLB 	1H 			//0C22 	1021
		BTSC 	1DH, 1H 		//0C23 	289D
		LJUMP 	422H 			//0C24 	3C22

		//;NFB.C: 378: return (unsigned int)(ADRESH<<8|ADRESL);
		LDR 	1CH, 0H 			//0C25 	181C
		MOVLB 	2H 			//0C26 	1022
		STR 	21H 			//0C27 	10A1
		CLRF 	20H 			//0C28 	11A0
		MOVLB 	1H 			//0C29 	1021
		LDR 	1BH, 0H 			//0C2A 	181B
		MOVLB 	2H 			//0C2B 	1022
		IORWR 	20H, 1H 		//0C2C 	14A0
		RET 					//0C2D 	1008
		LDR 	46H, 0H 			//0C2E 	1846
		STR 	4CH 			//0C2F 	10CC
		LDR 	47H, 0H 			//0C30 	1847
		STR 	4DH 			//0C31 	10CD
		LDR 	48H, 0H 			//0C32 	1848
		STR 	4EH 			//0C33 	10CE
		BCR 	3H, 0H 			//0C34 	2003
		RLR 	4DH, 0H 			//0C35 	1D4D
		RLR 	4EH, 0H 			//0C36 	1D4E
		STR 	4FH 			//0C37 	10CF
		LDR 	4FH, 0H 			//0C38 	184F
		BTSS 	3H, 2H 			//0C39 	2D03
		LJUMP 	43CH 			//0C3A 	3C3C
		LJUMP 	6F9H 			//0C3B 	3EF9
		LDR 	49H, 0H 			//0C3C 	1849
		STR 	4CH 			//0C3D 	10CC
		LDR 	4AH, 0H 			//0C3E 	184A
		STR 	4DH 			//0C3F 	10CD
		LDR 	4BH, 0H 			//0C40 	184B
		STR 	4EH 			//0C41 	10CE
		BCR 	3H, 0H 			//0C42 	2003
		RLR 	4DH, 0H 			//0C43 	1D4D
		RLR 	4EH, 0H 			//0C44 	1D4E
		STR 	54H 			//0C45 	10D4
		LDR 	54H, 0H 			//0C46 	1854
		BTSS 	3H, 2H 			//0C47 	2D03
		LJUMP 	44AH 			//0C48 	3C4A
		LJUMP 	6F9H 			//0C49 	3EF9
		LDR 	54H, 0H 			//0C4A 	1854
		ADDWI 	7BH 			//0C4B 	0E7B
		ADDWR 	4FH, 1H 		//0C4C 	17CF
		LDR 	48H, 0H 			//0C4D 	1848
		STR 	54H 			//0C4E 	10D4
		LDR 	4BH, 0H 			//0C4F 	184B
		XORWR 	54H, 1H 		//0C50 	16D4
		LDWI 	80H 			//0C51 	0080
		ANDWR 	54H, 1H 		//0C52 	15D4
		LDWI 	FFH 			//0C53 	00FF
		BSR 	47H, 7H 			//0C54 	27C7
		BSR 	4AH, 7H 			//0C55 	27CA
		ANDWR 	49H, 1H 		//0C56 	15C9
		ANDWR 	4AH, 1H 		//0C57 	15CA
		LDWI 	7H 			//0C58 	0007
		CLRF 	4BH 			//0C59 	11CB
		CLRF 	50H 			//0C5A 	11D0
		CLRF 	51H 			//0C5B 	11D1
		CLRF 	52H 			//0C5C 	11D2
		STR 	53H 			//0C5D 	10D3
		BTSS 	46H, 0H 		//0C5E 	2C46
		LJUMP 	462H 			//0C5F 	3C62
		LCALL 	6D6H 			//0C60 	36D6
		MOVLP 	8H 			//0C61 	0188
		LSRF 	48H, 1H 		//0C62 	06C8
		RRR 	47H, 1H 			//0C63 	1CC7
		RRR 	46H, 1H 			//0C64 	1CC6
		LSLF 	49H, 1H 		//0C65 	05C9
		RLR 	4AH, 1H 			//0C66 	1DCA
		RLR 	4BH, 1H 			//0C67 	1DCB
		DECRSZ 	53H, 1H 		//0C68 	1BD3
		LJUMP 	45EH 			//0C69 	3C5E
		LDWI 	9H 			//0C6A 	0009
		STR 	53H 			//0C6B 	10D3
		BTSS 	46H, 0H 		//0C6C 	2C46
		LJUMP 	470H 			//0C6D 	3C70
		LCALL 	6D6H 			//0C6E 	36D6
		MOVLP 	8H 			//0C6F 	0188
		LSRF 	48H, 1H 		//0C70 	06C8
		RRR 	47H, 1H 			//0C71 	1CC7
		RRR 	46H, 1H 			//0C72 	1CC6
		LSRF 	52H, 1H 		//0C73 	06D2
		RRR 	51H, 1H 			//0C74 	1CD1
		RRR 	50H, 1H 			//0C75 	1CD0
		DECRSZ 	53H, 1H 		//0C76 	1BD3
		LJUMP 	46CH 			//0C77 	3C6C
		LDR 	50H, 0H 			//0C78 	1850
		STR 	20H 			//0C79 	10A0
		LDR 	51H, 0H 			//0C7A 	1851
		STR 	21H 			//0C7B 	10A1
		LDR 	52H, 0H 			//0C7C 	1852
		STR 	22H 			//0C7D 	10A2
		LDR 	4FH, 0H 			//0C7E 	184F
		STR 	23H 			//0C7F 	10A3
		LDR 	54H, 0H 			//0C80 	1854
		STR 	24H 			//0C81 	10A4
		LCALL 	4DCH 			//0C82 	34DC
		LDR 	20H, 0H 			//0C83 	1820
		STR 	46H 			//0C84 	10C6
		LDR 	21H, 0H 			//0C85 	1821
		STR 	47H 			//0C86 	10C7
		LDR 	22H, 0H 			//0C87 	1822
		STR 	48H 			//0C88 	10C8
		RET 					//0C89 	1008
		LDR 	28H, 0H 			//0C8A 	1828
		STR 	20H 			//0C8B 	10A0
		LDR 	29H, 0H 			//0C8C 	1829
		STR 	21H 			//0C8D 	10A1
		LDWI 	8EH 			//0C8E 	008E
		CLRF 	22H 			//0C8F 	11A2
		STR 	23H 			//0C90 	10A3
		CLRF 	24H 			//0C91 	11A4
		LCALL 	4DCH 			//0C92 	34DC
		LDR 	20H, 0H 			//0C93 	1820
		STR 	28H 			//0C94 	10A8
		LDR 	21H, 0H 			//0C95 	1821
		STR 	29H 			//0C96 	10A9
		LDR 	22H, 0H 			//0C97 	1822
		STR 	2AH 			//0C98 	10AA
		RET 					//0C99 	1008
		BTSS 	34H, 7H 		//0C9A 	2FB4
		LJUMP 	4A9H 			//0C9B 	3CA9
		LDR 	32H, 0H 			//0C9C 	1832
		SUBWI 	0H 			//0C9D 	0C00
		STR 	32H 			//0C9E 	10B2
		LDR 	33H, 0H 			//0C9F 	1833
		BTSS 	3H, 0H 			//0CA0 	2C03
		INCRSZ 	33H, 0H 		//0CA1 	1F33
		SUBWI 	0H 			//0CA2 	0C00
		STR 	33H 			//0CA3 	10B3
		LDR 	34H, 0H 			//0CA4 	1834
		BTSS 	3H, 0H 			//0CA5 	2C03
		INCRSZ 	34H, 0H 		//0CA6 	1F34
		SUBWI 	80H 			//0CA7 	0C80
		STR 	34H 			//0CA8 	10B4
		BTSS 	37H, 7H 		//0CA9 	2FB7
		LJUMP 	4B8H 			//0CAA 	3CB8
		LDR 	35H, 0H 			//0CAB 	1835
		SUBWI 	0H 			//0CAC 	0C00
		STR 	35H 			//0CAD 	10B5
		LDR 	36H, 0H 			//0CAE 	1836
		BTSS 	3H, 0H 			//0CAF 	2C03
		INCRSZ 	36H, 0H 		//0CB0 	1F36
		SUBWI 	0H 			//0CB1 	0C00
		STR 	36H 			//0CB2 	10B6
		LDR 	37H, 0H 			//0CB3 	1837
		BTSS 	3H, 0H 			//0CB4 	2C03
		INCRSZ 	37H, 0H 		//0CB5 	1F37
		SUBWI 	80H 			//0CB6 	0C80
		STR 	37H 			//0CB7 	10B7
		LDWI 	80H 			//0CB8 	0080
		XORWR 	34H, 1H 		//0CB9 	16B4
		XORWR 	37H, 1H 		//0CBA 	16B7
		LDR 	37H, 0H 			//0CBB 	1837
		SUBWR 	34H, 0H 		//0CBC 	1234
		BTSS 	3H, 2H 			//0CBD 	2D03
		RET 					//0CBE 	1008
		LDR 	36H, 0H 			//0CBF 	1836
		SUBWR 	33H, 0H 		//0CC0 	1233
		BTSS 	3H, 2H 			//0CC1 	2D03
		RET 					//0CC2 	1008
		LDR 	35H, 0H 			//0CC3 	1835
		SUBWR 	32H, 0H 		//0CC4 	1232
		RET 					//0CC5 	1008
		LDR 	21H, 0H 			//0CC6 	1821
		STR 	24H 			//0CC7 	10A4
		LDR 	20H, 0H 			//0CC8 	1820
		STR 	23H 			//0CC9 	10A3
		LDR 	23H, 0H 			//0CCA 	1823
		STR 	4H 			//0CCB 	1084
		LDR 	24H, 0H 			//0CCC 	1824
		STR 	5H 			//0CCD 	1085
		MOVIW 	FSR0++ 		//0CCE 	1012
		BTSC 	3H, 2H 			//0CCF 	2903
		LJUMP 	4D5H 			//0CD0 	3CD5
		INCR 	23H, 1H 		//0CD1 	1AA3
		BTSC 	3H, 2H 			//0CD2 	2903
		INCR 	24H, 1H 		//0CD3 	1AA4
		LJUMP 	4CAH 			//0CD4 	3CCA
		LDR 	20H, 0H 			//0CD5 	1820
		SUBWR 	23H, 0H 		//0CD6 	1223
		STR 	20H 			//0CD7 	10A0
		LDR 	21H, 0H 			//0CD8 	1821
		SUBWFB 	24H, 0H 		//0CD9 	0B24
		STR 	21H 			//0CDA 	10A1
		RET 					//0CDB 	1008
		LDR 	23H, 0H 			//0CDC 	1823
		BTSC 	3H, 2H 			//0CDD 	2903
		LJUMP 	4E4H 			//0CDE 	3CE4
		LDR 	22H, 0H 			//0CDF 	1822
		IORWR 	21H, 0H 		//0CE0 	1421
		IORWR 	20H, 0H 		//0CE1 	1420
		BTSS 	3H, 2H 			//0CE2 	2D03
		LJUMP 	4ECH 			//0CE3 	3CEC
		CLRF 	20H 			//0CE4 	11A0
		CLRF 	21H 			//0CE5 	11A1
		CLRF 	22H 			//0CE6 	11A2
		RET 					//0CE7 	1008
		INCR 	23H, 1H 		//0CE8 	1AA3
		LSRF 	22H, 1H 		//0CE9 	06A2
		RRR 	21H, 1H 			//0CEA 	1CA1
		RRR 	20H, 1H 			//0CEB 	1CA0
		LDWI 	FEH 			//0CEC 	00FE
		ANDWR 	22H, 0H 		//0CED 	1522
		BTSC 	3H, 2H 			//0CEE 	2903
		LJUMP 	4FAH 			//0CEF 	3CFA
		LJUMP 	4E8H 			//0CF0 	3CE8
		INCR 	23H, 1H 		//0CF1 	1AA3
		INCR 	20H, 1H 		//0CF2 	1AA0
		BTSC 	3H, 2H 			//0CF3 	2903
		INCR 	21H, 1H 		//0CF4 	1AA1
		BTSC 	3H, 2H 			//0CF5 	2903
		INCR 	22H, 1H 		//0CF6 	1AA2
		LSRF 	22H, 1H 		//0CF7 	06A2
		RRR 	21H, 1H 			//0CF8 	1CA1
		RRR 	20H, 1H 			//0CF9 	1CA0
		LDWI 	FFH 			//0CFA 	00FF
		ANDWR 	22H, 0H 		//0CFB 	1522
		BTSC 	3H, 2H 			//0CFC 	2903
		LJUMP 	507H 			//0CFD 	3D07
		LJUMP 	4F1H 			//0CFE 	3CF1
		LDWI 	2H 			//0CFF 	0002
		SUBWR 	23H, 0H 		//0D00 	1223
		BTSS 	3H, 0H 			//0D01 	2C03
		LJUMP 	509H 			//0D02 	3D09
		DECR 	23H, 1H 		//0D03 	13A3
		LSLF 	20H, 1H 		//0D04 	05A0
		RLR 	21H, 1H 			//0D05 	1DA1
		RLR 	22H, 1H 			//0D06 	1DA2
		BTSS 	21H, 7H 		//0D07 	2FA1
		LJUMP 	4FFH 			//0D08 	3CFF
		BTSS 	23H, 0H 		//0D09 	2C23
		BCR 	21H, 7H 			//0D0A 	23A1
		LSRF 	23H, 1H 		//0D0B 	06A3
		LDR 	23H, 0H 			//0D0C 	1823
		STR 	27H 			//0D0D 	10A7
		CLRF 	26H 			//0D0E 	11A6
		CLRF 	25H 			//0D0F 	11A5
		LDR 	25H, 0H 			//0D10 	1825
		IORWR 	20H, 1H 		//0D11 	14A0
		LDR 	26H, 0H 			//0D12 	1826
		IORWR 	21H, 1H 		//0D13 	14A1
		LDR 	27H, 0H 			//0D14 	1827
		IORWR 	22H, 1H 		//0D15 	14A2
		LDR 	24H, 0H 			//0D16 	1824
		BTSS 	3H, 2H 			//0D17 	2D03
		BSR 	22H, 7H 			//0D18 	27A2
		RET 					//0D19 	1008
		MOVLB 	1H 			//0D1A 	1021
		STR 	5CH 			//0D1B 	10DC
		BTSS 	5CH, 7H 		//0D1C 	2FDC
		LJUMP 	580H 			//0D1D 	3D80
		COMR 	5CH, 1H 		//0D1E 	19DC
		INCR 	5CH, 1H 		//0D1F 	1ADC
		LDR 	5CH, 0H 			//0D20 	185C
		XORWI 	80H 			//0D21 	0A80
		ADDWI 	12H 			//0D22 	0E12
		BTSS 	3H, 0H 			//0D23 	2C03
		LJUMP 	558H 			//0D24 	3D58
		LCALL 	6A8H 			//0D25 	36A8
		MOVLP 	8H 			//0D26 	0188
		LCALL 	5FEH 			//0D27 	35FE
		MOVLP 	8H 			//0D28 	0188
		LCALL 	6FDH 			//0D29 	36FD
		MOVLP 	15H 			//0D2A 	0195
		LCALL 	513H 			//0D2B 	3513
		MOVLP 	8H 			//0D2C 	0188
		LCALL 	647H 			//0D2D 	3647
		MOVLP 	8H 			//0D2E 	0188
		LCALL 	5E9H 			//0D2F 	35E9
		MOVLP 	8H 			//0D30 	0188
		LCALL 	7D7H 			//0D31 	37D7
		MOVLP 	8H 			//0D32 	0188
		LCALL 	637H 			//0D33 	3637
		MOVLP 	8H 			//0D34 	0188
		LDWI 	64H 			//0D35 	0064
		LCALL 	6CAH 			//0D36 	36CA
		BTSC 	28H, 7H 		//0D37 	2BA8
		DECR 	29H, 1H 		//0D38 	13A9
		MOVLP 	15H 			//0D39 	0195
		LCALL 	513H 			//0D3A 	3513
		MOVLP 	8H 			//0D3B 	0188
		LCALL 	647H 			//0D3C 	3647
		MOVLP 	8H 			//0D3D 	0188
		LCALL 	5E9H 			//0D3E 	35E9
		MOVLP 	8H 			//0D3F 	0188
		LCALL 	7E4H 			//0D40 	37E4
		MOVLP 	8H 			//0D41 	0188
		LCALL 	63FH 			//0D42 	363F
		MOVLP 	8H 			//0D43 	0188
		LCALL 	42EH 			//0D44 	342E
		MOVLP 	8H 			//0D45 	0188
		LCALL 	687H 			//0D46 	3687
		MOVLP 	8H 			//0D47 	0188
		LCALL 	677H 			//0D48 	3677
		MOVLP 	8H 			//0D49 	0188
		LCALL 	5FEH 			//0D4A 	35FE
		MOVLP 	8H 			//0D4B 	0188
		LCALL 	67FH 			//0D4C 	367F
		MOVLP 	8H 			//0D4D 	0188
		LCALL 	5E9H 			//0D4E 	35E9
		MOVLP 	8H 			//0D4F 	0188
		LDR 	2FH, 0H 			//0D50 	182F
		LCALL 	7BFH 			//0D51 	37BF
		MOVLP 	8H 			//0D52 	0188
		LCALL 	6E3H 			//0D53 	36E3
		MOVLP 	8H 			//0D54 	0188
		LCALL 	42EH 			//0D55 	342E
		MOVLP 	8H 			//0D56 	0188
		LJUMP 	670H 			//0D57 	3E70
		LCALL 	702H 			//0D58 	3702
		MOVLP 	8H 			//0D59 	0188
		BTSS 	3H, 0H 			//0D5A 	2C03
		LJUMP 	579H 			//0D5B 	3D79
		LCALL 	677H 			//0D5C 	3677
		MOVLP 	8H 			//0D5D 	0188
		LCALL 	5FEH 			//0D5E 	35FE
		MOVLP 	8H 			//0D5F 	0188
		LCALL 	67FH 			//0D60 	367F
		MOVLP 	8H 			//0D61 	0188
		LCALL 	5E9H 			//0D62 	35E9
		MOVLP 	8H 			//0D63 	0188
		LDR 	2FH, 0H 			//0D64 	182F
		LCALL 	7BFH 			//0D65 	37BF
		MOVLP 	8H 			//0D66 	0188
		LDWI 	AH 			//0D67 	000A
		LCALL 	6CAH 			//0D68 	36CA
		BTSC 	28H, 7H 		//0D69 	2BA8
		DECR 	29H, 1H 		//0D6A 	13A9
		MOVLP 	15H 			//0D6B 	0195
		LCALL 	513H 			//0D6C 	3513
		MOVLP 	8H 			//0D6D 	0188
		LCALL 	647H 			//0D6E 	3647
		MOVLP 	8H 			//0D6F 	0188
		LCALL 	5E9H 			//0D70 	35E9
		MOVLP 	8H 			//0D71 	0188
		LCALL 	7D7H 			//0D72 	37D7
		MOVLP 	8H 			//0D73 	0188
		LCALL 	63FH 			//0D74 	363F
		MOVLP 	8H 			//0D75 	0188
		LCALL 	42EH 			//0D76 	342E
		MOVLP 	8H 			//0D77 	0188
		LJUMP 	670H 			//0D78 	3E70
		LCALL 	7DEH 			//0D79 	37DE
		MOVLP 	8H 			//0D7A 	0188
		LCALL 	5E9H 			//0D7B 	35E9
		MOVLP 	8H 			//0D7C 	0188
		LCALL 	7CDH 			//0D7D 	37CD
		MOVLP 	8H 			//0D7E 	0188
		LJUMP 	6DDH 			//0D7F 	3EDD
		LDR 	5CH, 0H 			//0D80 	185C
		XORWI 	80H 			//0D81 	0A80
		ADDWI 	12H 			//0D82 	0E12
		BTSS 	3H, 0H 			//0D83 	2C03
		LJUMP 	5BEH 			//0D84 	3DBE
		LCALL 	6A8H 			//0D85 	36A8
		MOVLP 	8H 			//0D86 	0188
		LCALL 	5FEH 			//0D87 	35FE
		MOVLP 	8H 			//0D88 	0188
		LCALL 	6FDH 			//0D89 	36FD
		MOVLP 	15H 			//0D8A 	0195
		LCALL 	513H 			//0D8B 	3513
		MOVLP 	8H 			//0D8C 	0188
		LCALL 	647H 			//0D8D 	3647
		MOVLP 	8H 			//0D8E 	0188
		LCALL 	5E9H 			//0D8F 	35E9
		MOVLP 	8H 			//0D90 	0188
		LCALL 	6C3H 			//0D91 	36C3
		MOVLP 	8H 			//0D92 	0188
		LCALL 	637H 			//0D93 	3637
		MOVLP 	8H 			//0D94 	0188
		LDWI 	64H 			//0D95 	0064
		LCALL 	6CAH 			//0D96 	36CA
		BTSC 	28H, 7H 		//0D97 	2BA8
		DECR 	29H, 1H 		//0D98 	13A9
		MOVLP 	15H 			//0D99 	0195
		LCALL 	513H 			//0D9A 	3513
		MOVLP 	8H 			//0D9B 	0188
		LCALL 	647H 			//0D9C 	3647
		MOVLP 	8H 			//0D9D 	0188
		LCALL 	5E9H 			//0D9E 	35E9
		MOVLP 	8H 			//0D9F 	0188
		LDR 	2FH, 0H 			//0DA0 	182F
		STR 	5H 			//0DA1 	1085
		LDR 	2EH, 0H 			//0DA2 	182E
		STR 	4H 			//0DA3 	1084
		LDWI 	7BH 			//0DA4 	007B
		ADDWR 	4H, 1H 		//0DA5 	1784
		LDWI 	A0H 			//0DA6 	00A0
		LCALL 	63FH 			//0DA7 	363F
		MOVLP 	8H 			//0DA8 	0188
		LCALL 	42EH 			//0DA9 	342E
		MOVLP 	8H 			//0DAA 	0188
		LCALL 	687H 			//0DAB 	3687
		MOVLP 	8H 			//0DAC 	0188
		LCALL 	677H 			//0DAD 	3677
		MOVLP 	8H 			//0DAE 	0188
		LCALL 	5FEH 			//0DAF 	35FE
		MOVLP 	8H 			//0DB0 	0188
		LCALL 	67FH 			//0DB1 	367F
		MOVLP 	8H 			//0DB2 	0188
		LCALL 	5E9H 			//0DB3 	35E9
		MOVLP 	8H 			//0DB4 	0188
		LCALL 	669H 			//0DB5 	3669
		MOVLP 	8H 			//0DB6 	0188
		LCALL 	637H 			//0DB7 	3637
		MOVLP 	8H 			//0DB8 	0188
		LCALL 	6E3H 			//0DB9 	36E3
		MOVLP 	8H 			//0DBA 	0188
		LCALL 	42EH 			//0DBB 	342E
		MOVLP 	8H 			//0DBC 	0188
		LJUMP 	670H 			//0DBD 	3E70
		LCALL 	702H 			//0DBE 	3702
		MOVLP 	8H 			//0DBF 	0188
		BTSS 	3H, 0H 			//0DC0 	2C03
		LJUMP 	5E0H 			//0DC1 	3DE0
		LCALL 	677H 			//0DC2 	3677
		MOVLP 	8H 			//0DC3 	0188
		LCALL 	5FEH 			//0DC4 	35FE
		MOVLP 	8H 			//0DC5 	0188
		LCALL 	67FH 			//0DC6 	367F
		MOVLP 	8H 			//0DC7 	0188
		LCALL 	5E9H 			//0DC8 	35E9
		MOVLP 	8H 			//0DC9 	0188
		LCALL 	669H 			//0DCA 	3669
		MOVLP 	8H 			//0DCB 	0188
		LCALL 	637H 			//0DCC 	3637
		MOVLP 	8H 			//0DCD 	0188
		LDWI 	AH 			//0DCE 	000A
		LCALL 	6CAH 			//0DCF 	36CA
		BTSC 	28H, 7H 		//0DD0 	2BA8
		DECR 	29H, 1H 		//0DD1 	13A9
		MOVLP 	15H 			//0DD2 	0195
		LCALL 	513H 			//0DD3 	3513
		MOVLP 	8H 			//0DD4 	0188
		LCALL 	647H 			//0DD5 	3647
		MOVLP 	8H 			//0DD6 	0188
		LCALL 	5E9H 			//0DD7 	35E9
		MOVLP 	8H 			//0DD8 	0188
		LCALL 	6C3H 			//0DD9 	36C3
		MOVLP 	8H 			//0DDA 	0188
		LCALL 	63FH 			//0DDB 	363F
		MOVLP 	8H 			//0DDC 	0188
		LCALL 	42EH 			//0DDD 	342E
		MOVLP 	8H 			//0DDE 	0188
		LJUMP 	670H 			//0DDF 	3E70
		LCALL 	7DEH 			//0DE0 	37DE
		MOVLP 	8H 			//0DE1 	0188
		LCALL 	5E9H 			//0DE2 	35E9
		MOVLP 	8H 			//0DE3 	0188
		LCALL 	669H 			//0DE4 	3669
		MOVLP 	8H 			//0DE5 	0188
		ADDWFC 	5H, 1H 		//0DE6 	0D85
		MOVIW 	0H[0] 			//0DE7 	0F00
		LJUMP 	6DDH 			//0DE8 	3EDD
		CLRF 	32H 			//0DE9 	11B2
		CLRF 	33H 			//0DEA 	11B3
		BTSS 	2EH, 0H 		//0DEB 	2C2E
		LJUMP 	5F1H 			//0DEC 	3DF1
		LDR 	30H, 0H 			//0DED 	1830
		ADDWR 	32H, 1H 		//0DEE 	17B2
		LDR 	31H, 0H 			//0DEF 	1831
		ADDWFC 	33H, 1H 		//0DF0 	0DB3
		LSLF 	30H, 1H 		//0DF1 	05B0
		RLR 	31H, 1H 			//0DF2 	1DB1
		LSRF 	2FH, 1H 		//0DF3 	06AF
		RRR 	2EH, 1H 			//0DF4 	1CAE
		LDR 	2EH, 0H 			//0DF5 	182E
		IORWR 	2FH, 0H 		//0DF6 	142F
		BTSS 	3H, 2H 			//0DF7 	2D03
		LJUMP 	5EBH 			//0DF8 	3DEB
		LDR 	33H, 0H 			//0DF9 	1833
		STR 	2FH 			//0DFA 	10AF
		LDR 	32H, 0H 			//0DFB 	1832
		STR 	2EH 			//0DFC 	10AE
		RET 					//0DFD 	1008
		CLRF 	25H 			//0DFE 	11A5
		BTSS 	23H, 7H 		//0DFF 	2FA3
		LJUMP 	608H 			//0E00 	3E08
		COMR 	22H, 1H 		//0E01 	19A2
		COMR 	23H, 1H 		//0E02 	19A3
		INCR 	22H, 1H 		//0E03 	1AA2
		BTSC 	3H, 2H 			//0E04 	2903
		INCR 	23H, 1H 		//0E05 	1AA3
		CLRF 	25H 			//0E06 	11A5
		INCR 	25H, 1H 		//0E07 	1AA5
		BTSS 	21H, 7H 		//0E08 	2FA1
		LJUMP 	60FH 			//0E09 	3E0F
		COMR 	20H, 1H 		//0E0A 	19A0
		COMR 	21H, 1H 		//0E0B 	19A1
		INCR 	20H, 1H 		//0E0C 	1AA0
		BTSC 	3H, 2H 			//0E0D 	2903
		INCR 	21H, 1H 		//0E0E 	1AA1
		LDR 	20H, 0H 			//0E0F 	1820
		IORWR 	21H, 0H 		//0E10 	1421
		BTSC 	3H, 2H 			//0E11 	2903
		LJUMP 	62AH 			//0E12 	3E2A
		CLRF 	24H 			//0E13 	11A4
		INCR 	24H, 1H 		//0E14 	1AA4
		BTSC 	21H, 7H 		//0E15 	2BA1
		LJUMP 	61AH 			//0E16 	3E1A
		LSLF 	20H, 1H 		//0E17 	05A0
		RLR 	21H, 1H 			//0E18 	1DA1
		LJUMP 	614H 			//0E19 	3E14
		LDR 	21H, 0H 			//0E1A 	1821
		SUBWR 	23H, 0H 		//0E1B 	1223
		BTSS 	3H, 2H 			//0E1C 	2D03
		LJUMP 	620H 			//0E1D 	3E20
		LDR 	20H, 0H 			//0E1E 	1820
		SUBWR 	22H, 0H 		//0E1F 	1222
		BTSS 	3H, 0H 			//0E20 	2C03
		LJUMP 	626H 			//0E21 	3E26
		LDR 	20H, 0H 			//0E22 	1820
		SUBWR 	22H, 1H 		//0E23 	12A2
		LDR 	21H, 0H 			//0E24 	1821
		SUBWFB 	23H, 1H 		//0E25 	0BA3
		LSRF 	21H, 1H 		//0E26 	06A1
		RRR 	20H, 1H 			//0E27 	1CA0
		DECRSZ 	24H, 1H 		//0E28 	1BA4
		LJUMP 	61AH 			//0E29 	3E1A
		LDR 	25H, 0H 			//0E2A 	1825
		BTSC 	3H, 2H 			//0E2B 	2903
		LJUMP 	632H 			//0E2C 	3E32
		COMR 	22H, 1H 		//0E2D 	19A2
		COMR 	23H, 1H 		//0E2E 	19A3
		INCR 	22H, 1H 		//0E2F 	1AA2
		BTSC 	3H, 2H 			//0E30 	2903
		INCR 	23H, 1H 		//0E31 	1AA3
		LDR 	23H, 0H 			//0E32 	1823
		STR 	21H 			//0E33 	10A1
		LDR 	22H, 0H 			//0E34 	1822
		STR 	20H 			//0E35 	10A0
		RET 					//0E36 	1008
		ADDWFC 	5H, 1H 		//0E37 	0D85
		MOVIW 	0H[0] 			//0E38 	0F00
		STR 	46H 			//0E39 	10C6
		MOVIW 	1H[0] 			//0E3A 	0F01
		STR 	47H 			//0E3B 	10C7
		MOVIW 	2H[0] 			//0E3C 	0F02
		STR 	48H 			//0E3D 	10C8
		RET 					//0E3E 	1008
		ADDWFC 	5H, 1H 		//0E3F 	0D85
		MOVIW 	0H[0] 			//0E40 	0F00
		STR 	49H 			//0E41 	10C9
		MOVIW 	1H[0] 			//0E42 	0F01
		STR 	4AH 			//0E43 	10CA
		MOVIW 	2H[0] 			//0E44 	0F02
		STR 	4BH 			//0E45 	10CB
		RET 					//0E46 	1008
		LDR 	27H, 0H 			//0E47 	1827
		STR 	2FH 			//0E48 	10AF
		LDR 	26H, 0H 			//0E49 	1826
		STR 	2EH 			//0E4A 	10AE
		LDWI 	3H 			//0E4B 	0003
		STR 	30H 			//0E4C 	10B0
		CLRF 	31H 			//0E4D 	11B1
		RET 					//0E4E 	1008
		LDR 	21H, 0H 			//0E4F 	1821
		MOVLB 	2H 			//0E50 	1022
		STR 	27H 			//0E51 	10A7
		MOVLB 	1H 			//0E52 	1021
		LDR 	20H, 0H 			//0E53 	1820
		MOVLB 	2H 			//0E54 	1022
		STR 	26H 			//0E55 	10A6
		RET 					//0E56 	1008
		MOVLB 	2H 			//0E57 	1022
		STR 	4BH 			//0E58 	10CB
		LDWI 	0H 			//0E59 	0000
		BTSC 	4BH, 7H 		//0E5A 	2BCB
		LDWI 	FFH 			//0E5B 	00FF
		STR 	4CH 			//0E5C 	10CC
		STR 	4DH 			//0E5D 	10CD
		LDR 	4DH, 0H 			//0E5E 	184D
		MOVLB 	0H 			//0E5F 	1020
		SUBWR 	4EH, 0H 		//0E60 	124E
		RET 					//0E61 	1008
		STR 	4BH 			//0E62 	10CB
		LDWI 	0H 			//0E63 	0000
		BTSC 	4BH, 7H 		//0E64 	2BCB
		LDWI 	FFH 			//0E65 	00FF
		STR 	4CH 			//0E66 	10CC
		STR 	4DH 			//0E67 	10CD
		RET 					//0E68 	1008
		LDR 	2FH, 0H 			//0E69 	182F
		STR 	5H 			//0E6A 	1085
		LDR 	2EH, 0H 			//0E6B 	182E
		STR 	4H 			//0E6C 	1084
		LDWI 	45H 			//0E6D 	0045
		ADDWR 	4H, 1H 		//0E6E 	1784
		RETW 	A0H 			//0E6F 	04A0
		LDR 	46H, 0H 			//0E70 	1846
		STR 	55H 			//0E71 	10D5
		LDR 	47H, 0H 			//0E72 	1847
		STR 	56H 			//0E73 	10D6
		LDR 	48H, 0H 			//0E74 	1848
		STR 	57H 			//0E75 	10D7
		RET 					//0E76 	1008
		STR 	22H 			//0E77 	10A2
		CLRF 	23H 			//0E78 	11A3
		BTSC 	22H, 7H 		//0E79 	2BA2
		DECR 	23H, 1H 		//0E7A 	13A3
		LDWI 	AH 			//0E7B 	000A
		STR 	20H 			//0E7C 	10A0
		CLRF 	21H 			//0E7D 	11A1
		RET 					//0E7E 	1008
		LDR 	21H, 0H 			//0E7F 	1821
		STR 	2FH 			//0E80 	10AF
		LDR 	20H, 0H 			//0E81 	1820
		STR 	2EH 			//0E82 	10AE
		LDWI 	3H 			//0E83 	0003
		STR 	30H 			//0E84 	10B0
		CLRF 	31H 			//0E85 	11B1
		RET 					//0E86 	1008
		LDR 	46H, 0H 			//0E87 	1846
		STR 	59H 			//0E88 	10D9
		LDR 	47H, 0H 			//0E89 	1847
		STR 	5AH 			//0E8A 	10DA
		LDR 	48H, 0H 			//0E8B 	1848
		STR 	5BH 			//0E8C 	10DB
		LDR 	5CH, 0H 			//0E8D 	185C
		RET 					//0E8E 	1008
		LDR 	55H, 0H 			//0E8F 	1855
		MOVLB 	3H 			//0E90 	1023
		STR 	39H 			//0E91 	10B9
		MOVLB 	1H 			//0E92 	1021
		LDR 	56H, 0H 			//0E93 	1856
		MOVLB 	3H 			//0E94 	1023
		STR 	3AH 			//0E95 	10BA
		MOVLB 	1H 			//0E96 	1021
		LDR 	57H, 0H 			//0E97 	1857
		MOVLB 	3H 			//0E98 	1023
		STR 	3BH 			//0E99 	10BB
		RET 					//0E9A 	1008
		MOVLB 	2H 			//0E9B 	1022
		LDR 	68H, 0H 			//0E9C 	1868
		MOVLB 	1H 			//0E9D 	1021
		STR 	35H 			//0E9E 	10B5
		MOVLB 	2H 			//0E9F 	1022
		LDR 	69H, 0H 			//0EA0 	1869
		MOVLB 	1H 			//0EA1 	1021
		STR 	36H 			//0EA2 	10B6
		MOVLB 	2H 			//0EA3 	1022
		LDR 	6AH, 0H 			//0EA4 	186A
		MOVLB 	1H 			//0EA5 	1021
		STR 	37H 			//0EA6 	10B7
		RET 					//0EA7 	1008
		LDWI 	AH 			//0EA8 	000A
		STR 	26H 			//0EA9 	10A6
		CLRF 	27H 			//0EAA 	11A7
		LDR 	5CH, 0H 			//0EAB 	185C
		STR 	22H 			//0EAC 	10A2
		CLRF 	23H 			//0EAD 	11A3
		BTSC 	22H, 7H 		//0EAE 	2BA2
		DECR 	23H, 1H 		//0EAF 	13A3
		LDWI 	64H 			//0EB0 	0064
		STR 	20H 			//0EB1 	10A0
		CLRF 	21H 			//0EB2 	11A1
		RET 					//0EB3 	1008
		MOVLB 	1H 			//0EB4 	1021
		LDWI 	80H 			//0EB5 	0080
		CLRF 	55H 			//0EB6 	11D5
		STR 	56H 			//0EB7 	10D6
		LDWI 	45H 			//0EB8 	0045
		STR 	57H 			//0EB9 	10D7
		RET 					//0EBA 	1008
		MOVLB 	2H 			//0EBB 	1022
		ADDWFC 	21H, 0H 		//0EBC 	0D21
		STR 	4BH 			//0EBD 	10CB
		LSRF 	4BH, 1H 		//0EBE 	06CB
		RRR 	4AH, 1H 			//0EBF 	1CCA
		LDR 	4AH, 0H 			//0EC0 	184A
		MOVLB 	0H 			//0EC1 	1020
		RET 					//0EC2 	1008
		LDR 	2FH, 0H 			//0EC3 	182F
		STR 	5H 			//0EC4 	1085
		LDR 	2EH, 0H 			//0EC5 	182E
		STR 	4H 			//0EC6 	1084
		LDWI 	60H 			//0EC7 	0060
		ADDWR 	4H, 1H 		//0EC8 	1784
		RETW 	A0H 			//0EC9 	04A0
		STR 	26H 			//0ECA 	10A6
		CLRF 	27H 			//0ECB 	11A7
		LDR 	5CH, 0H 			//0ECC 	185C
		STR 	28H 			//0ECD 	10A8
		CLRF 	29H 			//0ECE 	11A9
		RET 					//0ECF 	1008
		XORWI 	80H 			//0ED0 	0A80
		MOVLB 	2H 			//0ED1 	1022
		STR 	4AH 			//0ED2 	10CA
		LDWI 	80H 			//0ED3 	0080
		SUBWR 	4AH, 0H 		//0ED4 	124A
		RET 					//0ED5 	1008
		LDR 	49H, 0H 			//0ED6 	1849
		ADDWR 	50H, 1H 		//0ED7 	17D0
		LDR 	4AH, 0H 			//0ED8 	184A
		ADDWFC 	51H, 1H 		//0ED9 	0DD1
		LDR 	4BH, 0H 			//0EDA 	184B
		ADDWFC 	52H, 1H 		//0EDB 	0DD2
		RET 					//0EDC 	1008
		STR 	55H 			//0EDD 	10D5
		MOVIW 	1H[0] 			//0EDE 	0F01
		STR 	56H 			//0EDF 	10D6
		MOVIW 	2H[0] 			//0EE0 	0F02
		STR 	57H 			//0EE1 	10D7
		RET 					//0EE2 	1008
		LDR 	59H, 0H 			//0EE3 	1859
		STR 	49H 			//0EE4 	10C9
		LDR 	5AH, 0H 			//0EE5 	185A
		STR 	4AH 			//0EE6 	10CA
		LDR 	5BH, 0H 			//0EE7 	185B
		STR 	4BH 			//0EE8 	10CB
		RET 					//0EE9 	1008
		MOVLB 	2H 			//0EEA 	1022
		LDR 	4CH, 0H 			//0EEB 	184C
		MOVLB 	0H 			//0EEC 	1020
		SUBWR 	4DH, 0H 		//0EED 	124D
		RET 					//0EEE 	1008
		MOVLB 	2H 			//0EEF 	1022
		LDR 	4AH, 0H 			//0EF0 	184A
		MOVLB 	0H 			//0EF1 	1020
		SUBWR 	4BH, 0H 		//0EF2 	124B
		RET 					//0EF3 	1008
		MOVLB 	2H 			//0EF4 	1022
		LDR 	4BH, 0H 			//0EF5 	184B
		MOVLB 	0H 			//0EF6 	1020
		SUBWR 	4CH, 0H 		//0EF7 	124C
		RET 					//0EF8 	1008
		CLRF 	46H 			//0EF9 	11C6
		CLRF 	47H 			//0EFA 	11C7
		CLRF 	48H 			//0EFB 	11C8
		RET 					//0EFC 	1008
		LDR 	21H, 0H 			//0EFD 	1821
		STR 	29H 			//0EFE 	10A9
		LDR 	20H, 0H 			//0EFF 	1820
		STR 	28H 			//0F00 	10A8
		RET 					//0F01 	1008
		LDR 	5CH, 0H 			//0F02 	185C
		XORWI 	80H 			//0F03 	0A80
		ADDWI 	75H 			//0F04 	0E75
		LDR 	5CH, 0H 			//0F05 	185C
		RET 					//0F06 	1008
		MOVLB 	1H 			//0F07 	1021
		STR 	5FH 			//0F08 	10DF
		LDWI 	6EH 			//0F09 	006E
		SUBWR 	5FH, 0H 		//0F0A 	125F
		BTSS 	3H, 0H 			//0F0B 	2C03
		LJUMP 	752H 			//0F0C 	3F52
		LDWI 	AH 			//0F0D 	000A
		STR 	25H 			//0F0E 	10A5
		LDWI 	64H 			//0F0F 	0064
		STR 	20H 			//0F10 	10A0
		LDR 	5FH, 0H 			//0F11 	185F
		LCALL 	7A7H 			//0F12 	37A7
		MOVLP 	8H 			//0F13 	0188
		LCALL 	78FH 			//0F14 	378F
		MOVLP 	8H 			//0F15 	0188
		LCALL 	7DEH 			//0F16 	37DE
		MOVLP 	8H 			//0F17 	0188
		LCALL 	5E9H 			//0F18 	35E9
		MOVLP 	8H 			//0F19 	0188
		LCALL 	7D7H 			//0F1A 	37D7
		MOVLP 	8H 			//0F1B 	0188
		LCALL 	637H 			//0F1C 	3637
		MOVLP 	8H 			//0F1D 	0188
		LDWI 	64H 			//0F1E 	0064
		STR 	25H 			//0F1F 	10A5
		LDR 	5FH, 0H 			//0F20 	185F
		LCALL 	78FH 			//0F21 	378F
		MOVLP 	8H 			//0F22 	0188
		LCALL 	7DEH 			//0F23 	37DE
		MOVLP 	8H 			//0F24 	0188
		LCALL 	5E9H 			//0F25 	35E9
		MOVLP 	8H 			//0F26 	0188
		LCALL 	7E4H 			//0F27 	37E4
		MOVLP 	8H 			//0F28 	0188
		LCALL 	63FH 			//0F29 	363F
		MOVLP 	8H 			//0F2A 	0188
		LCALL 	42EH 			//0F2B 	342E
		MOVLP 	8H 			//0F2C 	0188
		LCALL 	7F2H 			//0F2D 	37F2
		MOVLP 	8H 			//0F2E 	0188
		LDWI 	AH 			//0F2F 	000A
		STR 	20H 			//0F30 	10A0
		LDR 	5FH, 0H 			//0F31 	185F
		LCALL 	7A7H 			//0F32 	37A7
		MOVLP 	8H 			//0F33 	0188
		LCALL 	7DEH 			//0F34 	37DE
		MOVLP 	8H 			//0F35 	0188
		LCALL 	5E9H 			//0F36 	35E9
		MOVLP 	8H 			//0F37 	0188
		LDR 	2FH, 0H 			//0F38 	182F
		LCALL 	7BFH 			//0F39 	37BF
		MOVLP 	8H 			//0F3A 	0188
		LCALL 	7F9H 			//0F3B 	37F9
		MOVLP 	8H 			//0F3C 	0188
		LCALL 	42EH 			//0F3D 	342E
		MOVLP 	8H 			//0F3E 	0188
		LDR 	46H, 0H 			//0F3F 	1846
		STR 	59H 			//0F40 	10D9
		LDR 	47H, 0H 			//0F41 	1847
		STR 	5AH 			//0F42 	10DA
		LDR 	48H, 0H 			//0F43 	1848
		STR 	5BH 			//0F44 	10DB
		LDWI 	3FH 			//0F45 	003F
		CLRF 	46H 			//0F46 	11C6
		CLRF 	47H 			//0F47 	11C7
		STR 	48H 			//0F48 	10C8
		LDR 	59H, 0H 			//0F49 	1859
		STR 	49H 			//0F4A 	10C9
		LDR 	5AH, 0H 			//0F4B 	185A
		STR 	4AH 			//0F4C 	10CA
		LDR 	5BH, 0H 			//0F4D 	185B
		STR 	4BH 			//0F4E 	10CB
		LCALL 	42EH 			//0F4F 	342E
		MOVLP 	8H 			//0F50 	0188
		LJUMP 	7EBH 			//0F51 	3FEB
		LDWI 	BH 			//0F52 	000B
		SUBWR 	5FH, 0H 		//0F53 	125F
		BTSS 	3H, 0H 			//0F54 	2C03
		LJUMP 	77CH 			//0F55 	3F7C
		LDWI 	AH 			//0F56 	000A
		STR 	20H 			//0F57 	10A0
		LDR 	5FH, 0H 			//0F58 	185F
		LCALL 	7A7H 			//0F59 	37A7
		MOVLP 	8H 			//0F5A 	0188
		LCALL 	7DEH 			//0F5B 	37DE
		MOVLP 	8H 			//0F5C 	0188
		LCALL 	5E9H 			//0F5D 	35E9
		MOVLP 	8H 			//0F5E 	0188
		LDR 	2FH, 0H 			//0F5F 	182F
		LCALL 	7BFH 			//0F60 	37BF
		MOVLP 	8H 			//0F61 	0188
		LDWI 	AH 			//0F62 	000A
		STR 	25H 			//0F63 	10A5
		LDR 	5FH, 0H 			//0F64 	185F
		LCALL 	78FH 			//0F65 	378F
		MOVLP 	8H 			//0F66 	0188
		LCALL 	7DEH 			//0F67 	37DE
		MOVLP 	8H 			//0F68 	0188
		LCALL 	5E9H 			//0F69 	35E9
		MOVLP 	8H 			//0F6A 	0188
		LCALL 	7D7H 			//0F6B 	37D7
		MOVLP 	8H 			//0F6C 	0188
		LCALL 	63FH 			//0F6D 	363F
		MOVLP 	8H 			//0F6E 	0188
		LCALL 	42EH 			//0F6F 	342E
		MOVLP 	8H 			//0F70 	0188
		LCALL 	7F2H 			//0F71 	37F2
		MOVLP 	8H 			//0F72 	0188
		LDWI 	3FH 			//0F73 	003F
		CLRF 	46H 			//0F74 	11C6
		CLRF 	47H 			//0F75 	11C7
		STR 	48H 			//0F76 	10C8
		LCALL 	7F9H 			//0F77 	37F9
		MOVLP 	8H 			//0F78 	0188
		LCALL 	42EH 			//0F79 	342E
		MOVLP 	8H 			//0F7A 	0188
		LJUMP 	7EBH 			//0F7B 	3FEB
		LDWI 	3FH 			//0F7C 	003F
		CLRF 	46H 			//0F7D 	11C6
		CLRF 	47H 			//0F7E 	11C7
		STR 	48H 			//0F7F 	10C8
		LDR 	5FH, 0H 			//0F80 	185F
		LCALL 	7DEH 			//0F81 	37DE
		MOVLP 	8H 			//0F82 	0188
		LCALL 	5E9H 			//0F83 	35E9
		MOVLP 	8H 			//0F84 	0188
		LCALL 	7CDH 			//0F85 	37CD
		MOVLP 	8H 			//0F86 	0188
		STR 	49H 			//0F87 	10C9
		MOVIW 	1H[0] 			//0F88 	0F01
		STR 	4AH 			//0F89 	10CA
		MOVIW 	2H[0] 			//0F8A 	0F02
		STR 	4BH 			//0F8B 	10CB
		LCALL 	42EH 			//0F8C 	342E
		MOVLP 	8H 			//0F8D 	0188
		LJUMP 	7EBH 			//0F8E 	3FEB
		STR 	26H 			//0F8F 	10A6
		CLRF 	28H 			//0F90 	11A8
		LDR 	25H, 0H 			//0F91 	1825
		BTSC 	3H, 2H 			//0F92 	2903
		LJUMP 	7A5H 			//0F93 	3FA5
		CLRF 	27H 			//0F94 	11A7
		INCR 	27H, 1H 		//0F95 	1AA7
		BTSC 	25H, 7H 		//0F96 	2BA5
		LJUMP 	79AH 			//0F97 	3F9A
		LSLF 	25H, 1H 		//0F98 	05A5
		LJUMP 	795H 			//0F99 	3F95
		LSLF 	28H, 1H 		//0F9A 	05A8
		LDR 	25H, 0H 			//0F9B 	1825
		SUBWR 	26H, 0H 		//0F9C 	1226
		BTSS 	3H, 0H 			//0F9D 	2C03
		LJUMP 	7A2H 			//0F9E 	3FA2
		LDR 	25H, 0H 			//0F9F 	1825
		SUBWR 	26H, 1H 		//0FA0 	12A6
		BSR 	28H, 0H 			//0FA1 	2428
		LSRF 	25H, 1H 		//0FA2 	06A5
		DECRSZ 	27H, 1H 		//0FA3 	1BA7
		LJUMP 	79AH 			//0FA4 	3F9A
		LDR 	28H, 0H 			//0FA5 	1828
		RET 					//0FA6 	1008
		STR 	22H 			//0FA7 	10A2
		LDWI 	8H 			//0FA8 	0008
		STR 	23H 			//0FA9 	10A3
		CLRF 	24H 			//0FAA 	11A4
		LDR 	22H, 0H 			//0FAB 	1822
		STR 	21H 			//0FAC 	10A1
		LDWI 	7H 			//0FAD 	0007
		LSRF 	21H, 1H 		//0FAE 	06A1
		DECRSZ 	9H, 1H 		//0FAF 	1B89
		LJUMP 	7AEH 			//0FB0 	3FAE
		LSLF 	24H, 0H 		//0FB1 	0524
		IORWR 	21H, 0H 		//0FB2 	1421
		STR 	24H 			//0FB3 	10A4
		LSLF 	22H, 1H 		//0FB4 	05A2
		LDR 	20H, 0H 			//0FB5 	1820
		SUBWR 	24H, 0H 		//0FB6 	1224
		BTSS 	3H, 0H 			//0FB7 	2C03
		LJUMP 	7BBH 			//0FB8 	3FBB
		LDR 	20H, 0H 			//0FB9 	1820
		SUBWR 	24H, 1H 		//0FBA 	12A4
		DECRSZ 	23H, 1H 		//0FBB 	1BA3
		LJUMP 	7ABH 			//0FBC 	3FAB
		LDR 	24H, 0H 			//0FBD 	1824
		RET 					//0FBE 	1008
		STR 	5H 			//0FBF 	1085
		LDR 	2EH, 0H 			//0FC0 	182E
		STR 	4H 			//0FC1 	1084
		LDWI 	6CH 			//0FC2 	006C
		ADDWR 	4H, 1H 		//0FC3 	1784
		LDWI 	A0H 			//0FC4 	00A0
		ADDWFC 	5H, 1H 		//0FC5 	0D85
		MOVIW 	0H[0] 			//0FC6 	0F00
		STR 	46H 			//0FC7 	10C6
		MOVIW 	1H[0] 			//0FC8 	0F01
		STR 	47H 			//0FC9 	10C7
		MOVIW 	2H[0] 			//0FCA 	0F02
		STR 	48H 			//0FCB 	10C8
		RET 					//0FCC 	1008
		LDR 	2FH, 0H 			//0FCD 	182F
		STR 	5H 			//0FCE 	1085
		LDR 	2EH, 0H 			//0FCF 	182E
		STR 	4H 			//0FD0 	1084
		LDWI 	6CH 			//0FD1 	006C
		ADDWR 	4H, 1H 		//0FD2 	1784
		LDWI 	A0H 			//0FD3 	00A0
		ADDWFC 	5H, 1H 		//0FD4 	0D85
		MOVIW 	0H[0] 			//0FD5 	0F00
		RET 					//0FD6 	1008
		LDR 	2FH, 0H 			//0FD7 	182F
		STR 	5H 			//0FD8 	1085
		LDR 	2EH, 0H 			//0FD9 	182E
		STR 	4H 			//0FDA 	1084
		LDWI 	87H 			//0FDB 	0087
		ADDWR 	4H, 1H 		//0FDC 	1784
		RETW 	A0H 			//0FDD 	04A0
		STR 	2EH 			//0FDE 	10AE
		LDWI 	3H 			//0FDF 	0003
		CLRF 	2FH 			//0FE0 	11AF
		STR 	30H 			//0FE1 	10B0
		CLRF 	31H 			//0FE2 	11B1
		RET 					//0FE3 	1008
		LDR 	2FH, 0H 			//0FE4 	182F
		STR 	5H 			//0FE5 	1085
		LDR 	2EH, 0H 			//0FE6 	182E
		STR 	4H 			//0FE7 	1084
		LDWI 	A2H 			//0FE8 	00A2
		ADDWR 	4H, 1H 		//0FE9 	1784
		RETW 	A0H 			//0FEA 	04A0
		LDR 	46H, 0H 			//0FEB 	1846
		STR 	55H 			//0FEC 	10D5
		LDR 	47H, 0H 			//0FED 	1847
		STR 	56H 			//0FEE 	10D6
		LDR 	48H, 0H 			//0FEF 	1848
		STR 	57H 			//0FF0 	10D7
		RET 					//0FF1 	1008
		LDR 	46H, 0H 			//0FF2 	1846
		STR 	5CH 			//0FF3 	10DC
		LDR 	47H, 0H 			//0FF4 	1847
		STR 	5DH 			//0FF5 	10DD
		LDR 	48H, 0H 			//0FF6 	1848
		STR 	5EH 			//0FF7 	10DE
		RET 					//0FF8 	1008
		LDR 	5CH, 0H 			//0FF9 	185C
		STR 	49H 			//0FFA 	10C9
		LDR 	5DH, 0H 			//0FFB 	185D
		STR 	4AH 			//0FFC 	10CA
		LDR 	5EH, 0H 			//0FFD 	185E
		STR 	4BH 			//0FFE 	10CB
		RET 					//0FFF 	1008
		ORG		1065H

		//;NFB.C: 611: send((char*)"H0\r\n",4);
		LCALL 	792H 			//1065 	3792
		MOVLP 	10H 			//1066 	0190
		LCALL 	78DH 			//1067 	378D
		MOVLP 	10H 			//1068 	0190
		LCALL 	3B7H 			//1069 	33B7
		MOVLP 	10H 			//106A 	0190

		//;NFB.C: 612: HTOn = 0;
		//;NFB.C: 613: HTtimer = 0;
		//;NFB.C: 614: PA0 = 0;
		LCALL 	7DCH 			//106B 	37DC
		MOVLP 	10H 			//106C 	0190
		BCR 	CH, 0H 			//106D 	200C

		//;NFB.C: 615: send((char*)"S0\r\n",4);
		LCALL 	796H 			//106E 	3796
		MOVLP 	10H 			//106F 	0190
		LCALL 	78DH 			//1070 	378D
		MOVLP 	10H 			//1071 	0190
		LCALL 	3B7H 			//1072 	33B7
		MOVLP 	10H 			//1073 	0190

		//;NFB.C: 616: SmokeOn = 0;
		//;NFB.C: 617: Smoketimer = 0;
		//;NFB.C: 618: PuffOn = 0;
		LCALL 	7C7H 			//1074 	37C7
		MOVLP 	10H 			//1075 	0190
		LDWI 	E4H 			//1076 	00E4
		CLRF 	64H 			//1077 	11E4
		CLRF 	65H 			//1078 	11E5

		//;NFB.C: 619: send((char*)"P0\r\n",4);
		MOVLB 	2H 			//1079 	1022
		STR 	24H 			//107A 	10A4
		LDWI 	A0H 			//107B 	00A0
		LCALL 	78DH 			//107C 	378D
		MOVLP 	10H 			//107D 	0190
		LCALL 	3B7H 			//107E 	33B7
		MOVLP 	10H 			//107F 	0190

		//;NFB.C: 620: PC1=1;
		MOVLB 	0H 			//1080 	1020
		BSR 	EH, 1H 			//1081 	248E

		//;NFB.C: 621: PB0 = 1;
		BSR 	DH, 0H 			//1082 	240D

		//;NFB.C: 622: DelayMs(500);
		LCALL 	75BH 			//1083 	375B
		MOVLP 	10H 			//1084 	0190
		LCALL 	4A3H 			//1085 	34A3

		//;NFB.C: 623: PB0 = 0;
		MOVLB 	0H 			//1086 	1020
		BCR 	DH, 0H 			//1087 	200D

		//;NFB.C: 624: PA1=1;
		BSR 	CH, 1H 			//1088 	248C

		//;NFB.C: 625: PB2=1;
		BSR 	DH, 2H 			//1089 	250D

		//;NFB.C: 626: PB3=1;
		BSR 	DH, 3H 			//108A 	258D
		RET 					//108B 	1008

		//;NFB.C: 631: if(PA0){
		MOVLB 	0H 			//108C 	1020
		BTSS 	CH, 0H 			//108D 	2C0C
		LJUMP 	186H 			//108E 	3986

		//;NFB.C: 632: HTVP_ = GET_ADC_DATA(2);
		LDWI 	2H 			//108F 	0002
		MOVLP 	CH 			//1090 	018C
		LCALL 	411H 			//1091 	3411
		MOVLP 	10H 			//1092 	0190

		//;NFB.C: 633: for(int i=0;i<4;i++){
		LCALL 	79AH 			//1093 	379A
		CLRF 	3DH 			//1094 	11BD
		CLRF 	3EH 			//1095 	11BE

		//;NFB.C: 634: HTVP_ = (HTVP_+GET_ADC_DATA(2))/2;
		LDWI 	2H 			//1096 	0002
		MOVLP 	CH 			//1097 	018C
		LCALL 	411H 			//1098 	3411
		MOVLP 	10H 			//1099 	0190
		MOVLB 	0H 			//109A 	1020
		LDR 	6EH, 0H 			//109B 	186E
		MOVLB 	2H 			//109C 	1022
		ADDWR 	20H, 0H 		//109D 	1720
		STR 	4AH 			//109E 	10CA
		MOVLB 	0H 			//109F 	1020
		LDR 	6FH, 0H 			//10A0 	186F
		LCALL 	774H 			//10A1 	3774
		MOVLP 	10H 			//10A2 	0190
		STR 	6EH 			//10A3 	10EE
		MOVLB 	2H 			//10A4 	1022
		LDR 	4BH, 0H 			//10A5 	184B
		MOVLB 	0H 			//10A6 	1020
		STR 	6FH 			//10A7 	10EF
		MOVLB 	3H 			//10A8 	1023
		INCR 	3DH, 1H 		//10A9 	1ABD
		BTSC 	3H, 2H 			//10AA 	2903
		INCR 	3EH, 1H 		//10AB 	1ABE
		LDR 	3EH, 0H 			//10AC 	183E
		LCALL 	7C1H 			//10AD 	37C1
		MOVLP 	10H 			//10AE 	0190
		BTSS 	3H, 2H 			//10AF 	2D03
		LJUMP 	B4H 			//10B0 	38B4
		LDWI 	4H 			//10B1 	0004
		MOVLB 	3H 			//10B2 	1023
		SUBWR 	3DH, 0H 		//10B3 	123D
		BTSS 	3H, 0H 			//10B4 	2C03
		LJUMP 	96H 			//10B5 	3896

		//;NFB.C: 635: }
		//;NFB.C: 636: HTVN_ = GET_ADC_DATA(1);
		LDWI 	1H 			//10B6 	0001
		MOVLP 	CH 			//10B7 	018C
		LCALL 	411H 			//10B8 	3411
		MOVLP 	10H 			//10B9 	0190

		//;NFB.C: 637: for(int i=0;i<4;i++){
		LCALL 	7B0H 			//10BA 	37B0
		CLRF 	3FH 			//10BB 	11BF
		CLRF 	40H 			//10BC 	11C0

		//;NFB.C: 638: HTVN_ = (HTVN_+GET_ADC_DATA(1))/2;
		LDWI 	1H 			//10BD 	0001
		MOVLP 	CH 			//10BE 	018C
		LCALL 	411H 			//10BF 	3411
		MOVLP 	10H 			//10C0 	0190
		MOVLB 	0H 			//10C1 	1020
		LDR 	6CH, 0H 			//10C2 	186C
		MOVLB 	2H 			//10C3 	1022
		ADDWR 	20H, 0H 		//10C4 	1720
		STR 	4AH 			//10C5 	10CA
		MOVLB 	0H 			//10C6 	1020
		LDR 	6DH, 0H 			//10C7 	186D
		LCALL 	774H 			//10C8 	3774
		MOVLP 	10H 			//10C9 	0190
		STR 	6CH 			//10CA 	10EC
		MOVLB 	2H 			//10CB 	1022
		LDR 	4BH, 0H 			//10CC 	184B
		MOVLB 	0H 			//10CD 	1020
		STR 	6DH 			//10CE 	10ED
		MOVLB 	3H 			//10CF 	1023
		INCR 	3FH, 1H 		//10D0 	1ABF
		BTSC 	3H, 2H 			//10D1 	2903
		INCR 	40H, 1H 		//10D2 	1AC0
		LDR 	40H, 0H 			//10D3 	1840
		LCALL 	7C1H 			//10D4 	37C1
		MOVLP 	10H 			//10D5 	0190
		BTSS 	3H, 2H 			//10D6 	2D03
		LJUMP 	DBH 			//10D7 	38DB
		LDWI 	4H 			//10D8 	0004
		MOVLB 	3H 			//10D9 	1023
		SUBWR 	3FH, 0H 		//10DA 	123F
		BTSS 	3H, 0H 			//10DB 	2C03
		LJUMP 	BDH 			//10DC 	38BD

		//;NFB.C: 639: }
		//;NFB.C: 640: HTVI_ = GET_ADC_DATA(4);
		LDWI 	4H 			//10DD 	0004
		MOVLP 	CH 			//10DE 	018C
		LCALL 	411H 			//10DF 	3411
		MOVLP 	10H 			//10E0 	0190

		//;NFB.C: 641: for(int i=0;i<4;i++){
		LCALL 	7A7H 			//10E1 	37A7
		CLRF 	41H 			//10E2 	11C1
		CLRF 	42H 			//10E3 	11C2

		//;NFB.C: 642: HTVI_ = (HTVI_+GET_ADC_DATA(4))/2;
		LDWI 	4H 			//10E4 	0004
		MOVLP 	CH 			//10E5 	018C
		LCALL 	411H 			//10E6 	3411
		MOVLP 	10H 			//10E7 	0190
		MOVLB 	0H 			//10E8 	1020
		LDR 	6AH, 0H 			//10E9 	186A
		MOVLB 	2H 			//10EA 	1022
		ADDWR 	20H, 0H 		//10EB 	1720
		STR 	4AH 			//10EC 	10CA
		MOVLB 	0H 			//10ED 	1020
		LDR 	6BH, 0H 			//10EE 	186B
		LCALL 	774H 			//10EF 	3774
		MOVLP 	10H 			//10F0 	0190
		STR 	6AH 			//10F1 	10EA
		MOVLB 	2H 			//10F2 	1022
		LDR 	4BH, 0H 			//10F3 	184B
		MOVLB 	0H 			//10F4 	1020
		STR 	6BH 			//10F5 	10EB
		MOVLB 	3H 			//10F6 	1023
		INCR 	41H, 1H 		//10F7 	1AC1
		BTSC 	3H, 2H 			//10F8 	2903
		INCR 	42H, 1H 		//10F9 	1AC2
		LDR 	42H, 0H 			//10FA 	1842
		LCALL 	7C1H 			//10FB 	37C1
		MOVLP 	10H 			//10FC 	0190
		BTSS 	3H, 2H 			//10FD 	2D03
		LJUMP 	102H 			//10FE 	3902
		LDWI 	4H 			//10FF 	0004
		MOVLB 	3H 			//1100 	1023
		SUBWR 	41H, 0H 		//1101 	1241
		BTSS 	3H, 0H 			//1102 	2C03
		LJUMP 	E4H 			//1103 	38E4

		//;NFB.C: 643: }
		//;NFB.C: 644: HTVP = (float)HTVP_*2/4096;
		MOVLP 	EH 			//1104 	018E
		LCALL 	6B4H 			//1105 	36B4
		MOVLP 	10H 			//1106 	0190
		LCALL 	72AH 			//1107 	372A
		MOVLP 	CH 			//1108 	018C
		LCALL 	48AH 			//1109 	348A
		MOVLP 	10H 			//110A 	0190
		LCALL 	707H 			//110B 	3707
		MOVLP 	CH 			//110C 	018C
		LCALL 	42EH 			//110D 	342E
		MOVLP 	10H 			//110E 	0190
		LCALL 	6DBH 			//110F 	36DB
		MOVLP 	10H 			//1110 	0190
		LCALL 	35AH 			//1111 	335A
		MOVLP 	10H 			//1112 	0190

		//;NFB.C: 645: HTVN = (float)HTVN_*2/4096;
		LCALL 	69FH 			//1113 	369F
		MOVLP 	CH 			//1114 	018C
		LCALL 	48AH 			//1115 	348A
		MOVLP 	10H 			//1116 	0190
		LCALL 	707H 			//1117 	3707
		MOVLP 	CH 			//1118 	018C
		LCALL 	42EH 			//1119 	342E
		MOVLP 	10H 			//111A 	0190
		LCALL 	6DBH 			//111B 	36DB
		MOVLP 	10H 			//111C 	0190
		LCALL 	35AH 			//111D 	335A
		MOVLP 	10H 			//111E 	0190

		//;NFB.C: 646: HTVI = (float)HTVI_*2/4096;
		LCALL 	6BDH 			//111F 	36BD
		MOVLP 	CH 			//1120 	018C
		LCALL 	48AH 			//1121 	348A
		MOVLP 	10H 			//1122 	0190
		LCALL 	707H 			//1123 	3707
		MOVLP 	CH 			//1124 	018C
		LCALL 	42EH 			//1125 	342E
		MOVLP 	10H 			//1126 	0190
		LCALL 	6DBH 			//1127 	36DB
		MOVLP 	10H 			//1128 	0190
		LCALL 	35AH 			//1129 	335A
		MOVLP 	10H 			//112A 	0190

		//;NFB.C: 647: I = HTVI/0.01/39;
		LCALL 	661H 			//112B 	3661
		MOVLP 	10H 			//112C 	0190
		LCALL 	35AH 			//112D 	335A
		MOVLP 	10H 			//112E 	0190
		LCALL 	737H 			//112F 	3737
		MOVLP 	10H 			//1130 	0190

		//;NFB.C: 647: I = HTVI/0.01/39;
		LCALL 	7B9H 			//1131 	37B9
		MOVLP 	10H 			//1132 	0190
		LDR 	37H, 0H 			//1133 	1837
		MOVLB 	1H 			//1134 	1021
		STR 	58H 			//1135 	10D8
		MOVLB 	3H 			//1136 	1023
		LDR 	38H, 0H 			//1137 	1838
		MOVLB 	1H 			//1138 	1021
		STR 	59H 			//1139 	10D9
		MOVLB 	3H 			//113A 	1023
		LDR 	39H, 0H 			//113B 	1839
		MOVLB 	1H 			//113C 	1021
		STR 	5AH 			//113D 	10DA
		LCALL 	35AH 			//113E 	335A
		MOVLP 	10H 			//113F 	0190

		//;NFB.C: 648: V = (HTVP-HTVN)*2;
		LCALL 	5C6H 			//1140 	35C6
		MOVLP 	10H 			//1141 	0190
		LCALL 	3DAH 			//1142 	33DA
		MOVLP 	10H 			//1143 	0190
		LCALL 	7CEH 			//1144 	37CE
		MOVLP 	CH 			//1145 	018C
		LCALL 	42EH 			//1146 	342E
		MOVLP 	10H 			//1147 	0190

		//;NFB.C: 649: R = V/I;
		LCALL 	613H 			//1148 	3613
		MOVLP 	10H 			//1149 	0190
		LCALL 	35AH 			//114A 	335A
		MOVLP 	10H 			//114B 	0190

		//;NFB.C: 650: T = (((R/R0)-1)/(T0/1000000))+Tr;
		LCALL 	642H 			//114C 	3642
		MOVLP 	10H 			//114D 	0190
		LCALL 	35AH 			//114E 	335A
		MOVLP 	10H 			//114F 	0190
		LCALL 	737H 			//1150 	3737
		MOVLP 	10H 			//1151 	0190

		//;NFB.C: 650: T = (((R/R0)-1)/(T0/1000000))+Tr;
		LCALL 	680H 			//1152 	3680
		MOVLP 	10H 			//1153 	0190
		LCALL 	35AH 			//1154 	335A
		MOVLP 	10H 			//1155 	0190
		LCALL 	76DH 			//1156 	376D
		MOVLP 	10H 			//1157 	0190
		LCALL 	3F5H 			//1158 	33F5
		MOVLP 	10H 			//1159 	0190
		LDR 	34H, 0H 			//115A 	1834
		MOVLB 	3H 			//115B 	1023
		STR 	20H 			//115C 	10A0
		MOVLB 	1H 			//115D 	1021
		LDR 	35H, 0H 			//115E 	1835
		MOVLB 	3H 			//115F 	1023
		STR 	21H 			//1160 	10A1
		MOVLB 	1H 			//1161 	1021
		LDR 	36H, 0H 			//1162 	1836
		MOVLB 	3H 			//1163 	1023
		STR 	22H 			//1164 	10A2

		//;NFB.C: 650: T = (((R/R0)-1)/(T0/1000000))+Tr;
		LCALL 	71CH 			//1165 	371C
		MOVLP 	10H 			//1166 	0190
		LDR 	37H, 0H 			//1167 	1837
		MOVLB 	1H 			//1168 	1021
		STR 	55H 			//1169 	10D5
		MOVLB 	3H 			//116A 	1023
		LDR 	38H, 0H 			//116B 	1838
		MOVLB 	1H 			//116C 	1021
		STR 	56H 			//116D 	10D6
		MOVLB 	3H 			//116E 	1023
		LDR 	39H, 0H 			//116F 	1839
		MOVLB 	1H 			//1170 	1021
		STR 	57H 			//1171 	10D7
		MOVLB 	3H 			//1172 	1023
		LDR 	20H, 0H 			//1173 	1820
		MOVLB 	1H 			//1174 	1021
		STR 	58H 			//1175 	10D8
		MOVLB 	3H 			//1176 	1023
		LDR 	21H, 0H 			//1177 	1821
		MOVLB 	1H 			//1178 	1021
		STR 	59H 			//1179 	10D9
		MOVLB 	3H 			//117A 	1023
		LDR 	22H, 0H 			//117B 	1822
		MOVLB 	1H 			//117C 	1021
		STR 	5AH 			//117D 	10DA
		LCALL 	35AH 			//117E 	335A
		MOVLP 	10H 			//117F 	0190
		LCALL 	76DH 			//1180 	376D
		MOVLP 	10H 			//1181 	0190
		LCALL 	3F5H 			//1182 	33F5
		MOVLP 	10H 			//1183 	0190
		LCALL 	743H 			//1184 	3743
		MOVLP 	10H 			//1185 	0190

		//;NFB.C: 651: }
		//;NFB.C: 652: if(HTtimecnt>=timeleft){
		MOVLB 	5H 			//1186 	1025
		LDR 	47H, 0H 			//1187 	1847
		MOVLB 	2H 			//1188 	1022
		STR 	4AH 			//1189 	10CA
		MOVLB 	5H 			//118A 	1025
		LDR 	48H, 0H 			//118B 	1848
		LCALL 	77CH 			//118C 	377C
		MOVLP 	10H 			//118D 	0190
		BTSS 	3H, 2H 			//118E 	2D03
		LJUMP 	19AH 			//118F 	399A
		LDR 	4CH, 0H 			//1190 	184C
		SUBWR 	63H, 0H 		//1191 	1263
		BTSS 	3H, 2H 			//1192 	2D03
		LJUMP 	19AH 			//1193 	399A
		LDR 	4BH, 0H 			//1194 	184B
		SUBWR 	62H, 0H 		//1195 	1262
		BTSS 	3H, 2H 			//1196 	2D03
		LJUMP 	19AH 			//1197 	399A
		LDR 	4AH, 0H 			//1198 	184A
		SUBWR 	61H, 0H 		//1199 	1261
		BTSS 	3H, 0H 			//119A 	2C03
		LJUMP 	1BDH 			//119B 	39BD

		//;NFB.C: 653: PC1 = ~PC1;
		LDWI 	2H 			//119C 	0002
		MOVLB 	0H 			//119D 	1020
		XORWR 	EH, 1H 		//119E 	168E

		//;NFB.C: 654: char msg[10];
		//;NFB.C: 655: sprintf(msg,"T:%0.1f\r\n",T);
		LDWI 	A3H 			//119F 	00A3
		MOVLB 	2H 			//11A0 	1022
		STR 	20H 			//11A1 	10A0
		LDWI 	1H 			//11A2 	0001
		LCALL 	761H 			//11A3 	3761
		MOVLP 	19H 			//11A4 	0199
		LCALL 	12FH 			//11A5 	312F
		MOVLP 	10H 			//11A6 	0190

		//;NFB.C: 656: send(msg,strlen(msg));
		LDWI 	A3H 			//11A7 	00A3
		STR 	24H 			//11A8 	10A4
		LDWI 	1H 			//11A9 	0001
		STR 	25H 			//11AA 	10A5
		LDWI 	A3H 			//11AB 	00A3
		MOVLB 	1H 			//11AC 	1021
		STR 	20H 			//11AD 	10A0
		LDWI 	1H 			//11AE 	0001
		STR 	21H 			//11AF 	10A1
		MOVLP 	CH 			//11B0 	018C
		LCALL 	4C6H 			//11B1 	34C6
		MOVLP 	10H 			//11B2 	0190
		MOVLP 	EH 			//11B3 	018E
		LCALL 	64FH 			//11B4 	364F
		MOVLP 	10H 			//11B5 	0190
		LCALL 	3B7H 			//11B6 	33B7
		MOVLP 	10H 			//11B7 	0190

		//;NFB.C: 657: timeleft += 20;
		LDWI 	14H 			//11B8 	0014
		MOVLB 	5H 			//11B9 	1025
		ADDWR 	47H, 1H 		//11BA 	17C7
		BTSC 	3H, 0H 			//11BB 	2803
		INCR 	48H, 1H 		//11BC 	1AC8

		//;NFB.C: 658: }
		//;NFB.C: 659: if(t1>=30){
		LCALL 	7E3H 			//11BD 	37E3
		MOVLP 	10H 			//11BE 	0190
		BTSS 	3H, 2H 			//11BF 	2D03
		LJUMP 	1C3H 			//11C0 	39C3
		LDWI 	1EH 			//11C1 	001E
		SUBWR 	6EH, 0H 		//11C2 	126E
		BTSS 	3H, 0H 			//11C3 	2C03
		LJUMP 	25CH 			//11C4 	3A5C

		//;NFB.C: 660: if(HTtimecnt==20){
		LDWI 	14H 			//11C5 	0014
		LCALL 	7EAH 			//11C6 	37EA
		MOVLP 	10H 			//11C7 	0190
		BTSS 	3H, 2H 			//11C8 	2D03
		LJUMP 	1DDH 			//11C9 	39DD

		//;NFB.C: 661: Toffset = T;
		//;NFB.C: 662: Tm = T1-T;
		LCALL 	5EFH 			//11CA 	35EF
		MOVLP 	10H 			//11CB 	0190
		LCALL 	3DAH 			//11CC 	33DA
		MOVLP 	10H 			//11CD 	0190

		//;NFB.C: 663: m = Tm/(t1-1);
		LCALL 	70EH 			//11CE 	370E
		MOVLP 	10H 			//11CF 	0190
		ADDWI 	FFH 			//11D0 	0EFF
		MOVLB 	1H 			//11D1 	1021
		STR 	2EH 			//11D2 	10AE
		LCALL 	7F0H 			//11D3 	37F0
		MOVLP 	10H 			//11D4 	0190
		LCALL 	4C1H 			//11D5 	34C1
		MOVLP 	10H 			//11D6 	0190
		LCALL 	6E2H 			//11D7 	36E2
		MOVLP 	10H 			//11D8 	0190
		LCALL 	35AH 			//11D9 	335A
		MOVLP 	10H 			//11DA 	0190
		LCALL 	74FH 			//11DB 	374F
		MOVLP 	10H 			//11DC 	0190

		//;NFB.C: 664: }
		//;NFB.C: 665: if(HTtimecnt>20){
		MOVLB 	2H 			//11DD 	1022
		LDR 	64H, 0H 			//11DE 	1864
		BTSS 	3H, 2H 			//11DF 	2D03
		LJUMP 	1EBH 			//11E0 	39EB
		LDR 	63H, 0H 			//11E1 	1863
		BTSS 	3H, 2H 			//11E2 	2D03
		LJUMP 	1EBH 			//11E3 	39EB
		LDR 	62H, 0H 			//11E4 	1862
		BTSS 	3H, 2H 			//11E5 	2D03
		LJUMP 	1EBH 			//11E6 	39EB
		LDWI 	15H 			//11E7 	0015
		SUBWR 	61H, 0H 		//11E8 	1261
		BTSS 	3H, 0H 			//11E9 	2C03
		LJUMP 	292H 			//11EA 	3A92

		//;NFB.C: 666: diffT = ((m*(HTtimecnt-20)/20)+Toffset)-T;
		LCALL 	636H 			//11EB 	3636
		MOVLP 	10H 			//11EC 	0190
		LCALL 	6F5H 			//11ED 	36F5
		MOVLP 	10H 			//11EE 	0190
		LDWI 	ECH 			//11EF 	00EC
		MOVLB 	2H 			//11F0 	1022
		ADDWR 	61H, 0H 		//11F1 	1761
		MOVLB 	1H 			//11F2 	1021
		STR 	28H 			//11F3 	10A8
		LDWI 	FFH 			//11F4 	00FF
		MOVLB 	2H 			//11F5 	1022
		ADDWFC 	62H, 0H 		//11F6 	0D62
		MOVLB 	1H 			//11F7 	1021
		STR 	29H 			//11F8 	10A9
		LDWI 	FFH 			//11F9 	00FF
		MOVLB 	2H 			//11FA 	1022
		ADDWFC 	63H, 0H 		//11FB 	0D63
		MOVLB 	1H 			//11FC 	1021
		STR 	2AH 			//11FD 	10AA
		LDWI 	FFH 			//11FE 	00FF
		MOVLB 	2H 			//11FF 	1022
		ADDWFC 	64H, 0H 		//1200 	0D64
		MOVLB 	1H 			//1201 	1021
		STR 	2BH 			//1202 	10AB
		LCALL 	5A8H 			//1203 	35A8
		LDR 	28H, 0H 			//1204 	1828
		STR 	49H 			//1205 	10C9
		LDR 	29H, 0H 			//1206 	1829
		STR 	4AH 			//1207 	10CA
		LDR 	2AH, 0H 			//1208 	182A
		STR 	4BH 			//1209 	10CB
		MOVLP 	CH 			//120A 	018C
		LCALL 	42EH 			//120B 	342E
		MOVLP 	10H 			//120C 	0190
		LCALL 	6DBH 			//120D 	36DB
		MOVLP 	10H 			//120E 	0190
		LCALL 	35AH 			//120F 	335A
		MOVLP 	10H 			//1210 	0190
		LDR 	55H, 0H 			//1211 	1855
		STR 	43H 			//1212 	10C3
		LDR 	56H, 0H 			//1213 	1856
		STR 	44H 			//1214 	10C4
		LDR 	57H, 0H 			//1215 	1857
		STR 	45H 			//1216 	10C5
		LCALL 	3DAH 			//1217 	33DA
		MOVLP 	10H 			//1218 	0190
		LDR 	40H, 0H 			//1219 	1840
		MOVLB 	3H 			//121A 	1023
		STR 	3AH 			//121B 	10BA
		MOVLB 	1H 			//121C 	1021
		LDR 	41H, 0H 			//121D 	1841
		MOVLB 	3H 			//121E 	1023
		STR 	3BH 			//121F 	10BB
		MOVLB 	1H 			//1220 	1021
		LDR 	42H, 0H 			//1221 	1842
		MOVLB 	3H 			//1222 	1023
		STR 	3CH 			//1223 	10BC

		//;NFB.C: 666: diffT = ((m*(HTtimecnt-20)/20)+Toffset)-T;
		MOVLB 	5H 			//1224 	1025
		LDR 	2AH, 0H 			//1225 	182A
		MOVLB 	1H 			//1226 	1021
		STR 	34H 			//1227 	10B4
		MOVLB 	5H 			//1228 	1025
		LDR 	2BH, 0H 			//1229 	182B
		MOVLB 	1H 			//122A 	1021
		STR 	35H 			//122B 	10B5
		MOVLB 	5H 			//122C 	1025
		LDR 	2CH, 0H 			//122D 	182C
		MOVLB 	1H 			//122E 	1021
		STR 	36H 			//122F 	10B6
		MOVLB 	3H 			//1230 	1023
		LDR 	3AH, 0H 			//1231 	183A
		MOVLB 	1H 			//1232 	1021
		STR 	37H 			//1233 	10B7
		MOVLB 	3H 			//1234 	1023
		LDR 	3BH, 0H 			//1235 	183B
		MOVLB 	1H 			//1236 	1021
		STR 	38H 			//1237 	10B8
		MOVLB 	3H 			//1238 	1023
		LDR 	3CH, 0H 			//1239 	183C
		MOVLB 	1H 			//123A 	1021
		STR 	39H 			//123B 	10B9
		LCALL 	3F5H 			//123C 	33F5
		LDR 	34H, 0H 			//123D 	1834
		MOVLB 	2H 			//123E 	1022
		STR 	68H 			//123F 	10E8
		MOVLB 	1H 			//1240 	1021
		LDR 	35H, 0H 			//1241 	1835
		MOVLB 	2H 			//1242 	1022
		STR 	69H 			//1243 	10E9
		MOVLB 	1H 			//1244 	1021
		LDR 	36H, 0H 			//1245 	1836
		MOVLB 	2H 			//1246 	1022
		STR 	6AH 			//1247 	10EA

		//;NFB.C: 667: if(diffT>=0){
		LDR 	68H, 0H 			//1248 	1868
		MOVLB 	1H 			//1249 	1021
		STR 	32H 			//124A 	10B2
		MOVLB 	2H 			//124B 	1022
		LDR 	69H, 0H 			//124C 	1869
		MOVLB 	1H 			//124D 	1021
		STR 	33H 			//124E 	10B3
		MOVLB 	2H 			//124F 	1022
		LDR 	6AH, 0H 			//1250 	186A
		MOVLP 	1FH 			//1251 	019F
		LCALL 	7EBH 			//1252 	37EB
		MOVLP 	10H 			//1253 	0190
		MOVLP 	CH 			//1254 	018C
		LCALL 	49AH 			//1255 	349A
		MOVLP 	10H 			//1256 	0190
		BTSC 	3H, 0H 			//1257 	2803
		LJUMP 	290H 			//1258 	3A90

		//;NFB.C: 670: PA0 = 0;
		//;NFB.C: 669: } else{
		MOVLB 	0H 			//1259 	1020
		BCR 	CH, 0H 			//125A 	200C
		LJUMP 	292H 			//125B 	3A92
		LCALL 	7E3H 			//125C 	37E3
		MOVLP 	10H 			//125D 	0190
		BTSS 	3H, 2H 			//125E 	2D03
		LJUMP 	262H 			//125F 	3A62
		LDWI 	14H 			//1260 	0014
		SUBWR 	6EH, 0H 		//1261 	126E
		BTSS 	3H, 0H 			//1262 	2C03
		LJUMP 	292H 			//1263 	3A92

		//;NFB.C: 674: if(HTtimecnt==200){
		LDWI 	C8H 			//1264 	00C8
		LCALL 	7EAH 			//1265 	37EA
		MOVLP 	10H 			//1266 	0190
		BTSS 	3H, 2H 			//1267 	2D03
		LJUMP 	27CH 			//1268 	3A7C

		//;NFB.C: 675: Toffset = T;
		//;NFB.C: 676: Tm = T1-T;
		LCALL 	5EFH 			//1269 	35EF
		MOVLP 	10H 			//126A 	0190
		LCALL 	3DAH 			//126B 	33DA
		MOVLP 	10H 			//126C 	0190

		//;NFB.C: 677: m = Tm/(t1-10);
		LCALL 	70EH 			//126D 	370E
		MOVLP 	10H 			//126E 	0190
		ADDWI 	F6H 			//126F 	0EF6
		MOVLB 	1H 			//1270 	1021
		STR 	2EH 			//1271 	10AE
		LCALL 	7F0H 			//1272 	37F0
		MOVLP 	10H 			//1273 	0190
		LCALL 	4C1H 			//1274 	34C1
		MOVLP 	10H 			//1275 	0190
		LCALL 	6E2H 			//1276 	36E2
		MOVLP 	10H 			//1277 	0190
		LCALL 	35AH 			//1278 	335A
		MOVLP 	10H 			//1279 	0190
		LCALL 	74FH 			//127A 	374F
		MOVLP 	10H 			//127B 	0190

		//;NFB.C: 678: }
		//;NFB.C: 679: if(HTtimecnt>200){
		MOVLB 	2H 			//127C 	1022
		LDR 	64H, 0H 			//127D 	1864
		BTSS 	3H, 2H 			//127E 	2D03
		LJUMP 	28AH 			//127F 	3A8A
		LDR 	63H, 0H 			//1280 	1863
		BTSS 	3H, 2H 			//1281 	2D03
		LJUMP 	28AH 			//1282 	3A8A
		LDR 	62H, 0H 			//1283 	1862
		BTSS 	3H, 2H 			//1284 	2D03
		LJUMP 	28AH 			//1285 	3A8A
		LDWI 	C9H 			//1286 	00C9
		SUBWR 	61H, 0H 		//1287 	1261
		BTSS 	3H, 0H 			//1288 	2C03
		LJUMP 	292H 			//1289 	3A92

		//;NFB.C: 680: diffT = ((m*(HTtimecnt-200)/20)+Toffset)-T;
		LCALL 	636H 			//128A 	3636
		MOVLP 	10H 			//128B 	0190
		LCALL 	6F5H 			//128C 	36F5
		MOVLP 	10H 			//128D 	0190
		LDWI 	38H 			//128E 	0038
		LJUMP 	1F0H 			//128F 	39F0

		//;NFB.C: 681: if(diffT>=0){
		//;NFB.C: 680: diffT = ((m*(HTtimecnt-200)/20)+Toffset)-T;
		//;NFB.C: 668: PA0 = 1;
		MOVLB 	0H 			//1290 	1020
		BSR 	CH, 0H 			//1291 	240C

		//;NFB.C: 685: }
		//;NFB.C: 686: }
		//;NFB.C: 687: }
		//;NFB.C: 688: if(HTtimecnt>=timeleft1){
		MOVLB 	5H 			//1292 	1025
		LDR 	45H, 0H 			//1293 	1845
		MOVLB 	2H 			//1294 	1022
		STR 	4AH 			//1295 	10CA
		MOVLB 	5H 			//1296 	1025
		LDR 	46H, 0H 			//1297 	1846
		LCALL 	77CH 			//1298 	377C
		MOVLP 	10H 			//1299 	0190
		BTSS 	3H, 2H 			//129A 	2D03
		LJUMP 	2A6H 			//129B 	3AA6
		LDR 	4CH, 0H 			//129C 	184C
		SUBWR 	63H, 0H 		//129D 	1263
		BTSS 	3H, 2H 			//129E 	2D03
		LJUMP 	2A6H 			//129F 	3AA6
		LDR 	4BH, 0H 			//12A0 	184B
		SUBWR 	62H, 0H 		//12A1 	1262
		BTSS 	3H, 2H 			//12A2 	2D03
		LJUMP 	2A6H 			//12A3 	3AA6
		LDR 	4AH, 0H 			//12A4 	184A
		SUBWR 	61H, 0H 		//12A5 	1261
		BTSS 	3H, 0H 			//12A6 	2C03
		LJUMP 	2AFH 			//12A7 	3AAF

		//;NFB.C: 689: PA0 = 1;
		MOVLB 	0H 			//12A8 	1020
		BSR 	CH, 0H 			//12A9 	240C

		//;NFB.C: 690: timeleft1 += 10;
		LDWI 	AH 			//12AA 	000A
		MOVLB 	5H 			//12AB 	1025
		ADDWR 	45H, 1H 		//12AC 	17C5
		BTSC 	3H, 0H 			//12AD 	2803
		INCR 	46H, 1H 		//12AE 	1AC6

		//;NFB.C: 691: }
		//;NFB.C: 692: if(HTtimecnt>((t1*20)+9) || T>=T1){
		MOVLB 	2H 			//12AF 	1022
		LDR 	6FH, 0H 			//12B0 	186F
		MOVLB 	1H 			//12B1 	1021
		STR 	2FH 			//12B2 	10AF
		MOVLB 	2H 			//12B3 	1022
		LDR 	6EH, 0H 			//12B4 	186E
		MOVLB 	1H 			//12B5 	1021
		STR 	2EH 			//12B6 	10AE
		LDWI 	14H 			//12B7 	0014
		STR 	30H 			//12B8 	10B0
		CLRF 	31H 			//12B9 	11B1
		MOVLP 	DH 			//12BA 	018D
		LCALL 	5E9H 			//12BB 	35E9
		MOVLP 	10H 			//12BC 	0190
		LDR 	2EH, 0H 			//12BD 	182E
		ADDWI 	9H 			//12BE 	0E09
		MOVLB 	2H 			//12BF 	1022
		STR 	4AH 			//12C0 	10CA
		LDWI 	0H 			//12C1 	0000
		MOVLB 	1H 			//12C2 	1021
		ADDWFC 	2FH, 0H 		//12C3 	0D2F
		MOVLB 	2H 			//12C4 	1022
		STR 	4BH 			//12C5 	10CB
		LDR 	4AH, 0H 			//12C6 	184A
		STR 	4CH 			//12C7 	10CC
		LDR 	4BH, 0H 			//12C8 	184B
		STR 	4DH 			//12C9 	10CD
		LDWI 	0H 			//12CA 	0000
		BTSC 	4DH, 7H 		//12CB 	2BCD
		LDWI 	FFH 			//12CC 	00FF
		STR 	4EH 			//12CD 	10CE
		STR 	4FH 			//12CE 	10CF
		LDR 	64H, 0H 			//12CF 	1864
		SUBWR 	4FH, 0H 		//12D0 	124F
		BTSS 	3H, 2H 			//12D1 	2D03
		LJUMP 	2DDH 			//12D2 	3ADD
		LDR 	63H, 0H 			//12D3 	1863
		SUBWR 	4EH, 0H 		//12D4 	124E
		BTSS 	3H, 2H 			//12D5 	2D03
		LJUMP 	2DDH 			//12D6 	3ADD
		LDR 	62H, 0H 			//12D7 	1862
		SUBWR 	4DH, 0H 		//12D8 	124D
		BTSS 	3H, 2H 			//12D9 	2D03
		LJUMP 	2DDH 			//12DA 	3ADD
		LDR 	61H, 0H 			//12DB 	1861
		SUBWR 	4CH, 0H 		//12DC 	124C
		BTSS 	3H, 0H 			//12DD 	2C03
		LJUMP 	2FBH 			//12DE 	3AFB
		LDR 	6BH, 0H 			//12DF 	186B
		MOVLB 	1H 			//12E0 	1021
		STR 	32H 			//12E1 	10B2
		MOVLB 	2H 			//12E2 	1022
		LDR 	6CH, 0H 			//12E3 	186C
		MOVLB 	1H 			//12E4 	1021
		STR 	33H 			//12E5 	10B3
		MOVLB 	2H 			//12E6 	1022
		LDR 	6DH, 0H 			//12E7 	186D
		MOVLB 	1H 			//12E8 	1021
		STR 	34H 			//12E9 	10B4
		MOVLB 	0H 			//12EA 	1020
		LDR 	52H, 0H 			//12EB 	1852
		MOVLB 	1H 			//12EC 	1021
		STR 	35H 			//12ED 	10B5
		MOVLB 	0H 			//12EE 	1020
		LDR 	53H, 0H 			//12EF 	1853
		MOVLB 	1H 			//12F0 	1021
		STR 	36H 			//12F1 	10B6
		MOVLB 	0H 			//12F2 	1020
		LDR 	54H, 0H 			//12F3 	1854
		MOVLB 	1H 			//12F4 	1021
		STR 	37H 			//12F5 	10B7
		MOVLP 	CH 			//12F6 	018C
		LCALL 	49AH 			//12F7 	349A
		MOVLP 	10H 			//12F8 	0190
		BTSS 	3H, 0H 			//12F9 	2C03
		RET 					//12FA 	1008

		//;NFB.C: 693: char msg[10];
		//;NFB.C: 694: sprintf(msg,"T%0.1f\r\n",T);
		LDWI 	ADH 			//12FB 	00AD
		MOVLB 	2H 			//12FC 	1022
		STR 	20H 			//12FD 	10A0
		LDWI 	1H 			//12FE 	0001
		STR 	21H 			//12FF 	10A1
		LDWI 	D6H 			//1300 	00D6
		STR 	22H 			//1301 	10A2
		LDWI 	A0H 			//1302 	00A0
		STR 	23H 			//1303 	10A3
		LDR 	6BH, 0H 			//1304 	186B
		STR 	24H 			//1305 	10A4
		LDR 	6CH, 0H 			//1306 	186C
		STR 	25H 			//1307 	10A5
		LDR 	6DH, 0H 			//1308 	186D
		STR 	26H 			//1309 	10A6
		MOVLP 	19H 			//130A 	0199
		LCALL 	12FH 			//130B 	312F
		MOVLP 	10H 			//130C 	0190

		//;NFB.C: 695: send(msg,strlen(msg));
		LDWI 	ADH 			//130D 	00AD
		STR 	24H 			//130E 	10A4
		LDWI 	1H 			//130F 	0001
		STR 	25H 			//1310 	10A5
		LDWI 	ADH 			//1311 	00AD
		MOVLB 	1H 			//1312 	1021
		STR 	20H 			//1313 	10A0
		LDWI 	1H 			//1314 	0001
		STR 	21H 			//1315 	10A1
		MOVLP 	CH 			//1316 	018C
		LCALL 	4C6H 			//1317 	34C6
		MOVLP 	10H 			//1318 	0190
		MOVLP 	EH 			//1319 	018E
		LCALL 	64FH 			//131A 	364F
		MOVLP 	10H 			//131B 	0190
		LCALL 	3B7H 			//131C 	33B7
		MOVLP 	10H 			//131D 	0190

		//;NFB.C: 696: send((char*)"T0\r\n",4);
		LCALL 	7A3H 			//131E 	37A3
		MOVLP 	10H 			//131F 	0190
		LCALL 	78DH 			//1320 	378D
		MOVLP 	10H 			//1321 	0190
		LCALL 	3B7H 			//1322 	33B7
		MOVLP 	10H 			//1323 	0190

		//;NFB.C: 697: send((char*)"H0\r\n",4);
		LCALL 	792H 			//1324 	3792
		MOVLP 	10H 			//1325 	0190
		LCALL 	78DH 			//1326 	378D
		MOVLP 	10H 			//1327 	0190
		LCALL 	3B7H 			//1328 	33B7
		MOVLP 	10H 			//1329 	0190

		//;NFB.C: 698: PA0 = 0;
		MOVLB 	0H 			//132A 	1020
		BCR 	CH, 0H 			//132B 	200C

		//;NFB.C: 699: HTOn = 0;
		//;NFB.C: 700: HTtimer = 0;
		//;NFB.C: 701: PB0 = 1;
		LCALL 	7DCH 			//132C 	37DC
		MOVLP 	10H 			//132D 	0190
		BSR 	DH, 0H 			//132E 	240D

		//;NFB.C: 702: DelayMs(500);
		LCALL 	75BH 			//132F 	375B
		MOVLP 	10H 			//1330 	0190
		LCALL 	4A3H 			//1331 	34A3
		MOVLP 	10H 			//1332 	0190

		//;NFB.C: 703: PB0 = 0;
		MOVLB 	0H 			//1333 	1020
		BCR 	DH, 0H 			//1334 	200D

		//;NFB.C: 704: DelayMs(500);
		LCALL 	75BH 			//1335 	375B
		MOVLP 	10H 			//1336 	0190
		LCALL 	4A3H 			//1337 	34A3
		MOVLP 	10H 			//1338 	0190

		//;NFB.C: 705: send((char*)"S1\r\n",4);
		LDWI 	FDH 			//1339 	00FD
		MOVLB 	2H 			//133A 	1022
		STR 	24H 			//133B 	10A4
		LDWI 	A0H 			//133C 	00A0
		LCALL 	78DH 			//133D 	378D
		MOVLP 	10H 			//133E 	0190
		LCALL 	3B7H 			//133F 	33B7

		//;NFB.C: 706: PC1 = 0;
		MOVLB 	0H 			//1340 	1020
		BCR 	EH, 1H 			//1341 	208E

		//;NFB.C: 707: PB3 = 1;
		BSR 	DH, 3H 			//1342 	258D

		//;NFB.C: 708: PB2 = 1;
		BSR 	DH, 2H 			//1343 	250D

		//;NFB.C: 709: PA1 = 1;
		BSR 	CH, 1H 			//1344 	248C

		//;NFB.C: 710: timeleft2 = 100;
		LDWI 	64H 			//1345 	0064
		MOVLB 	5H 			//1346 	1025
		STR 	43H 			//1347 	10C3
		LDWI 	9H 			//1348 	0009
		CLRF 	44H 			//1349 	11C4

		//;NFB.C: 711: timeleft3 = 9;
		STR 	41H 			//134A 	10C1
		CLRF 	42H 			//134B 	11C2

		//;NFB.C: 712: SmokeOn = 1;
		CLRF 	63H 			//134C 	11E3
		INCR 	63H, 1H 		//134D 	1AE3
		CLRF 	64H 			//134E 	11E4

		//;NFB.C: 713: Puffcnt = 0;
		CLRF 	20H 			//134F 	11A0
		CLRF 	21H 			//1350 	11A1
		CLRF 	22H 			//1351 	11A2
		CLRF 	23H 			//1352 	11A3

		//;NFB.C: 714: Smoketimecnt = 0;
		MOVLB 	0H 			//1353 	1020
		CLRF 	4BH 			//1354 	11CB
		CLRF 	4CH 			//1355 	11CC
		CLRF 	4DH 			//1356 	11CD
		CLRF 	4EH 			//1357 	11CE

		//;NFB.C: 715: PA0 = 1;
		BSR 	CH, 0H 			//1358 	240C
		RET 					//1359 	1008
		LDR 	58H, 0H 			//135A 	1858
		STR 	5BH 			//135B 	10DB
		LDR 	59H, 0H 			//135C 	1859
		STR 	5CH 			//135D 	10DC
		LDR 	5AH, 0H 			//135E 	185A
		STR 	5DH 			//135F 	10DD
		BCR 	3H, 0H 			//1360 	2003
		RLR 	5CH, 0H 			//1361 	1D5C
		RLR 	5DH, 0H 			//1362 	1D5D
		STR 	5FH 			//1363 	10DF
		LDR 	5FH, 0H 			//1364 	185F
		BTSS 	3H, 2H 			//1365 	2D03
		LJUMP 	368H 			//1366 	3B68
		LJUMP 	7FCH 			//1367 	3FFC
		LDR 	55H, 0H 			//1368 	1855
		STR 	5BH 			//1369 	10DB
		LDR 	56H, 0H 			//136A 	1856
		STR 	5CH 			//136B 	10DC
		LDR 	57H, 0H 			//136C 	1857
		STR 	5DH 			//136D 	10DD
		BCR 	3H, 0H 			//136E 	2003
		RLR 	5CH, 0H 			//136F 	1D5C
		RLR 	5DH, 0H 			//1370 	1D5D
		STR 	63H 			//1371 	10E3
		LDR 	63H, 0H 			//1372 	1863
		BTSS 	3H, 2H 			//1373 	2D03
		LJUMP 	376H 			//1374 	3B76
		LJUMP 	7FCH 			//1375 	3FFC
		LDWI 	89H 			//1376 	0089
		CLRF 	60H 			//1377 	11E0
		CLRF 	61H 			//1378 	11E1
		CLRF 	62H 			//1379 	11E2
		ADDWR 	63H, 0H 		//137A 	1763
		STR 	5BH 			//137B 	10DB
		SUBWR 	5FH, 1H 		//137C 	12DF
		LDR 	5AH, 0H 			//137D 	185A
		STR 	63H 			//137E 	10E3
		LDR 	57H, 0H 			//137F 	1857
		XORWR 	63H, 1H 		//1380 	16E3
		LDWI 	80H 			//1381 	0080
		ANDWR 	63H, 1H 		//1382 	15E3
		LDWI 	18H 			//1383 	0018
		BSR 	59H, 7H 			//1384 	27D9
		CLRF 	5AH 			//1385 	11DA
		BSR 	56H, 7H 			//1386 	27D6
		CLRF 	57H 			//1387 	11D7
		STR 	5EH 			//1388 	10DE
		LSLF 	60H, 1H 		//1389 	05E0
		RLR 	61H, 1H 			//138A 	1DE1
		RLR 	62H, 1H 			//138B 	1DE2
		LDR 	57H, 0H 			//138C 	1857
		SUBWR 	5AH, 0H 		//138D 	125A
		BTSS 	3H, 2H 			//138E 	2D03
		LJUMP 	396H 			//138F 	3B96
		LDR 	56H, 0H 			//1390 	1856
		SUBWR 	59H, 0H 		//1391 	1259
		BTSS 	3H, 2H 			//1392 	2D03
		LJUMP 	396H 			//1393 	3B96
		LDR 	55H, 0H 			//1394 	1855
		SUBWR 	58H, 0H 		//1395 	1258
		BTSS 	3H, 0H 			//1396 	2C03
		LJUMP 	39FH 			//1397 	3B9F
		LDR 	55H, 0H 			//1398 	1855
		SUBWR 	58H, 1H 		//1399 	12D8
		LDR 	56H, 0H 			//139A 	1856
		SUBWFB 	59H, 1H 		//139B 	0BD9
		LDR 	57H, 0H 			//139C 	1857
		SUBWFB 	5AH, 1H 		//139D 	0BDA
		BSR 	60H, 0H 			//139E 	2460
		LSLF 	58H, 1H 		//139F 	05D8
		RLR 	59H, 1H 			//13A0 	1DD9
		RLR 	5AH, 1H 			//13A1 	1DDA
		DECRSZ 	5EH, 1H 		//13A2 	1BDE
		LJUMP 	389H 			//13A3 	3B89
		LDR 	60H, 0H 			//13A4 	1860
		STR 	20H 			//13A5 	10A0
		LDR 	61H, 0H 			//13A6 	1861
		STR 	21H 			//13A7 	10A1
		LDR 	62H, 0H 			//13A8 	1862
		STR 	22H 			//13A9 	10A2
		LDR 	5FH, 0H 			//13AA 	185F
		STR 	23H 			//13AB 	10A3
		LDR 	63H, 0H 			//13AC 	1863
		STR 	24H 			//13AD 	10A4
		MOVLP 	CH 			//13AE 	018C
		LCALL 	4DCH 			//13AF 	34DC
		LDR 	20H, 0H 			//13B0 	1820
		STR 	55H 			//13B1 	10D5
		LDR 	21H, 0H 			//13B2 	1821
		STR 	56H 			//13B3 	10D6
		LDR 	22H, 0H 			//13B4 	1822
		STR 	57H 			//13B5 	10D7
		RET 					//13B6 	1008

		//;NFB.C: 479: for(int i=0;i<len;i++)
		CLRF 	29H 			//13B7 	11A9
		CLRF 	2AH 			//13B8 	11AA
		LDR 	2AH, 0H 			//13B9 	182A
		XORWI 	80H 			//13BA 	0A80
		STR 	28H 			//13BB 	10A8
		LDR 	27H, 0H 			//13BC 	1827
		XORWI 	80H 			//13BD 	0A80
		SUBWR 	28H, 0H 		//13BE 	1228
		BTSS 	3H, 2H 			//13BF 	2D03
		LJUMP 	3C3H 			//13C0 	3BC3
		LDR 	26H, 0H 			//13C1 	1826
		SUBWR 	29H, 0H 		//13C2 	1229
		BTSC 	3H, 0H 			//13C3 	2803
		RET 					//13C4 	1008

		//;NFB.C: 480: {
		//;NFB.C: 481: UR1DATAL=tbuf[i];
		MOVLB 	2H 			//13C5 	1022
		LDR 	24H, 0H 			//13C6 	1824
		ADDWR 	29H, 0H 		//13C7 	1729
		STR 	4H 			//13C8 	1084
		LDR 	25H, 0H 			//13C9 	1825
		ADDWFC 	2AH, 0H 		//13CA 	0D2A
		STR 	5H 			//13CB 	1085
		LDR 	0H, 0H 			//13CC 	1800
		MOVLB 	9H 			//13CD 	1029
		STR 	CH 			//13CE 	108C

		//;NFB.C: 482: DelayMs(1);
		MOVLB 	2H 			//13CF 	1022
		CLRF 	20H 			//13D0 	11A0
		INCR 	20H, 1H 		//13D1 	1AA0
		CLRF 	21H 			//13D2 	11A1
		LCALL 	4A3H 			//13D3 	34A3
		MOVLP 	10H 			//13D4 	0190
		MOVLB 	2H 			//13D5 	1022
		INCR 	29H, 1H 		//13D6 	1AA9
		BTSC 	3H, 2H 			//13D7 	2903
		INCR 	2AH, 1H 		//13D8 	1AAA
		LJUMP 	3B9H 			//13D9 	3BB9
		LDR 	42H, 0H 			//13DA 	1842
		IORWR 	41H, 0H 		//13DB 	1441
		IORWR 	40H, 0H 		//13DC 	1440
		BTSC 	3H, 2H 			//13DD 	2903
		LJUMP 	3E1H 			//13DE 	3BE1
		LDWI 	80H 			//13DF 	0080
		XORWR 	42H, 1H 		//13E0 	16C2
		LDR 	43H, 0H 			//13E1 	1843
		STR 	34H 			//13E2 	10B4
		LDR 	44H, 0H 			//13E3 	1844
		STR 	35H 			//13E4 	10B5
		LDR 	45H, 0H 			//13E5 	1845
		STR 	36H 			//13E6 	10B6
		LDR 	40H, 0H 			//13E7 	1840
		STR 	37H 			//13E8 	10B7
		LDR 	41H, 0H 			//13E9 	1841
		STR 	38H 			//13EA 	10B8
		LDR 	42H, 0H 			//13EB 	1842
		STR 	39H 			//13EC 	10B9
		LCALL 	3F5H 			//13ED 	33F5
		LDR 	34H, 0H 			//13EE 	1834
		STR 	40H 			//13EF 	10C0
		LDR 	35H, 0H 			//13F0 	1835
		STR 	41H 			//13F1 	10C1
		LDR 	36H, 0H 			//13F2 	1836
		STR 	42H 			//13F3 	10C2
		RET 					//13F4 	1008
		LDR 	34H, 0H 			//13F5 	1834
		STR 	3AH 			//13F6 	10BA
		LDR 	35H, 0H 			//13F7 	1835
		STR 	3BH 			//13F8 	10BB
		LDR 	36H, 0H 			//13F9 	1836
		STR 	3CH 			//13FA 	10BC
		BCR 	3H, 0H 			//13FB 	2003
		RLR 	3BH, 0H 			//13FC 	1D3B
		RLR 	3CH, 0H 			//13FD 	1D3C
		STR 	3FH 			//13FE 	10BF
		LDR 	37H, 0H 			//13FF 	1837
		STR 	3AH 			//1400 	10BA
		LDR 	38H, 0H 			//1401 	1838
		STR 	3BH 			//1402 	10BB
		LDR 	39H, 0H 			//1403 	1839
		STR 	3CH 			//1404 	10BC
		BCR 	3H, 0H 			//1405 	2003
		RLR 	3BH, 0H 			//1406 	1D3B
		RLR 	3CH, 0H 			//1407 	1D3C
		STR 	3EH 			//1408 	10BE
		LDR 	3FH, 0H 			//1409 	183F
		BTSC 	3H, 2H 			//140A 	2903
		LJUMP 	418H 			//140B 	3C18
		LDR 	3EH, 0H 			//140C 	183E
		SUBWR 	3FH, 0H 		//140D 	123F
		LDR 	3EH, 0H 			//140E 	183E
		BTSC 	3H, 0H 			//140F 	2803
		LJUMP 	420H 			//1410 	3C20
		STR 	3AH 			//1411 	10BA
		LDR 	3FH, 0H 			//1412 	183F
		SUBWR 	3AH, 1H 		//1413 	12BA
		LDWI 	19H 			//1414 	0019
		SUBWR 	3AH, 0H 		//1415 	123A
		BTSS 	3H, 0H 			//1416 	2C03
		LJUMP 	41FH 			//1417 	3C1F
		LDR 	37H, 0H 			//1418 	1837
		STR 	34H 			//1419 	10B4
		LDR 	38H, 0H 			//141A 	1838
		STR 	35H 			//141B 	10B5
		LDR 	39H, 0H 			//141C 	1839
		STR 	36H 			//141D 	10B6
		RET 					//141E 	1008
		LDR 	3EH, 0H 			//141F 	183E
		BTSC 	3H, 2H 			//1420 	2903
		RET 					//1421 	1008
		LDR 	3FH, 0H 			//1422 	183F
		SUBWR 	3EH, 0H 		//1423 	123E
		BTSC 	3H, 0H 			//1424 	2803
		LJUMP 	42EH 			//1425 	3C2E
		LDR 	3FH, 0H 			//1426 	183F
		STR 	3AH 			//1427 	10BA
		LDR 	3EH, 0H 			//1428 	183E
		SUBWR 	3AH, 1H 		//1429 	12BA
		LDWI 	19H 			//142A 	0019
		SUBWR 	3AH, 0H 		//142B 	123A
		BTSC 	3H, 0H 			//142C 	2803
		RET 					//142D 	1008
		LDWI 	6H 			//142E 	0006
		STR 	3DH 			//142F 	10BD
		BTSC 	36H, 7H 		//1430 	2BB6
		BSR 	3DH, 7H 			//1431 	27BD
		BTSC 	39H, 7H 		//1432 	2BB9
		BSR 	3DH, 6H 			//1433 	273D
		BSR 	35H, 7H 			//1434 	27B5
		CLRF 	36H 			//1435 	11B6
		BSR 	38H, 7H 			//1436 	27B8
		CLRF 	39H 			//1437 	11B9
		LDR 	3EH, 0H 			//1438 	183E
		SUBWR 	3FH, 0H 		//1439 	123F
		BTSC 	3H, 0H 			//143A 	2803
		LJUMP 	453H 			//143B 	3C53
		LSLF 	37H, 1H 		//143C 	05B7
		RLR 	38H, 1H 			//143D 	1DB8
		RLR 	39H, 1H 			//143E 	1DB9
		DECR 	3EH, 1H 		//143F 	13BE
		LDR 	3EH, 0H 			//1440 	183E
		XORWR 	3FH, 0H 		//1441 	163F
		BTSC 	3H, 2H 			//1442 	2903
		LJUMP 	44EH 			//1443 	3C4E
		DECR 	3DH, 1H 		//1444 	13BD
		LDR 	3DH, 0H 			//1445 	183D
		ANDWI 	7H 			//1446 	0907
		BTSC 	3H, 2H 			//1447 	2903
		LJUMP 	44EH 			//1448 	3C4E
		LJUMP 	43CH 			//1449 	3C3C
		LSRF 	36H, 1H 		//144A 	06B6
		RRR 	35H, 1H 			//144B 	1CB5
		RRR 	34H, 1H 			//144C 	1CB4
		INCR 	3FH, 1H 		//144D 	1ABF
		LDR 	3FH, 0H 			//144E 	183F
		XORWR 	3EH, 0H 		//144F 	163E
		BTSC 	3H, 2H 			//1450 	2903
		LJUMP 	46DH 			//1451 	3C6D
		LJUMP 	44AH 			//1452 	3C4A
		LDR 	3FH, 0H 			//1453 	183F
		SUBWR 	3EH, 0H 		//1454 	123E
		BTSC 	3H, 0H 			//1455 	2803
		LJUMP 	46DH 			//1456 	3C6D
		LSLF 	34H, 1H 		//1457 	05B4
		RLR 	35H, 1H 			//1458 	1DB5
		RLR 	36H, 1H 			//1459 	1DB6
		DECR 	3FH, 1H 		//145A 	13BF
		LDR 	3EH, 0H 			//145B 	183E
		XORWR 	3FH, 0H 		//145C 	163F
		BTSC 	3H, 2H 			//145D 	2903
		LJUMP 	469H 			//145E 	3C69
		DECR 	3DH, 1H 		//145F 	13BD
		LDR 	3DH, 0H 			//1460 	183D
		ANDWI 	7H 			//1461 	0907
		BTSC 	3H, 2H 			//1462 	2903
		LJUMP 	469H 			//1463 	3C69
		LJUMP 	457H 			//1464 	3C57
		LSRF 	39H, 1H 		//1465 	06B9
		RRR 	38H, 1H 			//1466 	1CB8
		RRR 	37H, 1H 			//1467 	1CB7
		INCR 	3EH, 1H 		//1468 	1ABE
		LDR 	3FH, 0H 			//1469 	183F
		XORWR 	3EH, 0H 		//146A 	163E
		BTSS 	3H, 2H 			//146B 	2D03
		LJUMP 	465H 			//146C 	3C65
		BTSS 	3DH, 7H 		//146D 	2FBD
		LJUMP 	478H 			//146E 	3C78
		LDWI 	FFH 			//146F 	00FF
		XORWR 	34H, 1H 		//1470 	16B4
		XORWR 	35H, 1H 		//1471 	16B5
		XORWR 	36H, 1H 		//1472 	16B6
		INCR 	34H, 1H 		//1473 	1AB4
		BTSC 	3H, 2H 			//1474 	2903
		INCR 	35H, 1H 		//1475 	1AB5
		BTSC 	3H, 2H 			//1476 	2903
		INCR 	36H, 1H 		//1477 	1AB6
		BTSS 	3DH, 6H 		//1478 	2F3D
		LJUMP 	480H 			//1479 	3C80
		LCALL 	7F6H 			//147A 	37F6
		MOVLP 	10H 			//147B 	0190
		BTSC 	3H, 2H 			//147C 	2903
		INCR 	38H, 1H 		//147D 	1AB8
		BTSC 	3H, 2H 			//147E 	2903
		INCR 	39H, 1H 		//147F 	1AB9
		CLRF 	3DH 			//1480 	11BD
		LDR 	34H, 0H 			//1481 	1834
		ADDWR 	37H, 1H 		//1482 	17B7
		LDR 	35H, 0H 			//1483 	1835
		ADDWFC 	38H, 1H 		//1484 	0DB8
		LDR 	36H, 0H 			//1485 	1836
		ADDWFC 	39H, 1H 		//1486 	0DB9
		BTSS 	39H, 7H 		//1487 	2FB9
		LJUMP 	490H 			//1488 	3C90
		LCALL 	7F6H 			//1489 	37F6
		BTSC 	3H, 2H 			//148A 	2903
		INCR 	38H, 1H 		//148B 	1AB8
		BTSC 	3H, 2H 			//148C 	2903
		INCR 	39H, 1H 		//148D 	1AB9
		CLRF 	3DH 			//148E 	11BD
		INCR 	3DH, 1H 		//148F 	1ABD
		LDR 	37H, 0H 			//1490 	1837
		STR 	20H 			//1491 	10A0
		LDR 	38H, 0H 			//1492 	1838
		STR 	21H 			//1493 	10A1
		LDR 	39H, 0H 			//1494 	1839
		STR 	22H 			//1495 	10A2
		LDR 	3FH, 0H 			//1496 	183F
		STR 	23H 			//1497 	10A3
		LDR 	3DH, 0H 			//1498 	183D
		STR 	24H 			//1499 	10A4
		MOVLP 	CH 			//149A 	018C
		LCALL 	4DCH 			//149B 	34DC
		LDR 	20H, 0H 			//149C 	1820
		STR 	34H 			//149D 	10B4
		LDR 	21H, 0H 			//149E 	1821
		STR 	35H 			//149F 	10B5
		LDR 	22H, 0H 			//14A0 	1822
		STR 	36H 			//14A1 	10B6
		RET 					//14A2 	1008

		//;NFB.C: 213: for(int a=0;a<Time;a++)
		CLRF 	22H 			//14A3 	11A2
		CLRF 	23H 			//14A4 	11A3
		LDR 	23H, 0H 			//14A5 	1823
		XORWI 	80H 			//14A6 	0A80
		MOVLB 	1H 			//14A7 	1021
		STR 	6FH 			//14A8 	10EF
		MOVLB 	2H 			//14A9 	1022
		LDR 	21H, 0H 			//14AA 	1821
		XORWI 	80H 			//14AB 	0A80
		MOVLB 	1H 			//14AC 	1021
		SUBWR 	6FH, 0H 		//14AD 	126F
		BTSS 	3H, 2H 			//14AE 	2D03
		LJUMP 	4B3H 			//14AF 	3CB3
		MOVLB 	2H 			//14B0 	1022
		LDR 	20H, 0H 			//14B1 	1820
		SUBWR 	22H, 0H 		//14B2 	1222
		BTSC 	3H, 0H 			//14B3 	2803
		RET 					//14B4 	1008

		//;NFB.C: 214: {
		//;NFB.C: 215: DelayUs(1000);
		LDWI 	E8H 			//14B5 	00E8
		MOVLB 	1H 			//14B6 	1021
		STR 	6AH 			//14B7 	10EA
		LDWI 	3H 			//14B8 	0003
		STR 	6BH 			//14B9 	10EB
		LCALL 	4DDH 			//14BA 	34DD
		MOVLP 	10H 			//14BB 	0190
		MOVLB 	2H 			//14BC 	1022
		INCR 	22H, 1H 		//14BD 	1AA2
		BTSC 	3H, 2H 			//14BE 	2903
		INCR 	23H, 1H 		//14BF 	1AA3
		LJUMP 	4A5H 			//14C0 	3CA5
		CLRF 	31H 			//14C1 	11B1
		BTSS 	2FH, 7H 		//14C2 	2FAF
		LJUMP 	4CBH 			//14C3 	3CCB
		COMR 	2EH, 1H 		//14C4 	19AE
		COMR 	2FH, 1H 		//14C5 	19AF
		INCR 	2EH, 1H 		//14C6 	1AAE
		BTSC 	3H, 2H 			//14C7 	2903
		INCR 	2FH, 1H 		//14C8 	1AAF
		CLRF 	31H 			//14C9 	11B1
		INCR 	31H, 1H 		//14CA 	1AB1
		LDR 	2EH, 0H 			//14CB 	182E
		STR 	20H 			//14CC 	10A0
		LDR 	2FH, 0H 			//14CD 	182F
		STR 	21H 			//14CE 	10A1
		LDWI 	8EH 			//14CF 	008E
		CLRF 	22H 			//14D0 	11A2
		STR 	23H 			//14D1 	10A3
		LDR 	31H, 0H 			//14D2 	1831
		STR 	24H 			//14D3 	10A4
		MOVLP 	CH 			//14D4 	018C
		LCALL 	4DCH 			//14D5 	34DC
		LDR 	20H, 0H 			//14D6 	1820
		STR 	2EH 			//14D7 	10AE
		LDR 	21H, 0H 			//14D8 	1821
		STR 	2FH 			//14D9 	10AF
		LDR 	22H, 0H 			//14DA 	1822
		STR 	30H 			//14DB 	10B0
		RET 					//14DC 	1008

		//;NFB.C: 199: Time = (int)(Time/2*0.8);
		LDR 	6BH, 0H 			//14DD 	186B
		STR 	29H 			//14DE 	10A9
		LDR 	6AH, 0H 			//14DF 	186A
		STR 	28H 			//14E0 	10A8
		LDWI 	2H 			//14E1 	0002
		STR 	26H 			//14E2 	10A6
		CLRF 	27H 			//14E3 	11A7
		LCALL 	513H 			//14E4 	3513
		MOVLP 	10H 			//14E5 	0190
		LDR 	27H, 0H 			//14E6 	1827
		STR 	2FH 			//14E7 	10AF
		LDR 	26H, 0H 			//14E8 	1826
		STR 	2EH 			//14E9 	10AE
		LCALL 	4C1H 			//14EA 	34C1
		MOVLP 	10H 			//14EB 	0190
		LCALL 	786H 			//14EC 	3786
		LDWI 	CDH 			//14ED 	00CD
		STR 	46H 			//14EE 	10C6
		LDWI 	4CH 			//14EF 	004C
		STR 	47H 			//14F0 	10C7
		LDWI 	3FH 			//14F1 	003F
		STR 	48H 			//14F2 	10C8
		MOVLP 	CH 			//14F3 	018C
		LCALL 	42EH 			//14F4 	342E
		MOVLP 	10H 			//14F5 	0190
		MOVLP 	5H 			//14F6 	0185
		LCALL 	5F2H 			//14F7 	35F2
		MOVLP 	10H 			//14F8 	0190
		LCALL 	553H 			//14F9 	3553
		MOVLP 	10H 			//14FA 	0190
		LDR 	5EH, 0H 			//14FB 	185E
		STR 	6BH 			//14FC 	10EB
		LDR 	5DH, 0H 			//14FD 	185D
		STR 	6AH 			//14FE 	10EA

		//;NFB.C: 200: for(int a=0;a<Time;a++)
		CLRF 	6DH 			//14FF 	11ED
		CLRF 	6EH 			//1500 	11EE
		LDR 	6EH, 0H 			//1501 	186E
		XORWI 	80H 			//1502 	0A80
		STR 	6CH 			//1503 	10EC
		LDR 	6BH, 0H 			//1504 	186B
		XORWI 	80H 			//1505 	0A80
		SUBWR 	6CH, 0H 		//1506 	126C
		BTSS 	3H, 2H 			//1507 	2D03
		LJUMP 	50BH 			//1508 	3D0B
		LDR 	6AH, 0H 			//1509 	186A
		SUBWR 	6DH, 0H 		//150A 	126D
		BTSC 	3H, 0H 			//150B 	2803
		RET 					//150C 	1008

		//;NFB.C: 201: {
		//;NFB.C: 202: __nop();
		NOP 					//150D 	1000
		MOVLB 	1H 			//150E 	1021
		INCR 	6DH, 1H 		//150F 	1AED
		BTSC 	3H, 2H 			//1510 	2903
		INCR 	6EH, 1H 		//1511 	1AEE
		LJUMP 	501H 			//1512 	3D01
		CLRF 	2BH 			//1513 	11AB
		BTSS 	27H, 7H 		//1514 	2FA7
		LJUMP 	51DH 			//1515 	3D1D
		COMR 	26H, 1H 		//1516 	19A6
		COMR 	27H, 1H 		//1517 	19A7
		INCR 	26H, 1H 		//1518 	1AA6
		BTSC 	3H, 2H 			//1519 	2903
		INCR 	27H, 1H 		//151A 	1AA7
		CLRF 	2BH 			//151B 	11AB
		INCR 	2BH, 1H 		//151C 	1AAB
		BTSS 	29H, 7H 		//151D 	2FA9
		LJUMP 	526H 			//151E 	3D26
		COMR 	28H, 1H 		//151F 	19A8
		COMR 	29H, 1H 		//1520 	19A9
		INCR 	28H, 1H 		//1521 	1AA8
		BTSC 	3H, 2H 			//1522 	2903
		INCR 	29H, 1H 		//1523 	1AA9
		LDWI 	1H 			//1524 	0001
		XORWR 	2BH, 1H 		//1525 	16AB
		CLRF 	2CH 			//1526 	11AC
		CLRF 	2DH 			//1527 	11AD
		LDR 	26H, 0H 			//1528 	1826
		IORWR 	27H, 0H 		//1529 	1427
		BTSC 	3H, 2H 			//152A 	2903
		LJUMP 	546H 			//152B 	3D46
		CLRF 	2AH 			//152C 	11AA
		INCR 	2AH, 1H 		//152D 	1AAA
		BTSC 	27H, 7H 		//152E 	2BA7
		LJUMP 	533H 			//152F 	3D33
		LSLF 	26H, 1H 		//1530 	05A6
		RLR 	27H, 1H 			//1531 	1DA7
		LJUMP 	52DH 			//1532 	3D2D
		LSLF 	2CH, 1H 		//1533 	05AC
		RLR 	2DH, 1H 			//1534 	1DAD
		LDR 	27H, 0H 			//1535 	1827
		SUBWR 	29H, 0H 		//1536 	1229
		BTSS 	3H, 2H 			//1537 	2D03
		LJUMP 	53BH 			//1538 	3D3B
		LDR 	26H, 0H 			//1539 	1826
		SUBWR 	28H, 0H 		//153A 	1228
		BTSS 	3H, 0H 			//153B 	2C03
		LJUMP 	542H 			//153C 	3D42
		LDR 	26H, 0H 			//153D 	1826
		SUBWR 	28H, 1H 		//153E 	12A8
		LDR 	27H, 0H 			//153F 	1827
		SUBWFB 	29H, 1H 		//1540 	0BA9
		BSR 	2CH, 0H 			//1541 	242C
		LSRF 	27H, 1H 		//1542 	06A7
		RRR 	26H, 1H 			//1543 	1CA6
		DECRSZ 	2AH, 1H 		//1544 	1BAA
		LJUMP 	533H 			//1545 	3D33
		LDR 	2BH, 0H 			//1546 	182B
		BTSC 	3H, 2H 			//1547 	2903
		LJUMP 	54EH 			//1548 	3D4E
		COMR 	2CH, 1H 		//1549 	19AC
		COMR 	2DH, 1H 		//154A 	19AD
		INCR 	2CH, 1H 		//154B 	1AAC
		BTSC 	3H, 2H 			//154C 	2903
		INCR 	2DH, 1H 		//154D 	1AAD
		LDR 	2DH, 0H 			//154E 	182D
		STR 	27H 			//154F 	10A7
		LDR 	2CH, 0H 			//1550 	182C
		STR 	26H 			//1551 	10A6
		RET 					//1552 	1008
		LCALL 	7D5H 			//1553 	37D5
		MOVLP 	10H 			//1554 	0190
		BCR 	3H, 0H 			//1555 	2003
		RLR 	62H, 0H 			//1556 	1D62
		RLR 	63H, 0H 			//1557 	1D63
		STR 	69H 			//1558 	10E9
		LDR 	69H, 0H 			//1559 	1869
		BTSS 	3H, 2H 			//155A 	2D03
		LJUMP 	561H 			//155B 	3D61
		CLRF 	5DH 			//155C 	11DD
		CLRF 	5EH 			//155D 	11DE
		CLRF 	5FH 			//155E 	11DF
		CLRF 	60H 			//155F 	11E0
		RET 					//1560 	1008
		LCALL 	7D5H 			//1561 	37D5
		MOVLP 	10H 			//1562 	0190
		LDWI 	17H 			//1563 	0017
		LSRF 	63H, 1H 		//1564 	06E3
		RRR 	62H, 1H 			//1565 	1CE2
		RRR 	61H, 1H 			//1566 	1CE1
		DECRSZ 	9H, 1H 		//1567 	1B89
		LJUMP 	564H 			//1568 	3D64
		LDR 	61H, 0H 			//1569 	1861
		STR 	64H 			//156A 	10E4
		BSR 	5EH, 7H 			//156B 	27DE
		CLRF 	5FH 			//156C 	11DF
		LDR 	5DH, 0H 			//156D 	185D
		STR 	65H 			//156E 	10E5
		LDR 	5EH, 0H 			//156F 	185E
		STR 	66H 			//1570 	10E6
		LDR 	5FH, 0H 			//1571 	185F
		STR 	67H 			//1572 	10E7
		LDWI 	8EH 			//1573 	008E
		CLRF 	68H 			//1574 	11E8
		SUBWR 	69H, 1H 		//1575 	12E9
		BTSS 	69H, 7H 		//1576 	2FE9
		LJUMP 	584H 			//1577 	3D84
		LDR 	69H, 0H 			//1578 	1869
		XORWI 	80H 			//1579 	0A80
		ADDWI 	8FH 			//157A 	0E8F
		BTSS 	3H, 0H 			//157B 	2C03
		LJUMP 	55CH 			//157C 	3D5C
		LSRF 	68H, 1H 		//157D 	06E8
		RRR 	67H, 1H 			//157E 	1CE7
		RRR 	66H, 1H 			//157F 	1CE6
		RRR 	65H, 1H 			//1580 	1CE5
		INCRSZ 	69H, 1H 		//1581 	1FE9
		LJUMP 	57DH 			//1582 	3D7D
		LJUMP 	591H 			//1583 	3D91
		LDWI 	18H 			//1584 	0018
		SUBWR 	69H, 0H 		//1585 	1269
		BTSC 	3H, 0H 			//1586 	2803
		LJUMP 	55CH 			//1587 	3D5C
		LDR 	69H, 0H 			//1588 	1869
		BTSC 	3H, 2H 			//1589 	2903
		LJUMP 	591H 			//158A 	3D91
		LSLF 	65H, 1H 		//158B 	05E5
		RLR 	66H, 1H 			//158C 	1DE6
		RLR 	67H, 1H 			//158D 	1DE7
		RLR 	68H, 1H 			//158E 	1DE8
		DECR 	69H, 1H 		//158F 	13E9
		LJUMP 	588H 			//1590 	3D88
		LDR 	64H, 0H 			//1591 	1864
		BTSC 	3H, 2H 			//1592 	2903
		LJUMP 	59FH 			//1593 	3D9F
		COMR 	65H, 1H 		//1594 	19E5
		COMR 	66H, 1H 		//1595 	19E6
		COMR 	67H, 1H 		//1596 	19E7
		COMR 	68H, 1H 		//1597 	19E8
		INCR 	65H, 1H 		//1598 	1AE5
		BTSC 	3H, 2H 			//1599 	2903
		INCR 	66H, 1H 		//159A 	1AE6
		BTSC 	3H, 2H 			//159B 	2903
		INCR 	67H, 1H 		//159C 	1AE7
		BTSC 	3H, 2H 			//159D 	2903
		INCR 	68H, 1H 		//159E 	1AE8
		LDR 	68H, 0H 			//159F 	1868
		STR 	60H 			//15A0 	10E0
		LDR 	67H, 0H 			//15A1 	1867
		STR 	5FH 			//15A2 	10DF
		LDR 	66H, 0H 			//15A3 	1866
		STR 	5EH 			//15A4 	10DE
		LDR 	65H, 0H 			//15A5 	1865
		STR 	5DH 			//15A6 	10DD
		RET 					//15A7 	1008
		LDWI 	8EH 			//15A8 	008E
		STR 	2CH 			//15A9 	10AC
		LDWI 	FFH 			//15AA 	00FF
		ANDWR 	2BH, 0H 		//15AB 	152B
		BTSC 	3H, 2H 			//15AC 	2903
		LJUMP 	5B4H 			//15AD 	3DB4
		LSRF 	2BH, 1H 		//15AE 	06AB
		RRR 	2AH, 1H 			//15AF 	1CAA
		RRR 	29H, 1H 			//15B0 	1CA9
		RRR 	28H, 1H 			//15B1 	1CA8
		INCR 	2CH, 1H 		//15B2 	1AAC
		LJUMP 	5AAH 			//15B3 	3DAA
		LDR 	28H, 0H 			//15B4 	1828
		STR 	20H 			//15B5 	10A0
		LDR 	29H, 0H 			//15B6 	1829
		STR 	21H 			//15B7 	10A1
		LDR 	2AH, 0H 			//15B8 	182A
		STR 	22H 			//15B9 	10A2
		LDR 	2CH, 0H 			//15BA 	182C
		STR 	23H 			//15BB 	10A3
		CLRF 	24H 			//15BC 	11A4
		MOVLP 	CH 			//15BD 	018C
		LCALL 	4DCH 			//15BE 	34DC
		LDR 	20H, 0H 			//15BF 	1820
		STR 	28H 			//15C0 	10A8
		LDR 	21H, 0H 			//15C1 	1821
		STR 	29H 			//15C2 	10A9
		LDR 	22H, 0H 			//15C3 	1822
		STR 	2AH 			//15C4 	10AA
		RET 					//15C5 	1008
		LDR 	55H, 0H 			//15C6 	1855
		MOVLB 	5H 			//15C7 	1025
		STR 	33H 			//15C8 	10B3
		MOVLB 	1H 			//15C9 	1021
		LDR 	56H, 0H 			//15CA 	1856
		MOVLB 	5H 			//15CB 	1025
		STR 	34H 			//15CC 	10B4
		MOVLB 	1H 			//15CD 	1021
		LDR 	57H, 0H 			//15CE 	1857
		MOVLB 	5H 			//15CF 	1025
		STR 	35H 			//15D0 	10B5
		MOVLB 	1H 			//15D1 	1021
		LDWI 	40H 			//15D2 	0040
		CLRF 	46H 			//15D3 	11C6
		CLRF 	47H 			//15D4 	11C7
		STR 	48H 			//15D5 	10C8
		MOVLB 	5H 			//15D6 	1025
		LDR 	39H, 0H 			//15D7 	1839
		MOVLB 	1H 			//15D8 	1021
		STR 	40H 			//15D9 	10C0
		MOVLB 	5H 			//15DA 	1025
		LDR 	3AH, 0H 			//15DB 	183A
		MOVLB 	1H 			//15DC 	1021
		STR 	41H 			//15DD 	10C1
		MOVLB 	5H 			//15DE 	1025
		LDR 	3BH, 0H 			//15DF 	183B
		MOVLB 	1H 			//15E0 	1021
		STR 	42H 			//15E1 	10C2
		MOVLB 	5H 			//15E2 	1025
		LDR 	3CH, 0H 			//15E3 	183C
		MOVLB 	1H 			//15E4 	1021
		STR 	43H 			//15E5 	10C3
		MOVLB 	5H 			//15E6 	1025
		LDR 	3DH, 0H 			//15E7 	183D
		MOVLB 	1H 			//15E8 	1021
		STR 	44H 			//15E9 	10C4
		MOVLB 	5H 			//15EA 	1025
		LDR 	3EH, 0H 			//15EB 	183E
		MOVLB 	1H 			//15EC 	1021
		STR 	45H 			//15ED 	10C5
		RET 					//15EE 	1008
		LDR 	6BH, 0H 			//15EF 	186B
		MOVLB 	5H 			//15F0 	1025
		STR 	2AH 			//15F1 	10AA
		MOVLB 	2H 			//15F2 	1022
		LDR 	6CH, 0H 			//15F3 	186C
		MOVLB 	5H 			//15F4 	1025
		STR 	2BH 			//15F5 	10AB
		MOVLB 	2H 			//15F6 	1022
		LDR 	6DH, 0H 			//15F7 	186D
		MOVLB 	5H 			//15F8 	1025
		STR 	2CH 			//15F9 	10AC
		MOVLB 	2H 			//15FA 	1022
		LDR 	6BH, 0H 			//15FB 	186B
		MOVLB 	1H 			//15FC 	1021
		STR 	40H 			//15FD 	10C0
		MOVLB 	2H 			//15FE 	1022
		LDR 	6CH, 0H 			//15FF 	186C
		MOVLB 	1H 			//1600 	1021
		STR 	41H 			//1601 	10C1
		MOVLB 	2H 			//1602 	1022
		LDR 	6DH, 0H 			//1603 	186D
		MOVLB 	1H 			//1604 	1021
		STR 	42H 			//1605 	10C2
		MOVLB 	0H 			//1606 	1020
		LDR 	52H, 0H 			//1607 	1852
		MOVLB 	1H 			//1608 	1021
		STR 	43H 			//1609 	10C3
		MOVLB 	0H 			//160A 	1020
		LDR 	53H, 0H 			//160B 	1853
		MOVLB 	1H 			//160C 	1021
		STR 	44H 			//160D 	10C4
		MOVLB 	0H 			//160E 	1020
		LDR 	54H, 0H 			//160F 	1854
		MOVLB 	1H 			//1610 	1021
		STR 	45H 			//1611 	10C5
		RET 					//1612 	1008
		LDR 	46H, 0H 			//1613 	1846
		MOVLB 	5H 			//1614 	1025
		STR 	30H 			//1615 	10B0
		MOVLB 	1H 			//1616 	1021
		LDR 	47H, 0H 			//1617 	1847
		MOVLB 	5H 			//1618 	1025
		STR 	31H 			//1619 	10B1
		MOVLB 	1H 			//161A 	1021
		LDR 	48H, 0H 			//161B 	1848
		MOVLB 	5H 			//161C 	1025
		STR 	32H 			//161D 	10B2
		LDR 	33H, 0H 			//161E 	1833
		MOVLB 	1H 			//161F 	1021
		STR 	55H 			//1620 	10D5
		MOVLB 	5H 			//1621 	1025
		LDR 	34H, 0H 			//1622 	1834
		MOVLB 	1H 			//1623 	1021
		STR 	56H 			//1624 	10D6
		MOVLB 	5H 			//1625 	1025
		LDR 	35H, 0H 			//1626 	1835
		MOVLB 	1H 			//1627 	1021
		STR 	57H 			//1628 	10D7
		MOVLB 	5H 			//1629 	1025
		LDR 	30H, 0H 			//162A 	1830
		MOVLB 	1H 			//162B 	1021
		STR 	58H 			//162C 	10D8
		MOVLB 	5H 			//162D 	1025
		LDR 	31H, 0H 			//162E 	1831
		MOVLB 	1H 			//162F 	1021
		STR 	59H 			//1630 	10D9
		MOVLB 	5H 			//1631 	1025
		LDR 	32H, 0H 			//1632 	1832
		MOVLB 	1H 			//1633 	1021
		STR 	5AH 			//1634 	10DA
		RET 					//1635 	1008
		LDR 	6BH, 0H 			//1636 	186B
		MOVLB 	1H 			//1637 	1021
		STR 	40H 			//1638 	10C0
		MOVLB 	2H 			//1639 	1022
		LDR 	6CH, 0H 			//163A 	186C
		MOVLB 	1H 			//163B 	1021
		STR 	41H 			//163C 	10C1
		MOVLB 	2H 			//163D 	1022
		LDR 	6DH, 0H 			//163E 	186D
		MOVLB 	1H 			//163F 	1021
		STR 	42H 			//1640 	10C2
		RET 					//1641 	1008
		LDR 	55H, 0H 			//1642 	1855
		MOVLB 	5H 			//1643 	1025
		STR 	2DH 			//1644 	10AD
		MOVLB 	1H 			//1645 	1021
		LDR 	56H, 0H 			//1646 	1856
		MOVLB 	5H 			//1647 	1025
		STR 	2EH 			//1648 	10AE
		MOVLB 	1H 			//1649 	1021
		LDR 	57H, 0H 			//164A 	1857
		MOVLB 	5H 			//164B 	1025
		STR 	2FH 			//164C 	10AF
		LDWI 	24H 			//164D 	0024
		MOVLB 	1H 			//164E 	1021
		STR 	55H 			//164F 	10D5
		LDWI 	74H 			//1650 	0074
		STR 	56H 			//1651 	10D6
		LDWI 	49H 			//1652 	0049
		STR 	57H 			//1653 	10D7
		MOVLB 	0H 			//1654 	1020
		LDR 	58H, 0H 			//1655 	1858
		MOVLB 	1H 			//1656 	1021
		STR 	58H 			//1657 	10D8
		MOVLB 	0H 			//1658 	1020
		LDR 	59H, 0H 			//1659 	1859
		MOVLB 	1H 			//165A 	1021
		STR 	59H 			//165B 	10D9
		MOVLB 	0H 			//165C 	1020
		LDR 	5AH, 0H 			//165D 	185A
		MOVLB 	1H 			//165E 	1021
		STR 	5AH 			//165F 	10DA
		RET 					//1660 	1008
		LDR 	55H, 0H 			//1661 	1855
		MOVLB 	5H 			//1662 	1025
		STR 	36H 			//1663 	10B6
		MOVLB 	1H 			//1664 	1021
		LDR 	56H, 0H 			//1665 	1856
		MOVLB 	5H 			//1666 	1025
		STR 	37H 			//1667 	10B7
		MOVLB 	1H 			//1668 	1021
		LDR 	57H, 0H 			//1669 	1857
		MOVLB 	5H 			//166A 	1025
		STR 	38H 			//166B 	10B8
		LDWI 	D7H 			//166C 	00D7
		MOVLB 	1H 			//166D 	1021
		STR 	55H 			//166E 	10D5
		LDWI 	23H 			//166F 	0023
		STR 	56H 			//1670 	10D6
		LDWI 	3CH 			//1671 	003C
		STR 	57H 			//1672 	10D7
		MOVLB 	5H 			//1673 	1025
		LDR 	36H, 0H 			//1674 	1836
		MOVLB 	1H 			//1675 	1021
		STR 	58H 			//1676 	10D8
		MOVLB 	5H 			//1677 	1025
		LDR 	37H, 0H 			//1678 	1837
		MOVLB 	1H 			//1679 	1021
		STR 	59H 			//167A 	10D9
		MOVLB 	5H 			//167B 	1025
		LDR 	38H, 0H 			//167C 	1838
		MOVLB 	1H 			//167D 	1021
		STR 	5AH 			//167E 	10DA
		RET 					//167F 	1008
		MOVLB 	1H 			//1680 	1021
		LDWI 	80H 			//1681 	0080
		CLRF 	34H 			//1682 	11B4
		STR 	35H 			//1683 	10B5
		LDWI 	BFH 			//1684 	00BF
		STR 	36H 			//1685 	10B6
		MOVLB 	0H 			//1686 	1020
		LDR 	5BH, 0H 			//1687 	185B
		MOVLB 	1H 			//1688 	1021
		STR 	55H 			//1689 	10D5
		MOVLB 	0H 			//168A 	1020
		LDR 	5CH, 0H 			//168B 	185C
		MOVLB 	1H 			//168C 	1021
		STR 	56H 			//168D 	10D6
		MOVLB 	0H 			//168E 	1020
		LDR 	5DH, 0H 			//168F 	185D
		MOVLB 	1H 			//1690 	1021
		STR 	57H 			//1691 	10D7
		MOVLB 	5H 			//1692 	1025
		LDR 	2DH, 0H 			//1693 	182D
		MOVLB 	1H 			//1694 	1021
		STR 	58H 			//1695 	10D8
		MOVLB 	5H 			//1696 	1025
		LDR 	2EH, 0H 			//1697 	182E
		MOVLB 	1H 			//1698 	1021
		STR 	59H 			//1699 	10D9
		MOVLB 	5H 			//169A 	1025
		LDR 	2FH, 0H 			//169B 	182F
		MOVLB 	1H 			//169C 	1021
		STR 	5AH 			//169D 	10DA
		RET 					//169E 	1008
		LDR 	55H, 0H 			//169F 	1855
		MOVLB 	5H 			//16A0 	1025
		STR 	3CH 			//16A1 	10BC
		MOVLB 	1H 			//16A2 	1021
		LDR 	56H, 0H 			//16A3 	1856
		MOVLB 	5H 			//16A4 	1025
		STR 	3DH 			//16A5 	10BD
		MOVLB 	1H 			//16A6 	1021
		LDR 	57H, 0H 			//16A7 	1857
		MOVLB 	5H 			//16A8 	1025
		STR 	3EH 			//16A9 	10BE
		MOVLB 	1H 			//16AA 	1021
		LDWI 	80H 			//16AB 	0080
		CLRF 	55H 			//16AC 	11D5
		STR 	56H 			//16AD 	10D6
		LDWI 	45H 			//16AE 	0045
		STR 	57H 			//16AF 	10D7
		LDWI 	40H 			//16B0 	0040
		CLRF 	46H 			//16B1 	11C6
		CLRF 	47H 			//16B2 	11C7
		STR 	48H 			//16B3 	10C8
		MOVLB 	0H 			//16B4 	1020
		LDR 	6DH, 0H 			//16B5 	186D
		MOVLB 	1H 			//16B6 	1021
		STR 	29H 			//16B7 	10A9
		MOVLB 	0H 			//16B8 	1020
		LDR 	6CH, 0H 			//16B9 	186C
		MOVLB 	1H 			//16BA 	1021
		STR 	28H 			//16BB 	10A8
		RET 					//16BC 	1008
		LDR 	55H, 0H 			//16BD 	1855
		MOVLB 	5H 			//16BE 	1025
		STR 	39H 			//16BF 	10B9
		MOVLB 	1H 			//16C0 	1021
		LDR 	56H, 0H 			//16C1 	1856
		MOVLB 	5H 			//16C2 	1025
		STR 	3AH 			//16C3 	10BA
		MOVLB 	1H 			//16C4 	1021
		LDR 	57H, 0H 			//16C5 	1857
		MOVLB 	5H 			//16C6 	1025
		STR 	3BH 			//16C7 	10BB
		MOVLB 	1H 			//16C8 	1021
		LDWI 	80H 			//16C9 	0080
		CLRF 	55H 			//16CA 	11D5
		STR 	56H 			//16CB 	10D6
		LDWI 	45H 			//16CC 	0045
		STR 	57H 			//16CD 	10D7
		LDWI 	40H 			//16CE 	0040
		CLRF 	46H 			//16CF 	11C6
		CLRF 	47H 			//16D0 	11C7
		STR 	48H 			//16D1 	10C8
		MOVLB 	0H 			//16D2 	1020
		LDR 	6BH, 0H 			//16D3 	186B
		MOVLB 	1H 			//16D4 	1021
		STR 	29H 			//16D5 	10A9
		MOVLB 	0H 			//16D6 	1020
		LDR 	6AH, 0H 			//16D7 	186A
		MOVLB 	1H 			//16D8 	1021
		STR 	28H 			//16D9 	10A8
		RET 					//16DA 	1008
		LDR 	46H, 0H 			//16DB 	1846
		STR 	58H 			//16DC 	10D8
		LDR 	47H, 0H 			//16DD 	1847
		STR 	59H 			//16DE 	10D9
		LDR 	48H, 0H 			//16DF 	1848
		STR 	5AH 			//16E0 	10DA
		RET 					//16E1 	1008
		LDR 	2EH, 0H 			//16E2 	182E
		STR 	55H 			//16E3 	10D5
		LDR 	2FH, 0H 			//16E4 	182F
		STR 	56H 			//16E5 	10D6
		LDR 	30H, 0H 			//16E6 	1830
		STR 	57H 			//16E7 	10D7
		MOVLB 	5H 			//16E8 	1025
		LDR 	24H, 0H 			//16E9 	1824
		MOVLB 	1H 			//16EA 	1021
		STR 	58H 			//16EB 	10D8
		MOVLB 	5H 			//16EC 	1025
		LDR 	25H, 0H 			//16ED 	1825
		MOVLB 	1H 			//16EE 	1021
		STR 	59H 			//16EF 	10D9
		MOVLB 	5H 			//16F0 	1025
		LDR 	26H, 0H 			//16F1 	1826
		MOVLB 	1H 			//16F2 	1021
		STR 	5AH 			//16F3 	10DA
		RET 					//16F4 	1008
		LDWI 	A0H 			//16F5 	00A0
		CLRF 	55H 			//16F6 	11D5
		STR 	56H 			//16F7 	10D6
		LDWI 	41H 			//16F8 	0041
		STR 	57H 			//16F9 	10D7
		MOVLB 	5H 			//16FA 	1025
		LDR 	27H, 0H 			//16FB 	1827
		MOVLB 	1H 			//16FC 	1021
		STR 	46H 			//16FD 	10C6
		MOVLB 	5H 			//16FE 	1025
		LDR 	28H, 0H 			//16FF 	1828
		MOVLB 	1H 			//1700 	1021
		STR 	47H 			//1701 	10C7
		MOVLB 	5H 			//1702 	1025
		LDR 	29H, 0H 			//1703 	1829
		MOVLB 	1H 			//1704 	1021
		STR 	48H 			//1705 	10C8
		RET 					//1706 	1008
		LDR 	28H, 0H 			//1707 	1828
		STR 	49H 			//1708 	10C9
		LDR 	29H, 0H 			//1709 	1829
		STR 	4AH 			//170A 	10CA
		LDR 	2AH, 0H 			//170B 	182A
		STR 	4BH 			//170C 	10CB
		RET 					//170D 	1008
		LDR 	40H, 0H 			//170E 	1840
		MOVLB 	5H 			//170F 	1025
		STR 	24H 			//1710 	10A4
		MOVLB 	1H 			//1711 	1021
		LDR 	41H, 0H 			//1712 	1841
		MOVLB 	5H 			//1713 	1025
		STR 	25H 			//1714 	10A5
		MOVLB 	1H 			//1715 	1021
		LDR 	42H, 0H 			//1716 	1842
		MOVLB 	5H 			//1717 	1025
		STR 	26H 			//1718 	10A6
		MOVLB 	2H 			//1719 	1022
		LDR 	6EH, 0H 			//171A 	186E
		RET 					//171B 	1008
		MOVLB 	0H 			//171C 	1020
		LDR 	55H, 0H 			//171D 	1855
		MOVLB 	1H 			//171E 	1021
		STR 	34H 			//171F 	10B4
		MOVLB 	0H 			//1720 	1020
		LDR 	56H, 0H 			//1721 	1856
		MOVLB 	1H 			//1722 	1021
		STR 	35H 			//1723 	10B5
		MOVLB 	0H 			//1724 	1020
		LDR 	57H, 0H 			//1725 	1857
		MOVLB 	1H 			//1726 	1021
		STR 	36H 			//1727 	10B6
		MOVLB 	3H 			//1728 	1023
		RET 					//1729 	1008
		LDWI 	40H 			//172A 	0040
		CLRF 	46H 			//172B 	11C6
		CLRF 	47H 			//172C 	11C7
		STR 	48H 			//172D 	10C8
		MOVLB 	0H 			//172E 	1020
		LDR 	6FH, 0H 			//172F 	186F
		MOVLB 	1H 			//1730 	1021
		STR 	29H 			//1731 	10A9
		MOVLB 	0H 			//1732 	1020
		LDR 	6EH, 0H 			//1733 	186E
		MOVLB 	1H 			//1734 	1021
		STR 	28H 			//1735 	10A8
		RET 					//1736 	1008
		LDR 	55H, 0H 			//1737 	1855
		MOVLB 	3H 			//1738 	1023
		STR 	37H 			//1739 	10B7
		MOVLB 	1H 			//173A 	1021
		LDR 	56H, 0H 			//173B 	1856
		MOVLB 	3H 			//173C 	1023
		STR 	38H 			//173D 	10B8
		MOVLB 	1H 			//173E 	1021
		LDR 	57H, 0H 			//173F 	1857
		MOVLB 	3H 			//1740 	1023
		STR 	39H 			//1741 	10B9
		RET 					//1742 	1008
		LDR 	34H, 0H 			//1743 	1834
		MOVLB 	2H 			//1744 	1022
		STR 	6BH 			//1745 	10EB
		MOVLB 	1H 			//1746 	1021
		LDR 	35H, 0H 			//1747 	1835
		MOVLB 	2H 			//1748 	1022
		STR 	6CH 			//1749 	10EC
		MOVLB 	1H 			//174A 	1021
		LDR 	36H, 0H 			//174B 	1836
		MOVLB 	2H 			//174C 	1022
		STR 	6DH 			//174D 	10ED
		RET 					//174E 	1008
		LDR 	55H, 0H 			//174F 	1855
		MOVLB 	5H 			//1750 	1025
		STR 	27H 			//1751 	10A7
		MOVLB 	1H 			//1752 	1021
		LDR 	56H, 0H 			//1753 	1856
		MOVLB 	5H 			//1754 	1025
		STR 	28H 			//1755 	10A8
		MOVLB 	1H 			//1756 	1021
		LDR 	57H, 0H 			//1757 	1857
		MOVLB 	5H 			//1758 	1025
		STR 	29H 			//1759 	10A9
		RET 					//175A 	1008
		LDWI 	F4H 			//175B 	00F4
		MOVLB 	2H 			//175C 	1022
		STR 	20H 			//175D 	10A0
		LDWI 	1H 			//175E 	0001
		STR 	21H 			//175F 	10A1
		RET 					//1760 	1008
		STR 	21H 			//1761 	10A1
		LDWI 	CCH 			//1762 	00CC
		STR 	22H 			//1763 	10A2
		LDWI 	A0H 			//1764 	00A0
		STR 	23H 			//1765 	10A3
		LDR 	6BH, 0H 			//1766 	186B
		STR 	24H 			//1767 	10A4
		LDR 	6CH, 0H 			//1768 	186C
		STR 	25H 			//1769 	10A5
		LDR 	6DH, 0H 			//176A 	186D
		STR 	26H 			//176B 	10A6
		RET 					//176C 	1008
		LDR 	55H, 0H 			//176D 	1855
		STR 	37H 			//176E 	10B7
		LDR 	56H, 0H 			//176F 	1856
		STR 	38H 			//1770 	10B8
		LDR 	57H, 0H 			//1771 	1857
		STR 	39H 			//1772 	10B9
		RET 					//1773 	1008
		MOVLB 	2H 			//1774 	1022
		ADDWFC 	21H, 0H 		//1775 	0D21
		STR 	4BH 			//1776 	10CB
		LSRF 	4BH, 1H 		//1777 	06CB
		RRR 	4AH, 1H 			//1778 	1CCA
		LDR 	4AH, 0H 			//1779 	184A
		MOVLB 	0H 			//177A 	1020
		RET 					//177B 	1008
		MOVLB 	2H 			//177C 	1022
		STR 	4BH 			//177D 	10CB
		LDWI 	0H 			//177E 	0000
		BTSC 	4BH, 7H 		//177F 	2BCB
		LDWI 	FFH 			//1780 	00FF
		STR 	4CH 			//1781 	10CC
		STR 	4DH 			//1782 	10CD
		LDR 	4DH, 0H 			//1783 	184D
		SUBWR 	64H, 0H 		//1784 	1264
		RET 					//1785 	1008
		LDR 	2EH, 0H 			//1786 	182E
		STR 	49H 			//1787 	10C9
		LDR 	2FH, 0H 			//1788 	182F
		STR 	4AH 			//1789 	10CA
		LDR 	30H, 0H 			//178A 	1830
		STR 	4BH 			//178B 	10CB
		RET 					//178C 	1008
		STR 	25H 			//178D 	10A5
		LDWI 	4H 			//178E 	0004
		STR 	26H 			//178F 	10A6
		CLRF 	27H 			//1790 	11A7
		RET 					//1791 	1008
		LDWI 	DFH 			//1792 	00DF
		MOVLB 	2H 			//1793 	1022
		STR 	24H 			//1794 	10A4
		RETW 	A0H 			//1795 	04A0
		LDWI 	E9H 			//1796 	00E9
		MOVLB 	2H 			//1797 	1022
		STR 	24H 			//1798 	10A4
		RETW 	A0H 			//1799 	04A0
		LDR 	21H, 0H 			//179A 	1821
		MOVLB 	0H 			//179B 	1020
		STR 	6FH 			//179C 	10EF
		MOVLB 	2H 			//179D 	1022
		LDR 	20H, 0H 			//179E 	1820
		MOVLB 	0H 			//179F 	1020
		STR 	6EH 			//17A0 	10EE
		MOVLB 	3H 			//17A1 	1023
		RET 					//17A2 	1008
		LDWI 	EEH 			//17A3 	00EE
		MOVLB 	2H 			//17A4 	1022
		STR 	24H 			//17A5 	10A4
		RETW 	A0H 			//17A6 	04A0
		LDR 	21H, 0H 			//17A7 	1821
		MOVLB 	0H 			//17A8 	1020
		STR 	6BH 			//17A9 	10EB
		MOVLB 	2H 			//17AA 	1022
		LDR 	20H, 0H 			//17AB 	1820
		MOVLB 	0H 			//17AC 	1020
		STR 	6AH 			//17AD 	10EA
		MOVLB 	3H 			//17AE 	1023
		RET 					//17AF 	1008
		LDR 	21H, 0H 			//17B0 	1821
		MOVLB 	0H 			//17B1 	1020
		STR 	6DH 			//17B2 	10ED
		MOVLB 	2H 			//17B3 	1022
		LDR 	20H, 0H 			//17B4 	1820
		MOVLB 	0H 			//17B5 	1020
		STR 	6CH 			//17B6 	10EC
		MOVLB 	3H 			//17B7 	1023
		RET 					//17B8 	1008
		MOVLB 	1H 			//17B9 	1021
		LDWI 	1CH 			//17BA 	001C
		CLRF 	55H 			//17BB 	11D5
		STR 	56H 			//17BC 	10D6
		LDWI 	42H 			//17BD 	0042
		STR 	57H 			//17BE 	10D7
		MOVLB 	3H 			//17BF 	1023
		RET 					//17C0 	1008
		XORWI 	80H 			//17C1 	0A80
		MOVLB 	2H 			//17C2 	1022
		STR 	4AH 			//17C3 	10CA
		LDWI 	80H 			//17C4 	0080
		SUBWR 	4AH, 0H 		//17C5 	124A
		RET 					//17C6 	1008
		MOVLB 	5H 			//17C7 	1025
		CLRF 	63H 			//17C8 	11E3
		CLRF 	64H 			//17C9 	11E4
		CLRF 	61H 			//17CA 	11E1
		CLRF 	62H 			//17CB 	11E2
		MOVLB 	0H 			//17CC 	1020
		RET 					//17CD 	1008
		LDR 	40H, 0H 			//17CE 	1840
		STR 	49H 			//17CF 	10C9
		LDR 	41H, 0H 			//17D0 	1841
		STR 	4AH 			//17D1 	10CA
		LDR 	42H, 0H 			//17D2 	1842
		STR 	4BH 			//17D3 	10CB
		RET 					//17D4 	1008
		LDR 	5DH, 0H 			//17D5 	185D
		STR 	61H 			//17D6 	10E1
		LDR 	5EH, 0H 			//17D7 	185E
		STR 	62H 			//17D8 	10E2
		LDR 	5FH, 0H 			//17D9 	185F
		STR 	63H 			//17DA 	10E3
		RET 					//17DB 	1008
		MOVLB 	5H 			//17DC 	1025
		CLRF 	67H 			//17DD 	11E7
		CLRF 	68H 			//17DE 	11E8
		CLRF 	65H 			//17DF 	11E5
		CLRF 	66H 			//17E0 	11E6
		MOVLB 	0H 			//17E1 	1020
		RET 					//17E2 	1008
		MOVLB 	2H 			//17E3 	1022
		LDR 	6FH, 0H 			//17E4 	186F
		XORWI 	80H 			//17E5 	0A80
		STR 	4AH 			//17E6 	10CA
		LDWI 	80H 			//17E7 	0080
		SUBWR 	4AH, 0H 		//17E8 	124A
		RET 					//17E9 	1008
		MOVLB 	2H 			//17EA 	1022
		XORWR 	61H, 0H 		//17EB 	1661
		IORWR 	62H, 0H 		//17EC 	1462
		IORWR 	63H, 0H 		//17ED 	1463
		IORWR 	64H, 0H 		//17EE 	1464
		RET 					//17EF 	1008
		LDWI 	FFH 			//17F0 	00FF
		MOVLB 	2H 			//17F1 	1022
		ADDWFC 	6FH, 0H 		//17F2 	0D6F
		MOVLB 	1H 			//17F3 	1021
		STR 	2FH 			//17F4 	10AF
		RET 					//17F5 	1008
		LDWI 	FFH 			//17F6 	00FF
		XORWR 	37H, 1H 		//17F7 	16B7
		XORWR 	38H, 1H 		//17F8 	16B8
		XORWR 	39H, 1H 		//17F9 	16B9
		INCR 	37H, 1H 		//17FA 	1AB7
		RET 					//17FB 	1008
		CLRF 	55H 			//17FC 	11D5
		ORG		17FDH
		CLRF 	56H 			//17FD 	11D6
		CLRF 	57H 			//17FE 	11D7
		RET 					//17FF 	1008
		ORG		192FH
		LDWI 	24H 			//192F 	0024
		STR 	35H 			//1930 	10B5
		LCALL 	750H 			//1931 	3750
		MOVLP 	19H 			//1932 	0199
		LDR 	49H, 0H 			//1933 	1849
		BTSC 	3H, 2H 			//1934 	2903
		LJUMP 	5DDH 			//1935 	3DDD
		LDWI 	25H 			//1936 	0025
		XORWR 	49H, 0H 		//1937 	1649
		BTSC 	3H, 2H 			//1938 	2903
		LJUMP 	141H 			//1939 	3941
		LCALL 	7E5H 			//193A 	37E5
		MOVLP 	19H 			//193B 	0199
		STR 	1H 			//193C 	1081
		INCR 	20H, 1H 		//193D 	1AA0
		BTSC 	3H, 2H 			//193E 	2903
		INCR 	21H, 1H 		//193F 	1AA1
		LJUMP 	131H 			//1940 	3931
		CLRF 	42H 			//1941 	11C2
		CLRF 	43H 			//1942 	11C3
		CLRF 	3EH 			//1943 	11BE
		CLRF 	3FH 			//1944 	11BF
		LJUMP 	14AH 			//1945 	394A
		BSR 	3EH, 2H 			//1946 	253E
		INCR 	22H, 1H 		//1947 	1AA2
		BTSC 	3H, 2H 			//1948 	2903
		INCR 	23H, 1H 		//1949 	1AA3
		LCALL 	792H 			//194A 	3792
		MOVLP 	19H 			//194B 	0199
		XORWI 	30H 			//194C 	0A30
		BTSC 	3H, 2H 			//194D 	2903
		LJUMP 	146H 			//194E 	3946
		LJUMP 	150H 			//194F 	3950
		LCALL 	792H 			//1950 	3792
		MOVLP 	19H 			//1951 	0199
		LCALL 	658H 			//1952 	3658
		MOVLP 	19H 			//1953 	0199
		BTSS 	3H, 0H 			//1954 	2C03
		LJUMP 	188H 			//1955 	3988
		MOVLB 	2H 			//1956 	1022
		CLRF 	42H 			//1957 	11C2
		CLRF 	43H 			//1958 	11C3
		LDWI 	AH 			//1959 	000A
		MOVLB 	1H 			//195A 	1021
		STR 	2EH 			//195B 	10AE
		CLRF 	2FH 			//195C 	11AF
		MOVLB 	2H 			//195D 	1022
		LDR 	43H, 0H 			//195E 	1843
		MOVLB 	1H 			//195F 	1021
		STR 	31H 			//1960 	10B1
		MOVLB 	2H 			//1961 	1022
		LDR 	42H, 0H 			//1962 	1842
		MOVLB 	1H 			//1963 	1021
		STR 	30H 			//1964 	10B0
		MOVLP 	DH 			//1965 	018D
		LCALL 	5E9H 			//1966 	35E9
		MOVLP 	19H 			//1967 	0199
		LDR 	2FH, 0H 			//1968 	182F
		MOVLB 	2H 			//1969 	1022
		STR 	43H 			//196A 	10C3
		MOVLB 	1H 			//196B 	1021
		LDR 	2EH, 0H 			//196C 	182E
		MOVLB 	2H 			//196D 	1022
		STR 	42H 			//196E 	10C2
		LCALL 	792H 			//196F 	3792
		MOVLP 	19H 			//1970 	0199
		ADDWI 	D0H 			//1971 	0ED0
		MOVLB 	1H 			//1972 	1021
		STR 	6AH 			//1973 	10EA
		LDWI 	FFH 			//1974 	00FF
		BTSC 	3H, 0H 			//1975 	2803
		LDWI 	0H 			//1976 	0000
		STR 	6BH 			//1977 	10EB
		LDR 	6AH, 0H 			//1978 	186A
		MOVLB 	2H 			//1979 	1022
		ADDWR 	42H, 1H 		//197A 	17C2
		MOVLB 	1H 			//197B 	1021
		LDR 	6BH, 0H 			//197C 	186B
		MOVLB 	2H 			//197D 	1022
		ADDWFC 	43H, 1H 		//197E 	0DC3
		INCR 	22H, 1H 		//197F 	1AA2
		BTSC 	3H, 2H 			//1980 	2903
		INCR 	23H, 1H 		//1981 	1AA3
		LCALL 	792H 			//1982 	3792
		MOVLP 	19H 			//1983 	0199
		LCALL 	658H 			//1984 	3658
		MOVLP 	19H 			//1985 	0199
		BTSC 	3H, 0H 			//1986 	2803
		LJUMP 	159H 			//1987 	3959
		MOVLB 	2H 			//1988 	1022
		LDR 	22H, 0H 			//1989 	1822
		STR 	4H 			//198A 	1084
		LDR 	23H, 0H 			//198B 	1823
		STR 	5H 			//198C 	1085
		MOVIW 	FSR0++ 		//198D 	1012
		XORWI 	2EH 			//198E 	0A2E
		BTSS 	3H, 2H 			//198F 	2D03
		LJUMP 	1C3H 			//1990 	39C3
		BSR 	3FH, 6H 			//1991 	273F
		INCR 	22H, 1H 		//1992 	1AA2
		BTSC 	3H, 2H 			//1993 	2903
		INCR 	23H, 1H 		//1994 	1AA3
		CLRF 	47H 			//1995 	11C7
		CLRF 	48H 			//1996 	11C8
		LCALL 	792H 			//1997 	3792
		MOVLP 	19H 			//1998 	0199
		LCALL 	658H 			//1999 	3658
		MOVLP 	19H 			//199A 	0199
		BTSS 	3H, 0H 			//199B 	2C03
		LJUMP 	1C9H 			//199C 	39C9
		MOVLB 	2H 			//199D 	1022
		LCALL 	792H 			//199E 	3792
		MOVLB 	1H 			//199F 	1021
		STR 	6AH 			//19A0 	10EA
		CLRF 	6BH 			//19A1 	11EB
		MOVLB 	2H 			//19A2 	1022
		LDR 	48H, 0H 			//19A3 	1848
		MOVLB 	1H 			//19A4 	1021
		STR 	2FH 			//19A5 	10AF
		MOVLB 	2H 			//19A6 	1022
		LDR 	47H, 0H 			//19A7 	1847
		MOVLB 	1H 			//19A8 	1021
		STR 	2EH 			//19A9 	10AE
		LDWI 	AH 			//19AA 	000A
		STR 	30H 			//19AB 	10B0
		CLRF 	31H 			//19AC 	11B1
		MOVLP 	DH 			//19AD 	018D
		LCALL 	5E9H 			//19AE 	35E9
		MOVLP 	19H 			//19AF 	0199
		LDR 	6AH, 0H 			//19B0 	186A
		ADDWR 	2EH, 0H 		//19B1 	172E
		STR 	6CH 			//19B2 	10EC
		LDR 	6BH, 0H 			//19B3 	186B
		ADDWFC 	2FH, 0H 		//19B4 	0D2F
		STR 	6DH 			//19B5 	10ED
		LDR 	6CH, 0H 			//19B6 	186C
		ADDWI 	D0H 			//19B7 	0ED0
		MOVLB 	2H 			//19B8 	1022
		STR 	47H 			//19B9 	10C7
		LDWI 	FFH 			//19BA 	00FF
		MOVLB 	1H 			//19BB 	1021
		ADDWFC 	6DH, 0H 		//19BC 	0D6D
		MOVLB 	2H 			//19BD 	1022
		STR 	48H 			//19BE 	10C8
		INCR 	22H, 1H 		//19BF 	1AA2
		BTSC 	3H, 2H 			//19C0 	2903
		INCR 	23H, 1H 		//19C1 	1AA3
		LJUMP 	197H 			//19C2 	3997
		CLRF 	47H 			//19C3 	11C7
		CLRF 	48H 			//19C4 	11C8
		BSR 	3FH, 4H 			//19C5 	263F
		LJUMP 	1C9H 			//19C6 	39C9
		BSR 	3FH, 2H 			//19C7 	253F
		LJUMP 	1D9H 			//19C8 	39D9
		MOVLB 	2H 			//19C9 	1022
		LCALL 	750H 			//19CA 	3750
		MOVLP 	19H 			//19CB 	0199
		XORWI 	0H 			//19CC 	0A00
		BTSC 	3H, 2H 			//19CD 	2903
		LJUMP 	5DDH 			//19CE 	3DDD
		XORWI 	64H 			//19CF 	0A64
		BTSC 	3H, 2H 			//19D0 	2903
		LJUMP 	1D9H 			//19D1 	39D9
		XORWI 	2H 			//19D2 	0A02
		BTSC 	3H, 2H 			//19D3 	2903
		LJUMP 	1C7H 			//19D4 	39C7
		XORWI 	FH 			//19D5 	0A0F
		BTSC 	3H, 2H 			//19D6 	2903
		LJUMP 	1D9H 			//19D7 	39D9
		LJUMP 	131H 			//19D8 	3931
		MOVLB 	1H 			//19D9 	1021
		LDWI 	7H 			//19DA 	0007
		CLRF 	6AH 			//19DB 	11EA
		MOVLB 	2H 			//19DC 	1022
		ANDWR 	3FH, 0H 		//19DD 	153F
		MOVLB 	1H 			//19DE 	1021
		STR 	6BH 			//19DF 	10EB
		LDR 	6AH, 0H 			//19E0 	186A
		IORWR 	6BH, 0H 		//19E1 	146B
		BTSC 	3H, 2H 			//19E2 	2903
		LJUMP 	4C9H 			//19E3 	3CC9
		MOVLB 	2H 			//19E4 	1022
		BTSS 	3FH, 4H 		//19E5 	2E3F
		LJUMP 	1EAH 			//19E6 	39EA
		LDWI 	6H 			//19E7 	0006
		STR 	47H 			//19E8 	10C7
		CLRF 	48H 			//19E9 	11C8
		LDR 	35H, 0H 			//19EA 	1835
		STR 	6H 			//19EB 	1086
		LDWI 	1H 			//19EC 	0001
		STR 	7H 			//19ED 	1087
		MOVIW 	0H[1] 			//19EE 	0F40
		STR 	44H 			//19EF 	10C4
		MOVIW 	1H[1] 			//19F0 	0F41
		STR 	45H 			//19F1 	10C5
		MOVIW 	2H[1] 			//19F2 	0F42
		STR 	46H 			//19F3 	10C6
		LDWI 	3H 			//19F4 	0003
		ADDWR 	35H, 1H 		//19F5 	17B5
		LDR 	44H, 0H 			//19F6 	1844
		MOVLB 	1H 			//19F7 	1021
		STR 	32H 			//19F8 	10B2
		MOVLB 	2H 			//19F9 	1022
		LDR 	45H, 0H 			//19FA 	1845
		MOVLB 	1H 			//19FB 	1021
		STR 	33H 			//19FC 	10B3
		MOVLB 	2H 			//19FD 	1022
		LDR 	46H, 0H 			//19FE 	1846
		LCALL 	7EBH 			//19FF 	37EB
		MOVLP 	CH 			//1A00 	018C
		LCALL 	49AH 			//1A01 	349A
		MOVLP 	19H 			//1A02 	0199
		BTSC 	3H, 0H 			//1A03 	2803
		LJUMP 	220H 			//1A04 	3A20
		MOVLB 	2H 			//1A05 	1022
		LDR 	44H, 0H 			//1A06 	1844
		MOVLB 	1H 			//1A07 	1021
		STR 	20H 			//1A08 	10A0
		MOVLB 	2H 			//1A09 	1022
		LDR 	45H, 0H 			//1A0A 	1845
		MOVLB 	1H 			//1A0B 	1021
		STR 	21H 			//1A0C 	10A1
		MOVLB 	2H 			//1A0D 	1022
		LDR 	46H, 0H 			//1A0E 	1846
		MOVLB 	1H 			//1A0F 	1021
		STR 	22H 			//1A10 	10A2
		LCALL 	667H 			//1A11 	3667
		MOVLP 	19H 			//1A12 	0199
		LDR 	20H, 0H 			//1A13 	1820
		MOVLB 	2H 			//1A14 	1022
		STR 	44H 			//1A15 	10C4
		MOVLB 	1H 			//1A16 	1021
		LDR 	21H, 0H 			//1A17 	1821
		MOVLB 	2H 			//1A18 	1022
		STR 	45H 			//1A19 	10C5
		MOVLB 	1H 			//1A1A 	1021
		LDR 	22H, 0H 			//1A1B 	1822
		MOVLB 	2H 			//1A1C 	1022
		STR 	46H 			//1A1D 	10C6
		LDWI 	3H 			//1A1E 	0003
		IORWR 	3EH, 1H 		//1A1F 	14BE
		MOVLB 	2H 			//1A20 	1022
		CLRF 	40H 			//1A21 	11C0
		CLRF 	41H 			//1A22 	11C1
		LDR 	46H, 0H 			//1A23 	1846
		IORWR 	45H, 0H 		//1A24 	1445
		IORWR 	44H, 0H 		//1A25 	1444
		BTSC 	3H, 2H 			//1A26 	2903
		LJUMP 	2BBH 			//1A27 	3ABB
		LDWI 	44H 			//1A28 	0044
		LCALL 	7DCH 			//1A29 	37DC
		MOVLP 	19H 			//1A2A 	0199
		MOVIW 	2H[1] 			//1A2B 	0F42
		STR 	6CH 			//1A2C 	10EC
		MOVIW 	3H[1] 			//1A2D 	0F43
		STR 	6DH 			//1A2E 	10ED
		LDWI 	FH 			//1A2F 	000F
		LSRF 	6DH, 1H 		//1A30 	06ED
		RRR 	6CH, 1H 			//1A31 	1CEC
		RRR 	6BH, 1H 			//1A32 	1CEB
		RRR 	6AH, 1H 			//1A33 	1CEA
		DECRSZ 	9H, 1H 		//1A34 	1B89
		LJUMP 	230H 			//1A35 	3A30
		LDR 	6BH, 0H 			//1A36 	186B
		MOVLB 	2H 			//1A37 	1022
		STR 	41H 			//1A38 	10C1
		MOVLB 	1H 			//1A39 	1021
		LDR 	6AH, 0H 			//1A3A 	186A
		MOVLB 	2H 			//1A3B 	1022
		STR 	40H 			//1A3C 	10C0
		LDWI 	82H 			//1A3D 	0082
		CLRF 	41H 			//1A3E 	11C1
		ADDWR 	40H, 1H 		//1A3F 	17C0
		BTSS 	3H, 0H 			//1A40 	2C03
		DECR 	41H, 1H 		//1A41 	13C1
		LDWI 	FFH 			//1A42 	00FF
		ADDWR 	40H, 1H 		//1A43 	17C0
		BTSS 	3H, 0H 			//1A44 	2C03
		DECR 	41H, 1H 		//1A45 	13C1
		LDWI 	3H 			//1A46 	0003
		MOVLB 	1H 			//1A47 	1021
		STR 	2EH 			//1A48 	10AE
		CLRF 	2FH 			//1A49 	11AF
		MOVLB 	2H 			//1A4A 	1022
		LDR 	41H, 0H 			//1A4B 	1841
		MOVLB 	1H 			//1A4C 	1021
		STR 	31H 			//1A4D 	10B1
		MOVLB 	2H 			//1A4E 	1022
		LDR 	40H, 0H 			//1A4F 	1840
		MOVLB 	1H 			//1A50 	1021
		STR 	30H 			//1A51 	10B0
		MOVLP 	DH 			//1A52 	018D
		LCALL 	5E9H 			//1A53 	35E9
		MOVLP 	19H 			//1A54 	0199
		LDR 	2FH, 0H 			//1A55 	182F
		MOVLB 	2H 			//1A56 	1022
		STR 	41H 			//1A57 	10C1
		MOVLB 	1H 			//1A58 	1021
		LDR 	2EH, 0H 			//1A59 	182E
		MOVLB 	2H 			//1A5A 	1022
		STR 	40H 			//1A5B 	10C0
		LDWI 	AH 			//1A5C 	000A
		MOVLB 	1H 			//1A5D 	1021
		STR 	26H 			//1A5E 	10A6
		CLRF 	27H 			//1A5F 	11A7
		MOVLB 	2H 			//1A60 	1022
		LDR 	41H, 0H 			//1A61 	1841
		MOVLB 	1H 			//1A62 	1021
		STR 	29H 			//1A63 	10A9
		MOVLB 	2H 			//1A64 	1022
		LDR 	40H, 0H 			//1A65 	1840
		MOVLB 	1H 			//1A66 	1021
		STR 	28H 			//1A67 	10A8
		MOVLP 	15H 			//1A68 	0195
		LCALL 	513H 			//1A69 	3513
		MOVLP 	19H 			//1A6A 	0199
		LDR 	27H, 0H 			//1A6B 	1827
		MOVLB 	2H 			//1A6C 	1022
		STR 	41H 			//1A6D 	10C1
		MOVLB 	1H 			//1A6E 	1021
		LDR 	26H, 0H 			//1A6F 	1826
		MOVLB 	2H 			//1A70 	1022
		STR 	40H 			//1A71 	10C0
		BTSS 	41H, 7H 		//1A72 	2FC1
		LJUMP 	278H 			//1A73 	3A78
		LDWI 	FFH 			//1A74 	00FF
		ADDWR 	40H, 1H 		//1A75 	17C0
		BTSS 	3H, 0H 			//1A76 	2C03
		DECR 	41H, 1H 		//1A77 	13C1
		DECR 	40H, 0H 		//1A78 	1340
		XORWI 	FFH 			//1A79 	0AFF
		MOVLP 	DH 			//1A7A 	018D
		LCALL 	51AH 			//1A7B 	351A
		MOVLP 	19H 			//1A7C 	0199
		LCALL 	770H 			//1A7D 	3770
		MOVLP 	19H 			//1A7E 	0199
		LCALL 	7CDH 			//1A7F 	37CD
		MOVLB 	2H 			//1A80 	1022
		LDR 	36H, 0H 			//1A81 	1836
		MOVLB 	1H 			//1A82 	1021
		STR 	49H 			//1A83 	10C9
		MOVLB 	2H 			//1A84 	1022
		LDR 	37H, 0H 			//1A85 	1837
		MOVLB 	1H 			//1A86 	1021
		STR 	4AH 			//1A87 	10CA
		MOVLB 	2H 			//1A88 	1022
		LDR 	38H, 0H 			//1A89 	1838
		MOVLB 	1H 			//1A8A 	1021
		STR 	4BH 			//1A8B 	10CB
		MOVLP 	CH 			//1A8C 	018C
		LCALL 	42EH 			//1A8D 	342E
		MOVLP 	19H 			//1A8E 	0199
		LDR 	46H, 0H 			//1A8F 	1846
		MOVLB 	2H 			//1A90 	1022
		STR 	36H 			//1A91 	10B6
		MOVLB 	1H 			//1A92 	1021
		LDR 	47H, 0H 			//1A93 	1847
		MOVLB 	2H 			//1A94 	1022
		STR 	37H 			//1A95 	10B7
		MOVLB 	1H 			//1A96 	1021
		LDR 	48H, 0H 			//1A97 	1848
		MOVLB 	2H 			//1A98 	1022
		STR 	38H 			//1A99 	10B8
		LCALL 	764H 			//1A9A 	3764
		LDWI 	80H 			//1A9B 	0080
		CLRF 	35H 			//1A9C 	11B5
		STR 	36H 			//1A9D 	10B6
		LDWI 	3FH 			//1A9E 	003F
		STR 	37H 			//1A9F 	10B7
		MOVLP 	CH 			//1AA0 	018C
		LCALL 	49AH 			//1AA1 	349A
		MOVLP 	19H 			//1AA2 	0199
		BTSC 	3H, 0H 			//1AA3 	2803
		LJUMP 	2ABH 			//1AA4 	3AAB
		LDWI 	FFH 			//1AA5 	00FF
		MOVLB 	2H 			//1AA6 	1022
		ADDWR 	40H, 1H 		//1AA7 	17C0
		BTSS 	3H, 0H 			//1AA8 	2C03
		DECR 	41H, 1H 		//1AA9 	13C1
		LJUMP 	2BBH 			//1AAA 	3ABB
		MOVLB 	2H 			//1AAB 	1022
		LCALL 	764H 			//1AAC 	3764
		LDWI 	20H 			//1AAD 	0020
		CLRF 	35H 			//1AAE 	11B5
		STR 	36H 			//1AAF 	10B6
		LDWI 	41H 			//1AB0 	0041
		STR 	37H 			//1AB1 	10B7
		MOVLP 	CH 			//1AB2 	018C
		LCALL 	49AH 			//1AB3 	349A
		MOVLP 	19H 			//1AB4 	0199
		BTSS 	3H, 0H 			//1AB5 	2C03
		LJUMP 	2BBH 			//1AB6 	3ABB
		MOVLB 	2H 			//1AB7 	1022
		INCR 	40H, 1H 		//1AB8 	1AC0
		BTSC 	3H, 2H 			//1AB9 	2903
		INCR 	41H, 1H 		//1ABA 	1AC1
		MOVLB 	2H 			//1ABB 	1022
		LDR 	48H, 0H 			//1ABC 	1848
		LCALL 	78CH 			//1ABD 	378C
		MOVLP 	19H 			//1ABE 	0199
		BTSS 	3H, 2H 			//1ABF 	2D03
		LJUMP 	2C4H 			//1AC0 	3AC4
		LDWI 	DH 			//1AC1 	000D
		MOVLB 	2H 			//1AC2 	1022
		SUBWR 	47H, 0H 		//1AC3 	1247
		BTSC 	3H, 0H 			//1AC4 	2803
		LJUMP 	2EBH 			//1AC5 	3AEB
		MOVLB 	2H 			//1AC6 	1022
		LDR 	47H, 0H 			//1AC7 	1847
		MOVLP 	FH 			//1AC8 	018F
		LCALL 	707H 			//1AC9 	3707
		MOVLP 	19H 			//1ACA 	0199
		LDR 	55H, 0H 			//1ACB 	1855
		STR 	34H 			//1ACC 	10B4
		LDR 	56H, 0H 			//1ACD 	1856
		STR 	35H 			//1ACE 	10B5
		LDR 	57H, 0H 			//1ACF 	1857
		STR 	36H 			//1AD0 	10B6
		MOVLB 	2H 			//1AD1 	1022
		LDR 	44H, 0H 			//1AD2 	1844
		MOVLB 	1H 			//1AD3 	1021
		STR 	37H 			//1AD4 	10B7
		MOVLB 	2H 			//1AD5 	1022
		LDR 	45H, 0H 			//1AD6 	1845
		MOVLB 	1H 			//1AD7 	1021
		STR 	38H 			//1AD8 	10B8
		MOVLB 	2H 			//1AD9 	1022
		LDR 	46H, 0H 			//1ADA 	1846
		MOVLB 	1H 			//1ADB 	1021
		STR 	39H 			//1ADC 	10B9
		MOVLP 	13H 			//1ADD 	0193
		LCALL 	3F5H 			//1ADE 	33F5
		MOVLP 	19H 			//1ADF 	0199
		LDR 	34H, 0H 			//1AE0 	1834
		MOVLB 	2H 			//1AE1 	1022
		STR 	44H 			//1AE2 	10C4
		MOVLB 	1H 			//1AE3 	1021
		LDR 	35H, 0H 			//1AE4 	1835
		MOVLB 	2H 			//1AE5 	1022
		STR 	45H 			//1AE6 	10C5
		MOVLB 	1H 			//1AE7 	1021
		LDR 	36H, 0H 			//1AE8 	1836
		MOVLB 	2H 			//1AE9 	1022
		STR 	46H 			//1AEA 	10C6
		MOVLB 	2H 			//1AEB 	1022
		LDR 	41H, 0H 			//1AEC 	1841
		LCALL 	78CH 			//1AED 	378C
		MOVLP 	19H 			//1AEE 	0199
		BTSS 	3H, 2H 			//1AEF 	2D03
		LJUMP 	2F4H 			//1AF0 	3AF4
		LDWI 	AH 			//1AF1 	000A
		MOVLB 	2H 			//1AF2 	1022
		SUBWR 	40H, 0H 		//1AF3 	1240
		BTSC 	3H, 0H 			//1AF4 	2803
		LJUMP 	311H 			//1AF5 	3B11
		MOVLB 	2H 			//1AF6 	1022
		LDR 	46H, 0H 			//1AF7 	1846
		IORWR 	45H, 0H 		//1AF8 	1445
		IORWR 	44H, 0H 		//1AF9 	1444
		BTSC 	3H, 2H 			//1AFA 	2903
		LJUMP 	355H 			//1AFB 	3B55
		LCALL 	798H 			//1AFC 	3798
		MOVLP 	15H 			//1AFD 	0195
		LCALL 	553H 			//1AFE 	3553
		MOVLP 	19H 			//1AFF 	0199
		LDR 	60H, 0H 			//1B00 	1860
		IORWR 	5FH, 0H 		//1B01 	145F
		IORWR 	5EH, 0H 		//1B02 	145E
		IORWR 	5DH, 0H 		//1B03 	145D
		BTSS 	3H, 2H 			//1B04 	2D03
		LJUMP 	355H 			//1B05 	3B55
		MOVLB 	2H 			//1B06 	1022
		LDR 	41H, 0H 			//1B07 	1841
		LCALL 	78CH 			//1B08 	378C
		MOVLP 	19H 			//1B09 	0199
		BTSS 	3H, 2H 			//1B0A 	2D03
		LJUMP 	30FH 			//1B0B 	3B0F
		LDWI 	2H 			//1B0C 	0002
		MOVLB 	2H 			//1B0D 	1022
		SUBWR 	40H, 0H 		//1B0E 	1240
		BTSS 	3H, 0H 			//1B0F 	2C03
		LJUMP 	355H 			//1B10 	3B55
		MOVLB 	2H 			//1B11 	1022
		LCALL 	764H 			//1B12 	3764
		LDWI 	70H 			//1B13 	0070
		STR 	35H 			//1B14 	10B5
		LDWI 	89H 			//1B15 	0089
		STR 	36H 			//1B16 	10B6
		LDWI 	40H 			//1B17 	0040
		STR 	37H 			//1B18 	10B7
		MOVLP 	CH 			//1B19 	018C
		LCALL 	49AH 			//1B1A 	349A
		MOVLP 	19H 			//1B1B 	0199
		BTSC 	3H, 0H 			//1B1C 	2803
		LJUMP 	320H 			//1B1D 	3B20
		LDWI 	F7H 			//1B1E 	00F7
		LJUMP 	321H 			//1B1F 	3B21
		LDWI 	F8H 			//1B20 	00F8
		MOVLB 	2H 			//1B21 	1022
		ADDWR 	40H, 1H 		//1B22 	17C0
		BTSS 	3H, 0H 			//1B23 	2C03
		DECR 	41H, 1H 		//1B24 	13C1
		LDR 	40H, 0H 			//1B25 	1840
		MOVLP 	DH 			//1B26 	018D
		LCALL 	51AH 			//1B27 	351A
		MOVLP 	19H 			//1B28 	0199
		LCALL 	770H 			//1B29 	3770
		MOVLP 	19H 			//1B2A 	0199
		STR 	20H 			//1B2B 	10A0
		MOVLB 	2H 			//1B2C 	1022
		LDR 	45H, 0H 			//1B2D 	1845
		MOVLB 	1H 			//1B2E 	1021
		STR 	21H 			//1B2F 	10A1
		MOVLB 	2H 			//1B30 	1022
		LDR 	46H, 0H 			//1B31 	1846
		MOVLB 	1H 			//1B32 	1021
		STR 	22H 			//1B33 	10A2
		MOVLB 	2H 			//1B34 	1022
		LDR 	36H, 0H 			//1B35 	1836
		MOVLB 	1H 			//1B36 	1021
		STR 	23H 			//1B37 	10A3
		MOVLB 	2H 			//1B38 	1022
		LDR 	37H, 0H 			//1B39 	1837
		MOVLB 	1H 			//1B3A 	1021
		STR 	24H 			//1B3B 	10A4
		MOVLB 	2H 			//1B3C 	1022
		LDR 	38H, 0H 			//1B3D 	1838
		MOVLB 	1H 			//1B3E 	1021
		STR 	25H 			//1B3F 	10A5
		LCALL 	66FH 			//1B40 	366F
		MOVLP 	19H 			//1B41 	0199
		LDR 	23H, 0H 			//1B42 	1823
		MOVLB 	2H 			//1B43 	1022
		STR 	3DH 			//1B44 	10BD
		MOVLB 	1H 			//1B45 	1021
		LDR 	22H, 0H 			//1B46 	1822
		MOVLB 	2H 			//1B47 	1022
		STR 	3CH 			//1B48 	10BC
		MOVLB 	1H 			//1B49 	1021
		LDR 	21H, 0H 			//1B4A 	1821
		MOVLB 	2H 			//1B4B 	1022
		STR 	3BH 			//1B4C 	10BB
		MOVLB 	1H 			//1B4D 	1021
		LDR 	20H, 0H 			//1B4E 	1820
		MOVLB 	2H 			//1B4F 	1022
		STR 	3AH 			//1B50 	10BA
		CLRF 	44H 			//1B51 	11C4
		CLRF 	45H 			//1B52 	11C5
		CLRF 	46H 			//1B53 	11C6
		LJUMP 	391H 			//1B54 	3B91
		MOVLB 	2H 			//1B55 	1022
		LCALL 	798H 			//1B56 	3798
		MOVLP 	15H 			//1B57 	0195
		LCALL 	553H 			//1B58 	3553
		MOVLP 	19H 			//1B59 	0199
		LCALL 	77EH 			//1B5A 	377E
		MOVLB 	2H 			//1B5B 	1022
		STR 	3AH 			//1B5C 	10BA
		LDR 	3DH, 0H 			//1B5D 	183D
		MOVLB 	1H 			//1B5E 	1021
		STR 	2BH 			//1B5F 	10AB
		MOVLB 	2H 			//1B60 	1022
		LDR 	3CH, 0H 			//1B61 	183C
		MOVLB 	1H 			//1B62 	1021
		STR 	2AH 			//1B63 	10AA
		MOVLB 	2H 			//1B64 	1022
		LDR 	3BH, 0H 			//1B65 	183B
		MOVLB 	1H 			//1B66 	1021
		STR 	29H 			//1B67 	10A9
		MOVLB 	2H 			//1B68 	1022
		LDR 	3AH, 0H 			//1B69 	183A
		MOVLB 	1H 			//1B6A 	1021
		STR 	28H 			//1B6B 	10A8
		MOVLP 	15H 			//1B6C 	0195
		LCALL 	5A8H 			//1B6D 	35A8
		MOVLP 	19H 			//1B6E 	0199
		LDR 	28H, 0H 			//1B6F 	1828
		STR 	40H 			//1B70 	10C0
		LDR 	29H, 0H 			//1B71 	1829
		STR 	41H 			//1B72 	10C1
		LDR 	2AH, 0H 			//1B73 	182A
		STR 	42H 			//1B74 	10C2
		MOVLB 	2H 			//1B75 	1022
		LDR 	44H, 0H 			//1B76 	1844
		MOVLB 	1H 			//1B77 	1021
		STR 	43H 			//1B78 	10C3
		MOVLB 	2H 			//1B79 	1022
		LDR 	45H, 0H 			//1B7A 	1845
		MOVLB 	1H 			//1B7B 	1021
		STR 	44H 			//1B7C 	10C4
		MOVLB 	2H 			//1B7D 	1022
		LDR 	46H, 0H 			//1B7E 	1846
		MOVLB 	1H 			//1B7F 	1021
		STR 	45H 			//1B80 	10C5
		MOVLP 	13H 			//1B81 	0193
		LCALL 	3DAH 			//1B82 	33DA
		MOVLP 	19H 			//1B83 	0199
		LDR 	40H, 0H 			//1B84 	1840
		MOVLB 	2H 			//1B85 	1022
		STR 	44H 			//1B86 	10C4
		MOVLB 	1H 			//1B87 	1021
		LDR 	41H, 0H 			//1B88 	1841
		MOVLB 	2H 			//1B89 	1022
		STR 	45H 			//1B8A 	10C5
		MOVLB 	1H 			//1B8B 	1021
		LDR 	42H, 0H 			//1B8C 	1842
		MOVLB 	2H 			//1B8D 	1022
		STR 	46H 			//1B8E 	10C6
		CLRF 	40H 			//1B8F 	11C0
		CLRF 	41H 			//1B90 	11C1
		CLRF 	49H 			//1B91 	11C9
		INCR 	49H, 1H 		//1B92 	1AC9
		LCALL 	6DEH 			//1B93 	36DE
		MOVLP 	19H 			//1B94 	0199
		LCALL 	7C2H 			//1B95 	37C2
		MOVLP 	19H 			//1B96 	0199
		BTSS 	3H, 2H 			//1B97 	2D03
		LJUMP 	3A3H 			//1B98 	3BA3
		LCALL 	7F1H 			//1B99 	37F1
		MOVLP 	19H 			//1B9A 	0199
		BTSS 	3H, 2H 			//1B9B 	2D03
		LJUMP 	3A3H 			//1B9C 	3BA3
		LCALL 	7FBH 			//1B9D 	37FB
		MOVLP 	19H 			//1B9E 	0199
		BTSS 	3H, 2H 			//1B9F 	2D03
		LJUMP 	3A3H 			//1BA0 	3BA3
		LCALL 	7F6H 			//1BA1 	37F6
		MOVLP 	19H 			//1BA2 	0199
		BTSS 	3H, 0H 			//1BA3 	2C03
		LJUMP 	3AAH 			//1BA4 	3BAA
		LDWI 	AH 			//1BA5 	000A
		INCR 	49H, 1H 		//1BA6 	1AC9
		XORWR 	49H, 0H 		//1BA7 	1649
		BTSS 	3H, 2H 			//1BA8 	2D03
		LJUMP 	393H 			//1BA9 	3B93
		LDR 	49H, 0H 			//1BAA 	1849
		LCALL 	7A4H 			//1BAB 	37A4
		MOVLP 	19H 			//1BAC 	0199
		LDR 	47H, 0H 			//1BAD 	1847
		MOVLB 	1H 			//1BAE 	1021
		ADDWR 	6AH, 0H 		//1BAF 	176A
		STR 	6CH 			//1BB0 	10EC
		MOVLB 	2H 			//1BB1 	1022
		LDR 	48H, 0H 			//1BB2 	1848
		MOVLB 	1H 			//1BB3 	1021
		ADDWFC 	6BH, 0H 		//1BB4 	0D6B
		STR 	6DH 			//1BB5 	10ED
		MOVLB 	2H 			//1BB6 	1022
		LDR 	40H, 0H 			//1BB7 	1840
		MOVLB 	1H 			//1BB8 	1021
		ADDWR 	6CH, 0H 		//1BB9 	176C
		STR 	6EH 			//1BBA 	10EE
		MOVLB 	2H 			//1BBB 	1022
		LDR 	41H, 0H 			//1BBC 	1841
		MOVLB 	1H 			//1BBD 	1021
		ADDWFC 	6DH, 0H 		//1BBE 	0D6D
		STR 	6FH 			//1BBF 	10EF
		LDR 	6EH, 0H 			//1BC0 	186E
		MOVLB 	2H 			//1BC1 	1022
		SUBWR 	42H, 1H 		//1BC2 	12C2
		MOVLB 	1H 			//1BC3 	1021
		LDR 	6FH, 0H 			//1BC4 	186F
		MOVLB 	2H 			//1BC5 	1022
		SUBWFB 	43H, 1H 		//1BC6 	0BC3
		LDR 	47H, 0H 			//1BC7 	1847
		IORWR 	48H, 0H 		//1BC8 	1448
		BTSC 	3H, 2H 			//1BC9 	2903
		LJUMP 	3CFH 			//1BCA 	3BCF
		LDWI 	FFH 			//1BCB 	00FF
		ADDWR 	42H, 1H 		//1BCC 	17C2
		BTSS 	3H, 0H 			//1BCD 	2C03
		DECR 	43H, 1H 		//1BCE 	13C3
		LDR 	3EH, 0H 			//1BCF 	183E
		ANDWI 	3H 			//1BD0 	0903
		BTSC 	3H, 2H 			//1BD1 	2903
		LJUMP 	3D7H 			//1BD2 	3BD7
		LDWI 	FFH 			//1BD3 	00FF
		ADDWR 	42H, 1H 		//1BD4 	17C2
		BTSS 	3H, 0H 			//1BD5 	2C03
		DECR 	43H, 1H 		//1BD6 	13C3
		BTSS 	3EH, 2H 		//1BD7 	2D3E
		LJUMP 	3FBH 			//1BD8 	3BFB
		LDR 	3EH, 0H 			//1BD9 	183E
		ANDWI 	3H 			//1BDA 	0903
		BTSC 	3H, 2H 			//1BDB 	2903
		LJUMP 	3E3H 			//1BDC 	3BE3
		LCALL 	7D7H 			//1BDD 	37D7
		MOVLP 	19H 			//1BDE 	0199
		STR 	1H 			//1BDF 	1081
		INCR 	20H, 1H 		//1BE0 	1AA0
		BTSC 	3H, 2H 			//1BE1 	2903
		INCR 	21H, 1H 		//1BE2 	1AA1
		LDR 	43H, 0H 			//1BE3 	1843
		LCALL 	78CH 			//1BE4 	378C
		MOVLP 	19H 			//1BE5 	0199
		BTSS 	3H, 2H 			//1BE6 	2D03
		LJUMP 	3EBH 			//1BE7 	3BEB
		LDWI 	1H 			//1BE8 	0001
		MOVLB 	2H 			//1BE9 	1022
		SUBWR 	42H, 0H 		//1BEA 	1242
		BTSS 	3H, 0H 			//1BEB 	2C03
		LJUMP 	41EH 			//1BEC 	3C1E
		MOVLB 	2H 			//1BED 	1022
		LCALL 	746H 			//1BEE 	3746
		MOVLP 	19H 			//1BEF 	0199
		ADDWR 	42H, 1H 		//1BF0 	17C2
		BTSS 	3H, 0H 			//1BF1 	2C03
		DECR 	43H, 1H 		//1BF2 	13C3
		LJUMP 	3E3H 			//1BF3 	3BE3
		MOVLB 	2H 			//1BF4 	1022
		LCALL 	7B2H 			//1BF5 	37B2
		MOVLP 	19H 			//1BF6 	0199
		LCALL 	7ABH 			//1BF7 	37AB
		MOVLP 	19H 			//1BF8 	0199
		BTSS 	3H, 0H 			//1BF9 	2C03
		DECR 	43H, 1H 		//1BFA 	13C3
		LDR 	43H, 0H 			//1BFB 	1843
		LCALL 	78CH 			//1BFC 	378C
		MOVLP 	19H 			//1BFD 	0199
		BTSS 	3H, 2H 			//1BFE 	2D03
		LJUMP 	403H 			//1BFF 	3C03
		LDWI 	1H 			//1C00 	0001
		MOVLB 	2H 			//1C01 	1022
		SUBWR 	42H, 0H 		//1C02 	1242
		BTSC 	3H, 0H 			//1C03 	2803
		LJUMP 	3F4H 			//1C04 	3BF4
		MOVLB 	2H 			//1C05 	1022
		LDR 	3EH, 0H 			//1C06 	183E
		ANDWI 	3H 			//1C07 	0903
		BTSC 	3H, 2H 			//1C08 	2903
		LJUMP 	41EH 			//1C09 	3C1E
		LCALL 	7D7H 			//1C0A 	37D7
		MOVLP 	19H 			//1C0B 	0199
		LJUMP 	419H 			//1C0C 	3C19
		LCALL 	6DEH 			//1C0D 	36DE
		MOVLP 	19H 			//1C0E 	0199
		LCALL 	6EEH 			//1C0F 	36EE
		MOVLP 	19H 			//1C10 	0199
		LCALL 	619H 			//1C11 	3619
		MOVLP 	19H 			//1C12 	0199
		LCALL 	706H 			//1C13 	3706
		MOVLP 	19H 			//1C14 	0199
		LCALL 	5E3H 			//1C15 	35E3
		MOVLP 	19H 			//1C16 	0199
		LCALL 	72CH 			//1C17 	372C
		MOVLP 	19H 			//1C18 	0199
		STR 	1H 			//1C19 	1081
		MOVLB 	2H 			//1C1A 	1022
		INCR 	20H, 1H 		//1C1B 	1AA0
		BTSC 	3H, 2H 			//1C1C 	2903
		INCR 	21H, 1H 		//1C1D 	1AA1
		MOVLB 	2H 			//1C1E 	1022
		DECR 	49H, 1H 		//1C1F 	13C9
		INCRSZ 	49H, 0H 		//1C20 	1F49
		LJUMP 	40DH 			//1C21 	3C0D
		LDR 	41H, 0H 			//1C22 	1841
		LCALL 	78CH 			//1C23 	378C
		MOVLP 	19H 			//1C24 	0199
		BTSS 	3H, 2H 			//1C25 	2D03
		LJUMP 	42AH 			//1C26 	3C2A
		LDWI 	1H 			//1C27 	0001
		MOVLB 	2H 			//1C28 	1022
		SUBWR 	40H, 0H 		//1C29 	1240
		BTSS 	3H, 0H 			//1C2A 	2C03
		LJUMP 	433H 			//1C2B 	3C33
		MOVLB 	2H 			//1C2C 	1022
		LCALL 	746H 			//1C2D 	3746
		MOVLP 	19H 			//1C2E 	0199
		ADDWR 	40H, 1H 		//1C2F 	17C0
		BTSS 	3H, 0H 			//1C30 	2C03
		DECR 	41H, 1H 		//1C31 	13C1
		LJUMP 	422H 			//1C32 	3C22
		MOVLB 	2H 			//1C33 	1022
		LDR 	48H, 0H 			//1C34 	1848
		LCALL 	78CH 			//1C35 	378C
		MOVLP 	19H 			//1C36 	0199
		BTSS 	3H, 2H 			//1C37 	2D03
		LJUMP 	43CH 			//1C38 	3C3C
		LDWI 	9H 			//1C39 	0009
		MOVLB 	2H 			//1C3A 	1022
		SUBWR 	47H, 0H 		//1C3B 	1247
		BTSS 	3H, 0H 			//1C3C 	2C03
		LJUMP 	441H 			//1C3D 	3C41
		LDWI 	8H 			//1C3E 	0008
		MOVLB 	2H 			//1C3F 	1022
		LJUMP 	443H 			//1C40 	3C43
		MOVLB 	2H 			//1C41 	1022
		LDR 	47H, 0H 			//1C42 	1847
		STR 	49H 			//1C43 	10C9
		LCALL 	7A4H 			//1C44 	37A4
		MOVLP 	19H 			//1C45 	0199
		SUBWR 	47H, 1H 		//1C46 	12C7
		MOVLB 	1H 			//1C47 	1021
		LDR 	6BH, 0H 			//1C48 	186B
		MOVLB 	2H 			//1C49 	1022
		SUBWFB 	48H, 1H 		//1C4A 	0BC8
		LDR 	49H, 0H 			//1C4B 	1849
		BTSC 	3H, 2H 			//1C4C 	2903
		LJUMP 	457H 			//1C4D 	3C57
		LDR 	20H, 0H 			//1C4E 	1820
		STR 	6H 			//1C4F 	1086
		LDR 	21H, 0H 			//1C50 	1821
		STR 	7H 			//1C51 	1087
		LDWI 	2EH 			//1C52 	002E
		STR 	1H 			//1C53 	1081
		INCR 	20H, 1H 		//1C54 	1AA0
		BTSC 	3H, 2H 			//1C55 	2903
		INCR 	21H, 1H 		//1C56 	1AA1
		LDR 	49H, 0H 			//1C57 	1849
		MOVLP 	DH 			//1C58 	018D
		LCALL 	51AH 			//1C59 	351A
		MOVLP 	19H 			//1C5A 	0199
		LDR 	55H, 0H 			//1C5B 	1855
		MOVLB 	2H 			//1C5C 	1022
		STR 	32H 			//1C5D 	10B2
		MOVLB 	1H 			//1C5E 	1021
		LDR 	56H, 0H 			//1C5F 	1856
		MOVLB 	2H 			//1C60 	1022
		STR 	33H 			//1C61 	10B3
		MOVLB 	1H 			//1C62 	1021
		LDR 	57H, 0H 			//1C63 	1857
		MOVLB 	2H 			//1C64 	1022
		STR 	34H 			//1C65 	10B4
		LDR 	32H, 0H 			//1C66 	1832
		MOVLB 	1H 			//1C67 	1021
		STR 	49H 			//1C68 	10C9
		MOVLB 	2H 			//1C69 	1022
		LDR 	33H, 0H 			//1C6A 	1833
		MOVLB 	1H 			//1C6B 	1021
		STR 	4AH 			//1C6C 	10CA
		MOVLB 	2H 			//1C6D 	1022
		LDR 	34H, 0H 			//1C6E 	1834
		MOVLB 	1H 			//1C6F 	1021
		STR 	4BH 			//1C70 	10CB
		MOVLB 	2H 			//1C71 	1022
		LDR 	44H, 0H 			//1C72 	1844
		MOVLB 	1H 			//1C73 	1021
		LCALL 	7CDH 			//1C74 	37CD
		MOVLP 	CH 			//1C75 	018C
		LCALL 	42EH 			//1C76 	342E
		MOVLP 	19H 			//1C77 	0199
		MOVLP 	5H 			//1C78 	0185
		LCALL 	5F2H 			//1C79 	35F2
		MOVLP 	19H 			//1C7A 	0199
		MOVLP 	15H 			//1C7B 	0195
		LCALL 	553H 			//1C7C 	3553
		MOVLP 	19H 			//1C7D 	0199
		LCALL 	77EH 			//1C7E 	377E
		MOVLP 	19H 			//1C7F 	0199
		LJUMP 	4BAH 			//1C80 	3CBA
		LCALL 	6DEH 			//1C81 	36DE
		MOVLP 	19H 			//1C82 	0199
		LCALL 	6EEH 			//1C83 	36EE
		MOVLP 	19H 			//1C84 	0199
		LCALL 	619H 			//1C85 	3619
		MOVLP 	19H 			//1C86 	0199
		LCALL 	706H 			//1C87 	3706
		MOVLP 	19H 			//1C88 	0199
		LCALL 	5E3H 			//1C89 	35E3
		MOVLP 	19H 			//1C8A 	0199
		LCALL 	72CH 			//1C8B 	372C
		MOVLP 	19H 			//1C8C 	0199
		STR 	1H 			//1C8D 	1081
		MOVLB 	2H 			//1C8E 	1022
		INCR 	20H, 1H 		//1C8F 	1AA0
		BTSC 	3H, 2H 			//1C90 	2903
		INCR 	21H, 1H 		//1C91 	1AA1
		LCALL 	6DEH 			//1C92 	36DE
		MOVLP 	19H 			//1C93 	0199
		STR 	2DH 			//1C94 	10AD
		MOVIW 	1H[0] 			//1C95 	0F01
		STR 	2EH 			//1C96 	10AE
		MOVIW 	2H[0] 			//1C97 	0F02
		STR 	2FH 			//1C98 	10AF
		MOVIW 	3H[0] 			//1C99 	0F03
		STR 	30H 			//1C9A 	10B0
		MOVLB 	2H 			//1C9B 	1022
		LDR 	3DH, 0H 			//1C9C 	183D
		MOVLB 	1H 			//1C9D 	1021
		STR 	34H 			//1C9E 	10B4
		MOVLB 	2H 			//1C9F 	1022
		LDR 	3CH, 0H 			//1CA0 	183C
		MOVLB 	1H 			//1CA1 	1021
		STR 	33H 			//1CA2 	10B3
		MOVLB 	2H 			//1CA3 	1022
		LDR 	3BH, 0H 			//1CA4 	183B
		MOVLB 	1H 			//1CA5 	1021
		STR 	32H 			//1CA6 	10B2
		MOVLB 	2H 			//1CA7 	1022
		LDR 	3AH, 0H 			//1CA8 	183A
		MOVLB 	1H 			//1CA9 	1021
		STR 	31H 			//1CAA 	10B1
		LCALL 	5E3H 			//1CAB 	35E3
		MOVLP 	19H 			//1CAC 	0199
		LDR 	30H, 0H 			//1CAD 	1830
		MOVLB 	2H 			//1CAE 	1022
		STR 	3DH 			//1CAF 	10BD
		MOVLB 	1H 			//1CB0 	1021
		LDR 	2FH, 0H 			//1CB1 	182F
		MOVLB 	2H 			//1CB2 	1022
		STR 	3CH 			//1CB3 	10BC
		MOVLB 	1H 			//1CB4 	1021
		LDR 	2EH, 0H 			//1CB5 	182E
		MOVLB 	2H 			//1CB6 	1022
		STR 	3BH 			//1CB7 	10BB
		MOVLB 	1H 			//1CB8 	1021
		LDR 	2DH, 0H 			//1CB9 	182D
		MOVLB 	2H 			//1CBA 	1022
		STR 	3AH 			//1CBB 	10BA
		DECR 	49H, 1H 		//1CBC 	13C9
		INCRSZ 	49H, 0H 		//1CBD 	1F49
		LJUMP 	481H 			//1CBE 	3C81
		LDR 	47H, 0H 			//1CBF 	1847
		IORWR 	48H, 0H 		//1CC0 	1448
		BTSC 	3H, 2H 			//1CC1 	2903
		LJUMP 	131H 			//1CC2 	3931
		LCALL 	746H 			//1CC3 	3746
		MOVLP 	19H 			//1CC4 	0199
		ADDWR 	47H, 1H 		//1CC5 	17C7
		BTSS 	3H, 0H 			//1CC6 	2C03
		DECR 	48H, 1H 		//1CC7 	13C8
		LJUMP 	4BFH 			//1CC8 	3CBF
		MOVLB 	2H 			//1CC9 	1022
		LDR 	35H, 0H 			//1CCA 	1835
		LCALL 	7DCH 			//1CCB 	37DC
		MOVLP 	19H 			//1CCC 	0199
		LDR 	6AH, 0H 			//1CCD 	186A
		MOVLB 	2H 			//1CCE 	1022
		STR 	3AH 			//1CCF 	10BA
		MOVLB 	1H 			//1CD0 	1021
		LDR 	6BH, 0H 			//1CD1 	186B
		MOVLB 	2H 			//1CD2 	1022
		STR 	3BH 			//1CD3 	10BB
		RLR 	9H, 1H 			//1CD4 	1D89
		SUBWFB 	9H, 1H 		//1CD5 	0B89
		COMR 	9H, 1H 			//1CD6 	1989
		STR 	3CH 			//1CD7 	10BC
		STR 	3DH 			//1CD8 	10BD
		INCR 	35H, 1H 		//1CD9 	1AB5
		INCR 	35H, 1H 		//1CDA 	1AB5
		BTSS 	3DH, 7H 		//1CDB 	2FBD
		LJUMP 	4EAH 			//1CDC 	3CEA
		LDWI 	3H 			//1CDD 	0003
		IORWR 	3EH, 1H 		//1CDE 	14BE
		COMR 	3AH, 1H 		//1CDF 	19BA
		COMR 	3BH, 1H 		//1CE0 	19BB
		COMR 	3CH, 1H 		//1CE1 	19BC
		COMR 	3DH, 1H 		//1CE2 	19BD
		INCR 	3AH, 1H 		//1CE3 	1ABA
		BTSC 	3H, 2H 			//1CE4 	2903
		INCR 	3BH, 1H 		//1CE5 	1ABB
		BTSC 	3H, 2H 			//1CE6 	2903
		INCR 	3CH, 1H 		//1CE7 	1ABC
		BTSC 	3H, 2H 			//1CE8 	2903
		INCR 	3DH, 1H 		//1CE9 	1ABD
		LDR 	47H, 0H 			//1CEA 	1847
		IORWR 	48H, 0H 		//1CEB 	1448
		BTSS 	3H, 2H 			//1CEC 	2D03
		LJUMP 	4F6H 			//1CED 	3CF6
		LDR 	3DH, 0H 			//1CEE 	183D
		IORWR 	3CH, 0H 		//1CEF 	143C
		IORWR 	3BH, 0H 		//1CF0 	143B
		IORWR 	3AH, 0H 		//1CF1 	143A
		BTSC 	3H, 2H 			//1CF2 	2903
		INCR 	47H, 1H 		//1CF3 	1AC7
		BTSC 	3H, 2H 			//1CF4 	2903
		INCR 	48H, 1H 		//1CF5 	1AC8
		CLRF 	49H 			//1CF6 	11C9
		INCR 	49H, 1H 		//1CF7 	1AC9
		LCALL 	6DEH 			//1CF8 	36DE
		MOVLP 	19H 			//1CF9 	0199
		LCALL 	7C2H 			//1CFA 	37C2
		MOVLP 	19H 			//1CFB 	0199
		BTSS 	3H, 2H 			//1CFC 	2D03
		LJUMP 	508H 			//1CFD 	3D08
		LCALL 	7F1H 			//1CFE 	37F1
		MOVLP 	19H 			//1CFF 	0199
		BTSS 	3H, 2H 			//1D00 	2D03
		LJUMP 	508H 			//1D01 	3D08
		LCALL 	7FBH 			//1D02 	37FB
		MOVLP 	19H 			//1D03 	0199
		BTSS 	3H, 2H 			//1D04 	2D03
		LJUMP 	508H 			//1D05 	3D08
		LCALL 	7F6H 			//1D06 	37F6
		MOVLP 	19H 			//1D07 	0199
		BTSS 	3H, 0H 			//1D08 	2C03
		LJUMP 	50FH 			//1D09 	3D0F
		LDWI 	AH 			//1D0A 	000A
		INCR 	49H, 1H 		//1D0B 	1AC9
		XORWR 	49H, 0H 		//1D0C 	1649
		BTSS 	3H, 2H 			//1D0D 	2D03
		LJUMP 	4F8H 			//1D0E 	3CF8
		LCALL 	7B7H 			//1D0F 	37B7
		MOVLP 	19H 			//1D10 	0199
		LDR 	48H, 0H 			//1D11 	1848
		XORWI 	80H 			//1D12 	0A80
		MOVLB 	1H 			//1D13 	1021
		SUBWR 	6CH, 0H 		//1D14 	126C
		BTSS 	3H, 2H 			//1D15 	2D03
		LJUMP 	51BH 			//1D16 	3D1B
		MOVLB 	2H 			//1D17 	1022
		LDR 	47H, 0H 			//1D18 	1847
		MOVLB 	1H 			//1D19 	1021
		SUBWR 	6AH, 0H 		//1D1A 	126A
		BTSC 	3H, 0H 			//1D1B 	2803
		LJUMP 	521H 			//1D1C 	3D21
		MOVLB 	2H 			//1D1D 	1022
		LDR 	47H, 0H 			//1D1E 	1847
		STR 	49H 			//1D1F 	10C9
		LJUMP 	539H 			//1D20 	3D39
		MOVLB 	2H 			//1D21 	1022
		LDR 	49H, 0H 			//1D22 	1849
		LCALL 	7A4H 			//1D23 	37A4
		MOVLP 	19H 			//1D24 	0199
		LDR 	48H, 0H 			//1D25 	1848
		XORWI 	80H 			//1D26 	0A80
		MOVLB 	1H 			//1D27 	1021
		STR 	6CH 			//1D28 	10EC
		LDR 	6BH, 0H 			//1D29 	186B
		XORWI 	80H 			//1D2A 	0A80
		SUBWR 	6CH, 0H 		//1D2B 	126C
		BTSS 	3H, 2H 			//1D2C 	2D03
		LJUMP 	531H 			//1D2D 	3D31
		LDR 	6AH, 0H 			//1D2E 	186A
		MOVLB 	2H 			//1D2F 	1022
		SUBWR 	47H, 0H 		//1D30 	1247
		BTSC 	3H, 0H 			//1D31 	2803
		LJUMP 	539H 			//1D32 	3D39
		MOVLB 	2H 			//1D33 	1022
		LDR 	49H, 0H 			//1D34 	1849
		STR 	47H 			//1D35 	10C7
		CLRF 	48H 			//1D36 	11C8
		BTSC 	47H, 7H 		//1D37 	2BC7
		DECR 	48H, 1H 		//1D38 	13C8
		MOVLB 	2H 			//1D39 	1022
		LDR 	42H, 0H 			//1D3A 	1842
		IORWR 	43H, 0H 		//1D3B 	1443
		BTSC 	3H, 2H 			//1D3C 	2903
		LJUMP 	546H 			//1D3D 	3D46
		LDR 	3EH, 0H 			//1D3E 	183E
		ANDWI 	3H 			//1D3F 	0903
		BTSC 	3H, 2H 			//1D40 	2903
		LJUMP 	546H 			//1D41 	3D46
		LDWI 	FFH 			//1D42 	00FF
		ADDWR 	42H, 1H 		//1D43 	17C2
		BTSS 	3H, 0H 			//1D44 	2C03
		DECR 	43H, 1H 		//1D45 	13C3
		BTSS 	3FH, 6H 		//1D46 	2F3F
		LJUMP 	561H 			//1D47 	3D61
		LDR 	48H, 0H 			//1D48 	1848
		XORWI 	80H 			//1D49 	0A80
		MOVLB 	1H 			//1D4A 	1021
		STR 	6AH 			//1D4B 	10EA
		MOVLB 	2H 			//1D4C 	1022
		LDR 	43H, 0H 			//1D4D 	1843
		XORWI 	80H 			//1D4E 	0A80
		MOVLB 	1H 			//1D4F 	1021
		SUBWR 	6AH, 0H 		//1D50 	126A
		BTSS 	3H, 2H 			//1D51 	2D03
		LJUMP 	556H 			//1D52 	3D56
		MOVLB 	2H 			//1D53 	1022
		LDR 	42H, 0H 			//1D54 	1842
		SUBWR 	47H, 0H 		//1D55 	1247
		BTSC 	3H, 0H 			//1D56 	2803
		LJUMP 	55EH 			//1D57 	3D5E
		MOVLB 	2H 			//1D58 	1022
		LDR 	47H, 0H 			//1D59 	1847
		SUBWR 	42H, 1H 		//1D5A 	12C2
		LDR 	48H, 0H 			//1D5B 	1848
		SUBWFB 	43H, 1H 		//1D5C 	0BC3
		LJUMP 	561H 			//1D5D 	3D61
		MOVLB 	2H 			//1D5E 	1022
		CLRF 	42H 			//1D5F 	11C2
		CLRF 	43H 			//1D60 	11C3
		LCALL 	7B7H 			//1D61 	37B7
		MOVLP 	19H 			//1D62 	0199
		LDR 	43H, 0H 			//1D63 	1843
		XORWI 	80H 			//1D64 	0A80
		MOVLB 	1H 			//1D65 	1021
		SUBWR 	6CH, 0H 		//1D66 	126C
		BTSS 	3H, 2H 			//1D67 	2D03
		LJUMP 	56DH 			//1D68 	3D6D
		MOVLB 	2H 			//1D69 	1022
		LDR 	42H, 0H 			//1D6A 	1842
		MOVLB 	1H 			//1D6B 	1021
		SUBWR 	6AH, 0H 		//1D6C 	126A
		BTSC 	3H, 0H 			//1D6D 	2803
		LJUMP 	579H 			//1D6E 	3D79
		MOVLB 	2H 			//1D6F 	1022
		LDR 	49H, 0H 			//1D70 	1849
		LCALL 	7A4H 			//1D71 	37A4
		MOVLP 	19H 			//1D72 	0199
		SUBWR 	42H, 1H 		//1D73 	12C2
		MOVLB 	1H 			//1D74 	1021
		LDR 	6BH, 0H 			//1D75 	186B
		MOVLB 	2H 			//1D76 	1022
		SUBWFB 	43H, 1H 		//1D77 	0BC3
		LJUMP 	57CH 			//1D78 	3D7C
		MOVLB 	2H 			//1D79 	1022
		CLRF 	42H 			//1D7A 	11C2
		CLRF 	43H 			//1D7B 	11C3
		BTSS 	3EH, 2H 		//1D7C 	2D3E
		LJUMP 	592H 			//1D7D 	3D92
		LDR 	3EH, 0H 			//1D7E 	183E
		ANDWI 	3H 			//1D7F 	0903
		BTSC 	3H, 2H 			//1D80 	2903
		LJUMP 	588H 			//1D81 	3D88
		LCALL 	7D7H 			//1D82 	37D7
		MOVLP 	19H 			//1D83 	0199
		STR 	1H 			//1D84 	1081
		INCR 	20H, 1H 		//1D85 	1AA0
		BTSC 	3H, 2H 			//1D86 	2903
		INCR 	21H, 1H 		//1D87 	1AA1
		LDR 	42H, 0H 			//1D88 	1842
		IORWR 	43H, 0H 		//1D89 	1443
		BTSC 	3H, 2H 			//1D8A 	2903
		LJUMP 	5AAH 			//1D8B 	3DAA
		LCALL 	746H 			//1D8C 	3746
		MOVLP 	19H 			//1D8D 	0199
		ADDWR 	42H, 1H 		//1D8E 	17C2
		BTSS 	3H, 0H 			//1D8F 	2C03
		DECR 	43H, 1H 		//1D90 	13C3
		LJUMP 	588H 			//1D91 	3D88
		LDR 	42H, 0H 			//1D92 	1842
		IORWR 	43H, 0H 		//1D93 	1443
		BTSC 	3H, 2H 			//1D94 	2903
		LJUMP 	5A0H 			//1D95 	3DA0
		LCALL 	7B2H 			//1D96 	37B2
		MOVLP 	19H 			//1D97 	0199
		LCALL 	7ABH 			//1D98 	37AB
		MOVLP 	19H 			//1D99 	0199
		BTSS 	3H, 0H 			//1D9A 	2C03
		DECR 	43H, 1H 		//1D9B 	13C3
		LDR 	42H, 0H 			//1D9C 	1842
		IORWR 	43H, 0H 		//1D9D 	1443
		BTSS 	3H, 2H 			//1D9E 	2D03
		LJUMP 	596H 			//1D9F 	3D96
		LDR 	3EH, 0H 			//1DA0 	183E
		ANDWI 	3H 			//1DA1 	0903
		BTSC 	3H, 2H 			//1DA2 	2903
		LJUMP 	5AAH 			//1DA3 	3DAA
		LCALL 	7D7H 			//1DA4 	37D7
		MOVLP 	19H 			//1DA5 	0199
		STR 	1H 			//1DA6 	1081
		INCR 	20H, 1H 		//1DA7 	1AA0
		BTSC 	3H, 2H 			//1DA8 	2903
		INCR 	21H, 1H 		//1DA9 	1AA1
		LDWI 	FFH 			//1DAA 	00FF
		ADDWR 	47H, 1H 		//1DAB 	17C7
		BTSS 	3H, 0H 			//1DAC 	2C03
		DECR 	48H, 1H 		//1DAD 	13C8
		INCRSZ 	47H, 0H 		//1DAE 	1F47
		LJUMP 	5B3H 			//1DAF 	3DB3
		INCR 	48H, 0H 		//1DB0 	1A48
		BTSC 	3H, 2H 			//1DB1 	2903
		LJUMP 	131H 			//1DB2 	3931
		LDWI 	AH 			//1DB3 	000A
		MOVLB 	1H 			//1DB4 	1021
		STR 	2DH 			//1DB5 	10AD
		CLRF 	2EH 			//1DB6 	11AE
		CLRF 	2FH 			//1DB7 	11AF
		CLRF 	30H 			//1DB8 	11B0
		MOVLB 	2H 			//1DB9 	1022
		LDR 	48H, 0H 			//1DBA 	1848
		STR 	5H 			//1DBB 	1085
		LDR 	47H, 0H 			//1DBC 	1847
		STR 	4H 			//1DBD 	1084
		LDWI 	0H 			//1DBE 	0000
		LSLF 	4H, 1H 			//1DBF 	0584
		RLR 	5H, 1H 			//1DC0 	1D85
		LSLF 	4H, 1H 			//1DC1 	0584
		RLR 	5H, 1H 			//1DC2 	1D85
		ADDWR 	4H, 1H 		//1DC3 	1784
		LDWI 	A0H 			//1DC4 	00A0
		ADDWFC 	5H, 1H 		//1DC5 	0D85
		MOVIW 	0H[0] 			//1DC6 	0F00
		MOVLB 	1H 			//1DC7 	1021
		LCALL 	6EEH 			//1DC8 	36EE
		MOVLP 	19H 			//1DC9 	0199
		LCALL 	619H 			//1DCA 	3619
		MOVLP 	19H 			//1DCB 	0199
		LDR 	23H, 0H 			//1DCC 	1823
		STR 	34H 			//1DCD 	10B4
		LDR 	22H, 0H 			//1DCE 	1822
		STR 	33H 			//1DCF 	10B3
		LDR 	21H, 0H 			//1DD0 	1821
		STR 	32H 			//1DD1 	10B2
		LDR 	20H, 0H 			//1DD2 	1820
		STR 	31H 			//1DD3 	10B1
		LCALL 	5E3H 			//1DD4 	35E3
		MOVLP 	19H 			//1DD5 	0199
		LDR 	2DH, 0H 			//1DD6 	182D
		ADDWI 	30H 			//1DD7 	0E30
		MOVLB 	2H 			//1DD8 	1022
		STR 	49H 			//1DD9 	10C9
		LCALL 	7E5H 			//1DDA 	37E5
		MOVLP 	19H 			//1DDB 	0199
		LJUMP 	5A6H 			//1DDC 	3DA6
		LDR 	20H, 0H 			//1DDD 	1820
		STR 	6H 			//1DDE 	1086
		LDR 	21H, 0H 			//1DDF 	1821
		STR 	7H 			//1DE0 	1087
		CLRF 	1H 			//1DE1 	1181
		RET 					//1DE2 	1008
		LDR 	30H, 0H 			//1DE3 	1830
		IORWR 	2FH, 0H 		//1DE4 	142F
		IORWR 	2EH, 0H 		//1DE5 	142E
		IORWR 	2DH, 0H 		//1DE6 	142D
		BTSC 	3H, 2H 			//1DE7 	2903
		LJUMP 	610H 			//1DE8 	3E10
		CLRF 	35H 			//1DE9 	11B5
		INCR 	35H, 1H 		//1DEA 	1AB5
		BTSC 	30H, 7H 		//1DEB 	2BB0
		LJUMP 	5F2H 			//1DEC 	3DF2
		LSLF 	2DH, 1H 		//1DED 	05AD
		RLR 	2EH, 1H 			//1DEE 	1DAE
		RLR 	2FH, 1H 			//1DEF 	1DAF
		RLR 	30H, 1H 			//1DF0 	1DB0
		LJUMP 	5EAH 			//1DF1 	3DEA
		LDR 	30H, 0H 			//1DF2 	1830
		SUBWR 	34H, 0H 		//1DF3 	1234
		BTSS 	3H, 2H 			//1DF4 	2D03
		LJUMP 	600H 			//1DF5 	3E00
		LDR 	2FH, 0H 			//1DF6 	182F
		SUBWR 	33H, 0H 		//1DF7 	1233
		BTSS 	3H, 2H 			//1DF8 	2D03
		LJUMP 	600H 			//1DF9 	3E00
		LDR 	2EH, 0H 			//1DFA 	182E
		SUBWR 	32H, 0H 		//1DFB 	1232
		BTSS 	3H, 2H 			//1DFC 	2D03
		LJUMP 	600H 			//1DFD 	3E00
		LDR 	2DH, 0H 			//1DFE 	182D
		SUBWR 	31H, 0H 		//1DFF 	1231
		BTSS 	3H, 0H 			//1E00 	2C03
		LJUMP 	60AH 			//1E01 	3E0A
		LDR 	2DH, 0H 			//1E02 	182D
		SUBWR 	31H, 1H 		//1E03 	12B1
		LDR 	2EH, 0H 			//1E04 	182E
		SUBWFB 	32H, 1H 		//1E05 	0BB2
		LDR 	2FH, 0H 			//1E06 	182F
		SUBWFB 	33H, 1H 		//1E07 	0BB3
		LDR 	30H, 0H 			//1E08 	1830
		SUBWFB 	34H, 1H 		//1E09 	0BB4
		LSRF 	30H, 1H 		//1E0A 	06B0
		RRR 	2FH, 1H 			//1E0B 	1CAF
		RRR 	2EH, 1H 			//1E0C 	1CAE
		RRR 	2DH, 1H 			//1E0D 	1CAD
		DECRSZ 	35H, 1H 		//1E0E 	1BB5
		LJUMP 	5F2H 			//1E0F 	3DF2
		LDR 	34H, 0H 			//1E10 	1834
		STR 	30H 			//1E11 	10B0
		LDR 	33H, 0H 			//1E12 	1833
		STR 	2FH 			//1E13 	10AF
		LDR 	32H, 0H 			//1E14 	1832
		STR 	2EH 			//1E15 	10AE
		LDR 	31H, 0H 			//1E16 	1831
		STR 	2DH 			//1E17 	10AD
		RET 					//1E18 	1008
		CLRF 	28H 			//1E19 	11A8
		CLRF 	29H 			//1E1A 	11A9
		CLRF 	2AH 			//1E1B 	11AA
		CLRF 	2BH 			//1E1C 	11AB
		LDR 	23H, 0H 			//1E1D 	1823
		IORWR 	22H, 0H 		//1E1E 	1422
		IORWR 	21H, 0H 		//1E1F 	1421
		IORWR 	20H, 0H 		//1E20 	1420
		BTSC 	3H, 2H 			//1E21 	2903
		LJUMP 	64FH 			//1E22 	3E4F
		CLRF 	2CH 			//1E23 	11AC
		INCR 	2CH, 1H 		//1E24 	1AAC
		BTSC 	23H, 7H 		//1E25 	2BA3
		LJUMP 	62CH 			//1E26 	3E2C
		LSLF 	20H, 1H 		//1E27 	05A0
		RLR 	21H, 1H 			//1E28 	1DA1
		RLR 	22H, 1H 			//1E29 	1DA2
		RLR 	23H, 1H 			//1E2A 	1DA3
		LJUMP 	624H 			//1E2B 	3E24
		LSLF 	28H, 1H 		//1E2C 	05A8
		RLR 	29H, 1H 			//1E2D 	1DA9
		RLR 	2AH, 1H 			//1E2E 	1DAA
		RLR 	2BH, 1H 			//1E2F 	1DAB
		LDR 	23H, 0H 			//1E30 	1823
		SUBWR 	27H, 0H 		//1E31 	1227
		BTSS 	3H, 2H 			//1E32 	2D03
		LJUMP 	63EH 			//1E33 	3E3E
		LDR 	22H, 0H 			//1E34 	1822
		SUBWR 	26H, 0H 		//1E35 	1226
		BTSS 	3H, 2H 			//1E36 	2D03
		LJUMP 	63EH 			//1E37 	3E3E
		LDR 	21H, 0H 			//1E38 	1821
		SUBWR 	25H, 0H 		//1E39 	1225
		BTSS 	3H, 2H 			//1E3A 	2D03
		LJUMP 	63EH 			//1E3B 	3E3E
		LDR 	20H, 0H 			//1E3C 	1820
		SUBWR 	24H, 0H 		//1E3D 	1224
		BTSS 	3H, 0H 			//1E3E 	2C03
		LJUMP 	649H 			//1E3F 	3E49
		LDR 	20H, 0H 			//1E40 	1820
		SUBWR 	24H, 1H 		//1E41 	12A4
		LDR 	21H, 0H 			//1E42 	1821
		SUBWFB 	25H, 1H 		//1E43 	0BA5
		LDR 	22H, 0H 			//1E44 	1822
		SUBWFB 	26H, 1H 		//1E45 	0BA6
		LDR 	23H, 0H 			//1E46 	1823
		SUBWFB 	27H, 1H 		//1E47 	0BA7
		BSR 	28H, 0H 			//1E48 	2428
		LSRF 	23H, 1H 		//1E49 	06A3
		RRR 	22H, 1H 			//1E4A 	1CA2
		RRR 	21H, 1H 			//1E4B 	1CA1
		RRR 	20H, 1H 			//1E4C 	1CA0
		DECRSZ 	2CH, 1H 		//1E4D 	1BAC
		LJUMP 	62CH 			//1E4E 	3E2C
		LDR 	2BH, 0H 			//1E4F 	182B
		STR 	23H 			//1E50 	10A3
		LDR 	2AH, 0H 			//1E51 	182A
		STR 	22H 			//1E52 	10A2
		LDR 	29H, 0H 			//1E53 	1829
		STR 	21H 			//1E54 	10A1
		LDR 	28H, 0H 			//1E55 	1828
		STR 	20H 			//1E56 	10A0
		RET 					//1E57 	1008
		MOVLB 	1H 			//1E58 	1021
		STR 	21H 			//1E59 	10A1
		LDWI 	3AH 			//1E5A 	003A
		CLRF 	20H 			//1E5B 	11A0
		SUBWR 	21H, 0H 		//1E5C 	1221
		BTSC 	3H, 0H 			//1E5D 	2803
		LJUMP 	665H 			//1E5E 	3E65
		LDWI 	30H 			//1E5F 	0030
		SUBWR 	21H, 0H 		//1E60 	1221
		BTSS 	3H, 0H 			//1E61 	2C03
		LJUMP 	665H 			//1E62 	3E65
		CLRF 	20H 			//1E63 	11A0
		INCR 	20H, 1H 		//1E64 	1AA0
		RRR 	20H, 0H 			//1E65 	1C20
		RET 					//1E66 	1008
		LDR 	22H, 0H 			//1E67 	1822
		IORWR 	21H, 0H 		//1E68 	1421
		IORWR 	20H, 0H 		//1E69 	1420
		BTSC 	3H, 2H 			//1E6A 	2903
		RET 					//1E6B 	1008
		LDWI 	80H 			//1E6C 	0080
		XORWR 	22H, 1H 		//1E6D 	16A2
		RET 					//1E6E 	1008
		LDR 	20H, 0H 			//1E6F 	1820
		STR 	26H 			//1E70 	10A6
		LDR 	21H, 0H 			//1E71 	1821
		STR 	27H 			//1E72 	10A7
		LDR 	22H, 0H 			//1E73 	1822
		STR 	28H 			//1E74 	10A8
		BCR 	3H, 0H 			//1E75 	2003
		RLR 	27H, 0H 			//1E76 	1D27
		RLR 	28H, 0H 			//1E77 	1D28
		STR 	2EH 			//1E78 	10AE
		LDR 	2EH, 0H 			//1E79 	182E
		BTSS 	3H, 2H 			//1E7A 	2D03
		LJUMP 	681H 			//1E7B 	3E81
		CLRF 	20H 			//1E7C 	11A0
		CLRF 	21H 			//1E7D 	11A1
		CLRF 	22H 			//1E7E 	11A2
		CLRF 	23H 			//1E7F 	11A3
		RET 					//1E80 	1008
		LDR 	23H, 0H 			//1E81 	1823
		STR 	26H 			//1E82 	10A6
		LDR 	24H, 0H 			//1E83 	1824
		STR 	27H 			//1E84 	10A7
		LDR 	25H, 0H 			//1E85 	1825
		STR 	28H 			//1E86 	10A8
		BCR 	3H, 0H 			//1E87 	2003
		RLR 	27H, 0H 			//1E88 	1D27
		RLR 	28H, 0H 			//1E89 	1D28
		STR 	2DH 			//1E8A 	10AD
		LDR 	2DH, 0H 			//1E8B 	182D
		BTSC 	3H, 2H 			//1E8C 	2903
		LJUMP 	67CH 			//1E8D 	3E7C
		LDWI 	7FH 			//1E8E 	007F
		BSR 	21H, 7H 			//1E8F 	27A1
		CLRF 	22H 			//1E90 	11A2
		BSR 	24H, 7H 			//1E91 	27A4
		CLRF 	25H 			//1E92 	11A5
		CLRF 	29H 			//1E93 	11A9
		CLRF 	2AH 			//1E94 	11AA
		CLRF 	2BH 			//1E95 	11AB
		CLRF 	2CH 			//1E96 	11AC
		SUBWR 	2EH, 1H 		//1E97 	12AE
		LDWI 	98H 			//1E98 	0098
		ADDWR 	2DH, 0H 		//1E99 	172D
		STR 	26H 			//1E9A 	10A6
		SUBWR 	2EH, 1H 		//1E9B 	12AE
		LDWI 	18H 			//1E9C 	0018
		STR 	2DH 			//1E9D 	10AD
		LSLF 	29H, 1H 		//1E9E 	05A9
		RLR 	2AH, 1H 			//1E9F 	1DAA
		RLR 	2BH, 1H 			//1EA0 	1DAB
		RLR 	2CH, 1H 			//1EA1 	1DAC
		LDR 	25H, 0H 			//1EA2 	1825
		SUBWR 	22H, 0H 		//1EA3 	1222
		BTSS 	3H, 2H 			//1EA4 	2D03
		LJUMP 	6ACH 			//1EA5 	3EAC
		LDR 	24H, 0H 			//1EA6 	1824
		SUBWR 	21H, 0H 		//1EA7 	1221
		BTSS 	3H, 2H 			//1EA8 	2D03
		LJUMP 	6ACH 			//1EA9 	3EAC
		LDR 	23H, 0H 			//1EAA 	1823
		SUBWR 	20H, 0H 		//1EAB 	1220
		BTSS 	3H, 0H 			//1EAC 	2C03
		LJUMP 	6B5H 			//1EAD 	3EB5
		LDR 	23H, 0H 			//1EAE 	1823
		SUBWR 	20H, 1H 		//1EAF 	12A0
		LDR 	24H, 0H 			//1EB0 	1824
		SUBWFB 	21H, 1H 		//1EB1 	0BA1
		LDR 	25H, 0H 			//1EB2 	1825
		SUBWFB 	22H, 1H 		//1EB3 	0BA2
		BSR 	29H, 0H 			//1EB4 	2429
		LSLF 	20H, 1H 		//1EB5 	05A0
		RLR 	21H, 1H 			//1EB6 	1DA1
		RLR 	22H, 1H 			//1EB7 	1DA2
		DECRSZ 	2DH, 1H 		//1EB8 	1BAD
		LJUMP 	69EH 			//1EB9 	3E9E
		BTSS 	2EH, 7H 		//1EBA 	2FAE
		LJUMP 	6C8H 			//1EBB 	3EC8
		LDR 	2EH, 0H 			//1EBC 	182E
		XORWI 	80H 			//1EBD 	0A80
		ADDWI 	97H 			//1EBE 	0E97
		BTSS 	3H, 0H 			//1EBF 	2C03
		LJUMP 	67CH 			//1EC0 	3E7C
		LSRF 	2CH, 1H 		//1EC1 	06AC
		RRR 	2BH, 1H 			//1EC2 	1CAB
		RRR 	2AH, 1H 			//1EC3 	1CAA
		RRR 	29H, 1H 			//1EC4 	1CA9
		INCRSZ 	2EH, 1H 		//1EC5 	1FAE
		LJUMP 	6C1H 			//1EC6 	3EC1
		LJUMP 	6D5H 			//1EC7 	3ED5
		LDWI 	18H 			//1EC8 	0018
		SUBWR 	2EH, 0H 		//1EC9 	122E
		BTSC 	3H, 0H 			//1ECA 	2803
		LJUMP 	67CH 			//1ECB 	3E7C
		LDR 	2EH, 0H 			//1ECC 	182E
		BTSC 	3H, 2H 			//1ECD 	2903
		LJUMP 	6D5H 			//1ECE 	3ED5
		LSLF 	29H, 1H 		//1ECF 	05A9
		RLR 	2AH, 1H 			//1ED0 	1DAA
		RLR 	2BH, 1H 			//1ED1 	1DAB
		RLR 	2CH, 1H 			//1ED2 	1DAC
		DECR 	2EH, 1H 		//1ED3 	13AE
		LJUMP 	6CCH 			//1ED4 	3ECC
		LDR 	2CH, 0H 			//1ED5 	182C
		STR 	23H 			//1ED6 	10A3
		LDR 	2BH, 0H 			//1ED7 	182B
		STR 	22H 			//1ED8 	10A2
		LDR 	2AH, 0H 			//1ED9 	182A
		STR 	21H 			//1EDA 	10A1
		LDR 	29H, 0H 			//1EDB 	1829
		STR 	20H 			//1EDC 	10A0
		RET 					//1EDD 	1008
		LDR 	49H, 0H 			//1EDE 	1849
		MOVLB 	1H 			//1EDF 	1021
		STR 	6AH 			//1EE0 	10EA
		LDWI 	0H 			//1EE1 	0000
		CLRF 	6BH 			//1EE2 	11EB
		LSLF 	6AH, 1H 		//1EE3 	05EA
		RLR 	6BH, 1H 			//1EE4 	1DEB
		LSLF 	6AH, 1H 		//1EE5 	05EA
		RLR 	6BH, 1H 			//1EE6 	1DEB
		ADDWR 	6AH, 0H 		//1EE7 	176A
		STR 	4H 			//1EE8 	1084
		LDWI 	A0H 			//1EE9 	00A0
		ADDWFC 	6BH, 0H 		//1EEA 	0D6B
		STR 	5H 			//1EEB 	1085
		MOVIW 	0H[0] 			//1EEC 	0F00
		RET 					//1EED 	1008
		STR 	20H 			//1EEE 	10A0
		MOVIW 	1H[0] 			//1EEF 	0F01
		STR 	21H 			//1EF0 	10A1
		MOVIW 	2H[0] 			//1EF1 	0F02
		STR 	22H 			//1EF2 	10A2
		MOVIW 	3H[0] 			//1EF3 	0F03
		STR 	23H 			//1EF4 	10A3
		MOVLB 	2H 			//1EF5 	1022
		LDR 	3DH, 0H 			//1EF6 	183D
		MOVLB 	1H 			//1EF7 	1021
		STR 	27H 			//1EF8 	10A7
		MOVLB 	2H 			//1EF9 	1022
		LDR 	3CH, 0H 			//1EFA 	183C
		MOVLB 	1H 			//1EFB 	1021
		STR 	26H 			//1EFC 	10A6
		MOVLB 	2H 			//1EFD 	1022
		LDR 	3BH, 0H 			//1EFE 	183B
		MOVLB 	1H 			//1EFF 	1021
		STR 	25H 			//1F00 	10A5
		MOVLB 	2H 			//1F01 	1022
		LDR 	3AH, 0H 			//1F02 	183A
		MOVLB 	1H 			//1F03 	1021
		STR 	24H 			//1F04 	10A4
		RET 					//1F05 	1008
		LDR 	23H, 0H 			//1F06 	1823
		MOVLB 	2H 			//1F07 	1022
		STR 	39H 			//1F08 	10B9
		MOVLB 	1H 			//1F09 	1021
		LDR 	22H, 0H 			//1F0A 	1822
		MOVLB 	2H 			//1F0B 	1022
		STR 	38H 			//1F0C 	10B8
		MOVLB 	1H 			//1F0D 	1021
		LDR 	21H, 0H 			//1F0E 	1821
		MOVLB 	2H 			//1F0F 	1022
		STR 	37H 			//1F10 	10B7
		MOVLB 	1H 			//1F11 	1021
		LDR 	20H, 0H 			//1F12 	1820
		MOVLB 	2H 			//1F13 	1022
		STR 	36H 			//1F14 	10B6
		LDWI 	AH 			//1F15 	000A
		MOVLB 	1H 			//1F16 	1021
		STR 	2DH 			//1F17 	10AD
		CLRF 	2EH 			//1F18 	11AE
		CLRF 	2FH 			//1F19 	11AF
		CLRF 	30H 			//1F1A 	11B0
		MOVLB 	2H 			//1F1B 	1022
		LDR 	39H, 0H 			//1F1C 	1839
		MOVLB 	1H 			//1F1D 	1021
		STR 	34H 			//1F1E 	10B4
		MOVLB 	2H 			//1F1F 	1022
		LDR 	38H, 0H 			//1F20 	1838
		MOVLB 	1H 			//1F21 	1021
		STR 	33H 			//1F22 	10B3
		MOVLB 	2H 			//1F23 	1022
		LDR 	37H, 0H 			//1F24 	1837
		MOVLB 	1H 			//1F25 	1021
		STR 	32H 			//1F26 	10B2
		MOVLB 	2H 			//1F27 	1022
		LDR 	36H, 0H 			//1F28 	1836
		MOVLB 	1H 			//1F29 	1021
		STR 	31H 			//1F2A 	10B1
		RET 					//1F2B 	1008
		LDR 	30H, 0H 			//1F2C 	1830
		MOVLB 	2H 			//1F2D 	1022
		STR 	39H 			//1F2E 	10B9
		MOVLB 	1H 			//1F2F 	1021
		LDR 	2FH, 0H 			//1F30 	182F
		MOVLB 	2H 			//1F31 	1022
		STR 	38H 			//1F32 	10B8
		MOVLB 	1H 			//1F33 	1021
		LDR 	2EH, 0H 			//1F34 	182E
		MOVLB 	2H 			//1F35 	1022
		STR 	37H 			//1F36 	10B7
		MOVLB 	1H 			//1F37 	1021
		LDR 	2DH, 0H 			//1F38 	182D
		MOVLB 	2H 			//1F39 	1022
		STR 	36H 			//1F3A 	10B6
		ADDWI 	30H 			//1F3B 	0E30
		MOVLB 	1H 			//1F3C 	1021
		STR 	6AH 			//1F3D 	10EA
		MOVLB 	2H 			//1F3E 	1022
		LDR 	20H, 0H 			//1F3F 	1820
		STR 	6H 			//1F40 	1086
		LDR 	21H, 0H 			//1F41 	1821
		STR 	7H 			//1F42 	1087
		MOVLB 	1H 			//1F43 	1021
		LDR 	6AH, 0H 			//1F44 	186A
		RET 					//1F45 	1008
		LDR 	20H, 0H 			//1F46 	1820
		STR 	6H 			//1F47 	1086
		LDR 	21H, 0H 			//1F48 	1821
		STR 	7H 			//1F49 	1087
		LDWI 	30H 			//1F4A 	0030
		STR 	1H 			//1F4B 	1081
		INCR 	20H, 1H 		//1F4C 	1AA0
		BTSC 	3H, 2H 			//1F4D 	2903
		INCR 	21H, 1H 		//1F4E 	1AA1
		RETW 	FFH 			//1F4F 	04FF
		LDR 	23H, 0H 			//1F50 	1823
		MOVLB 	1H 			//1F51 	1021
		STR 	6BH 			//1F52 	10EB
		MOVLB 	2H 			//1F53 	1022
		LDR 	22H, 0H 			//1F54 	1822
		MOVLB 	1H 			//1F55 	1021
		STR 	6AH 			//1F56 	10EA
		MOVLB 	2H 			//1F57 	1022
		INCR 	22H, 1H 		//1F58 	1AA2
		BTSC 	3H, 2H 			//1F59 	2903
		INCR 	23H, 1H 		//1F5A 	1AA3
		MOVLB 	1H 			//1F5B 	1021
		LDR 	6AH, 0H 			//1F5C 	186A
		STR 	4H 			//1F5D 	1084
		LDR 	6BH, 0H 			//1F5E 	186B
		STR 	5H 			//1F5F 	1085
		LDR 	0H, 0H 			//1F60 	1800
		MOVLB 	2H 			//1F61 	1022
		STR 	49H 			//1F62 	10C9
		RET 					//1F63 	1008
		LDR 	36H, 0H 			//1F64 	1836
		MOVLB 	1H 			//1F65 	1021
		STR 	32H 			//1F66 	10B2
		MOVLB 	2H 			//1F67 	1022
		LDR 	37H, 0H 			//1F68 	1837
		MOVLB 	1H 			//1F69 	1021
		STR 	33H 			//1F6A 	10B3
		MOVLB 	2H 			//1F6B 	1022
		LDR 	38H, 0H 			//1F6C 	1838
		MOVLB 	1H 			//1F6D 	1021
		STR 	34H 			//1F6E 	10B4
		RET 					//1F6F 	1008
		LDR 	55H, 0H 			//1F70 	1855
		MOVLB 	2H 			//1F71 	1022
		STR 	36H 			//1F72 	10B6
		MOVLB 	1H 			//1F73 	1021
		LDR 	56H, 0H 			//1F74 	1856
		MOVLB 	2H 			//1F75 	1022
		STR 	37H 			//1F76 	10B7
		MOVLB 	1H 			//1F77 	1021
		LDR 	57H, 0H 			//1F78 	1857
		MOVLB 	2H 			//1F79 	1022
		STR 	38H 			//1F7A 	10B8
		LDR 	44H, 0H 			//1F7B 	1844
		MOVLB 	1H 			//1F7C 	1021
		RET 					//1F7D 	1008
		LDR 	60H, 0H 			//1F7E 	1860
		MOVLB 	2H 			//1F7F 	1022
		STR 	3DH 			//1F80 	10BD
		MOVLB 	1H 			//1F81 	1021
		LDR 	5FH, 0H 			//1F82 	185F
		MOVLB 	2H 			//1F83 	1022
		STR 	3CH 			//1F84 	10BC
		MOVLB 	1H 			//1F85 	1021
		LDR 	5EH, 0H 			//1F86 	185E
		MOVLB 	2H 			//1F87 	1022
		STR 	3BH 			//1F88 	10BB
		MOVLB 	1H 			//1F89 	1021
		LDR 	5DH, 0H 			//1F8A 	185D
		RET 					//1F8B 	1008
		XORWI 	80H 			//1F8C 	0A80
		MOVLB 	1H 			//1F8D 	1021
		STR 	6AH 			//1F8E 	10EA
		LDWI 	80H 			//1F8F 	0080
		SUBWR 	6AH, 0H 		//1F90 	126A
		RET 					//1F91 	1008
		LDR 	22H, 0H 			//1F92 	1822
		STR 	4H 			//1F93 	1084
		LDR 	23H, 0H 			//1F94 	1823
		STR 	5H 			//1F95 	1085
		LDR 	0H, 0H 			//1F96 	1800
		RET 					//1F97 	1008
		LDR 	44H, 0H 			//1F98 	1844
		MOVLB 	1H 			//1F99 	1021
		STR 	5DH 			//1F9A 	10DD
		MOVLB 	2H 			//1F9B 	1022
		LDR 	45H, 0H 			//1F9C 	1845
		MOVLB 	1H 			//1F9D 	1021
		STR 	5EH 			//1F9E 	10DE
		MOVLB 	2H 			//1F9F 	1022
		LDR 	46H, 0H 			//1FA0 	1846
		MOVLB 	1H 			//1FA1 	1021
		STR 	5FH 			//1FA2 	10DF
		RET 					//1FA3 	1008
		MOVLB 	1H 			//1FA4 	1021
		STR 	6AH 			//1FA5 	10EA
		CLRF 	6BH 			//1FA6 	11EB
		BTSC 	6AH, 7H 		//1FA7 	2BEA
		DECR 	6BH, 1H 		//1FA8 	13EB
		MOVLB 	2H 			//1FA9 	1022
		RET 					//1FAA 	1008
		STR 	1H 			//1FAB 	1081
		INCR 	20H, 1H 		//1FAC 	1AA0
		BTSC 	3H, 2H 			//1FAD 	2903
		INCR 	21H, 1H 		//1FAE 	1AA1
		LDWI 	FFH 			//1FAF 	00FF
		ADDWR 	42H, 1H 		//1FB0 	17C2
		RET 					//1FB1 	1008
		LDR 	20H, 0H 			//1FB2 	1820
		STR 	6H 			//1FB3 	1086
		LDR 	21H, 0H 			//1FB4 	1821
		STR 	7H 			//1FB5 	1087
		RETW 	20H 			//1FB6 	0420
		LDR 	49H, 0H 			//1FB7 	1849
		MOVLB 	1H 			//1FB8 	1021
		STR 	6AH 			//1FB9 	10EA
		CLRF 	6BH 			//1FBA 	11EB
		BTSC 	6AH, 7H 		//1FBB 	2BEA
		DECR 	6BH, 1H 		//1FBC 	13EB
		LDR 	6BH, 0H 			//1FBD 	186B
		XORWI 	80H 			//1FBE 	0A80
		STR 	6CH 			//1FBF 	10EC
		MOVLB 	2H 			//1FC0 	1022
		RET 					//1FC1 	1008
		STR 	6CH 			//1FC2 	10EC
		MOVIW 	1H[0] 			//1FC3 	0F01
		STR 	6DH 			//1FC4 	10ED
		MOVIW 	2H[0] 			//1FC5 	0F02
		STR 	6EH 			//1FC6 	10EE
		MOVIW 	3H[0] 			//1FC7 	0F03
		STR 	6FH 			//1FC8 	10EF
		LDR 	6FH, 0H 			//1FC9 	186F
		MOVLB 	2H 			//1FCA 	1022
		SUBWR 	3DH, 0H 		//1FCB 	123D
		RET 					//1FCC 	1008
		STR 	46H 			//1FCD 	10C6
		MOVLB 	2H 			//1FCE 	1022
		LDR 	45H, 0H 			//1FCF 	1845
		MOVLB 	1H 			//1FD0 	1021
		STR 	47H 			//1FD1 	10C7
		MOVLB 	2H 			//1FD2 	1022
		LDR 	46H, 0H 			//1FD3 	1846
		MOVLB 	1H 			//1FD4 	1021
		STR 	48H 			//1FD5 	10C8
		RET 					//1FD6 	1008
		LDR 	20H, 0H 			//1FD7 	1820
		STR 	6H 			//1FD8 	1086
		LDR 	21H, 0H 			//1FD9 	1821
		STR 	7H 			//1FDA 	1087
		RETW 	2DH 			//1FDB 	042D
		STR 	6H 			//1FDC 	1086
		LDWI 	1H 			//1FDD 	0001
		STR 	7H 			//1FDE 	1087
		MOVIW 	0H[1] 			//1FDF 	0F40
		MOVLB 	1H 			//1FE0 	1021
		STR 	6AH 			//1FE1 	10EA
		MOVIW 	1H[1] 			//1FE2 	0F41
		STR 	6BH 			//1FE3 	10EB
		RET 					//1FE4 	1008
		LDR 	20H, 0H 			//1FE5 	1820
		STR 	6H 			//1FE6 	1086
		LDR 	21H, 0H 			//1FE7 	1821
		STR 	7H 			//1FE8 	1087
		LDR 	49H, 0H 			//1FE9 	1849
		RET 					//1FEA 	1008
		MOVLB 	1H 			//1FEB 	1021
		STR 	34H 			//1FEC 	10B4
		CLRF 	35H 			//1FED 	11B5
		CLRF 	36H 			//1FEE 	11B6
		CLRF 	37H 			//1FEF 	11B7
		RET 					//1FF0 	1008
		MOVLB 	1H 			//1FF1 	1021
		LDR 	6EH, 0H 			//1FF2 	186E
		MOVLB 	2H 			//1FF3 	1022
		SUBWR 	3CH, 0H 		//1FF4 	123C
		RET 					//1FF5 	1008
		MOVLB 	1H 			//1FF6 	1021
		LDR 	6CH, 0H 			//1FF7 	186C
		MOVLB 	2H 			//1FF8 	1022
		SUBWR 	3AH, 0H 		//1FF9 	123A
		RET 					//1FFA 	1008
		MOVLB 	1H 			//1FFB 	1021
		LDR 	6DH, 0H 			//1FFC 	186D
		MOVLB 	2H 			//1FFD 	1022
		SUBWR 	3BH, 0H 		//1FFE 	123B
		RET 					//1FFF 	1008
		RETW 	1H 			//2000 	0401
		RETW 	0H 			//2001 	0400
		RETW 	0H 			//2002 	0400
		RETW 	0H 			//2003 	0400
		RETW 	AH 			//2004 	040A
		RETW 	0H 			//2005 	0400
		RETW 	0H 			//2006 	0400
		RETW 	0H 			//2007 	0400
		RETW 	64H 			//2008 	0464
		RETW 	0H 			//2009 	0400
		RETW 	0H 			//200A 	0400
		RETW 	0H 			//200B 	0400
		RETW 	E8H 			//200C 	04E8
		RETW 	3H 			//200D 	0403
		RETW 	0H 			//200E 	0400
		RETW 	0H 			//200F 	0400
		RETW 	10H 			//2010 	0410
		RETW 	27H 			//2011 	0427
		RETW 	0H 			//2012 	0400
		RETW 	0H 			//2013 	0400
		RETW 	A0H 			//2014 	04A0
		RETW 	86H 			//2015 	0486
		RETW 	1H 			//2016 	0401
		RETW 	0H 			//2017 	0400
		RETW 	40H 			//2018 	0440
		RETW 	42H 			//2019 	0442
		RETW 	FH 			//201A 	040F
		RETW 	0H 			//201B 	0400
		RETW 	80H 			//201C 	0480
		RETW 	96H 			//201D 	0496
		RETW 	98H 			//201E 	0498
		RETW 	0H 			//201F 	0400
		RETW 	0H 			//2020 	0400
		RETW 	E1H 			//2021 	04E1
		RETW 	F5H 			//2022 	04F5
		RETW 	5H 			//2023 	0405
		RETW 	0H 			//2024 	0400
		RETW 	CAH 			//2025 	04CA
		RETW 	9AH 			//2026 	049A
		RETW 	3BH 			//2027 	043B
		RETW 	48H 			//2028 	0448
		RETW 	54H 			//2029 	0454
		RETW 	50H 			//202A 	0450
		RETW 	25H 			//202B 	0425
		RETW 	64H 			//202C 	0464
		RETW 	2CH 			//202D 	042C
		RETW 	25H 			//202E 	0425
		RETW 	64H 			//202F 	0464
		RETW 	2CH 			//2030 	042C
		RETW 	25H 			//2031 	0425
		RETW 	30H 			//2032 	0430
		RETW 	2EH 			//2033 	042E
		RETW 	30H 			//2034 	0430
		RETW 	66H 			//2035 	0466
		RETW 	2CH 			//2036 	042C
		RETW 	25H 			//2037 	0425
		RETW 	30H 			//2038 	0430
		RETW 	2EH 			//2039 	042E
		RETW 	30H 			//203A 	0430
		RETW 	66H 			//203B 	0466
		RETW 	2CH 			//203C 	042C
		RETW 	25H 			//203D 	0425
		RETW 	64H 			//203E 	0464
		RETW 	2CH 			//203F 	042C
		RETW 	25H 			//2040 	0425
		RETW 	64H 			//2041 	0464
		RETW 	DH 			//2042 	040D
		RETW 	AH 			//2043 	040A
		RETW 	0H 			//2044 	0400
		RETW 	0H 			//2045 	0400
		RETW 	80H 			//2046 	0480
		RETW 	3FH 			//2047 	043F
		RETW 	0H 			//2048 	0400
		RETW 	20H 			//2049 	0420
		RETW 	41H 			//204A 	0441
		RETW 	0H 			//204B 	0400
		RETW 	C8H 			//204C 	04C8
		RETW 	42H 			//204D 	0442
		RETW 	0H 			//204E 	0400
		RETW 	7AH 			//204F 	047A
		RETW 	44H 			//2050 	0444
		RETW 	40H 			//2051 	0440
		RETW 	1CH 			//2052 	041C
		RETW 	46H 			//2053 	0446
		RETW 	50H 			//2054 	0450
		RETW 	C3H 			//2055 	04C3
		RETW 	47H 			//2056 	0447
		RETW 	24H 			//2057 	0424
		RETW 	74H 			//2058 	0474
		RETW 	49H 			//2059 	0449
		RETW 	97H 			//205A 	0497
		RETW 	18H 			//205B 	0418
		RETW 	4BH 			//205C 	044B
		RETW 	BCH 			//205D 	04BC
		RETW 	BEH 			//205E 	04BE
		RETW 	4CH 			//205F 	044C
		RETW 	6BH 			//2060 	046B
		RETW 	6EH 			//2061 	046E
		RETW 	4EH 			//2062 	044E
		RETW 	3H 			//2063 	0403
		RETW 	15H 			//2064 	0415
		RETW 	50H 			//2065 	0450
		RETW 	79H 			//2066 	0479
		RETW 	ADH 			//2067 	04AD
		RETW 	60H 			//2068 	0460
		RETW 	F3H 			//2069 	04F3
		RETW 	49H 			//206A 	0449
		RETW 	71H 			//206B 	0471
		RETW 	0H 			//206C 	0400
		RETW 	80H 			//206D 	0480
		RETW 	3FH 			//206E 	043F
		RETW 	CDH 			//206F 	04CD
		RETW 	CCH 			//2070 	04CC
		RETW 	3DH 			//2071 	043D
		RETW 	D7H 			//2072 	04D7
		RETW 	23H 			//2073 	0423
		RETW 	3CH 			//2074 	043C
		RETW 	12H 			//2075 	0412
		RETW 	83H 			//2076 	0483
		RETW 	3AH 			//2077 	043A
		RETW 	B7H 			//2078 	04B7
		RETW 	D1H 			//2079 	04D1
		RETW 	38H 			//207A 	0438
		RETW 	C6H 			//207B 	04C6
		RETW 	27H 			//207C 	0427
		RETW 	37H 			//207D 	0437
		RETW 	38H 			//207E 	0438
		RETW 	86H 			//207F 	0486
		RETW 	35H 			//2080 	0435
		RETW 	C0H 			//2081 	04C0
		RETW 	D6H 			//2082 	04D6
		RETW 	33H 			//2083 	0433
		RETW 	CCH 			//2084 	04CC
		RETW 	2BH 			//2085 	042B
		RETW 	32H 			//2086 	0432
		RETW 	70H 			//2087 	0470
		RETW 	89H 			//2088 	0489
		RETW 	30H 			//2089 	0430
		RETW 	E7H 			//208A 	04E7
		RETW 	DBH 			//208B 	04DB
		RETW 	2EH 			//208C 	042E
		RETW 	E5H 			//208D 	04E5
		RETW 	3CH 			//208E 	043C
		RETW 	1EH 			//208F 	041E
		RETW 	42H 			//2090 	0442
		RETW 	A2H 			//2091 	04A2
		RETW 	DH 			//2092 	040D
		RETW 	54H 			//2093 	0454
		RETW 	43H 			//2094 	0443
		RETW 	52H 			//2095 	0452
		RETW 	25H 			//2096 	0425
		RETW 	30H 			//2097 	0430
		RETW 	2EH 			//2098 	042E
		RETW 	30H 			//2099 	0430
		RETW 	66H 			//209A 	0466
		RETW 	2CH 			//209B 	042C
		RETW 	25H 			//209C 	0425
		RETW 	30H 			//209D 	0430
		RETW 	2EH 			//209E 	042E
		RETW 	30H 			//209F 	0430
		RETW 	66H 			//20A0 	0466
		RETW 	2CH 			//20A1 	042C
		RETW 	25H 			//20A2 	0425
		RETW 	30H 			//20A3 	0430
		RETW 	2EH 			//20A4 	042E
		RETW 	32H 			//20A5 	0432
		RETW 	66H 			//20A6 	0466
		RETW 	DH 			//20A7 	040D
		RETW 	AH 			//20A8 	040A
		RETW 	0H 			//20A9 	0400
		RETW 	56H 			//20AA 	0456
		RETW 	65H 			//20AB 	0465
		RETW 	72H 			//20AC 	0472
		RETW 	73H 			//20AD 	0473
		RETW 	69H 			//20AE 	0469
		RETW 	6FH 			//20AF 	046F
		RETW 	6EH 			//20B0 	046E
		RETW 	5FH 			//20B1 	045F
		RETW 	31H 			//20B2 	0431
		RETW 	2EH 			//20B3 	042E
		RETW 	30H 			//20B4 	0430
		RETW 	20H 			//20B5 	0420
		RETW 	4FH 			//20B6 	044F
		RETW 	43H 			//20B7 	0443
		RETW 	54H 			//20B8 	0454
		RETW 	32H 			//20B9 	0432
		RETW 	30H 			//20BA 	0430
		RETW 	32H 			//20BB 	0432
		RETW 	32H 			//20BC 	0432
		RETW 	DH 			//20BD 	040D
		RETW 	AH 			//20BE 	040A
		RETW 	0H 			//20BF 	0400
		RETW 	44H 			//20C0 	0444
		RETW 	25H 			//20C1 	0425
		RETW 	64H 			//20C2 	0464
		RETW 	2CH 			//20C3 	042C
		RETW 	25H 			//20C4 	0425
		RETW 	30H 			//20C5 	0430
		RETW 	2EH 			//20C6 	042E
		RETW 	31H 			//20C7 	0431
		RETW 	66H 			//20C8 	0466
		RETW 	DH 			//20C9 	040D
		RETW 	AH 			//20CA 	040A
		RETW 	0H 			//20CB 	0400
		RETW 	54H 			//20CC 	0454
		RETW 	3AH 			//20CD 	043A
		RETW 	25H 			//20CE 	0425
		RETW 	30H 			//20CF 	0430
		RETW 	2EH 			//20D0 	042E
		RETW 	31H 			//20D1 	0431
		RETW 	66H 			//20D2 	0466
		RETW 	DH 			//20D3 	040D
		RETW 	AH 			//20D4 	040A
		RETW 	0H 			//20D5 	0400
		RETW 	54H 			//20D6 	0454
		RETW 	25H 			//20D7 	0425
		RETW 	30H 			//20D8 	0430
		RETW 	2EH 			//20D9 	042E
		RETW 	31H 			//20DA 	0431
		RETW 	66H 			//20DB 	0466
		RETW 	DH 			//20DC 	040D
		RETW 	AH 			//20DD 	040A
		RETW 	0H 			//20DE 	0400
		RETW 	48H 			//20DF 	0448
		RETW 	30H 			//20E0 	0430
		RETW 	DH 			//20E1 	040D
		RETW 	AH 			//20E2 	040A
		RETW 	0H 			//20E3 	0400
		RETW 	50H 			//20E4 	0450
		RETW 	30H 			//20E5 	0430
		RETW 	DH 			//20E6 	040D
		RETW 	AH 			//20E7 	040A
		RETW 	0H 			//20E8 	0400
		RETW 	53H 			//20E9 	0453
		RETW 	30H 			//20EA 	0430
		RETW 	DH 			//20EB 	040D
		RETW 	AH 			//20EC 	040A
		RETW 	0H 			//20ED 	0400
		RETW 	54H 			//20EE 	0454
		RETW 	30H 			//20EF 	0430
		RETW 	DH 			//20F0 	040D
		RETW 	AH 			//20F1 	040A
		RETW 	0H 			//20F2 	0400
		RETW 	48H 			//20F3 	0448
		RETW 	31H 			//20F4 	0431
		RETW 	DH 			//20F5 	040D
		RETW 	AH 			//20F6 	040A
		RETW 	0H 			//20F7 	0400
		RETW 	50H 			//20F8 	0450
		RETW 	31H 			//20F9 	0431
		RETW 	DH 			//20FA 	040D
		RETW 	AH 			//20FB 	040A
		RETW 	0H 			//20FC 	0400
		RETW 	53H 			//20FD 	0453
		RETW 	31H 			//20FE 	0431
		RETW 	DH 			//20FF 	040D
		RETW 	AH 			//2100 	040A
		RETW 	0H 			//2101 	0400
		RETW 	72H 			//2102 	0472
		RETW 	64H 			//2103 	0464
		RETW 	31H 			//2104 	0431
		RETW 	0H 			//2105 	0400
		RETW 	72H 			//2106 	0472
		RETW 	64H 			//2107 	0464
		RETW 	32H 			//2108 	0432
		RETW 	0H 			//2109 	0400
		RETW 	52H 			//210A 	0452
		RETW 	30H 			//210B 	0430
		RETW 	3AH 			//210C 	043A
		RETW 	0H 			//210D 	0400
		RETW 	54H 			//210E 	0454
		RETW 	30H 			//210F 	0430
		RETW 	3AH 			//2110 	043A
		RETW 	0H 			//2111 	0400
		RETW 	54H 			//2112 	0454
		RETW 	31H 			//2113 	0431
		RETW 	3AH 			//2114 	043A
		RETW 	0H 			//2115 	0400
		RETW 	74H 			//2116 	0474
		RETW 	31H 			//2117 	0431
		RETW 	3AH 			//2118 	043A
		RETW 	0H 			//2119 	0400
		RETW 	54H 			//211A 	0454
		RETW 	32H 			//211B 	0432
		RETW 	3AH 			//211C 	043A
		RETW 	0H 			//211D 	0400
		RETW 	74H 			//211E 	0474
		RETW 	32H 			//211F 	0432
		RETW 	3AH 			//2120 	043A
		RETW 	0H 			//2121 	0400
		RETW 	70H 			//2122 	0470
		RETW 	66H 			//2123 	0466
		RETW 	3AH 			//2124 	043A
		RETW 	0H 			//2125 	0400
		RETW 	54H 			//2126 	0454
		ORG		2127H
		RETW 	72H 			//2127 	0472
		RETW 	3AH 			//2128 	043A
		RETW 	0H 			//2129 	0400
		RETW 	70H 			//212A 	0470
		RETW 	74H 			//212B 	0474
		RETW 	3AH 			//212C 	043A
		RETW 	0H 			//212D 	0400
		ORG		2460H
		MOVLB 	0H 			//2460 	1020
		STR 	45H 			//2461 	10C5
		CLRF 	29H 			//2462 	11A9
		LCALL 	486H 			//2463 	3486
		LDR 	29H, 0H 			//2464 	1829
		STR 	41H 			//2465 	10C1
		LDR 	2AH, 0H 			//2466 	182A
		STR 	42H 			//2467 	10C2
		LDR 	2BH, 0H 			//2468 	182B
		STR 	43H 			//2469 	10C3
		RET 					//246A 	1008
		CLRF 	7DH 			//246B 	11FD
		BTSS 	26H, 7H 		//246C 	2FA6
		LJUMP 	475H 			//246D 	3C75
		COMR 	25H, 1H 		//246E 	19A5
		COMR 	26H, 1H 		//246F 	19A6
		INCR 	25H, 1H 		//2470 	1AA5
		BTSC 	3H, 2H 			//2471 	2903
		INCR 	26H, 1H 		//2472 	1AA6
		CLRF 	7DH 			//2473 	11FD
		INCR 	7DH, 1H 		//2474 	1AFD
		LDR 	25H, 0H 			//2475 	1825
		STR 	70H 			//2476 	10F0
		LDR 	26H, 0H 			//2477 	1826
		STR 	71H 			//2478 	10F1
		LDWI 	8EH 			//2479 	008E
		CLRF 	72H 			//247A 	11F2
		STR 	73H 			//247B 	10F3
		LDR 	7DH, 0H 			//247C 	187D
		STR 	74H 			//247D 	10F4
		LCALL 	70FH 			//247E 	370F
		LDR 	70H, 0H 			//247F 	1870
		STR 	25H 			//2480 	10A5
		LDR 	71H, 0H 			//2481 	1871
		STR 	26H 			//2482 	10A6
		LDR 	72H, 0H 			//2483 	1872
		STR 	27H 			//2484 	10A7
		RET 					//2485 	1008
		STR 	40H 			//2486 	10C0
		LDR 	29H, 0H 			//2487 	1829
		BTSC 	3H, 2H 			//2488 	2903
		LJUMP 	48CH 			//2489 	3C8C
		LCALL 	7F2H 			//248A 	37F2
		MOVLP 	24H 			//248B 	01A4
		LCALL 	7B2H 			//248C 	37B2
		MOVLP 	24H 			//248D 	01A4
		STR 	39H 			//248E 	10B9
		LCALL 	7A0H 			//248F 	37A0
		MOVLP 	24H 			//2490 	01A4
		BTSS 	3H, 0H 			//2491 	2C03
		LJUMP 	495H 			//2492 	3C95
		INCR 	40H, 1H 		//2493 	1AC0
		LJUMP 	48CH 			//2494 	3C8C
		LDWI 	2DH 			//2495 	002D
		CLRF 	3AH 			//2496 	11BA
		XORWR 	39H, 0H 		//2497 	1639
		BTSS 	3H, 2H 			//2498 	2D03
		LJUMP 	49DH 			//2499 	3C9D
		CLRF 	3AH 			//249A 	11BA
		INCR 	3AH, 1H 		//249B 	1ABA
		LJUMP 	4A0H 			//249C 	3CA0
		LDWI 	2BH 			//249D 	002B
		XORWR 	39H, 0H 		//249E 	1639
		BTSC 	3H, 2H 			//249F 	2903
		INCR 	40H, 1H 		//24A0 	1AC0
		CLRF 	39H 			//24A1 	11B9
		CLRF 	3CH 			//24A2 	11BC
		CLRF 	3DH 			//24A3 	11BD
		CLRF 	3EH 			//24A4 	11BE
		CLRF 	3FH 			//24A5 	11BF
		CLRF 	3BH 			//24A6 	11BB
		LJUMP 	4B2H 			//24A7 	3CB2
		LDR 	40H, 0H 			//24A8 	1840
		STR 	6H 			//24A9 	1086
		LDWI 	3H 			//24AA 	0003
		STR 	7H 			//24AB 	1087
		LDWI 	2EH 			//24AC 	002E
		XORWR 	1H, 0H 		//24AD 	1601
		BTSS 	3H, 2H 			//24AE 	2D03
		LJUMP 	4B4H 			//24AF 	3CB4
		BSR 	3AH, 4H 			//24B0 	263A
		INCR 	40H, 1H 		//24B1 	1AC0
		BTSS 	3AH, 4H 		//24B2 	2E3A
		LJUMP 	4A8H 			//24B3 	3CA8
		LCALL 	7B2H 			//24B4 	37B2
		MOVLP 	24H 			//24B5 	01A4
		LCALL 	609H 			//24B6 	3609
		MOVLP 	24H 			//24B7 	01A4
		BTSS 	3H, 0H 			//24B8 	2C03
		LJUMP 	4E9H 			//24B9 	3CE9
		LDWI 	8H 			//24BA 	0008
		BSR 	3AH, 1H 			//24BB 	24BA
		XORWR 	39H, 0H 		//24BC 	1639
		BTSC 	3H, 2H 			//24BD 	2903
		LJUMP 	4E5H 			//24BE 	3CE5
		BTSC 	3AH, 4H 		//24BF 	2A3A
		DECR 	3BH, 1H 		//24C0 	13BB
		LDWI 	AH 			//24C1 	000A
		INCR 	39H, 1H 		//24C2 	1AB9
		STR 	70H 			//24C3 	10F0
		CLRF 	71H 			//24C4 	11F1
		CLRF 	72H 			//24C5 	11F2
		CLRF 	73H 			//24C6 	11F3
		LDR 	3FH, 0H 			//24C7 	183F
		STR 	77H 			//24C8 	10F7
		LDR 	3EH, 0H 			//24C9 	183E
		STR 	76H 			//24CA 	10F6
		LDR 	3DH, 0H 			//24CB 	183D
		STR 	75H 			//24CC 	10F5
		LDR 	3CH, 0H 			//24CD 	183C
		STR 	74H 			//24CE 	10F4
		LCALL 	77BH 			//24CF 	377B
		MOVLP 	24H 			//24D0 	01A4
		LDR 	73H, 0H 			//24D1 	1873
		STR 	3FH 			//24D2 	10BF
		LDR 	72H, 0H 			//24D3 	1872
		STR 	3EH 			//24D4 	10BE
		LDR 	71H, 0H 			//24D5 	1871
		STR 	3DH 			//24D6 	10BD
		LDR 	70H, 0H 			//24D7 	1870
		STR 	3CH 			//24D8 	10BC
		LCALL 	7B2H 			//24D9 	37B2
		MOVLP 	24H 			//24DA 	01A4
		ADDWI 	D0H 			//24DB 	0ED0
		ADDWR 	3CH, 1H 		//24DC 	17BC
		LDWI 	1H 			//24DD 	0001
		BTSC 	3H, 0H 			//24DE 	2803
		ADDWR 	3DH, 1H 		//24DF 	17BD
		BTSC 	3H, 0H 			//24E0 	2803
		ADDWR 	3EH, 1H 		//24E1 	17BE
		BTSC 	3H, 0H 			//24E2 	2803
		ADDWR 	3FH, 1H 		//24E3 	17BF
		LJUMP 	4B1H 			//24E4 	3CB1
		BTSC 	3AH, 4H 		//24E5 	2A3A
		LJUMP 	4B1H 			//24E6 	3CB1
		INCR 	3BH, 1H 		//24E7 	1ABB
		LJUMP 	4B1H 			//24E8 	3CB1
		CLRF 	39H 			//24E9 	11B9
		LDR 	40H, 0H 			//24EA 	1840
		STR 	6H 			//24EB 	1086
		LDWI 	3H 			//24EC 	0003
		STR 	7H 			//24ED 	1087
		LDWI 	65H 			//24EE 	0065
		XORWR 	1H, 0H 		//24EF 	1601
		BTSC 	3H, 2H 			//24F0 	2903
		LJUMP 	4F8H 			//24F1 	3CF8
		LDR 	40H, 0H 			//24F2 	1840
		STR 	6H 			//24F3 	1086
		LDWI 	45H 			//24F4 	0045
		XORWR 	1H, 0H 		//24F5 	1601
		BTSS 	3H, 2H 			//24F6 	2D03
		LJUMP 	540H 			//24F7 	3D40
		INCR 	40H, 1H 		//24F8 	1AC0
		LDR 	40H, 0H 			//24F9 	1840
		STR 	6H 			//24FA 	1086
		LDWI 	3H 			//24FB 	0003
		STR 	7H 			//24FC 	1087
		LDWI 	2DH 			//24FD 	002D
		XORWR 	1H, 0H 		//24FE 	1601
		BTSS 	3H, 2H 			//24FF 	2D03
		LJUMP 	503H 			//2500 	3D03
		BSR 	3AH, 3H 			//2501 	25BA
		LJUMP 	513H 			//2502 	3D13
		LDR 	40H, 0H 			//2503 	1840
		STR 	6H 			//2504 	1086
		LDWI 	3H 			//2505 	0003
		STR 	7H 			//2506 	1087
		LDWI 	2BH 			//2507 	002B
		XORWR 	1H, 0H 		//2508 	1601
		BTSC 	3H, 2H 			//2509 	2903
		LJUMP 	513H 			//250A 	3D13
		LDR 	40H, 0H 			//250B 	1840
		STR 	6H 			//250C 	1086
		LDWI 	3H 			//250D 	0003
		STR 	7H 			//250E 	1087
		LDWI 	30H 			//250F 	0030
		XORWR 	1H, 0H 		//2510 	1601
		BTSS 	3H, 2H 			//2511 	2D03
		LJUMP 	515H 			//2512 	3D15
		INCR 	40H, 1H 		//2513 	1AC0
		LJUMP 	50BH 			//2514 	3D0B
		LCALL 	7B2H 			//2515 	37B2
		MOVLP 	24H 			//2516 	01A4
		LCALL 	609H 			//2517 	3609
		MOVLP 	24H 			//2518 	01A4
		BTSS 	3H, 0H 			//2519 	2C03
		LJUMP 	53CH 			//251A 	3D3C
		LCALL 	7B2H 			//251B 	37B2
		MOVLP 	24H 			//251C 	01A4
		ADDWI 	D0H 			//251D 	0ED0
		STR 	39H 			//251E 	10B9
		INCR 	40H, 1H 		//251F 	1AC0
		LDR 	40H, 0H 			//2520 	1840
		STR 	6H 			//2521 	1086
		LDR 	1H, 0H 			//2522 	1801
		LCALL 	609H 			//2523 	3609
		MOVLP 	24H 			//2524 	01A4
		BTSS 	3H, 0H 			//2525 	2C03
		LJUMP 	53CH 			//2526 	3D3C
		LCALL 	7CFH 			//2527 	37CF
		MOVLP 	24H 			//2528 	01A4
		LCALL 	617H 			//2529 	3617
		MOVLP 	24H 			//252A 	01A4
		ADDWR 	1H, 0H 		//252B 	1701
		ADDWI 	D0H 			//252C 	0ED0
		STR 	39H 			//252D 	10B9
		INCR 	40H, 1H 		//252E 	1AC0
		LCALL 	7B2H 			//252F 	37B2
		MOVLP 	24H 			//2530 	01A4
		LCALL 	609H 			//2531 	3609
		MOVLP 	24H 			//2532 	01A4
		BTSS 	3H, 0H 			//2533 	2C03
		LJUMP 	53CH 			//2534 	3D3C
		LCALL 	7CFH 			//2535 	37CF
		MOVLP 	24H 			//2536 	01A4
		LCALL 	617H 			//2537 	3617
		MOVLP 	24H 			//2538 	01A4
		ADDWR 	1H, 0H 		//2539 	1701
		ADDWI 	D0H 			//253A 	0ED0
		STR 	39H 			//253B 	10B9
		BTSS 	3AH, 3H 		//253C 	2DBA
		LJUMP 	540H 			//253D 	3D40
		COMR 	39H, 1H 		//253E 	19B9
		INCR 	39H, 1H 		//253F 	1AB9
		LDR 	39H, 0H 			//2540 	1839
		ADDWR 	3BH, 1H 		//2541 	17BB
		LDR 	29H, 0H 			//2542 	1829
		BTSS 	3H, 2H 			//2543 	2D03
		BTSS 	3AH, 1H 		//2544 	2CBA
		LJUMP 	548H 			//2545 	3D48
		LCALL 	7F2H 			//2546 	37F2
		MOVLP 	24H 			//2547 	01A4
		LDR 	3FH, 0H 			//2548 	183F
		STR 	7BH 			//2549 	10FB
		LDR 	3EH, 0H 			//254A 	183E
		STR 	7AH 			//254B 	10FA
		LDR 	3DH, 0H 			//254C 	183D
		STR 	79H 			//254D 	10F9
		LDR 	3CH, 0H 			//254E 	183C
		STR 	78H 			//254F 	10F8
		LCALL 	74DH 			//2550 	374D
		MOVLP 	24H 			//2551 	01A4
		LDR 	78H, 0H 			//2552 	1878
		STR 	3CH 			//2553 	10BC
		LDR 	79H, 0H 			//2554 	1879
		STR 	3DH 			//2555 	10BD
		LDR 	7AH, 0H 			//2556 	187A
		STR 	3EH 			//2557 	10BE
		IORWR 	3DH, 0H 		//2558 	143D
		IORWR 	3CH, 0H 		//2559 	143C
		BTSS 	3H, 2H 			//255A 	2D03
		LJUMP 	560H 			//255B 	3D60
		CLRF 	29H 			//255C 	11A9
		CLRF 	2AH 			//255D 	11AA
		CLRF 	2BH 			//255E 	11AB
		RET 					//255F 	1008
		BTSS 	3BH, 7H 		//2560 	2FBB
		LJUMP 	5A9H 			//2561 	3DA9
		COMR 	3BH, 1H 		//2562 	19BB
		INCR 	3BH, 1H 		//2563 	1ABB
		LDR 	3BH, 0H 			//2564 	183B
		XORWI 	80H 			//2565 	0A80
		ADDWI 	76H 			//2566 	0E76
		BTSS 	3H, 0H 			//2567 	2C03
		LJUMP 	582H 			//2568 	3D82
		LDWI 	3H 			//2569 	0003
		STR 	78H 			//256A 	10F8
		LDWI 	15H 			//256B 	0015
		STR 	79H 			//256C 	10F9
		LDWI 	50H 			//256D 	0050
		LCALL 	7BFH 			//256E 	37BF
		MOVLP 	24H 			//256F 	01A4
		LCALL 	623H 			//2570 	3623
		MOVLP 	24H 			//2571 	01A4
		LCALL 	7DDH 			//2572 	37DD
		MOVLP 	24H 			//2573 	01A4
		LDWI 	F6H 			//2574 	00F6
		ADDWR 	3BH, 1H 		//2575 	17BB
		LJUMP 	564H 			//2576 	3D64
		LDWI 	20H 			//2577 	0020
		CLRF 	78H 			//2578 	11F8
		STR 	79H 			//2579 	10F9
		LDWI 	41H 			//257A 	0041
		LCALL 	7BFH 			//257B 	37BF
		MOVLP 	24H 			//257C 	01A4
		LCALL 	623H 			//257D 	3623
		MOVLP 	24H 			//257E 	01A4
		LCALL 	7DDH 			//257F 	37DD
		MOVLP 	24H 			//2580 	01A4
		DECR 	3BH, 1H 		//2581 	13BB
		LDR 	3BH, 0H 			//2582 	183B
		BTSS 	3H, 2H 			//2583 	2D03
		LJUMP 	577H 			//2584 	3D77
		LDWI 	80H 			//2585 	0080
		CLRF 	2DH 			//2586 	11AD
		STR 	2EH 			//2587 	10AE
		CLRF 	2FH 			//2588 	11AF
		LDR 	3CH, 0H 			//2589 	183C
		STR 	70H 			//258A 	10F0
		LDR 	3DH, 0H 			//258B 	183D
		STR 	71H 			//258C 	10F1
		LDR 	3EH, 0H 			//258D 	183E
		STR 	72H 			//258E 	10F2
		LDR 	2DH, 0H 			//258F 	182D
		STR 	73H 			//2590 	10F3
		LDR 	2EH, 0H 			//2591 	182E
		STR 	74H 			//2592 	10F4
		LDR 	2FH, 0H 			//2593 	182F
		STR 	75H 			//2594 	10F5
		LCALL 	67FH 			//2595 	367F
		MOVLP 	24H 			//2596 	01A4
		BTSC 	3H, 0H 			//2597 	2803
		LJUMP 	5AEH 			//2598 	3DAE
		BTSS 	3AH, 0H 		//2599 	2C3A
		LJUMP 	5A8H 			//259A 	3DA8
		LDWI 	80H 			//259B 	0080
		CLRF 	30H 			//259C 	11B0
		STR 	31H 			//259D 	10B1
		CLRF 	32H 			//259E 	11B2
		LDR 	30H, 0H 			//259F 	1830
		STR 	70H 			//25A0 	10F0
		LDR 	31H, 0H 			//25A1 	1831
		STR 	71H 			//25A2 	10F1
		LDR 	32H, 0H 			//25A3 	1832
		STR 	72H 			//25A4 	10F2
		LCALL 	707H 			//25A5 	3707
		MOVLP 	24H 			//25A6 	01A4
		LJUMP 	7B8H 			//25A7 	3FB8
		LJUMP 	7D7H 			//25A8 	3FD7
		LDR 	3BH, 0H 			//25A9 	183B
		XORWI 	80H 			//25AA 	0A80
		ADDWI 	7FH 			//25AB 	0E7F
		BTSC 	3H, 0H 			//25AC 	2803
		LJUMP 	5D1H 			//25AD 	3DD1
		BTSS 	3AH, 0H 		//25AE 	2C3A
		LJUMP 	5BDH 			//25AF 	3DBD
		LDR 	3CH, 0H 			//25B0 	183C
		STR 	70H 			//25B1 	10F0
		LDR 	3DH, 0H 			//25B2 	183D
		STR 	71H 			//25B3 	10F1
		LDR 	3EH, 0H 			//25B4 	183E
		STR 	72H 			//25B5 	10F2
		LCALL 	707H 			//25B6 	3707
		LDR 	70H, 0H 			//25B7 	1870
		STR 	3CH 			//25B8 	10BC
		LDR 	71H, 0H 			//25B9 	1871
		STR 	3DH 			//25BA 	10BD
		LDR 	72H, 0H 			//25BB 	1872
		STR 	3EH 			//25BC 	10BE
		LDR 	3CH, 0H 			//25BD 	183C
		STR 	29H 			//25BE 	10A9
		LDR 	3DH, 0H 			//25BF 	183D
		STR 	2AH 			//25C0 	10AA
		LDR 	3EH, 0H 			//25C1 	183E
		STR 	2BH 			//25C2 	10AB
		RET 					//25C3 	1008
		LDWI 	3H 			//25C4 	0003
		STR 	78H 			//25C5 	10F8
		LDWI 	15H 			//25C6 	0015
		STR 	79H 			//25C7 	10F9
		LDWI 	50H 			//25C8 	0050
		LCALL 	7C7H 			//25C9 	37C7
		MOVLP 	24H 			//25CA 	01A4
		LCALL 	6ABH 			//25CB 	36AB
		MOVLP 	24H 			//25CC 	01A4
		LCALL 	7E4H 			//25CD 	37E4
		MOVLP 	24H 			//25CE 	01A4
		LDWI 	F6H 			//25CF 	00F6
		ADDWR 	3BH, 1H 		//25D0 	17BB
		LDWI 	AH 			//25D1 	000A
		SUBWR 	3BH, 0H 		//25D2 	123B
		BTSS 	3H, 0H 			//25D3 	2C03
		LJUMP 	5E1H 			//25D4 	3DE1
		LJUMP 	5C4H 			//25D5 	3DC4
		LDWI 	20H 			//25D6 	0020
		CLRF 	78H 			//25D7 	11F8
		STR 	79H 			//25D8 	10F9
		LDWI 	41H 			//25D9 	0041
		LCALL 	7C7H 			//25DA 	37C7
		MOVLP 	24H 			//25DB 	01A4
		LCALL 	6ABH 			//25DC 	36AB
		MOVLP 	24H 			//25DD 	01A4
		LCALL 	7E4H 			//25DE 	37E4
		MOVLP 	24H 			//25DF 	01A4
		DECR 	3BH, 1H 		//25E0 	13BB
		LDR 	3BH, 0H 			//25E1 	183B
		BTSS 	3H, 2H 			//25E2 	2D03
		LJUMP 	5D6H 			//25E3 	3DD6
		LDWI 	FFH 			//25E4 	00FF
		STR 	33H 			//25E5 	10B3
		LDWI 	7FH 			//25E6 	007F
		STR 	34H 			//25E7 	10B4
		STR 	35H 			//25E8 	10B5
		LDR 	33H, 0H 			//25E9 	1833
		STR 	70H 			//25EA 	10F0
		LDR 	34H, 0H 			//25EB 	1834
		STR 	71H 			//25EC 	10F1
		LDR 	35H, 0H 			//25ED 	1835
		STR 	72H 			//25EE 	10F2
		LDR 	3CH, 0H 			//25EF 	183C
		STR 	73H 			//25F0 	10F3
		LDR 	3DH, 0H 			//25F1 	183D
		STR 	74H 			//25F2 	10F4
		LDR 	3EH, 0H 			//25F3 	183E
		STR 	75H 			//25F4 	10F5
		LCALL 	67FH 			//25F5 	367F
		MOVLP 	24H 			//25F6 	01A4
		BTSC 	3H, 0H 			//25F7 	2803
		LJUMP 	5AEH 			//25F8 	3DAE
		BTSS 	3AH, 0H 		//25F9 	2C3A
		LJUMP 	608H 			//25FA 	3E08
		LDWI 	80H 			//25FB 	0080
		CLRF 	36H 			//25FC 	11B6
		STR 	37H 			//25FD 	10B7
		CLRF 	38H 			//25FE 	11B8
		LDR 	36H, 0H 			//25FF 	1836
		STR 	70H 			//2600 	10F0
		LDR 	37H, 0H 			//2601 	1837
		STR 	71H 			//2602 	10F1
		LDR 	38H, 0H 			//2603 	1838
		STR 	72H 			//2604 	10F2
		LCALL 	707H 			//2605 	3707
		MOVLP 	24H 			//2606 	01A4
		LJUMP 	7B8H 			//2607 	3FB8
		LJUMP 	7D7H 			//2608 	3FD7
		STR 	71H 			//2609 	10F1
		LDWI 	3AH 			//260A 	003A
		CLRF 	70H 			//260B 	11F0
		SUBWR 	71H, 0H 		//260C 	1271
		BTSC 	3H, 0H 			//260D 	2803
		LJUMP 	615H 			//260E 	3E15
		LDWI 	30H 			//260F 	0030
		SUBWR 	71H, 0H 		//2610 	1271
		BTSS 	3H, 0H 			//2611 	2C03
		LJUMP 	615H 			//2612 	3E15
		CLRF 	70H 			//2613 	11F0
		INCR 	70H, 1H 		//2614 	1AF0
		RRR 	70H, 0H 			//2615 	1C70
		RET 					//2616 	1008
		STR 	72H 			//2617 	10F2
		CLRF 	71H 			//2618 	11F1
		LDR 	70H, 0H 			//2619 	1870
		BTSC 	72H, 0H 		//261A 	2872
		ADDWR 	71H, 1H 		//261B 	17F1
		LSLF 	70H, 1H 		//261C 	05F0
		LSRF 	72H, 1H 		//261D 	06F2
		LDR 	72H, 0H 			//261E 	1872
		BTSS 	3H, 2H 			//261F 	2D03
		LJUMP 	619H 			//2620 	3E19
		LDR 	71H, 0H 			//2621 	1871
		RET 					//2622 	1008
		LDR 	7BH, 0H 			//2623 	187B
		STR 	20H 			//2624 	10A0
		LDR 	7CH, 0H 			//2625 	187C
		STR 	21H 			//2626 	10A1
		LDR 	7DH, 0H 			//2627 	187D
		STR 	22H 			//2628 	10A2
		BCR 	3H, 0H 			//2629 	2003
		RLR 	21H, 0H 			//262A 	1D21
		RLR 	22H, 0H 			//262B 	1D22
		STR 	27H 			//262C 	10A7
		LDR 	27H, 0H 			//262D 	1827
		BTSS 	3H, 2H 			//262E 	2D03
		LJUMP 	631H 			//262F 	3E31
		LJUMP 	7F8H 			//2630 	3FF8
		LDR 	78H, 0H 			//2631 	1878
		STR 	20H 			//2632 	10A0
		LDR 	79H, 0H 			//2633 	1879
		STR 	21H 			//2634 	10A1
		LDR 	7AH, 0H 			//2635 	187A
		STR 	22H 			//2636 	10A2
		BCR 	3H, 0H 			//2637 	2003
		RLR 	21H, 0H 			//2638 	1D21
		RLR 	22H, 0H 			//2639 	1D22
		STR 	28H 			//263A 	10A8
		LDR 	28H, 0H 			//263B 	1828
		BTSS 	3H, 2H 			//263C 	2D03
		LJUMP 	63FH 			//263D 	3E3F
		LJUMP 	7F8H 			//263E 	3FF8
		LDWI 	89H 			//263F 	0089
		CLRF 	24H 			//2640 	11A4
		CLRF 	25H 			//2641 	11A5
		CLRF 	26H 			//2642 	11A6
		ADDWR 	28H, 0H 		//2643 	1728
		STR 	20H 			//2644 	10A0
		SUBWR 	27H, 1H 		//2645 	12A7
		LDR 	7DH, 0H 			//2646 	187D
		STR 	28H 			//2647 	10A8
		LDR 	7AH, 0H 			//2648 	187A
		XORWR 	28H, 1H 		//2649 	16A8
		LDWI 	80H 			//264A 	0080
		ANDWR 	28H, 1H 		//264B 	15A8
		LDWI 	18H 			//264C 	0018
		BSR 	7CH, 7H 			//264D 	27FC
		CLRF 	7DH 			//264E 	11FD
		BSR 	79H, 7H 			//264F 	27F9
		CLRF 	7AH 			//2650 	11FA
		STR 	23H 			//2651 	10A3
		LSLF 	24H, 1H 		//2652 	05A4
		RLR 	25H, 1H 			//2653 	1DA5
		RLR 	26H, 1H 			//2654 	1DA6
		LDR 	7AH, 0H 			//2655 	187A
		SUBWR 	7DH, 0H 		//2656 	127D
		BTSS 	3H, 2H 			//2657 	2D03
		LJUMP 	65FH 			//2658 	3E5F
		LDR 	79H, 0H 			//2659 	1879
		SUBWR 	7CH, 0H 		//265A 	127C
		BTSS 	3H, 2H 			//265B 	2D03
		LJUMP 	65FH 			//265C 	3E5F
		LDR 	78H, 0H 			//265D 	1878
		SUBWR 	7BH, 0H 		//265E 	127B
		BTSS 	3H, 0H 			//265F 	2C03
		LJUMP 	668H 			//2660 	3E68
		LDR 	78H, 0H 			//2661 	1878
		SUBWR 	7BH, 1H 		//2662 	12FB
		LDR 	79H, 0H 			//2663 	1879
		SUBWFB 	7CH, 1H 		//2664 	0BFC
		LDR 	7AH, 0H 			//2665 	187A
		SUBWFB 	7DH, 1H 		//2666 	0BFD
		BSR 	24H, 0H 			//2667 	2424
		LSLF 	7BH, 1H 		//2668 	05FB
		RLR 	7CH, 1H 			//2669 	1DFC
		RLR 	7DH, 1H 			//266A 	1DFD
		DECRSZ 	23H, 1H 		//266B 	1BA3
		LJUMP 	652H 			//266C 	3E52
		LDR 	24H, 0H 			//266D 	1824
		STR 	70H 			//266E 	10F0
		LDR 	25H, 0H 			//266F 	1825
		STR 	71H 			//2670 	10F1
		LDR 	26H, 0H 			//2671 	1826
		STR 	72H 			//2672 	10F2
		LDR 	27H, 0H 			//2673 	1827
		STR 	73H 			//2674 	10F3
		LDR 	28H, 0H 			//2675 	1828
		STR 	74H 			//2676 	10F4
		LCALL 	70FH 			//2677 	370F
		LDR 	70H, 0H 			//2678 	1870
		STR 	78H 			//2679 	10F8
		LDR 	71H, 0H 			//267A 	1871
		STR 	79H 			//267B 	10F9
		LDR 	72H, 0H 			//267C 	1872
		STR 	7AH 			//267D 	10FA
		RET 					//267E 	1008
		BTSS 	72H, 7H 		//267F 	2FF2
		LJUMP 	68EH 			//2680 	3E8E
		LDR 	70H, 0H 			//2681 	1870
		SUBWI 	0H 			//2682 	0C00
		STR 	70H 			//2683 	10F0
		LDR 	71H, 0H 			//2684 	1871
		BTSS 	3H, 0H 			//2685 	2C03
		INCRSZ 	71H, 0H 		//2686 	1F71
		SUBWI 	0H 			//2687 	0C00
		STR 	71H 			//2688 	10F1
		LDR 	72H, 0H 			//2689 	1872
		BTSS 	3H, 0H 			//268A 	2C03
		INCRSZ 	72H, 0H 		//268B 	1F72
		SUBWI 	80H 			//268C 	0C80
		STR 	72H 			//268D 	10F2
		BTSS 	75H, 7H 		//268E 	2FF5
		LJUMP 	69DH 			//268F 	3E9D
		LDR 	73H, 0H 			//2690 	1873
		SUBWI 	0H 			//2691 	0C00
		STR 	73H 			//2692 	10F3
		LDR 	74H, 0H 			//2693 	1874
		BTSS 	3H, 0H 			//2694 	2C03
		INCRSZ 	74H, 0H 		//2695 	1F74
		SUBWI 	0H 			//2696 	0C00
		STR 	74H 			//2697 	10F4
		LDR 	75H, 0H 			//2698 	1875
		BTSS 	3H, 0H 			//2699 	2C03
		INCRSZ 	75H, 0H 		//269A 	1F75
		SUBWI 	80H 			//269B 	0C80
		STR 	75H 			//269C 	10F5
		LDWI 	80H 			//269D 	0080
		XORWR 	72H, 1H 		//269E 	16F2
		XORWR 	75H, 1H 		//269F 	16F5
		LDR 	75H, 0H 			//26A0 	1875
		SUBWR 	72H, 0H 		//26A1 	1272
		BTSS 	3H, 2H 			//26A2 	2D03
		RET 					//26A3 	1008
		LDR 	74H, 0H 			//26A4 	1874
		SUBWR 	71H, 0H 		//26A5 	1271
		BTSS 	3H, 2H 			//26A6 	2D03
		RET 					//26A7 	1008
		LDR 	73H, 0H 			//26A8 	1873
		SUBWR 	70H, 0H 		//26A9 	1270
		RET 					//26AA 	1008
		LDR 	78H, 0H 			//26AB 	1878
		STR 	20H 			//26AC 	10A0
		LDR 	79H, 0H 			//26AD 	1879
		STR 	21H 			//26AE 	10A1
		LDR 	7AH, 0H 			//26AF 	187A
		STR 	22H 			//26B0 	10A2
		BCR 	3H, 0H 			//26B1 	2003
		RLR 	21H, 0H 			//26B2 	1D21
		RLR 	22H, 0H 			//26B3 	1D22
		STR 	23H 			//26B4 	10A3
		LDR 	23H, 0H 			//26B5 	1823
		BTSS 	3H, 2H 			//26B6 	2D03
		LJUMP 	6B9H 			//26B7 	3EB9
		LJUMP 	7FCH 			//26B8 	3FFC
		LDR 	7BH, 0H 			//26B9 	187B
		STR 	20H 			//26BA 	10A0
		LDR 	7CH, 0H 			//26BB 	187C
		STR 	21H 			//26BC 	10A1
		LDR 	7DH, 0H 			//26BD 	187D
		STR 	22H 			//26BE 	10A2
		BCR 	3H, 0H 			//26BF 	2003
		RLR 	21H, 0H 			//26C0 	1D21
		RLR 	22H, 0H 			//26C1 	1D22
		STR 	28H 			//26C2 	10A8
		LDR 	28H, 0H 			//26C3 	1828
		BTSS 	3H, 2H 			//26C4 	2D03
		LJUMP 	6C7H 			//26C5 	3EC7
		LJUMP 	7FCH 			//26C6 	3FFC
		LDR 	28H, 0H 			//26C7 	1828
		ADDWI 	7BH 			//26C8 	0E7B
		ADDWR 	23H, 1H 		//26C9 	17A3
		LDR 	7AH, 0H 			//26CA 	187A
		STR 	28H 			//26CB 	10A8
		LDR 	7DH, 0H 			//26CC 	187D
		XORWR 	28H, 1H 		//26CD 	16A8
		LDWI 	80H 			//26CE 	0080
		ANDWR 	28H, 1H 		//26CF 	15A8
		LDWI 	FFH 			//26D0 	00FF
		BSR 	79H, 7H 			//26D1 	27F9
		BSR 	7CH, 7H 			//26D2 	27FC
		ANDWR 	7BH, 1H 		//26D3 	15FB
		ANDWR 	7CH, 1H 		//26D4 	15FC
		LDWI 	7H 			//26D5 	0007
		CLRF 	7DH 			//26D6 	11FD
		CLRF 	24H 			//26D7 	11A4
		CLRF 	25H 			//26D8 	11A5
		CLRF 	26H 			//26D9 	11A6
		STR 	27H 			//26DA 	10A7
		BTSS 	78H, 0H 		//26DB 	2C78
		LJUMP 	6DFH 			//26DC 	3EDF
		LCALL 	7EBH 			//26DD 	37EB
		MOVLP 	24H 			//26DE 	01A4
		LSRF 	7AH, 1H 		//26DF 	06FA
		RRR 	79H, 1H 			//26E0 	1CF9
		RRR 	78H, 1H 			//26E1 	1CF8
		LSLF 	7BH, 1H 		//26E2 	05FB
		RLR 	7CH, 1H 			//26E3 	1DFC
		RLR 	7DH, 1H 			//26E4 	1DFD
		DECRSZ 	27H, 1H 		//26E5 	1BA7
		LJUMP 	6DBH 			//26E6 	3EDB
		LDWI 	9H 			//26E7 	0009
		STR 	27H 			//26E8 	10A7
		BTSS 	78H, 0H 		//26E9 	2C78
		LJUMP 	6EDH 			//26EA 	3EED
		LCALL 	7EBH 			//26EB 	37EB
		MOVLP 	24H 			//26EC 	01A4
		LSRF 	7AH, 1H 		//26ED 	06FA
		RRR 	79H, 1H 			//26EE 	1CF9
		RRR 	78H, 1H 			//26EF 	1CF8
		LSRF 	26H, 1H 		//26F0 	06A6
		RRR 	25H, 1H 			//26F1 	1CA5
		RRR 	24H, 1H 			//26F2 	1CA4
		DECRSZ 	27H, 1H 		//26F3 	1BA7
		LJUMP 	6E9H 			//26F4 	3EE9
		LDR 	24H, 0H 			//26F5 	1824
		STR 	70H 			//26F6 	10F0
		LDR 	25H, 0H 			//26F7 	1825
		STR 	71H 			//26F8 	10F1
		LDR 	26H, 0H 			//26F9 	1826
		STR 	72H 			//26FA 	10F2
		LDR 	23H, 0H 			//26FB 	1823
		STR 	73H 			//26FC 	10F3
		LDR 	28H, 0H 			//26FD 	1828
		STR 	74H 			//26FE 	10F4
		LCALL 	70FH 			//26FF 	370F
		LDR 	70H, 0H 			//2700 	1870
		STR 	78H 			//2701 	10F8
		LDR 	71H, 0H 			//2702 	1871
		STR 	79H 			//2703 	10F9
		LDR 	72H, 0H 			//2704 	1872
		STR 	7AH 			//2705 	10FA
		RET 					//2706 	1008
		LDR 	72H, 0H 			//2707 	1872
		IORWR 	71H, 0H 		//2708 	1471
		IORWR 	70H, 0H 		//2709 	1470
		BTSC 	3H, 2H 			//270A 	2903
		RET 					//270B 	1008
		LDWI 	80H 			//270C 	0080
		XORWR 	72H, 1H 		//270D 	16F2
		RET 					//270E 	1008
		LDR 	73H, 0H 			//270F 	1873
		BTSC 	3H, 2H 			//2710 	2903
		LJUMP 	717H 			//2711 	3F17
		LDR 	72H, 0H 			//2712 	1872
		IORWR 	71H, 0H 		//2713 	1471
		IORWR 	70H, 0H 		//2714 	1470
		BTSS 	3H, 2H 			//2715 	2D03
		LJUMP 	71FH 			//2716 	3F1F
		CLRF 	70H 			//2717 	11F0
		CLRF 	71H 			//2718 	11F1
		CLRF 	72H 			//2719 	11F2
		RET 					//271A 	1008
		INCR 	73H, 1H 		//271B 	1AF3
		LSRF 	72H, 1H 		//271C 	06F2
		RRR 	71H, 1H 			//271D 	1CF1
		RRR 	70H, 1H 			//271E 	1CF0
		LDWI 	FEH 			//271F 	00FE
		ANDWR 	72H, 0H 		//2720 	1572
		BTSC 	3H, 2H 			//2721 	2903
		LJUMP 	72DH 			//2722 	3F2D
		LJUMP 	71BH 			//2723 	3F1B
		INCR 	73H, 1H 		//2724 	1AF3
		INCR 	70H, 1H 		//2725 	1AF0
		BTSC 	3H, 2H 			//2726 	2903
		INCR 	71H, 1H 		//2727 	1AF1
		BTSC 	3H, 2H 			//2728 	2903
		INCR 	72H, 1H 		//2729 	1AF2
		LSRF 	72H, 1H 		//272A 	06F2
		RRR 	71H, 1H 			//272B 	1CF1
		RRR 	70H, 1H 			//272C 	1CF0
		LDWI 	FFH 			//272D 	00FF
		ANDWR 	72H, 0H 		//272E 	1572
		BTSC 	3H, 2H 			//272F 	2903
		LJUMP 	73AH 			//2730 	3F3A
		LJUMP 	724H 			//2731 	3F24
		LDWI 	2H 			//2732 	0002
		SUBWR 	73H, 0H 		//2733 	1273
		BTSS 	3H, 0H 			//2734 	2C03
		LJUMP 	73CH 			//2735 	3F3C
		DECR 	73H, 1H 		//2736 	13F3
		LSLF 	70H, 1H 		//2737 	05F0
		RLR 	71H, 1H 			//2738 	1DF1
		RLR 	72H, 1H 			//2739 	1DF2
		BTSS 	71H, 7H 		//273A 	2FF1
		LJUMP 	732H 			//273B 	3F32
		BTSS 	73H, 0H 		//273C 	2C73
		BCR 	71H, 7H 			//273D 	23F1
		LSRF 	73H, 1H 		//273E 	06F3
		LDR 	73H, 0H 			//273F 	1873
		STR 	77H 			//2740 	10F7
		CLRF 	76H 			//2741 	11F6
		CLRF 	75H 			//2742 	11F5
		LDR 	75H, 0H 			//2743 	1875
		IORWR 	70H, 1H 		//2744 	14F0
		LDR 	76H, 0H 			//2745 	1876
		IORWR 	71H, 1H 		//2746 	14F1
		LDR 	77H, 0H 			//2747 	1877
		IORWR 	72H, 1H 		//2748 	14F2
		LDR 	74H, 0H 			//2749 	1874
		BTSS 	3H, 2H 			//274A 	2D03
		BSR 	72H, 7H 			//274B 	27F2
		RET 					//274C 	1008
		LDWI 	8EH 			//274D 	008E
		CLRF 	7DH 			//274E 	11FD
		STR 	7CH 			//274F 	10FC
		BTSS 	7BH, 7H 		//2750 	2FFB
		LJUMP 	75FH 			//2751 	3F5F
		COMR 	78H, 1H 		//2752 	19F8
		COMR 	79H, 1H 		//2753 	19F9
		COMR 	7AH, 1H 		//2754 	19FA
		COMR 	7BH, 1H 		//2755 	19FB
		INCR 	78H, 1H 		//2756 	1AF8
		BTSC 	3H, 2H 			//2757 	2903
		INCR 	79H, 1H 		//2758 	1AF9
		BTSC 	3H, 2H 			//2759 	2903
		INCR 	7AH, 1H 		//275A 	1AFA
		BTSC 	3H, 2H 			//275B 	2903
		INCR 	7BH, 1H 		//275C 	1AFB
		CLRF 	7DH 			//275D 	11FD
		INCR 	7DH, 1H 		//275E 	1AFD
		LDWI 	FFH 			//275F 	00FF
		ANDWR 	7BH, 0H 		//2760 	157B
		BTSC 	3H, 2H 			//2761 	2903
		LJUMP 	769H 			//2762 	3F69
		LSRF 	7BH, 1H 		//2763 	06FB
		RRR 	7AH, 1H 			//2764 	1CFA
		RRR 	79H, 1H 			//2765 	1CF9
		RRR 	78H, 1H 			//2766 	1CF8
		INCR 	7CH, 1H 		//2767 	1AFC
		LJUMP 	75FH 			//2768 	3F5F
		LDR 	78H, 0H 			//2769 	1878
		STR 	70H 			//276A 	10F0
		LDR 	79H, 0H 			//276B 	1879
		STR 	71H 			//276C 	10F1
		LDR 	7AH, 0H 			//276D 	187A
		STR 	72H 			//276E 	10F2
		LDR 	7CH, 0H 			//276F 	187C
		STR 	73H 			//2770 	10F3
		LDR 	7DH, 0H 			//2771 	187D
		STR 	74H 			//2772 	10F4
		LCALL 	70FH 			//2773 	370F
		LDR 	70H, 0H 			//2774 	1870
		STR 	78H 			//2775 	10F8
		LDR 	71H, 0H 			//2776 	1871
		STR 	79H 			//2777 	10F9
		LDR 	72H, 0H 			//2778 	1872
		STR 	7AH 			//2779 	10FA
		RET 					//277A 	1008
		CLRF 	78H 			//277B 	11F8
		CLRF 	79H 			//277C 	11F9
		CLRF 	7AH 			//277D 	11FA
		CLRF 	7BH 			//277E 	11FB
		BTSS 	70H, 0H 		//277F 	2C70
		LJUMP 	789H 			//2780 	3F89
		LDR 	74H, 0H 			//2781 	1874
		ADDWR 	78H, 1H 		//2782 	17F8
		LDR 	75H, 0H 			//2783 	1875
		ADDWFC 	79H, 1H 		//2784 	0DF9
		LDR 	76H, 0H 			//2785 	1876
		ADDWFC 	7AH, 1H 		//2786 	0DFA
		LDR 	77H, 0H 			//2787 	1877
		ADDWFC 	7BH, 1H 		//2788 	0DFB
		LSLF 	74H, 1H 		//2789 	05F4
		RLR 	75H, 1H 			//278A 	1DF5
		RLR 	76H, 1H 			//278B 	1DF6
		RLR 	77H, 1H 			//278C 	1DF7
		LSRF 	73H, 1H 		//278D 	06F3
		RRR 	72H, 1H 			//278E 	1CF2
		RRR 	71H, 1H 			//278F 	1CF1
		RRR 	70H, 1H 			//2790 	1CF0
		LDR 	73H, 0H 			//2791 	1873
		IORWR 	72H, 0H 		//2792 	1472
		IORWR 	71H, 0H 		//2793 	1471
		IORWR 	70H, 0H 		//2794 	1470
		BTSS 	3H, 2H 			//2795 	2D03
		LJUMP 	77FH 			//2796 	3F7F
		LDR 	7BH, 0H 			//2797 	187B
		STR 	73H 			//2798 	10F3
		LDR 	7AH, 0H 			//2799 	187A
		STR 	72H 			//279A 	10F2
		LDR 	79H, 0H 			//279B 	1879
		STR 	71H 			//279C 	10F1
		LDR 	78H, 0H 			//279D 	1878
		STR 	70H 			//279E 	10F0
		RET 					//279F 	1008
		STR 	71H 			//27A0 	10F1
		LDWI 	20H 			//27A1 	0020
		CLRF 	70H 			//27A2 	11F0
		INCR 	70H, 1H 		//27A3 	1AF0
		XORWR 	71H, 0H 		//27A4 	1671
		BTSC 	3H, 2H 			//27A5 	2903
		LJUMP 	7B0H 			//27A6 	3FB0
		LDWI 	EH 			//27A7 	000E
		SUBWR 	71H, 0H 		//27A8 	1271
		BTSC 	3H, 0H 			//27A9 	2803
		LJUMP 	7AFH 			//27AA 	3FAF
		LDWI 	9H 			//27AB 	0009
		SUBWR 	71H, 0H 		//27AC 	1271
		BTSC 	3H, 0H 			//27AD 	2803
		LJUMP 	7B0H 			//27AE 	3FB0
		CLRF 	70H 			//27AF 	11F0
		RRR 	70H, 0H 			//27B0 	1C70
		RET 					//27B1 	1008
		LDR 	40H, 0H 			//27B2 	1840
		STR 	6H 			//27B3 	1086
		LDWI 	3H 			//27B4 	0003
		STR 	7H 			//27B5 	1087
		LDR 	1H, 0H 			//27B6 	1801
		RET 					//27B7 	1008
		LDR 	70H, 0H 			//27B8 	1870
		STR 	29H 			//27B9 	10A9
		LDR 	71H, 0H 			//27BA 	1871
		STR 	2AH 			//27BB 	10AA
		LDR 	72H, 0H 			//27BC 	1872
		STR 	2BH 			//27BD 	10AB
		RET 					//27BE 	1008
		STR 	7AH 			//27BF 	10FA
		LDR 	3CH, 0H 			//27C0 	183C
		STR 	7BH 			//27C1 	10FB
		LDR 	3DH, 0H 			//27C2 	183D
		STR 	7CH 			//27C3 	10FC
		LDR 	3EH, 0H 			//27C4 	183E
		STR 	7DH 			//27C5 	10FD
		RET 					//27C6 	1008
		STR 	7AH 			//27C7 	10FA
		LDR 	3CH, 0H 			//27C8 	183C
		STR 	7BH 			//27C9 	10FB
		LDR 	3DH, 0H 			//27CA 	183D
		STR 	7CH 			//27CB 	10FC
		LDR 	3EH, 0H 			//27CC 	183E
		STR 	7DH 			//27CD 	10FD
		RET 					//27CE 	1008
		LDR 	40H, 0H 			//27CF 	1840
		STR 	6H 			//27D0 	1086
		LDWI 	3H 			//27D1 	0003
		STR 	7H 			//27D2 	1087
		LDWI 	AH 			//27D3 	000A
		STR 	70H 			//27D4 	10F0
		LDR 	39H, 0H 			//27D5 	1839
		RET 					//27D6 	1008
		LDWI 	80H 			//27D7 	0080
		CLRF 	29H 			//27D8 	11A9
		STR 	2AH 			//27D9 	10AA
		LDWI 	0H 			//27DA 	0000
		CLRF 	2BH 			//27DB 	11AB
		RET 					//27DC 	1008
		LDR 	78H, 0H 			//27DD 	1878
		STR 	3CH 			//27DE 	10BC
		LDR 	79H, 0H 			//27DF 	1879
		STR 	3DH 			//27E0 	10BD
		LDR 	7AH, 0H 			//27E1 	187A
		STR 	3EH 			//27E2 	10BE
		RET 					//27E3 	1008
		LDR 	78H, 0H 			//27E4 	1878
		STR 	3CH 			//27E5 	10BC
		LDR 	79H, 0H 			//27E6 	1879
		STR 	3DH 			//27E7 	10BD
		LDR 	7AH, 0H 			//27E8 	187A
		STR 	3EH 			//27E9 	10BE
		RET 					//27EA 	1008
		LDR 	7BH, 0H 			//27EB 	187B
		ADDWR 	24H, 1H 		//27EC 	17A4
		LDR 	7CH, 0H 			//27ED 	187C
		ADDWFC 	25H, 1H 		//27EE 	0DA5
		LDR 	7DH, 0H 			//27EF 	187D
		ADDWFC 	26H, 1H 		//27F0 	0DA6
		RET 					//27F1 	1008
		LDR 	29H, 0H 			//27F2 	1829
		STR 	6H 			//27F3 	1086
		CLRF 	7H 			//27F4 	1187
		LDR 	40H, 0H 			//27F5 	1840
		STR 	1H 			//27F6 	1081
		RET 					//27F7 	1008
		CLRF 	78H 			//27F8 	11F8
		CLRF 	79H 			//27F9 	11F9
		CLRF 	7AH 			//27FA 	11FA
		RET 					//27FB 	1008
		CLRF 	78H 			//27FC 	11F8
		CLRF 	79H 			//27FD 	11F9
		CLRF 	7AH 			//27FE 	11FA
		RET 					//27FF 	1008
			END
