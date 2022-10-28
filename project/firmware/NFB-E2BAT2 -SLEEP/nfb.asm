//Deviec:FT64F0AX
//-----------------------Variable---------------------------------
		_command		EQU		3BCH
		_valc		EQU		3A8H
		_n		EQU		36CH
		_HTVP_		EQU		2ECH
		_HTVN_		EQU		2EAH
		_HTVI_		EQU		2E8H
		_HTVP		EQU		60H
		_HTVN		EQU		5DH
		_HTVI		EQU		5AH
		_I		EQU		33BH
		_V		EQU		338H
		_R		EQU		335H
		_T		EQU		2E3H
		_diffT		EQU		2E0H
		_bat		EQU		57H
		_PowerOn		EQU		6DH
		_BTNpressed		EQU		36AH
		_BTNtimer		EQU		6BH
		_HTOn		EQU		368H
		_HTtimer		EQU		366H
		_SmokeOn		EQU		364H
		_Smoketimer		EQU		362H
		_PuffOn		EQU		69H
		_RDE1		EQU		360H
		_RDE2		EQU		35EH
		_t1E		EQU		35CH
		_t2E		EQU		35AH
		_T1E		EQU		358H
		_T2E		EQU		356H
		_PTE		EQU		354H
		_PFE		EQU		352H
		_T0E		EQU		350H
		_TRE		EQU		34EH
		_R0E		EQU		34CH
		_BATL		EQU		34AH
		_WAIT		EQU		348H
		_BTNcnt		EQU		328H
		_HTcnt		EQU		3A4H
		_HTtimecnt		EQU		2D9H
		_Smokecnt		EQU		3A0H
		_Smoketimecnt		EQU		2D5H
		_Puffcnt		EQU		324H
		_WAITcnt		EQU		320H
		_timeleft		EQU		346H
		_timeleft1		EQU		344H
		_timeleft2		EQU		342H
		_timeleft3		EQU		340H
		_timenow		EQU		33EH
		_Toffset		EQU		332H
		_m		EQU		32FH
		_Tm		EQU		32CH
		_R0		EQU		54H
		_T0		EQU		51H
		_Tr		EQU		4EH
		_t1		EQU		2E6H
		_t2		EQU		67H
		_T1		EQU		2DDH
		_T2		EQU		4BH
		_pf		EQU		65H
		_pt		EQU		63H
//		main@msg_3698		EQU		166H
//		main@i_3697		EQU		2D3H
//		main@i_3696		EQU		2D1H
//		main@i_3695		EQU		2CFH
//		main@i_3687		EQU		2CDH
//		main@i_3686		EQU		2CBH
//		main@i		EQU		2C9H
//		main@msg_3701		EQU		2A0H
//		main@puffno		EQU		2AAH
//		main@msg_3690		EQU		15CH
//		main@msg		EQU		152H
//		main@data_3725		EQU		2AEH
//		main@dataL_3726		EQU		2BCH
//		main@data_3723		EQU		2ACH
//		main@dataL_3724		EQU		2BBH
//		main@data_3720		EQU		2C1H
//		main@dataH_3722		EQU		2BAH
//		main@dataL_3721		EQU		2B9H
//		main@dataL_3719		EQU		2B8H
//		main@dataL_3718		EQU		2B7H
//		main@data_3715		EQU		2BFH
//		main@dataH_3717		EQU		2B6H
//		main@dataL_3716		EQU		2B5H
//		main@data		EQU		2BDH
//		main@dataH_3714		EQU		2B4H
//		main@dataL_3713		EQU		2B3H
//		main@dataH		EQU		2B2H
//		main@dataL_3710		EQU		2B1H
//		main@dataL		EQU		2B0H
//		main@msg_3707		EQU		220H
//		main@msg_3705		EQU		1A0H
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
//		BatteryLevel@Vdd		EQU		124H
//		BatteryChargingLevel@i		EQU		128H
//		BatteryChargingLevel@Vdd		EQU		126H
//		___ftge@ff1		EQU		B2H
//		___ftge@ff2		EQU		B5H
//		___ftdiv@f3		EQU		DFH
//		___ftdiv@sign		EQU		E3H
//		___ftdiv@exp		EQU		E2H
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
//		i1___llmod@counter		EQU		78H
//		i1___llmod@divisor		EQU		70H
//		i1___llmod@dividend		EQU		74H
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
		LJUMP 	253H 			//0001 	3A53
		ORG		0004H
		BSR 	7EH, 0H 			//0004 	247E
		MOVLP 	0H 			//0005 	0180

		//;NFB.C: 60: if(UR1RXNE&&UR1RXNEF)
		MOVLB 	9H 			//0006 	1029
		BTSC 	EH, 0H 			//0007 	280E
		BTSS 	12H, 0H 		//0008 	2C12
		LJUMP 	17FH 			//0009 	397F

		//;NFB.C: 61: {
		//;NFB.C: 62: command[n] = UR1DATAL;
		MOVLB 	6H 			//000A 	1026
		LDR 	6CH, 0H 			//000B 	186C
		ADDWI 	BCH 			//000C 	0EBC
		STR 	6H 			//000D 	1086
		LDWI 	3H 			//000E 	0003
		STR 	7H 			//000F 	1087
		MOVLB 	9H 			//0010 	1029
		LDR 	CH, 0H 			//0011 	180C
		STR 	1H 			//0012 	1081

		//;NFB.C: 63: n++;
		MOVLB 	6H 			//0013 	1026
		INCR 	6CH, 1H 		//0014 	1AEC
		BTSC 	3H, 2H 			//0015 	2903
		INCR 	6DH, 1H 		//0016 	1AED

		//;NFB.C: 64: if(strstr(command,"\r\n")){
		LDWI 	CBH 			//0017 	00CB
		STR 	7BH 			//0018 	10FB
		LDWI 	A0H 			//0019 	00A0
		STR 	7CH 			//001A 	10FC
		LDWI 	BCH 			//001B 	00BC
		MOVLP 	26H 			//001C 	01A6
		LCALL 	615H 			//001D 	3615
		MOVLP 	0H 			//001E 	0180
		XORWI 	0H 			//001F 	0A00
		BTSC 	3H, 2H 			//0020 	2903
		LJUMP 	17FH 			//0021 	397F

		//;NFB.C: 65: int len = strlen(command)-5;
		LDWI 	BCH 			//0022 	00BC
		STR 	70H 			//0023 	10F0
		LDWI 	3H 			//0024 	0003
		STR 	71H 			//0025 	10F1
		MOVLP 	26H 			//0026 	01A6
		LCALL 	682H 			//0027 	3682
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
		ADDWI 	A8H 			//0042 	0EA8
		STR 	6H 			//0043 	1086
		LDWI 	3H 			//0044 	0003
		STR 	7H 			//0045 	1087
		LDR 	49H, 0H 			//0046 	1849
		ADDWI 	BFH 			//0047 	0EBF
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
		LDWI 	0H 			//0051 	0000
		STR 	7BH 			//0052 	10FB
		LDWI 	A1H 			//0053 	00A1
		STR 	7CH 			//0054 	10FC
		LDWI 	BCH 			//0055 	00BC
		MOVLP 	26H 			//0056 	01A6
		LCALL 	615H 			//0057 	3615
		MOVLP 	0H 			//0058 	0180
		XORWI 	0H 			//0059 	0A00
		BTSC 	3H, 2H 			//005A 	2903
		LJUMP 	69H 			//005B 	3869

		//;NFB.C: 70: t1 = charArrayToInt(valc);
		LDWI 	A8H 			//005C 	00A8
		MOVLP 	26H 			//005D 	01A6
		LCALL 	69EH 			//005E 	369E
		MOVLP 	0H 			//005F 	0180
		LDR 	77H, 0H 			//0060 	1877
		MOVLB 	5H 			//0061 	1025
		STR 	67H 			//0062 	10E7
		LDR 	76H, 0H 			//0063 	1876
		STR 	66H 			//0064 	10E6

		//;NFB.C: 71: t1E = 1;
		MOVLB 	6H 			//0065 	1026
		CLRF 	5CH 			//0066 	11DC
		INCR 	5CH, 1H 		//0067 	1ADC
		CLRF 	5DH 			//0068 	11DD

		//;NFB.C: 72: }
		//;NFB.C: 73: if(strstr(command,"t2:")){
		LDWI 	8H 			//0069 	0008
		STR 	7BH 			//006A 	10FB
		LDWI 	A1H 			//006B 	00A1
		STR 	7CH 			//006C 	10FC
		LDWI 	BCH 			//006D 	00BC
		MOVLP 	26H 			//006E 	01A6
		LCALL 	615H 			//006F 	3615
		MOVLP 	0H 			//0070 	0180
		XORWI 	0H 			//0071 	0A00
		BTSC 	3H, 2H 			//0072 	2903
		LJUMP 	80H 			//0073 	3880

		//;NFB.C: 74: t2 = charArrayToInt(valc);
		LDWI 	A8H 			//0074 	00A8
		MOVLP 	26H 			//0075 	01A6
		LCALL 	69EH 			//0076 	369E
		MOVLP 	0H 			//0077 	0180
		LDR 	77H, 0H 			//0078 	1877
		STR 	68H 			//0079 	10E8
		LDR 	76H, 0H 			//007A 	1876
		STR 	67H 			//007B 	10E7

		//;NFB.C: 75: t2E = 1;
		MOVLB 	6H 			//007C 	1026
		CLRF 	5AH 			//007D 	11DA
		INCR 	5AH, 1H 		//007E 	1ADA
		CLRF 	5BH 			//007F 	11DB

		//;NFB.C: 76: }
		//;NFB.C: 77: if(strstr(command,"pf:")){
		LDWI 	CH 			//0080 	000C
		STR 	7BH 			//0081 	10FB
		LDWI 	A1H 			//0082 	00A1
		STR 	7CH 			//0083 	10FC
		LDWI 	BCH 			//0084 	00BC
		MOVLP 	26H 			//0085 	01A6
		LCALL 	615H 			//0086 	3615
		MOVLP 	0H 			//0087 	0180
		XORWI 	0H 			//0088 	0A00
		BTSC 	3H, 2H 			//0089 	2903
		LJUMP 	97H 			//008A 	3897

		//;NFB.C: 78: pf = charArrayToInt(valc);
		LDWI 	A8H 			//008B 	00A8
		MOVLP 	26H 			//008C 	01A6
		LCALL 	69EH 			//008D 	369E
		MOVLP 	0H 			//008E 	0180
		LDR 	77H, 0H 			//008F 	1877
		STR 	66H 			//0090 	10E6
		LDR 	76H, 0H 			//0091 	1876
		STR 	65H 			//0092 	10E5

		//;NFB.C: 79: PFE = 1;
		MOVLB 	6H 			//0093 	1026
		CLRF 	52H 			//0094 	11D2
		INCR 	52H, 1H 		//0095 	1AD2
		CLRF 	53H 			//0096 	11D3

		//;NFB.C: 80: }
		//;NFB.C: 81: if(strstr(command,"T1:")){
		LDWI 	FCH 			//0097 	00FC
		STR 	7BH 			//0098 	10FB
		LDWI 	A0H 			//0099 	00A0
		STR 	7CH 			//009A 	10FC
		LDWI 	BCH 			//009B 	00BC
		MOVLP 	26H 			//009C 	01A6
		LCALL 	615H 			//009D 	3615
		MOVLP 	0H 			//009E 	0180
		XORWI 	0H 			//009F 	0A00
		BTSC 	3H, 2H 			//00A0 	2903
		LJUMP 	BCH 			//00A1 	38BC

		//;NFB.C: 82: T1 = (float)charArrayToInt(valc);
		LDWI 	A8H 			//00A2 	00A8
		MOVLP 	26H 			//00A3 	01A6
		LCALL 	69EH 			//00A4 	369E
		MOVLP 	0H 			//00A5 	0180
		LDR 	77H, 0H 			//00A6 	1877
		STR 	26H 			//00A7 	10A6
		LDR 	76H, 0H 			//00A8 	1876
		STR 	25H 			//00A9 	10A5
		MOVLP 	2H 			//00AA 	0182
		LCALL 	283H 			//00AB 	3283
		MOVLP 	0H 			//00AC 	0180
		LDR 	25H, 0H 			//00AD 	1825
		MOVLB 	5H 			//00AE 	1025
		STR 	5DH 			//00AF 	10DD
		MOVLB 	0H 			//00B0 	1020
		LDR 	26H, 0H 			//00B1 	1826
		MOVLB 	5H 			//00B2 	1025
		STR 	5EH 			//00B3 	10DE
		MOVLB 	0H 			//00B4 	1020
		LDR 	27H, 0H 			//00B5 	1827
		MOVLB 	5H 			//00B6 	1025
		STR 	5FH 			//00B7 	10DF

		//;NFB.C: 83: T1E = 1;
		MOVLB 	6H 			//00B8 	1026
		CLRF 	58H 			//00B9 	11D8
		INCR 	58H, 1H 		//00BA 	1AD8
		CLRF 	59H 			//00BB 	11D9

		//;NFB.C: 84: }
		//;NFB.C: 85: if(strstr(command,"T2:")){
		LDWI 	4H 			//00BC 	0004
		STR 	7BH 			//00BD 	10FB
		LDWI 	A1H 			//00BE 	00A1
		STR 	7CH 			//00BF 	10FC
		LDWI 	BCH 			//00C0 	00BC
		MOVLP 	26H 			//00C1 	01A6
		LCALL 	615H 			//00C2 	3615
		MOVLP 	0H 			//00C3 	0180
		XORWI 	0H 			//00C4 	0A00
		BTSC 	3H, 2H 			//00C5 	2903
		LJUMP 	DCH 			//00C6 	38DC

		//;NFB.C: 86: T2 = (float)charArrayToInt(valc);
		LDWI 	A8H 			//00C7 	00A8
		MOVLP 	26H 			//00C8 	01A6
		LCALL 	69EH 			//00C9 	369E
		MOVLP 	0H 			//00CA 	0180
		LDR 	77H, 0H 			//00CB 	1877
		STR 	26H 			//00CC 	10A6
		LDR 	76H, 0H 			//00CD 	1876
		STR 	25H 			//00CE 	10A5
		MOVLP 	2H 			//00CF 	0182
		LCALL 	283H 			//00D0 	3283
		MOVLP 	0H 			//00D1 	0180
		LDR 	25H, 0H 			//00D2 	1825
		STR 	4BH 			//00D3 	10CB
		LDR 	26H, 0H 			//00D4 	1826
		STR 	4CH 			//00D5 	10CC
		LDR 	27H, 0H 			//00D6 	1827
		STR 	4DH 			//00D7 	10CD

		//;NFB.C: 87: T2E = 1;
		MOVLB 	6H 			//00D8 	1026
		CLRF 	56H 			//00D9 	11D6
		INCR 	56H, 1H 		//00DA 	1AD6
		CLRF 	57H 			//00DB 	11D7

		//;NFB.C: 88: }
		//;NFB.C: 89: if(strstr(command,"pt:")){
		LDWI 	14H 			//00DC 	0014
		STR 	7BH 			//00DD 	10FB
		LDWI 	A1H 			//00DE 	00A1
		STR 	7CH 			//00DF 	10FC
		LDWI 	BCH 			//00E0 	00BC
		MOVLP 	26H 			//00E1 	01A6
		LCALL 	615H 			//00E2 	3615
		MOVLP 	0H 			//00E3 	0180
		XORWI 	0H 			//00E4 	0A00
		BTSC 	3H, 2H 			//00E5 	2903
		LJUMP 	F3H 			//00E6 	38F3

		//;NFB.C: 90: pt = charArrayToInt(valc);
		LDWI 	A8H 			//00E7 	00A8
		MOVLP 	26H 			//00E8 	01A6
		LCALL 	69EH 			//00E9 	369E
		MOVLP 	0H 			//00EA 	0180
		LDR 	77H, 0H 			//00EB 	1877
		STR 	64H 			//00EC 	10E4
		LDR 	76H, 0H 			//00ED 	1876
		STR 	63H 			//00EE 	10E3

		//;NFB.C: 91: PTE = 1;
		MOVLB 	6H 			//00EF 	1026
		CLRF 	54H 			//00F0 	11D4
		INCR 	54H, 1H 		//00F1 	1AD4
		CLRF 	55H 			//00F2 	11D5

		//;NFB.C: 92: }
		//;NFB.C: 93: if(strstr(command,"T0:")){
		LDWI 	F8H 			//00F3 	00F8
		STR 	7BH 			//00F4 	10FB
		LDWI 	A0H 			//00F5 	00A0
		STR 	7CH 			//00F6 	10FC
		LDWI 	BCH 			//00F7 	00BC
		MOVLP 	26H 			//00F8 	01A6
		LCALL 	615H 			//00F9 	3615
		MOVLP 	0H 			//00FA 	0180
		XORWI 	0H 			//00FB 	0A00
		BTSC 	3H, 2H 			//00FC 	2903
		LJUMP 	113H 			//00FD 	3913

		//;NFB.C: 94: T0 = (float)charArrayToInt(valc);
		LDWI 	A8H 			//00FE 	00A8
		MOVLP 	26H 			//00FF 	01A6
		LCALL 	69EH 			//0100 	369E
		MOVLP 	0H 			//0101 	0180
		LDR 	77H, 0H 			//0102 	1877
		STR 	26H 			//0103 	10A6
		LDR 	76H, 0H 			//0104 	1876
		STR 	25H 			//0105 	10A5
		MOVLP 	2H 			//0106 	0182
		LCALL 	283H 			//0107 	3283
		MOVLP 	0H 			//0108 	0180
		LDR 	25H, 0H 			//0109 	1825
		STR 	51H 			//010A 	10D1
		LDR 	26H, 0H 			//010B 	1826
		STR 	52H 			//010C 	10D2
		LDR 	27H, 0H 			//010D 	1827
		STR 	53H 			//010E 	10D3

		//;NFB.C: 95: T0E = 1;
		MOVLB 	6H 			//010F 	1026
		CLRF 	50H 			//0110 	11D0
		INCR 	50H, 1H 		//0111 	1AD0
		CLRF 	51H 			//0112 	11D1

		//;NFB.C: 96: }
		//;NFB.C: 97: if(strstr(command,"Tr:")){
		LDWI 	10H 			//0113 	0010
		STR 	7BH 			//0114 	10FB
		LDWI 	A1H 			//0115 	00A1
		STR 	7CH 			//0116 	10FC
		LDWI 	BCH 			//0117 	00BC
		MOVLP 	26H 			//0118 	01A6
		LCALL 	615H 			//0119 	3615
		MOVLP 	0H 			//011A 	0180
		XORWI 	0H 			//011B 	0A00
		BTSC 	3H, 2H 			//011C 	2903
		LJUMP 	133H 			//011D 	3933

		//;NFB.C: 98: Tr = (float)charArrayToInt(valc);
		LDWI 	A8H 			//011E 	00A8
		MOVLP 	26H 			//011F 	01A6
		LCALL 	69EH 			//0120 	369E
		MOVLP 	0H 			//0121 	0180
		LDR 	77H, 0H 			//0122 	1877
		STR 	26H 			//0123 	10A6
		LDR 	76H, 0H 			//0124 	1876
		STR 	25H 			//0125 	10A5
		MOVLP 	2H 			//0126 	0182
		LCALL 	283H 			//0127 	3283
		MOVLP 	0H 			//0128 	0180
		LDR 	25H, 0H 			//0129 	1825
		STR 	4EH 			//012A 	10CE
		LDR 	26H, 0H 			//012B 	1826
		STR 	4FH 			//012C 	10CF
		LDR 	27H, 0H 			//012D 	1827
		STR 	50H 			//012E 	10D0

		//;NFB.C: 99: TRE = 1;
		MOVLB 	6H 			//012F 	1026
		CLRF 	4EH 			//0130 	11CE
		INCR 	4EH, 1H 		//0131 	1ACE
		CLRF 	4FH 			//0132 	11CF

		//;NFB.C: 100: }
		//;NFB.C: 101: if(strstr(command,"R0:")){
		LDWI 	F4H 			//0133 	00F4
		STR 	7BH 			//0134 	10FB
		LDWI 	A0H 			//0135 	00A0
		STR 	7CH 			//0136 	10FC
		LDWI 	BCH 			//0137 	00BC
		MOVLP 	26H 			//0138 	01A6
		LCALL 	615H 			//0139 	3615
		MOVLP 	0H 			//013A 	0180
		XORWI 	0H 			//013B 	0A00
		BTSC 	3H, 2H 			//013C 	2903
		LJUMP 	14CH 			//013D 	394C

		//;NFB.C: 102: R0 = (float)atof(valc);
		LDWI 	A8H 			//013E 	00A8
		MOVLP 	2H 			//013F 	0182
		LCALL 	278H 			//0140 	3278
		MOVLP 	0H 			//0141 	0180
		LDR 	41H, 0H 			//0142 	1841
		STR 	54H 			//0143 	10D4
		LDR 	42H, 0H 			//0144 	1842
		STR 	55H 			//0145 	10D5
		LDR 	43H, 0H 			//0146 	1843
		STR 	56H 			//0147 	10D6

		//;NFB.C: 103: R0E = 1;
		MOVLB 	6H 			//0148 	1026
		CLRF 	4CH 			//0149 	11CC
		INCR 	4CH, 1H 		//014A 	1ACC
		CLRF 	4DH 			//014B 	11CD

		//;NFB.C: 104: }
		//;NFB.C: 105: if(strstr(command,"rd1")){
		LDWI 	ECH 			//014C 	00EC
		STR 	7BH 			//014D 	10FB
		LDWI 	A0H 			//014E 	00A0
		STR 	7CH 			//014F 	10FC
		LDWI 	BCH 			//0150 	00BC
		MOVLP 	26H 			//0151 	01A6
		LCALL 	615H 			//0152 	3615
		MOVLP 	0H 			//0153 	0180
		XORWI 	0H 			//0154 	0A00
		BTSC 	3H, 2H 			//0155 	2903
		LJUMP 	15BH 			//0156 	395B

		//;NFB.C: 106: RDE1 = 1;
		MOVLB 	6H 			//0157 	1026
		CLRF 	60H 			//0158 	11E0
		INCR 	60H, 1H 		//0159 	1AE0
		CLRF 	61H 			//015A 	11E1

		//;NFB.C: 107: }
		//;NFB.C: 108: if(strstr(command,"rd2")){
		LDWI 	F0H 			//015B 	00F0
		STR 	7BH 			//015C 	10FB
		LDWI 	A0H 			//015D 	00A0
		STR 	7CH 			//015E 	10FC
		LDWI 	BCH 			//015F 	00BC
		MOVLP 	26H 			//0160 	01A6
		LCALL 	615H 			//0161 	3615
		MOVLP 	0H 			//0162 	0180
		XORWI 	0H 			//0163 	0A00
		BTSC 	3H, 2H 			//0164 	2903
		LJUMP 	16AH 			//0165 	396A

		//;NFB.C: 109: RDE2 = 1;
		MOVLB 	6H 			//0166 	1026
		CLRF 	5EH 			//0167 	11DE
		INCR 	5EH, 1H 		//0168 	1ADE
		CLRF 	5FH 			//0169 	11DF

		//;NFB.C: 110: }
		//;NFB.C: 111: n = 0;
		MOVLB 	6H 			//016A 	1026
		LDWI 	14H 			//016B 	0014
		CLRF 	6CH 			//016C 	11EC
		CLRF 	6DH 			//016D 	11ED
		CLRF 	70H 			//016E 	11F0
		CLRF 	71H 			//016F 	11F1
		STR 	72H 			//0170 	10F2
		LDWI 	BCH 			//0171 	00BC
		CLRF 	73H 			//0172 	11F3
		MOVLP 	10H 			//0173 	0190
		LCALL 	26H 			//0174 	3026
		MOVLP 	0H 			//0175 	0180
		LDWI 	14H 			//0176 	0014

		//;NFB.C: 113: memset(valc,0,20);
		CLRF 	70H 			//0177 	11F0
		CLRF 	71H 			//0178 	11F1
		STR 	72H 			//0179 	10F2
		LDWI 	A8H 			//017A 	00A8
		CLRF 	73H 			//017B 	11F3
		MOVLP 	10H 			//017C 	0190
		LCALL 	26H 			//017D 	3026
		MOVLP 	0H 			//017E 	0180

		//;NFB.C: 114: }
		//;NFB.C: 115: }
		//;NFB.C: 116: if(EPIF0&0X10)
		MOVLB 	0H 			//017F 	1020
		BTSS 	14H, 4H 		//0180 	2E14
		LJUMP 	18CH 			//0181 	398C

		//;NFB.C: 117: {
		//;NFB.C: 118: EPIF0=0X10;
		LDWI 	10H 			//0182 	0010
		STR 	14H 			//0183 	1094

		//;NFB.C: 119: BTNpressed = 1;
		MOVLB 	6H 			//0184 	1026
		CLRF 	6AH 			//0185 	11EA
		INCR 	6AH, 1H 		//0186 	1AEA
		CLRF 	6BH 			//0187 	11EB

		//;NFB.C: 120: BTNcnt = 0;
		CLRF 	28H 			//0188 	11A8
		CLRF 	29H 			//0189 	11A9
		CLRF 	2AH 			//018A 	11AA
		CLRF 	2BH 			//018B 	11AB

		//;NFB.C: 121: }
		//;NFB.C: 122: if(EPIF0&0X40)
		MOVLB 	0H 			//018C 	1020
		BTSS 	14H, 6H 		//018D 	2F14
		LJUMP 	191H 			//018E 	3991

		//;NFB.C: 123: {
		//;NFB.C: 124: EPIF0=0X40;
		LDWI 	40H 			//018F 	0040
		STR 	14H 			//0190 	1094

		//;NFB.C: 125: }
		//;NFB.C: 126: if(T2UIE&&T2UIF)
		MOVLB 	6H 			//0191 	1026
		BTSC 	DH, 0H 			//0192 	280D
		BTSS 	EH, 0H 			//0193 	2C0E
		LJUMP 	251H 			//0194 	3A51

		//;NFB.C: 127: {
		//;NFB.C: 128: T2UIF=1;
		BSR 	EH, 0H 			//0195 	240E

		//;NFB.C: 129: if(BTNpressed){
		LDR 	6AH, 0H 			//0196 	186A
		IORWR 	6BH, 0H 		//0197 	146B
		BTSC 	3H, 2H 			//0198 	2903
		LJUMP 	1C6H 			//0199 	39C6

		//;NFB.C: 130: BTNcnt++;
		LDWI 	1H 			//019A 	0001
		ADDWR 	28H, 1H 		//019B 	17A8
		LDWI 	0H 			//019C 	0000
		ADDWFC 	29H, 1H 		//019D 	0DA9
		ADDWFC 	2AH, 1H 		//019E 	0DAA
		ADDWFC 	2BH, 1H 		//019F 	0DAB

		//;NFB.C: 131: if(BTNcnt>=1500){
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
		LJUMP 	1B6H 			//01AB 	39B6

		//;NFB.C: 132: BTNtimer = 1;
		MOVLB 	0H 			//01AC 	1020
		CLRF 	6BH 			//01AD 	11EB
		INCR 	6BH, 1H 		//01AE 	1AEB
		CLRF 	6CH 			//01AF 	11EC

		//;NFB.C: 133: BTNpressed = 0;
		MOVLB 	6H 			//01B0 	1026
		CLRF 	6AH 			//01B1 	11EA
		CLRF 	6BH 			//01B2 	11EB

		//;NFB.C: 134: WAIT = 0;
		CLRF 	48H 			//01B3 	11C8
		CLRF 	49H 			//01B4 	11C9

		//;NFB.C: 135: } else if(PB4){
		LJUMP 	1C6H 			//01B5 	39C6
		MOVLB 	0H 			//01B6 	1020
		BTSS 	DH, 4H 			//01B7 	2E0D
		LJUMP 	1C6H 			//01B8 	39C6

		//;NFB.C: 136: BATL = 1;
		MOVLB 	6H 			//01B9 	1026
		CLRF 	4AH 			//01BA 	11CA
		INCR 	4AH, 1H 		//01BB 	1ACA
		CLRF 	4BH 			//01BC 	11CB

		//;NFB.C: 137: BTNpressed = 0;
		CLRF 	6AH 			//01BD 	11EA
		CLRF 	6BH 			//01BE 	11EB

		//;NFB.C: 138: WAIT = 1;
		CLRF 	48H 			//01BF 	11C8
		INCR 	48H, 1H 		//01C0 	1AC8
		CLRF 	49H 			//01C1 	11C9

		//;NFB.C: 139: WAITcnt = 0;
		CLRF 	20H 			//01C2 	11A0
		CLRF 	21H 			//01C3 	11A1
		CLRF 	22H 			//01C4 	11A2
		CLRF 	23H 			//01C5 	11A3

		//;NFB.C: 140: }
		//;NFB.C: 141: }
		//;NFB.C: 142: if(WAIT){
		MOVLB 	6H 			//01C6 	1026
		LDR 	48H, 0H 			//01C7 	1848
		IORWR 	49H, 0H 		//01C8 	1449
		BTSC 	3H, 2H 			//01C9 	2903
		LJUMP 	1FFH 			//01CA 	39FF

		//;NFB.C: 143: WAITcnt++;
		LDWI 	1H 			//01CB 	0001
		ADDWR 	20H, 1H 		//01CC 	17A0
		LDWI 	0H 			//01CD 	0000
		ADDWFC 	21H, 1H 		//01CE 	0DA1
		ADDWFC 	22H, 1H 		//01CF 	0DA2
		ADDWFC 	23H, 1H 		//01D0 	0DA3

		//;NFB.C: 144: if(WAITcnt%200 == 0){
		LDWI 	C8H 			//01D1 	00C8
		STR 	70H 			//01D2 	10F0
		CLRF 	71H 			//01D3 	11F1
		CLRF 	72H 			//01D4 	11F2
		CLRF 	73H 			//01D5 	11F3
		LDR 	23H, 0H 			//01D6 	1823
		STR 	77H 			//01D7 	10F7
		LDR 	22H, 0H 			//01D8 	1822
		STR 	76H 			//01D9 	10F6
		LDR 	21H, 0H 			//01DA 	1821
		STR 	75H 			//01DB 	10F5
		LDR 	20H, 0H 			//01DC 	1820
		STR 	74H 			//01DD 	10F4
		MOVLP 	7H 			//01DE 	0187
		LCALL 	7AEH 			//01DF 	37AE
		MOVLP 	0H 			//01E0 	0180
		LDR 	73H, 0H 			//01E1 	1873
		IORWR 	72H, 0H 		//01E2 	1472
		IORWR 	71H, 0H 		//01E3 	1471
		IORWR 	70H, 0H 		//01E4 	1470
		BTSS 	3H, 2H 			//01E5 	2D03
		LJUMP 	1EAH 			//01E6 	39EA

		//;NFB.C: 145: PC1 = ~PC1;
		LDWI 	2H 			//01E7 	0002
		MOVLB 	0H 			//01E8 	1020
		XORWR 	EH, 1H 		//01E9 	168E

		//;NFB.C: 146: }
		//;NFB.C: 147: if(WAITcnt>=10000){
		MOVLB 	6H 			//01EA 	1026
		LDR 	23H, 0H 			//01EB 	1823
		BTSS 	3H, 2H 			//01EC 	2D03
		LJUMP 	1F7H 			//01ED 	39F7
		LDR 	22H, 0H 			//01EE 	1822
		BTSS 	3H, 2H 			//01EF 	2D03
		LJUMP 	1F7H 			//01F0 	39F7
		LDWI 	10H 			//01F1 	0010
		SUBWR 	20H, 0H 		//01F2 	1220
		LDWI 	27H 			//01F3 	0027
		SUBWFB 	21H, 0H 		//01F4 	0B21
		BTSS 	3H, 0H 			//01F5 	2C03
		LJUMP 	1FFH 			//01F6 	39FF

		//;NFB.C: 148: PC1 = 1;
		MOVLB 	0H 			//01F7 	1020
		BSR 	EH, 1H 			//01F8 	248E

		//;NFB.C: 149: WAIT = 0;
		MOVLB 	6H 			//01F9 	1026
		CLRF 	48H 			//01FA 	11C8
		CLRF 	49H 			//01FB 	11C9
		SLEEP 					//01FC 	1063

		//;NFB.C: 151: __nop();
		NOP 					//01FD 	1000

		//;NFB.C: 152: __nop();
		NOP 					//01FE 	1000

		//;NFB.C: 153: }
		//;NFB.C: 154: }
		//;NFB.C: 155: if(HTOn){
		MOVLB 	6H 			//01FF 	1026
		LDR 	68H, 0H 			//0200 	1868
		IORWR 	69H, 0H 		//0201 	1469
		BTSC 	3H, 2H 			//0202 	2903
		LJUMP 	228H 			//0203 	3A28

		//;NFB.C: 156: HTcnt++;
		LDWI 	1H 			//0204 	0001
		MOVLB 	7H 			//0205 	1027
		ADDWR 	24H, 1H 		//0206 	17A4
		LDWI 	0H 			//0207 	0000
		ADDWFC 	25H, 1H 		//0208 	0DA5
		ADDWFC 	26H, 1H 		//0209 	0DA6
		ADDWFC 	27H, 1H 		//020A 	0DA7

		//;NFB.C: 157: if(HTcnt>=50){
		LDR 	27H, 0H 			//020B 	1827
		BTSS 	3H, 2H 			//020C 	2D03
		LJUMP 	218H 			//020D 	3A18
		LDR 	26H, 0H 			//020E 	1826
		BTSS 	3H, 2H 			//020F 	2D03
		LJUMP 	218H 			//0210 	3A18
		LDR 	25H, 0H 			//0211 	1825
		BTSS 	3H, 2H 			//0212 	2D03
		LJUMP 	218H 			//0213 	3A18
		LDWI 	32H 			//0214 	0032
		SUBWR 	24H, 0H 		//0215 	1224
		BTSS 	3H, 0H 			//0216 	2C03
		LJUMP 	228H 			//0217 	3A28

		//;NFB.C: 158: HTtimer = 1;
		MOVLB 	6H 			//0218 	1026
		LDWI 	1H 			//0219 	0001
		CLRF 	66H 			//021A 	11E6
		INCR 	66H, 1H 		//021B 	1AE6
		CLRF 	67H 			//021C 	11E7

		//;NFB.C: 159: HTtimecnt++;
		MOVLB 	5H 			//021D 	1025
		ADDWR 	59H, 1H 		//021E 	17D9
		LDWI 	0H 			//021F 	0000
		ADDWFC 	5AH, 1H 		//0220 	0DDA
		ADDWFC 	5BH, 1H 		//0221 	0DDB
		ADDWFC 	5CH, 1H 		//0222 	0DDC

		//;NFB.C: 160: HTcnt = 0;
		MOVLB 	7H 			//0223 	1027
		CLRF 	24H 			//0224 	11A4
		CLRF 	25H 			//0225 	11A5
		CLRF 	26H 			//0226 	11A6
		CLRF 	27H 			//0227 	11A7

		//;NFB.C: 161: }
		//;NFB.C: 162: }
		//;NFB.C: 163: if(SmokeOn){
		MOVLB 	6H 			//0228 	1026
		LDR 	64H, 0H 			//0229 	1864
		IORWR 	65H, 0H 		//022A 	1465
		BTSC 	3H, 2H 			//022B 	2903
		LJUMP 	251H 			//022C 	3A51

		//;NFB.C: 164: Smokecnt++;
		LDWI 	1H 			//022D 	0001
		MOVLB 	7H 			//022E 	1027
		ADDWR 	20H, 1H 		//022F 	17A0
		LDWI 	0H 			//0230 	0000
		ADDWFC 	21H, 1H 		//0231 	0DA1
		ADDWFC 	22H, 1H 		//0232 	0DA2
		ADDWFC 	23H, 1H 		//0233 	0DA3

		//;NFB.C: 165: if(Smokecnt>=10){
		LDR 	23H, 0H 			//0234 	1823
		BTSS 	3H, 2H 			//0235 	2D03
		LJUMP 	241H 			//0236 	3A41
		LDR 	22H, 0H 			//0237 	1822
		BTSS 	3H, 2H 			//0238 	2D03
		LJUMP 	241H 			//0239 	3A41
		LDR 	21H, 0H 			//023A 	1821
		BTSS 	3H, 2H 			//023B 	2D03
		LJUMP 	241H 			//023C 	3A41
		LDWI 	AH 			//023D 	000A
		SUBWR 	20H, 0H 		//023E 	1220
		BTSS 	3H, 0H 			//023F 	2C03
		LJUMP 	251H 			//0240 	3A51

		//;NFB.C: 166: Smoketimer = 1;
		MOVLB 	6H 			//0241 	1026
		LDWI 	1H 			//0242 	0001
		CLRF 	62H 			//0243 	11E2
		INCR 	62H, 1H 		//0244 	1AE2
		CLRF 	63H 			//0245 	11E3

		//;NFB.C: 167: Smoketimecnt++;
		MOVLB 	5H 			//0246 	1025
		ADDWR 	55H, 1H 		//0247 	17D5
		LDWI 	0H 			//0248 	0000
		ADDWFC 	56H, 1H 		//0249 	0DD6
		ADDWFC 	57H, 1H 		//024A 	0DD7
		ADDWFC 	58H, 1H 		//024B 	0DD8

		//;NFB.C: 168: Smokecnt = 0;
		MOVLB 	7H 			//024C 	1027
		CLRF 	20H 			//024D 	11A0
		CLRF 	21H 			//024E 	11A1
		CLRF 	22H 			//024F 	11A2
		CLRF 	23H 			//0250 	11A3
		BCR 	7EH, 0H 			//0251 	207E
		RETI 					//0252 	1009
		MOVLP 	2H 			//0253 	0182
		LJUMP 	255H 			//0254 	3A55
		LDWI 	4BH 			//0255 	004B
		STR 	4H 			//0256 	1084
		LDWI 	0H 			//0257 	0000
		STR 	5H 			//0258 	1085
		LDWI 	24H 			//0259 	0024
		MOVLP 	7H 			//025A 	0187
		LCALL 	7FAH 			//025B 	37FA
		MOVLP 	2H 			//025C 	0182
		LDWI 	D5H 			//025D 	00D5
		STR 	4H 			//025E 	1084
		LDWI 	2H 			//025F 	0002
		STR 	5H 			//0260 	1085
		LDWI 	19H 			//0261 	0019
		MOVLP 	7H 			//0262 	0187
		LCALL 	7FAH 			//0263 	37FA
		MOVLP 	2H 			//0264 	0182
		LDWI 	20H 			//0265 	0020
		STR 	4H 			//0266 	1084
		LDWI 	3H 			//0267 	0003
		STR 	5H 			//0268 	1085
		LDWI 	4EH 			//0269 	004E
		MOVLP 	7H 			//026A 	0187
		LCALL 	7FAH 			//026B 	37FA
		MOVLP 	2H 			//026C 	0182
		LDWI 	A0H 			//026D 	00A0
		STR 	4H 			//026E 	1084
		LDWI 	3H 			//026F 	0003
		STR 	5H 			//0270 	1085
		LDWI 	30H 			//0271 	0030
		MOVLP 	7H 			//0272 	0187
		LCALL 	7FAH 			//0273 	37FA
		BCR 	7EH, 0H 			//0274 	207E
		MOVLB 	0H 			//0275 	1020
		MOVLP 	26H 			//0276 	01A6
		LJUMP 	6EAH 			//0277 	3EEA
		MOVLB 	0H 			//0278 	1020
		STR 	45H 			//0279 	10C5
		CLRF 	29H 			//027A 	11A9
		LCALL 	29EH 			//027B 	329E
		LDR 	29H, 0H 			//027C 	1829
		STR 	41H 			//027D 	10C1
		LDR 	2AH, 0H 			//027E 	182A
		STR 	42H 			//027F 	10C2
		LDR 	2BH, 0H 			//0280 	182B
		STR 	43H 			//0281 	10C3
		RET 					//0282 	1008
		CLRF 	7DH 			//0283 	11FD
		BTSS 	26H, 7H 		//0284 	2FA6
		LJUMP 	28DH 			//0285 	3A8D
		COMR 	25H, 1H 		//0286 	19A5
		COMR 	26H, 1H 		//0287 	19A6
		INCR 	25H, 1H 		//0288 	1AA5
		BTSC 	3H, 2H 			//0289 	2903
		INCR 	26H, 1H 		//028A 	1AA6
		CLRF 	7DH 			//028B 	11FD
		INCR 	7DH, 1H 		//028C 	1AFD
		LDR 	25H, 0H 			//028D 	1825
		STR 	70H 			//028E 	10F0
		LDR 	26H, 0H 			//028F 	1826
		STR 	71H 			//0290 	10F1
		LDWI 	8EH 			//0291 	008E
		CLRF 	72H 			//0292 	11F2
		STR 	73H 			//0293 	10F3
		LDR 	7DH, 0H 			//0294 	187D
		STR 	74H 			//0295 	10F4
		LCALL 	527H 			//0296 	3527
		LDR 	70H, 0H 			//0297 	1870
		STR 	25H 			//0298 	10A5
		LDR 	71H, 0H 			//0299 	1871
		STR 	26H 			//029A 	10A6
		LDR 	72H, 0H 			//029B 	1872
		STR 	27H 			//029C 	10A7
		RET 					//029D 	1008
		STR 	40H 			//029E 	10C0
		LDR 	29H, 0H 			//029F 	1829
		BTSC 	3H, 2H 			//02A0 	2903
		LJUMP 	2A4H 			//02A1 	3AA4
		LCALL 	60AH 			//02A2 	360A
		MOVLP 	2H 			//02A3 	0182
		LCALL 	5CAH 			//02A4 	35CA
		MOVLP 	2H 			//02A5 	0182
		STR 	39H 			//02A6 	10B9
		LCALL 	5B8H 			//02A7 	35B8
		MOVLP 	2H 			//02A8 	0182
		BTSS 	3H, 0H 			//02A9 	2C03
		LJUMP 	2ADH 			//02AA 	3AAD
		INCR 	40H, 1H 		//02AB 	1AC0
		LJUMP 	2A4H 			//02AC 	3AA4
		LDWI 	2DH 			//02AD 	002D
		CLRF 	3AH 			//02AE 	11BA
		XORWR 	39H, 0H 		//02AF 	1639
		BTSS 	3H, 2H 			//02B0 	2D03
		LJUMP 	2B5H 			//02B1 	3AB5
		CLRF 	3AH 			//02B2 	11BA
		INCR 	3AH, 1H 		//02B3 	1ABA
		LJUMP 	2B8H 			//02B4 	3AB8
		LDWI 	2BH 			//02B5 	002B
		XORWR 	39H, 0H 		//02B6 	1639
		BTSC 	3H, 2H 			//02B7 	2903
		INCR 	40H, 1H 		//02B8 	1AC0
		CLRF 	39H 			//02B9 	11B9
		CLRF 	3CH 			//02BA 	11BC
		CLRF 	3DH 			//02BB 	11BD
		CLRF 	3EH 			//02BC 	11BE
		CLRF 	3FH 			//02BD 	11BF
		CLRF 	3BH 			//02BE 	11BB
		LJUMP 	2CAH 			//02BF 	3ACA
		LDR 	40H, 0H 			//02C0 	1840
		STR 	6H 			//02C1 	1086
		LDWI 	3H 			//02C2 	0003
		STR 	7H 			//02C3 	1087
		LDWI 	2EH 			//02C4 	002E
		XORWR 	1H, 0H 		//02C5 	1601
		BTSS 	3H, 2H 			//02C6 	2D03
		LJUMP 	2CCH 			//02C7 	3ACC
		BSR 	3AH, 4H 			//02C8 	263A
		INCR 	40H, 1H 		//02C9 	1AC0
		BTSS 	3AH, 4H 		//02CA 	2E3A
		LJUMP 	2C0H 			//02CB 	3AC0
		LCALL 	5CAH 			//02CC 	35CA
		MOVLP 	2H 			//02CD 	0182
		LCALL 	421H 			//02CE 	3421
		MOVLP 	2H 			//02CF 	0182
		BTSS 	3H, 0H 			//02D0 	2C03
		LJUMP 	301H 			//02D1 	3B01
		LDWI 	8H 			//02D2 	0008
		BSR 	3AH, 1H 			//02D3 	24BA
		XORWR 	39H, 0H 		//02D4 	1639
		BTSC 	3H, 2H 			//02D5 	2903
		LJUMP 	2FDH 			//02D6 	3AFD
		BTSC 	3AH, 4H 		//02D7 	2A3A
		DECR 	3BH, 1H 		//02D8 	13BB
		LDWI 	AH 			//02D9 	000A
		INCR 	39H, 1H 		//02DA 	1AB9
		STR 	70H 			//02DB 	10F0
		CLRF 	71H 			//02DC 	11F1
		CLRF 	72H 			//02DD 	11F2
		CLRF 	73H 			//02DE 	11F3
		LDR 	3FH, 0H 			//02DF 	183F
		STR 	77H 			//02E0 	10F7
		LDR 	3EH, 0H 			//02E1 	183E
		STR 	76H 			//02E2 	10F6
		LDR 	3DH, 0H 			//02E3 	183D
		STR 	75H 			//02E4 	10F5
		LDR 	3CH, 0H 			//02E5 	183C
		STR 	74H 			//02E6 	10F4
		LCALL 	593H 			//02E7 	3593
		MOVLP 	2H 			//02E8 	0182
		LDR 	73H, 0H 			//02E9 	1873
		STR 	3FH 			//02EA 	10BF
		LDR 	72H, 0H 			//02EB 	1872
		STR 	3EH 			//02EC 	10BE
		LDR 	71H, 0H 			//02ED 	1871
		STR 	3DH 			//02EE 	10BD
		LDR 	70H, 0H 			//02EF 	1870
		STR 	3CH 			//02F0 	10BC
		LCALL 	5CAH 			//02F1 	35CA
		MOVLP 	2H 			//02F2 	0182
		ADDWI 	D0H 			//02F3 	0ED0
		ADDWR 	3CH, 1H 		//02F4 	17BC
		LDWI 	1H 			//02F5 	0001
		BTSC 	3H, 0H 			//02F6 	2803
		ADDWR 	3DH, 1H 		//02F7 	17BD
		BTSC 	3H, 0H 			//02F8 	2803
		ADDWR 	3EH, 1H 		//02F9 	17BE
		BTSC 	3H, 0H 			//02FA 	2803
		ADDWR 	3FH, 1H 		//02FB 	17BF
		LJUMP 	2C9H 			//02FC 	3AC9
		BTSC 	3AH, 4H 		//02FD 	2A3A
		LJUMP 	2C9H 			//02FE 	3AC9
		INCR 	3BH, 1H 		//02FF 	1ABB
		LJUMP 	2C9H 			//0300 	3AC9
		CLRF 	39H 			//0301 	11B9
		LDR 	40H, 0H 			//0302 	1840
		STR 	6H 			//0303 	1086
		LDWI 	3H 			//0304 	0003
		STR 	7H 			//0305 	1087
		LDWI 	65H 			//0306 	0065
		XORWR 	1H, 0H 		//0307 	1601
		BTSC 	3H, 2H 			//0308 	2903
		LJUMP 	310H 			//0309 	3B10
		LDR 	40H, 0H 			//030A 	1840
		STR 	6H 			//030B 	1086
		LDWI 	45H 			//030C 	0045
		XORWR 	1H, 0H 		//030D 	1601
		BTSS 	3H, 2H 			//030E 	2D03
		LJUMP 	358H 			//030F 	3B58
		INCR 	40H, 1H 		//0310 	1AC0
		LDR 	40H, 0H 			//0311 	1840
		STR 	6H 			//0312 	1086
		LDWI 	3H 			//0313 	0003
		STR 	7H 			//0314 	1087
		LDWI 	2DH 			//0315 	002D
		XORWR 	1H, 0H 		//0316 	1601
		BTSS 	3H, 2H 			//0317 	2D03
		LJUMP 	31BH 			//0318 	3B1B
		BSR 	3AH, 3H 			//0319 	25BA
		LJUMP 	32BH 			//031A 	3B2B
		LDR 	40H, 0H 			//031B 	1840
		STR 	6H 			//031C 	1086
		LDWI 	3H 			//031D 	0003
		STR 	7H 			//031E 	1087
		LDWI 	2BH 			//031F 	002B
		XORWR 	1H, 0H 		//0320 	1601
		BTSC 	3H, 2H 			//0321 	2903
		LJUMP 	32BH 			//0322 	3B2B
		LDR 	40H, 0H 			//0323 	1840
		STR 	6H 			//0324 	1086
		LDWI 	3H 			//0325 	0003
		STR 	7H 			//0326 	1087
		LDWI 	30H 			//0327 	0030
		XORWR 	1H, 0H 		//0328 	1601
		BTSS 	3H, 2H 			//0329 	2D03
		LJUMP 	32DH 			//032A 	3B2D
		INCR 	40H, 1H 		//032B 	1AC0
		LJUMP 	323H 			//032C 	3B23
		LCALL 	5CAH 			//032D 	35CA
		MOVLP 	2H 			//032E 	0182
		LCALL 	421H 			//032F 	3421
		MOVLP 	2H 			//0330 	0182
		BTSS 	3H, 0H 			//0331 	2C03
		LJUMP 	354H 			//0332 	3B54
		LCALL 	5CAH 			//0333 	35CA
		MOVLP 	2H 			//0334 	0182
		ADDWI 	D0H 			//0335 	0ED0
		STR 	39H 			//0336 	10B9
		INCR 	40H, 1H 		//0337 	1AC0
		LDR 	40H, 0H 			//0338 	1840
		STR 	6H 			//0339 	1086
		LDR 	1H, 0H 			//033A 	1801
		LCALL 	421H 			//033B 	3421
		MOVLP 	2H 			//033C 	0182
		BTSS 	3H, 0H 			//033D 	2C03
		LJUMP 	354H 			//033E 	3B54
		LCALL 	5E7H 			//033F 	35E7
		MOVLP 	2H 			//0340 	0182
		LCALL 	42FH 			//0341 	342F
		MOVLP 	2H 			//0342 	0182
		ADDWR 	1H, 0H 		//0343 	1701
		ADDWI 	D0H 			//0344 	0ED0
		STR 	39H 			//0345 	10B9
		INCR 	40H, 1H 		//0346 	1AC0
		LCALL 	5CAH 			//0347 	35CA
		MOVLP 	2H 			//0348 	0182
		LCALL 	421H 			//0349 	3421
		MOVLP 	2H 			//034A 	0182
		BTSS 	3H, 0H 			//034B 	2C03
		LJUMP 	354H 			//034C 	3B54
		LCALL 	5E7H 			//034D 	35E7
		MOVLP 	2H 			//034E 	0182
		LCALL 	42FH 			//034F 	342F
		MOVLP 	2H 			//0350 	0182
		ADDWR 	1H, 0H 		//0351 	1701
		ADDWI 	D0H 			//0352 	0ED0
		STR 	39H 			//0353 	10B9
		BTSS 	3AH, 3H 		//0354 	2DBA
		LJUMP 	358H 			//0355 	3B58
		COMR 	39H, 1H 		//0356 	19B9
		INCR 	39H, 1H 		//0357 	1AB9
		LDR 	39H, 0H 			//0358 	1839
		ADDWR 	3BH, 1H 		//0359 	17BB
		LDR 	29H, 0H 			//035A 	1829
		BTSS 	3H, 2H 			//035B 	2D03
		BTSS 	3AH, 1H 		//035C 	2CBA
		LJUMP 	360H 			//035D 	3B60
		LCALL 	60AH 			//035E 	360A
		MOVLP 	2H 			//035F 	0182
		LDR 	3FH, 0H 			//0360 	183F
		STR 	7BH 			//0361 	10FB
		LDR 	3EH, 0H 			//0362 	183E
		STR 	7AH 			//0363 	10FA
		LDR 	3DH, 0H 			//0364 	183D
		STR 	79H 			//0365 	10F9
		LDR 	3CH, 0H 			//0366 	183C
		STR 	78H 			//0367 	10F8
		LCALL 	565H 			//0368 	3565
		MOVLP 	2H 			//0369 	0182
		LDR 	78H, 0H 			//036A 	1878
		STR 	3CH 			//036B 	10BC
		LDR 	79H, 0H 			//036C 	1879
		STR 	3DH 			//036D 	10BD
		LDR 	7AH, 0H 			//036E 	187A
		STR 	3EH 			//036F 	10BE
		IORWR 	3DH, 0H 		//0370 	143D
		IORWR 	3CH, 0H 		//0371 	143C
		BTSS 	3H, 2H 			//0372 	2D03
		LJUMP 	378H 			//0373 	3B78
		CLRF 	29H 			//0374 	11A9
		CLRF 	2AH 			//0375 	11AA
		CLRF 	2BH 			//0376 	11AB
		RET 					//0377 	1008
		BTSS 	3BH, 7H 		//0378 	2FBB
		LJUMP 	3C1H 			//0379 	3BC1
		COMR 	3BH, 1H 		//037A 	19BB
		INCR 	3BH, 1H 		//037B 	1ABB
		LDR 	3BH, 0H 			//037C 	183B
		XORWI 	80H 			//037D 	0A80
		ADDWI 	76H 			//037E 	0E76
		BTSS 	3H, 0H 			//037F 	2C03
		LJUMP 	39AH 			//0380 	3B9A
		LDWI 	3H 			//0381 	0003
		STR 	78H 			//0382 	10F8
		LDWI 	15H 			//0383 	0015
		STR 	79H 			//0384 	10F9
		LDWI 	50H 			//0385 	0050
		LCALL 	5D7H 			//0386 	35D7
		MOVLP 	2H 			//0387 	0182
		LCALL 	43BH 			//0388 	343B
		MOVLP 	2H 			//0389 	0182
		LCALL 	5F5H 			//038A 	35F5
		MOVLP 	2H 			//038B 	0182
		LDWI 	F6H 			//038C 	00F6
		ADDWR 	3BH, 1H 		//038D 	17BB
		LJUMP 	37CH 			//038E 	3B7C
		LDWI 	20H 			//038F 	0020
		CLRF 	78H 			//0390 	11F8
		STR 	79H 			//0391 	10F9
		LDWI 	41H 			//0392 	0041
		LCALL 	5D7H 			//0393 	35D7
		MOVLP 	2H 			//0394 	0182
		LCALL 	43BH 			//0395 	343B
		MOVLP 	2H 			//0396 	0182
		LCALL 	5F5H 			//0397 	35F5
		MOVLP 	2H 			//0398 	0182
		DECR 	3BH, 1H 		//0399 	13BB
		LDR 	3BH, 0H 			//039A 	183B
		BTSS 	3H, 2H 			//039B 	2D03
		LJUMP 	38FH 			//039C 	3B8F
		LDWI 	80H 			//039D 	0080
		CLRF 	2DH 			//039E 	11AD
		STR 	2EH 			//039F 	10AE
		CLRF 	2FH 			//03A0 	11AF
		LDR 	3CH, 0H 			//03A1 	183C
		STR 	70H 			//03A2 	10F0
		LDR 	3DH, 0H 			//03A3 	183D
		STR 	71H 			//03A4 	10F1
		LDR 	3EH, 0H 			//03A5 	183E
		STR 	72H 			//03A6 	10F2
		LDR 	2DH, 0H 			//03A7 	182D
		STR 	73H 			//03A8 	10F3
		LDR 	2EH, 0H 			//03A9 	182E
		STR 	74H 			//03AA 	10F4
		LDR 	2FH, 0H 			//03AB 	182F
		STR 	75H 			//03AC 	10F5
		LCALL 	497H 			//03AD 	3497
		MOVLP 	2H 			//03AE 	0182
		BTSC 	3H, 0H 			//03AF 	2803
		LJUMP 	3C6H 			//03B0 	3BC6
		BTSS 	3AH, 0H 		//03B1 	2C3A
		LJUMP 	3C0H 			//03B2 	3BC0
		LDWI 	80H 			//03B3 	0080
		CLRF 	30H 			//03B4 	11B0
		STR 	31H 			//03B5 	10B1
		CLRF 	32H 			//03B6 	11B2
		LDR 	30H, 0H 			//03B7 	1830
		STR 	70H 			//03B8 	10F0
		LDR 	31H, 0H 			//03B9 	1831
		STR 	71H 			//03BA 	10F1
		LDR 	32H, 0H 			//03BB 	1832
		STR 	72H 			//03BC 	10F2
		LCALL 	51FH 			//03BD 	351F
		MOVLP 	2H 			//03BE 	0182
		LJUMP 	5D0H 			//03BF 	3DD0
		LJUMP 	5EFH 			//03C0 	3DEF
		LDR 	3BH, 0H 			//03C1 	183B
		XORWI 	80H 			//03C2 	0A80
		ADDWI 	7FH 			//03C3 	0E7F
		BTSC 	3H, 0H 			//03C4 	2803
		LJUMP 	3E9H 			//03C5 	3BE9
		BTSS 	3AH, 0H 		//03C6 	2C3A
		LJUMP 	3D5H 			//03C7 	3BD5
		LDR 	3CH, 0H 			//03C8 	183C
		STR 	70H 			//03C9 	10F0
		LDR 	3DH, 0H 			//03CA 	183D
		STR 	71H 			//03CB 	10F1
		LDR 	3EH, 0H 			//03CC 	183E
		STR 	72H 			//03CD 	10F2
		LCALL 	51FH 			//03CE 	351F
		LDR 	70H, 0H 			//03CF 	1870
		STR 	3CH 			//03D0 	10BC
		LDR 	71H, 0H 			//03D1 	1871
		STR 	3DH 			//03D2 	10BD
		LDR 	72H, 0H 			//03D3 	1872
		STR 	3EH 			//03D4 	10BE
		LDR 	3CH, 0H 			//03D5 	183C
		STR 	29H 			//03D6 	10A9
		LDR 	3DH, 0H 			//03D7 	183D
		STR 	2AH 			//03D8 	10AA
		LDR 	3EH, 0H 			//03D9 	183E
		STR 	2BH 			//03DA 	10AB
		RET 					//03DB 	1008
		LDWI 	3H 			//03DC 	0003
		STR 	78H 			//03DD 	10F8
		LDWI 	15H 			//03DE 	0015
		STR 	79H 			//03DF 	10F9
		LDWI 	50H 			//03E0 	0050
		LCALL 	5DFH 			//03E1 	35DF
		MOVLP 	2H 			//03E2 	0182
		LCALL 	4C3H 			//03E3 	34C3
		MOVLP 	2H 			//03E4 	0182
		LCALL 	5FCH 			//03E5 	35FC
		MOVLP 	2H 			//03E6 	0182
		LDWI 	F6H 			//03E7 	00F6
		ADDWR 	3BH, 1H 		//03E8 	17BB
		LDWI 	AH 			//03E9 	000A
		SUBWR 	3BH, 0H 		//03EA 	123B
		BTSS 	3H, 0H 			//03EB 	2C03
		LJUMP 	3F9H 			//03EC 	3BF9
		LJUMP 	3DCH 			//03ED 	3BDC
		LDWI 	20H 			//03EE 	0020
		CLRF 	78H 			//03EF 	11F8
		STR 	79H 			//03F0 	10F9
		LDWI 	41H 			//03F1 	0041
		LCALL 	5DFH 			//03F2 	35DF
		MOVLP 	2H 			//03F3 	0182
		LCALL 	4C3H 			//03F4 	34C3
		MOVLP 	2H 			//03F5 	0182
		LCALL 	5FCH 			//03F6 	35FC
		MOVLP 	2H 			//03F7 	0182
		DECR 	3BH, 1H 		//03F8 	13BB
		LDR 	3BH, 0H 			//03F9 	183B
		BTSS 	3H, 2H 			//03FA 	2D03
		LJUMP 	3EEH 			//03FB 	3BEE
		LDWI 	FFH 			//03FC 	00FF
		STR 	33H 			//03FD 	10B3
		LDWI 	7FH 			//03FE 	007F
		STR 	34H 			//03FF 	10B4
		STR 	35H 			//0400 	10B5
		LDR 	33H, 0H 			//0401 	1833
		STR 	70H 			//0402 	10F0
		LDR 	34H, 0H 			//0403 	1834
		STR 	71H 			//0404 	10F1
		LDR 	35H, 0H 			//0405 	1835
		STR 	72H 			//0406 	10F2
		LDR 	3CH, 0H 			//0407 	183C
		STR 	73H 			//0408 	10F3
		LDR 	3DH, 0H 			//0409 	183D
		STR 	74H 			//040A 	10F4
		LDR 	3EH, 0H 			//040B 	183E
		STR 	75H 			//040C 	10F5
		LCALL 	497H 			//040D 	3497
		MOVLP 	2H 			//040E 	0182
		BTSC 	3H, 0H 			//040F 	2803
		LJUMP 	3C6H 			//0410 	3BC6
		BTSS 	3AH, 0H 		//0411 	2C3A
		LJUMP 	420H 			//0412 	3C20
		LDWI 	80H 			//0413 	0080
		CLRF 	36H 			//0414 	11B6
		STR 	37H 			//0415 	10B7
		CLRF 	38H 			//0416 	11B8
		LDR 	36H, 0H 			//0417 	1836
		STR 	70H 			//0418 	10F0
		LDR 	37H, 0H 			//0419 	1837
		STR 	71H 			//041A 	10F1
		LDR 	38H, 0H 			//041B 	1838
		STR 	72H 			//041C 	10F2
		LCALL 	51FH 			//041D 	351F
		MOVLP 	2H 			//041E 	0182
		LJUMP 	5D0H 			//041F 	3DD0
		LJUMP 	5EFH 			//0420 	3DEF
		STR 	71H 			//0421 	10F1
		LDWI 	3AH 			//0422 	003A
		CLRF 	70H 			//0423 	11F0
		SUBWR 	71H, 0H 		//0424 	1271
		BTSC 	3H, 0H 			//0425 	2803
		LJUMP 	42DH 			//0426 	3C2D
		LDWI 	30H 			//0427 	0030
		SUBWR 	71H, 0H 		//0428 	1271
		BTSS 	3H, 0H 			//0429 	2C03
		LJUMP 	42DH 			//042A 	3C2D
		CLRF 	70H 			//042B 	11F0
		INCR 	70H, 1H 		//042C 	1AF0
		RRR 	70H, 0H 			//042D 	1C70
		RET 					//042E 	1008
		STR 	72H 			//042F 	10F2
		CLRF 	71H 			//0430 	11F1
		LDR 	70H, 0H 			//0431 	1870
		BTSC 	72H, 0H 		//0432 	2872
		ADDWR 	71H, 1H 		//0433 	17F1
		LSLF 	70H, 1H 		//0434 	05F0
		LSRF 	72H, 1H 		//0435 	06F2
		LDR 	72H, 0H 			//0436 	1872
		BTSS 	3H, 2H 			//0437 	2D03
		LJUMP 	431H 			//0438 	3C31
		LDR 	71H, 0H 			//0439 	1871
		RET 					//043A 	1008
		LDR 	7BH, 0H 			//043B 	187B
		STR 	20H 			//043C 	10A0
		LDR 	7CH, 0H 			//043D 	187C
		STR 	21H 			//043E 	10A1
		LDR 	7DH, 0H 			//043F 	187D
		STR 	22H 			//0440 	10A2
		BCR 	3H, 0H 			//0441 	2003
		RLR 	21H, 0H 			//0442 	1D21
		RLR 	22H, 0H 			//0443 	1D22
		STR 	27H 			//0444 	10A7
		LDR 	27H, 0H 			//0445 	1827
		BTSS 	3H, 2H 			//0446 	2D03
		LJUMP 	449H 			//0447 	3C49
		LJUMP 	610H 			//0448 	3E10
		LDR 	78H, 0H 			//0449 	1878
		STR 	20H 			//044A 	10A0
		LDR 	79H, 0H 			//044B 	1879
		STR 	21H 			//044C 	10A1
		LDR 	7AH, 0H 			//044D 	187A
		STR 	22H 			//044E 	10A2
		BCR 	3H, 0H 			//044F 	2003
		RLR 	21H, 0H 			//0450 	1D21
		RLR 	22H, 0H 			//0451 	1D22
		STR 	28H 			//0452 	10A8
		LDR 	28H, 0H 			//0453 	1828
		BTSS 	3H, 2H 			//0454 	2D03
		LJUMP 	457H 			//0455 	3C57
		LJUMP 	610H 			//0456 	3E10
		LDWI 	89H 			//0457 	0089
		CLRF 	24H 			//0458 	11A4
		CLRF 	25H 			//0459 	11A5
		CLRF 	26H 			//045A 	11A6
		ADDWR 	28H, 0H 		//045B 	1728
		STR 	20H 			//045C 	10A0
		SUBWR 	27H, 1H 		//045D 	12A7
		LDR 	7DH, 0H 			//045E 	187D
		STR 	28H 			//045F 	10A8
		LDR 	7AH, 0H 			//0460 	187A
		XORWR 	28H, 1H 		//0461 	16A8
		LDWI 	80H 			//0462 	0080
		ANDWR 	28H, 1H 		//0463 	15A8
		LDWI 	18H 			//0464 	0018
		BSR 	7CH, 7H 			//0465 	27FC
		CLRF 	7DH 			//0466 	11FD
		BSR 	79H, 7H 			//0467 	27F9
		CLRF 	7AH 			//0468 	11FA
		STR 	23H 			//0469 	10A3
		LSLF 	24H, 1H 		//046A 	05A4
		RLR 	25H, 1H 			//046B 	1DA5
		RLR 	26H, 1H 			//046C 	1DA6
		LDR 	7AH, 0H 			//046D 	187A
		SUBWR 	7DH, 0H 		//046E 	127D
		BTSS 	3H, 2H 			//046F 	2D03
		LJUMP 	477H 			//0470 	3C77
		LDR 	79H, 0H 			//0471 	1879
		SUBWR 	7CH, 0H 		//0472 	127C
		BTSS 	3H, 2H 			//0473 	2D03
		LJUMP 	477H 			//0474 	3C77
		LDR 	78H, 0H 			//0475 	1878
		SUBWR 	7BH, 0H 		//0476 	127B
		BTSS 	3H, 0H 			//0477 	2C03
		LJUMP 	480H 			//0478 	3C80
		LDR 	78H, 0H 			//0479 	1878
		SUBWR 	7BH, 1H 		//047A 	12FB
		LDR 	79H, 0H 			//047B 	1879
		SUBWFB 	7CH, 1H 		//047C 	0BFC
		LDR 	7AH, 0H 			//047D 	187A
		SUBWFB 	7DH, 1H 		//047E 	0BFD
		BSR 	24H, 0H 			//047F 	2424
		LSLF 	7BH, 1H 		//0480 	05FB
		RLR 	7CH, 1H 			//0481 	1DFC
		RLR 	7DH, 1H 			//0482 	1DFD
		DECRSZ 	23H, 1H 		//0483 	1BA3
		LJUMP 	46AH 			//0484 	3C6A
		LDR 	24H, 0H 			//0485 	1824
		STR 	70H 			//0486 	10F0
		LDR 	25H, 0H 			//0487 	1825
		STR 	71H 			//0488 	10F1
		LDR 	26H, 0H 			//0489 	1826
		STR 	72H 			//048A 	10F2
		LDR 	27H, 0H 			//048B 	1827
		STR 	73H 			//048C 	10F3
		LDR 	28H, 0H 			//048D 	1828
		STR 	74H 			//048E 	10F4
		LCALL 	527H 			//048F 	3527
		LDR 	70H, 0H 			//0490 	1870
		STR 	78H 			//0491 	10F8
		LDR 	71H, 0H 			//0492 	1871
		STR 	79H 			//0493 	10F9
		LDR 	72H, 0H 			//0494 	1872
		STR 	7AH 			//0495 	10FA
		RET 					//0496 	1008
		BTSS 	72H, 7H 		//0497 	2FF2
		LJUMP 	4A6H 			//0498 	3CA6
		LDR 	70H, 0H 			//0499 	1870
		SUBWI 	0H 			//049A 	0C00
		STR 	70H 			//049B 	10F0
		LDR 	71H, 0H 			//049C 	1871
		BTSS 	3H, 0H 			//049D 	2C03
		INCRSZ 	71H, 0H 		//049E 	1F71
		SUBWI 	0H 			//049F 	0C00
		STR 	71H 			//04A0 	10F1
		LDR 	72H, 0H 			//04A1 	1872
		BTSS 	3H, 0H 			//04A2 	2C03
		INCRSZ 	72H, 0H 		//04A3 	1F72
		SUBWI 	80H 			//04A4 	0C80
		STR 	72H 			//04A5 	10F2
		BTSS 	75H, 7H 		//04A6 	2FF5
		LJUMP 	4B5H 			//04A7 	3CB5
		LDR 	73H, 0H 			//04A8 	1873
		SUBWI 	0H 			//04A9 	0C00
		STR 	73H 			//04AA 	10F3
		LDR 	74H, 0H 			//04AB 	1874
		BTSS 	3H, 0H 			//04AC 	2C03
		INCRSZ 	74H, 0H 		//04AD 	1F74
		SUBWI 	0H 			//04AE 	0C00
		STR 	74H 			//04AF 	10F4
		LDR 	75H, 0H 			//04B0 	1875
		BTSS 	3H, 0H 			//04B1 	2C03
		INCRSZ 	75H, 0H 		//04B2 	1F75
		SUBWI 	80H 			//04B3 	0C80
		STR 	75H 			//04B4 	10F5
		LDWI 	80H 			//04B5 	0080
		XORWR 	72H, 1H 		//04B6 	16F2
		XORWR 	75H, 1H 		//04B7 	16F5
		LDR 	75H, 0H 			//04B8 	1875
		SUBWR 	72H, 0H 		//04B9 	1272
		BTSS 	3H, 2H 			//04BA 	2D03
		RET 					//04BB 	1008
		LDR 	74H, 0H 			//04BC 	1874
		SUBWR 	71H, 0H 		//04BD 	1271
		BTSS 	3H, 2H 			//04BE 	2D03
		RET 					//04BF 	1008
		LDR 	73H, 0H 			//04C0 	1873
		SUBWR 	70H, 0H 		//04C1 	1270
		RET 					//04C2 	1008
		LDR 	78H, 0H 			//04C3 	1878
		STR 	20H 			//04C4 	10A0
		LDR 	79H, 0H 			//04C5 	1879
		STR 	21H 			//04C6 	10A1
		LDR 	7AH, 0H 			//04C7 	187A
		STR 	22H 			//04C8 	10A2
		BCR 	3H, 0H 			//04C9 	2003
		RLR 	21H, 0H 			//04CA 	1D21
		RLR 	22H, 0H 			//04CB 	1D22
		STR 	23H 			//04CC 	10A3
		LDR 	23H, 0H 			//04CD 	1823
		BTSS 	3H, 2H 			//04CE 	2D03
		LJUMP 	4D1H 			//04CF 	3CD1
		LJUMP 	614H 			//04D0 	3E14
		LDR 	7BH, 0H 			//04D1 	187B
		STR 	20H 			//04D2 	10A0
		LDR 	7CH, 0H 			//04D3 	187C
		STR 	21H 			//04D4 	10A1
		LDR 	7DH, 0H 			//04D5 	187D
		STR 	22H 			//04D6 	10A2
		BCR 	3H, 0H 			//04D7 	2003
		RLR 	21H, 0H 			//04D8 	1D21
		RLR 	22H, 0H 			//04D9 	1D22
		STR 	28H 			//04DA 	10A8
		LDR 	28H, 0H 			//04DB 	1828
		BTSS 	3H, 2H 			//04DC 	2D03
		LJUMP 	4DFH 			//04DD 	3CDF
		LJUMP 	614H 			//04DE 	3E14
		LDR 	28H, 0H 			//04DF 	1828
		ADDWI 	7BH 			//04E0 	0E7B
		ADDWR 	23H, 1H 		//04E1 	17A3
		LDR 	7AH, 0H 			//04E2 	187A
		STR 	28H 			//04E3 	10A8
		LDR 	7DH, 0H 			//04E4 	187D
		XORWR 	28H, 1H 		//04E5 	16A8
		LDWI 	80H 			//04E6 	0080
		ANDWR 	28H, 1H 		//04E7 	15A8
		LDWI 	FFH 			//04E8 	00FF
		BSR 	79H, 7H 			//04E9 	27F9
		BSR 	7CH, 7H 			//04EA 	27FC
		ANDWR 	7BH, 1H 		//04EB 	15FB
		ANDWR 	7CH, 1H 		//04EC 	15FC
		LDWI 	7H 			//04ED 	0007
		CLRF 	7DH 			//04EE 	11FD
		CLRF 	24H 			//04EF 	11A4
		CLRF 	25H 			//04F0 	11A5
		CLRF 	26H 			//04F1 	11A6
		STR 	27H 			//04F2 	10A7
		BTSS 	78H, 0H 		//04F3 	2C78
		LJUMP 	4F7H 			//04F4 	3CF7
		LCALL 	603H 			//04F5 	3603
		MOVLP 	2H 			//04F6 	0182
		LSRF 	7AH, 1H 		//04F7 	06FA
		RRR 	79H, 1H 			//04F8 	1CF9
		RRR 	78H, 1H 			//04F9 	1CF8
		LSLF 	7BH, 1H 		//04FA 	05FB
		RLR 	7CH, 1H 			//04FB 	1DFC
		RLR 	7DH, 1H 			//04FC 	1DFD
		DECRSZ 	27H, 1H 		//04FD 	1BA7
		LJUMP 	4F3H 			//04FE 	3CF3
		LDWI 	9H 			//04FF 	0009
		STR 	27H 			//0500 	10A7
		BTSS 	78H, 0H 		//0501 	2C78
		LJUMP 	505H 			//0502 	3D05
		LCALL 	603H 			//0503 	3603
		MOVLP 	2H 			//0504 	0182
		LSRF 	7AH, 1H 		//0505 	06FA
		RRR 	79H, 1H 			//0506 	1CF9
		RRR 	78H, 1H 			//0507 	1CF8
		LSRF 	26H, 1H 		//0508 	06A6
		RRR 	25H, 1H 			//0509 	1CA5
		RRR 	24H, 1H 			//050A 	1CA4
		DECRSZ 	27H, 1H 		//050B 	1BA7
		LJUMP 	501H 			//050C 	3D01
		LDR 	24H, 0H 			//050D 	1824
		STR 	70H 			//050E 	10F0
		LDR 	25H, 0H 			//050F 	1825
		STR 	71H 			//0510 	10F1
		LDR 	26H, 0H 			//0511 	1826
		STR 	72H 			//0512 	10F2
		LDR 	23H, 0H 			//0513 	1823
		STR 	73H 			//0514 	10F3
		LDR 	28H, 0H 			//0515 	1828
		STR 	74H 			//0516 	10F4
		LCALL 	527H 			//0517 	3527
		LDR 	70H, 0H 			//0518 	1870
		STR 	78H 			//0519 	10F8
		LDR 	71H, 0H 			//051A 	1871
		STR 	79H 			//051B 	10F9
		LDR 	72H, 0H 			//051C 	1872
		STR 	7AH 			//051D 	10FA
		RET 					//051E 	1008
		LDR 	72H, 0H 			//051F 	1872
		IORWR 	71H, 0H 		//0520 	1471
		IORWR 	70H, 0H 		//0521 	1470
		BTSC 	3H, 2H 			//0522 	2903
		RET 					//0523 	1008
		LDWI 	80H 			//0524 	0080
		XORWR 	72H, 1H 		//0525 	16F2
		RET 					//0526 	1008
		LDR 	73H, 0H 			//0527 	1873
		BTSC 	3H, 2H 			//0528 	2903
		LJUMP 	52FH 			//0529 	3D2F
		LDR 	72H, 0H 			//052A 	1872
		IORWR 	71H, 0H 		//052B 	1471
		IORWR 	70H, 0H 		//052C 	1470
		BTSS 	3H, 2H 			//052D 	2D03
		LJUMP 	537H 			//052E 	3D37
		CLRF 	70H 			//052F 	11F0
		CLRF 	71H 			//0530 	11F1
		CLRF 	72H 			//0531 	11F2
		RET 					//0532 	1008
		INCR 	73H, 1H 		//0533 	1AF3
		LSRF 	72H, 1H 		//0534 	06F2
		RRR 	71H, 1H 			//0535 	1CF1
		RRR 	70H, 1H 			//0536 	1CF0
		LDWI 	FEH 			//0537 	00FE
		ANDWR 	72H, 0H 		//0538 	1572
		BTSC 	3H, 2H 			//0539 	2903
		LJUMP 	545H 			//053A 	3D45
		LJUMP 	533H 			//053B 	3D33
		INCR 	73H, 1H 		//053C 	1AF3
		INCR 	70H, 1H 		//053D 	1AF0
		BTSC 	3H, 2H 			//053E 	2903
		INCR 	71H, 1H 		//053F 	1AF1
		BTSC 	3H, 2H 			//0540 	2903
		INCR 	72H, 1H 		//0541 	1AF2
		LSRF 	72H, 1H 		//0542 	06F2
		RRR 	71H, 1H 			//0543 	1CF1
		RRR 	70H, 1H 			//0544 	1CF0
		LDWI 	FFH 			//0545 	00FF
		ANDWR 	72H, 0H 		//0546 	1572
		BTSC 	3H, 2H 			//0547 	2903
		LJUMP 	552H 			//0548 	3D52
		LJUMP 	53CH 			//0549 	3D3C
		LDWI 	2H 			//054A 	0002
		SUBWR 	73H, 0H 		//054B 	1273
		BTSS 	3H, 0H 			//054C 	2C03
		LJUMP 	554H 			//054D 	3D54
		DECR 	73H, 1H 		//054E 	13F3
		LSLF 	70H, 1H 		//054F 	05F0
		RLR 	71H, 1H 			//0550 	1DF1
		RLR 	72H, 1H 			//0551 	1DF2
		BTSS 	71H, 7H 		//0552 	2FF1
		LJUMP 	54AH 			//0553 	3D4A
		BTSS 	73H, 0H 		//0554 	2C73
		BCR 	71H, 7H 			//0555 	23F1
		LSRF 	73H, 1H 		//0556 	06F3
		LDR 	73H, 0H 			//0557 	1873
		STR 	77H 			//0558 	10F7
		CLRF 	76H 			//0559 	11F6
		CLRF 	75H 			//055A 	11F5
		LDR 	75H, 0H 			//055B 	1875
		IORWR 	70H, 1H 		//055C 	14F0
		LDR 	76H, 0H 			//055D 	1876
		IORWR 	71H, 1H 		//055E 	14F1
		LDR 	77H, 0H 			//055F 	1877
		IORWR 	72H, 1H 		//0560 	14F2
		LDR 	74H, 0H 			//0561 	1874
		BTSS 	3H, 2H 			//0562 	2D03
		BSR 	72H, 7H 			//0563 	27F2
		RET 					//0564 	1008
		LDWI 	8EH 			//0565 	008E
		CLRF 	7DH 			//0566 	11FD
		STR 	7CH 			//0567 	10FC
		BTSS 	7BH, 7H 		//0568 	2FFB
		LJUMP 	577H 			//0569 	3D77
		COMR 	78H, 1H 		//056A 	19F8
		COMR 	79H, 1H 		//056B 	19F9
		COMR 	7AH, 1H 		//056C 	19FA
		COMR 	7BH, 1H 		//056D 	19FB
		INCR 	78H, 1H 		//056E 	1AF8
		BTSC 	3H, 2H 			//056F 	2903
		INCR 	79H, 1H 		//0570 	1AF9
		BTSC 	3H, 2H 			//0571 	2903
		INCR 	7AH, 1H 		//0572 	1AFA
		BTSC 	3H, 2H 			//0573 	2903
		INCR 	7BH, 1H 		//0574 	1AFB
		CLRF 	7DH 			//0575 	11FD
		INCR 	7DH, 1H 		//0576 	1AFD
		LDWI 	FFH 			//0577 	00FF
		ANDWR 	7BH, 0H 		//0578 	157B
		BTSC 	3H, 2H 			//0579 	2903
		LJUMP 	581H 			//057A 	3D81
		LSRF 	7BH, 1H 		//057B 	06FB
		RRR 	7AH, 1H 			//057C 	1CFA
		RRR 	79H, 1H 			//057D 	1CF9
		RRR 	78H, 1H 			//057E 	1CF8
		INCR 	7CH, 1H 		//057F 	1AFC
		LJUMP 	577H 			//0580 	3D77
		LDR 	78H, 0H 			//0581 	1878
		STR 	70H 			//0582 	10F0
		LDR 	79H, 0H 			//0583 	1879
		STR 	71H 			//0584 	10F1
		LDR 	7AH, 0H 			//0585 	187A
		STR 	72H 			//0586 	10F2
		LDR 	7CH, 0H 			//0587 	187C
		STR 	73H 			//0588 	10F3
		LDR 	7DH, 0H 			//0589 	187D
		STR 	74H 			//058A 	10F4
		LCALL 	527H 			//058B 	3527
		LDR 	70H, 0H 			//058C 	1870
		STR 	78H 			//058D 	10F8
		LDR 	71H, 0H 			//058E 	1871
		STR 	79H 			//058F 	10F9
		LDR 	72H, 0H 			//0590 	1872
		STR 	7AH 			//0591 	10FA
		RET 					//0592 	1008
		CLRF 	78H 			//0593 	11F8
		CLRF 	79H 			//0594 	11F9
		CLRF 	7AH 			//0595 	11FA
		CLRF 	7BH 			//0596 	11FB
		BTSS 	70H, 0H 		//0597 	2C70
		LJUMP 	5A1H 			//0598 	3DA1
		LDR 	74H, 0H 			//0599 	1874
		ADDWR 	78H, 1H 		//059A 	17F8
		LDR 	75H, 0H 			//059B 	1875
		ADDWFC 	79H, 1H 		//059C 	0DF9
		LDR 	76H, 0H 			//059D 	1876
		ADDWFC 	7AH, 1H 		//059E 	0DFA
		LDR 	77H, 0H 			//059F 	1877
		ADDWFC 	7BH, 1H 		//05A0 	0DFB
		LSLF 	74H, 1H 		//05A1 	05F4
		RLR 	75H, 1H 			//05A2 	1DF5
		RLR 	76H, 1H 			//05A3 	1DF6
		RLR 	77H, 1H 			//05A4 	1DF7
		LSRF 	73H, 1H 		//05A5 	06F3
		RRR 	72H, 1H 			//05A6 	1CF2
		RRR 	71H, 1H 			//05A7 	1CF1
		RRR 	70H, 1H 			//05A8 	1CF0
		LDR 	73H, 0H 			//05A9 	1873
		IORWR 	72H, 0H 		//05AA 	1472
		IORWR 	71H, 0H 		//05AB 	1471
		IORWR 	70H, 0H 		//05AC 	1470
		BTSS 	3H, 2H 			//05AD 	2D03
		LJUMP 	597H 			//05AE 	3D97
		LDR 	7BH, 0H 			//05AF 	187B
		STR 	73H 			//05B0 	10F3
		LDR 	7AH, 0H 			//05B1 	187A
		STR 	72H 			//05B2 	10F2
		LDR 	79H, 0H 			//05B3 	1879
		STR 	71H 			//05B4 	10F1
		LDR 	78H, 0H 			//05B5 	1878
		STR 	70H 			//05B6 	10F0
		RET 					//05B7 	1008
		STR 	71H 			//05B8 	10F1
		LDWI 	20H 			//05B9 	0020
		CLRF 	70H 			//05BA 	11F0
		INCR 	70H, 1H 		//05BB 	1AF0
		XORWR 	71H, 0H 		//05BC 	1671
		BTSC 	3H, 2H 			//05BD 	2903
		LJUMP 	5C8H 			//05BE 	3DC8
		LDWI 	EH 			//05BF 	000E
		SUBWR 	71H, 0H 		//05C0 	1271
		BTSC 	3H, 0H 			//05C1 	2803
		LJUMP 	5C7H 			//05C2 	3DC7
		LDWI 	9H 			//05C3 	0009
		SUBWR 	71H, 0H 		//05C4 	1271
		BTSC 	3H, 0H 			//05C5 	2803
		LJUMP 	5C8H 			//05C6 	3DC8
		CLRF 	70H 			//05C7 	11F0
		RRR 	70H, 0H 			//05C8 	1C70
		RET 					//05C9 	1008
		LDR 	40H, 0H 			//05CA 	1840
		STR 	6H 			//05CB 	1086
		LDWI 	3H 			//05CC 	0003
		STR 	7H 			//05CD 	1087
		LDR 	1H, 0H 			//05CE 	1801
		RET 					//05CF 	1008
		LDR 	70H, 0H 			//05D0 	1870
		STR 	29H 			//05D1 	10A9
		LDR 	71H, 0H 			//05D2 	1871
		STR 	2AH 			//05D3 	10AA
		LDR 	72H, 0H 			//05D4 	1872
		STR 	2BH 			//05D5 	10AB
		RET 					//05D6 	1008
		STR 	7AH 			//05D7 	10FA
		LDR 	3CH, 0H 			//05D8 	183C
		STR 	7BH 			//05D9 	10FB
		LDR 	3DH, 0H 			//05DA 	183D
		STR 	7CH 			//05DB 	10FC
		LDR 	3EH, 0H 			//05DC 	183E
		STR 	7DH 			//05DD 	10FD
		RET 					//05DE 	1008
		STR 	7AH 			//05DF 	10FA
		LDR 	3CH, 0H 			//05E0 	183C
		STR 	7BH 			//05E1 	10FB
		LDR 	3DH, 0H 			//05E2 	183D
		STR 	7CH 			//05E3 	10FC
		LDR 	3EH, 0H 			//05E4 	183E
		STR 	7DH 			//05E5 	10FD
		RET 					//05E6 	1008
		LDR 	40H, 0H 			//05E7 	1840
		STR 	6H 			//05E8 	1086
		LDWI 	3H 			//05E9 	0003
		STR 	7H 			//05EA 	1087
		LDWI 	AH 			//05EB 	000A
		STR 	70H 			//05EC 	10F0
		LDR 	39H, 0H 			//05ED 	1839
		RET 					//05EE 	1008
		LDWI 	80H 			//05EF 	0080
		CLRF 	29H 			//05F0 	11A9
		STR 	2AH 			//05F1 	10AA
		LDWI 	0H 			//05F2 	0000
		CLRF 	2BH 			//05F3 	11AB
		RET 					//05F4 	1008
		LDR 	78H, 0H 			//05F5 	1878
		STR 	3CH 			//05F6 	10BC
		LDR 	79H, 0H 			//05F7 	1879
		STR 	3DH 			//05F8 	10BD
		LDR 	7AH, 0H 			//05F9 	187A
		STR 	3EH 			//05FA 	10BE
		RET 					//05FB 	1008
		LDR 	78H, 0H 			//05FC 	1878
		STR 	3CH 			//05FD 	10BC
		LDR 	79H, 0H 			//05FE 	1879
		STR 	3DH 			//05FF 	10BD
		LDR 	7AH, 0H 			//0600 	187A
		STR 	3EH 			//0601 	10BE
		RET 					//0602 	1008
		LDR 	7BH, 0H 			//0603 	187B
		ADDWR 	24H, 1H 		//0604 	17A4
		LDR 	7CH, 0H 			//0605 	187C
		ADDWFC 	25H, 1H 		//0606 	0DA5
		LDR 	7DH, 0H 			//0607 	187D
		ADDWFC 	26H, 1H 		//0608 	0DA6
		RET 					//0609 	1008
		LDR 	29H, 0H 			//060A 	1829
		STR 	6H 			//060B 	1086
		CLRF 	7H 			//060C 	1187
		LDR 	40H, 0H 			//060D 	1840
		STR 	1H 			//060E 	1081
		RET 					//060F 	1008
		CLRF 	78H 			//0610 	11F8
		CLRF 	79H 			//0611 	11F9
		CLRF 	7AH 			//0612 	11FA
		RET 					//0613 	1008
		CLRF 	78H 			//0614 	11F8
		CLRF 	79H 			//0615 	11F9
		CLRF 	7AH 			//0616 	11FA
		RET 					//0617 	1008
		LDR 	55H, 0H 			//0618 	1855
		MOVLB 	6H 			//0619 	1026
		STR 	3BH 			//061A 	10BB
		MOVLB 	1H 			//061B 	1021
		LDR 	56H, 0H 			//061C 	1856
		MOVLB 	6H 			//061D 	1026
		STR 	3CH 			//061E 	10BC
		MOVLB 	1H 			//061F 	1021
		LDR 	57H, 0H 			//0620 	1857
		MOVLB 	6H 			//0621 	1026
		STR 	3DH 			//0622 	10BD
		MOVLB 	1H 			//0623 	1021
		LDWI 	40H 			//0624 	0040
		CLRF 	46H 			//0625 	11C6
		CLRF 	47H 			//0626 	11C7
		STR 	48H 			//0627 	10C8
		MOVLB 	0H 			//0628 	1020
		LDR 	5DH, 0H 			//0629 	185D
		MOVLB 	1H 			//062A 	1021
		STR 	40H 			//062B 	10C0
		MOVLB 	0H 			//062C 	1020
		LDR 	5EH, 0H 			//062D 	185E
		MOVLB 	1H 			//062E 	1021
		STR 	41H 			//062F 	10C1
		MOVLB 	0H 			//0630 	1020
		LDR 	5FH, 0H 			//0631 	185F
		MOVLB 	1H 			//0632 	1021
		STR 	42H 			//0633 	10C2
		MOVLB 	0H 			//0634 	1020
		LDR 	60H, 0H 			//0635 	1860
		MOVLB 	1H 			//0636 	1021
		STR 	43H 			//0637 	10C3
		MOVLB 	0H 			//0638 	1020
		LDR 	61H, 0H 			//0639 	1861
		MOVLB 	1H 			//063A 	1021
		STR 	44H 			//063B 	10C4
		MOVLB 	0H 			//063C 	1020
		LDR 	62H, 0H 			//063D 	1862
		MOVLB 	1H 			//063E 	1021
		STR 	45H 			//063F 	10C5
		RET 					//0640 	1008
		LDR 	63H, 0H 			//0641 	1863
		MOVLB 	6H 			//0642 	1026
		STR 	32H 			//0643 	10B2
		MOVLB 	5H 			//0644 	1025
		LDR 	64H, 0H 			//0645 	1864
		MOVLB 	6H 			//0646 	1026
		STR 	33H 			//0647 	10B3
		MOVLB 	5H 			//0648 	1025
		LDR 	65H, 0H 			//0649 	1865
		MOVLB 	6H 			//064A 	1026
		STR 	34H 			//064B 	10B4
		MOVLB 	5H 			//064C 	1025
		LDR 	63H, 0H 			//064D 	1863
		MOVLB 	1H 			//064E 	1021
		STR 	40H 			//064F 	10C0
		MOVLB 	5H 			//0650 	1025
		LDR 	64H, 0H 			//0651 	1864
		MOVLB 	1H 			//0652 	1021
		STR 	41H 			//0653 	10C1
		MOVLB 	5H 			//0654 	1025
		LDR 	65H, 0H 			//0655 	1865
		MOVLB 	1H 			//0656 	1021
		STR 	42H 			//0657 	10C2
		MOVLB 	5H 			//0658 	1025
		LDR 	5DH, 0H 			//0659 	185D
		MOVLB 	1H 			//065A 	1021
		STR 	43H 			//065B 	10C3
		MOVLB 	5H 			//065C 	1025
		LDR 	5EH, 0H 			//065D 	185E
		MOVLB 	1H 			//065E 	1021
		STR 	44H 			//065F 	10C4
		MOVLB 	5H 			//0660 	1025
		LDR 	5FH, 0H 			//0661 	185F
		MOVLB 	1H 			//0662 	1021
		STR 	45H 			//0663 	10C5
		RET 					//0664 	1008
		LDR 	46H, 0H 			//0665 	1846
		MOVLB 	6H 			//0666 	1026
		STR 	38H 			//0667 	10B8
		MOVLB 	1H 			//0668 	1021
		LDR 	47H, 0H 			//0669 	1847
		MOVLB 	6H 			//066A 	1026
		STR 	39H 			//066B 	10B9
		MOVLB 	1H 			//066C 	1021
		LDR 	48H, 0H 			//066D 	1848
		MOVLB 	6H 			//066E 	1026
		STR 	3AH 			//066F 	10BA
		LDR 	3BH, 0H 			//0670 	183B
		MOVLB 	1H 			//0671 	1021
		STR 	55H 			//0672 	10D5
		MOVLB 	6H 			//0673 	1026
		LDR 	3CH, 0H 			//0674 	183C
		MOVLB 	1H 			//0675 	1021
		STR 	56H 			//0676 	10D6
		MOVLB 	6H 			//0677 	1026
		LDR 	3DH, 0H 			//0678 	183D
		MOVLB 	1H 			//0679 	1021
		STR 	57H 			//067A 	10D7
		MOVLB 	6H 			//067B 	1026
		LDR 	38H, 0H 			//067C 	1838
		MOVLB 	1H 			//067D 	1021
		STR 	58H 			//067E 	10D8
		MOVLB 	6H 			//067F 	1026
		LDR 	39H, 0H 			//0680 	1839
		MOVLB 	1H 			//0681 	1021
		STR 	59H 			//0682 	10D9
		MOVLB 	6H 			//0683 	1026
		LDR 	3AH, 0H 			//0684 	183A
		MOVLB 	1H 			//0685 	1021
		STR 	5AH 			//0686 	10DA
		RET 					//0687 	1008
		LDR 	63H, 0H 			//0688 	1863
		MOVLB 	1H 			//0689 	1021
		STR 	40H 			//068A 	10C0
		MOVLB 	5H 			//068B 	1025
		LDR 	64H, 0H 			//068C 	1864
		MOVLB 	1H 			//068D 	1021
		STR 	41H 			//068E 	10C1
		MOVLB 	5H 			//068F 	1025
		LDR 	65H, 0H 			//0690 	1865
		MOVLB 	1H 			//0691 	1021
		STR 	42H 			//0692 	10C2
		RET 					//0693 	1008
		LDR 	57H, 0H 			//0694 	1857
		MOVLB 	7H 			//0695 	1027
		STR 	52H 			//0696 	10D2
		MOVLB 	1H 			//0697 	1021
		LDWI 	80H 			//0698 	0080
		CLRF 	34H 			//0699 	11B4
		STR 	35H 			//069A 	10B5
		LDWI 	BFH 			//069B 	00BF
		STR 	36H 			//069C 	10B6
		MOVLB 	0H 			//069D 	1020
		LDR 	54H, 0H 			//069E 	1854
		MOVLB 	1H 			//069F 	1021
		STR 	55H 			//06A0 	10D5
		MOVLB 	0H 			//06A1 	1020
		LDR 	55H, 0H 			//06A2 	1855
		MOVLB 	1H 			//06A3 	1021
		STR 	56H 			//06A4 	10D6
		MOVLB 	0H 			//06A5 	1020
		LDR 	56H, 0H 			//06A6 	1856
		MOVLB 	1H 			//06A7 	1021
		STR 	57H 			//06A8 	10D7
		MOVLB 	6H 			//06A9 	1026
		LDR 	35H, 0H 			//06AA 	1835
		MOVLB 	1H 			//06AB 	1021
		STR 	58H 			//06AC 	10D8
		MOVLB 	6H 			//06AD 	1026
		LDR 	36H, 0H 			//06AE 	1836
		MOVLB 	1H 			//06AF 	1021
		STR 	59H 			//06B0 	10D9
		MOVLB 	6H 			//06B1 	1026
		LDR 	37H, 0H 			//06B2 	1837
		MOVLB 	1H 			//06B3 	1021
		STR 	5AH 			//06B4 	10DA
		RET 					//06B5 	1008
		LDR 	55H, 0H 			//06B6 	1855
		MOVLB 	6H 			//06B7 	1026
		STR 	35H 			//06B8 	10B5
		MOVLB 	1H 			//06B9 	1021
		LDR 	56H, 0H 			//06BA 	1856
		MOVLB 	6H 			//06BB 	1026
		STR 	36H 			//06BC 	10B6
		MOVLB 	1H 			//06BD 	1021
		LDR 	57H, 0H 			//06BE 	1857
		MOVLB 	6H 			//06BF 	1026
		STR 	37H 			//06C0 	10B7
		LDWI 	24H 			//06C1 	0024
		MOVLB 	1H 			//06C2 	1021
		STR 	55H 			//06C3 	10D5
		LDWI 	74H 			//06C4 	0074
		STR 	56H 			//06C5 	10D6
		LDWI 	49H 			//06C6 	0049
		STR 	57H 			//06C7 	10D7
		MOVLB 	0H 			//06C8 	1020
		LDR 	51H, 0H 			//06C9 	1851
		MOVLB 	1H 			//06CA 	1021
		STR 	58H 			//06CB 	10D8
		MOVLB 	0H 			//06CC 	1020
		LDR 	52H, 0H 			//06CD 	1852
		MOVLB 	1H 			//06CE 	1021
		STR 	59H 			//06CF 	10D9
		MOVLB 	0H 			//06D0 	1020
		LDR 	53H, 0H 			//06D1 	1853
		MOVLB 	1H 			//06D2 	1021
		STR 	5AH 			//06D3 	10DA
		RET 					//06D4 	1008
		LDR 	55H, 0H 			//06D5 	1855
		MOVLB 	0H 			//06D6 	1020
		STR 	5AH 			//06D7 	10DA
		MOVLB 	1H 			//06D8 	1021
		LDR 	56H, 0H 			//06D9 	1856
		MOVLB 	0H 			//06DA 	1020
		STR 	5BH 			//06DB 	10DB
		MOVLB 	1H 			//06DC 	1021
		LDR 	57H, 0H 			//06DD 	1857
		MOVLB 	0H 			//06DE 	1020
		STR 	5CH 			//06DF 	10DC
		LDWI 	D7H 			//06E0 	00D7
		MOVLB 	1H 			//06E1 	1021
		STR 	55H 			//06E2 	10D5
		LDWI 	23H 			//06E3 	0023
		STR 	56H 			//06E4 	10D6
		LDWI 	3CH 			//06E5 	003C
		STR 	57H 			//06E6 	10D7
		MOVLB 	0H 			//06E7 	1020
		LDR 	5AH, 0H 			//06E8 	185A
		MOVLB 	1H 			//06E9 	1021
		STR 	58H 			//06EA 	10D8
		MOVLB 	0H 			//06EB 	1020
		LDR 	5BH, 0H 			//06EC 	185B
		MOVLB 	1H 			//06ED 	1021
		STR 	59H 			//06EE 	10D9
		MOVLB 	0H 			//06EF 	1020
		LDR 	5CH, 0H 			//06F0 	185C
		MOVLB 	1H 			//06F1 	1021
		STR 	5AH 			//06F2 	10DA
		RET 					//06F3 	1008
		LDR 	55H, 0H 			//06F4 	1855
		MOVLB 	0H 			//06F5 	1020
		STR 	60H 			//06F6 	10E0
		MOVLB 	1H 			//06F7 	1021
		LDR 	56H, 0H 			//06F8 	1856
		MOVLB 	0H 			//06F9 	1020
		STR 	61H 			//06FA 	10E1
		MOVLB 	1H 			//06FB 	1021
		LDR 	57H, 0H 			//06FC 	1857
		MOVLB 	0H 			//06FD 	1020
		STR 	62H 			//06FE 	10E2
		MOVLB 	1H 			//06FF 	1021
		LDWI 	80H 			//0700 	0080
		CLRF 	55H 			//0701 	11D5
		STR 	56H 			//0702 	10D6
		LDWI 	45H 			//0703 	0045
		STR 	57H 			//0704 	10D7
		LDWI 	40H 			//0705 	0040
		CLRF 	46H 			//0706 	11C6
		CLRF 	47H 			//0707 	11C7
		STR 	48H 			//0708 	10C8
		MOVLB 	5H 			//0709 	1025
		LDR 	6BH, 0H 			//070A 	186B
		MOVLB 	1H 			//070B 	1021
		STR 	29H 			//070C 	10A9
		MOVLB 	5H 			//070D 	1025
		LDR 	6AH, 0H 			//070E 	186A
		MOVLB 	1H 			//070F 	1021
		STR 	28H 			//0710 	10A8
		RET 					//0711 	1008
		LDR 	55H, 0H 			//0712 	1855
		MOVLB 	7H 			//0713 	1027
		STR 	50H 			//0714 	10D0
		MOVLB 	1H 			//0715 	1021
		LDR 	56H, 0H 			//0716 	1856
		MOVLB 	7H 			//0717 	1027
		STR 	51H 			//0718 	10D1
		MOVLB 	1H 			//0719 	1021
		RET 					//071A 	1008
		LDR 	55H, 0H 			//071B 	1855
		MOVLB 	0H 			//071C 	1020
		STR 	5DH 			//071D 	10DD
		MOVLB 	1H 			//071E 	1021
		LDR 	56H, 0H 			//071F 	1856
		MOVLB 	0H 			//0720 	1020
		STR 	5EH 			//0721 	10DE
		MOVLB 	1H 			//0722 	1021
		LDR 	57H, 0H 			//0723 	1857
		MOVLB 	0H 			//0724 	1020
		STR 	5FH 			//0725 	10DF
		MOVLB 	1H 			//0726 	1021
		LDWI 	80H 			//0727 	0080
		CLRF 	55H 			//0728 	11D5
		STR 	56H 			//0729 	10D6
		LDWI 	45H 			//072A 	0045
		STR 	57H 			//072B 	10D7
		LDWI 	40H 			//072C 	0040
		CLRF 	46H 			//072D 	11C6
		CLRF 	47H 			//072E 	11C7
		STR 	48H 			//072F 	10C8
		MOVLB 	5H 			//0730 	1025
		LDR 	69H, 0H 			//0731 	1869
		MOVLB 	1H 			//0732 	1021
		STR 	29H 			//0733 	10A9
		MOVLB 	5H 			//0734 	1025
		LDR 	68H, 0H 			//0735 	1868
		MOVLB 	1H 			//0736 	1021
		STR 	28H 			//0737 	10A8
		RET 					//0738 	1008
		MOVLB 	2H 			//0739 	1022
		STR 	4BH 			//073A 	10CB
		LDWI 	0H 			//073B 	0000
		BTSC 	4BH, 7H 		//073C 	2BCB
		LDWI 	FFH 			//073D 	00FF
		STR 	4CH 			//073E 	10CC
		STR 	4DH 			//073F 	10CD
		LDR 	4DH, 0H 			//0740 	184D
		MOVLB 	5H 			//0741 	1025
		RET 					//0742 	1008
		LDR 	46H, 0H 			//0743 	1846
		STR 	58H 			//0744 	10D8
		LDR 	47H, 0H 			//0745 	1847
		STR 	59H 			//0746 	10D9
		LDR 	48H, 0H 			//0747 	1848
		STR 	5AH 			//0748 	10DA
		RET 					//0749 	1008
		STR 	23H 			//074A 	10A3
		MOVLB 	5H 			//074B 	1025
		LDR 	63H, 0H 			//074C 	1863
		MOVLB 	2H 			//074D 	1022
		STR 	24H 			//074E 	10A4
		MOVLB 	5H 			//074F 	1025
		LDR 	64H, 0H 			//0750 	1864
		MOVLB 	2H 			//0751 	1022
		STR 	25H 			//0752 	10A5
		MOVLB 	5H 			//0753 	1025
		LDR 	65H, 0H 			//0754 	1865
		MOVLB 	2H 			//0755 	1022
		STR 	26H 			//0756 	10A6
		RET 					//0757 	1008
		STR 	4BH 			//0758 	10CB
		LDWI 	0H 			//0759 	0000
		BTSC 	4BH, 7H 		//075A 	2BCB
		LDWI 	FFH 			//075B 	00FF
		STR 	4CH 			//075C 	10CC
		STR 	4DH 			//075D 	10CD
		RET 					//075E 	1008
		LDR 	57H, 0H 			//075F 	1857
		MOVLB 	7H 			//0760 	1027
		STR 	52H 			//0761 	10D2
		MOVLB 	1H 			//0762 	1021
		LDWI 	1CH 			//0763 	001C
		CLRF 	55H 			//0764 	11D5
		STR 	56H 			//0765 	10D6
		LDWI 	42H 			//0766 	0042
		STR 	57H 			//0767 	10D7
		MOVLB 	7H 			//0768 	1027
		LDR 	50H, 0H 			//0769 	1850
		MOVLB 	1H 			//076A 	1021
		STR 	58H 			//076B 	10D8
		MOVLB 	7H 			//076C 	1027
		LDR 	51H, 0H 			//076D 	1851
		MOVLB 	1H 			//076E 	1021
		STR 	59H 			//076F 	10D9
		MOVLB 	7H 			//0770 	1027
		LDR 	52H, 0H 			//0771 	1852
		MOVLB 	1H 			//0772 	1021
		STR 	5AH 			//0773 	10DA
		RET 					//0774 	1008
		LDR 	21H, 0H 			//0775 	1821
		MOVLB 	2H 			//0776 	1022
		STR 	27H 			//0777 	10A7
		MOVLB 	1H 			//0778 	1021
		LDR 	20H, 0H 			//0779 	1820
		MOVLB 	2H 			//077A 	1022
		STR 	26H 			//077B 	10A6
		RET 					//077C 	1008
		MOVLB 	2H 			//077D 	1022
		ADDWFC 	21H, 0H 		//077E 	0D21
		STR 	4BH 			//077F 	10CB
		LSRF 	4BH, 1H 		//0780 	06CB
		RRR 	4AH, 1H 			//0781 	1CCA
		LDR 	4AH, 0H 			//0782 	184A
		MOVLB 	5H 			//0783 	1025
		RET 					//0784 	1008
		LDR 	2EH, 0H 			//0785 	182E
		STR 	55H 			//0786 	10D5
		LDR 	2FH, 0H 			//0787 	182F
		STR 	56H 			//0788 	10D6
		LDR 	30H, 0H 			//0789 	1830
		STR 	57H 			//078A 	10D7
		MOVLB 	6H 			//078B 	1026
		LDR 	2CH, 0H 			//078C 	182C
		MOVLB 	1H 			//078D 	1021
		STR 	58H 			//078E 	10D8
		MOVLB 	6H 			//078F 	1026
		LDR 	2DH, 0H 			//0790 	182D
		MOVLB 	1H 			//0791 	1021
		STR 	59H 			//0792 	10D9
		MOVLB 	6H 			//0793 	1026
		LDR 	2EH, 0H 			//0794 	182E
		MOVLB 	1H 			//0795 	1021
		STR 	5AH 			//0796 	10DA
		RET 					//0797 	1008
		LDWI 	A0H 			//0798 	00A0
		CLRF 	55H 			//0799 	11D5
		STR 	56H 			//079A 	10D6
		LDWI 	41H 			//079B 	0041
		STR 	57H 			//079C 	10D7
		MOVLB 	6H 			//079D 	1026
		LDR 	2FH, 0H 			//079E 	182F
		MOVLB 	1H 			//079F 	1021
		STR 	46H 			//07A0 	10C6
		MOVLB 	6H 			//07A1 	1026
		LDR 	30H, 0H 			//07A2 	1830
		MOVLB 	1H 			//07A3 	1021
		STR 	47H 			//07A4 	10C7
		MOVLB 	6H 			//07A5 	1026
		LDR 	31H, 0H 			//07A6 	1831
		MOVLB 	1H 			//07A7 	1021
		STR 	48H 			//07A8 	10C8
		RET 					//07A9 	1008
		STR 	21H 			//07AA 	10A1
		LDWI 	B6H 			//07AB 	00B6
		STR 	22H 			//07AC 	10A2
		RETW 	A0H 			//07AD 	04A0
		LDR 	73H, 0H 			//07AE 	1873
		IORWR 	72H, 0H 		//07AF 	1472
		IORWR 	71H, 0H 		//07B0 	1471
		IORWR 	70H, 0H 		//07B1 	1470
		BTSC 	3H, 2H 			//07B2 	2903
		LJUMP 	7DBH 			//07B3 	3FDB
		CLRF 	78H 			//07B4 	11F8
		INCR 	78H, 1H 		//07B5 	1AF8
		BTSC 	73H, 7H 		//07B6 	2BF3
		LJUMP 	7BDH 			//07B7 	3FBD
		LSLF 	70H, 1H 		//07B8 	05F0
		RLR 	71H, 1H 			//07B9 	1DF1
		RLR 	72H, 1H 			//07BA 	1DF2
		RLR 	73H, 1H 			//07BB 	1DF3
		LJUMP 	7B5H 			//07BC 	3FB5
		LDR 	73H, 0H 			//07BD 	1873
		SUBWR 	77H, 0H 		//07BE 	1277
		BTSS 	3H, 2H 			//07BF 	2D03
		LJUMP 	7CBH 			//07C0 	3FCB
		LDR 	72H, 0H 			//07C1 	1872
		SUBWR 	76H, 0H 		//07C2 	1276
		BTSS 	3H, 2H 			//07C3 	2D03
		LJUMP 	7CBH 			//07C4 	3FCB
		LDR 	71H, 0H 			//07C5 	1871
		SUBWR 	75H, 0H 		//07C6 	1275
		BTSS 	3H, 2H 			//07C7 	2D03
		LJUMP 	7CBH 			//07C8 	3FCB
		LDR 	70H, 0H 			//07C9 	1870
		SUBWR 	74H, 0H 		//07CA 	1274
		BTSS 	3H, 0H 			//07CB 	2C03
		LJUMP 	7D5H 			//07CC 	3FD5
		LDR 	70H, 0H 			//07CD 	1870
		SUBWR 	74H, 1H 		//07CE 	12F4
		LDR 	71H, 0H 			//07CF 	1871
		SUBWFB 	75H, 1H 		//07D0 	0BF5
		LDR 	72H, 0H 			//07D1 	1872
		SUBWFB 	76H, 1H 		//07D2 	0BF6
		LDR 	73H, 0H 			//07D3 	1873
		SUBWFB 	77H, 1H 		//07D4 	0BF7
		LSRF 	73H, 1H 		//07D5 	06F3
		RRR 	72H, 1H 			//07D6 	1CF2
		RRR 	71H, 1H 			//07D7 	1CF1
		RRR 	70H, 1H 			//07D8 	1CF0
		DECRSZ 	78H, 1H 		//07D9 	1BF8
		LJUMP 	7BDH 			//07DA 	3FBD
		LDR 	77H, 0H 			//07DB 	1877
		STR 	73H 			//07DC 	10F3
		LDR 	76H, 0H 			//07DD 	1876
		STR 	72H 			//07DE 	10F2
		LDR 	75H, 0H 			//07DF 	1875
		STR 	71H 			//07E0 	10F1
		LDR 	74H, 0H 			//07E1 	1874
		STR 	70H 			//07E2 	10F0
		RET 					//07E3 	1008
		LDR 	21H, 0H 			//07E4 	1821
		STR 	24H 			//07E5 	10A4
		LDR 	20H, 0H 			//07E6 	1820
		STR 	23H 			//07E7 	10A3
		LDR 	23H, 0H 			//07E8 	1823
		STR 	4H 			//07E9 	1084
		LDR 	24H, 0H 			//07EA 	1824
		STR 	5H 			//07EB 	1085
		MOVIW 	FSR0++ 		//07EC 	1012
		BTSC 	3H, 2H 			//07ED 	2903
		LJUMP 	7F3H 			//07EE 	3FF3
		INCR 	23H, 1H 		//07EF 	1AA3
		BTSC 	3H, 2H 			//07F0 	2903
		INCR 	24H, 1H 		//07F1 	1AA4
		LJUMP 	7E8H 			//07F2 	3FE8
		LDR 	20H, 0H 			//07F3 	1820
		SUBWR 	23H, 0H 		//07F4 	1223
		STR 	20H 			//07F5 	10A0
		LDR 	21H, 0H 			//07F6 	1821
		SUBWFB 	24H, 0H 		//07F7 	0B24
		STR 	21H 			//07F8 	10A1
		RET 					//07F9 	1008
		CLRWDT 			//07FA 	1064
		CLRF 	0H 			//07FB 	1180
		ORG		07FCH
		ADDFSR 	0H, 1H 		//07FC 	0101
		DECRSZ 	9H, 1H 		//07FD 	1B89
		LJUMP 	7FBH 			//07FE 	3FFB
		RETW 	0H 			//07FF 	0400
		ORG		0801H

		//;NFB.C: 508: PA0=0;
		MOVLB 	0H 			//0801 	1020
		BCR 	CH, 0H 			//0802 	200C

		//;NFB.C: 509: PB0=0;
		BCR 	DH, 0H 			//0803 	200D

		//;NFB.C: 510: PA1=1;
		BSR 	CH, 1H 			//0804 	248C

		//;NFB.C: 511: PB2=1;
		BSR 	DH, 2H 			//0805 	250D

		//;NFB.C: 512: PB3=1;
		BSR 	DH, 3H 			//0806 	258D

		//;NFB.C: 513: PC1=1;
		BSR 	EH, 1H 			//0807 	248E

		//;NFB.C: 514: PB7=1;
		BSR 	DH, 7H 			//0808 	278D
		RET 					//0809 	1008

		//;NFB.C: 181: OSCCON=0B01110001;
		LDWI 	71H 			//080A 	0071
		MOVLB 	1H 			//080B 	1021
		STR 	19H 			//080C 	1099

		//;NFB.C: 183: INTCON=0;
		CLRF 	BH 			//080D 	118B

		//;NFB.C: 185: PORTA=0B00000000;
		MOVLB 	0H 			//080E 	1020
		CLRF 	CH 			//080F 	118C

		//;NFB.C: 186: PORTB=0B00000000;
		CLRF 	DH 			//0810 	118D

		//;NFB.C: 187: PORTC=0B00000000;
		CLRF 	EH 			//0811 	118E

		//;NFB.C: 189: WPUA=0B00000000;
		MOVLB 	3H 			//0812 	1023
		CLRF 	CH 			//0813 	118C

		//;NFB.C: 190: WPUB=0B00010000;
		LDWI 	10H 			//0814 	0010
		STR 	DH 			//0815 	108D

		//;NFB.C: 191: WPUC=0B00000000;
		CLRF 	EH 			//0816 	118E

		//;NFB.C: 193: WPDA=0B01000000;
		LDWI 	40H 			//0817 	0040
		MOVLB 	4H 			//0818 	1024
		STR 	CH 			//0819 	108C

		//;NFB.C: 194: WPDB=0B00000000;
		CLRF 	DH 			//081A 	118D

		//;NFB.C: 195: WPDC=0B00000000;
		CLRF 	EH 			//081B 	118E

		//;NFB.C: 197: TRISA=0B11111100;
		LDWI 	FCH 			//081C 	00FC
		MOVLB 	1H 			//081D 	1021
		STR 	CH 			//081E 	108C

		//;NFB.C: 198: TRISB=0B00110010;
		LDWI 	32H 			//081F 	0032
		STR 	DH 			//0820 	108D

		//;NFB.C: 199: TRISC=0B00000001;
		LDWI 	1H 			//0821 	0001
		STR 	EH 			//0822 	108E

		//;NFB.C: 201: PSRC0=0B11111111;
		LDWI 	FFH 			//0823 	00FF
		MOVLB 	2H 			//0824 	1022
		STR 	1AH 			//0825 	109A

		//;NFB.C: 202: PSRC1=0B11111111;
		STR 	1BH 			//0826 	109B

		//;NFB.C: 203: PSRC2=0B00001111;
		LDWI 	FH 			//0827 	000F
		STR 	1CH 			//0828 	109C

		//;NFB.C: 205: PSINK0=0B11111111;
		LDWI 	FFH 			//0829 	00FF
		MOVLB 	3H 			//082A 	1023
		STR 	1AH 			//082B 	109A

		//;NFB.C: 206: PSINK1=0B11111111;
		STR 	1BH 			//082C 	109B

		//;NFB.C: 207: PSINK2=0B00000011;
		LDWI 	3H 			//082D 	0003
		STR 	1CH 			//082E 	109C

		//;NFB.C: 209: ANSELA=0B00000000;
		CLRF 	17H 			//082F 	1197
		RET 					//0830 	1008
		LDWI 	24H 			//0831 	0024
		STR 	35H 			//0832 	10B5
		LCALL 	662H 			//0833 	3662
		MOVLP 	8H 			//0834 	0188
		LDR 	49H, 0H 			//0835 	1849
		BTSC 	3H, 2H 			//0836 	2903
		LJUMP 	4DDH 			//0837 	3CDD
		LDWI 	25H 			//0838 	0025
		XORWR 	49H, 0H 		//0839 	1649
		BTSC 	3H, 2H 			//083A 	2903
		LJUMP 	43H 			//083B 	3843
		LCALL 	6FEH 			//083C 	36FE
		MOVLP 	8H 			//083D 	0188
		STR 	1H 			//083E 	1081
		INCR 	20H, 1H 		//083F 	1AA0
		BTSC 	3H, 2H 			//0840 	2903
		INCR 	21H, 1H 		//0841 	1AA1
		LJUMP 	33H 			//0842 	3833
		CLRF 	42H 			//0843 	11C2
		CLRF 	43H 			//0844 	11C3
		CLRF 	3EH 			//0845 	11BE
		CLRF 	3FH 			//0846 	11BF
		LJUMP 	4CH 			//0847 	384C
		BSR 	3EH, 2H 			//0848 	253E
		INCR 	22H, 1H 		//0849 	1AA2
		BTSC 	3H, 2H 			//084A 	2903
		INCR 	23H, 1H 		//084B 	1AA3
		LCALL 	6A4H 			//084C 	36A4
		MOVLP 	8H 			//084D 	0188
		XORWI 	30H 			//084E 	0A30
		BTSC 	3H, 2H 			//084F 	2903
		LJUMP 	48H 			//0850 	3848
		LJUMP 	52H 			//0851 	3852
		LCALL 	6A4H 			//0852 	36A4
		MOVLP 	8H 			//0853 	0188
		LCALL 	5D9H 			//0854 	35D9
		MOVLP 	8H 			//0855 	0188
		BTSS 	3H, 0H 			//0856 	2C03
		LJUMP 	8AH 			//0857 	388A
		MOVLB 	2H 			//0858 	1022
		CLRF 	42H 			//0859 	11C2
		CLRF 	43H 			//085A 	11C3
		LDWI 	AH 			//085B 	000A
		MOVLB 	1H 			//085C 	1021
		STR 	2EH 			//085D 	10AE
		CLRF 	2FH 			//085E 	11AF
		MOVLB 	2H 			//085F 	1022
		LDR 	43H, 0H 			//0860 	1843
		MOVLB 	1H 			//0861 	1021
		STR 	31H 			//0862 	10B1
		MOVLB 	2H 			//0863 	1022
		LDR 	42H, 0H 			//0864 	1842
		MOVLB 	1H 			//0865 	1021
		STR 	30H 			//0866 	10B0
		MOVLP 	1CH 			//0867 	019C
		LCALL 	4F4H 			//0868 	34F4
		MOVLP 	8H 			//0869 	0188
		LDR 	2FH, 0H 			//086A 	182F
		MOVLB 	2H 			//086B 	1022
		STR 	43H 			//086C 	10C3
		MOVLB 	1H 			//086D 	1021
		LDR 	2EH, 0H 			//086E 	182E
		MOVLB 	2H 			//086F 	1022
		STR 	42H 			//0870 	10C2
		LCALL 	6A4H 			//0871 	36A4
		MOVLP 	8H 			//0872 	0188
		ADDWI 	D0H 			//0873 	0ED0
		MOVLB 	1H 			//0874 	1021
		STR 	6AH 			//0875 	10EA
		LDWI 	FFH 			//0876 	00FF
		BTSC 	3H, 0H 			//0877 	2803
		LDWI 	0H 			//0878 	0000
		STR 	6BH 			//0879 	10EB
		LDR 	6AH, 0H 			//087A 	186A
		MOVLB 	2H 			//087B 	1022
		ADDWR 	42H, 1H 		//087C 	17C2
		MOVLB 	1H 			//087D 	1021
		LDR 	6BH, 0H 			//087E 	186B
		MOVLB 	2H 			//087F 	1022
		ADDWFC 	43H, 1H 		//0880 	0DC3
		INCR 	22H, 1H 		//0881 	1AA2
		BTSC 	3H, 2H 			//0882 	2903
		INCR 	23H, 1H 		//0883 	1AA3
		LCALL 	6A4H 			//0884 	36A4
		MOVLP 	8H 			//0885 	0188
		LCALL 	5D9H 			//0886 	35D9
		MOVLP 	8H 			//0887 	0188
		BTSC 	3H, 0H 			//0888 	2803
		LJUMP 	5BH 			//0889 	385B
		MOVLB 	2H 			//088A 	1022
		LDR 	22H, 0H 			//088B 	1822
		STR 	4H 			//088C 	1084
		LDR 	23H, 0H 			//088D 	1823
		STR 	5H 			//088E 	1085
		MOVIW 	FSR0++ 		//088F 	1012
		XORWI 	2EH 			//0890 	0A2E
		BTSS 	3H, 2H 			//0891 	2D03
		LJUMP 	C5H 			//0892 	38C5
		BSR 	3FH, 6H 			//0893 	273F
		INCR 	22H, 1H 		//0894 	1AA2
		BTSC 	3H, 2H 			//0895 	2903
		INCR 	23H, 1H 		//0896 	1AA3
		CLRF 	47H 			//0897 	11C7
		CLRF 	48H 			//0898 	11C8
		LCALL 	6A4H 			//0899 	36A4
		MOVLP 	8H 			//089A 	0188
		LCALL 	5D9H 			//089B 	35D9
		MOVLP 	8H 			//089C 	0188
		BTSS 	3H, 0H 			//089D 	2C03
		LJUMP 	CBH 			//089E 	38CB
		MOVLB 	2H 			//089F 	1022
		LCALL 	6A4H 			//08A0 	36A4
		MOVLB 	1H 			//08A1 	1021
		STR 	6AH 			//08A2 	10EA
		CLRF 	6BH 			//08A3 	11EB
		MOVLB 	2H 			//08A4 	1022
		LDR 	48H, 0H 			//08A5 	1848
		MOVLB 	1H 			//08A6 	1021
		STR 	2FH 			//08A7 	10AF
		MOVLB 	2H 			//08A8 	1022
		LDR 	47H, 0H 			//08A9 	1847
		MOVLB 	1H 			//08AA 	1021
		STR 	2EH 			//08AB 	10AE
		LDWI 	AH 			//08AC 	000A
		STR 	30H 			//08AD 	10B0
		CLRF 	31H 			//08AE 	11B1
		MOVLP 	1CH 			//08AF 	019C
		LCALL 	4F4H 			//08B0 	34F4
		MOVLP 	8H 			//08B1 	0188
		LDR 	6AH, 0H 			//08B2 	186A
		ADDWR 	2EH, 0H 		//08B3 	172E
		STR 	6CH 			//08B4 	10EC
		LDR 	6BH, 0H 			//08B5 	186B
		ADDWFC 	2FH, 0H 		//08B6 	0D2F
		STR 	6DH 			//08B7 	10ED
		LDR 	6CH, 0H 			//08B8 	186C
		ADDWI 	D0H 			//08B9 	0ED0
		MOVLB 	2H 			//08BA 	1022
		STR 	47H 			//08BB 	10C7
		LDWI 	FFH 			//08BC 	00FF
		MOVLB 	1H 			//08BD 	1021
		ADDWFC 	6DH, 0H 		//08BE 	0D6D
		MOVLB 	2H 			//08BF 	1022
		STR 	48H 			//08C0 	10C8
		INCR 	22H, 1H 		//08C1 	1AA2
		BTSC 	3H, 2H 			//08C2 	2903
		INCR 	23H, 1H 		//08C3 	1AA3
		LJUMP 	99H 			//08C4 	3899
		CLRF 	47H 			//08C5 	11C7
		CLRF 	48H 			//08C6 	11C8
		BSR 	3FH, 4H 			//08C7 	263F
		LJUMP 	CBH 			//08C8 	38CB
		BSR 	3FH, 2H 			//08C9 	253F
		LJUMP 	DBH 			//08CA 	38DB
		MOVLB 	2H 			//08CB 	1022
		LCALL 	662H 			//08CC 	3662
		MOVLP 	8H 			//08CD 	0188
		XORWI 	0H 			//08CE 	0A00
		BTSC 	3H, 2H 			//08CF 	2903
		LJUMP 	4DDH 			//08D0 	3CDD
		XORWI 	64H 			//08D1 	0A64
		BTSC 	3H, 2H 			//08D2 	2903
		LJUMP 	DBH 			//08D3 	38DB
		XORWI 	2H 			//08D4 	0A02
		BTSC 	3H, 2H 			//08D5 	2903
		LJUMP 	C9H 			//08D6 	38C9
		XORWI 	FH 			//08D7 	0A0F
		BTSC 	3H, 2H 			//08D8 	2903
		LJUMP 	DBH 			//08D9 	38DB
		LJUMP 	33H 			//08DA 	3833
		MOVLB 	1H 			//08DB 	1021
		LDWI 	7H 			//08DC 	0007
		CLRF 	6AH 			//08DD 	11EA
		MOVLB 	2H 			//08DE 	1022
		ANDWR 	3FH, 0H 		//08DF 	153F
		MOVLB 	1H 			//08E0 	1021
		STR 	6BH 			//08E1 	10EB
		LDR 	6AH, 0H 			//08E2 	186A
		IORWR 	6BH, 0H 		//08E3 	146B
		BTSC 	3H, 2H 			//08E4 	2903
		LJUMP 	3C9H 			//08E5 	3BC9
		MOVLB 	2H 			//08E6 	1022
		BTSS 	3FH, 4H 		//08E7 	2E3F
		LJUMP 	ECH 			//08E8 	38EC
		LDWI 	6H 			//08E9 	0006
		STR 	47H 			//08EA 	10C7
		CLRF 	48H 			//08EB 	11C8
		LDR 	35H, 0H 			//08EC 	1835
		STR 	6H 			//08ED 	1086
		LDWI 	1H 			//08EE 	0001
		STR 	7H 			//08EF 	1087
		MOVIW 	0H[1] 			//08F0 	0F40
		STR 	44H 			//08F1 	10C4
		MOVIW 	1H[1] 			//08F2 	0F41
		STR 	45H 			//08F3 	10C5
		MOVIW 	2H[1] 			//08F4 	0F42
		STR 	46H 			//08F5 	10C6
		LDWI 	3H 			//08F6 	0003
		ADDWR 	35H, 1H 		//08F7 	17B5
		LDR 	44H, 0H 			//08F8 	1844
		MOVLB 	1H 			//08F9 	1021
		STR 	32H 			//08FA 	10B2
		MOVLB 	2H 			//08FB 	1022
		LDR 	45H, 0H 			//08FC 	1845
		MOVLB 	1H 			//08FD 	1021
		STR 	33H 			//08FE 	10B3
		MOVLB 	2H 			//08FF 	1022
		LDR 	46H, 0H 			//0900 	1846
		MOVLP 	18H 			//0901 	0198
		LCALL 	E5H 			//0902 	30E5
		MOVLP 	8H 			//0903 	0188
		LCALL 	4E3H 			//0904 	34E3
		MOVLP 	8H 			//0905 	0188
		BTSC 	3H, 0H 			//0906 	2803
		LJUMP 	123H 			//0907 	3923
		MOVLB 	2H 			//0908 	1022
		LDR 	44H, 0H 			//0909 	1844
		MOVLB 	1H 			//090A 	1021
		STR 	20H 			//090B 	10A0
		MOVLB 	2H 			//090C 	1022
		LDR 	45H, 0H 			//090D 	1845
		MOVLB 	1H 			//090E 	1021
		STR 	21H 			//090F 	10A1
		MOVLB 	2H 			//0910 	1022
		LDR 	46H, 0H 			//0911 	1846
		MOVLB 	1H 			//0912 	1021
		STR 	22H 			//0913 	10A2
		LCALL 	5E8H 			//0914 	35E8
		MOVLP 	8H 			//0915 	0188
		LDR 	20H, 0H 			//0916 	1820
		MOVLB 	2H 			//0917 	1022
		STR 	44H 			//0918 	10C4
		MOVLB 	1H 			//0919 	1021
		LDR 	21H, 0H 			//091A 	1821
		MOVLB 	2H 			//091B 	1022
		STR 	45H 			//091C 	10C5
		MOVLB 	1H 			//091D 	1021
		LDR 	22H, 0H 			//091E 	1822
		MOVLB 	2H 			//091F 	1022
		STR 	46H 			//0920 	10C6
		LDWI 	3H 			//0921 	0003
		IORWR 	3EH, 1H 		//0922 	14BE
		MOVLB 	2H 			//0923 	1022
		CLRF 	40H 			//0924 	11C0
		CLRF 	41H 			//0925 	11C1
		LDR 	46H, 0H 			//0926 	1846
		IORWR 	45H, 0H 		//0927 	1445
		IORWR 	44H, 0H 		//0928 	1444
		BTSC 	3H, 2H 			//0929 	2903
		LJUMP 	1BEH 			//092A 	39BE
		LDWI 	44H 			//092B 	0044
		LCALL 	6EEH 			//092C 	36EE
		MOVLP 	8H 			//092D 	0188
		MOVIW 	2H[1] 			//092E 	0F42
		STR 	6CH 			//092F 	10EC
		MOVIW 	3H[1] 			//0930 	0F43
		STR 	6DH 			//0931 	10ED
		LDWI 	FH 			//0932 	000F
		LSRF 	6DH, 1H 		//0933 	06ED
		RRR 	6CH, 1H 			//0934 	1CEC
		RRR 	6BH, 1H 			//0935 	1CEB
		RRR 	6AH, 1H 			//0936 	1CEA
		DECRSZ 	9H, 1H 		//0937 	1B89
		LJUMP 	133H 			//0938 	3933
		LDR 	6BH, 0H 			//0939 	186B
		MOVLB 	2H 			//093A 	1022
		STR 	41H 			//093B 	10C1
		MOVLB 	1H 			//093C 	1021
		LDR 	6AH, 0H 			//093D 	186A
		MOVLB 	2H 			//093E 	1022
		STR 	40H 			//093F 	10C0
		LDWI 	82H 			//0940 	0082
		CLRF 	41H 			//0941 	11C1
		ADDWR 	40H, 1H 		//0942 	17C0
		BTSS 	3H, 0H 			//0943 	2C03
		DECR 	41H, 1H 		//0944 	13C1
		LDWI 	FFH 			//0945 	00FF
		ADDWR 	40H, 1H 		//0946 	17C0
		BTSS 	3H, 0H 			//0947 	2C03
		DECR 	41H, 1H 		//0948 	13C1
		LDWI 	3H 			//0949 	0003
		MOVLB 	1H 			//094A 	1021
		STR 	2EH 			//094B 	10AE
		CLRF 	2FH 			//094C 	11AF
		MOVLB 	2H 			//094D 	1022
		LDR 	41H, 0H 			//094E 	1841
		MOVLB 	1H 			//094F 	1021
		STR 	31H 			//0950 	10B1
		MOVLB 	2H 			//0951 	1022
		LDR 	40H, 0H 			//0952 	1840
		MOVLB 	1H 			//0953 	1021
		STR 	30H 			//0954 	10B0
		MOVLP 	1CH 			//0955 	019C
		LCALL 	4F4H 			//0956 	34F4
		MOVLP 	8H 			//0957 	0188
		LDR 	2FH, 0H 			//0958 	182F
		MOVLB 	2H 			//0959 	1022
		STR 	41H 			//095A 	10C1
		MOVLB 	1H 			//095B 	1021
		LDR 	2EH, 0H 			//095C 	182E
		MOVLB 	2H 			//095D 	1022
		STR 	40H 			//095E 	10C0
		LDWI 	AH 			//095F 	000A
		MOVLB 	1H 			//0960 	1021
		STR 	26H 			//0961 	10A6
		CLRF 	27H 			//0962 	11A7
		MOVLB 	2H 			//0963 	1022
		LDR 	41H, 0H 			//0964 	1841
		MOVLB 	1H 			//0965 	1021
		STR 	29H 			//0966 	10A9
		MOVLB 	2H 			//0967 	1022
		LDR 	40H, 0H 			//0968 	1840
		MOVLB 	1H 			//0969 	1021
		STR 	28H 			//096A 	10A8
		MOVLP 	1DH 			//096B 	019D
		LCALL 	509H 			//096C 	3509
		MOVLP 	8H 			//096D 	0188
		LDR 	27H, 0H 			//096E 	1827
		MOVLB 	2H 			//096F 	1022
		STR 	41H 			//0970 	10C1
		MOVLB 	1H 			//0971 	1021
		LDR 	26H, 0H 			//0972 	1826
		MOVLB 	2H 			//0973 	1022
		STR 	40H 			//0974 	10C0
		BTSS 	41H, 7H 		//0975 	2FC1
		LJUMP 	17BH 			//0976 	397B
		LDWI 	FFH 			//0977 	00FF
		ADDWR 	40H, 1H 		//0978 	17C0
		BTSS 	3H, 0H 			//0979 	2C03
		DECR 	41H, 1H 		//097A 	13C1
		DECR 	40H, 0H 		//097B 	1340
		XORWI 	FFH 			//097C 	0AFF
		MOVLP 	1CH 			//097D 	019C
		LCALL 	425H 			//097E 	3425
		MOVLP 	8H 			//097F 	0188
		LCALL 	682H 			//0980 	3682
		MOVLP 	8H 			//0981 	0188
		LCALL 	6DFH 			//0982 	36DF
		MOVLB 	2H 			//0983 	1022
		LDR 	36H, 0H 			//0984 	1836
		MOVLB 	1H 			//0985 	1021
		STR 	49H 			//0986 	10C9
		MOVLB 	2H 			//0987 	1022
		LDR 	37H, 0H 			//0988 	1837
		MOVLB 	1H 			//0989 	1021
		STR 	4AH 			//098A 	10CA
		MOVLB 	2H 			//098B 	1022
		LDR 	38H, 0H 			//098C 	1838
		MOVLB 	1H 			//098D 	1021
		STR 	4BH 			//098E 	10CB
		MOVLP 	1DH 			//098F 	019D
		LCALL 	582H 			//0990 	3582
		MOVLP 	8H 			//0991 	0188
		LDR 	46H, 0H 			//0992 	1846
		MOVLB 	2H 			//0993 	1022
		STR 	36H 			//0994 	10B6
		MOVLB 	1H 			//0995 	1021
		LDR 	47H, 0H 			//0996 	1847
		MOVLB 	2H 			//0997 	1022
		STR 	37H 			//0998 	10B7
		MOVLB 	1H 			//0999 	1021
		LDR 	48H, 0H 			//099A 	1848
		MOVLB 	2H 			//099B 	1022
		STR 	38H 			//099C 	10B8
		LCALL 	676H 			//099D 	3676
		MOVLP 	8H 			//099E 	0188
		LDWI 	80H 			//099F 	0080
		CLRF 	35H 			//09A0 	11B5
		STR 	36H 			//09A1 	10B6
		LDWI 	3FH 			//09A2 	003F
		STR 	37H 			//09A3 	10B7
		LCALL 	4E3H 			//09A4 	34E3
		MOVLP 	8H 			//09A5 	0188
		BTSC 	3H, 0H 			//09A6 	2803
		LJUMP 	1AEH 			//09A7 	39AE
		LDWI 	FFH 			//09A8 	00FF
		MOVLB 	2H 			//09A9 	1022
		ADDWR 	40H, 1H 		//09AA 	17C0
		BTSS 	3H, 0H 			//09AB 	2C03
		DECR 	41H, 1H 		//09AC 	13C1
		LJUMP 	1BEH 			//09AD 	39BE
		MOVLB 	2H 			//09AE 	1022
		LCALL 	676H 			//09AF 	3676
		MOVLP 	8H 			//09B0 	0188
		LDWI 	20H 			//09B1 	0020
		CLRF 	35H 			//09B2 	11B5
		STR 	36H 			//09B3 	10B6
		LDWI 	41H 			//09B4 	0041
		STR 	37H 			//09B5 	10B7
		LCALL 	4E3H 			//09B6 	34E3
		MOVLP 	8H 			//09B7 	0188
		BTSS 	3H, 0H 			//09B8 	2C03
		LJUMP 	1BEH 			//09B9 	39BE
		MOVLB 	2H 			//09BA 	1022
		INCR 	40H, 1H 		//09BB 	1AC0
		BTSC 	3H, 2H 			//09BC 	2903
		INCR 	41H, 1H 		//09BD 	1AC1
		MOVLB 	2H 			//09BE 	1022
		LDR 	48H, 0H 			//09BF 	1848
		LCALL 	69EH 			//09C0 	369E
		MOVLP 	8H 			//09C1 	0188
		BTSS 	3H, 2H 			//09C2 	2D03
		LJUMP 	1C7H 			//09C3 	39C7
		LDWI 	DH 			//09C4 	000D
		MOVLB 	2H 			//09C5 	1022
		SUBWR 	47H, 0H 		//09C6 	1247
		BTSC 	3H, 0H 			//09C7 	2803
		LJUMP 	1EDH 			//09C8 	39ED
		MOVLB 	2H 			//09C9 	1022
		LDR 	47H, 0H 			//09CA 	1847
		MOVLP 	1BH 			//09CB 	019B
		LCALL 	39DH 			//09CC 	339D
		MOVLP 	8H 			//09CD 	0188
		LDR 	55H, 0H 			//09CE 	1855
		STR 	34H 			//09CF 	10B4
		LDR 	56H, 0H 			//09D0 	1856
		STR 	35H 			//09D1 	10B5
		LDR 	57H, 0H 			//09D2 	1857
		STR 	36H 			//09D3 	10B6
		MOVLB 	2H 			//09D4 	1022
		LDR 	44H, 0H 			//09D5 	1844
		MOVLB 	1H 			//09D6 	1021
		STR 	37H 			//09D7 	10B7
		MOVLB 	2H 			//09D8 	1022
		LDR 	45H, 0H 			//09D9 	1845
		MOVLB 	1H 			//09DA 	1021
		STR 	38H 			//09DB 	10B8
		MOVLB 	2H 			//09DC 	1022
		LDR 	46H, 0H 			//09DD 	1846
		MOVLB 	1H 			//09DE 	1021
		STR 	39H 			//09DF 	10B9
		LCALL 	72EH 			//09E0 	372E
		MOVLP 	8H 			//09E1 	0188
		LDR 	34H, 0H 			//09E2 	1834
		MOVLB 	2H 			//09E3 	1022
		STR 	44H 			//09E4 	10C4
		MOVLB 	1H 			//09E5 	1021
		LDR 	35H, 0H 			//09E6 	1835
		MOVLB 	2H 			//09E7 	1022
		STR 	45H 			//09E8 	10C5
		MOVLB 	1H 			//09E9 	1021
		LDR 	36H, 0H 			//09EA 	1836
		MOVLB 	2H 			//09EB 	1022
		STR 	46H 			//09EC 	10C6
		MOVLB 	2H 			//09ED 	1022
		LDR 	41H, 0H 			//09EE 	1841
		LCALL 	69EH 			//09EF 	369E
		MOVLP 	8H 			//09F0 	0188
		BTSS 	3H, 2H 			//09F1 	2D03
		LJUMP 	1F6H 			//09F2 	39F6
		LDWI 	AH 			//09F3 	000A
		MOVLB 	2H 			//09F4 	1022
		SUBWR 	40H, 0H 		//09F5 	1240
		BTSC 	3H, 0H 			//09F6 	2803
		LJUMP 	213H 			//09F7 	3A13
		MOVLB 	2H 			//09F8 	1022
		LDR 	46H, 0H 			//09F9 	1846
		IORWR 	45H, 0H 		//09FA 	1445
		IORWR 	44H, 0H 		//09FB 	1444
		BTSC 	3H, 2H 			//09FC 	2903
		LJUMP 	257H 			//09FD 	3A57
		LCALL 	6AAH 			//09FE 	36AA
		MOVLP 	8H 			//09FF 	0188
		LCALL 	545H 			//0A00 	3545
		MOVLP 	8H 			//0A01 	0188
		LDR 	60H, 0H 			//0A02 	1860
		IORWR 	5FH, 0H 		//0A03 	145F
		IORWR 	5EH, 0H 		//0A04 	145E
		IORWR 	5DH, 0H 		//0A05 	145D
		BTSS 	3H, 2H 			//0A06 	2D03
		LJUMP 	257H 			//0A07 	3A57
		MOVLB 	2H 			//0A08 	1022
		LDR 	41H, 0H 			//0A09 	1841
		LCALL 	69EH 			//0A0A 	369E
		MOVLP 	8H 			//0A0B 	0188
		BTSS 	3H, 2H 			//0A0C 	2D03
		LJUMP 	211H 			//0A0D 	3A11
		LDWI 	2H 			//0A0E 	0002
		MOVLB 	2H 			//0A0F 	1022
		SUBWR 	40H, 0H 		//0A10 	1240
		BTSS 	3H, 0H 			//0A11 	2C03
		LJUMP 	257H 			//0A12 	3A57
		MOVLB 	2H 			//0A13 	1022
		LCALL 	676H 			//0A14 	3676
		MOVLP 	8H 			//0A15 	0188
		LDWI 	70H 			//0A16 	0070
		STR 	35H 			//0A17 	10B5
		LDWI 	89H 			//0A18 	0089
		STR 	36H 			//0A19 	10B6
		LDWI 	40H 			//0A1A 	0040
		STR 	37H 			//0A1B 	10B7
		LCALL 	4E3H 			//0A1C 	34E3
		MOVLP 	8H 			//0A1D 	0188
		BTSC 	3H, 0H 			//0A1E 	2803
		LJUMP 	222H 			//0A1F 	3A22
		LDWI 	F7H 			//0A20 	00F7
		LJUMP 	223H 			//0A21 	3A23
		LDWI 	F8H 			//0A22 	00F8
		MOVLB 	2H 			//0A23 	1022
		ADDWR 	40H, 1H 		//0A24 	17C0
		BTSS 	3H, 0H 			//0A25 	2C03
		DECR 	41H, 1H 		//0A26 	13C1
		LDR 	40H, 0H 			//0A27 	1840
		MOVLP 	1CH 			//0A28 	019C
		LCALL 	425H 			//0A29 	3425
		MOVLP 	8H 			//0A2A 	0188
		LCALL 	682H 			//0A2B 	3682
		STR 	20H 			//0A2C 	10A0
		MOVLB 	2H 			//0A2D 	1022
		LDR 	45H, 0H 			//0A2E 	1845
		MOVLB 	1H 			//0A2F 	1021
		STR 	21H 			//0A30 	10A1
		MOVLB 	2H 			//0A31 	1022
		LDR 	46H, 0H 			//0A32 	1846
		MOVLB 	1H 			//0A33 	1021
		STR 	22H 			//0A34 	10A2
		MOVLB 	2H 			//0A35 	1022
		LDR 	36H, 0H 			//0A36 	1836
		MOVLB 	1H 			//0A37 	1021
		STR 	23H 			//0A38 	10A3
		MOVLB 	2H 			//0A39 	1022
		LDR 	37H, 0H 			//0A3A 	1837
		MOVLB 	1H 			//0A3B 	1021
		STR 	24H 			//0A3C 	10A4
		MOVLB 	2H 			//0A3D 	1022
		LDR 	38H, 0H 			//0A3E 	1838
		MOVLB 	1H 			//0A3F 	1021
		STR 	25H 			//0A40 	10A5
		MOVLP 	24H 			//0A41 	01A4
		LCALL 	4EDH 			//0A42 	34ED
		MOVLP 	8H 			//0A43 	0188
		LDR 	23H, 0H 			//0A44 	1823
		MOVLB 	2H 			//0A45 	1022
		STR 	3DH 			//0A46 	10BD
		MOVLB 	1H 			//0A47 	1021
		LDR 	22H, 0H 			//0A48 	1822
		MOVLB 	2H 			//0A49 	1022
		STR 	3CH 			//0A4A 	10BC
		MOVLB 	1H 			//0A4B 	1021
		LDR 	21H, 0H 			//0A4C 	1821
		MOVLB 	2H 			//0A4D 	1022
		STR 	3BH 			//0A4E 	10BB
		MOVLB 	1H 			//0A4F 	1021
		LDR 	20H, 0H 			//0A50 	1820
		MOVLB 	2H 			//0A51 	1022
		STR 	3AH 			//0A52 	10BA
		CLRF 	44H 			//0A53 	11C4
		CLRF 	45H 			//0A54 	11C5
		CLRF 	46H 			//0A55 	11C6
		LJUMP 	292H 			//0A56 	3A92
		MOVLB 	2H 			//0A57 	1022
		LCALL 	6AAH 			//0A58 	36AA
		MOVLP 	8H 			//0A59 	0188
		LCALL 	545H 			//0A5A 	3545
		MOVLP 	8H 			//0A5B 	0188
		LCALL 	690H 			//0A5C 	3690
		MOVLP 	8H 			//0A5D 	0188
		MOVLB 	2H 			//0A5E 	1022
		STR 	3AH 			//0A5F 	10BA
		LDR 	3DH, 0H 			//0A60 	183D
		MOVLB 	1H 			//0A61 	1021
		STR 	2BH 			//0A62 	10AB
		MOVLB 	2H 			//0A63 	1022
		LDR 	3CH, 0H 			//0A64 	183C
		MOVLB 	1H 			//0A65 	1021
		STR 	2AH 			//0A66 	10AA
		MOVLB 	2H 			//0A67 	1022
		LDR 	3BH, 0H 			//0A68 	183B
		MOVLB 	1H 			//0A69 	1021
		STR 	29H 			//0A6A 	10A9
		MOVLB 	2H 			//0A6B 	1022
		LDR 	3AH, 0H 			//0A6C 	183A
		MOVLB 	1H 			//0A6D 	1021
		STR 	28H 			//0A6E 	10A8
		LCALL 	7E2H 			//0A6F 	37E2
		MOVLP 	8H 			//0A70 	0188
		LDR 	28H, 0H 			//0A71 	1828
		STR 	40H 			//0A72 	10C0
		LDR 	29H, 0H 			//0A73 	1829
		STR 	41H 			//0A74 	10C1
		LDR 	2AH, 0H 			//0A75 	182A
		STR 	42H 			//0A76 	10C2
		MOVLB 	2H 			//0A77 	1022
		LDR 	44H, 0H 			//0A78 	1844
		MOVLB 	1H 			//0A79 	1021
		STR 	43H 			//0A7A 	10C3
		MOVLB 	2H 			//0A7B 	1022
		LDR 	45H, 0H 			//0A7C 	1845
		MOVLB 	1H 			//0A7D 	1021
		STR 	44H 			//0A7E 	10C4
		MOVLB 	2H 			//0A7F 	1022
		LDR 	46H, 0H 			//0A80 	1846
		MOVLB 	1H 			//0A81 	1021
		STR 	45H 			//0A82 	10C5
		LCALL 	713H 			//0A83 	3713
		MOVLP 	8H 			//0A84 	0188
		LDR 	40H, 0H 			//0A85 	1840
		MOVLB 	2H 			//0A86 	1022
		STR 	44H 			//0A87 	10C4
		MOVLB 	1H 			//0A88 	1021
		LDR 	41H, 0H 			//0A89 	1841
		MOVLB 	2H 			//0A8A 	1022
		STR 	45H 			//0A8B 	10C5
		MOVLB 	1H 			//0A8C 	1021
		LDR 	42H, 0H 			//0A8D 	1842
		MOVLB 	2H 			//0A8E 	1022
		STR 	46H 			//0A8F 	10C6
		CLRF 	40H 			//0A90 	11C0
		CLRF 	41H 			//0A91 	11C1
		CLRF 	49H 			//0A92 	11C9
		INCR 	49H, 1H 		//0A93 	1AC9
		LCALL 	5F0H 			//0A94 	35F0
		MOVLP 	8H 			//0A95 	0188
		LCALL 	6D4H 			//0A96 	36D4
		MOVLP 	8H 			//0A97 	0188
		BTSS 	3H, 2H 			//0A98 	2D03
		LJUMP 	2A4H 			//0A99 	3AA4
		LCALL 	704H 			//0A9A 	3704
		MOVLP 	8H 			//0A9B 	0188
		BTSS 	3H, 2H 			//0A9C 	2D03
		LJUMP 	2A4H 			//0A9D 	3AA4
		LCALL 	70EH 			//0A9E 	370E
		MOVLP 	8H 			//0A9F 	0188
		BTSS 	3H, 2H 			//0AA0 	2D03
		LJUMP 	2A4H 			//0AA1 	3AA4
		LCALL 	709H 			//0AA2 	3709
		MOVLP 	8H 			//0AA3 	0188
		BTSS 	3H, 0H 			//0AA4 	2C03
		LJUMP 	2ABH 			//0AA5 	3AAB
		LDWI 	AH 			//0AA6 	000A
		INCR 	49H, 1H 		//0AA7 	1AC9
		XORWR 	49H, 0H 		//0AA8 	1649
		BTSS 	3H, 2H 			//0AA9 	2D03
		LJUMP 	294H 			//0AAA 	3A94
		LDR 	49H, 0H 			//0AAB 	1849
		LCALL 	6B6H 			//0AAC 	36B6
		MOVLP 	8H 			//0AAD 	0188
		LDR 	47H, 0H 			//0AAE 	1847
		MOVLB 	1H 			//0AAF 	1021
		ADDWR 	6AH, 0H 		//0AB0 	176A
		STR 	6CH 			//0AB1 	10EC
		MOVLB 	2H 			//0AB2 	1022
		LDR 	48H, 0H 			//0AB3 	1848
		MOVLB 	1H 			//0AB4 	1021
		ADDWFC 	6BH, 0H 		//0AB5 	0D6B
		STR 	6DH 			//0AB6 	10ED
		MOVLB 	2H 			//0AB7 	1022
		LDR 	40H, 0H 			//0AB8 	1840
		MOVLB 	1H 			//0AB9 	1021
		ADDWR 	6CH, 0H 		//0ABA 	176C
		STR 	6EH 			//0ABB 	10EE
		MOVLB 	2H 			//0ABC 	1022
		LDR 	41H, 0H 			//0ABD 	1841
		MOVLB 	1H 			//0ABE 	1021
		ADDWFC 	6DH, 0H 		//0ABF 	0D6D
		STR 	6FH 			//0AC0 	10EF
		LDR 	6EH, 0H 			//0AC1 	186E
		MOVLB 	2H 			//0AC2 	1022
		SUBWR 	42H, 1H 		//0AC3 	12C2
		MOVLB 	1H 			//0AC4 	1021
		LDR 	6FH, 0H 			//0AC5 	186F
		MOVLB 	2H 			//0AC6 	1022
		SUBWFB 	43H, 1H 		//0AC7 	0BC3
		LDR 	47H, 0H 			//0AC8 	1847
		IORWR 	48H, 0H 		//0AC9 	1448
		BTSC 	3H, 2H 			//0ACA 	2903
		LJUMP 	2D0H 			//0ACB 	3AD0
		LDWI 	FFH 			//0ACC 	00FF
		ADDWR 	42H, 1H 		//0ACD 	17C2
		BTSS 	3H, 0H 			//0ACE 	2C03
		DECR 	43H, 1H 		//0ACF 	13C3
		LDR 	3EH, 0H 			//0AD0 	183E
		ANDWI 	3H 			//0AD1 	0903
		BTSC 	3H, 2H 			//0AD2 	2903
		LJUMP 	2D8H 			//0AD3 	3AD8
		LDWI 	FFH 			//0AD4 	00FF
		ADDWR 	42H, 1H 		//0AD5 	17C2
		BTSS 	3H, 0H 			//0AD6 	2C03
		DECR 	43H, 1H 		//0AD7 	13C3
		BTSS 	3EH, 2H 		//0AD8 	2D3E
		LJUMP 	2FCH 			//0AD9 	3AFC
		LDR 	3EH, 0H 			//0ADA 	183E
		ANDWI 	3H 			//0ADB 	0903
		BTSC 	3H, 2H 			//0ADC 	2903
		LJUMP 	2E4H 			//0ADD 	3AE4
		LCALL 	6E9H 			//0ADE 	36E9
		MOVLP 	8H 			//0ADF 	0188
		STR 	1H 			//0AE0 	1081
		INCR 	20H, 1H 		//0AE1 	1AA0
		BTSC 	3H, 2H 			//0AE2 	2903
		INCR 	21H, 1H 		//0AE3 	1AA1
		LDR 	43H, 0H 			//0AE4 	1843
		LCALL 	69EH 			//0AE5 	369E
		MOVLP 	8H 			//0AE6 	0188
		BTSS 	3H, 2H 			//0AE7 	2D03
		LJUMP 	2ECH 			//0AE8 	3AEC
		LDWI 	1H 			//0AE9 	0001
		MOVLB 	2H 			//0AEA 	1022
		SUBWR 	42H, 0H 		//0AEB 	1242
		BTSS 	3H, 0H 			//0AEC 	2C03
		LJUMP 	31FH 			//0AED 	3B1F
		MOVLB 	2H 			//0AEE 	1022
		LCALL 	658H 			//0AEF 	3658
		MOVLP 	8H 			//0AF0 	0188
		ADDWR 	42H, 1H 		//0AF1 	17C2
		BTSS 	3H, 0H 			//0AF2 	2C03
		DECR 	43H, 1H 		//0AF3 	13C3
		LJUMP 	2E4H 			//0AF4 	3AE4
		MOVLB 	2H 			//0AF5 	1022
		LCALL 	6C4H 			//0AF6 	36C4
		MOVLP 	8H 			//0AF7 	0188
		LCALL 	6BDH 			//0AF8 	36BD
		MOVLP 	8H 			//0AF9 	0188
		BTSS 	3H, 0H 			//0AFA 	2C03
		DECR 	43H, 1H 		//0AFB 	13C3
		LDR 	43H, 0H 			//0AFC 	1843
		LCALL 	69EH 			//0AFD 	369E
		MOVLP 	8H 			//0AFE 	0188
		BTSS 	3H, 2H 			//0AFF 	2D03
		LJUMP 	304H 			//0B00 	3B04
		LDWI 	1H 			//0B01 	0001
		MOVLB 	2H 			//0B02 	1022
		SUBWR 	42H, 0H 		//0B03 	1242
		BTSC 	3H, 0H 			//0B04 	2803
		LJUMP 	2F5H 			//0B05 	3AF5
		MOVLB 	2H 			//0B06 	1022
		LDR 	3EH, 0H 			//0B07 	183E
		ANDWI 	3H 			//0B08 	0903
		BTSC 	3H, 2H 			//0B09 	2903
		LJUMP 	31FH 			//0B0A 	3B1F
		LCALL 	6E9H 			//0B0B 	36E9
		MOVLP 	8H 			//0B0C 	0188
		LJUMP 	31AH 			//0B0D 	3B1A
		LCALL 	5F0H 			//0B0E 	35F0
		MOVLP 	8H 			//0B0F 	0188
		LCALL 	600H 			//0B10 	3600
		MOVLP 	8H 			//0B11 	0188
		LCALL 	59AH 			//0B12 	359A
		MOVLP 	8H 			//0B13 	0188
		LCALL 	618H 			//0B14 	3618
		MOVLP 	8H 			//0B15 	0188
		LCALL 	50FH 			//0B16 	350F
		MOVLP 	8H 			//0B17 	0188
		LCALL 	63EH 			//0B18 	363E
		MOVLP 	8H 			//0B19 	0188
		STR 	1H 			//0B1A 	1081
		MOVLB 	2H 			//0B1B 	1022
		INCR 	20H, 1H 		//0B1C 	1AA0
		BTSC 	3H, 2H 			//0B1D 	2903
		INCR 	21H, 1H 		//0B1E 	1AA1
		MOVLB 	2H 			//0B1F 	1022
		DECR 	49H, 1H 		//0B20 	13C9
		INCRSZ 	49H, 0H 		//0B21 	1F49
		LJUMP 	30EH 			//0B22 	3B0E
		LDR 	41H, 0H 			//0B23 	1841
		LCALL 	69EH 			//0B24 	369E
		MOVLP 	8H 			//0B25 	0188
		BTSS 	3H, 2H 			//0B26 	2D03
		LJUMP 	32BH 			//0B27 	3B2B
		LDWI 	1H 			//0B28 	0001
		MOVLB 	2H 			//0B29 	1022
		SUBWR 	40H, 0H 		//0B2A 	1240
		BTSS 	3H, 0H 			//0B2B 	2C03
		LJUMP 	334H 			//0B2C 	3B34
		MOVLB 	2H 			//0B2D 	1022
		LCALL 	658H 			//0B2E 	3658
		MOVLP 	8H 			//0B2F 	0188
		ADDWR 	40H, 1H 		//0B30 	17C0
		BTSS 	3H, 0H 			//0B31 	2C03
		DECR 	41H, 1H 		//0B32 	13C1
		LJUMP 	323H 			//0B33 	3B23
		MOVLB 	2H 			//0B34 	1022
		LDR 	48H, 0H 			//0B35 	1848
		LCALL 	69EH 			//0B36 	369E
		MOVLP 	8H 			//0B37 	0188
		BTSS 	3H, 2H 			//0B38 	2D03
		LJUMP 	33DH 			//0B39 	3B3D
		LDWI 	9H 			//0B3A 	0009
		MOVLB 	2H 			//0B3B 	1022
		SUBWR 	47H, 0H 		//0B3C 	1247
		BTSS 	3H, 0H 			//0B3D 	2C03
		LJUMP 	342H 			//0B3E 	3B42
		LDWI 	8H 			//0B3F 	0008
		MOVLB 	2H 			//0B40 	1022
		LJUMP 	344H 			//0B41 	3B44
		MOVLB 	2H 			//0B42 	1022
		LDR 	47H, 0H 			//0B43 	1847
		STR 	49H 			//0B44 	10C9
		LCALL 	6B6H 			//0B45 	36B6
		MOVLP 	8H 			//0B46 	0188
		SUBWR 	47H, 1H 		//0B47 	12C7
		MOVLB 	1H 			//0B48 	1021
		LDR 	6BH, 0H 			//0B49 	186B
		MOVLB 	2H 			//0B4A 	1022
		SUBWFB 	48H, 1H 		//0B4B 	0BC8
		LDR 	49H, 0H 			//0B4C 	1849
		BTSC 	3H, 2H 			//0B4D 	2903
		LJUMP 	358H 			//0B4E 	3B58
		LDR 	20H, 0H 			//0B4F 	1820
		STR 	6H 			//0B50 	1086
		LDR 	21H, 0H 			//0B51 	1821
		STR 	7H 			//0B52 	1087
		LDWI 	2EH 			//0B53 	002E
		STR 	1H 			//0B54 	1081
		INCR 	20H, 1H 		//0B55 	1AA0
		BTSC 	3H, 2H 			//0B56 	2903
		INCR 	21H, 1H 		//0B57 	1AA1
		LDR 	49H, 0H 			//0B58 	1849
		MOVLP 	1CH 			//0B59 	019C
		LCALL 	425H 			//0B5A 	3425
		MOVLP 	8H 			//0B5B 	0188
		LDR 	55H, 0H 			//0B5C 	1855
		MOVLB 	2H 			//0B5D 	1022
		STR 	32H 			//0B5E 	10B2
		MOVLB 	1H 			//0B5F 	1021
		LDR 	56H, 0H 			//0B60 	1856
		MOVLB 	2H 			//0B61 	1022
		STR 	33H 			//0B62 	10B3
		MOVLB 	1H 			//0B63 	1021
		LDR 	57H, 0H 			//0B64 	1857
		MOVLB 	2H 			//0B65 	1022
		STR 	34H 			//0B66 	10B4
		LDR 	32H, 0H 			//0B67 	1832
		MOVLB 	1H 			//0B68 	1021
		STR 	49H 			//0B69 	10C9
		MOVLB 	2H 			//0B6A 	1022
		LDR 	33H, 0H 			//0B6B 	1833
		MOVLB 	1H 			//0B6C 	1021
		STR 	4AH 			//0B6D 	10CA
		MOVLB 	2H 			//0B6E 	1022
		LDR 	34H, 0H 			//0B6F 	1834
		MOVLB 	1H 			//0B70 	1021
		STR 	4BH 			//0B71 	10CB
		MOVLB 	2H 			//0B72 	1022
		LDR 	44H, 0H 			//0B73 	1844
		MOVLB 	1H 			//0B74 	1021
		LCALL 	6DFH 			//0B75 	36DF
		MOVLP 	1DH 			//0B76 	019D
		LCALL 	582H 			//0B77 	3582
		MOVLP 	8H 			//0B78 	0188
		MOVLP 	1FH 			//0B79 	019F
		LCALL 	79FH 			//0B7A 	379F
		MOVLP 	8H 			//0B7B 	0188
		LCALL 	545H 			//0B7C 	3545
		MOVLP 	8H 			//0B7D 	0188
		LCALL 	690H 			//0B7E 	3690
		MOVLP 	8H 			//0B7F 	0188
		LJUMP 	3BAH 			//0B80 	3BBA
		LCALL 	5F0H 			//0B81 	35F0
		MOVLP 	8H 			//0B82 	0188
		LCALL 	600H 			//0B83 	3600
		MOVLP 	8H 			//0B84 	0188
		LCALL 	59AH 			//0B85 	359A
		MOVLP 	8H 			//0B86 	0188
		LCALL 	618H 			//0B87 	3618
		MOVLP 	8H 			//0B88 	0188
		LCALL 	50FH 			//0B89 	350F
		MOVLP 	8H 			//0B8A 	0188
		LCALL 	63EH 			//0B8B 	363E
		MOVLP 	8H 			//0B8C 	0188
		STR 	1H 			//0B8D 	1081
		MOVLB 	2H 			//0B8E 	1022
		INCR 	20H, 1H 		//0B8F 	1AA0
		BTSC 	3H, 2H 			//0B90 	2903
		INCR 	21H, 1H 		//0B91 	1AA1
		LCALL 	5F0H 			//0B92 	35F0
		MOVLP 	8H 			//0B93 	0188
		STR 	2DH 			//0B94 	10AD
		MOVIW 	1H[0] 			//0B95 	0F01
		STR 	2EH 			//0B96 	10AE
		MOVIW 	2H[0] 			//0B97 	0F02
		STR 	2FH 			//0B98 	10AF
		MOVIW 	3H[0] 			//0B99 	0F03
		STR 	30H 			//0B9A 	10B0
		MOVLB 	2H 			//0B9B 	1022
		LDR 	3DH, 0H 			//0B9C 	183D
		MOVLB 	1H 			//0B9D 	1021
		STR 	34H 			//0B9E 	10B4
		MOVLB 	2H 			//0B9F 	1022
		LDR 	3CH, 0H 			//0BA0 	183C
		MOVLB 	1H 			//0BA1 	1021
		STR 	33H 			//0BA2 	10B3
		MOVLB 	2H 			//0BA3 	1022
		LDR 	3BH, 0H 			//0BA4 	183B
		MOVLB 	1H 			//0BA5 	1021
		STR 	32H 			//0BA6 	10B2
		MOVLB 	2H 			//0BA7 	1022
		LDR 	3AH, 0H 			//0BA8 	183A
		MOVLB 	1H 			//0BA9 	1021
		STR 	31H 			//0BAA 	10B1
		LCALL 	50FH 			//0BAB 	350F
		MOVLP 	8H 			//0BAC 	0188
		LDR 	30H, 0H 			//0BAD 	1830
		MOVLB 	2H 			//0BAE 	1022
		STR 	3DH 			//0BAF 	10BD
		MOVLB 	1H 			//0BB0 	1021
		LDR 	2FH, 0H 			//0BB1 	182F
		MOVLB 	2H 			//0BB2 	1022
		STR 	3CH 			//0BB3 	10BC
		MOVLB 	1H 			//0BB4 	1021
		LDR 	2EH, 0H 			//0BB5 	182E
		MOVLB 	2H 			//0BB6 	1022
		STR 	3BH 			//0BB7 	10BB
		MOVLB 	1H 			//0BB8 	1021
		LDR 	2DH, 0H 			//0BB9 	182D
		MOVLB 	2H 			//0BBA 	1022
		STR 	3AH 			//0BBB 	10BA
		DECR 	49H, 1H 		//0BBC 	13C9
		INCRSZ 	49H, 0H 		//0BBD 	1F49
		LJUMP 	381H 			//0BBE 	3B81
		LDR 	47H, 0H 			//0BBF 	1847
		IORWR 	48H, 0H 		//0BC0 	1448
		BTSC 	3H, 2H 			//0BC1 	2903
		LJUMP 	33H 			//0BC2 	3833
		LCALL 	658H 			//0BC3 	3658
		MOVLP 	8H 			//0BC4 	0188
		ADDWR 	47H, 1H 		//0BC5 	17C7
		BTSS 	3H, 0H 			//0BC6 	2C03
		DECR 	48H, 1H 		//0BC7 	13C8
		LJUMP 	3BFH 			//0BC8 	3BBF
		MOVLB 	2H 			//0BC9 	1022
		LDR 	35H, 0H 			//0BCA 	1835
		LCALL 	6EEH 			//0BCB 	36EE
		MOVLP 	8H 			//0BCC 	0188
		LDR 	6AH, 0H 			//0BCD 	186A
		MOVLB 	2H 			//0BCE 	1022
		STR 	3AH 			//0BCF 	10BA
		MOVLB 	1H 			//0BD0 	1021
		LDR 	6BH, 0H 			//0BD1 	186B
		MOVLB 	2H 			//0BD2 	1022
		STR 	3BH 			//0BD3 	10BB
		RLR 	9H, 1H 			//0BD4 	1D89
		SUBWFB 	9H, 1H 		//0BD5 	0B89
		COMR 	9H, 1H 			//0BD6 	1989
		STR 	3CH 			//0BD7 	10BC
		STR 	3DH 			//0BD8 	10BD
		INCR 	35H, 1H 		//0BD9 	1AB5
		INCR 	35H, 1H 		//0BDA 	1AB5
		BTSS 	3DH, 7H 		//0BDB 	2FBD
		LJUMP 	3EAH 			//0BDC 	3BEA
		LDWI 	3H 			//0BDD 	0003
		IORWR 	3EH, 1H 		//0BDE 	14BE
		COMR 	3AH, 1H 		//0BDF 	19BA
		COMR 	3BH, 1H 		//0BE0 	19BB
		COMR 	3CH, 1H 		//0BE1 	19BC
		COMR 	3DH, 1H 		//0BE2 	19BD
		INCR 	3AH, 1H 		//0BE3 	1ABA
		BTSC 	3H, 2H 			//0BE4 	2903
		INCR 	3BH, 1H 		//0BE5 	1ABB
		BTSC 	3H, 2H 			//0BE6 	2903
		INCR 	3CH, 1H 		//0BE7 	1ABC
		BTSC 	3H, 2H 			//0BE8 	2903
		INCR 	3DH, 1H 		//0BE9 	1ABD
		LDR 	47H, 0H 			//0BEA 	1847
		IORWR 	48H, 0H 		//0BEB 	1448
		BTSS 	3H, 2H 			//0BEC 	2D03
		LJUMP 	3F6H 			//0BED 	3BF6
		LDR 	3DH, 0H 			//0BEE 	183D
		IORWR 	3CH, 0H 		//0BEF 	143C
		IORWR 	3BH, 0H 		//0BF0 	143B
		IORWR 	3AH, 0H 		//0BF1 	143A
		BTSC 	3H, 2H 			//0BF2 	2903
		INCR 	47H, 1H 		//0BF3 	1AC7
		BTSC 	3H, 2H 			//0BF4 	2903
		INCR 	48H, 1H 		//0BF5 	1AC8
		CLRF 	49H 			//0BF6 	11C9
		INCR 	49H, 1H 		//0BF7 	1AC9
		LCALL 	5F0H 			//0BF8 	35F0
		MOVLP 	8H 			//0BF9 	0188
		LCALL 	6D4H 			//0BFA 	36D4
		MOVLP 	8H 			//0BFB 	0188
		BTSS 	3H, 2H 			//0BFC 	2D03
		LJUMP 	408H 			//0BFD 	3C08
		LCALL 	704H 			//0BFE 	3704
		MOVLP 	8H 			//0BFF 	0188
		BTSS 	3H, 2H 			//0C00 	2D03
		LJUMP 	408H 			//0C01 	3C08
		LCALL 	70EH 			//0C02 	370E
		MOVLP 	8H 			//0C03 	0188
		BTSS 	3H, 2H 			//0C04 	2D03
		LJUMP 	408H 			//0C05 	3C08
		LCALL 	709H 			//0C06 	3709
		MOVLP 	8H 			//0C07 	0188
		BTSS 	3H, 0H 			//0C08 	2C03
		LJUMP 	40FH 			//0C09 	3C0F
		LDWI 	AH 			//0C0A 	000A
		INCR 	49H, 1H 		//0C0B 	1AC9
		XORWR 	49H, 0H 		//0C0C 	1649
		BTSS 	3H, 2H 			//0C0D 	2D03
		LJUMP 	3F8H 			//0C0E 	3BF8
		LCALL 	6C9H 			//0C0F 	36C9
		MOVLP 	8H 			//0C10 	0188
		LDR 	48H, 0H 			//0C11 	1848
		XORWI 	80H 			//0C12 	0A80
		MOVLB 	1H 			//0C13 	1021
		SUBWR 	6CH, 0H 		//0C14 	126C
		BTSS 	3H, 2H 			//0C15 	2D03
		LJUMP 	41BH 			//0C16 	3C1B
		MOVLB 	2H 			//0C17 	1022
		LDR 	47H, 0H 			//0C18 	1847
		MOVLB 	1H 			//0C19 	1021
		SUBWR 	6AH, 0H 		//0C1A 	126A
		BTSC 	3H, 0H 			//0C1B 	2803
		LJUMP 	421H 			//0C1C 	3C21
		MOVLB 	2H 			//0C1D 	1022
		LDR 	47H, 0H 			//0C1E 	1847
		STR 	49H 			//0C1F 	10C9
		LJUMP 	439H 			//0C20 	3C39
		MOVLB 	2H 			//0C21 	1022
		LDR 	49H, 0H 			//0C22 	1849
		LCALL 	6B6H 			//0C23 	36B6
		MOVLP 	8H 			//0C24 	0188
		LDR 	48H, 0H 			//0C25 	1848
		XORWI 	80H 			//0C26 	0A80
		MOVLB 	1H 			//0C27 	1021
		STR 	6CH 			//0C28 	10EC
		LDR 	6BH, 0H 			//0C29 	186B
		XORWI 	80H 			//0C2A 	0A80
		SUBWR 	6CH, 0H 		//0C2B 	126C
		BTSS 	3H, 2H 			//0C2C 	2D03
		LJUMP 	431H 			//0C2D 	3C31
		LDR 	6AH, 0H 			//0C2E 	186A
		MOVLB 	2H 			//0C2F 	1022
		SUBWR 	47H, 0H 		//0C30 	1247
		BTSC 	3H, 0H 			//0C31 	2803
		LJUMP 	439H 			//0C32 	3C39
		MOVLB 	2H 			//0C33 	1022
		LDR 	49H, 0H 			//0C34 	1849
		STR 	47H 			//0C35 	10C7
		CLRF 	48H 			//0C36 	11C8
		BTSC 	47H, 7H 		//0C37 	2BC7
		DECR 	48H, 1H 		//0C38 	13C8
		MOVLB 	2H 			//0C39 	1022
		LDR 	42H, 0H 			//0C3A 	1842
		IORWR 	43H, 0H 		//0C3B 	1443
		BTSC 	3H, 2H 			//0C3C 	2903
		LJUMP 	446H 			//0C3D 	3C46
		LDR 	3EH, 0H 			//0C3E 	183E
		ANDWI 	3H 			//0C3F 	0903
		BTSC 	3H, 2H 			//0C40 	2903
		LJUMP 	446H 			//0C41 	3C46
		LDWI 	FFH 			//0C42 	00FF
		ADDWR 	42H, 1H 		//0C43 	17C2
		BTSS 	3H, 0H 			//0C44 	2C03
		DECR 	43H, 1H 		//0C45 	13C3
		BTSS 	3FH, 6H 		//0C46 	2F3F
		LJUMP 	461H 			//0C47 	3C61
		LDR 	48H, 0H 			//0C48 	1848
		XORWI 	80H 			//0C49 	0A80
		MOVLB 	1H 			//0C4A 	1021
		STR 	6AH 			//0C4B 	10EA
		MOVLB 	2H 			//0C4C 	1022
		LDR 	43H, 0H 			//0C4D 	1843
		XORWI 	80H 			//0C4E 	0A80
		MOVLB 	1H 			//0C4F 	1021
		SUBWR 	6AH, 0H 		//0C50 	126A
		BTSS 	3H, 2H 			//0C51 	2D03
		LJUMP 	456H 			//0C52 	3C56
		MOVLB 	2H 			//0C53 	1022
		LDR 	42H, 0H 			//0C54 	1842
		SUBWR 	47H, 0H 		//0C55 	1247
		BTSC 	3H, 0H 			//0C56 	2803
		LJUMP 	45EH 			//0C57 	3C5E
		MOVLB 	2H 			//0C58 	1022
		LDR 	47H, 0H 			//0C59 	1847
		SUBWR 	42H, 1H 		//0C5A 	12C2
		LDR 	48H, 0H 			//0C5B 	1848
		SUBWFB 	43H, 1H 		//0C5C 	0BC3
		LJUMP 	461H 			//0C5D 	3C61
		MOVLB 	2H 			//0C5E 	1022
		CLRF 	42H 			//0C5F 	11C2
		CLRF 	43H 			//0C60 	11C3
		LCALL 	6C9H 			//0C61 	36C9
		MOVLP 	8H 			//0C62 	0188
		LDR 	43H, 0H 			//0C63 	1843
		XORWI 	80H 			//0C64 	0A80
		MOVLB 	1H 			//0C65 	1021
		SUBWR 	6CH, 0H 		//0C66 	126C
		BTSS 	3H, 2H 			//0C67 	2D03
		LJUMP 	46DH 			//0C68 	3C6D
		MOVLB 	2H 			//0C69 	1022
		LDR 	42H, 0H 			//0C6A 	1842
		MOVLB 	1H 			//0C6B 	1021
		SUBWR 	6AH, 0H 		//0C6C 	126A
		BTSC 	3H, 0H 			//0C6D 	2803
		LJUMP 	479H 			//0C6E 	3C79
		MOVLB 	2H 			//0C6F 	1022
		LDR 	49H, 0H 			//0C70 	1849
		LCALL 	6B6H 			//0C71 	36B6
		MOVLP 	8H 			//0C72 	0188
		SUBWR 	42H, 1H 		//0C73 	12C2
		MOVLB 	1H 			//0C74 	1021
		LDR 	6BH, 0H 			//0C75 	186B
		MOVLB 	2H 			//0C76 	1022
		SUBWFB 	43H, 1H 		//0C77 	0BC3
		LJUMP 	47CH 			//0C78 	3C7C
		MOVLB 	2H 			//0C79 	1022
		CLRF 	42H 			//0C7A 	11C2
		CLRF 	43H 			//0C7B 	11C3
		BTSS 	3EH, 2H 		//0C7C 	2D3E
		LJUMP 	492H 			//0C7D 	3C92
		LDR 	3EH, 0H 			//0C7E 	183E
		ANDWI 	3H 			//0C7F 	0903
		BTSC 	3H, 2H 			//0C80 	2903
		LJUMP 	488H 			//0C81 	3C88
		LCALL 	6E9H 			//0C82 	36E9
		MOVLP 	8H 			//0C83 	0188
		STR 	1H 			//0C84 	1081
		INCR 	20H, 1H 		//0C85 	1AA0
		BTSC 	3H, 2H 			//0C86 	2903
		INCR 	21H, 1H 		//0C87 	1AA1
		LDR 	42H, 0H 			//0C88 	1842
		IORWR 	43H, 0H 		//0C89 	1443
		BTSC 	3H, 2H 			//0C8A 	2903
		LJUMP 	4AAH 			//0C8B 	3CAA
		LCALL 	658H 			//0C8C 	3658
		MOVLP 	8H 			//0C8D 	0188
		ADDWR 	42H, 1H 		//0C8E 	17C2
		BTSS 	3H, 0H 			//0C8F 	2C03
		DECR 	43H, 1H 		//0C90 	13C3
		LJUMP 	488H 			//0C91 	3C88
		LDR 	42H, 0H 			//0C92 	1842
		IORWR 	43H, 0H 		//0C93 	1443
		BTSC 	3H, 2H 			//0C94 	2903
		LJUMP 	4A0H 			//0C95 	3CA0
		LCALL 	6C4H 			//0C96 	36C4
		MOVLP 	8H 			//0C97 	0188
		LCALL 	6BDH 			//0C98 	36BD
		MOVLP 	8H 			//0C99 	0188
		BTSS 	3H, 0H 			//0C9A 	2C03
		DECR 	43H, 1H 		//0C9B 	13C3
		LDR 	42H, 0H 			//0C9C 	1842
		IORWR 	43H, 0H 		//0C9D 	1443
		BTSS 	3H, 2H 			//0C9E 	2D03
		LJUMP 	496H 			//0C9F 	3C96
		LDR 	3EH, 0H 			//0CA0 	183E
		ANDWI 	3H 			//0CA1 	0903
		BTSC 	3H, 2H 			//0CA2 	2903
		LJUMP 	4AAH 			//0CA3 	3CAA
		LCALL 	6E9H 			//0CA4 	36E9
		MOVLP 	8H 			//0CA5 	0188
		STR 	1H 			//0CA6 	1081
		INCR 	20H, 1H 		//0CA7 	1AA0
		BTSC 	3H, 2H 			//0CA8 	2903
		INCR 	21H, 1H 		//0CA9 	1AA1
		LDWI 	FFH 			//0CAA 	00FF
		ADDWR 	47H, 1H 		//0CAB 	17C7
		BTSS 	3H, 0H 			//0CAC 	2C03
		DECR 	48H, 1H 		//0CAD 	13C8
		INCRSZ 	47H, 0H 		//0CAE 	1F47
		LJUMP 	4B3H 			//0CAF 	3CB3
		INCR 	48H, 0H 		//0CB0 	1A48
		BTSC 	3H, 2H 			//0CB1 	2903
		LJUMP 	33H 			//0CB2 	3833
		LDWI 	AH 			//0CB3 	000A
		MOVLB 	1H 			//0CB4 	1021
		STR 	2DH 			//0CB5 	10AD
		CLRF 	2EH 			//0CB6 	11AE
		CLRF 	2FH 			//0CB7 	11AF
		CLRF 	30H 			//0CB8 	11B0
		MOVLB 	2H 			//0CB9 	1022
		LDR 	48H, 0H 			//0CBA 	1848
		STR 	5H 			//0CBB 	1085
		LDR 	47H, 0H 			//0CBC 	1847
		STR 	4H 			//0CBD 	1084
		LDWI 	0H 			//0CBE 	0000
		LSLF 	4H, 1H 			//0CBF 	0584
		RLR 	5H, 1H 			//0CC0 	1D85
		LSLF 	4H, 1H 			//0CC1 	0584
		RLR 	5H, 1H 			//0CC2 	1D85
		ADDWR 	4H, 1H 		//0CC3 	1784
		LDWI 	A0H 			//0CC4 	00A0
		ADDWFC 	5H, 1H 		//0CC5 	0D85
		MOVIW 	0H[0] 			//0CC6 	0F00
		MOVLB 	1H 			//0CC7 	1021
		LCALL 	600H 			//0CC8 	3600
		MOVLP 	8H 			//0CC9 	0188
		LCALL 	59AH 			//0CCA 	359A
		MOVLP 	8H 			//0CCB 	0188
		LDR 	23H, 0H 			//0CCC 	1823
		STR 	34H 			//0CCD 	10B4
		LDR 	22H, 0H 			//0CCE 	1822
		STR 	33H 			//0CCF 	10B3
		LDR 	21H, 0H 			//0CD0 	1821
		STR 	32H 			//0CD1 	10B2
		LDR 	20H, 0H 			//0CD2 	1820
		STR 	31H 			//0CD3 	10B1
		LCALL 	50FH 			//0CD4 	350F
		MOVLP 	8H 			//0CD5 	0188
		LDR 	2DH, 0H 			//0CD6 	182D
		ADDWI 	30H 			//0CD7 	0E30
		MOVLB 	2H 			//0CD8 	1022
		STR 	49H 			//0CD9 	10C9
		LCALL 	6FEH 			//0CDA 	36FE
		MOVLP 	8H 			//0CDB 	0188
		LJUMP 	4A6H 			//0CDC 	3CA6
		LDR 	20H, 0H 			//0CDD 	1820
		STR 	6H 			//0CDE 	1086
		LDR 	21H, 0H 			//0CDF 	1821
		STR 	7H 			//0CE0 	1087
		CLRF 	1H 			//0CE1 	1181
		RET 					//0CE2 	1008
		BTSS 	34H, 7H 		//0CE3 	2FB4
		LJUMP 	4F2H 			//0CE4 	3CF2
		LDR 	32H, 0H 			//0CE5 	1832
		SUBWI 	0H 			//0CE6 	0C00
		STR 	32H 			//0CE7 	10B2
		LDR 	33H, 0H 			//0CE8 	1833
		BTSS 	3H, 0H 			//0CE9 	2C03
		INCRSZ 	33H, 0H 		//0CEA 	1F33
		SUBWI 	0H 			//0CEB 	0C00
		STR 	33H 			//0CEC 	10B3
		LDR 	34H, 0H 			//0CED 	1834
		BTSS 	3H, 0H 			//0CEE 	2C03
		INCRSZ 	34H, 0H 		//0CEF 	1F34
		SUBWI 	80H 			//0CF0 	0C80
		STR 	34H 			//0CF1 	10B4
		BTSS 	37H, 7H 		//0CF2 	2FB7
		LJUMP 	501H 			//0CF3 	3D01
		LDR 	35H, 0H 			//0CF4 	1835
		SUBWI 	0H 			//0CF5 	0C00
		STR 	35H 			//0CF6 	10B5
		LDR 	36H, 0H 			//0CF7 	1836
		BTSS 	3H, 0H 			//0CF8 	2C03
		INCRSZ 	36H, 0H 		//0CF9 	1F36
		SUBWI 	0H 			//0CFA 	0C00
		STR 	36H 			//0CFB 	10B6
		LDR 	37H, 0H 			//0CFC 	1837
		BTSS 	3H, 0H 			//0CFD 	2C03
		INCRSZ 	37H, 0H 		//0CFE 	1F37
		SUBWI 	80H 			//0CFF 	0C80
		STR 	37H 			//0D00 	10B7
		LDWI 	80H 			//0D01 	0080
		XORWR 	34H, 1H 		//0D02 	16B4
		XORWR 	37H, 1H 		//0D03 	16B7
		LDR 	37H, 0H 			//0D04 	1837
		SUBWR 	34H, 0H 		//0D05 	1234
		BTSS 	3H, 2H 			//0D06 	2D03
		RET 					//0D07 	1008
		LDR 	36H, 0H 			//0D08 	1836
		SUBWR 	33H, 0H 		//0D09 	1233
		BTSS 	3H, 2H 			//0D0A 	2D03
		RET 					//0D0B 	1008
		LDR 	35H, 0H 			//0D0C 	1835
		SUBWR 	32H, 0H 		//0D0D 	1232
		RET 					//0D0E 	1008
		LDR 	30H, 0H 			//0D0F 	1830
		IORWR 	2FH, 0H 		//0D10 	142F
		IORWR 	2EH, 0H 		//0D11 	142E
		IORWR 	2DH, 0H 		//0D12 	142D
		BTSC 	3H, 2H 			//0D13 	2903
		LJUMP 	53CH 			//0D14 	3D3C
		CLRF 	35H 			//0D15 	11B5
		INCR 	35H, 1H 		//0D16 	1AB5
		BTSC 	30H, 7H 		//0D17 	2BB0
		LJUMP 	51EH 			//0D18 	3D1E
		LSLF 	2DH, 1H 		//0D19 	05AD
		RLR 	2EH, 1H 			//0D1A 	1DAE
		RLR 	2FH, 1H 			//0D1B 	1DAF
		RLR 	30H, 1H 			//0D1C 	1DB0
		LJUMP 	516H 			//0D1D 	3D16
		LDR 	30H, 0H 			//0D1E 	1830
		SUBWR 	34H, 0H 		//0D1F 	1234
		BTSS 	3H, 2H 			//0D20 	2D03
		LJUMP 	52CH 			//0D21 	3D2C
		LDR 	2FH, 0H 			//0D22 	182F
		SUBWR 	33H, 0H 		//0D23 	1233
		BTSS 	3H, 2H 			//0D24 	2D03
		LJUMP 	52CH 			//0D25 	3D2C
		LDR 	2EH, 0H 			//0D26 	182E
		SUBWR 	32H, 0H 		//0D27 	1232
		BTSS 	3H, 2H 			//0D28 	2D03
		LJUMP 	52CH 			//0D29 	3D2C
		LDR 	2DH, 0H 			//0D2A 	182D
		SUBWR 	31H, 0H 		//0D2B 	1231
		BTSS 	3H, 0H 			//0D2C 	2C03
		LJUMP 	536H 			//0D2D 	3D36
		LDR 	2DH, 0H 			//0D2E 	182D
		SUBWR 	31H, 1H 		//0D2F 	12B1
		LDR 	2EH, 0H 			//0D30 	182E
		SUBWFB 	32H, 1H 		//0D31 	0BB2
		LDR 	2FH, 0H 			//0D32 	182F
		SUBWFB 	33H, 1H 		//0D33 	0BB3
		LDR 	30H, 0H 			//0D34 	1830
		SUBWFB 	34H, 1H 		//0D35 	0BB4
		LSRF 	30H, 1H 		//0D36 	06B0
		RRR 	2FH, 1H 			//0D37 	1CAF
		RRR 	2EH, 1H 			//0D38 	1CAE
		RRR 	2DH, 1H 			//0D39 	1CAD
		DECRSZ 	35H, 1H 		//0D3A 	1BB5
		LJUMP 	51EH 			//0D3B 	3D1E
		LDR 	34H, 0H 			//0D3C 	1834
		STR 	30H 			//0D3D 	10B0
		LDR 	33H, 0H 			//0D3E 	1833
		STR 	2FH 			//0D3F 	10AF
		LDR 	32H, 0H 			//0D40 	1832
		STR 	2EH 			//0D41 	10AE
		LDR 	31H, 0H 			//0D42 	1831
		STR 	2DH 			//0D43 	10AD
		RET 					//0D44 	1008
		LCALL 	6F7H 			//0D45 	36F7
		MOVLP 	8H 			//0D46 	0188
		BCR 	3H, 0H 			//0D47 	2003
		RLR 	62H, 0H 			//0D48 	1D62
		RLR 	63H, 0H 			//0D49 	1D63
		STR 	69H 			//0D4A 	10E9
		LDR 	69H, 0H 			//0D4B 	1869
		BTSS 	3H, 2H 			//0D4C 	2D03
		LJUMP 	553H 			//0D4D 	3D53
		CLRF 	5DH 			//0D4E 	11DD
		CLRF 	5EH 			//0D4F 	11DE
		CLRF 	5FH 			//0D50 	11DF
		CLRF 	60H 			//0D51 	11E0
		RET 					//0D52 	1008
		LCALL 	6F7H 			//0D53 	36F7
		MOVLP 	8H 			//0D54 	0188
		LDWI 	17H 			//0D55 	0017
		LSRF 	63H, 1H 		//0D56 	06E3
		RRR 	62H, 1H 			//0D57 	1CE2
		RRR 	61H, 1H 			//0D58 	1CE1
		DECRSZ 	9H, 1H 		//0D59 	1B89
		LJUMP 	556H 			//0D5A 	3D56
		LDR 	61H, 0H 			//0D5B 	1861
		STR 	64H 			//0D5C 	10E4
		BSR 	5EH, 7H 			//0D5D 	27DE
		CLRF 	5FH 			//0D5E 	11DF
		LDR 	5DH, 0H 			//0D5F 	185D
		STR 	65H 			//0D60 	10E5
		LDR 	5EH, 0H 			//0D61 	185E
		STR 	66H 			//0D62 	10E6
		LDR 	5FH, 0H 			//0D63 	185F
		STR 	67H 			//0D64 	10E7
		LDWI 	8EH 			//0D65 	008E
		CLRF 	68H 			//0D66 	11E8
		SUBWR 	69H, 1H 		//0D67 	12E9
		BTSS 	69H, 7H 		//0D68 	2FE9
		LJUMP 	576H 			//0D69 	3D76
		LDR 	69H, 0H 			//0D6A 	1869
		XORWI 	80H 			//0D6B 	0A80
		ADDWI 	8FH 			//0D6C 	0E8F
		BTSS 	3H, 0H 			//0D6D 	2C03
		LJUMP 	54EH 			//0D6E 	3D4E
		LSRF 	68H, 1H 		//0D6F 	06E8
		RRR 	67H, 1H 			//0D70 	1CE7
		RRR 	66H, 1H 			//0D71 	1CE6
		RRR 	65H, 1H 			//0D72 	1CE5
		INCRSZ 	69H, 1H 		//0D73 	1FE9
		LJUMP 	56FH 			//0D74 	3D6F
		LJUMP 	583H 			//0D75 	3D83
		LDWI 	18H 			//0D76 	0018
		SUBWR 	69H, 0H 		//0D77 	1269
		BTSC 	3H, 0H 			//0D78 	2803
		LJUMP 	54EH 			//0D79 	3D4E
		LDR 	69H, 0H 			//0D7A 	1869
		BTSC 	3H, 2H 			//0D7B 	2903
		LJUMP 	583H 			//0D7C 	3D83
		LSLF 	65H, 1H 		//0D7D 	05E5
		RLR 	66H, 1H 			//0D7E 	1DE6
		RLR 	67H, 1H 			//0D7F 	1DE7
		RLR 	68H, 1H 			//0D80 	1DE8
		DECR 	69H, 1H 		//0D81 	13E9
		LJUMP 	57AH 			//0D82 	3D7A
		LDR 	64H, 0H 			//0D83 	1864
		BTSC 	3H, 2H 			//0D84 	2903
		LJUMP 	591H 			//0D85 	3D91
		COMR 	65H, 1H 		//0D86 	19E5
		COMR 	66H, 1H 		//0D87 	19E6
		COMR 	67H, 1H 		//0D88 	19E7
		COMR 	68H, 1H 		//0D89 	19E8
		INCR 	65H, 1H 		//0D8A 	1AE5
		BTSC 	3H, 2H 			//0D8B 	2903
		INCR 	66H, 1H 		//0D8C 	1AE6
		BTSC 	3H, 2H 			//0D8D 	2903
		INCR 	67H, 1H 		//0D8E 	1AE7
		BTSC 	3H, 2H 			//0D8F 	2903
		INCR 	68H, 1H 		//0D90 	1AE8
		LDR 	68H, 0H 			//0D91 	1868
		STR 	60H 			//0D92 	10E0
		LDR 	67H, 0H 			//0D93 	1867
		STR 	5FH 			//0D94 	10DF
		LDR 	66H, 0H 			//0D95 	1866
		STR 	5EH 			//0D96 	10DE
		LDR 	65H, 0H 			//0D97 	1865
		STR 	5DH 			//0D98 	10DD
		RET 					//0D99 	1008
		CLRF 	28H 			//0D9A 	11A8
		CLRF 	29H 			//0D9B 	11A9
		CLRF 	2AH 			//0D9C 	11AA
		CLRF 	2BH 			//0D9D 	11AB
		LDR 	23H, 0H 			//0D9E 	1823
		IORWR 	22H, 0H 		//0D9F 	1422
		IORWR 	21H, 0H 		//0DA0 	1421
		IORWR 	20H, 0H 		//0DA1 	1420
		BTSC 	3H, 2H 			//0DA2 	2903
		LJUMP 	5D0H 			//0DA3 	3DD0
		CLRF 	2CH 			//0DA4 	11AC
		INCR 	2CH, 1H 		//0DA5 	1AAC
		BTSC 	23H, 7H 		//0DA6 	2BA3
		LJUMP 	5ADH 			//0DA7 	3DAD
		LSLF 	20H, 1H 		//0DA8 	05A0
		RLR 	21H, 1H 			//0DA9 	1DA1
		RLR 	22H, 1H 			//0DAA 	1DA2
		RLR 	23H, 1H 			//0DAB 	1DA3
		LJUMP 	5A5H 			//0DAC 	3DA5
		LSLF 	28H, 1H 		//0DAD 	05A8
		RLR 	29H, 1H 			//0DAE 	1DA9
		RLR 	2AH, 1H 			//0DAF 	1DAA
		RLR 	2BH, 1H 			//0DB0 	1DAB
		LDR 	23H, 0H 			//0DB1 	1823
		SUBWR 	27H, 0H 		//0DB2 	1227
		BTSS 	3H, 2H 			//0DB3 	2D03
		LJUMP 	5BFH 			//0DB4 	3DBF
		LDR 	22H, 0H 			//0DB5 	1822
		SUBWR 	26H, 0H 		//0DB6 	1226
		BTSS 	3H, 2H 			//0DB7 	2D03
		LJUMP 	5BFH 			//0DB8 	3DBF
		LDR 	21H, 0H 			//0DB9 	1821
		SUBWR 	25H, 0H 		//0DBA 	1225
		BTSS 	3H, 2H 			//0DBB 	2D03
		LJUMP 	5BFH 			//0DBC 	3DBF
		LDR 	20H, 0H 			//0DBD 	1820
		SUBWR 	24H, 0H 		//0DBE 	1224
		BTSS 	3H, 0H 			//0DBF 	2C03
		LJUMP 	5CAH 			//0DC0 	3DCA
		LDR 	20H, 0H 			//0DC1 	1820
		SUBWR 	24H, 1H 		//0DC2 	12A4
		LDR 	21H, 0H 			//0DC3 	1821
		SUBWFB 	25H, 1H 		//0DC4 	0BA5
		LDR 	22H, 0H 			//0DC5 	1822
		SUBWFB 	26H, 1H 		//0DC6 	0BA6
		LDR 	23H, 0H 			//0DC7 	1823
		SUBWFB 	27H, 1H 		//0DC8 	0BA7
		BSR 	28H, 0H 			//0DC9 	2428
		LSRF 	23H, 1H 		//0DCA 	06A3
		RRR 	22H, 1H 			//0DCB 	1CA2
		RRR 	21H, 1H 			//0DCC 	1CA1
		RRR 	20H, 1H 			//0DCD 	1CA0
		DECRSZ 	2CH, 1H 		//0DCE 	1BAC
		LJUMP 	5ADH 			//0DCF 	3DAD
		LDR 	2BH, 0H 			//0DD0 	182B
		STR 	23H 			//0DD1 	10A3
		LDR 	2AH, 0H 			//0DD2 	182A
		STR 	22H 			//0DD3 	10A2
		LDR 	29H, 0H 			//0DD4 	1829
		STR 	21H 			//0DD5 	10A1
		LDR 	28H, 0H 			//0DD6 	1828
		STR 	20H 			//0DD7 	10A0
		RET 					//0DD8 	1008
		MOVLB 	1H 			//0DD9 	1021
		STR 	21H 			//0DDA 	10A1
		LDWI 	3AH 			//0DDB 	003A
		CLRF 	20H 			//0DDC 	11A0
		SUBWR 	21H, 0H 		//0DDD 	1221
		BTSC 	3H, 0H 			//0DDE 	2803
		LJUMP 	5E6H 			//0DDF 	3DE6
		LDWI 	30H 			//0DE0 	0030
		SUBWR 	21H, 0H 		//0DE1 	1221
		BTSS 	3H, 0H 			//0DE2 	2C03
		LJUMP 	5E6H 			//0DE3 	3DE6
		CLRF 	20H 			//0DE4 	11A0
		INCR 	20H, 1H 		//0DE5 	1AA0
		RRR 	20H, 0H 			//0DE6 	1C20
		RET 					//0DE7 	1008
		LDR 	22H, 0H 			//0DE8 	1822
		IORWR 	21H, 0H 		//0DE9 	1421
		IORWR 	20H, 0H 		//0DEA 	1420
		BTSC 	3H, 2H 			//0DEB 	2903
		RET 					//0DEC 	1008
		LDWI 	80H 			//0DED 	0080
		XORWR 	22H, 1H 		//0DEE 	16A2
		RET 					//0DEF 	1008
		LDR 	49H, 0H 			//0DF0 	1849
		MOVLB 	1H 			//0DF1 	1021
		STR 	6AH 			//0DF2 	10EA
		LDWI 	0H 			//0DF3 	0000
		CLRF 	6BH 			//0DF4 	11EB
		LSLF 	6AH, 1H 		//0DF5 	05EA
		RLR 	6BH, 1H 			//0DF6 	1DEB
		LSLF 	6AH, 1H 		//0DF7 	05EA
		RLR 	6BH, 1H 			//0DF8 	1DEB
		ADDWR 	6AH, 0H 		//0DF9 	176A
		STR 	4H 			//0DFA 	1084
		LDWI 	A0H 			//0DFB 	00A0
		ADDWFC 	6BH, 0H 		//0DFC 	0D6B
		STR 	5H 			//0DFD 	1085
		MOVIW 	0H[0] 			//0DFE 	0F00
		RET 					//0DFF 	1008
		STR 	20H 			//0E00 	10A0
		MOVIW 	1H[0] 			//0E01 	0F01
		STR 	21H 			//0E02 	10A1
		MOVIW 	2H[0] 			//0E03 	0F02
		STR 	22H 			//0E04 	10A2
		MOVIW 	3H[0] 			//0E05 	0F03
		STR 	23H 			//0E06 	10A3
		MOVLB 	2H 			//0E07 	1022
		LDR 	3DH, 0H 			//0E08 	183D
		MOVLB 	1H 			//0E09 	1021
		STR 	27H 			//0E0A 	10A7
		MOVLB 	2H 			//0E0B 	1022
		LDR 	3CH, 0H 			//0E0C 	183C
		MOVLB 	1H 			//0E0D 	1021
		STR 	26H 			//0E0E 	10A6
		MOVLB 	2H 			//0E0F 	1022
		LDR 	3BH, 0H 			//0E10 	183B
		MOVLB 	1H 			//0E11 	1021
		STR 	25H 			//0E12 	10A5
		MOVLB 	2H 			//0E13 	1022
		LDR 	3AH, 0H 			//0E14 	183A
		MOVLB 	1H 			//0E15 	1021
		STR 	24H 			//0E16 	10A4
		RET 					//0E17 	1008
		LDR 	23H, 0H 			//0E18 	1823
		MOVLB 	2H 			//0E19 	1022
		STR 	39H 			//0E1A 	10B9
		MOVLB 	1H 			//0E1B 	1021
		LDR 	22H, 0H 			//0E1C 	1822
		MOVLB 	2H 			//0E1D 	1022
		STR 	38H 			//0E1E 	10B8
		MOVLB 	1H 			//0E1F 	1021
		LDR 	21H, 0H 			//0E20 	1821
		MOVLB 	2H 			//0E21 	1022
		STR 	37H 			//0E22 	10B7
		MOVLB 	1H 			//0E23 	1021
		LDR 	20H, 0H 			//0E24 	1820
		MOVLB 	2H 			//0E25 	1022
		STR 	36H 			//0E26 	10B6
		LDWI 	AH 			//0E27 	000A
		MOVLB 	1H 			//0E28 	1021
		STR 	2DH 			//0E29 	10AD
		CLRF 	2EH 			//0E2A 	11AE
		CLRF 	2FH 			//0E2B 	11AF
		CLRF 	30H 			//0E2C 	11B0
		MOVLB 	2H 			//0E2D 	1022
		LDR 	39H, 0H 			//0E2E 	1839
		MOVLB 	1H 			//0E2F 	1021
		STR 	34H 			//0E30 	10B4
		MOVLB 	2H 			//0E31 	1022
		LDR 	38H, 0H 			//0E32 	1838
		MOVLB 	1H 			//0E33 	1021
		STR 	33H 			//0E34 	10B3
		MOVLB 	2H 			//0E35 	1022
		LDR 	37H, 0H 			//0E36 	1837
		MOVLB 	1H 			//0E37 	1021
		STR 	32H 			//0E38 	10B2
		MOVLB 	2H 			//0E39 	1022
		LDR 	36H, 0H 			//0E3A 	1836
		MOVLB 	1H 			//0E3B 	1021
		STR 	31H 			//0E3C 	10B1
		RET 					//0E3D 	1008
		LDR 	30H, 0H 			//0E3E 	1830
		MOVLB 	2H 			//0E3F 	1022
		STR 	39H 			//0E40 	10B9
		MOVLB 	1H 			//0E41 	1021
		LDR 	2FH, 0H 			//0E42 	182F
		MOVLB 	2H 			//0E43 	1022
		STR 	38H 			//0E44 	10B8
		MOVLB 	1H 			//0E45 	1021
		LDR 	2EH, 0H 			//0E46 	182E
		MOVLB 	2H 			//0E47 	1022
		STR 	37H 			//0E48 	10B7
		MOVLB 	1H 			//0E49 	1021
		LDR 	2DH, 0H 			//0E4A 	182D
		MOVLB 	2H 			//0E4B 	1022
		STR 	36H 			//0E4C 	10B6
		ADDWI 	30H 			//0E4D 	0E30
		MOVLB 	1H 			//0E4E 	1021
		STR 	6AH 			//0E4F 	10EA
		MOVLB 	2H 			//0E50 	1022
		LDR 	20H, 0H 			//0E51 	1820
		STR 	6H 			//0E52 	1086
		LDR 	21H, 0H 			//0E53 	1821
		STR 	7H 			//0E54 	1087
		MOVLB 	1H 			//0E55 	1021
		LDR 	6AH, 0H 			//0E56 	186A
		RET 					//0E57 	1008
		LDR 	20H, 0H 			//0E58 	1820
		STR 	6H 			//0E59 	1086
		LDR 	21H, 0H 			//0E5A 	1821
		STR 	7H 			//0E5B 	1087
		LDWI 	30H 			//0E5C 	0030
		STR 	1H 			//0E5D 	1081
		INCR 	20H, 1H 		//0E5E 	1AA0
		BTSC 	3H, 2H 			//0E5F 	2903
		INCR 	21H, 1H 		//0E60 	1AA1
		RETW 	FFH 			//0E61 	04FF
		LDR 	23H, 0H 			//0E62 	1823
		MOVLB 	1H 			//0E63 	1021
		STR 	6BH 			//0E64 	10EB
		MOVLB 	2H 			//0E65 	1022
		LDR 	22H, 0H 			//0E66 	1822
		MOVLB 	1H 			//0E67 	1021
		STR 	6AH 			//0E68 	10EA
		MOVLB 	2H 			//0E69 	1022
		INCR 	22H, 1H 		//0E6A 	1AA2
		BTSC 	3H, 2H 			//0E6B 	2903
		INCR 	23H, 1H 		//0E6C 	1AA3
		MOVLB 	1H 			//0E6D 	1021
		LDR 	6AH, 0H 			//0E6E 	186A
		STR 	4H 			//0E6F 	1084
		LDR 	6BH, 0H 			//0E70 	186B
		STR 	5H 			//0E71 	1085
		LDR 	0H, 0H 			//0E72 	1800
		MOVLB 	2H 			//0E73 	1022
		STR 	49H 			//0E74 	10C9
		RET 					//0E75 	1008
		LDR 	36H, 0H 			//0E76 	1836
		MOVLB 	1H 			//0E77 	1021
		STR 	32H 			//0E78 	10B2
		MOVLB 	2H 			//0E79 	1022
		LDR 	37H, 0H 			//0E7A 	1837
		MOVLB 	1H 			//0E7B 	1021
		STR 	33H 			//0E7C 	10B3
		MOVLB 	2H 			//0E7D 	1022
		LDR 	38H, 0H 			//0E7E 	1838
		MOVLB 	1H 			//0E7F 	1021
		STR 	34H 			//0E80 	10B4
		RET 					//0E81 	1008
		LDR 	55H, 0H 			//0E82 	1855
		MOVLB 	2H 			//0E83 	1022
		STR 	36H 			//0E84 	10B6
		MOVLB 	1H 			//0E85 	1021
		LDR 	56H, 0H 			//0E86 	1856
		MOVLB 	2H 			//0E87 	1022
		STR 	37H 			//0E88 	10B7
		MOVLB 	1H 			//0E89 	1021
		LDR 	57H, 0H 			//0E8A 	1857
		MOVLB 	2H 			//0E8B 	1022
		STR 	38H 			//0E8C 	10B8
		LDR 	44H, 0H 			//0E8D 	1844
		MOVLB 	1H 			//0E8E 	1021
		RET 					//0E8F 	1008
		LDR 	60H, 0H 			//0E90 	1860
		MOVLB 	2H 			//0E91 	1022
		STR 	3DH 			//0E92 	10BD
		MOVLB 	1H 			//0E93 	1021
		LDR 	5FH, 0H 			//0E94 	185F
		MOVLB 	2H 			//0E95 	1022
		STR 	3CH 			//0E96 	10BC
		MOVLB 	1H 			//0E97 	1021
		LDR 	5EH, 0H 			//0E98 	185E
		MOVLB 	2H 			//0E99 	1022
		STR 	3BH 			//0E9A 	10BB
		MOVLB 	1H 			//0E9B 	1021
		LDR 	5DH, 0H 			//0E9C 	185D
		RET 					//0E9D 	1008
		XORWI 	80H 			//0E9E 	0A80
		MOVLB 	1H 			//0E9F 	1021
		STR 	6AH 			//0EA0 	10EA
		LDWI 	80H 			//0EA1 	0080
		SUBWR 	6AH, 0H 		//0EA2 	126A
		RET 					//0EA3 	1008
		LDR 	22H, 0H 			//0EA4 	1822
		STR 	4H 			//0EA5 	1084
		LDR 	23H, 0H 			//0EA6 	1823
		STR 	5H 			//0EA7 	1085
		LDR 	0H, 0H 			//0EA8 	1800
		RET 					//0EA9 	1008
		LDR 	44H, 0H 			//0EAA 	1844
		MOVLB 	1H 			//0EAB 	1021
		STR 	5DH 			//0EAC 	10DD
		MOVLB 	2H 			//0EAD 	1022
		LDR 	45H, 0H 			//0EAE 	1845
		MOVLB 	1H 			//0EAF 	1021
		STR 	5EH 			//0EB0 	10DE
		MOVLB 	2H 			//0EB1 	1022
		LDR 	46H, 0H 			//0EB2 	1846
		MOVLB 	1H 			//0EB3 	1021
		STR 	5FH 			//0EB4 	10DF
		RET 					//0EB5 	1008
		MOVLB 	1H 			//0EB6 	1021
		STR 	6AH 			//0EB7 	10EA
		CLRF 	6BH 			//0EB8 	11EB
		BTSC 	6AH, 7H 		//0EB9 	2BEA
		DECR 	6BH, 1H 		//0EBA 	13EB
		MOVLB 	2H 			//0EBB 	1022
		RET 					//0EBC 	1008
		STR 	1H 			//0EBD 	1081
		INCR 	20H, 1H 		//0EBE 	1AA0
		BTSC 	3H, 2H 			//0EBF 	2903
		INCR 	21H, 1H 		//0EC0 	1AA1
		LDWI 	FFH 			//0EC1 	00FF
		ADDWR 	42H, 1H 		//0EC2 	17C2
		RET 					//0EC3 	1008
		LDR 	20H, 0H 			//0EC4 	1820
		STR 	6H 			//0EC5 	1086
		LDR 	21H, 0H 			//0EC6 	1821
		STR 	7H 			//0EC7 	1087
		RETW 	20H 			//0EC8 	0420
		LDR 	49H, 0H 			//0EC9 	1849
		MOVLB 	1H 			//0ECA 	1021
		STR 	6AH 			//0ECB 	10EA
		CLRF 	6BH 			//0ECC 	11EB
		BTSC 	6AH, 7H 		//0ECD 	2BEA
		DECR 	6BH, 1H 		//0ECE 	13EB
		LDR 	6BH, 0H 			//0ECF 	186B
		XORWI 	80H 			//0ED0 	0A80
		STR 	6CH 			//0ED1 	10EC
		MOVLB 	2H 			//0ED2 	1022
		RET 					//0ED3 	1008
		STR 	6CH 			//0ED4 	10EC
		MOVIW 	1H[0] 			//0ED5 	0F01
		STR 	6DH 			//0ED6 	10ED
		MOVIW 	2H[0] 			//0ED7 	0F02
		STR 	6EH 			//0ED8 	10EE
		MOVIW 	3H[0] 			//0ED9 	0F03
		STR 	6FH 			//0EDA 	10EF
		LDR 	6FH, 0H 			//0EDB 	186F
		MOVLB 	2H 			//0EDC 	1022
		SUBWR 	3DH, 0H 		//0EDD 	123D
		RET 					//0EDE 	1008
		STR 	46H 			//0EDF 	10C6
		MOVLB 	2H 			//0EE0 	1022
		LDR 	45H, 0H 			//0EE1 	1845
		MOVLB 	1H 			//0EE2 	1021
		STR 	47H 			//0EE3 	10C7
		MOVLB 	2H 			//0EE4 	1022
		LDR 	46H, 0H 			//0EE5 	1846
		MOVLB 	1H 			//0EE6 	1021
		STR 	48H 			//0EE7 	10C8
		RET 					//0EE8 	1008
		LDR 	20H, 0H 			//0EE9 	1820
		STR 	6H 			//0EEA 	1086
		LDR 	21H, 0H 			//0EEB 	1821
		STR 	7H 			//0EEC 	1087
		RETW 	2DH 			//0EED 	042D
		STR 	6H 			//0EEE 	1086
		LDWI 	1H 			//0EEF 	0001
		STR 	7H 			//0EF0 	1087
		MOVIW 	0H[1] 			//0EF1 	0F40
		MOVLB 	1H 			//0EF2 	1021
		STR 	6AH 			//0EF3 	10EA
		MOVIW 	1H[1] 			//0EF4 	0F41
		STR 	6BH 			//0EF5 	10EB
		RET 					//0EF6 	1008
		LDR 	5DH, 0H 			//0EF7 	185D
		STR 	61H 			//0EF8 	10E1
		LDR 	5EH, 0H 			//0EF9 	185E
		STR 	62H 			//0EFA 	10E2
		LDR 	5FH, 0H 			//0EFB 	185F
		STR 	63H 			//0EFC 	10E3
		RET 					//0EFD 	1008
		LDR 	20H, 0H 			//0EFE 	1820
		STR 	6H 			//0EFF 	1086
		LDR 	21H, 0H 			//0F00 	1821
		STR 	7H 			//0F01 	1087
		LDR 	49H, 0H 			//0F02 	1849
		RET 					//0F03 	1008
		MOVLB 	1H 			//0F04 	1021
		LDR 	6EH, 0H 			//0F05 	186E
		MOVLB 	2H 			//0F06 	1022
		SUBWR 	3CH, 0H 		//0F07 	123C
		RET 					//0F08 	1008
		MOVLB 	1H 			//0F09 	1021
		LDR 	6CH, 0H 			//0F0A 	186C
		MOVLB 	2H 			//0F0B 	1022
		SUBWR 	3AH, 0H 		//0F0C 	123A
		RET 					//0F0D 	1008
		MOVLB 	1H 			//0F0E 	1021
		LDR 	6DH, 0H 			//0F0F 	186D
		MOVLB 	2H 			//0F10 	1022
		SUBWR 	3BH, 0H 		//0F11 	123B
		RET 					//0F12 	1008
		LDR 	42H, 0H 			//0F13 	1842
		IORWR 	41H, 0H 		//0F14 	1441
		IORWR 	40H, 0H 		//0F15 	1440
		BTSC 	3H, 2H 			//0F16 	2903
		LJUMP 	71AH 			//0F17 	3F1A
		LDWI 	80H 			//0F18 	0080
		XORWR 	42H, 1H 		//0F19 	16C2
		LDR 	43H, 0H 			//0F1A 	1843
		STR 	34H 			//0F1B 	10B4
		LDR 	44H, 0H 			//0F1C 	1844
		STR 	35H 			//0F1D 	10B5
		LDR 	45H, 0H 			//0F1E 	1845
		STR 	36H 			//0F1F 	10B6
		LDR 	40H, 0H 			//0F20 	1840
		STR 	37H 			//0F21 	10B7
		LDR 	41H, 0H 			//0F22 	1841
		STR 	38H 			//0F23 	10B8
		LDR 	42H, 0H 			//0F24 	1842
		STR 	39H 			//0F25 	10B9
		LCALL 	72EH 			//0F26 	372E
		LDR 	34H, 0H 			//0F27 	1834
		STR 	40H 			//0F28 	10C0
		LDR 	35H, 0H 			//0F29 	1835
		STR 	41H 			//0F2A 	10C1
		LDR 	36H, 0H 			//0F2B 	1836
		STR 	42H 			//0F2C 	10C2
		RET 					//0F2D 	1008
		LDR 	34H, 0H 			//0F2E 	1834
		STR 	3AH 			//0F2F 	10BA
		LDR 	35H, 0H 			//0F30 	1835
		STR 	3BH 			//0F31 	10BB
		LDR 	36H, 0H 			//0F32 	1836
		STR 	3CH 			//0F33 	10BC
		BCR 	3H, 0H 			//0F34 	2003
		RLR 	3BH, 0H 			//0F35 	1D3B
		RLR 	3CH, 0H 			//0F36 	1D3C
		STR 	3FH 			//0F37 	10BF
		LDR 	37H, 0H 			//0F38 	1837
		STR 	3AH 			//0F39 	10BA
		LDR 	38H, 0H 			//0F3A 	1838
		STR 	3BH 			//0F3B 	10BB
		LDR 	39H, 0H 			//0F3C 	1839
		STR 	3CH 			//0F3D 	10BC
		BCR 	3H, 0H 			//0F3E 	2003
		RLR 	3BH, 0H 			//0F3F 	1D3B
		RLR 	3CH, 0H 			//0F40 	1D3C
		STR 	3EH 			//0F41 	10BE
		LDR 	3FH, 0H 			//0F42 	183F
		BTSC 	3H, 2H 			//0F43 	2903
		LJUMP 	751H 			//0F44 	3F51
		LDR 	3EH, 0H 			//0F45 	183E
		SUBWR 	3FH, 0H 		//0F46 	123F
		LDR 	3EH, 0H 			//0F47 	183E
		BTSC 	3H, 0H 			//0F48 	2803
		LJUMP 	759H 			//0F49 	3F59
		STR 	3AH 			//0F4A 	10BA
		LDR 	3FH, 0H 			//0F4B 	183F
		SUBWR 	3AH, 1H 		//0F4C 	12BA
		LDWI 	19H 			//0F4D 	0019
		SUBWR 	3AH, 0H 		//0F4E 	123A
		BTSS 	3H, 0H 			//0F4F 	2C03
		LJUMP 	758H 			//0F50 	3F58
		LDR 	37H, 0H 			//0F51 	1837
		STR 	34H 			//0F52 	10B4
		LDR 	38H, 0H 			//0F53 	1838
		STR 	35H 			//0F54 	10B5
		LDR 	39H, 0H 			//0F55 	1839
		STR 	36H 			//0F56 	10B6
		RET 					//0F57 	1008
		LDR 	3EH, 0H 			//0F58 	183E
		BTSC 	3H, 2H 			//0F59 	2903
		RET 					//0F5A 	1008
		LDR 	3FH, 0H 			//0F5B 	183F
		SUBWR 	3EH, 0H 		//0F5C 	123E
		BTSC 	3H, 0H 			//0F5D 	2803
		LJUMP 	767H 			//0F5E 	3F67
		LDR 	3FH, 0H 			//0F5F 	183F
		STR 	3AH 			//0F60 	10BA
		LDR 	3EH, 0H 			//0F61 	183E
		SUBWR 	3AH, 1H 		//0F62 	12BA
		LDWI 	19H 			//0F63 	0019
		SUBWR 	3AH, 0H 		//0F64 	123A
		BTSC 	3H, 0H 			//0F65 	2803
		RET 					//0F66 	1008
		LDWI 	6H 			//0F67 	0006
		STR 	3DH 			//0F68 	10BD
		BTSC 	36H, 7H 		//0F69 	2BB6
		BSR 	3DH, 7H 			//0F6A 	27BD
		BTSC 	39H, 7H 		//0F6B 	2BB9
		BSR 	3DH, 6H 			//0F6C 	273D
		BSR 	35H, 7H 			//0F6D 	27B5
		CLRF 	36H 			//0F6E 	11B6
		BSR 	38H, 7H 			//0F6F 	27B8
		CLRF 	39H 			//0F70 	11B9
		LDR 	3EH, 0H 			//0F71 	183E
		SUBWR 	3FH, 0H 		//0F72 	123F
		BTSC 	3H, 0H 			//0F73 	2803
		LJUMP 	78CH 			//0F74 	3F8C
		LSLF 	37H, 1H 		//0F75 	05B7
		RLR 	38H, 1H 			//0F76 	1DB8
		RLR 	39H, 1H 			//0F77 	1DB9
		DECR 	3EH, 1H 		//0F78 	13BE
		LDR 	3EH, 0H 			//0F79 	183E
		XORWR 	3FH, 0H 		//0F7A 	163F
		BTSC 	3H, 2H 			//0F7B 	2903
		LJUMP 	787H 			//0F7C 	3F87
		DECR 	3DH, 1H 		//0F7D 	13BD
		LDR 	3DH, 0H 			//0F7E 	183D
		ANDWI 	7H 			//0F7F 	0907
		BTSC 	3H, 2H 			//0F80 	2903
		LJUMP 	787H 			//0F81 	3F87
		LJUMP 	775H 			//0F82 	3F75
		LSRF 	36H, 1H 		//0F83 	06B6
		RRR 	35H, 1H 			//0F84 	1CB5
		RRR 	34H, 1H 			//0F85 	1CB4
		INCR 	3FH, 1H 		//0F86 	1ABF
		LDR 	3FH, 0H 			//0F87 	183F
		XORWR 	3EH, 0H 		//0F88 	163E
		BTSC 	3H, 2H 			//0F89 	2903
		LJUMP 	7A6H 			//0F8A 	3FA6
		LJUMP 	783H 			//0F8B 	3F83
		LDR 	3FH, 0H 			//0F8C 	183F
		SUBWR 	3EH, 0H 		//0F8D 	123E
		BTSC 	3H, 0H 			//0F8E 	2803
		LJUMP 	7A6H 			//0F8F 	3FA6
		LSLF 	34H, 1H 		//0F90 	05B4
		RLR 	35H, 1H 			//0F91 	1DB5
		RLR 	36H, 1H 			//0F92 	1DB6
		DECR 	3FH, 1H 		//0F93 	13BF
		LDR 	3EH, 0H 			//0F94 	183E
		XORWR 	3FH, 0H 		//0F95 	163F
		BTSC 	3H, 2H 			//0F96 	2903
		LJUMP 	7A2H 			//0F97 	3FA2
		DECR 	3DH, 1H 		//0F98 	13BD
		LDR 	3DH, 0H 			//0F99 	183D
		ANDWI 	7H 			//0F9A 	0907
		BTSC 	3H, 2H 			//0F9B 	2903
		LJUMP 	7A2H 			//0F9C 	3FA2
		LJUMP 	790H 			//0F9D 	3F90
		LSRF 	39H, 1H 		//0F9E 	06B9
		RRR 	38H, 1H 			//0F9F 	1CB8
		RRR 	37H, 1H 			//0FA0 	1CB7
		INCR 	3EH, 1H 		//0FA1 	1ABE
		LDR 	3FH, 0H 			//0FA2 	183F
		XORWR 	3EH, 0H 		//0FA3 	163E
		BTSS 	3H, 2H 			//0FA4 	2D03
		LJUMP 	79EH 			//0FA5 	3F9E
		BTSS 	3DH, 7H 		//0FA6 	2FBD
		LJUMP 	7B1H 			//0FA7 	3FB1
		LDWI 	FFH 			//0FA8 	00FF
		XORWR 	34H, 1H 		//0FA9 	16B4
		XORWR 	35H, 1H 		//0FAA 	16B5
		XORWR 	36H, 1H 		//0FAB 	16B6
		INCR 	34H, 1H 		//0FAC 	1AB4
		BTSC 	3H, 2H 			//0FAD 	2903
		INCR 	35H, 1H 		//0FAE 	1AB5
		BTSC 	3H, 2H 			//0FAF 	2903
		INCR 	36H, 1H 		//0FB0 	1AB6
		BTSS 	3DH, 6H 		//0FB1 	2F3D
		LJUMP 	7B9H 			//0FB2 	3FB9
		LCALL 	7DCH 			//0FB3 	37DC
		MOVLP 	8H 			//0FB4 	0188
		BTSC 	3H, 2H 			//0FB5 	2903
		INCR 	38H, 1H 		//0FB6 	1AB8
		BTSC 	3H, 2H 			//0FB7 	2903
		INCR 	39H, 1H 		//0FB8 	1AB9
		CLRF 	3DH 			//0FB9 	11BD
		LDR 	34H, 0H 			//0FBA 	1834
		ADDWR 	37H, 1H 		//0FBB 	17B7
		LDR 	35H, 0H 			//0FBC 	1835
		ADDWFC 	38H, 1H 		//0FBD 	0DB8
		LDR 	36H, 0H 			//0FBE 	1836
		ADDWFC 	39H, 1H 		//0FBF 	0DB9
		BTSS 	39H, 7H 		//0FC0 	2FB9
		LJUMP 	7C9H 			//0FC1 	3FC9
		LCALL 	7DCH 			//0FC2 	37DC
		BTSC 	3H, 2H 			//0FC3 	2903
		INCR 	38H, 1H 		//0FC4 	1AB8
		BTSC 	3H, 2H 			//0FC5 	2903
		INCR 	39H, 1H 		//0FC6 	1AB9
		CLRF 	3DH 			//0FC7 	11BD
		INCR 	3DH, 1H 		//0FC8 	1ABD
		LDR 	37H, 0H 			//0FC9 	1837
		STR 	20H 			//0FCA 	10A0
		LDR 	38H, 0H 			//0FCB 	1838
		STR 	21H 			//0FCC 	10A1
		LDR 	39H, 0H 			//0FCD 	1839
		STR 	22H 			//0FCE 	10A2
		LDR 	3FH, 0H 			//0FCF 	183F
		STR 	23H 			//0FD0 	10A3
		LDR 	3DH, 0H 			//0FD1 	183D
		STR 	24H 			//0FD2 	10A4
		MOVLP 	1EH 			//0FD3 	019E
		LCALL 	61DH 			//0FD4 	361D
		LDR 	20H, 0H 			//0FD5 	1820
		STR 	34H 			//0FD6 	10B4
		LDR 	21H, 0H 			//0FD7 	1821
		STR 	35H 			//0FD8 	10B5
		LDR 	22H, 0H 			//0FD9 	1822
		STR 	36H 			//0FDA 	10B6
		RET 					//0FDB 	1008
		LDWI 	FFH 			//0FDC 	00FF
		XORWR 	37H, 1H 		//0FDD 	16B7
		XORWR 	38H, 1H 		//0FDE 	16B8
		XORWR 	39H, 1H 		//0FDF 	16B9
		INCR 	37H, 1H 		//0FE0 	1AB7
		RET 					//0FE1 	1008
		LDWI 	8EH 			//0FE2 	008E
		STR 	2CH 			//0FE3 	10AC
		LDWI 	FFH 			//0FE4 	00FF
		ANDWR 	2BH, 0H 		//0FE5 	152B
		BTSC 	3H, 2H 			//0FE6 	2903
		LJUMP 	7EEH 			//0FE7 	3FEE
		LSRF 	2BH, 1H 		//0FE8 	06AB
		RRR 	2AH, 1H 			//0FE9 	1CAA
		RRR 	29H, 1H 			//0FEA 	1CA9
		RRR 	28H, 1H 			//0FEB 	1CA8
		INCR 	2CH, 1H 		//0FEC 	1AAC
		LJUMP 	7E4H 			//0FED 	3FE4
		LDR 	28H, 0H 			//0FEE 	1828
		STR 	20H 			//0FEF 	10A0
		LDR 	29H, 0H 			//0FF0 	1829
		STR 	21H 			//0FF1 	10A1
		LDR 	2AH, 0H 			//0FF2 	182A
		STR 	22H 			//0FF3 	10A2
		LDR 	2CH, 0H 			//0FF4 	182C
		STR 	23H 			//0FF5 	10A3
		CLRF 	24H 			//0FF6 	11A4
		MOVLP 	1EH 			//0FF7 	019E
		LCALL 	61DH 			//0FF8 	361D
		ORG		0FF9H
		LDR 	20H, 0H 			//0FF9 	1820
		STR 	28H 			//0FFA 	10A8
		LDR 	21H, 0H 			//0FFB 	1821
		STR 	29H 			//0FFC 	10A9
		LDR 	22H, 0H 			//0FFD 	1822
		STR 	2AH 			//0FFE 	10AA
		RET 					//0FFF 	1008
		ORG		1002H

		//;NFB.C: 408: OP0CR0 = 0B00111011;
		LDWI 	3BH 			//1002 	003B
		MOVLB 	1FH 			//1003 	103F
		STR 	FH 			//1004 	108F

		//;NFB.C: 409: OP0CFG = 0B00010001;
		LDWI 	11H 			//1005 	0011
		STR 	11H 			//1006 	1091

		//;NFB.C: 410: AN4SELB = 1;
		MOVLB 	8H 			//1007 	1028
		BSR 	1AH, 2H 			//1008 	251A
		RET 					//1009 	1008

		//;NFB.C: 266: EPS0=0B00000000;
		MOVLB 	2H 			//100A 	1022
		CLRF 	18H 			//100B 	1198

		//;NFB.C: 267: EPS1=0B00000001;
		LDWI 	1H 			//100C 	0001
		STR 	19H 			//100D 	1099

		//;NFB.C: 268: ITYPE0=0B00000000;
		CLRF 	1EH 			//100E 	119E

		//;NFB.C: 269: ITYPE1=0B00010010;
		LDWI 	12H 			//100F 	0012
		STR 	1FH 			//1010 	109F

		//;NFB.C: 270: EPIE0=0B01010000;
		LDWI 	50H 			//1011 	0050
		MOVLB 	1H 			//1012 	1021
		STR 	14H 			//1013 	1094

		//;NFB.C: 271: INTCON=0B11000000;
		LDWI 	C0H 			//1014 	00C0
		STR 	BH 			//1015 	108B
		RET 					//1016 	1008

		//;NFB.C: 337: PCKEN|=0B00000100;
		MOVLB 	1H 			//1017 	1021
		BSR 	1AH, 2H 			//1018 	251A

		//;NFB.C: 338: CKOCON=0B00100000;
		LDWI 	20H 			//1019 	0020
		STR 	15H 			//101A 	1095

		//;NFB.C: 339: TCKSRC=0B00000000;
		MOVLB 	6H 			//101B 	1026
		CLRF 	1FH 			//101C 	119F

		//;NFB.C: 341: TIM2CR1=0B10000101;
		LDWI 	85H 			//101D 	0085
		STR 	CH 			//101E 	108C

		//;NFB.C: 343: TIM2IER=0B00000001;
		LDWI 	1H 			//101F 	0001
		STR 	DH 			//1020 	108D

		//;NFB.C: 345: TIM2ARRH=0x3e;
		LDWI 	3EH 			//1021 	003E
		STR 	19H 			//1022 	1099

		//;NFB.C: 346: TIM2ARRL=0x80;
		LDWI 	80H 			//1023 	0080
		STR 	1AH 			//1024 	109A
		RET 					//1025 	1008
		STR 	75H 			//1026 	10F5
		STR 	74H 			//1027 	10F4
		LDWI 	1H 			//1028 	0001
		SUBWR 	72H, 1H 		//1029 	12F2
		LDWI 	0H 			//102A 	0000
		SUBWFB 	73H, 1H 		//102B 	0BF3
		INCRSZ 	72H, 0H 		//102C 	1F72
		LJUMP 	31H 			//102D 	3831
		INCR 	73H, 0H 		//102E 	1A73
		BTSC 	3H, 2H 			//102F 	2903
		RET 					//1030 	1008
		LDR 	74H, 0H 			//1031 	1874
		STR 	6H 			//1032 	1086
		LDWI 	3H 			//1033 	0003
		STR 	7H 			//1034 	1087
		LDR 	70H, 0H 			//1035 	1870
		STR 	1H 			//1036 	1081
		INCR 	74H, 1H 		//1037 	1AF4
		LJUMP 	28H 			//1038 	3828

		//;NFB.C: 357: PCKEN|=0B00000001;
		BSR 	1AH, 0H 			//1039 	241A

		//;NFB.C: 359: ANSELA|=0B00010111;
		LDWI 	17H 			//103A 	0017
		MOVLB 	3H 			//103B 	1023
		IORWR 	17H, 1H 		//103C 	1497

		//;NFB.C: 362: ADCON0=0B00000000;
		MOVLB 	1H 			//103D 	1021
		CLRF 	1DH 			//103E 	119D

		//;NFB.C: 368: ADCON1=0B11100100;
		LDWI 	E4H 			//103F 	00E4
		STR 	1EH 			//1040 	109E

		//;NFB.C: 374: ADCON2=0B01000000;
		LDWI 	40H 			//1041 	0040
		STR 	1FH 			//1042 	109F

		//;NFB.C: 377: ADCON3=0B00000000;
		MOVLB 	8H 			//1043 	1028
		CLRF 	1AH 			//1044 	119A

		//;NFB.C: 378: ADDLY=0B00000000;
		MOVLB 	0H 			//1045 	1020
		CLRF 	1FH 			//1046 	119F

		//;NFB.C: 379: ADCMPH=0B00000000;
		MOVLB 	8H 			//1047 	1028
		CLRF 	1BH 			//1048 	119B

		//;NFB.C: 380: ADON=1;
		MOVLB 	1H 			//1049 	1021
		BSR 	1DH, 0H 			//104A 	241D
		RET 					//104B 	1008

		//;NFB.C: 246: AFP0 = 0B01000000;
		LDWI 	40H 			//104C 	0040
		MOVLB 	3H 			//104D 	1023
		STR 	1EH 			//104E 	109E

		//;NFB.C: 247: AFP1 = 0B01000000;
		STR 	1FH 			//104F 	109F

		//;NFB.C: 248: PCKEN|=0B00100000;
		MOVLB 	1H 			//1050 	1021
		BSR 	1AH, 5H 			//1051 	269A

		//;NFB.C: 249: UR1IER=0B00000001;
		LDWI 	1H 			//1052 	0001
		MOVLB 	9H 			//1053 	1029
		STR 	EH 			//1054 	108E

		//;NFB.C: 250: UR1LCR=0B00000001;
		STR 	FH 			//1055 	108F

		//;NFB.C: 251: UR1MCR=0B00011000;
		LDWI 	18H 			//1056 	0018
		STR 	11H 			//1057 	1091

		//;NFB.C: 253: UR1DLL=104;
		LDWI 	68H 			//1058 	0068
		STR 	14H 			//1059 	1094

		//;NFB.C: 254: UR1DLH=0;
		CLRF 	15H 			//105A 	1195

		//;NFB.C: 255: UR1TCF=1;
		BSR 	1CH, 0H 			//105B 	241C

		//;NFB.C: 256: INTCON=0B11000000;
		LDWI 	C0H 			//105C 	00C0
		STR 	BH 			//105D 	108B
		RET 					//105E 	1008

		//;NFB.C: 690: }
		//;NFB.C: 691: HTVI_ = GET_ADC_DATA(4);
		LDWI 	4H 			//105F 	0004
		MOVLP 	1AH 			//1060 	019A
		LCALL 	211H 			//1061 	3211
		MOVLP 	10H 			//1062 	0190
		MOVLP 	18H 			//1063 	0198
		LCALL 	9DH 			//1064 	309D
		MOVLP 	10H 			//1065 	0190

		//;NFB.C: 692: for(int i=0;i<4;i++){
		CLRF 	4DH 			//1066 	11CD
		CLRF 	4EH 			//1067 	11CE
		LDR 	4EH, 0H 			//1068 	184E
		MOVLP 	18H 			//1069 	0198
		LCALL 	23H 			//106A 	3023
		MOVLP 	10H 			//106B 	0190
		BTSS 	3H, 2H 			//106C 	2D03
		LJUMP 	71H 			//106D 	3871
		LDWI 	4H 			//106E 	0004
		MOVLB 	5H 			//106F 	1025
		SUBWR 	4DH, 0H 		//1070 	124D
		BTSC 	3H, 0H 			//1071 	2803
		LJUMP 	88H 			//1072 	3888

		//;NFB.C: 693: HTVI_ = (HTVI_+GET_ADC_DATA(4))/2;
		LDWI 	4H 			//1073 	0004
		MOVLP 	1AH 			//1074 	019A
		LCALL 	211H 			//1075 	3211
		MOVLP 	10H 			//1076 	0190
		MOVLB 	5H 			//1077 	1025
		LDR 	68H, 0H 			//1078 	1868
		MOVLB 	2H 			//1079 	1022
		ADDWR 	20H, 0H 		//107A 	1720
		STR 	4AH 			//107B 	10CA
		MOVLB 	5H 			//107C 	1025
		LDR 	69H, 0H 			//107D 	1869
		MOVLP 	7H 			//107E 	0187
		LCALL 	77DH 			//107F 	377D
		MOVLP 	10H 			//1080 	0190
		MOVLP 	18H 			//1081 	0198
		LCALL 	D9H 			//1082 	30D9
		MOVLP 	10H 			//1083 	0190
		INCR 	4DH, 1H 		//1084 	1ACD
		BTSC 	3H, 2H 			//1085 	2903
		INCR 	4EH, 1H 		//1086 	1ACE
		LJUMP 	68H 			//1087 	3868

		//;NFB.C: 694: }
		//;NFB.C: 695: HTVP = (float)HTVP_*2/4096;
		MOVLP 	18H 			//1088 	0198
		LCALL 	64H 			//1089 	3064
		MOVLP 	10H 			//108A 	0190
		MOVLP 	18H 			//108B 	0198
		LCALL 	37H 			//108C 	3037
		MOVLP 	10H 			//108D 	0190
		MOVLP 	19H 			//108E 	0199
		LCALL 	109H 			//108F 	3109
		MOVLP 	10H 			//1090 	0190
		MOVLP 	18H 			//1091 	0198
		LCALL 	1CH 			//1092 	301C
		MOVLP 	10H 			//1093 	0190
		MOVLP 	1DH 			//1094 	019D
		LCALL 	582H 			//1095 	3582
		MOVLP 	10H 			//1096 	0190
		MOVLP 	7H 			//1097 	0187
		LCALL 	743H 			//1098 	3743
		MOVLP 	10H 			//1099 	0190
		MOVLP 	1EH 			//109A 	019E
		LCALL 	65BH 			//109B 	365B
		MOVLP 	10H 			//109C 	0190

		//;NFB.C: 696: HTVN = (float)HTVN_*2/4096;
		MOVLP 	6H 			//109D 	0186
		LCALL 	6F4H 			//109E 	36F4
		MOVLP 	10H 			//109F 	0190
		MOVLP 	19H 			//10A0 	0199
		LCALL 	109H 			//10A1 	3109
		MOVLP 	10H 			//10A2 	0190
		MOVLP 	18H 			//10A3 	0198
		LCALL 	1CH 			//10A4 	301C
		MOVLP 	10H 			//10A5 	0190
		MOVLP 	1DH 			//10A6 	019D
		LCALL 	582H 			//10A7 	3582
		MOVLP 	10H 			//10A8 	0190
		MOVLP 	7H 			//10A9 	0187
		LCALL 	743H 			//10AA 	3743
		MOVLP 	10H 			//10AB 	0190
		MOVLP 	1EH 			//10AC 	019E
		LCALL 	65BH 			//10AD 	365B
		MOVLP 	10H 			//10AE 	0190

		//;NFB.C: 697: HTVI = (float)HTVI_*2/4096;
		MOVLP 	7H 			//10AF 	0187
		LCALL 	71BH 			//10B0 	371B
		MOVLP 	10H 			//10B1 	0190
		MOVLP 	19H 			//10B2 	0199
		LCALL 	109H 			//10B3 	3109
		MOVLP 	10H 			//10B4 	0190
		MOVLP 	18H 			//10B5 	0198
		LCALL 	1CH 			//10B6 	301C
		MOVLP 	10H 			//10B7 	0190
		MOVLP 	1DH 			//10B8 	019D
		LCALL 	582H 			//10B9 	3582
		MOVLP 	10H 			//10BA 	0190
		MOVLP 	7H 			//10BB 	0187
		LCALL 	743H 			//10BC 	3743
		MOVLP 	10H 			//10BD 	0190
		MOVLP 	1EH 			//10BE 	019E
		LCALL 	65BH 			//10BF 	365B
		MOVLP 	10H 			//10C0 	0190

		//;NFB.C: 698: I = HTVI/0.01/39;
		MOVLP 	6H 			//10C1 	0186
		LCALL 	6D5H 			//10C2 	36D5
		MOVLP 	10H 			//10C3 	0190
		MOVLP 	1EH 			//10C4 	019E
		LCALL 	65BH 			//10C5 	365B
		MOVLP 	10H 			//10C6 	0190
		MOVLP 	7H 			//10C7 	0187
		LCALL 	712H 			//10C8 	3712
		MOVLP 	10H 			//10C9 	0190

		//;NFB.C: 698: I = HTVI/0.01/39;
		MOVLP 	7H 			//10CA 	0187
		LCALL 	75FH 			//10CB 	375F
		MOVLP 	10H 			//10CC 	0190
		MOVLP 	1EH 			//10CD 	019E
		LCALL 	65BH 			//10CE 	365B
		MOVLP 	10H 			//10CF 	0190

		//;NFB.C: 699: V = (HTVP-HTVN)*2;
		MOVLP 	6H 			//10D0 	0186
		LCALL 	618H 			//10D1 	3618
		MOVLP 	10H 			//10D2 	0190
		MOVLP 	FH 			//10D3 	018F
		LCALL 	713H 			//10D4 	3713
		MOVLP 	10H 			//10D5 	0190
		MOVLP 	18H 			//10D6 	0198
		LCALL 	B4H 			//10D7 	30B4
		MOVLP 	10H 			//10D8 	0190
		MOVLP 	1DH 			//10D9 	019D
		LCALL 	582H 			//10DA 	3582
		MOVLP 	10H 			//10DB 	0190

		//;NFB.C: 700: R = V/I;
		MOVLP 	6H 			//10DC 	0186
		LCALL 	665H 			//10DD 	3665
		MOVLP 	10H 			//10DE 	0190
		MOVLP 	1EH 			//10DF 	019E
		LCALL 	65BH 			//10E0 	365B
		MOVLP 	10H 			//10E1 	0190

		//;NFB.C: 701: T = (((R/R0)-1)/(T0/1000000))+Tr;
		MOVLP 	6H 			//10E2 	0186
		LCALL 	6B6H 			//10E3 	36B6
		MOVLP 	10H 			//10E4 	0190
		MOVLP 	1EH 			//10E5 	019E
		LCALL 	65BH 			//10E6 	365B
		MOVLP 	10H 			//10E7 	0190
		MOVLP 	7H 			//10E8 	0187
		LCALL 	712H 			//10E9 	3712
		MOVLP 	10H 			//10EA 	0190

		//;NFB.C: 701: T = (((R/R0)-1)/(T0/1000000))+Tr;
		MOVLP 	6H 			//10EB 	0186
		LCALL 	694H 			//10EC 	3694
		MOVLP 	10H 			//10ED 	0190
		MOVLP 	1EH 			//10EE 	019E
		LCALL 	65BH 			//10EF 	365B
		MOVLP 	10H 			//10F0 	0190
		MOVLP 	18H 			//10F1 	0198
		LCALL 	7DH 			//10F2 	307D
		MOVLP 	10H 			//10F3 	0190
		MOVLP 	FH 			//10F4 	018F
		LCALL 	72EH 			//10F5 	372E
		MOVLP 	10H 			//10F6 	0190

		//;NFB.C: 701: T = (((R/R0)-1)/(T0/1000000))+Tr;
		LCALL 	7D0H 			//10F7 	37D0
		MOVLP 	1EH 			//10F8 	019E
		LCALL 	65BH 			//10F9 	365B
		MOVLP 	10H 			//10FA 	0190
		MOVLP 	18H 			//10FB 	0198
		LCALL 	7DH 			//10FC 	307D
		MOVLP 	10H 			//10FD 	0190
		MOVLP 	FH 			//10FE 	018F
		LCALL 	72EH 			//10FF 	372E
		MOVLP 	10H 			//1100 	0190
		MOVLP 	18H 			//1101 	0198
		LCALL 	71H 			//1102 	3071
		MOVLP 	10H 			//1103 	0190

		//;NFB.C: 702: }
		//;NFB.C: 703: if(HTtimecnt>=timeleft){
		MOVLB 	6H 			//1104 	1026
		LDR 	46H, 0H 			//1105 	1846
		MOVLB 	2H 			//1106 	1022
		STR 	4AH 			//1107 	10CA
		MOVLB 	6H 			//1108 	1026
		LDR 	47H, 0H 			//1109 	1847
		MOVLP 	7H 			//110A 	0187
		LCALL 	739H 			//110B 	3739
		MOVLP 	10H 			//110C 	0190
		SUBWR 	5CH, 0H 		//110D 	125C
		BTSS 	3H, 2H 			//110E 	2D03
		LJUMP 	11DH 			//110F 	391D
		MOVLP 	18H 			//1110 	0198
		LCALL 	FFH 			//1111 	30FF
		MOVLP 	10H 			//1112 	0190
		BTSS 	3H, 2H 			//1113 	2D03
		LJUMP 	11DH 			//1114 	391D
		MOVLP 	18H 			//1115 	0198
		LCALL 	FAH 			//1116 	30FA
		MOVLP 	10H 			//1117 	0190
		BTSS 	3H, 2H 			//1118 	2D03
		LJUMP 	11DH 			//1119 	391D
		MOVLP 	19H 			//111A 	0199
		LCALL 	104H 			//111B 	3104
		MOVLP 	10H 			//111C 	0190
		BTSS 	3H, 0H 			//111D 	2C03
		LJUMP 	146H 			//111E 	3946

		//;NFB.C: 704: PC1 = ~PC1;
		LDWI 	2H 			//111F 	0002
		MOVLB 	0H 			//1120 	1020
		XORWR 	EH, 1H 		//1121 	168E

		//;NFB.C: 705: char msg[10];
		//;NFB.C: 706: sprintf(msg,"T:%0.1f\r\n",T);
		LDWI 	52H 			//1122 	0052
		MOVLB 	2H 			//1123 	1022
		STR 	20H 			//1124 	10A0
		LDWI 	1H 			//1125 	0001
		MOVLP 	7H 			//1126 	0187
		LCALL 	7AAH 			//1127 	37AA
		MOVLP 	10H 			//1128 	0190
		MOVLP 	7H 			//1129 	0187
		LCALL 	74AH 			//112A 	374A
		MOVLP 	10H 			//112B 	0190
		MOVLP 	8H 			//112C 	0188
		LCALL 	31H 			//112D 	3031
		MOVLP 	10H 			//112E 	0190

		//;NFB.C: 707: send(msg,strlen(msg));
		LDWI 	52H 			//112F 	0052
		STR 	24H 			//1130 	10A4
		LDWI 	1H 			//1131 	0001
		STR 	25H 			//1132 	10A5
		LDWI 	52H 			//1133 	0052
		MOVLB 	1H 			//1134 	1021
		STR 	20H 			//1135 	10A0
		LDWI 	1H 			//1136 	0001
		STR 	21H 			//1137 	10A1
		MOVLP 	7H 			//1138 	0187
		LCALL 	7E4H 			//1139 	37E4
		MOVLP 	10H 			//113A 	0190
		MOVLP 	7H 			//113B 	0187
		LCALL 	775H 			//113C 	3775
		MOVLP 	10H 			//113D 	0190
		MOVLP 	19H 			//113E 	0199
		LCALL 	119H 			//113F 	3119
		MOVLP 	10H 			//1140 	0190

		//;NFB.C: 708: timeleft += 20;
		LDWI 	14H 			//1141 	0014
		MOVLB 	6H 			//1142 	1026
		ADDWR 	46H, 1H 		//1143 	17C6
		BTSC 	3H, 0H 			//1144 	2803
		INCR 	47H, 1H 		//1145 	1AC7

		//;NFB.C: 709: }
		//;NFB.C: 710: if(t1>=30){
		MOVLB 	5H 			//1146 	1025
		LDR 	67H, 0H 			//1147 	1867
		MOVLP 	18H 			//1148 	0198
		LCALL 	23H 			//1149 	3023
		MOVLP 	10H 			//114A 	0190
		BTSS 	3H, 2H 			//114B 	2D03
		LJUMP 	150H 			//114C 	3950
		LDWI 	1EH 			//114D 	001E
		MOVLB 	5H 			//114E 	1025
		SUBWR 	66H, 0H 		//114F 	1266
		BTSS 	3H, 0H 			//1150 	2C03
		LJUMP 	1FBH 			//1151 	39FB

		//;NFB.C: 711: if(HTtimecnt==20){
		LDWI 	14H 			//1152 	0014
		MOVLP 	18H 			//1153 	0198
		LCALL 	C2H 			//1154 	30C2
		MOVLP 	10H 			//1155 	0190
		BTSS 	3H, 2H 			//1156 	2D03
		LJUMP 	173H 			//1157 	3973

		//;NFB.C: 712: Toffset = T;
		//;NFB.C: 713: Tm = T1-T;
		MOVLP 	6H 			//1158 	0186
		LCALL 	641H 			//1159 	3641
		MOVLP 	10H 			//115A 	0190
		MOVLP 	FH 			//115B 	018F
		LCALL 	713H 			//115C 	3713
		MOVLP 	10H 			//115D 	0190

		//;NFB.C: 714: m = Tm/(t1-1);
		MOVLP 	18H 			//115E 	0198
		LCALL 	29H 			//115F 	3029
		MOVLP 	10H 			//1160 	0190
		ADDWI 	FFH 			//1161 	0EFF
		MOVLB 	1H 			//1162 	1021
		STR 	2EH 			//1163 	10AE
		MOVLP 	18H 			//1164 	0198
		LCALL 	D3H 			//1165 	30D3
		MOVLP 	10H 			//1166 	0190
		MOVLP 	1BH 			//1167 	019B
		LCALL 	382H 			//1168 	3382
		MOVLP 	10H 			//1169 	0190
		MOVLP 	7H 			//116A 	0187
		LCALL 	785H 			//116B 	3785
		MOVLP 	10H 			//116C 	0190
		MOVLP 	1EH 			//116D 	019E
		LCALL 	65BH 			//116E 	365B
		MOVLP 	10H 			//116F 	0190
		MOVLP 	18H 			//1170 	0198
		LCALL 	51H 			//1171 	3051
		MOVLP 	10H 			//1172 	0190

		//;NFB.C: 715: }
		//;NFB.C: 716: if(HTtimecnt>20){
		MOVLB 	5H 			//1173 	1025
		LDR 	5CH, 0H 			//1174 	185C
		BTSS 	3H, 2H 			//1175 	2D03
		LJUMP 	181H 			//1176 	3981
		LDR 	5BH, 0H 			//1177 	185B
		BTSS 	3H, 2H 			//1178 	2D03
		LJUMP 	181H 			//1179 	3981
		LDR 	5AH, 0H 			//117A 	185A
		BTSS 	3H, 2H 			//117B 	2D03
		LJUMP 	181H 			//117C 	3981
		LDWI 	15H 			//117D 	0015
		SUBWR 	59H, 0H 		//117E 	1259
		BTSS 	3H, 0H 			//117F 	2C03
		LJUMP 	240H 			//1180 	3A40

		//;NFB.C: 717: diffT = ((m*(HTtimecnt-20)/20)+Toffset)-T;
		MOVLP 	6H 			//1181 	0186
		LCALL 	688H 			//1182 	3688
		MOVLP 	10H 			//1183 	0190
		MOVLP 	7H 			//1184 	0187
		LCALL 	798H 			//1185 	3798
		MOVLP 	10H 			//1186 	0190
		LDWI 	ECH 			//1187 	00EC
		MOVLB 	5H 			//1188 	1025
		ADDWR 	59H, 0H 		//1189 	1759
		MOVLB 	1H 			//118A 	1021
		STR 	28H 			//118B 	10A8
		LDWI 	FFH 			//118C 	00FF
		MOVLB 	5H 			//118D 	1025
		ADDWFC 	5AH, 0H 		//118E 	0D5A
		MOVLB 	1H 			//118F 	1021
		STR 	29H 			//1190 	10A9
		LDWI 	FFH 			//1191 	00FF
		MOVLB 	5H 			//1192 	1025
		ADDWFC 	5BH, 0H 		//1193 	0D5B
		MOVLB 	1H 			//1194 	1021
		STR 	2AH 			//1195 	10AA
		LDWI 	FFH 			//1196 	00FF
		MOVLB 	5H 			//1197 	1025
		ADDWFC 	5CH, 0H 		//1198 	0D5C
		MOVLB 	1H 			//1199 	1021
		STR 	2BH 			//119A 	10AB
		MOVLP 	FH 			//119B 	018F
		LCALL 	7E2H 			//119C 	37E2
		MOVLP 	10H 			//119D 	0190
		LDR 	28H, 0H 			//119E 	1828
		STR 	49H 			//119F 	10C9
		LDR 	29H, 0H 			//11A0 	1829
		STR 	4AH 			//11A1 	10CA
		LDR 	2AH, 0H 			//11A2 	182A
		STR 	4BH 			//11A3 	10CB
		MOVLP 	1DH 			//11A4 	019D
		LCALL 	582H 			//11A5 	3582
		MOVLP 	10H 			//11A6 	0190
		MOVLP 	7H 			//11A7 	0187
		LCALL 	743H 			//11A8 	3743
		MOVLP 	10H 			//11A9 	0190
		MOVLP 	1EH 			//11AA 	019E
		LCALL 	65BH 			//11AB 	365B
		MOVLP 	10H 			//11AC 	0190
		LDR 	55H, 0H 			//11AD 	1855
		STR 	43H 			//11AE 	10C3
		LDR 	56H, 0H 			//11AF 	1856
		STR 	44H 			//11B0 	10C4
		LDR 	57H, 0H 			//11B1 	1857
		STR 	45H 			//11B2 	10C5
		MOVLP 	FH 			//11B3 	018F
		LCALL 	713H 			//11B4 	3713
		MOVLP 	10H 			//11B5 	0190
		LDR 	40H, 0H 			//11B6 	1840
		MOVLB 	5H 			//11B7 	1025
		STR 	46H 			//11B8 	10C6
		MOVLB 	1H 			//11B9 	1021
		LDR 	41H, 0H 			//11BA 	1841
		MOVLB 	5H 			//11BB 	1025
		STR 	47H 			//11BC 	10C7
		MOVLB 	1H 			//11BD 	1021
		LDR 	42H, 0H 			//11BE 	1842
		MOVLB 	5H 			//11BF 	1025
		STR 	48H 			//11C0 	10C8

		//;NFB.C: 717: diffT = ((m*(HTtimecnt-20)/20)+Toffset)-T;
		MOVLB 	6H 			//11C1 	1026
		LDR 	32H, 0H 			//11C2 	1832
		MOVLB 	1H 			//11C3 	1021
		STR 	34H 			//11C4 	10B4
		MOVLB 	6H 			//11C5 	1026
		LDR 	33H, 0H 			//11C6 	1833
		MOVLB 	1H 			//11C7 	1021
		STR 	35H 			//11C8 	10B5
		MOVLB 	6H 			//11C9 	1026
		LDR 	34H, 0H 			//11CA 	1834
		MOVLB 	1H 			//11CB 	1021
		STR 	36H 			//11CC 	10B6
		MOVLB 	5H 			//11CD 	1025
		LDR 	46H, 0H 			//11CE 	1846
		MOVLB 	1H 			//11CF 	1021
		STR 	37H 			//11D0 	10B7
		MOVLB 	5H 			//11D1 	1025
		LDR 	47H, 0H 			//11D2 	1847
		MOVLB 	1H 			//11D3 	1021
		STR 	38H 			//11D4 	10B8
		MOVLB 	5H 			//11D5 	1025
		LDR 	48H, 0H 			//11D6 	1848
		MOVLB 	1H 			//11D7 	1021
		STR 	39H 			//11D8 	10B9
		MOVLP 	FH 			//11D9 	018F
		LCALL 	72EH 			//11DA 	372E
		MOVLP 	10H 			//11DB 	0190
		LDR 	34H, 0H 			//11DC 	1834
		MOVLB 	5H 			//11DD 	1025
		STR 	60H 			//11DE 	10E0
		MOVLB 	1H 			//11DF 	1021
		LDR 	35H, 0H 			//11E0 	1835
		MOVLB 	5H 			//11E1 	1025
		STR 	61H 			//11E2 	10E1
		MOVLB 	1H 			//11E3 	1021
		LDR 	36H, 0H 			//11E4 	1836
		MOVLB 	5H 			//11E5 	1025
		STR 	62H 			//11E6 	10E2

		//;NFB.C: 718: if(diffT>=0){
		LDR 	60H, 0H 			//11E7 	1860
		MOVLB 	1H 			//11E8 	1021
		STR 	32H 			//11E9 	10B2
		MOVLB 	5H 			//11EA 	1025
		LDR 	61H, 0H 			//11EB 	1861
		MOVLB 	1H 			//11EC 	1021
		STR 	33H 			//11ED 	10B3
		MOVLB 	5H 			//11EE 	1025
		LDR 	62H, 0H 			//11EF 	1862
		MOVLP 	18H 			//11F0 	0198
		LCALL 	E5H 			//11F1 	30E5
		MOVLP 	10H 			//11F2 	0190
		MOVLP 	CH 			//11F3 	018C
		LCALL 	4E3H 			//11F4 	34E3
		MOVLP 	10H 			//11F5 	0190
		BTSC 	3H, 0H 			//11F6 	2803
		LJUMP 	23EH 			//11F7 	3A3E

		//;NFB.C: 721: PA0 = 0;
		//;NFB.C: 720: } else{
		MOVLB 	0H 			//11F8 	1020
		BCR 	CH, 0H 			//11F9 	200C
		LJUMP 	240H 			//11FA 	3A40
		MOVLB 	5H 			//11FB 	1025
		LDR 	67H, 0H 			//11FC 	1867
		MOVLP 	18H 			//11FD 	0198
		LCALL 	23H 			//11FE 	3023
		MOVLP 	10H 			//11FF 	0190
		BTSS 	3H, 2H 			//1200 	2D03
		LJUMP 	205H 			//1201 	3A05
		LDWI 	14H 			//1202 	0014
		MOVLB 	5H 			//1203 	1025
		SUBWR 	66H, 0H 		//1204 	1266
		BTSS 	3H, 0H 			//1205 	2C03
		LJUMP 	240H 			//1206 	3A40

		//;NFB.C: 725: if(HTtimecnt==200){
		LDWI 	C8H 			//1207 	00C8
		MOVLP 	18H 			//1208 	0198
		LCALL 	C2H 			//1209 	30C2
		MOVLP 	10H 			//120A 	0190
		BTSS 	3H, 2H 			//120B 	2D03
		LJUMP 	228H 			//120C 	3A28

		//;NFB.C: 726: Toffset = T;
		//;NFB.C: 727: Tm = T1-T;
		MOVLP 	6H 			//120D 	0186
		LCALL 	641H 			//120E 	3641
		MOVLP 	10H 			//120F 	0190
		MOVLP 	FH 			//1210 	018F
		LCALL 	713H 			//1211 	3713
		MOVLP 	10H 			//1212 	0190

		//;NFB.C: 728: m = Tm/(t1-10);
		MOVLP 	18H 			//1213 	0198
		LCALL 	29H 			//1214 	3029
		MOVLP 	10H 			//1215 	0190
		ADDWI 	F6H 			//1216 	0EF6
		MOVLB 	1H 			//1217 	1021
		STR 	2EH 			//1218 	10AE
		MOVLP 	18H 			//1219 	0198
		LCALL 	D3H 			//121A 	30D3
		MOVLP 	10H 			//121B 	0190
		MOVLP 	1BH 			//121C 	019B
		LCALL 	382H 			//121D 	3382
		MOVLP 	10H 			//121E 	0190
		MOVLP 	7H 			//121F 	0187
		LCALL 	785H 			//1220 	3785
		MOVLP 	10H 			//1221 	0190
		MOVLP 	1EH 			//1222 	019E
		LCALL 	65BH 			//1223 	365B
		MOVLP 	10H 			//1224 	0190
		MOVLP 	18H 			//1225 	0198
		LCALL 	51H 			//1226 	3051
		MOVLP 	10H 			//1227 	0190

		//;NFB.C: 729: }
		//;NFB.C: 730: if(HTtimecnt>200){
		MOVLB 	5H 			//1228 	1025
		LDR 	5CH, 0H 			//1229 	185C
		BTSS 	3H, 2H 			//122A 	2D03
		LJUMP 	236H 			//122B 	3A36
		LDR 	5BH, 0H 			//122C 	185B
		BTSS 	3H, 2H 			//122D 	2D03
		LJUMP 	236H 			//122E 	3A36
		LDR 	5AH, 0H 			//122F 	185A
		BTSS 	3H, 2H 			//1230 	2D03
		LJUMP 	236H 			//1231 	3A36
		LDWI 	C9H 			//1232 	00C9
		SUBWR 	59H, 0H 		//1233 	1259
		BTSS 	3H, 0H 			//1234 	2C03
		LJUMP 	240H 			//1235 	3A40

		//;NFB.C: 731: diffT = ((m*(HTtimecnt-200)/20)+Toffset)-T;
		MOVLP 	6H 			//1236 	0186
		LCALL 	688H 			//1237 	3688
		MOVLP 	10H 			//1238 	0190
		MOVLP 	7H 			//1239 	0187
		LCALL 	798H 			//123A 	3798
		MOVLP 	10H 			//123B 	0190
		LDWI 	38H 			//123C 	0038
		LJUMP 	188H 			//123D 	3988

		//;NFB.C: 732: if(diffT>=0){
		//;NFB.C: 731: diffT = ((m*(HTtimecnt-200)/20)+Toffset)-T;
		//;NFB.C: 719: PA0 = 1;
		MOVLB 	0H 			//123E 	1020
		BSR 	CH, 0H 			//123F 	240C

		//;NFB.C: 736: }
		//;NFB.C: 737: }
		//;NFB.C: 738: }
		//;NFB.C: 739: if(HTtimecnt>=timeleft1){
		MOVLB 	6H 			//1240 	1026
		LDR 	44H, 0H 			//1241 	1844
		MOVLB 	2H 			//1242 	1022
		STR 	4AH 			//1243 	10CA
		MOVLB 	6H 			//1244 	1026
		LDR 	45H, 0H 			//1245 	1845
		MOVLP 	7H 			//1246 	0187
		LCALL 	739H 			//1247 	3739
		MOVLP 	10H 			//1248 	0190
		SUBWR 	5CH, 0H 		//1249 	125C
		BTSS 	3H, 2H 			//124A 	2D03
		LJUMP 	259H 			//124B 	3A59
		MOVLP 	18H 			//124C 	0198
		LCALL 	FFH 			//124D 	30FF
		MOVLP 	10H 			//124E 	0190
		BTSS 	3H, 2H 			//124F 	2D03
		LJUMP 	259H 			//1250 	3A59
		MOVLP 	18H 			//1251 	0198
		LCALL 	FAH 			//1252 	30FA
		MOVLP 	10H 			//1253 	0190
		BTSS 	3H, 2H 			//1254 	2D03
		LJUMP 	259H 			//1255 	3A59
		MOVLP 	19H 			//1256 	0199
		LCALL 	104H 			//1257 	3104
		MOVLP 	10H 			//1258 	0190
		BTSS 	3H, 0H 			//1259 	2C03
		LJUMP 	262H 			//125A 	3A62

		//;NFB.C: 740: PA0 = 1;
		MOVLB 	0H 			//125B 	1020
		BSR 	CH, 0H 			//125C 	240C

		//;NFB.C: 741: timeleft1 += 10;
		LDWI 	AH 			//125D 	000A
		MOVLB 	6H 			//125E 	1026
		ADDWR 	44H, 1H 		//125F 	17C4
		BTSC 	3H, 0H 			//1260 	2803
		INCR 	45H, 1H 		//1261 	1AC5

		//;NFB.C: 742: }
		//;NFB.C: 743: if(HTtimecnt>((t1*20)+9) || T>=T1){
		MOVLB 	5H 			//1262 	1025
		LDR 	67H, 0H 			//1263 	1867
		MOVLB 	1H 			//1264 	1021
		STR 	2FH 			//1265 	10AF
		MOVLB 	5H 			//1266 	1025
		LDR 	66H, 0H 			//1267 	1866
		MOVLB 	1H 			//1268 	1021
		STR 	2EH 			//1269 	10AE
		LDWI 	14H 			//126A 	0014
		STR 	30H 			//126B 	10B0
		CLRF 	31H 			//126C 	11B1
		MOVLP 	1CH 			//126D 	019C
		LCALL 	4F4H 			//126E 	34F4
		MOVLP 	10H 			//126F 	0190
		LDR 	2EH, 0H 			//1270 	182E
		ADDWI 	9H 			//1271 	0E09
		MOVLB 	2H 			//1272 	1022
		STR 	4AH 			//1273 	10CA
		LDWI 	0H 			//1274 	0000
		MOVLB 	1H 			//1275 	1021
		ADDWFC 	2FH, 0H 		//1276 	0D2F
		MOVLB 	2H 			//1277 	1022
		STR 	4BH 			//1278 	10CB
		LDR 	4AH, 0H 			//1279 	184A
		STR 	4CH 			//127A 	10CC
		LDR 	4BH, 0H 			//127B 	184B
		STR 	4DH 			//127C 	10CD
		LDWI 	0H 			//127D 	0000
		BTSC 	4DH, 7H 		//127E 	2BCD
		LDWI 	FFH 			//127F 	00FF
		STR 	4EH 			//1280 	10CE
		STR 	4FH 			//1281 	10CF
		MOVLB 	5H 			//1282 	1025
		LDR 	5CH, 0H 			//1283 	185C
		MOVLB 	2H 			//1284 	1022
		SUBWR 	4FH, 0H 		//1285 	124F
		BTSS 	3H, 2H 			//1286 	2D03
		LJUMP 	298H 			//1287 	3A98
		MOVLB 	5H 			//1288 	1025
		LDR 	5BH, 0H 			//1289 	185B
		MOVLB 	2H 			//128A 	1022
		SUBWR 	4EH, 0H 		//128B 	124E
		BTSS 	3H, 2H 			//128C 	2D03
		LJUMP 	298H 			//128D 	3A98
		MOVLB 	5H 			//128E 	1025
		LDR 	5AH, 0H 			//128F 	185A
		MOVLB 	2H 			//1290 	1022
		SUBWR 	4DH, 0H 		//1291 	124D
		BTSS 	3H, 2H 			//1292 	2D03
		LJUMP 	298H 			//1293 	3A98
		MOVLB 	5H 			//1294 	1025
		LDR 	59H, 0H 			//1295 	1859
		MOVLB 	2H 			//1296 	1022
		SUBWR 	4CH, 0H 		//1297 	124C
		BTSS 	3H, 0H 			//1298 	2C03
		LJUMP 	2B7H 			//1299 	3AB7
		MOVLB 	5H 			//129A 	1025
		LDR 	63H, 0H 			//129B 	1863
		MOVLB 	1H 			//129C 	1021
		STR 	32H 			//129D 	10B2
		MOVLB 	5H 			//129E 	1025
		LDR 	64H, 0H 			//129F 	1864
		MOVLB 	1H 			//12A0 	1021
		STR 	33H 			//12A1 	10B3
		MOVLB 	5H 			//12A2 	1025
		LDR 	65H, 0H 			//12A3 	1865
		MOVLB 	1H 			//12A4 	1021
		STR 	34H 			//12A5 	10B4
		MOVLB 	5H 			//12A6 	1025
		LDR 	5DH, 0H 			//12A7 	185D
		MOVLB 	1H 			//12A8 	1021
		STR 	35H 			//12A9 	10B5
		MOVLB 	5H 			//12AA 	1025
		LDR 	5EH, 0H 			//12AB 	185E
		MOVLB 	1H 			//12AC 	1021
		STR 	36H 			//12AD 	10B6
		MOVLB 	5H 			//12AE 	1025
		LDR 	5FH, 0H 			//12AF 	185F
		MOVLB 	1H 			//12B0 	1021
		STR 	37H 			//12B1 	10B7
		MOVLP 	CH 			//12B2 	018C
		LCALL 	4E3H 			//12B3 	34E3
		MOVLP 	10H 			//12B4 	0190
		BTSS 	3H, 0H 			//12B5 	2C03
		LJUMP 	320H 			//12B6 	3B20

		//;NFB.C: 744: char msg[10];
		//;NFB.C: 745: sprintf(msg,"T%0.1f\r\n",T);
		LDWI 	5CH 			//12B7 	005C
		MOVLB 	2H 			//12B8 	1022
		STR 	20H 			//12B9 	10A0
		LDWI 	1H 			//12BA 	0001
		STR 	21H 			//12BB 	10A1
		LDWI 	C0H 			//12BC 	00C0
		STR 	22H 			//12BD 	10A2
		LDWI 	A0H 			//12BE 	00A0
		MOVLP 	7H 			//12BF 	0187
		LCALL 	74AH 			//12C0 	374A
		MOVLP 	10H 			//12C1 	0190
		MOVLP 	8H 			//12C2 	0188
		LCALL 	31H 			//12C3 	3031
		MOVLP 	10H 			//12C4 	0190

		//;NFB.C: 746: send(msg,strlen(msg));
		LDWI 	5CH 			//12C5 	005C
		STR 	24H 			//12C6 	10A4
		LDWI 	1H 			//12C7 	0001
		STR 	25H 			//12C8 	10A5
		LDWI 	5CH 			//12C9 	005C
		MOVLB 	1H 			//12CA 	1021
		STR 	20H 			//12CB 	10A0
		LDWI 	1H 			//12CC 	0001
		STR 	21H 			//12CD 	10A1
		MOVLP 	7H 			//12CE 	0187
		LCALL 	7E4H 			//12CF 	37E4
		MOVLP 	10H 			//12D0 	0190
		MOVLP 	7H 			//12D1 	0187
		LCALL 	775H 			//12D2 	3775
		MOVLP 	10H 			//12D3 	0190
		MOVLP 	19H 			//12D4 	0199
		LCALL 	119H 			//12D5 	3119
		MOVLP 	10H 			//12D6 	0190

		//;NFB.C: 747: send((char*)"T0\r\n",4);
		MOVLP 	18H 			//12D7 	0198
		LCALL 	91H 			//12D8 	3091
		MOVLP 	10H 			//12D9 	0190
		MOVLP 	18H 			//12DA 	0198
		LCALL 	84H 			//12DB 	3084
		MOVLP 	10H 			//12DC 	0190
		MOVLP 	19H 			//12DD 	0199
		LCALL 	119H 			//12DE 	3119
		MOVLP 	10H 			//12DF 	0190

		//;NFB.C: 748: send((char*)"H0\r\n",4);
		MOVLP 	18H 			//12E0 	0198
		LCALL 	89H 			//12E1 	3089
		MOVLP 	10H 			//12E2 	0190
		MOVLP 	18H 			//12E3 	0198
		LCALL 	84H 			//12E4 	3084
		MOVLP 	10H 			//12E5 	0190
		MOVLP 	19H 			//12E6 	0199
		LCALL 	119H 			//12E7 	3119
		MOVLP 	10H 			//12E8 	0190

		//;NFB.C: 749: PA0 = 0;
		MOVLB 	0H 			//12E9 	1020
		BCR 	CH, 0H 			//12EA 	200C

		//;NFB.C: 750: HTOn = 0;
		//;NFB.C: 751: HTtimer = 0;
		//;NFB.C: 752: PB0 = 1;
		MOVLP 	18H 			//12EB 	0198
		LCALL 	ADH 			//12EC 	30AD
		MOVLP 	10H 			//12ED 	0190

		//;NFB.C: 753: DelayMs(500);
		MOVLP 	18H 			//12EE 	0198
		LCALL 	5DH 			//12EF 	305D
		MOVLP 	10H 			//12F0 	0190
		MOVLP 	1EH 			//12F1 	019E
		LCALL 	6B7H 			//12F2 	36B7
		MOVLP 	10H 			//12F3 	0190

		//;NFB.C: 754: PB0 = 0;
		MOVLB 	0H 			//12F4 	1020
		BCR 	DH, 0H 			//12F5 	200D

		//;NFB.C: 755: DelayMs(500);
		MOVLP 	18H 			//12F6 	0198
		LCALL 	6BH 			//12F7 	306B
		MOVLP 	10H 			//12F8 	0190
		MOVLP 	1EH 			//12F9 	019E
		LCALL 	6B7H 			//12FA 	36B7
		MOVLP 	10H 			//12FB 	0190

		//;NFB.C: 756: send((char*)"S1\r\n",4);
		LDWI 	E7H 			//12FC 	00E7
		MOVLB 	2H 			//12FD 	1022
		STR 	24H 			//12FE 	10A4
		LDWI 	A0H 			//12FF 	00A0
		MOVLP 	18H 			//1300 	0198
		LCALL 	84H 			//1301 	3084
		MOVLP 	10H 			//1302 	0190
		MOVLP 	19H 			//1303 	0199
		LCALL 	119H 			//1304 	3119
		MOVLP 	10H 			//1305 	0190

		//;NFB.C: 757: PC1 = 0;
		MOVLB 	0H 			//1306 	1020
		BCR 	EH, 1H 			//1307 	208E

		//;NFB.C: 758: PB3 = 1;
		BSR 	DH, 3H 			//1308 	258D

		//;NFB.C: 759: PB2 = 1;
		BSR 	DH, 2H 			//1309 	250D

		//;NFB.C: 760: PA1 = 1;
		BSR 	CH, 1H 			//130A 	248C

		//;NFB.C: 761: timeleft2 = 100;
		LDWI 	64H 			//130B 	0064
		MOVLB 	6H 			//130C 	1026
		STR 	42H 			//130D 	10C2
		LDWI 	9H 			//130E 	0009
		CLRF 	43H 			//130F 	11C3

		//;NFB.C: 762: timeleft3 = 9;
		STR 	40H 			//1310 	10C0
		CLRF 	41H 			//1311 	11C1

		//;NFB.C: 763: SmokeOn = 1;
		CLRF 	64H 			//1312 	11E4
		INCR 	64H, 1H 		//1313 	1AE4
		CLRF 	65H 			//1314 	11E5

		//;NFB.C: 764: Puffcnt = 0;
		CLRF 	24H 			//1315 	11A4
		CLRF 	25H 			//1316 	11A5
		CLRF 	26H 			//1317 	11A6
		CLRF 	27H 			//1318 	11A7

		//;NFB.C: 765: Smoketimecnt = 0;
		MOVLB 	5H 			//1319 	1025
		CLRF 	55H 			//131A 	11D5
		CLRF 	56H 			//131B 	11D6
		CLRF 	57H 			//131C 	11D7
		CLRF 	58H 			//131D 	11D8

		//;NFB.C: 766: PA0 = 1;
		MOVLB 	0H 			//131E 	1020
		BSR 	CH, 0H 			//131F 	240C

		//;NFB.C: 767: }
		//;NFB.C: 768: }
		//;NFB.C: 769: if(Smoketimer){
		MOVLB 	6H 			//1320 	1026
		LDR 	62H, 0H 			//1321 	1862
		IORWR 	63H, 0H 		//1322 	1463
		BTSC 	3H, 2H 			//1323 	2903
		LJUMP 	5D9H 			//1324 	3DD9

		//;NFB.C: 770: Smoketimer = 0;
		CLRF 	62H 			//1325 	11E2
		CLRF 	63H 			//1326 	11E3

		//;NFB.C: 771: if(PA0){
		MOVLB 	0H 			//1327 	1020
		BTSS 	CH, 0H 			//1328 	2C0C
		LJUMP 	421H 			//1329 	3C21

		//;NFB.C: 772: HTVP_ = GET_ADC_DATA(2);
		LDWI 	2H 			//132A 	0002
		MOVLP 	1AH 			//132B 	019A
		LCALL 	211H 			//132C 	3211
		MOVLP 	10H 			//132D 	0190
		MOVLP 	18H 			//132E 	0198
		LCALL 	A5H 			//132F 	30A5
		MOVLP 	10H 			//1330 	0190

		//;NFB.C: 773: for(int i=0;i<4;i++){
		CLRF 	4FH 			//1331 	11CF
		CLRF 	50H 			//1332 	11D0
		LDR 	50H, 0H 			//1333 	1850
		MOVLP 	18H 			//1334 	0198
		LCALL 	23H 			//1335 	3023
		MOVLP 	10H 			//1336 	0190
		BTSS 	3H, 2H 			//1337 	2D03
		LJUMP 	33CH 			//1338 	3B3C
		LDWI 	4H 			//1339 	0004
		MOVLB 	5H 			//133A 	1025
		SUBWR 	4FH, 0H 		//133B 	124F
		BTSC 	3H, 0H 			//133C 	2803
		LJUMP 	353H 			//133D 	3B53

		//;NFB.C: 774: HTVP_ = (HTVP_+GET_ADC_DATA(2))/2;
		LDWI 	2H 			//133E 	0002
		MOVLP 	1AH 			//133F 	019A
		LCALL 	211H 			//1340 	3211
		MOVLP 	10H 			//1341 	0190
		MOVLB 	5H 			//1342 	1025
		LDR 	6CH, 0H 			//1343 	186C
		MOVLB 	2H 			//1344 	1022
		ADDWR 	20H, 0H 		//1345 	1720
		STR 	4AH 			//1346 	10CA
		MOVLB 	5H 			//1347 	1025
		LDR 	6DH, 0H 			//1348 	186D
		MOVLP 	7H 			//1349 	0187
		LCALL 	77DH 			//134A 	377D
		MOVLP 	10H 			//134B 	0190
		MOVLP 	18H 			//134C 	0198
		LCALL 	DFH 			//134D 	30DF
		MOVLP 	10H 			//134E 	0190
		INCR 	4FH, 1H 		//134F 	1ACF
		BTSC 	3H, 2H 			//1350 	2903
		INCR 	50H, 1H 		//1351 	1AD0
		LJUMP 	333H 			//1352 	3B33

		//;NFB.C: 775: }
		//;NFB.C: 776: HTVN_ = GET_ADC_DATA(1);
		LDWI 	1H 			//1353 	0001
		MOVLP 	1AH 			//1354 	019A
		LCALL 	211H 			//1355 	3211
		MOVLP 	10H 			//1356 	0190
		MOVLP 	18H 			//1357 	0198
		LCALL 	95H 			//1358 	3095
		MOVLP 	10H 			//1359 	0190

		//;NFB.C: 777: for(int i=0;i<4;i++){
		CLRF 	51H 			//135A 	11D1
		CLRF 	52H 			//135B 	11D2
		LDR 	52H, 0H 			//135C 	1852
		MOVLP 	18H 			//135D 	0198
		LCALL 	23H 			//135E 	3023
		MOVLP 	10H 			//135F 	0190
		BTSS 	3H, 2H 			//1360 	2D03
		LJUMP 	365H 			//1361 	3B65
		LDWI 	4H 			//1362 	0004
		MOVLB 	5H 			//1363 	1025
		SUBWR 	51H, 0H 		//1364 	1251
		BTSC 	3H, 0H 			//1365 	2803
		LJUMP 	37CH 			//1366 	3B7C

		//;NFB.C: 778: HTVN_ = (HTVN_+GET_ADC_DATA(1))/2;
		LDWI 	1H 			//1367 	0001
		MOVLP 	1AH 			//1368 	019A
		LCALL 	211H 			//1369 	3211
		MOVLP 	10H 			//136A 	0190
		MOVLB 	5H 			//136B 	1025
		LDR 	6AH, 0H 			//136C 	186A
		MOVLB 	2H 			//136D 	1022
		ADDWR 	20H, 0H 		//136E 	1720
		STR 	4AH 			//136F 	10CA
		MOVLB 	5H 			//1370 	1025
		LDR 	6BH, 0H 			//1371 	186B
		MOVLP 	7H 			//1372 	0187
		LCALL 	77DH 			//1373 	377D
		MOVLP 	10H 			//1374 	0190
		MOVLP 	18H 			//1375 	0198
		LCALL 	CDH 			//1376 	30CD
		MOVLP 	10H 			//1377 	0190
		INCR 	51H, 1H 		//1378 	1AD1
		BTSC 	3H, 2H 			//1379 	2903
		INCR 	52H, 1H 		//137A 	1AD2
		LJUMP 	35CH 			//137B 	3B5C

		//;NFB.C: 779: }
		//;NFB.C: 780: HTVI_ = GET_ADC_DATA(4);
		LDWI 	4H 			//137C 	0004
		MOVLP 	1AH 			//137D 	019A
		LCALL 	211H 			//137E 	3211
		MOVLP 	10H 			//137F 	0190
		MOVLP 	18H 			//1380 	0198
		LCALL 	9DH 			//1381 	309D
		MOVLP 	10H 			//1382 	0190

		//;NFB.C: 781: for(int i=0;i<4;i++){
		CLRF 	53H 			//1383 	11D3
		CLRF 	54H 			//1384 	11D4
		LDR 	54H, 0H 			//1385 	1854
		MOVLP 	18H 			//1386 	0198
		LCALL 	23H 			//1387 	3023
		MOVLP 	10H 			//1388 	0190
		BTSS 	3H, 2H 			//1389 	2D03
		LJUMP 	38EH 			//138A 	3B8E
		LDWI 	4H 			//138B 	0004
		MOVLB 	5H 			//138C 	1025
		SUBWR 	53H, 0H 		//138D 	1253
		BTSC 	3H, 0H 			//138E 	2803
		LJUMP 	3A5H 			//138F 	3BA5

		//;NFB.C: 782: HTVI_ = (HTVI_+GET_ADC_DATA(4))/2;
		LDWI 	4H 			//1390 	0004
		MOVLP 	1AH 			//1391 	019A
		LCALL 	211H 			//1392 	3211
		MOVLP 	10H 			//1393 	0190
		MOVLB 	5H 			//1394 	1025
		LDR 	68H, 0H 			//1395 	1868
		MOVLB 	2H 			//1396 	1022
		ADDWR 	20H, 0H 		//1397 	1720
		STR 	4AH 			//1398 	10CA
		MOVLB 	5H 			//1399 	1025
		LDR 	69H, 0H 			//139A 	1869
		MOVLP 	7H 			//139B 	0187
		LCALL 	77DH 			//139C 	377D
		MOVLP 	10H 			//139D 	0190
		MOVLP 	18H 			//139E 	0198
		LCALL 	D9H 			//139F 	30D9
		MOVLP 	10H 			//13A0 	0190
		INCR 	53H, 1H 		//13A1 	1AD3
		BTSC 	3H, 2H 			//13A2 	2903
		INCR 	54H, 1H 		//13A3 	1AD4
		LJUMP 	385H 			//13A4 	3B85

		//;NFB.C: 783: }
		//;NFB.C: 784: HTVP = (float)HTVP_*2/4096;
		MOVLP 	18H 			//13A5 	0198
		LCALL 	64H 			//13A6 	3064
		MOVLP 	10H 			//13A7 	0190
		MOVLP 	18H 			//13A8 	0198
		LCALL 	37H 			//13A9 	3037
		MOVLP 	10H 			//13AA 	0190
		MOVLP 	19H 			//13AB 	0199
		LCALL 	109H 			//13AC 	3109
		MOVLP 	10H 			//13AD 	0190
		MOVLP 	18H 			//13AE 	0198
		LCALL 	1CH 			//13AF 	301C
		MOVLP 	10H 			//13B0 	0190
		MOVLP 	1DH 			//13B1 	019D
		LCALL 	582H 			//13B2 	3582
		MOVLP 	10H 			//13B3 	0190
		MOVLP 	7H 			//13B4 	0187
		LCALL 	743H 			//13B5 	3743
		MOVLP 	10H 			//13B6 	0190
		MOVLP 	1EH 			//13B7 	019E
		LCALL 	65BH 			//13B8 	365B
		MOVLP 	10H 			//13B9 	0190

		//;NFB.C: 785: HTVN = (float)HTVN_*2/4096;
		MOVLP 	6H 			//13BA 	0186
		LCALL 	6F4H 			//13BB 	36F4
		MOVLP 	10H 			//13BC 	0190
		MOVLP 	19H 			//13BD 	0199
		LCALL 	109H 			//13BE 	3109
		MOVLP 	10H 			//13BF 	0190
		MOVLP 	18H 			//13C0 	0198
		LCALL 	1CH 			//13C1 	301C
		MOVLP 	10H 			//13C2 	0190
		MOVLP 	1DH 			//13C3 	019D
		LCALL 	582H 			//13C4 	3582
		MOVLP 	10H 			//13C5 	0190
		MOVLP 	7H 			//13C6 	0187
		LCALL 	743H 			//13C7 	3743
		MOVLP 	10H 			//13C8 	0190
		MOVLP 	1EH 			//13C9 	019E
		LCALL 	65BH 			//13CA 	365B
		MOVLP 	10H 			//13CB 	0190

		//;NFB.C: 786: HTVI = (float)HTVI_*2/4096;
		MOVLP 	7H 			//13CC 	0187
		LCALL 	71BH 			//13CD 	371B
		MOVLP 	10H 			//13CE 	0190
		MOVLP 	19H 			//13CF 	0199
		LCALL 	109H 			//13D0 	3109
		MOVLP 	10H 			//13D1 	0190
		MOVLP 	18H 			//13D2 	0198
		LCALL 	1CH 			//13D3 	301C
		MOVLP 	10H 			//13D4 	0190
		MOVLP 	1DH 			//13D5 	019D
		LCALL 	582H 			//13D6 	3582
		MOVLP 	10H 			//13D7 	0190
		MOVLP 	7H 			//13D8 	0187
		LCALL 	743H 			//13D9 	3743
		MOVLP 	10H 			//13DA 	0190
		MOVLP 	1EH 			//13DB 	019E
		LCALL 	65BH 			//13DC 	365B
		MOVLP 	10H 			//13DD 	0190

		//;NFB.C: 787: I = HTVI/0.01/39;
		MOVLP 	6H 			//13DE 	0186
		LCALL 	6D5H 			//13DF 	36D5
		MOVLP 	10H 			//13E0 	0190
		MOVLP 	1EH 			//13E1 	019E
		LCALL 	65BH 			//13E2 	365B
		MOVLP 	10H 			//13E3 	0190
		MOVLP 	7H 			//13E4 	0187
		LCALL 	712H 			//13E5 	3712
		MOVLP 	10H 			//13E6 	0190

		//;NFB.C: 787: I = HTVI/0.01/39;
		MOVLP 	7H 			//13E7 	0187
		LCALL 	75FH 			//13E8 	375F
		MOVLP 	10H 			//13E9 	0190
		MOVLP 	1EH 			//13EA 	019E
		LCALL 	65BH 			//13EB 	365B
		MOVLP 	10H 			//13EC 	0190

		//;NFB.C: 788: V = (HTVP-HTVN)*2;
		MOVLP 	6H 			//13ED 	0186
		LCALL 	618H 			//13EE 	3618
		MOVLP 	10H 			//13EF 	0190
		MOVLP 	FH 			//13F0 	018F
		LCALL 	713H 			//13F1 	3713
		MOVLP 	10H 			//13F2 	0190
		MOVLP 	18H 			//13F3 	0198
		LCALL 	B4H 			//13F4 	30B4
		MOVLP 	10H 			//13F5 	0190
		MOVLP 	1DH 			//13F6 	019D
		LCALL 	582H 			//13F7 	3582
		MOVLP 	10H 			//13F8 	0190

		//;NFB.C: 789: R = V/I;
		MOVLP 	6H 			//13F9 	0186
		LCALL 	665H 			//13FA 	3665
		MOVLP 	10H 			//13FB 	0190
		MOVLP 	1EH 			//13FC 	019E
		LCALL 	65BH 			//13FD 	365B
		MOVLP 	10H 			//13FE 	0190

		//;NFB.C: 790: T = (((R/R0)-1)/(T0/1000000))+Tr;
		MOVLP 	6H 			//13FF 	0186
		LCALL 	6B6H 			//1400 	36B6
		MOVLP 	10H 			//1401 	0190
		MOVLP 	1EH 			//1402 	019E
		LCALL 	65BH 			//1403 	365B
		MOVLP 	10H 			//1404 	0190
		MOVLP 	7H 			//1405 	0187
		LCALL 	712H 			//1406 	3712
		MOVLP 	10H 			//1407 	0190

		//;NFB.C: 790: T = (((R/R0)-1)/(T0/1000000))+Tr;
		MOVLP 	6H 			//1408 	0186
		LCALL 	694H 			//1409 	3694
		MOVLP 	10H 			//140A 	0190
		MOVLP 	1EH 			//140B 	019E
		LCALL 	65BH 			//140C 	365B
		MOVLP 	10H 			//140D 	0190
		MOVLP 	18H 			//140E 	0198
		LCALL 	7DH 			//140F 	307D
		MOVLP 	10H 			//1410 	0190
		MOVLP 	FH 			//1411 	018F
		LCALL 	72EH 			//1412 	372E
		MOVLP 	10H 			//1413 	0190

		//;NFB.C: 790: T = (((R/R0)-1)/(T0/1000000))+Tr;
		LCALL 	7D0H 			//1414 	37D0
		MOVLP 	1EH 			//1415 	019E
		LCALL 	65BH 			//1416 	365B
		MOVLP 	10H 			//1417 	0190
		MOVLP 	18H 			//1418 	0198
		LCALL 	7DH 			//1419 	307D
		MOVLP 	10H 			//141A 	0190
		MOVLP 	FH 			//141B 	018F
		LCALL 	72EH 			//141C 	372E
		MOVLP 	10H 			//141D 	0190
		MOVLP 	18H 			//141E 	0198
		LCALL 	71H 			//141F 	3071
		MOVLP 	10H 			//1420 	0190

		//;NFB.C: 791: }
		//;NFB.C: 792: if(Smoketimecnt>=timeleft2){
		MOVLB 	6H 			//1421 	1026
		LDR 	42H, 0H 			//1422 	1842
		MOVLB 	2H 			//1423 	1022
		STR 	4AH 			//1424 	10CA
		MOVLB 	6H 			//1425 	1026
		LDR 	43H, 0H 			//1426 	1843
		MOVLP 	7H 			//1427 	0187
		LCALL 	739H 			//1428 	3739
		MOVLP 	10H 			//1429 	0190
		SUBWR 	58H, 0H 		//142A 	1258
		BTSS 	3H, 2H 			//142B 	2D03
		LJUMP 	43AH 			//142C 	3C3A
		MOVLP 	18H 			//142D 	0198
		LCALL 	F5H 			//142E 	30F5
		MOVLP 	10H 			//142F 	0190
		BTSS 	3H, 2H 			//1430 	2D03
		LJUMP 	43AH 			//1431 	3C3A
		MOVLP 	18H 			//1432 	0198
		LCALL 	F0H 			//1433 	30F0
		MOVLP 	10H 			//1434 	0190
		BTSS 	3H, 2H 			//1435 	2D03
		LJUMP 	43AH 			//1436 	3C3A
		MOVLP 	18H 			//1437 	0198
		LCALL 	EBH 			//1438 	30EB
		MOVLP 	10H 			//1439 	0190
		BTSS 	3H, 0H 			//143A 	2C03
		LJUMP 	463H 			//143B 	3C63

		//;NFB.C: 793: if(PA0){
		MOVLB 	0H 			//143C 	1020
		BTSS 	CH, 0H 			//143D 	2C0C
		LJUMP 	463H 			//143E 	3C63

		//;NFB.C: 794: char msg[10];
		//;NFB.C: 795: sprintf(msg,"T:%0.1f\r\n",T);
		LDWI 	66H 			//143F 	0066
		MOVLB 	2H 			//1440 	1022
		STR 	20H 			//1441 	10A0
		LDWI 	1H 			//1442 	0001
		MOVLP 	7H 			//1443 	0187
		LCALL 	7AAH 			//1444 	37AA
		MOVLP 	10H 			//1445 	0190
		MOVLP 	7H 			//1446 	0187
		LCALL 	74AH 			//1447 	374A
		MOVLP 	10H 			//1448 	0190
		MOVLP 	8H 			//1449 	0188
		LCALL 	31H 			//144A 	3031
		MOVLP 	10H 			//144B 	0190

		//;NFB.C: 796: send(msg,strlen(msg));
		LDWI 	66H 			//144C 	0066
		STR 	24H 			//144D 	10A4
		LDWI 	1H 			//144E 	0001
		STR 	25H 			//144F 	10A5
		LDWI 	66H 			//1450 	0066
		MOVLB 	1H 			//1451 	1021
		STR 	20H 			//1452 	10A0
		LDWI 	1H 			//1453 	0001
		STR 	21H 			//1454 	10A1
		MOVLP 	7H 			//1455 	0187
		LCALL 	7E4H 			//1456 	37E4
		MOVLP 	10H 			//1457 	0190
		MOVLP 	7H 			//1458 	0187
		LCALL 	775H 			//1459 	3775
		MOVLP 	10H 			//145A 	0190
		MOVLP 	19H 			//145B 	0199
		LCALL 	119H 			//145C 	3119
		MOVLP 	10H 			//145D 	0190

		//;NFB.C: 797: timeleft2 += 100;
		LDWI 	64H 			//145E 	0064
		MOVLB 	6H 			//145F 	1026
		ADDWR 	42H, 1H 		//1460 	17C2
		BTSC 	3H, 0H 			//1461 	2803
		INCR 	43H, 1H 		//1462 	1AC3

		//;NFB.C: 798: }
		//;NFB.C: 799: }
		//;NFB.C: 800: diffT = T2-T;
		MOVLB 	5H 			//1463 	1025
		MOVLP 	6H 			//1464 	0186
		LCALL 	688H 			//1465 	3688
		MOVLP 	10H 			//1466 	0190
		MOVLB 	0H 			//1467 	1020
		LDR 	4BH, 0H 			//1468 	184B
		MOVLB 	1H 			//1469 	1021
		STR 	43H 			//146A 	10C3
		MOVLB 	0H 			//146B 	1020
		LDR 	4CH, 0H 			//146C 	184C
		MOVLB 	1H 			//146D 	1021
		STR 	44H 			//146E 	10C4
		MOVLB 	0H 			//146F 	1020
		LDR 	4DH, 0H 			//1470 	184D
		MOVLB 	1H 			//1471 	1021
		STR 	45H 			//1472 	10C5
		MOVLP 	FH 			//1473 	018F
		LCALL 	713H 			//1474 	3713
		MOVLP 	10H 			//1475 	0190
		LDR 	40H, 0H 			//1476 	1840
		MOVLB 	5H 			//1477 	1025
		STR 	60H 			//1478 	10E0
		MOVLB 	1H 			//1479 	1021
		LDR 	41H, 0H 			//147A 	1841
		MOVLB 	5H 			//147B 	1025
		STR 	61H 			//147C 	10E1
		MOVLB 	1H 			//147D 	1021
		LDR 	42H, 0H 			//147E 	1842
		MOVLB 	5H 			//147F 	1025
		STR 	62H 			//1480 	10E2

		//;NFB.C: 801: if(diffT>0){
		MOVLB 	1H 			//1481 	1021
		CLRF 	32H 			//1482 	11B2
		CLRF 	33H 			//1483 	11B3
		CLRF 	34H 			//1484 	11B4
		MOVLP 	18H 			//1485 	0198
		LCALL 	44H 			//1486 	3044
		MOVLP 	10H 			//1487 	0190
		MOVLP 	CH 			//1488 	018C
		LCALL 	4E3H 			//1489 	34E3
		MOVLP 	10H 			//148A 	0190
		BTSC 	3H, 0H 			//148B 	2803
		LJUMP 	490H 			//148C 	3C90

		//;NFB.C: 802: PA0 = 1;
		MOVLB 	0H 			//148D 	1020
		BSR 	CH, 0H 			//148E 	240C

		//;NFB.C: 803: } else{
		LJUMP 	492H 			//148F 	3C92

		//;NFB.C: 804: PA0 = 0;
		MOVLB 	0H 			//1490 	1020
		BCR 	CH, 0H 			//1491 	200C

		//;NFB.C: 805: }
		//;NFB.C: 806: if(Smoketimecnt>=timeleft3){
		MOVLB 	6H 			//1492 	1026
		LDR 	40H, 0H 			//1493 	1840
		MOVLB 	2H 			//1494 	1022
		STR 	4AH 			//1495 	10CA
		MOVLB 	6H 			//1496 	1026
		LDR 	41H, 0H 			//1497 	1841
		MOVLP 	7H 			//1498 	0187
		LCALL 	739H 			//1499 	3739
		MOVLP 	10H 			//149A 	0190
		SUBWR 	58H, 0H 		//149B 	1258
		BTSS 	3H, 2H 			//149C 	2D03
		LJUMP 	4ABH 			//149D 	3CAB
		MOVLP 	18H 			//149E 	0198
		LCALL 	F5H 			//149F 	30F5
		MOVLP 	10H 			//14A0 	0190
		BTSS 	3H, 2H 			//14A1 	2D03
		LJUMP 	4ABH 			//14A2 	3CAB
		MOVLP 	18H 			//14A3 	0198
		LCALL 	F0H 			//14A4 	30F0
		MOVLP 	10H 			//14A5 	0190
		BTSS 	3H, 2H 			//14A6 	2D03
		LJUMP 	4ABH 			//14A7 	3CAB
		MOVLP 	18H 			//14A8 	0198
		LCALL 	EBH 			//14A9 	30EB
		MOVLP 	10H 			//14AA 	0190
		BTSS 	3H, 0H 			//14AB 	2C03
		LJUMP 	4B4H 			//14AC 	3CB4

		//;NFB.C: 807: PA0 = 1;
		MOVLB 	0H 			//14AD 	1020
		BSR 	CH, 0H 			//14AE 	240C

		//;NFB.C: 808: timeleft3 += 10;
		LDWI 	AH 			//14AF 	000A
		MOVLB 	6H 			//14B0 	1026
		ADDWR 	40H, 1H 		//14B1 	17C0
		BTSC 	3H, 0H 			//14B2 	2803
		INCR 	41H, 1H 		//14B3 	1AC1

		//;NFB.C: 809: }
		//;NFB.C: 810: if(diffT>pt && !PuffOn && Smoketimecnt>200){
		MOVLB 	0H 			//14B4 	1020
		LDR 	64H, 0H 			//14B5 	1864
		MOVLB 	1H 			//14B6 	1021
		STR 	2FH 			//14B7 	10AF
		MOVLB 	0H 			//14B8 	1020
		LDR 	63H, 0H 			//14B9 	1863
		MOVLB 	1H 			//14BA 	1021
		STR 	2EH 			//14BB 	10AE
		MOVLP 	1BH 			//14BC 	019B
		LCALL 	382H 			//14BD 	3382
		MOVLP 	10H 			//14BE 	0190
		LDR 	2EH, 0H 			//14BF 	182E
		STR 	32H 			//14C0 	10B2
		LDR 	2FH, 0H 			//14C1 	182F
		STR 	33H 			//14C2 	10B3
		LDR 	30H, 0H 			//14C3 	1830
		STR 	34H 			//14C4 	10B4
		MOVLP 	18H 			//14C5 	0198
		LCALL 	44H 			//14C6 	3044
		MOVLP 	10H 			//14C7 	0190
		MOVLP 	CH 			//14C8 	018C
		LCALL 	4E3H 			//14C9 	34E3
		MOVLP 	10H 			//14CA 	0190
		BTSC 	3H, 0H 			//14CB 	2803
		LJUMP 	52CH 			//14CC 	3D2C
		MOVLB 	0H 			//14CD 	1020
		LDR 	69H, 0H 			//14CE 	1869
		IORWR 	6AH, 0H 		//14CF 	146A
		BTSS 	3H, 2H 			//14D0 	2D03
		LJUMP 	52CH 			//14D1 	3D2C
		MOVLB 	5H 			//14D2 	1025
		LDR 	58H, 0H 			//14D3 	1858
		BTSS 	3H, 2H 			//14D4 	2D03
		LJUMP 	4E0H 			//14D5 	3CE0
		LDR 	57H, 0H 			//14D6 	1857
		BTSS 	3H, 2H 			//14D7 	2D03
		LJUMP 	4E0H 			//14D8 	3CE0
		LDR 	56H, 0H 			//14D9 	1856
		BTSS 	3H, 2H 			//14DA 	2D03
		LJUMP 	4E0H 			//14DB 	3CE0
		LDWI 	C9H 			//14DC 	00C9
		SUBWR 	55H, 0H 		//14DD 	1255
		BTSS 	3H, 0H 			//14DE 	2C03
		LJUMP 	52CH 			//14DF 	3D2C

		//;NFB.C: 811: Puffcnt++;
		LDWI 	1H 			//14E0 	0001
		MOVLB 	6H 			//14E1 	1026
		ADDWR 	24H, 1H 		//14E2 	17A4
		LDWI 	0H 			//14E3 	0000
		ADDWFC 	25H, 1H 		//14E4 	0DA5
		ADDWFC 	26H, 1H 		//14E5 	0DA6
		ADDWFC 	27H, 1H 		//14E6 	0DA7

		//;NFB.C: 812: int puffno = Puffcnt;
		LDR 	25H, 0H 			//14E7 	1825
		MOVLB 	5H 			//14E8 	1025
		STR 	2BH 			//14E9 	10AB
		MOVLB 	6H 			//14EA 	1026
		LDR 	24H, 0H 			//14EB 	1824
		MOVLB 	5H 			//14EC 	1025
		STR 	2AH 			//14ED 	10AA

		//;NFB.C: 813: char msg[10];
		//;NFB.C: 814: sprintf(msg,"D%d,%0.1f\r\n",puffno,diffT);
		LDWI 	A0H 			//14EE 	00A0
		MOVLB 	2H 			//14EF 	1022
		STR 	20H 			//14F0 	10A0
		LDWI 	2H 			//14F1 	0002
		STR 	21H 			//14F2 	10A1
		LDWI 	AAH 			//14F3 	00AA
		STR 	22H 			//14F4 	10A2
		LDWI 	A0H 			//14F5 	00A0
		STR 	23H 			//14F6 	10A3
		MOVLB 	5H 			//14F7 	1025
		LDR 	2BH, 0H 			//14F8 	182B
		MOVLB 	2H 			//14F9 	1022
		STR 	25H 			//14FA 	10A5
		MOVLB 	5H 			//14FB 	1025
		LDR 	2AH, 0H 			//14FC 	182A
		MOVLB 	2H 			//14FD 	1022
		STR 	24H 			//14FE 	10A4
		MOVLB 	5H 			//14FF 	1025
		LDR 	60H, 0H 			//1500 	1860
		MOVLB 	2H 			//1501 	1022
		STR 	26H 			//1502 	10A6
		MOVLB 	5H 			//1503 	1025
		LDR 	61H, 0H 			//1504 	1861
		MOVLB 	2H 			//1505 	1022
		STR 	27H 			//1506 	10A7
		MOVLB 	5H 			//1507 	1025
		LDR 	62H, 0H 			//1508 	1862
		MOVLB 	2H 			//1509 	1022
		STR 	28H 			//150A 	10A8
		MOVLP 	8H 			//150B 	0188
		LCALL 	31H 			//150C 	3031
		MOVLP 	10H 			//150D 	0190

		//;NFB.C: 815: send(msg,strlen(msg));
		LDWI 	A0H 			//150E 	00A0
		STR 	24H 			//150F 	10A4
		LDWI 	2H 			//1510 	0002
		STR 	25H 			//1511 	10A5
		LDWI 	A0H 			//1512 	00A0
		MOVLB 	1H 			//1513 	1021
		STR 	20H 			//1514 	10A0
		LDWI 	2H 			//1515 	0002
		STR 	21H 			//1516 	10A1
		MOVLP 	7H 			//1517 	0187
		LCALL 	7E4H 			//1518 	37E4
		MOVLP 	10H 			//1519 	0190
		MOVLP 	7H 			//151A 	0187
		LCALL 	775H 			//151B 	3775
		MOVLP 	10H 			//151C 	0190
		MOVLP 	19H 			//151D 	0199
		LCALL 	119H 			//151E 	3119
		MOVLP 	10H 			//151F 	0190

		//;NFB.C: 816: PuffOn = 1;
		MOVLB 	0H 			//1520 	1020
		CLRF 	69H 			//1521 	11E9
		INCR 	69H, 1H 		//1522 	1AE9
		CLRF 	6AH 			//1523 	11EA

		//;NFB.C: 817: timenow = Smoketimecnt;
		MOVLB 	5H 			//1524 	1025
		LDR 	56H, 0H 			//1525 	1856
		MOVLB 	6H 			//1526 	1026
		STR 	3FH 			//1527 	10BF
		MOVLB 	5H 			//1528 	1025
		LDR 	55H, 0H 			//1529 	1855
		MOVLB 	6H 			//152A 	1026
		STR 	3EH 			//152B 	10BE

		//;NFB.C: 818: }
		//;NFB.C: 819: if(PuffOn){
		MOVLB 	0H 			//152C 	1020
		LDR 	69H, 0H 			//152D 	1869
		IORWR 	6AH, 0H 		//152E 	146A
		BTSC 	3H, 2H 			//152F 	2903
		LJUMP 	563H 			//1530 	3D63

		//;NFB.C: 820: if(Smoketimecnt-timenow>=200){
		MOVLB 	6H 			//1531 	1026
		LDR 	3EH, 0H 			//1532 	183E
		MOVLB 	2H 			//1533 	1022
		STR 	4AH 			//1534 	10CA
		MOVLB 	6H 			//1535 	1026
		LDR 	3FH, 0H 			//1536 	183F
		MOVLB 	2H 			//1537 	1022
		MOVLP 	7H 			//1538 	0187
		LCALL 	758H 			//1539 	3758
		MOVLP 	10H 			//153A 	0190
		MOVLB 	5H 			//153B 	1025
		LDR 	55H, 0H 			//153C 	1855
		MOVLB 	2H 			//153D 	1022
		STR 	4EH 			//153E 	10CE
		MOVLB 	5H 			//153F 	1025
		LDR 	56H, 0H 			//1540 	1856
		MOVLB 	2H 			//1541 	1022
		STR 	4FH 			//1542 	10CF
		MOVLB 	5H 			//1543 	1025
		LDR 	57H, 0H 			//1544 	1857
		MOVLB 	2H 			//1545 	1022
		STR 	50H 			//1546 	10D0
		MOVLB 	5H 			//1547 	1025
		LDR 	58H, 0H 			//1548 	1858
		MOVLB 	2H 			//1549 	1022
		STR 	51H 			//154A 	10D1
		LDR 	4AH, 0H 			//154B 	184A
		SUBWR 	4EH, 1H 		//154C 	12CE
		LDR 	4BH, 0H 			//154D 	184B
		SUBWFB 	4FH, 1H 		//154E 	0BCF
		LDR 	4CH, 0H 			//154F 	184C
		SUBWFB 	50H, 1H 		//1550 	0BD0
		LDR 	4DH, 0H 			//1551 	184D
		SUBWFB 	51H, 1H 		//1552 	0BD1
		LDR 	51H, 0H 			//1553 	1851
		BTSS 	3H, 2H 			//1554 	2D03
		LJUMP 	560H 			//1555 	3D60
		LDR 	50H, 0H 			//1556 	1850
		BTSS 	3H, 2H 			//1557 	2D03
		LJUMP 	560H 			//1558 	3D60
		LDR 	4FH, 0H 			//1559 	184F
		BTSS 	3H, 2H 			//155A 	2D03
		LJUMP 	560H 			//155B 	3D60
		LDWI 	C8H 			//155C 	00C8
		SUBWR 	4EH, 0H 		//155D 	124E
		BTSS 	3H, 0H 			//155E 	2C03
		LJUMP 	563H 			//155F 	3D63

		//;NFB.C: 821: PuffOn = 0;
		MOVLB 	0H 			//1560 	1020
		CLRF 	69H 			//1561 	11E9
		CLRF 	6AH 			//1562 	11EA

		//;NFB.C: 822: }
		//;NFB.C: 823: }
		//;NFB.C: 824: if(Smoketimecnt>=(t2*100) || Puffcnt>=pf){
		MOVLB 	0H 			//1563 	1020
		LDR 	68H, 0H 			//1564 	1868
		MOVLB 	1H 			//1565 	1021
		STR 	2FH 			//1566 	10AF
		MOVLB 	0H 			//1567 	1020
		LDR 	67H, 0H 			//1568 	1867
		MOVLB 	1H 			//1569 	1021
		STR 	2EH 			//156A 	10AE
		LDWI 	64H 			//156B 	0064
		STR 	30H 			//156C 	10B0
		CLRF 	31H 			//156D 	11B1
		MOVLP 	1CH 			//156E 	019C
		LCALL 	4F4H 			//156F 	34F4
		MOVLP 	10H 			//1570 	0190
		LDR 	2EH, 0H 			//1571 	182E
		MOVLB 	2H 			//1572 	1022
		STR 	4AH 			//1573 	10CA
		MOVLB 	1H 			//1574 	1021
		LDR 	2FH, 0H 			//1575 	182F
		MOVLP 	7H 			//1576 	0187
		LCALL 	739H 			//1577 	3739
		MOVLP 	10H 			//1578 	0190
		SUBWR 	58H, 0H 		//1579 	1258
		BTSS 	3H, 2H 			//157A 	2D03
		LJUMP 	589H 			//157B 	3D89
		MOVLP 	18H 			//157C 	0198
		LCALL 	F5H 			//157D 	30F5
		MOVLP 	10H 			//157E 	0190
		BTSS 	3H, 2H 			//157F 	2D03
		LJUMP 	589H 			//1580 	3D89
		MOVLP 	18H 			//1581 	0198
		LCALL 	F0H 			//1582 	30F0
		MOVLP 	10H 			//1583 	0190
		BTSS 	3H, 2H 			//1584 	2D03
		LJUMP 	589H 			//1585 	3D89
		MOVLP 	18H 			//1586 	0198
		LCALL 	EBH 			//1587 	30EB
		MOVLP 	10H 			//1588 	0190
		BTSC 	3H, 0H 			//1589 	2803
		LJUMP 	5ACH 			//158A 	3DAC
		MOVLB 	0H 			//158B 	1020
		LDR 	65H, 0H 			//158C 	1865
		MOVLB 	2H 			//158D 	1022
		STR 	4AH 			//158E 	10CA
		MOVLB 	0H 			//158F 	1020
		LDR 	66H, 0H 			//1590 	1866
		MOVLB 	2H 			//1591 	1022
		MOVLP 	7H 			//1592 	0187
		LCALL 	758H 			//1593 	3758
		MOVLP 	10H 			//1594 	0190
		LDR 	4DH, 0H 			//1595 	184D
		MOVLB 	6H 			//1596 	1026
		SUBWR 	27H, 0H 		//1597 	1227
		BTSS 	3H, 2H 			//1598 	2D03
		LJUMP 	5AAH 			//1599 	3DAA
		MOVLB 	2H 			//159A 	1022
		LDR 	4CH, 0H 			//159B 	184C
		MOVLB 	6H 			//159C 	1026
		SUBWR 	26H, 0H 		//159D 	1226
		BTSS 	3H, 2H 			//159E 	2D03
		LJUMP 	5AAH 			//159F 	3DAA
		MOVLB 	2H 			//15A0 	1022
		LDR 	4BH, 0H 			//15A1 	184B
		MOVLB 	6H 			//15A2 	1026
		SUBWR 	25H, 0H 		//15A3 	1225
		BTSS 	3H, 2H 			//15A4 	2D03
		LJUMP 	5AAH 			//15A5 	3DAA
		MOVLB 	2H 			//15A6 	1022
		LDR 	4AH, 0H 			//15A7 	184A
		MOVLB 	6H 			//15A8 	1026
		SUBWR 	24H, 0H 		//15A9 	1224
		BTSS 	3H, 0H 			//15AA 	2C03
		LJUMP 	5D9H 			//15AB 	3DD9

		//;NFB.C: 825: send((char*)"T0\r\n",4);
		MOVLP 	18H 			//15AC 	0198
		LCALL 	91H 			//15AD 	3091
		MOVLP 	10H 			//15AE 	0190
		MOVLP 	18H 			//15AF 	0198
		LCALL 	84H 			//15B0 	3084
		MOVLP 	10H 			//15B1 	0190
		MOVLP 	19H 			//15B2 	0199
		LCALL 	119H 			//15B3 	3119
		MOVLP 	10H 			//15B4 	0190

		//;NFB.C: 826: send((char*)"S0\r\n",4);
		MOVLP 	18H 			//15B5 	0198
		LCALL 	8DH 			//15B6 	308D
		MOVLP 	10H 			//15B7 	0190
		MOVLP 	18H 			//15B8 	0198
		LCALL 	84H 			//15B9 	3084
		MOVLP 	10H 			//15BA 	0190
		MOVLP 	19H 			//15BB 	0199
		LCALL 	119H 			//15BC 	3119
		MOVLP 	10H 			//15BD 	0190

		//;NFB.C: 827: PA0 = 0;
		MOVLB 	0H 			//15BE 	1020
		BCR 	CH, 0H 			//15BF 	200C

		//;NFB.C: 828: SmokeOn = 0;
		//;NFB.C: 829: Smoketimer = 0;
		//;NFB.C: 830: PuffOn = 0;
		MOVLP 	18H 			//15C0 	0198
		LCALL 	BBH 			//15C1 	30BB
		MOVLP 	10H 			//15C2 	0190
		CLRF 	69H 			//15C3 	11E9
		CLRF 	6AH 			//15C4 	11EA

		//;NFB.C: 831: PowerOn = 0;
		CLRF 	6DH 			//15C5 	11ED
		CLRF 	6EH 			//15C6 	11EE

		//;NFB.C: 832: PC1=1;
		BSR 	EH, 1H 			//15C7 	248E

		//;NFB.C: 833: PB0 = 1;
		//;NFB.C: 834: DelayMs(500);
		MOVLP 	18H 			//15C8 	0198
		LCALL 	5DH 			//15C9 	305D
		MOVLP 	10H 			//15CA 	0190
		MOVLP 	1EH 			//15CB 	019E
		LCALL 	6B7H 			//15CC 	36B7
		MOVLP 	10H 			//15CD 	0190

		//;NFB.C: 835: PB0 = 0;
		MOVLB 	0H 			//15CE 	1020
		BCR 	DH, 0H 			//15CF 	200D

		//;NFB.C: 836: DelayMs(100);
		MOVLP 	18H 			//15D0 	0198
		LCALL 	C8H 			//15D1 	30C8
		MOVLP 	10H 			//15D2 	0190
		MOVLP 	1EH 			//15D3 	019E
		LCALL 	6B7H 			//15D4 	36B7
		MOVLP 	10H 			//15D5 	0190
		SLEEP 					//15D6 	1063

		//;NFB.C: 838: __nop();
		NOP 					//15D7 	1000

		//;NFB.C: 839: __nop();
		NOP 					//15D8 	1000

		//;NFB.C: 840: }
		//;NFB.C: 841: }
		//;NFB.C: 842: if(RDE1){
		MOVLB 	6H 			//15D9 	1026
		LDR 	60H, 0H 			//15DA 	1860
		IORWR 	61H, 0H 		//15DB 	1461
		BTSC 	3H, 2H 			//15DC 	2903
		LJUMP 	636H 			//15DD 	3E36
		LDWI 	A0H 			//15DE 	00A0

		//;NFB.C: 843: RDE1 = 0;
		CLRF 	60H 			//15DF 	11E0
		CLRF 	61H 			//15E0 	11E1

		//;NFB.C: 844: char msg[80];
		//;NFB.C: 845: sprintf(msg,"HTP%d,%d,%0.0f,%0.0f,%d,%d\r\n",t1,t2,T1,T2,pf,pt);
		MOVLB 	2H 			//15E1 	1022
		STR 	20H 			//15E2 	10A0
		LDWI 	1H 			//15E3 	0001
		STR 	21H 			//15E4 	10A1
		LDWI 	28H 			//15E5 	0028
		STR 	22H 			//15E6 	10A2
		LDWI 	A0H 			//15E7 	00A0
		STR 	23H 			//15E8 	10A3
		MOVLB 	5H 			//15E9 	1025
		LDR 	67H, 0H 			//15EA 	1867
		MOVLB 	2H 			//15EB 	1022
		STR 	25H 			//15EC 	10A5
		MOVLB 	5H 			//15ED 	1025
		LDR 	66H, 0H 			//15EE 	1866
		MOVLB 	2H 			//15EF 	1022
		STR 	24H 			//15F0 	10A4
		MOVLB 	0H 			//15F1 	1020
		LDR 	68H, 0H 			//15F2 	1868
		MOVLB 	2H 			//15F3 	1022
		STR 	27H 			//15F4 	10A7
		MOVLB 	0H 			//15F5 	1020
		LDR 	67H, 0H 			//15F6 	1867
		MOVLB 	2H 			//15F7 	1022
		STR 	26H 			//15F8 	10A6
		MOVLB 	5H 			//15F9 	1025
		LDR 	5DH, 0H 			//15FA 	185D
		MOVLB 	2H 			//15FB 	1022
		STR 	28H 			//15FC 	10A8
		MOVLB 	5H 			//15FD 	1025
		LDR 	5EH, 0H 			//15FE 	185E
		MOVLB 	2H 			//15FF 	1022
		STR 	29H 			//1600 	10A9
		MOVLB 	5H 			//1601 	1025
		LDR 	5FH, 0H 			//1602 	185F
		MOVLB 	2H 			//1603 	1022
		STR 	2AH 			//1604 	10AA
		MOVLB 	0H 			//1605 	1020
		LDR 	4BH, 0H 			//1606 	184B
		MOVLB 	2H 			//1607 	1022
		STR 	2BH 			//1608 	10AB
		MOVLB 	0H 			//1609 	1020
		LDR 	4CH, 0H 			//160A 	184C
		MOVLB 	2H 			//160B 	1022
		STR 	2CH 			//160C 	10AC
		MOVLB 	0H 			//160D 	1020
		LDR 	4DH, 0H 			//160E 	184D
		MOVLB 	2H 			//160F 	1022
		STR 	2DH 			//1610 	10AD
		MOVLB 	0H 			//1611 	1020
		LDR 	66H, 0H 			//1612 	1866
		MOVLB 	2H 			//1613 	1022
		STR 	2FH 			//1614 	10AF
		MOVLB 	0H 			//1615 	1020
		LDR 	65H, 0H 			//1616 	1865
		MOVLB 	2H 			//1617 	1022
		STR 	2EH 			//1618 	10AE
		MOVLB 	0H 			//1619 	1020
		LDR 	64H, 0H 			//161A 	1864
		MOVLB 	2H 			//161B 	1022
		STR 	31H 			//161C 	10B1
		MOVLB 	0H 			//161D 	1020
		LDR 	63H, 0H 			//161E 	1863
		MOVLB 	2H 			//161F 	1022
		STR 	30H 			//1620 	10B0
		MOVLP 	8H 			//1621 	0188
		LCALL 	31H 			//1622 	3031
		MOVLP 	10H 			//1623 	0190

		//;NFB.C: 846: send(msg,strlen(msg));
		LDWI 	A0H 			//1624 	00A0
		STR 	24H 			//1625 	10A4
		LDWI 	1H 			//1626 	0001
		STR 	25H 			//1627 	10A5
		LDWI 	A0H 			//1628 	00A0
		MOVLB 	1H 			//1629 	1021
		STR 	20H 			//162A 	10A0
		LDWI 	1H 			//162B 	0001
		STR 	21H 			//162C 	10A1
		MOVLP 	7H 			//162D 	0187
		LCALL 	7E4H 			//162E 	37E4
		MOVLP 	10H 			//162F 	0190
		MOVLP 	7H 			//1630 	0187
		LCALL 	775H 			//1631 	3775
		MOVLP 	10H 			//1632 	0190
		MOVLP 	19H 			//1633 	0199
		LCALL 	119H 			//1634 	3119
		MOVLP 	10H 			//1635 	0190

		//;NFB.C: 847: }
		//;NFB.C: 848: if(RDE2){
		MOVLB 	6H 			//1636 	1026
		LDR 	5EH, 0H 			//1637 	185E
		IORWR 	5FH, 0H 		//1638 	145F
		BTSC 	3H, 2H 			//1639 	2903
		LJUMP 	67FH 			//163A 	3E7F
		LDWI 	20H 			//163B 	0020

		//;NFB.C: 849: RDE2 = 0;
		CLRF 	5EH 			//163C 	11DE
		CLRF 	5FH 			//163D 	11DF

		//;NFB.C: 850: char msg[80];
		//;NFB.C: 851: sprintf(msg,"TCR%0.0f,%0.0f,%0.2f\r\n",T0,Tr,R0);
		MOVLB 	2H 			//163E 	1022
		STR 	20H 			//163F 	10A0
		LDWI 	2H 			//1640 	0002
		STR 	21H 			//1641 	10A1
		LDWI 	93H 			//1642 	0093
		STR 	22H 			//1643 	10A2
		LDWI 	A0H 			//1644 	00A0
		STR 	23H 			//1645 	10A3
		MOVLB 	0H 			//1646 	1020
		LDR 	51H, 0H 			//1647 	1851
		MOVLB 	2H 			//1648 	1022
		STR 	24H 			//1649 	10A4
		MOVLB 	0H 			//164A 	1020
		LDR 	52H, 0H 			//164B 	1852
		MOVLB 	2H 			//164C 	1022
		STR 	25H 			//164D 	10A5
		MOVLB 	0H 			//164E 	1020
		LDR 	53H, 0H 			//164F 	1853
		MOVLB 	2H 			//1650 	1022
		STR 	26H 			//1651 	10A6
		MOVLB 	0H 			//1652 	1020
		LDR 	4EH, 0H 			//1653 	184E
		MOVLB 	2H 			//1654 	1022
		STR 	27H 			//1655 	10A7
		MOVLB 	0H 			//1656 	1020
		LDR 	4FH, 0H 			//1657 	184F
		MOVLB 	2H 			//1658 	1022
		STR 	28H 			//1659 	10A8
		MOVLB 	0H 			//165A 	1020
		LDR 	50H, 0H 			//165B 	1850
		MOVLB 	2H 			//165C 	1022
		STR 	29H 			//165D 	10A9
		MOVLB 	0H 			//165E 	1020
		LDR 	54H, 0H 			//165F 	1854
		MOVLB 	2H 			//1660 	1022
		STR 	2AH 			//1661 	10AA
		MOVLB 	0H 			//1662 	1020
		LDR 	55H, 0H 			//1663 	1855
		MOVLB 	2H 			//1664 	1022
		STR 	2BH 			//1665 	10AB
		MOVLB 	0H 			//1666 	1020
		LDR 	56H, 0H 			//1667 	1856
		MOVLB 	2H 			//1668 	1022
		STR 	2CH 			//1669 	10AC
		MOVLP 	8H 			//166A 	0188
		LCALL 	31H 			//166B 	3031
		MOVLP 	10H 			//166C 	0190

		//;NFB.C: 852: send(msg,strlen(msg));
		LDWI 	20H 			//166D 	0020
		STR 	24H 			//166E 	10A4
		LDWI 	2H 			//166F 	0002
		STR 	25H 			//1670 	10A5
		LDWI 	20H 			//1671 	0020
		MOVLB 	1H 			//1672 	1021
		STR 	20H 			//1673 	10A0
		LDWI 	2H 			//1674 	0002
		STR 	21H 			//1675 	10A1
		MOVLP 	7H 			//1676 	0187
		LCALL 	7E4H 			//1677 	37E4
		MOVLP 	10H 			//1678 	0190
		MOVLP 	7H 			//1679 	0187
		LCALL 	775H 			//167A 	3775
		MOVLP 	10H 			//167B 	0190
		MOVLP 	19H 			//167C 	0199
		LCALL 	119H 			//167D 	3119
		MOVLP 	10H 			//167E 	0190

		//;NFB.C: 853: }
		//;NFB.C: 854: if(t1E){
		MOVLB 	6H 			//167F 	1026
		LDR 	5CH, 0H 			//1680 	185C
		IORWR 	5DH, 0H 		//1681 	145D
		BTSC 	3H, 2H 			//1682 	2903
		LJUMP 	690H 			//1683 	3E90

		//;NFB.C: 855: t1E = 0;
		CLRF 	5CH 			//1684 	11DC
		CLRF 	5DH 			//1685 	11DD

		//;NFB.C: 856: unsigned char dataL = t1;
		MOVLB 	5H 			//1686 	1025
		LDR 	66H, 0H 			//1687 	1866
		STR 	30H 			//1688 	10B0

		//;NFB.C: 857: EEPROMwrite(0x01,dataL);
		LDR 	30H, 0H 			//1689 	1830
		MOVLB 	1H 			//168A 	1021
		STR 	20H 			//168B 	10A0
		LDWI 	1H 			//168C 	0001
		MOVLP 	1BH 			//168D 	019B
		LCALL 	363H 			//168E 	3363
		MOVLP 	10H 			//168F 	0190

		//;NFB.C: 858: }
		//;NFB.C: 859: if(t2E){
		MOVLB 	6H 			//1690 	1026
		LDR 	5AH, 0H 			//1691 	185A
		IORWR 	5BH, 0H 		//1692 	145B
		BTSC 	3H, 2H 			//1693 	2903
		LJUMP 	6AEH 			//1694 	3EAE

		//;NFB.C: 860: t2E = 0;
		CLRF 	5AH 			//1695 	11DA
		CLRF 	5BH 			//1696 	11DB

		//;NFB.C: 861: unsigned char dataL = t2&0xFF;
		MOVLB 	0H 			//1697 	1020
		LDR 	67H, 0H 			//1698 	1867
		MOVLB 	5H 			//1699 	1025
		STR 	31H 			//169A 	10B1

		//;NFB.C: 862: unsigned char dataH = (t2>>8)&0xFF;
		MOVLB 	0H 			//169B 	1020
		LDR 	68H, 0H 			//169C 	1868
		MOVLB 	5H 			//169D 	1025
		STR 	32H 			//169E 	10B2

		//;NFB.C: 863: EEPROMwrite(0x02,dataL);
		LDR 	31H, 0H 			//169F 	1831
		MOVLB 	1H 			//16A0 	1021
		STR 	20H 			//16A1 	10A0
		LDWI 	2H 			//16A2 	0002
		MOVLP 	1BH 			//16A3 	019B
		LCALL 	363H 			//16A4 	3363
		MOVLP 	10H 			//16A5 	0190

		//;NFB.C: 864: EEPROMwrite(0x03,dataH);
		MOVLB 	5H 			//16A6 	1025
		LDR 	32H, 0H 			//16A7 	1832
		MOVLB 	1H 			//16A8 	1021
		STR 	20H 			//16A9 	10A0
		LDWI 	3H 			//16AA 	0003
		MOVLP 	1BH 			//16AB 	019B
		LCALL 	363H 			//16AC 	3363
		MOVLP 	10H 			//16AD 	0190

		//;NFB.C: 865: }
		//;NFB.C: 866: if(T1E){
		MOVLB 	6H 			//16AE 	1026
		LDR 	58H, 0H 			//16AF 	1858
		IORWR 	59H, 0H 		//16B0 	1459
		BTSC 	3H, 2H 			//16B1 	2903
		LJUMP 	6DDH 			//16B2 	3EDD

		//;NFB.C: 867: T1E = 0;
		CLRF 	58H 			//16B3 	11D8
		CLRF 	59H 			//16B4 	11D9

		//;NFB.C: 868: int data = (int)T1;
		MOVLB 	5H 			//16B5 	1025
		LDR 	5DH, 0H 			//16B6 	185D
		MOVLB 	1H 			//16B7 	1021
		STR 	5DH 			//16B8 	10DD
		MOVLB 	5H 			//16B9 	1025
		LDR 	5EH, 0H 			//16BA 	185E
		MOVLB 	1H 			//16BB 	1021
		STR 	5EH 			//16BC 	10DE
		MOVLB 	5H 			//16BD 	1025
		LDR 	5FH, 0H 			//16BE 	185F
		MOVLB 	1H 			//16BF 	1021
		STR 	5FH 			//16C0 	10DF
		MOVLP 	DH 			//16C1 	018D
		LCALL 	545H 			//16C2 	3545
		MOVLP 	10H 			//16C3 	0190
		LDR 	5EH, 0H 			//16C4 	185E
		MOVLB 	5H 			//16C5 	1025
		STR 	3EH 			//16C6 	10BE
		MOVLB 	1H 			//16C7 	1021
		LDR 	5DH, 0H 			//16C8 	185D
		MOVLB 	5H 			//16C9 	1025
		STR 	3DH 			//16CA 	10BD

		//;NFB.C: 869: unsigned char dataL = data&0xFF;
		STR 	33H 			//16CB 	10B3

		//;NFB.C: 870: unsigned char dataH = (data>>8)&0xFF;
		LDR 	3EH, 0H 			//16CC 	183E
		STR 	34H 			//16CD 	10B4

		//;NFB.C: 871: EEPROMwrite(0x04,dataL);
		LDR 	33H, 0H 			//16CE 	1833
		MOVLB 	1H 			//16CF 	1021
		STR 	20H 			//16D0 	10A0
		LDWI 	4H 			//16D1 	0004
		MOVLP 	1BH 			//16D2 	019B
		LCALL 	363H 			//16D3 	3363
		MOVLP 	10H 			//16D4 	0190

		//;NFB.C: 872: EEPROMwrite(0x05,dataH);
		MOVLB 	5H 			//16D5 	1025
		LDR 	34H, 0H 			//16D6 	1834
		MOVLB 	1H 			//16D7 	1021
		STR 	20H 			//16D8 	10A0
		LDWI 	5H 			//16D9 	0005
		MOVLP 	1BH 			//16DA 	019B
		LCALL 	363H 			//16DB 	3363
		MOVLP 	10H 			//16DC 	0190

		//;NFB.C: 873: }
		//;NFB.C: 874: if(T2E){
		MOVLB 	6H 			//16DD 	1026
		LDR 	56H, 0H 			//16DE 	1856
		IORWR 	57H, 0H 		//16DF 	1457
		BTSC 	3H, 2H 			//16E0 	2903
		LJUMP 	70CH 			//16E1 	3F0C

		//;NFB.C: 875: T2E = 0;
		CLRF 	56H 			//16E2 	11D6
		CLRF 	57H 			//16E3 	11D7

		//;NFB.C: 876: int data = (int)T2;
		MOVLB 	0H 			//16E4 	1020
		LDR 	4BH, 0H 			//16E5 	184B
		MOVLB 	1H 			//16E6 	1021
		STR 	5DH 			//16E7 	10DD
		MOVLB 	0H 			//16E8 	1020
		LDR 	4CH, 0H 			//16E9 	184C
		MOVLB 	1H 			//16EA 	1021
		STR 	5EH 			//16EB 	10DE
		MOVLB 	0H 			//16EC 	1020
		LDR 	4DH, 0H 			//16ED 	184D
		MOVLB 	1H 			//16EE 	1021
		STR 	5FH 			//16EF 	10DF
		MOVLP 	DH 			//16F0 	018D
		LCALL 	545H 			//16F1 	3545
		MOVLP 	10H 			//16F2 	0190
		LDR 	5EH, 0H 			//16F3 	185E
		MOVLB 	5H 			//16F4 	1025
		STR 	40H 			//16F5 	10C0
		MOVLB 	1H 			//16F6 	1021
		LDR 	5DH, 0H 			//16F7 	185D
		MOVLB 	5H 			//16F8 	1025
		STR 	3FH 			//16F9 	10BF

		//;NFB.C: 877: unsigned char dataL = data&0xFF;
		STR 	35H 			//16FA 	10B5

		//;NFB.C: 878: unsigned char dataH = (data>>8)&0xFF;
		LDR 	40H, 0H 			//16FB 	1840
		STR 	36H 			//16FC 	10B6

		//;NFB.C: 879: EEPROMwrite(0x06,dataL);
		LDR 	35H, 0H 			//16FD 	1835
		MOVLB 	1H 			//16FE 	1021
		STR 	20H 			//16FF 	10A0
		LDWI 	6H 			//1700 	0006
		MOVLP 	1BH 			//1701 	019B
		LCALL 	363H 			//1702 	3363
		MOVLP 	10H 			//1703 	0190

		//;NFB.C: 880: EEPROMwrite(0x07,dataH);
		MOVLB 	5H 			//1704 	1025
		LDR 	36H, 0H 			//1705 	1836
		MOVLB 	1H 			//1706 	1021
		STR 	20H 			//1707 	10A0
		LDWI 	7H 			//1708 	0007
		MOVLP 	1BH 			//1709 	019B
		LCALL 	363H 			//170A 	3363
		MOVLP 	10H 			//170B 	0190

		//;NFB.C: 881: }
		//;NFB.C: 882: if(PFE){
		MOVLB 	6H 			//170C 	1026
		LDR 	52H, 0H 			//170D 	1852
		IORWR 	53H, 0H 		//170E 	1453
		BTSC 	3H, 2H 			//170F 	2903
		LJUMP 	71EH 			//1710 	3F1E

		//;NFB.C: 883: PFE = 0;
		CLRF 	52H 			//1711 	11D2
		CLRF 	53H 			//1712 	11D3

		//;NFB.C: 884: unsigned char dataL = pf&0xFF;
		MOVLB 	0H 			//1713 	1020
		LDR 	65H, 0H 			//1714 	1865
		MOVLB 	5H 			//1715 	1025
		STR 	37H 			//1716 	10B7

		//;NFB.C: 885: EEPROMwrite(0x08,dataL);
		LDR 	37H, 0H 			//1717 	1837
		MOVLB 	1H 			//1718 	1021
		STR 	20H 			//1719 	10A0
		LDWI 	8H 			//171A 	0008
		MOVLP 	1BH 			//171B 	019B
		LCALL 	363H 			//171C 	3363
		MOVLP 	10H 			//171D 	0190

		//;NFB.C: 886: }
		//;NFB.C: 887: if(PTE){
		MOVLB 	6H 			//171E 	1026
		LDR 	54H, 0H 			//171F 	1854
		IORWR 	55H, 0H 		//1720 	1455
		BTSC 	3H, 2H 			//1721 	2903
		LJUMP 	730H 			//1722 	3F30

		//;NFB.C: 888: PTE = 0;
		CLRF 	54H 			//1723 	11D4
		CLRF 	55H 			//1724 	11D5

		//;NFB.C: 889: unsigned char dataL = pt&0xFF;
		MOVLB 	0H 			//1725 	1020
		LDR 	63H, 0H 			//1726 	1863
		MOVLB 	5H 			//1727 	1025
		STR 	38H 			//1728 	10B8

		//;NFB.C: 890: EEPROMwrite(0x09,dataL);
		LDR 	38H, 0H 			//1729 	1838
		MOVLB 	1H 			//172A 	1021
		STR 	20H 			//172B 	10A0
		LDWI 	9H 			//172C 	0009
		MOVLP 	1BH 			//172D 	019B
		LCALL 	363H 			//172E 	3363
		MOVLP 	10H 			//172F 	0190

		//;NFB.C: 891: }
		//;NFB.C: 892: if(T0E){
		MOVLB 	6H 			//1730 	1026
		LDR 	50H, 0H 			//1731 	1850
		IORWR 	51H, 0H 		//1732 	1451
		BTSC 	3H, 2H 			//1733 	2903
		LJUMP 	75FH 			//1734 	3F5F

		//;NFB.C: 893: T0E = 0;
		CLRF 	50H 			//1735 	11D0
		CLRF 	51H 			//1736 	11D1

		//;NFB.C: 894: int data = (int)T0;
		MOVLB 	0H 			//1737 	1020
		LDR 	51H, 0H 			//1738 	1851
		MOVLB 	1H 			//1739 	1021
		STR 	5DH 			//173A 	10DD
		MOVLB 	0H 			//173B 	1020
		LDR 	52H, 0H 			//173C 	1852
		MOVLB 	1H 			//173D 	1021
		STR 	5EH 			//173E 	10DE
		MOVLB 	0H 			//173F 	1020
		LDR 	53H, 0H 			//1740 	1853
		MOVLB 	1H 			//1741 	1021
		STR 	5FH 			//1742 	10DF
		MOVLP 	DH 			//1743 	018D
		LCALL 	545H 			//1744 	3545
		MOVLP 	10H 			//1745 	0190
		LDR 	5EH, 0H 			//1746 	185E
		MOVLB 	5H 			//1747 	1025
		STR 	42H 			//1748 	10C2
		MOVLB 	1H 			//1749 	1021
		LDR 	5DH, 0H 			//174A 	185D
		MOVLB 	5H 			//174B 	1025
		STR 	41H 			//174C 	10C1

		//;NFB.C: 895: unsigned char dataL = data&0xFF;
		STR 	39H 			//174D 	10B9

		//;NFB.C: 896: unsigned char dataH = (data>>8)&0xFF;
		LDR 	42H, 0H 			//174E 	1842
		STR 	3AH 			//174F 	10BA

		//;NFB.C: 897: EEPROMwrite(0x0A,dataL);
		LDR 	39H, 0H 			//1750 	1839
		MOVLB 	1H 			//1751 	1021
		STR 	20H 			//1752 	10A0
		LDWI 	AH 			//1753 	000A
		MOVLP 	1BH 			//1754 	019B
		LCALL 	363H 			//1755 	3363
		MOVLP 	10H 			//1756 	0190

		//;NFB.C: 898: EEPROMwrite(0x0B,dataH);
		MOVLB 	5H 			//1757 	1025
		LDR 	3AH, 0H 			//1758 	183A
		MOVLB 	1H 			//1759 	1021
		STR 	20H 			//175A 	10A0
		LDWI 	BH 			//175B 	000B
		MOVLP 	1BH 			//175C 	019B
		LCALL 	363H 			//175D 	3363
		MOVLP 	10H 			//175E 	0190

		//;NFB.C: 899: }
		//;NFB.C: 900: if(TRE){
		MOVLB 	6H 			//175F 	1026
		LDR 	4EH, 0H 			//1760 	184E
		IORWR 	4FH, 0H 		//1761 	144F
		BTSC 	3H, 2H 			//1762 	2903
		LJUMP 	784H 			//1763 	3F84

		//;NFB.C: 901: TRE = 0;
		CLRF 	4EH 			//1764 	11CE
		CLRF 	4FH 			//1765 	11CF

		//;NFB.C: 902: int data = (int)Tr;
		MOVLB 	0H 			//1766 	1020
		LDR 	4EH, 0H 			//1767 	184E
		MOVLB 	1H 			//1768 	1021
		STR 	5DH 			//1769 	10DD
		MOVLB 	0H 			//176A 	1020
		LDR 	4FH, 0H 			//176B 	184F
		MOVLB 	1H 			//176C 	1021
		STR 	5EH 			//176D 	10DE
		MOVLB 	0H 			//176E 	1020
		LDR 	50H, 0H 			//176F 	1850
		MOVLB 	1H 			//1770 	1021
		STR 	5FH 			//1771 	10DF
		MOVLP 	DH 			//1772 	018D
		LCALL 	545H 			//1773 	3545
		MOVLP 	10H 			//1774 	0190
		LDR 	5EH, 0H 			//1775 	185E
		MOVLB 	5H 			//1776 	1025
		STR 	2DH 			//1777 	10AD
		MOVLB 	1H 			//1778 	1021
		LDR 	5DH, 0H 			//1779 	185D
		MOVLB 	5H 			//177A 	1025
		STR 	2CH 			//177B 	10AC

		//;NFB.C: 903: unsigned char dataL = data&0xFF;
		STR 	3BH 			//177C 	10BB

		//;NFB.C: 904: EEPROMwrite(0x0C,dataL);
		LDR 	3BH, 0H 			//177D 	183B
		MOVLB 	1H 			//177E 	1021
		STR 	20H 			//177F 	10A0
		LDWI 	CH 			//1780 	000C
		MOVLP 	1BH 			//1781 	019B
		LCALL 	363H 			//1782 	3363
		MOVLP 	10H 			//1783 	0190

		//;NFB.C: 905: }
		//;NFB.C: 906: if(R0E){
		MOVLB 	6H 			//1784 	1026
		LDR 	4CH, 0H 			//1785 	184C
		IORWR 	4DH, 0H 		//1786 	144D
		BTSC 	3H, 2H 			//1787 	2903
		LJUMP 	7B4H 			//1788 	3FB4

		//;NFB.C: 907: R0E = 0;
		CLRF 	4CH 			//1789 	11CC
		CLRF 	4DH 			//178A 	11CD

		//;NFB.C: 908: int data = (int)(R0*100);
		MOVLB 	0H 			//178B 	1020
		LDR 	54H, 0H 			//178C 	1854
		MOVLB 	1H 			//178D 	1021
		STR 	49H 			//178E 	10C9
		MOVLB 	0H 			//178F 	1020
		LDR 	55H, 0H 			//1790 	1855
		MOVLB 	1H 			//1791 	1021
		STR 	4AH 			//1792 	10CA
		MOVLB 	0H 			//1793 	1020
		LDR 	56H, 0H 			//1794 	1856
		MOVLB 	1H 			//1795 	1021
		STR 	4BH 			//1796 	10CB
		LDWI 	C8H 			//1797 	00C8
		CLRF 	46H 			//1798 	11C6
		STR 	47H 			//1799 	10C7
		LDWI 	42H 			//179A 	0042
		STR 	48H 			//179B 	10C8
		MOVLP 	1DH 			//179C 	019D
		LCALL 	582H 			//179D 	3582
		MOVLP 	10H 			//179E 	0190
		MOVLP 	1FH 			//179F 	019F
		LCALL 	79FH 			//17A0 	379F
		MOVLP 	10H 			//17A1 	0190
		MOVLP 	DH 			//17A2 	018D
		LCALL 	545H 			//17A3 	3545
		MOVLP 	10H 			//17A4 	0190
		LDR 	5EH, 0H 			//17A5 	185E
		MOVLB 	5H 			//17A6 	1025
		STR 	2FH 			//17A7 	10AF
		MOVLB 	1H 			//17A8 	1021
		LDR 	5DH, 0H 			//17A9 	185D
		MOVLB 	5H 			//17AA 	1025
		STR 	2EH 			//17AB 	10AE

		//;NFB.C: 909: unsigned char dataL = data&0xFF;
		STR 	3CH 			//17AC 	10BC

		//;NFB.C: 910: EEPROMwrite(0x0D,dataL);
		LDR 	3CH, 0H 			//17AD 	183C
		MOVLB 	1H 			//17AE 	1021
		STR 	20H 			//17AF 	10A0
		LDWI 	DH 			//17B0 	000D
		MOVLP 	1BH 			//17B1 	019B
		LCALL 	363H 			//17B2 	3363
		MOVLP 	10H 			//17B3 	0190

		//;NFB.C: 633: {
		//;NFB.C: 635: if(!PA6){
		MOVLB 	0H 			//17B4 	1020
		MOVLP 	27H 			//17B5 	01A7
		BTSS 	CH, 6H 			//17B6 	2F0C
		LJUMP 	70DH 			//17B7 	3F0D

		//;NFB.C: 913: BatteryChargingLevel();
		MOVLP 	19H 			//17B8 	0199
		LCALL 	193H 			//17B9 	3193
		MOVLP 	10H 			//17BA 	0190

		//;NFB.C: 914: if(BTNtimer){
		MOVLB 	0H 			//17BB 	1020
		LDR 	6BH, 0H 			//17BC 	186B
		IORWR 	6CH, 0H 		//17BD 	146C
		BTSC 	3H, 2H 			//17BE 	2903
		LJUMP 	7C2H 			//17BF 	3FC2

		//;NFB.C: 915: BTNtimer=0;
		CLRF 	6BH 			//17C0 	11EB
		CLRF 	6CH 			//17C1 	11EC

		//;NFB.C: 916: }
		//;NFB.C: 917: if(!PA6){
		BTSC 	CH, 6H 			//17C2 	2B0C
		LJUMP 	7B4H 			//17C3 	3FB4

		//;NFB.C: 918: PB7 = 1;
		BSR 	DH, 7H 			//17C4 	278D

		//;NFB.C: 919: PB3 = 1;
		BSR 	DH, 3H 			//17C5 	258D

		//;NFB.C: 920: PB2 = 1;
		BSR 	DH, 2H 			//17C6 	250D

		//;NFB.C: 921: PA1 = 1;
		BSR 	CH, 1H 			//17C7 	248C

		//;NFB.C: 922: DelayMs(100);
		MOVLP 	18H 			//17C8 	0198
		LCALL 	C8H 			//17C9 	30C8
		MOVLP 	10H 			//17CA 	0190
		MOVLP 	1EH 			//17CB 	019E
		LCALL 	6B7H 			//17CC 	36B7
		SLEEP 					//17CD 	1063
		MOVLP 	27H 			//17CE 	01A7
		LJUMP 	709H 			//17CF 	3F09
		LDR 	34H, 0H 			//17D0 	1834
		MOVLB 	5H 			//17D1 	1025
		STR 	43H 			//17D2 	10C3
		MOVLB 	1H 			//17D3 	1021
		LDR 	35H, 0H 			//17D4 	1835
		MOVLB 	5H 			//17D5 	1025
		STR 	44H 			//17D6 	10C4
		MOVLB 	1H 			//17D7 	1021
		LDR 	36H, 0H 			//17D8 	1836
		MOVLB 	5H 			//17D9 	1025
		STR 	45H 			//17DA 	10C5
		MOVLB 	0H 			//17DB 	1020
		LDR 	4EH, 0H 			//17DC 	184E
		MOVLB 	1H 			//17DD 	1021
		STR 	34H 			//17DE 	10B4
		MOVLB 	0H 			//17DF 	1020
		LDR 	4FH, 0H 			//17E0 	184F
		MOVLB 	1H 			//17E1 	1021
		STR 	35H 			//17E2 	10B5
		MOVLB 	0H 			//17E3 	1020
		LDR 	50H, 0H 			//17E4 	1850
		MOVLB 	1H 			//17E5 	1021
		STR 	36H 			//17E6 	10B6
		MOVLB 	7H 			//17E7 	1027
		LDR 	50H, 0H 			//17E8 	1850
		MOVLB 	1H 			//17E9 	1021
		STR 	55H 			//17EA 	10D5
		MOVLB 	7H 			//17EB 	1027
		LDR 	51H, 0H 			//17EC 	1851
		MOVLB 	1H 			//17ED 	1021
		STR 	56H 			//17EE 	10D6
		MOVLB 	7H 			//17EF 	1027
		LDR 	52H, 0H 			//17F0 	1852
		MOVLB 	1H 			//17F1 	1021
		STR 	57H 			//17F2 	10D7
		MOVLB 	5H 			//17F3 	1025
		LDR 	43H, 0H 			//17F4 	1843
		MOVLB 	1H 			//17F5 	1021
		STR 	58H 			//17F6 	10D8
		MOVLB 	5H 			//17F7 	1025
		LDR 	44H, 0H 			//17F8 	1844
		MOVLB 	1H 			//17F9 	1021
		ORG		17FAH
		STR 	59H 			//17FA 	10D9
		MOVLB 	5H 			//17FB 	1025
		LDR 	45H, 0H 			//17FC 	1845
		MOVLB 	1H 			//17FD 	1021
		STR 	5AH 			//17FE 	10DA
		RET 					//17FF 	1008
		ORG		181CH
		LDR 	28H, 0H 			//181C 	1828
		STR 	49H 			//181D 	10C9
		LDR 	29H, 0H 			//181E 	1829
		STR 	4AH 			//181F 	10CA
		LDR 	2AH, 0H 			//1820 	182A
		STR 	4BH 			//1821 	10CB
		RET 					//1822 	1008
		XORWI 	80H 			//1823 	0A80
		MOVLB 	2H 			//1824 	1022
		STR 	4AH 			//1825 	10CA
		LDWI 	80H 			//1826 	0080
		SUBWR 	4AH, 0H 		//1827 	124A
		RET 					//1828 	1008
		LDR 	40H, 0H 			//1829 	1840
		MOVLB 	6H 			//182A 	1026
		STR 	2CH 			//182B 	10AC
		MOVLB 	1H 			//182C 	1021
		LDR 	41H, 0H 			//182D 	1841
		MOVLB 	6H 			//182E 	1026
		STR 	2DH 			//182F 	10AD
		MOVLB 	1H 			//1830 	1021
		LDR 	42H, 0H 			//1831 	1842
		MOVLB 	6H 			//1832 	1026
		STR 	2EH 			//1833 	10AE
		MOVLB 	5H 			//1834 	1025
		LDR 	66H, 0H 			//1835 	1866
		RET 					//1836 	1008
		LDWI 	40H 			//1837 	0040
		CLRF 	46H 			//1838 	11C6
		CLRF 	47H 			//1839 	11C7
		STR 	48H 			//183A 	10C8
		MOVLB 	5H 			//183B 	1025
		LDR 	6DH, 0H 			//183C 	186D
		MOVLB 	1H 			//183D 	1021
		STR 	29H 			//183E 	10A9
		MOVLB 	5H 			//183F 	1025
		LDR 	6CH, 0H 			//1840 	186C
		MOVLB 	1H 			//1841 	1021
		STR 	28H 			//1842 	10A8
		RET 					//1843 	1008
		MOVLB 	5H 			//1844 	1025
		LDR 	60H, 0H 			//1845 	1860
		MOVLB 	1H 			//1846 	1021
		STR 	35H 			//1847 	10B5
		MOVLB 	5H 			//1848 	1025
		LDR 	61H, 0H 			//1849 	1861
		MOVLB 	1H 			//184A 	1021
		STR 	36H 			//184B 	10B6
		MOVLB 	5H 			//184C 	1025
		LDR 	62H, 0H 			//184D 	1862
		MOVLB 	1H 			//184E 	1021
		STR 	37H 			//184F 	10B7
		RET 					//1850 	1008
		LDR 	55H, 0H 			//1851 	1855
		MOVLB 	6H 			//1852 	1026
		STR 	2FH 			//1853 	10AF
		MOVLB 	1H 			//1854 	1021
		LDR 	56H, 0H 			//1855 	1856
		MOVLB 	6H 			//1856 	1026
		STR 	30H 			//1857 	10B0
		MOVLB 	1H 			//1858 	1021
		LDR 	57H, 0H 			//1859 	1857
		MOVLB 	6H 			//185A 	1026
		STR 	31H 			//185B 	10B1
		RET 					//185C 	1008
		BSR 	DH, 0H 			//185D 	240D
		LDWI 	F4H 			//185E 	00F4
		MOVLB 	2H 			//185F 	1022
		STR 	20H 			//1860 	10A0
		LDWI 	1H 			//1861 	0001
		STR 	21H 			//1862 	10A1
		RET 					//1863 	1008
		MOVLB 	1H 			//1864 	1021
		LDWI 	80H 			//1865 	0080
		CLRF 	55H 			//1866 	11D5
		STR 	56H 			//1867 	10D6
		LDWI 	45H 			//1868 	0045
		STR 	57H 			//1869 	10D7
		RET 					//186A 	1008
		LDWI 	F4H 			//186B 	00F4
		MOVLB 	2H 			//186C 	1022
		STR 	20H 			//186D 	10A0
		LDWI 	1H 			//186E 	0001
		STR 	21H 			//186F 	10A1
		RET 					//1870 	1008
		LDR 	34H, 0H 			//1871 	1834
		MOVLB 	5H 			//1872 	1025
		STR 	63H 			//1873 	10E3
		MOVLB 	1H 			//1874 	1021
		LDR 	35H, 0H 			//1875 	1835
		MOVLB 	5H 			//1876 	1025
		STR 	64H 			//1877 	10E4
		MOVLB 	1H 			//1878 	1021
		LDR 	36H, 0H 			//1879 	1836
		MOVLB 	5H 			//187A 	1025
		STR 	65H 			//187B 	10E5
		RET 					//187C 	1008
		LDR 	55H, 0H 			//187D 	1855
		STR 	37H 			//187E 	10B7
		LDR 	56H, 0H 			//187F 	1856
		STR 	38H 			//1880 	10B8
		LDR 	57H, 0H 			//1881 	1857
		STR 	39H 			//1882 	10B9
		RET 					//1883 	1008
		STR 	25H 			//1884 	10A5
		LDWI 	4H 			//1885 	0004
		STR 	26H 			//1886 	10A6
		CLRF 	27H 			//1887 	11A7
		RET 					//1888 	1008
		LDWI 	C9H 			//1889 	00C9
		MOVLB 	2H 			//188A 	1022
		STR 	24H 			//188B 	10A4
		RETW 	A0H 			//188C 	04A0
		LDWI 	D3H 			//188D 	00D3
		MOVLB 	2H 			//188E 	1022
		STR 	24H 			//188F 	10A4
		RETW 	A0H 			//1890 	04A0
		LDWI 	D8H 			//1891 	00D8
		MOVLB 	2H 			//1892 	1022
		STR 	24H 			//1893 	10A4
		RETW 	A0H 			//1894 	04A0
		LDR 	21H, 0H 			//1895 	1821
		MOVLB 	5H 			//1896 	1025
		STR 	6BH 			//1897 	10EB
		MOVLB 	2H 			//1898 	1022
		LDR 	20H, 0H 			//1899 	1820
		MOVLB 	5H 			//189A 	1025
		STR 	6AH 			//189B 	10EA
		RET 					//189C 	1008
		LDR 	21H, 0H 			//189D 	1821
		MOVLB 	5H 			//189E 	1025
		STR 	69H 			//189F 	10E9
		MOVLB 	2H 			//18A0 	1022
		LDR 	20H, 0H 			//18A1 	1820
		MOVLB 	5H 			//18A2 	1025
		STR 	68H 			//18A3 	10E8
		RET 					//18A4 	1008
		LDR 	21H, 0H 			//18A5 	1821
		MOVLB 	5H 			//18A6 	1025
		STR 	6DH 			//18A7 	10ED
		MOVLB 	2H 			//18A8 	1022
		LDR 	20H, 0H 			//18A9 	1820
		MOVLB 	5H 			//18AA 	1025
		STR 	6CH 			//18AB 	10EC
		RET 					//18AC 	1008
		MOVLB 	6H 			//18AD 	1026
		CLRF 	68H 			//18AE 	11E8
		CLRF 	69H 			//18AF 	11E9
		CLRF 	66H 			//18B0 	11E6
		CLRF 	67H 			//18B1 	11E7
		MOVLB 	0H 			//18B2 	1020
		RET 					//18B3 	1008
		LDR 	40H, 0H 			//18B4 	1840
		STR 	49H 			//18B5 	10C9
		LDR 	41H, 0H 			//18B6 	1841
		STR 	4AH 			//18B7 	10CA
		LDR 	42H, 0H 			//18B8 	1842
		STR 	4BH 			//18B9 	10CB
		RET 					//18BA 	1008
		MOVLB 	6H 			//18BB 	1026
		CLRF 	64H 			//18BC 	11E4
		CLRF 	65H 			//18BD 	11E5
		CLRF 	62H 			//18BE 	11E2
		CLRF 	63H 			//18BF 	11E3
		MOVLB 	0H 			//18C0 	1020
		RET 					//18C1 	1008
		MOVLB 	5H 			//18C2 	1025
		XORWR 	59H, 0H 		//18C3 	1659
		IORWR 	5AH, 0H 		//18C4 	145A
		IORWR 	5BH, 0H 		//18C5 	145B
		IORWR 	5CH, 0H 		//18C6 	145C
		RET 					//18C7 	1008
		LDWI 	64H 			//18C8 	0064
		MOVLB 	2H 			//18C9 	1022
		STR 	20H 			//18CA 	10A0
		CLRF 	21H 			//18CB 	11A1
		RET 					//18CC 	1008
		STR 	6AH 			//18CD 	10EA
		MOVLB 	2H 			//18CE 	1022
		LDR 	4BH, 0H 			//18CF 	184B
		MOVLB 	5H 			//18D0 	1025
		STR 	6BH 			//18D1 	10EB
		RET 					//18D2 	1008
		LDWI 	FFH 			//18D3 	00FF
		MOVLB 	5H 			//18D4 	1025
		ADDWFC 	67H, 0H 		//18D5 	0D67
		MOVLB 	1H 			//18D6 	1021
		STR 	2FH 			//18D7 	10AF
		RET 					//18D8 	1008
		STR 	68H 			//18D9 	10E8
		MOVLB 	2H 			//18DA 	1022
		LDR 	4BH, 0H 			//18DB 	184B
		MOVLB 	5H 			//18DC 	1025
		STR 	69H 			//18DD 	10E9
		RET 					//18DE 	1008
		STR 	6CH 			//18DF 	10EC
		MOVLB 	2H 			//18E0 	1022
		LDR 	4BH, 0H 			//18E1 	184B
		MOVLB 	5H 			//18E2 	1025
		STR 	6DH 			//18E3 	10ED
		RET 					//18E4 	1008
		MOVLB 	1H 			//18E5 	1021
		STR 	34H 			//18E6 	10B4
		CLRF 	35H 			//18E7 	11B5
		CLRF 	36H 			//18E8 	11B6
		CLRF 	37H 			//18E9 	11B7
		RET 					//18EA 	1008
		MOVLB 	2H 			//18EB 	1022
		LDR 	4AH, 0H 			//18EC 	184A
		MOVLB 	5H 			//18ED 	1025
		SUBWR 	55H, 0H 		//18EE 	1255
		RET 					//18EF 	1008
		MOVLB 	2H 			//18F0 	1022
		LDR 	4BH, 0H 			//18F1 	184B
		MOVLB 	5H 			//18F2 	1025
		SUBWR 	56H, 0H 		//18F3 	1256
		RET 					//18F4 	1008
		MOVLB 	2H 			//18F5 	1022
		LDR 	4CH, 0H 			//18F6 	184C
		MOVLB 	5H 			//18F7 	1025
		SUBWR 	57H, 0H 		//18F8 	1257
		RET 					//18F9 	1008
		MOVLB 	2H 			//18FA 	1022
		LDR 	4BH, 0H 			//18FB 	184B
		MOVLB 	5H 			//18FC 	1025
		SUBWR 	5AH, 0H 		//18FD 	125A
		RET 					//18FE 	1008
		MOVLB 	2H 			//18FF 	1022
		LDR 	4CH, 0H 			//1900 	184C
		MOVLB 	5H 			//1901 	1025
		SUBWR 	5BH, 0H 		//1902 	125B
		RET 					//1903 	1008
		MOVLB 	2H 			//1904 	1022
		LDR 	4AH, 0H 			//1905 	184A
		MOVLB 	5H 			//1906 	1025
		SUBWR 	59H, 0H 		//1907 	1259
		RET 					//1908 	1008
		LDR 	28H, 0H 			//1909 	1828
		STR 	20H 			//190A 	10A0
		LDR 	29H, 0H 			//190B 	1829
		STR 	21H 			//190C 	10A1
		LDWI 	8EH 			//190D 	008E
		CLRF 	22H 			//190E 	11A2
		STR 	23H 			//190F 	10A3
		CLRF 	24H 			//1910 	11A4
		LCALL 	61DH 			//1911 	361D
		LDR 	20H, 0H 			//1912 	1820
		STR 	28H 			//1913 	10A8
		LDR 	21H, 0H 			//1914 	1821
		STR 	29H 			//1915 	10A9
		LDR 	22H, 0H 			//1916 	1822
		STR 	2AH 			//1917 	10AA
		RET 					//1918 	1008

		//;NFB.C: 499: for(int i=0;i<len;i++)
		CLRF 	29H 			//1919 	11A9
		CLRF 	2AH 			//191A 	11AA
		LDR 	2AH, 0H 			//191B 	182A
		XORWI 	80H 			//191C 	0A80
		STR 	28H 			//191D 	10A8
		LDR 	27H, 0H 			//191E 	1827
		XORWI 	80H 			//191F 	0A80
		SUBWR 	28H, 0H 		//1920 	1228
		BTSS 	3H, 2H 			//1921 	2D03
		LJUMP 	125H 			//1922 	3925
		LDR 	26H, 0H 			//1923 	1826
		SUBWR 	29H, 0H 		//1924 	1229
		BTSC 	3H, 0H 			//1925 	2803
		RET 					//1926 	1008

		//;NFB.C: 500: {
		//;NFB.C: 501: UR1DATAL=tbuf[i];
		MOVLB 	2H 			//1927 	1022
		LDR 	24H, 0H 			//1928 	1824
		ADDWR 	29H, 0H 		//1929 	1729
		STR 	4H 			//192A 	1084
		LDR 	25H, 0H 			//192B 	1825
		ADDWFC 	2AH, 0H 		//192C 	0D2A
		STR 	5H 			//192D 	1085
		LDR 	0H, 0H 			//192E 	1800
		MOVLB 	9H 			//192F 	1029
		STR 	CH 			//1930 	108C

		//;NFB.C: 502: DelayMs(1);
		MOVLB 	2H 			//1931 	1022
		CLRF 	20H 			//1932 	11A0
		INCR 	20H, 1H 		//1933 	1AA0
		CLRF 	21H 			//1934 	11A1
		LCALL 	6B7H 			//1935 	36B7
		MOVLP 	19H 			//1936 	0199
		MOVLB 	2H 			//1937 	1022
		INCR 	29H, 1H 		//1938 	1AA9
		BTSC 	3H, 2H 			//1939 	2903
		INCR 	2AH, 1H 		//193A 	1AAA
		LJUMP 	11BH 			//193B 	391B

		//;NFB.C: 550: int Vdd = GET_ADC_DATA(2);
		LDWI 	2H 			//193C 	0002
		LCALL 	211H 			//193D 	3211
		LDR 	21H, 0H 			//193E 	1821
		STR 	25H 			//193F 	10A5
		LDR 	20H, 0H 			//1940 	1820
		STR 	24H 			//1941 	10A4

		//;NFB.C: 551: bat = (float)Vdd*2/4096;
		MOVLP 	18H 			//1942 	0198
		LCALL 	64H 			//1943 	3064
		MOVLP 	19H 			//1944 	0199
		LCALL 	7E2H 			//1945 	37E2
		MOVLP 	19H 			//1946 	0199
		LDR 	25H, 0H 			//1947 	1825
		MOVLB 	1H 			//1948 	1021
		STR 	2FH 			//1949 	10AF
		MOVLB 	2H 			//194A 	1022
		LDR 	24H, 0H 			//194B 	1824
		MOVLB 	1H 			//194C 	1021
		STR 	2EH 			//194D 	10AE
		LCALL 	382H 			//194E 	3382
		MOVLP 	19H 			//194F 	0199
		LCALL 	798H 			//1950 	3798
		MOVLP 	19H 			//1951 	0199
		LCALL 	582H 			//1952 	3582
		MOVLP 	7H 			//1953 	0187
		LCALL 	743H 			//1954 	3743
		MOVLP 	19H 			//1955 	0199
		LCALL 	65BH 			//1956 	365B
		MOVLP 	19H 			//1957 	0199

		//;NFB.C: 552: bat = bat*2;
		LCALL 	70BH 			//1958 	370B
		MOVLP 	19H 			//1959 	0199
		LCALL 	582H 			//195A 	3582
		MOVLP 	19H 			//195B 	0199
		LCALL 	728H 			//195C 	3728
		MOVLP 	19H 			//195D 	0199

		//;NFB.C: 553: if(bat>=3.9){
		LCALL 	6DFH 			//195E 	36DF
		MOVLP 	19H 			//195F 	0199
		LCALL 	7C7H 			//1960 	37C7
		MOVLP 	CH 			//1961 	018C
		LCALL 	4E3H 			//1962 	34E3
		MOVLP 	19H 			//1963 	0199
		BTSS 	3H, 0H 			//1964 	2C03
		LJUMP 	169H 			//1965 	3969

		//;NFB.C: 554: PB3 = 0;
		MOVLB 	0H 			//1966 	1020
		BCR 	DH, 3H 			//1967 	218D
		LJUMP 	174H 			//1968 	3974

		//;NFB.C: 557: } else if(bat>=3.5){
		//;NFB.C: 556: PA1 = 0;
		//;NFB.C: 555: PB2 = 0;
		MOVLB 	0H 			//1969 	1020
		LCALL 	6DFH 			//196A 	36DF
		MOVLP 	19H 			//196B 	0199
		LCALL 	7E8H 			//196C 	37E8
		MOVLP 	CH 			//196D 	018C
		LCALL 	4E3H 			//196E 	34E3
		MOVLP 	19H 			//196F 	0199
		BTSS 	3H, 0H 			//1970 	2C03
		LJUMP 	176H 			//1971 	3976

		//;NFB.C: 558: PB3 = 1;
		MOVLB 	0H 			//1972 	1020
		BSR 	DH, 3H 			//1973 	258D

		//;NFB.C: 559: PB2 = 0;
		BCR 	DH, 2H 			//1974 	210D
		LJUMP 	182H 			//1975 	3982

		//;NFB.C: 561: } else if(bat>=3.1){
		//;NFB.C: 560: PA1 = 0;
		MOVLB 	0H 			//1976 	1020
		LCALL 	6DFH 			//1977 	36DF
		MOVLP 	19H 			//1978 	0199
		LCALL 	7B2H 			//1979 	37B2
		MOVLP 	CH 			//197A 	018C
		LCALL 	4E3H 			//197B 	34E3
		MOVLP 	19H 			//197C 	0199
		BTSS 	3H, 0H 			//197D 	2C03
		LJUMP 	184H 			//197E 	3984

		//;NFB.C: 562: PB3 = 1;
		MOVLB 	0H 			//197F 	1020
		BSR 	DH, 3H 			//1980 	258D

		//;NFB.C: 563: PB2 = 1;
		BSR 	DH, 2H 			//1981 	250D

		//;NFB.C: 564: PA1 = 0;
		BCR 	CH, 1H 			//1982 	208C

		//;NFB.C: 565: } else{
		LJUMP 	188H 			//1983 	3988

		//;NFB.C: 566: PB3 = 1;
		MOVLB 	0H 			//1984 	1020
		BSR 	DH, 3H 			//1985 	258D

		//;NFB.C: 567: PB2 = 1;
		BSR 	DH, 2H 			//1986 	250D

		//;NFB.C: 568: PA1 = 1;
		BSR 	CH, 1H 			//1987 	248C

		//;NFB.C: 569: }
		//;NFB.C: 570: DelayMs(1000);
		LDWI 	E8H 			//1988 	00E8
		MOVLB 	2H 			//1989 	1022
		STR 	20H 			//198A 	10A0
		LDWI 	3H 			//198B 	0003
		STR 	21H 			//198C 	10A1
		LCALL 	6B7H 			//198D 	36B7

		//;NFB.C: 571: PB3 = 1;
		MOVLB 	0H 			//198E 	1020
		BSR 	DH, 3H 			//198F 	258D

		//;NFB.C: 572: PB2 = 1;
		BSR 	DH, 2H 			//1990 	250D

		//;NFB.C: 573: PA1 = 1;
		BSR 	CH, 1H 			//1991 	248C
		RET 					//1992 	1008

		//;NFB.C: 578: int Vdd = GET_ADC_DATA(2);
		LDWI 	2H 			//1993 	0002
		LCALL 	211H 			//1994 	3211
		MOVLP 	19H 			//1995 	0199
		LDR 	21H, 0H 			//1996 	1821
		STR 	27H 			//1997 	10A7
		LDR 	20H, 0H 			//1998 	1820
		STR 	26H 			//1999 	10A6

		//;NFB.C: 579: for(int i=0;i<4;i++){
		CLRF 	28H 			//199A 	11A8
		CLRF 	29H 			//199B 	11A9

		//;NFB.C: 580: Vdd = (Vdd+GET_ADC_DATA(2))/2;
		LDWI 	2H 			//199C 	0002
		LCALL 	211H 			//199D 	3211
		MOVLP 	19H 			//199E 	0199
		LDR 	26H, 0H 			//199F 	1826
		ADDWR 	20H, 0H 		//19A0 	1720
		STR 	24H 			//19A1 	10A4
		LDR 	27H, 0H 			//19A2 	1827
		ADDWFC 	21H, 0H 		//19A3 	0D21
		STR 	25H 			//19A4 	10A5
		LSRF 	25H, 1H 		//19A5 	06A5
		RRR 	24H, 1H 			//19A6 	1CA4
		LDR 	24H, 0H 			//19A7 	1824
		STR 	26H 			//19A8 	10A6
		LDR 	25H, 0H 			//19A9 	1825
		STR 	27H 			//19AA 	10A7
		INCR 	28H, 1H 		//19AB 	1AA8
		BTSC 	3H, 2H 			//19AC 	2903
		INCR 	29H, 1H 		//19AD 	1AA9
		LDR 	29H, 0H 			//19AE 	1829
		XORWI 	80H 			//19AF 	0A80
		STR 	24H 			//19B0 	10A4
		LDWI 	80H 			//19B1 	0080
		SUBWR 	24H, 0H 		//19B2 	1224
		BTSS 	3H, 2H 			//19B3 	2D03
		LJUMP 	1B7H 			//19B4 	39B7
		LDWI 	4H 			//19B5 	0004
		SUBWR 	28H, 0H 		//19B6 	1228
		BTSS 	3H, 0H 			//19B7 	2C03
		LJUMP 	19CH 			//19B8 	399C

		//;NFB.C: 581: }
		//;NFB.C: 582: bat = (float)Vdd*2/4096;
		MOVLP 	18H 			//19B9 	0198
		LCALL 	64H 			//19BA 	3064
		MOVLP 	19H 			//19BB 	0199
		LCALL 	7E2H 			//19BC 	37E2
		MOVLP 	19H 			//19BD 	0199
		LDR 	27H, 0H 			//19BE 	1827
		MOVLB 	1H 			//19BF 	1021
		STR 	2FH 			//19C0 	10AF
		MOVLB 	2H 			//19C1 	1022
		LDR 	26H, 0H 			//19C2 	1826
		MOVLB 	1H 			//19C3 	1021
		STR 	2EH 			//19C4 	10AE
		LCALL 	382H 			//19C5 	3382
		MOVLP 	19H 			//19C6 	0199
		LCALL 	798H 			//19C7 	3798
		MOVLP 	19H 			//19C8 	0199
		LCALL 	582H 			//19C9 	3582
		MOVLP 	7H 			//19CA 	0187
		LCALL 	743H 			//19CB 	3743
		MOVLP 	19H 			//19CC 	0199
		LCALL 	65BH 			//19CD 	365B
		MOVLP 	19H 			//19CE 	0199

		//;NFB.C: 583: bat = bat*2;
		LCALL 	70BH 			//19CF 	370B
		MOVLP 	19H 			//19D0 	0199
		LCALL 	582H 			//19D1 	3582
		MOVLP 	19H 			//19D2 	0199
		LCALL 	728H 			//19D3 	3728
		MOVLP 	19H 			//19D4 	0199

		//;NFB.C: 584: if(bat>=3.9){
		LCALL 	6DFH 			//19D5 	36DF
		MOVLP 	19H 			//19D6 	0199
		LCALL 	7C7H 			//19D7 	37C7
		MOVLP 	CH 			//19D8 	018C
		LCALL 	4E3H 			//19D9 	34E3
		MOVLP 	19H 			//19DA 	0199
		BTSS 	3H, 0H 			//19DB 	2C03
		LJUMP 	1E8H 			//19DC 	39E8

		//;NFB.C: 585: PB3 = 0;
		MOVLB 	0H 			//19DD 	1020
		BCR 	DH, 3H 			//19DE 	218D

		//;NFB.C: 586: PB2 = 0;
		BCR 	DH, 2H 			//19DF 	210D

		//;NFB.C: 587: PA1 = 0;
		BCR 	CH, 1H 			//19E0 	208C

		//;NFB.C: 588: if(PB5){
		BTSS 	DH, 5H 			//19E1 	2E8D
		LJUMP 	1E5H 			//19E2 	39E5

		//;NFB.C: 589: PB7 = 0;
		BCR 	DH, 7H 			//19E3 	238D

		//;NFB.C: 590: } else{
		LJUMP 	20DH 			//19E4 	3A0D

		//;NFB.C: 591: PB7 = ~PB7;
		LDWI 	80H 			//19E5 	0080
		XORWR 	DH, 1H 		//19E6 	168D
		LJUMP 	20DH 			//19E7 	3A0D
		MOVLB 	0H 			//19E8 	1020
		LCALL 	6DFH 			//19E9 	36DF
		MOVLP 	19H 			//19EA 	0199
		LCALL 	7E8H 			//19EB 	37E8
		MOVLP 	CH 			//19EC 	018C
		LCALL 	4E3H 			//19ED 	34E3
		MOVLP 	19H 			//19EE 	0199
		BTSS 	3H, 0H 			//19EF 	2C03
		LJUMP 	1F8H 			//19F0 	39F8

		//;NFB.C: 594: PB7 = 1;
		MOVLB 	0H 			//19F1 	1020
		BSR 	DH, 7H 			//19F2 	278D

		//;NFB.C: 595: PB3 = ~PB3;
		LDWI 	8H 			//19F3 	0008
		XORWR 	DH, 1H 		//19F4 	168D

		//;NFB.C: 596: PB2 = 0;
		BCR 	DH, 2H 			//19F5 	210D

		//;NFB.C: 597: PA1 = 0;
		BCR 	CH, 1H 			//19F6 	208C

		//;NFB.C: 598: } else if(bat>=3.1){
		LJUMP 	20DH 			//19F7 	3A0D
		MOVLB 	0H 			//19F8 	1020
		LCALL 	6DFH 			//19F9 	36DF
		MOVLP 	19H 			//19FA 	0199
		LCALL 	7B2H 			//19FB 	37B2
		MOVLP 	CH 			//19FC 	018C
		LCALL 	4E3H 			//19FD 	34E3
		MOVLP 	19H 			//19FE 	0199
		BTSS 	3H, 0H 			//19FF 	2C03
		LJUMP 	207H 			//1A00 	3A07

		//;NFB.C: 599: PB7 = 1;
		MOVLB 	0H 			//1A01 	1020
		BSR 	DH, 7H 			//1A02 	278D

		//;NFB.C: 600: PB3 = 1;
		BSR 	DH, 3H 			//1A03 	258D

		//;NFB.C: 601: PB2 = ~PB2;
		LDWI 	4H 			//1A04 	0004
		XORWR 	DH, 1H 		//1A05 	168D
		LJUMP 	1F6H 			//1A06 	39F6

		//;NFB.C: 604: PB7 = 1;
		MOVLB 	0H 			//1A07 	1020
		BSR 	DH, 7H 			//1A08 	278D

		//;NFB.C: 605: PB3 = 1;
		BSR 	DH, 3H 			//1A09 	258D

		//;NFB.C: 606: PB2 = 1;
		BSR 	DH, 2H 			//1A0A 	250D

		//;NFB.C: 607: PA1 = ~PA1;
		LDWI 	2H 			//1A0B 	0002
		XORWR 	CH, 1H 		//1A0C 	168C

		//;NFB.C: 608: }
		//;NFB.C: 609: DelayMs(500);
		MOVLP 	18H 			//1A0D 	0198
		LCALL 	6BH 			//1A0E 	306B
		MOVLP 	19H 			//1A0F 	0199
		LJUMP 	6B7H 			//1A10 	3EB7
		MOVLB 	1H 			//1A11 	1021
		STR 	6FH 			//1A12 	10EF

		//;NFB.C: 390: ADCON0&=0B00001111;
		LDWI 	FH 			//1A13 	000F
		ANDWR 	1DH, 1H 		//1A14 	159D

		//;NFB.C: 391: ADCON0|=adcChannel<<4;
		SWAPR 	6FH, 0H 		//1A15 	1E6F
		ANDWI 	F0H 			//1A16 	09F0
		IORWR 	1DH, 1H 		//1A17 	149D

		//;NFB.C: 392: DelayUs(100);
		LDWI 	64H 			//1A18 	0064
		STR 	6AH 			//1A19 	10EA
		CLRF 	6BH 			//1A1A 	11EB
		LCALL 	22DH 			//1A1B 	322D
		MOVLP 	19H 			//1A1C 	0199

		//;NFB.C: 393: GO=1;
		MOVLB 	1H 			//1A1D 	1021
		BSR 	1DH, 1H 			//1A1E 	249D

		//;NFB.C: 394: __nop();
		NOP 					//1A1F 	1000

		//;NFB.C: 395: __nop();
		NOP 					//1A20 	1000

		//;NFB.C: 396: while(GO);
		MOVLB 	1H 			//1A21 	1021
		BTSC 	1DH, 1H 		//1A22 	289D
		LJUMP 	221H 			//1A23 	3A21

		//;NFB.C: 398: return (unsigned int)(ADRESH<<8|ADRESL);
		LDR 	1CH, 0H 			//1A24 	181C
		MOVLB 	2H 			//1A25 	1022
		STR 	21H 			//1A26 	10A1
		CLRF 	20H 			//1A27 	11A0
		MOVLB 	1H 			//1A28 	1021
		LDR 	1BH, 0H 			//1A29 	181B
		MOVLB 	2H 			//1A2A 	1022
		IORWR 	20H, 1H 		//1A2B 	14A0
		RET 					//1A2C 	1008

		//;NFB.C: 219: Time = (int)(Time/2*0.8);
		LDR 	6BH, 0H 			//1A2D 	186B
		STR 	29H 			//1A2E 	10A9
		LDR 	6AH, 0H 			//1A2F 	186A
		STR 	28H 			//1A30 	10A8
		LDWI 	2H 			//1A31 	0002
		STR 	26H 			//1A32 	10A6
		CLRF 	27H 			//1A33 	11A7
		LCALL 	509H 			//1A34 	3509
		MOVLP 	19H 			//1A35 	0199
		LDR 	27H, 0H 			//1A36 	1827
		STR 	2FH 			//1A37 	10AF
		LDR 	26H, 0H 			//1A38 	1826
		STR 	2EH 			//1A39 	10AE
		LCALL 	382H 			//1A3A 	3382
		MOVLP 	19H 			//1A3B 	0199
		LCALL 	798H 			//1A3C 	3798
		MOVLP 	19H 			//1A3D 	0199
		LDWI 	CDH 			//1A3E 	00CD
		STR 	46H 			//1A3F 	10C6
		LDWI 	4CH 			//1A40 	004C
		STR 	47H 			//1A41 	10C7
		LDWI 	3FH 			//1A42 	003F
		STR 	48H 			//1A43 	10C8
		LCALL 	582H 			//1A44 	3582
		MOVLP 	19H 			//1A45 	0199
		LCALL 	79FH 			//1A46 	379F
		MOVLP 	DH 			//1A47 	018D
		LCALL 	545H 			//1A48 	3545
		MOVLP 	19H 			//1A49 	0199
		LDR 	5EH, 0H 			//1A4A 	185E
		STR 	6BH 			//1A4B 	10EB
		LDR 	5DH, 0H 			//1A4C 	185D
		STR 	6AH 			//1A4D 	10EA

		//;NFB.C: 220: for(int a=0;a<Time;a++)
		CLRF 	6DH 			//1A4E 	11ED
		CLRF 	6EH 			//1A4F 	11EE
		LDR 	6EH, 0H 			//1A50 	186E
		XORWI 	80H 			//1A51 	0A80
		STR 	6CH 			//1A52 	10EC
		LDR 	6BH, 0H 			//1A53 	186B
		XORWI 	80H 			//1A54 	0A80
		SUBWR 	6CH, 0H 		//1A55 	126C
		BTSS 	3H, 2H 			//1A56 	2D03
		LJUMP 	25AH 			//1A57 	3A5A
		LDR 	6AH, 0H 			//1A58 	186A
		SUBWR 	6DH, 0H 		//1A59 	126D
		BTSC 	3H, 0H 			//1A5A 	2803
		RET 					//1A5B 	1008

		//;NFB.C: 221: {
		//;NFB.C: 222: __nop();
		NOP 					//1A5C 	1000
		MOVLB 	1H 			//1A5D 	1021
		INCR 	6DH, 1H 		//1A5E 	1AED
		BTSC 	3H, 2H 			//1A5F 	2903
		INCR 	6EH, 1H 		//1A60 	1AEE
		LJUMP 	250H 			//1A61 	3A50

		//;NFB.C: 519: unsigned char EEReadData=EEPROMread(0x00);
		LDWI 	0H 			//1A62 	0000
		LCALL 	34BH 			//1A63 	334B
		MOVLP 	19H 			//1A64 	0199
		STR 	66H 			//1A65 	10E6

		//;NFB.C: 520: if(EEReadData != 0x01){
		DECR 	66H, 0H 		//1A66 	1366
		BTSC 	3H, 2H 			//1A67 	2903
		LJUMP 	2BBH 			//1A68 	3ABB
		LDWI 	0H 			//1A69 	0000

		//;NFB.C: 521: EEPROMwrite(0x00,0x01);
		CLRF 	20H 			//1A6A 	11A0
		INCR 	20H, 1H 		//1A6B 	1AA0
		LCALL 	363H 			//1A6C 	3363
		MOVLP 	19H 			//1A6D 	0199

		//;NFB.C: 522: EEPROMwrite(0x01,0x14);
		LDWI 	14H 			//1A6E 	0014
		MOVLB 	1H 			//1A6F 	1021
		STR 	20H 			//1A70 	10A0
		LDWI 	1H 			//1A71 	0001
		LCALL 	363H 			//1A72 	3363
		MOVLP 	19H 			//1A73 	0199

		//;NFB.C: 523: EEPROMwrite(0x02,0x36);
		LDWI 	36H 			//1A74 	0036
		MOVLB 	1H 			//1A75 	1021
		STR 	20H 			//1A76 	10A0
		LDWI 	2H 			//1A77 	0002
		LCALL 	363H 			//1A78 	3363
		MOVLP 	19H 			//1A79 	0199

		//;NFB.C: 524: EEPROMwrite(0x03,0x01);
		MOVLB 	1H 			//1A7A 	1021
		LDWI 	3H 			//1A7B 	0003
		CLRF 	20H 			//1A7C 	11A0
		INCR 	20H, 1H 		//1A7D 	1AA0
		LCALL 	363H 			//1A7E 	3363
		MOVLP 	19H 			//1A7F 	0199

		//;NFB.C: 525: EEPROMwrite(0x04,0x40);
		LDWI 	40H 			//1A80 	0040
		MOVLB 	1H 			//1A81 	1021
		STR 	20H 			//1A82 	10A0
		LDWI 	4H 			//1A83 	0004
		LCALL 	363H 			//1A84 	3363
		MOVLP 	19H 			//1A85 	0199

		//;NFB.C: 526: EEPROMwrite(0x05,0x01);
		MOVLB 	1H 			//1A86 	1021
		LDWI 	5H 			//1A87 	0005
		CLRF 	20H 			//1A88 	11A0
		INCR 	20H, 1H 		//1A89 	1AA0
		LCALL 	363H 			//1A8A 	3363
		MOVLP 	19H 			//1A8B 	0199

		//;NFB.C: 527: EEPROMwrite(0x06,0x27);
		LDWI 	27H 			//1A8C 	0027
		MOVLB 	1H 			//1A8D 	1021
		STR 	20H 			//1A8E 	10A0
		LDWI 	6H 			//1A8F 	0006
		LCALL 	363H 			//1A90 	3363
		MOVLP 	19H 			//1A91 	0199

		//;NFB.C: 528: EEPROMwrite(0x07,0x01);
		MOVLB 	1H 			//1A92 	1021
		LDWI 	7H 			//1A93 	0007
		CLRF 	20H 			//1A94 	11A0
		INCR 	20H, 1H 		//1A95 	1AA0
		LCALL 	363H 			//1A96 	3363
		MOVLP 	19H 			//1A97 	0199

		//;NFB.C: 529: EEPROMwrite(0x08,0x0F);
		LDWI 	FH 			//1A98 	000F
		MOVLB 	1H 			//1A99 	1021
		STR 	20H 			//1A9A 	10A0
		LDWI 	8H 			//1A9B 	0008
		LCALL 	363H 			//1A9C 	3363
		MOVLP 	19H 			//1A9D 	0199

		//;NFB.C: 530: EEPROMwrite(0x09,0x05);
		LDWI 	5H 			//1A9E 	0005
		MOVLB 	1H 			//1A9F 	1021
		STR 	20H 			//1AA0 	10A0
		LDWI 	9H 			//1AA1 	0009
		LCALL 	363H 			//1AA2 	3363
		MOVLP 	19H 			//1AA3 	0199

		//;NFB.C: 531: EEPROMwrite(0x0A,0x28);
		LDWI 	28H 			//1AA4 	0028
		MOVLB 	1H 			//1AA5 	1021
		STR 	20H 			//1AA6 	10A0
		LDWI 	AH 			//1AA7 	000A
		LCALL 	363H 			//1AA8 	3363
		MOVLP 	19H 			//1AA9 	0199

		//;NFB.C: 532: EEPROMwrite(0x0B,0x0A);
		LDWI 	AH 			//1AAA 	000A
		MOVLB 	1H 			//1AAB 	1021
		STR 	20H 			//1AAC 	10A0
		LDWI 	BH 			//1AAD 	000B
		LCALL 	363H 			//1AAE 	3363
		MOVLP 	19H 			//1AAF 	0199

		//;NFB.C: 533: EEPROMwrite(0x0C,0x19);
		LDWI 	19H 			//1AB0 	0019
		MOVLB 	1H 			//1AB1 	1021
		STR 	20H 			//1AB2 	10A0
		LDWI 	CH 			//1AB3 	000C
		LCALL 	363H 			//1AB4 	3363
		MOVLP 	19H 			//1AB5 	0199

		//;NFB.C: 534: EEPROMwrite(0x0D,0x41);
		LDWI 	41H 			//1AB6 	0041
		MOVLB 	1H 			//1AB7 	1021
		STR 	20H 			//1AB8 	10A0
		LDWI 	DH 			//1AB9 	000D
		LJUMP 	363H 			//1ABA 	3B63

		//;NFB.C: 535: } else{
		//;NFB.C: 536: t1 = EEPROMread(0x01);
		LDWI 	1H 			//1ABB 	0001
		LCALL 	34BH 			//1ABC 	334B
		MOVLP 	19H 			//1ABD 	0199
		MOVLB 	5H 			//1ABE 	1025
		STR 	66H 			//1ABF 	10E6
		LDWI 	2H 			//1AC0 	0002
		CLRF 	67H 			//1AC1 	11E7

		//;NFB.C: 537: t2 = (EEPROMread(0x03)<<8)+EEPROMread(0x02);
		LCALL 	34BH 			//1AC2 	334B
		MOVLP 	19H 			//1AC3 	0199
		STR 	64H 			//1AC4 	10E4
		LDWI 	3H 			//1AC5 	0003
		LCALL 	34BH 			//1AC6 	334B
		MOVLP 	19H 			//1AC7 	0199
		MOVLB 	0H 			//1AC8 	1020
		STR 	68H 			//1AC9 	10E8
		MOVLB 	1H 			//1ACA 	1021
		LDR 	64H, 0H 			//1ACB 	1864
		MOVLB 	0H 			//1ACC 	1020
		STR 	67H 			//1ACD 	10E7

		//;NFB.C: 538: T1 = (EEPROMread(0x05)<<8)+EEPROMread(0x04);
		LDWI 	4H 			//1ACE 	0004
		LCALL 	34BH 			//1ACF 	334B
		MOVLP 	19H 			//1AD0 	0199
		STR 	64H 			//1AD1 	10E4
		LDWI 	5H 			//1AD2 	0005
		LCALL 	34BH 			//1AD3 	334B
		MOVLP 	19H 			//1AD4 	0199
		LCALL 	7ACH 			//1AD5 	37AC
		MOVLP 	19H 			//1AD6 	0199
		LCALL 	382H 			//1AD7 	3382
		MOVLP 	19H 			//1AD8 	0199
		LDR 	2EH, 0H 			//1AD9 	182E
		MOVLB 	5H 			//1ADA 	1025
		STR 	5DH 			//1ADB 	10DD
		MOVLB 	1H 			//1ADC 	1021
		LDR 	2FH, 0H 			//1ADD 	182F
		MOVLB 	5H 			//1ADE 	1025
		STR 	5EH 			//1ADF 	10DE
		MOVLB 	1H 			//1AE0 	1021
		LDR 	30H, 0H 			//1AE1 	1830
		MOVLB 	5H 			//1AE2 	1025
		STR 	5FH 			//1AE3 	10DF

		//;NFB.C: 539: T2 = (EEPROMread(0x07)<<8)+EEPROMread(0x06);
		LDWI 	6H 			//1AE4 	0006
		LCALL 	34BH 			//1AE5 	334B
		MOVLP 	19H 			//1AE6 	0199
		STR 	64H 			//1AE7 	10E4
		LDWI 	7H 			//1AE8 	0007
		LCALL 	34BH 			//1AE9 	334B
		MOVLP 	19H 			//1AEA 	0199
		LCALL 	7ACH 			//1AEB 	37AC
		MOVLP 	19H 			//1AEC 	0199
		LCALL 	382H 			//1AED 	3382
		MOVLP 	19H 			//1AEE 	0199
		LDR 	2EH, 0H 			//1AEF 	182E
		MOVLB 	0H 			//1AF0 	1020
		STR 	4BH 			//1AF1 	10CB
		MOVLB 	1H 			//1AF2 	1021
		LDR 	2FH, 0H 			//1AF3 	182F
		MOVLB 	0H 			//1AF4 	1020
		STR 	4CH 			//1AF5 	10CC
		MOVLB 	1H 			//1AF6 	1021
		LDR 	30H, 0H 			//1AF7 	1830
		MOVLB 	0H 			//1AF8 	1020
		STR 	4DH 			//1AF9 	10CD

		//;NFB.C: 540: pf = EEPROMread(0x08);
		LDWI 	8H 			//1AFA 	0008
		LCALL 	34BH 			//1AFB 	334B
		MOVLP 	19H 			//1AFC 	0199
		MOVLB 	0H 			//1AFD 	1020
		STR 	65H 			//1AFE 	10E5
		LDWI 	9H 			//1AFF 	0009
		CLRF 	66H 			//1B00 	11E6

		//;NFB.C: 541: pt = EEPROMread(0x09);
		LCALL 	34BH 			//1B01 	334B
		MOVLP 	19H 			//1B02 	0199
		MOVLB 	0H 			//1B03 	1020
		STR 	63H 			//1B04 	10E3
		LDWI 	AH 			//1B05 	000A
		CLRF 	64H 			//1B06 	11E4

		//;NFB.C: 542: T0 = (EEPROMread(0x0B)<<8)+EEPROMread(0x0A);
		LCALL 	34BH 			//1B07 	334B
		MOVLP 	19H 			//1B08 	0199
		STR 	64H 			//1B09 	10E4
		LDWI 	BH 			//1B0A 	000B
		LCALL 	34BH 			//1B0B 	334B
		MOVLP 	19H 			//1B0C 	0199
		LCALL 	7ACH 			//1B0D 	37AC
		MOVLP 	19H 			//1B0E 	0199
		LCALL 	382H 			//1B0F 	3382
		MOVLP 	19H 			//1B10 	0199
		LDR 	2EH, 0H 			//1B11 	182E
		MOVLB 	0H 			//1B12 	1020
		STR 	51H 			//1B13 	10D1
		MOVLB 	1H 			//1B14 	1021
		LDR 	2FH, 0H 			//1B15 	182F
		MOVLB 	0H 			//1B16 	1020
		STR 	52H 			//1B17 	10D2
		MOVLB 	1H 			//1B18 	1021
		LDR 	30H, 0H 			//1B19 	1830
		MOVLB 	0H 			//1B1A 	1020
		STR 	53H 			//1B1B 	10D3

		//;NFB.C: 543: Tr = EEPROMread(0x0C);
		LDWI 	CH 			//1B1C 	000C
		LCALL 	34BH 			//1B1D 	334B
		MOVLP 	19H 			//1B1E 	0199
		LCALL 	60EH 			//1B1F 	360E
		MOVLP 	19H 			//1B20 	0199
		LDR 	28H, 0H 			//1B21 	1828
		MOVLB 	0H 			//1B22 	1020
		STR 	4EH 			//1B23 	10CE
		MOVLB 	1H 			//1B24 	1021
		LDR 	29H, 0H 			//1B25 	1829
		MOVLB 	0H 			//1B26 	1020
		STR 	4FH 			//1B27 	10CF
		MOVLB 	1H 			//1B28 	1021
		LDR 	2AH, 0H 			//1B29 	182A
		MOVLB 	0H 			//1B2A 	1020
		STR 	50H 			//1B2B 	10D0

		//;NFB.C: 544: R0 = (float)EEPROMread(0x0D)/100;
		LDWI 	0H 			//1B2C 	0000
		MOVLB 	1H 			//1B2D 	1021
		STR 	55H 			//1B2E 	10D5
		LDWI 	C8H 			//1B2F 	00C8
		STR 	56H 			//1B30 	10D6
		LDWI 	42H 			//1B31 	0042
		STR 	57H 			//1B32 	10D7
		LDWI 	DH 			//1B33 	000D
		LCALL 	34BH 			//1B34 	334B
		MOVLP 	19H 			//1B35 	0199
		LCALL 	60EH 			//1B36 	360E
		MOVLP 	19H 			//1B37 	0199
		LDR 	28H, 0H 			//1B38 	1828
		STR 	58H 			//1B39 	10D8
		LDR 	29H, 0H 			//1B3A 	1829
		STR 	59H 			//1B3B 	10D9
		LDR 	2AH, 0H 			//1B3C 	182A
		STR 	5AH 			//1B3D 	10DA
		LCALL 	65BH 			//1B3E 	365B
		LDR 	55H, 0H 			//1B3F 	1855
		MOVLB 	0H 			//1B40 	1020
		STR 	54H 			//1B41 	10D4
		MOVLB 	1H 			//1B42 	1021
		LDR 	56H, 0H 			//1B43 	1856
		MOVLB 	0H 			//1B44 	1020
		STR 	55H 			//1B45 	10D5
		MOVLB 	1H 			//1B46 	1021
		LDR 	57H, 0H 			//1B47 	1857
		MOVLB 	0H 			//1B48 	1020
		STR 	56H 			//1B49 	10D6
		RET 					//1B4A 	1008
		MOVLB 	1H 			//1B4B 	1021
		STR 	20H 			//1B4C 	10A0

		//;NFB.C: 420: unsigned char ReEEPROMread;
		//;NFB.C: 421: while(GIE)
		BTSS 	BH, 7H 			//1B4D 	2F8B
		LJUMP 	353H 			//1B4E 	3B53

		//;NFB.C: 422: {
		//;NFB.C: 423: GIE = 0;
		BCR 	BH, 7H 			//1B4F 	238B

		//;NFB.C: 424: __nop();
		NOP 					//1B50 	1000

		//;NFB.C: 425: __nop();
		NOP 					//1B51 	1000
		LJUMP 	34DH 			//1B52 	3B4D

		//;NFB.C: 426: }
		//;NFB.C: 427: EEADRL=EEAddr;
		MOVLB 	1H 			//1B53 	1021
		LDR 	20H, 0H 			//1B54 	1820
		MOVLB 	3H 			//1B55 	1023
		STR 	11H 			//1B56 	1091

		//;NFB.C: 429: CFGS=0;
		BCR 	15H, 6H 			//1B57 	2315

		//;NFB.C: 430: EEPGD=0;
		BCR 	15H, 7H 			//1B58 	2395

		//;NFB.C: 431: RD=1;
		BSR 	15H, 0H 			//1B59 	2415

		//;NFB.C: 432: __nop();
		NOP 					//1B5A 	1000

		//;NFB.C: 433: __nop();
		NOP 					//1B5B 	1000

		//;NFB.C: 434: __nop();
		NOP 					//1B5C 	1000

		//;NFB.C: 435: __nop();
		NOP 					//1B5D 	1000

		//;NFB.C: 436: ReEEPROMread=EEDATL;
		MOVLB 	3H 			//1B5E 	1023
		LDR 	13H, 0H 			//1B5F 	1813
		MOVLB 	1H 			//1B60 	1021
		STR 	21H 			//1B61 	10A1

		//;NFB.C: 438: return ReEEPROMread;
		RET 					//1B62 	1008
		STR 	21H 			//1B63 	10A1

		//;NFB.C: 470: while(GIE)
		BTSS 	BH, 7H 			//1B64 	2F8B
		LJUMP 	36AH 			//1B65 	3B6A

		//;NFB.C: 471: {
		//;NFB.C: 472: GIE = 0;
		BCR 	BH, 7H 			//1B66 	238B

		//;NFB.C: 473: __nop();
		NOP 					//1B67 	1000

		//;NFB.C: 474: __nop();
		NOP 					//1B68 	1000
		LJUMP 	364H 			//1B69 	3B64

		//;NFB.C: 475: }
		//;NFB.C: 476: EEADRL=EEAddr;
		MOVLB 	1H 			//1B6A 	1021
		LDR 	21H, 0H 			//1B6B 	1821
		MOVLB 	3H 			//1B6C 	1023
		STR 	11H 			//1B6D 	1091

		//;NFB.C: 477: EEDATL=Data;
		MOVLB 	1H 			//1B6E 	1021
		LDR 	20H, 0H 			//1B6F 	1820
		MOVLB 	3H 			//1B70 	1023
		STR 	13H 			//1B71 	1093

		//;NFB.C: 479: CFGS=0;
		BCR 	15H, 6H 			//1B72 	2315

		//;NFB.C: 480: EEPGD=0;
		BCR 	15H, 7H 			//1B73 	2395

		//;NFB.C: 481: WREN=1;
		BSR 	15H, 2H 			//1B74 	2515

		//;NFB.C: 482: EEIF=0;
		BCR 	BH, 2H 			//1B75 	210B

		//;NFB.C: 484: Unlock_Flash();
		LCALL 	6D5H 			//1B76 	36D5
		MOVLP 	19H 			//1B77 	0199

		//;NFB.C: 485: __nop();
		NOP 					//1B78 	1000

		//;NFB.C: 486: __nop();
		NOP 					//1B79 	1000

		//;NFB.C: 487: __nop();
		NOP 					//1B7A 	1000

		//;NFB.C: 488: __nop();
		NOP 					//1B7B 	1000

		//;NFB.C: 490: while(WR);
		MOVLB 	3H 			//1B7C 	1023
		BTSC 	15H, 1H 		//1B7D 	2895
		LJUMP 	37CH 			//1B7E 	3B7C

		//;NFB.C: 491: WREN=0;
		BCR 	15H, 2H 			//1B7F 	2115

		//;NFB.C: 492: GIE=1;
		BSR 	BH, 7H 			//1B80 	278B
		RET 					//1B81 	1008
		CLRF 	31H 			//1B82 	11B1
		BTSS 	2FH, 7H 		//1B83 	2FAF
		LJUMP 	38CH 			//1B84 	3B8C
		COMR 	2EH, 1H 		//1B85 	19AE
		COMR 	2FH, 1H 		//1B86 	19AF
		INCR 	2EH, 1H 		//1B87 	1AAE
		BTSC 	3H, 2H 			//1B88 	2903
		INCR 	2FH, 1H 		//1B89 	1AAF
		CLRF 	31H 			//1B8A 	11B1
		INCR 	31H, 1H 		//1B8B 	1AB1
		LDR 	2EH, 0H 			//1B8C 	182E
		STR 	20H 			//1B8D 	10A0
		LDR 	2FH, 0H 			//1B8E 	182F
		STR 	21H 			//1B8F 	10A1
		LDWI 	8EH 			//1B90 	008E
		CLRF 	22H 			//1B91 	11A2
		STR 	23H 			//1B92 	10A3
		LDR 	31H, 0H 			//1B93 	1831
		STR 	24H 			//1B94 	10A4
		LCALL 	61DH 			//1B95 	361D
		LDR 	20H, 0H 			//1B96 	1820
		STR 	2EH 			//1B97 	10AE
		LDR 	21H, 0H 			//1B98 	1821
		STR 	2FH 			//1B99 	10AF
		LDR 	22H, 0H 			//1B9A 	1822
		STR 	30H 			//1B9B 	10B0
		RET 					//1B9C 	1008
		MOVLB 	1H 			//1B9D 	1021
		STR 	5FH 			//1B9E 	10DF
		LDWI 	6EH 			//1B9F 	006E
		SUBWR 	5FH, 0H 		//1BA0 	125F
		BTSS 	3H, 0H 			//1BA1 	2C03
		LJUMP 	3E8H 			//1BA2 	3BE8
		LDWI 	AH 			//1BA3 	000A
		STR 	25H 			//1BA4 	10A5
		LDWI 	64H 			//1BA5 	0064
		STR 	20H 			//1BA6 	10A0
		LDR 	5FH, 0H 			//1BA7 	185F
		LCALL 	5F6H 			//1BA8 	35F6
		MOVLP 	19H 			//1BA9 	0199
		LCALL 	5DEH 			//1BAA 	35DE
		MOVLP 	19H 			//1BAB 	0199
		LCALL 	761H 			//1BAC 	3761
		MOVLP 	19H 			//1BAD 	0199
		LCALL 	4F4H 			//1BAE 	34F4
		MOVLP 	19H 			//1BAF 	0199
		LCALL 	744H 			//1BB0 	3744
		MOVLP 	19H 			//1BB1 	0199
		LCALL 	6F9H 			//1BB2 	36F9
		MOVLP 	19H 			//1BB3 	0199
		LDWI 	64H 			//1BB4 	0064
		STR 	25H 			//1BB5 	10A5
		LDR 	5FH, 0H 			//1BB6 	185F
		LCALL 	5DEH 			//1BB7 	35DE
		MOVLP 	19H 			//1BB8 	0199
		LCALL 	761H 			//1BB9 	3761
		MOVLP 	19H 			//1BBA 	0199
		LCALL 	4F4H 			//1BBB 	34F4
		MOVLP 	19H 			//1BBC 	0199
		LCALL 	777H 			//1BBD 	3777
		MOVLP 	19H 			//1BBE 	0199
		LCALL 	734H 			//1BBF 	3734
		MOVLP 	19H 			//1BC0 	0199
		LCALL 	582H 			//1BC1 	3582
		MOVLP 	19H 			//1BC2 	0199
		LCALL 	7B9H 			//1BC3 	37B9
		MOVLP 	19H 			//1BC4 	0199
		LDWI 	AH 			//1BC5 	000A
		STR 	20H 			//1BC6 	10A0
		LDR 	5FH, 0H 			//1BC7 	185F
		LCALL 	5F6H 			//1BC8 	35F6
		MOVLP 	19H 			//1BC9 	0199
		LCALL 	761H 			//1BCA 	3761
		MOVLP 	19H 			//1BCB 	0199
		LCALL 	4F4H 			//1BCC 	34F4
		MOVLP 	19H 			//1BCD 	0199
		LDR 	2FH, 0H 			//1BCE 	182F
		LCALL 	6EBH 			//1BCF 	36EB
		MOVLP 	19H 			//1BD0 	0199
		LCALL 	7C0H 			//1BD1 	37C0
		MOVLP 	19H 			//1BD2 	0199
		LCALL 	582H 			//1BD3 	3582
		MOVLP 	19H 			//1BD4 	0199
		LDR 	46H, 0H 			//1BD5 	1846
		STR 	59H 			//1BD6 	10D9
		LDR 	47H, 0H 			//1BD7 	1847
		STR 	5AH 			//1BD8 	10DA
		LDR 	48H, 0H 			//1BD9 	1848
		STR 	5BH 			//1BDA 	10DB
		LDWI 	3FH 			//1BDB 	003F
		CLRF 	46H 			//1BDC 	11C6
		CLRF 	47H 			//1BDD 	11C7
		STR 	48H 			//1BDE 	10C8
		LDR 	59H, 0H 			//1BDF 	1859
		STR 	49H 			//1BE0 	10C9
		LDR 	5AH, 0H 			//1BE1 	185A
		STR 	4AH 			//1BE2 	10CA
		LDR 	5BH, 0H 			//1BE3 	185B
		STR 	4BH 			//1BE4 	10CB
		LCALL 	582H 			//1BE5 	3582
		MOVLP 	19H 			//1BE6 	0199
		LJUMP 	78AH 			//1BE7 	3F8A
		LDWI 	BH 			//1BE8 	000B
		SUBWR 	5FH, 0H 		//1BE9 	125F
		BTSS 	3H, 0H 			//1BEA 	2C03
		LJUMP 	412H 			//1BEB 	3C12
		LDWI 	AH 			//1BEC 	000A
		STR 	20H 			//1BED 	10A0
		LDR 	5FH, 0H 			//1BEE 	185F
		LCALL 	5F6H 			//1BEF 	35F6
		MOVLP 	19H 			//1BF0 	0199
		LCALL 	761H 			//1BF1 	3761
		MOVLP 	19H 			//1BF2 	0199
		LCALL 	4F4H 			//1BF3 	34F4
		MOVLP 	19H 			//1BF4 	0199
		LDR 	2FH, 0H 			//1BF5 	182F
		LCALL 	6EBH 			//1BF6 	36EB
		MOVLP 	19H 			//1BF7 	0199
		LDWI 	AH 			//1BF8 	000A
		STR 	25H 			//1BF9 	10A5
		LDR 	5FH, 0H 			//1BFA 	185F
		LCALL 	5DEH 			//1BFB 	35DE
		MOVLP 	19H 			//1BFC 	0199
		LCALL 	761H 			//1BFD 	3761
		MOVLP 	19H 			//1BFE 	0199
		LCALL 	4F4H 			//1BFF 	34F4
		MOVLP 	19H 			//1C00 	0199
		LCALL 	744H 			//1C01 	3744
		MOVLP 	19H 			//1C02 	0199
		LCALL 	734H 			//1C03 	3734
		MOVLP 	19H 			//1C04 	0199
		LCALL 	582H 			//1C05 	3582
		MOVLP 	19H 			//1C06 	0199
		LCALL 	7B9H 			//1C07 	37B9
		MOVLP 	19H 			//1C08 	0199
		LDWI 	3FH 			//1C09 	003F
		CLRF 	46H 			//1C0A 	11C6
		CLRF 	47H 			//1C0B 	11C7
		STR 	48H 			//1C0C 	10C8
		LCALL 	7C0H 			//1C0D 	37C0
		MOVLP 	19H 			//1C0E 	0199
		LCALL 	582H 			//1C0F 	3582
		MOVLP 	19H 			//1C10 	0199
		LJUMP 	78AH 			//1C11 	3F8A
		LDWI 	3FH 			//1C12 	003F
		CLRF 	46H 			//1C13 	11C6
		CLRF 	47H 			//1C14 	11C7
		STR 	48H 			//1C15 	10C8
		LDR 	5FH, 0H 			//1C16 	185F
		LCALL 	761H 			//1C17 	3761
		MOVLP 	19H 			//1C18 	0199
		LCALL 	4F4H 			//1C19 	34F4
		MOVLP 	19H 			//1C1A 	0199
		LCALL 	701H 			//1C1B 	3701
		MOVLP 	19H 			//1C1C 	0199
		STR 	49H 			//1C1D 	10C9
		MOVIW 	1H[0] 			//1C1E 	0F01
		STR 	4AH 			//1C1F 	10CA
		MOVIW 	2H[0] 			//1C20 	0F02
		STR 	4BH 			//1C21 	10CB
		LCALL 	582H 			//1C22 	3582
		MOVLP 	19H 			//1C23 	0199
		LJUMP 	78AH 			//1C24 	3F8A
		MOVLB 	1H 			//1C25 	1021
		STR 	5CH 			//1C26 	10DC
		BTSS 	5CH, 7H 		//1C27 	2FDC
		LJUMP 	48BH 			//1C28 	3C8B
		COMR 	5CH, 1H 		//1C29 	19DC
		INCR 	5CH, 1H 		//1C2A 	1ADC
		LDR 	5CH, 0H 			//1C2B 	185C
		XORWI 	80H 			//1C2C 	0A80
		ADDWI 	12H 			//1C2D 	0E12
		BTSS 	3H, 0H 			//1C2E 	2C03
		LJUMP 	463H 			//1C2F 	3C63
		LCALL 	77EH 			//1C30 	377E
		MOVLP 	19H 			//1C31 	0199
		LCALL 	549H 			//1C32 	3549
		MOVLP 	19H 			//1C33 	0199
		LCALL 	7F7H 			//1C34 	37F7
		MOVLP 	19H 			//1C35 	0199
		LCALL 	509H 			//1C36 	3509
		MOVLP 	19H 			//1C37 	0199
		LCALL 	73CH 			//1C38 	373C
		MOVLP 	19H 			//1C39 	0199
		LCALL 	4F4H 			//1C3A 	34F4
		MOVLP 	19H 			//1C3B 	0199
		LCALL 	744H 			//1C3C 	3744
		MOVLP 	19H 			//1C3D 	0199
		LCALL 	6F9H 			//1C3E 	36F9
		MOVLP 	19H 			//1C3F 	0199
		LDWI 	64H 			//1C40 	0064
		LCALL 	7A6H 			//1C41 	37A6
		MOVLP 	19H 			//1C42 	0199
		BTSC 	28H, 7H 		//1C43 	2BA8
		DECR 	29H, 1H 		//1C44 	13A9
		LCALL 	509H 			//1C45 	3509
		MOVLP 	19H 			//1C46 	0199
		LCALL 	73CH 			//1C47 	373C
		MOVLP 	19H 			//1C48 	0199
		LCALL 	4F4H 			//1C49 	34F4
		MOVLP 	19H 			//1C4A 	0199
		LCALL 	777H 			//1C4B 	3777
		MOVLP 	19H 			//1C4C 	0199
		LCALL 	734H 			//1C4D 	3734
		MOVLP 	19H 			//1C4E 	0199
		LCALL 	582H 			//1C4F 	3582
		MOVLP 	19H 			//1C50 	0199
		LCALL 	76FH 			//1C51 	376F
		MOVLP 	19H 			//1C52 	0199
		LCALL 	759H 			//1C53 	3759
		MOVLP 	19H 			//1C54 	0199
		LCALL 	549H 			//1C55 	3549
		MOVLP 	19H 			//1C56 	0199
		LCALL 	767H 			//1C57 	3767
		MOVLP 	19H 			//1C58 	0199
		LCALL 	4F4H 			//1C59 	34F4
		MOVLP 	19H 			//1C5A 	0199
		LDR 	2FH, 0H 			//1C5B 	182F
		LCALL 	6EBH 			//1C5C 	36EB
		MOVLP 	19H 			//1C5D 	0199
		LCALL 	7CEH 			//1C5E 	37CE
		MOVLP 	19H 			//1C5F 	0199
		LCALL 	582H 			//1C60 	3582
		MOVLP 	19H 			//1C61 	0199
		LJUMP 	752H 			//1C62 	3F52
		LCALL 	7EEH 			//1C63 	37EE
		MOVLP 	19H 			//1C64 	0199
		BTSS 	3H, 0H 			//1C65 	2C03
		LJUMP 	484H 			//1C66 	3C84
		LCALL 	759H 			//1C67 	3759
		MOVLP 	19H 			//1C68 	0199
		LCALL 	549H 			//1C69 	3549
		MOVLP 	19H 			//1C6A 	0199
		LCALL 	767H 			//1C6B 	3767
		MOVLP 	19H 			//1C6C 	0199
		LCALL 	4F4H 			//1C6D 	34F4
		MOVLP 	19H 			//1C6E 	0199
		LDR 	2FH, 0H 			//1C6F 	182F
		LCALL 	6EBH 			//1C70 	36EB
		MOVLP 	19H 			//1C71 	0199
		LDWI 	AH 			//1C72 	000A
		LCALL 	7A6H 			//1C73 	37A6
		MOVLP 	19H 			//1C74 	0199
		BTSC 	28H, 7H 		//1C75 	2BA8
		DECR 	29H, 1H 		//1C76 	13A9
		LCALL 	509H 			//1C77 	3509
		MOVLP 	19H 			//1C78 	0199
		LCALL 	73CH 			//1C79 	373C
		MOVLP 	19H 			//1C7A 	0199
		LCALL 	4F4H 			//1C7B 	34F4
		MOVLP 	19H 			//1C7C 	0199
		LCALL 	744H 			//1C7D 	3744
		MOVLP 	19H 			//1C7E 	0199
		LCALL 	734H 			//1C7F 	3734
		MOVLP 	19H 			//1C80 	0199
		LCALL 	582H 			//1C81 	3582
		MOVLP 	19H 			//1C82 	0199
		LJUMP 	752H 			//1C83 	3F52
		LCALL 	761H 			//1C84 	3761
		MOVLP 	19H 			//1C85 	0199
		LCALL 	4F4H 			//1C86 	34F4
		MOVLP 	19H 			//1C87 	0199
		LCALL 	701H 			//1C88 	3701
		MOVLP 	19H 			//1C89 	0199
		LJUMP 	7DCH 			//1C8A 	3FDC
		LDR 	5CH, 0H 			//1C8B 	185C
		XORWI 	80H 			//1C8C 	0A80
		ADDWI 	12H 			//1C8D 	0E12
		BTSS 	3H, 0H 			//1C8E 	2C03
		LJUMP 	4C9H 			//1C8F 	3CC9
		LCALL 	77EH 			//1C90 	377E
		MOVLP 	19H 			//1C91 	0199
		LCALL 	549H 			//1C92 	3549
		MOVLP 	19H 			//1C93 	0199
		LCALL 	7F7H 			//1C94 	37F7
		MOVLP 	19H 			//1C95 	0199
		LCALL 	509H 			//1C96 	3509
		MOVLP 	19H 			//1C97 	0199
		LCALL 	73CH 			//1C98 	373C
		MOVLP 	19H 			//1C99 	0199
		LCALL 	4F4H 			//1C9A 	34F4
		MOVLP 	19H 			//1C9B 	0199
		LCALL 	791H 			//1C9C 	3791
		MOVLP 	19H 			//1C9D 	0199
		LCALL 	6F9H 			//1C9E 	36F9
		MOVLP 	19H 			//1C9F 	0199
		LDWI 	64H 			//1CA0 	0064
		LCALL 	7A6H 			//1CA1 	37A6
		MOVLP 	19H 			//1CA2 	0199
		BTSC 	28H, 7H 		//1CA3 	2BA8
		DECR 	29H, 1H 		//1CA4 	13A9
		LCALL 	509H 			//1CA5 	3509
		MOVLP 	19H 			//1CA6 	0199
		LCALL 	73CH 			//1CA7 	373C
		MOVLP 	19H 			//1CA8 	0199
		LCALL 	4F4H 			//1CA9 	34F4
		MOVLP 	19H 			//1CAA 	0199
		LDR 	2FH, 0H 			//1CAB 	182F
		STR 	5H 			//1CAC 	1085
		LDR 	2EH, 0H 			//1CAD 	182E
		STR 	4H 			//1CAE 	1084
		LDWI 	7BH 			//1CAF 	007B
		ADDWR 	4H, 1H 		//1CB0 	1784
		LDWI 	A0H 			//1CB1 	00A0
		LCALL 	734H 			//1CB2 	3734
		MOVLP 	19H 			//1CB3 	0199
		LCALL 	582H 			//1CB4 	3582
		MOVLP 	19H 			//1CB5 	0199
		LCALL 	76FH 			//1CB6 	376F
		MOVLP 	19H 			//1CB7 	0199
		LCALL 	759H 			//1CB8 	3759
		MOVLP 	19H 			//1CB9 	0199
		LCALL 	549H 			//1CBA 	3549
		MOVLP 	19H 			//1CBB 	0199
		LCALL 	767H 			//1CBC 	3767
		MOVLP 	19H 			//1CBD 	0199
		LCALL 	4F4H 			//1CBE 	34F4
		MOVLP 	19H 			//1CBF 	0199
		LCALL 	74BH 			//1CC0 	374B
		MOVLP 	19H 			//1CC1 	0199
		LCALL 	6F9H 			//1CC2 	36F9
		MOVLP 	19H 			//1CC3 	0199
		LCALL 	7CEH 			//1CC4 	37CE
		MOVLP 	19H 			//1CC5 	0199
		LCALL 	582H 			//1CC6 	3582
		MOVLP 	19H 			//1CC7 	0199
		LJUMP 	752H 			//1CC8 	3F52
		LCALL 	7EEH 			//1CC9 	37EE
		MOVLP 	19H 			//1CCA 	0199
		BTSS 	3H, 0H 			//1CCB 	2C03
		LJUMP 	4EBH 			//1CCC 	3CEB
		LCALL 	759H 			//1CCD 	3759
		MOVLP 	19H 			//1CCE 	0199
		LCALL 	549H 			//1CCF 	3549
		MOVLP 	19H 			//1CD0 	0199
		LCALL 	767H 			//1CD1 	3767
		MOVLP 	19H 			//1CD2 	0199
		LCALL 	4F4H 			//1CD3 	34F4
		MOVLP 	19H 			//1CD4 	0199
		LCALL 	74BH 			//1CD5 	374B
		MOVLP 	19H 			//1CD6 	0199
		LCALL 	6F9H 			//1CD7 	36F9
		MOVLP 	19H 			//1CD8 	0199
		LDWI 	AH 			//1CD9 	000A
		LCALL 	7A6H 			//1CDA 	37A6
		MOVLP 	19H 			//1CDB 	0199
		BTSC 	28H, 7H 		//1CDC 	2BA8
		DECR 	29H, 1H 		//1CDD 	13A9
		LCALL 	509H 			//1CDE 	3509
		MOVLP 	19H 			//1CDF 	0199
		LCALL 	73CH 			//1CE0 	373C
		MOVLP 	19H 			//1CE1 	0199
		LCALL 	4F4H 			//1CE2 	34F4
		MOVLP 	19H 			//1CE3 	0199
		LCALL 	791H 			//1CE4 	3791
		MOVLP 	19H 			//1CE5 	0199
		LCALL 	734H 			//1CE6 	3734
		MOVLP 	19H 			//1CE7 	0199
		LCALL 	582H 			//1CE8 	3582
		MOVLP 	19H 			//1CE9 	0199
		LJUMP 	752H 			//1CEA 	3F52
		LCALL 	761H 			//1CEB 	3761
		MOVLP 	19H 			//1CEC 	0199
		LCALL 	4F4H 			//1CED 	34F4
		MOVLP 	19H 			//1CEE 	0199
		LCALL 	74BH 			//1CEF 	374B
		MOVLP 	19H 			//1CF0 	0199
		ADDWFC 	5H, 1H 		//1CF1 	0D85
		MOVIW 	0H[0] 			//1CF2 	0F00
		LJUMP 	7DCH 			//1CF3 	3FDC
		CLRF 	32H 			//1CF4 	11B2
		CLRF 	33H 			//1CF5 	11B3
		BTSS 	2EH, 0H 		//1CF6 	2C2E
		LJUMP 	4FCH 			//1CF7 	3CFC
		LDR 	30H, 0H 			//1CF8 	1830
		ADDWR 	32H, 1H 		//1CF9 	17B2
		LDR 	31H, 0H 			//1CFA 	1831
		ADDWFC 	33H, 1H 		//1CFB 	0DB3
		LSLF 	30H, 1H 		//1CFC 	05B0
		RLR 	31H, 1H 			//1CFD 	1DB1
		LSRF 	2FH, 1H 		//1CFE 	06AF
		RRR 	2EH, 1H 			//1CFF 	1CAE
		LDR 	2EH, 0H 			//1D00 	182E
		IORWR 	2FH, 0H 		//1D01 	142F
		BTSS 	3H, 2H 			//1D02 	2D03
		LJUMP 	4F6H 			//1D03 	3CF6
		LDR 	33H, 0H 			//1D04 	1833
		STR 	2FH 			//1D05 	10AF
		LDR 	32H, 0H 			//1D06 	1832
		STR 	2EH 			//1D07 	10AE
		RET 					//1D08 	1008
		CLRF 	2BH 			//1D09 	11AB
		BTSS 	27H, 7H 		//1D0A 	2FA7
		LJUMP 	513H 			//1D0B 	3D13
		COMR 	26H, 1H 		//1D0C 	19A6
		COMR 	27H, 1H 		//1D0D 	19A7
		INCR 	26H, 1H 		//1D0E 	1AA6
		BTSC 	3H, 2H 			//1D0F 	2903
		INCR 	27H, 1H 		//1D10 	1AA7
		CLRF 	2BH 			//1D11 	11AB
		INCR 	2BH, 1H 		//1D12 	1AAB
		BTSS 	29H, 7H 		//1D13 	2FA9
		LJUMP 	51CH 			//1D14 	3D1C
		COMR 	28H, 1H 		//1D15 	19A8
		COMR 	29H, 1H 		//1D16 	19A9
		INCR 	28H, 1H 		//1D17 	1AA8
		BTSC 	3H, 2H 			//1D18 	2903
		INCR 	29H, 1H 		//1D19 	1AA9
		LDWI 	1H 			//1D1A 	0001
		XORWR 	2BH, 1H 		//1D1B 	16AB
		CLRF 	2CH 			//1D1C 	11AC
		CLRF 	2DH 			//1D1D 	11AD
		LDR 	26H, 0H 			//1D1E 	1826
		IORWR 	27H, 0H 		//1D1F 	1427
		BTSC 	3H, 2H 			//1D20 	2903
		LJUMP 	53CH 			//1D21 	3D3C
		CLRF 	2AH 			//1D22 	11AA
		INCR 	2AH, 1H 		//1D23 	1AAA
		BTSC 	27H, 7H 		//1D24 	2BA7
		LJUMP 	529H 			//1D25 	3D29
		LSLF 	26H, 1H 		//1D26 	05A6
		RLR 	27H, 1H 			//1D27 	1DA7
		LJUMP 	523H 			//1D28 	3D23
		LSLF 	2CH, 1H 		//1D29 	05AC
		RLR 	2DH, 1H 			//1D2A 	1DAD
		LDR 	27H, 0H 			//1D2B 	1827
		SUBWR 	29H, 0H 		//1D2C 	1229
		BTSS 	3H, 2H 			//1D2D 	2D03
		LJUMP 	531H 			//1D2E 	3D31
		LDR 	26H, 0H 			//1D2F 	1826
		SUBWR 	28H, 0H 		//1D30 	1228
		BTSS 	3H, 0H 			//1D31 	2C03
		LJUMP 	538H 			//1D32 	3D38
		LDR 	26H, 0H 			//1D33 	1826
		SUBWR 	28H, 1H 		//1D34 	12A8
		LDR 	27H, 0H 			//1D35 	1827
		SUBWFB 	29H, 1H 		//1D36 	0BA9
		BSR 	2CH, 0H 			//1D37 	242C
		LSRF 	27H, 1H 		//1D38 	06A7
		RRR 	26H, 1H 			//1D39 	1CA6
		DECRSZ 	2AH, 1H 		//1D3A 	1BAA
		LJUMP 	529H 			//1D3B 	3D29
		LDR 	2BH, 0H 			//1D3C 	182B
		BTSC 	3H, 2H 			//1D3D 	2903
		LJUMP 	544H 			//1D3E 	3D44
		COMR 	2CH, 1H 		//1D3F 	19AC
		COMR 	2DH, 1H 		//1D40 	19AD
		INCR 	2CH, 1H 		//1D41 	1AAC
		BTSC 	3H, 2H 			//1D42 	2903
		INCR 	2DH, 1H 		//1D43 	1AAD
		LDR 	2DH, 0H 			//1D44 	182D
		STR 	27H 			//1D45 	10A7
		LDR 	2CH, 0H 			//1D46 	182C
		STR 	26H 			//1D47 	10A6
		RET 					//1D48 	1008
		CLRF 	25H 			//1D49 	11A5
		BTSS 	23H, 7H 		//1D4A 	2FA3
		LJUMP 	553H 			//1D4B 	3D53
		COMR 	22H, 1H 		//1D4C 	19A2
		COMR 	23H, 1H 		//1D4D 	19A3
		INCR 	22H, 1H 		//1D4E 	1AA2
		BTSC 	3H, 2H 			//1D4F 	2903
		INCR 	23H, 1H 		//1D50 	1AA3
		CLRF 	25H 			//1D51 	11A5
		INCR 	25H, 1H 		//1D52 	1AA5
		BTSS 	21H, 7H 		//1D53 	2FA1
		LJUMP 	55AH 			//1D54 	3D5A
		COMR 	20H, 1H 		//1D55 	19A0
		COMR 	21H, 1H 		//1D56 	19A1
		INCR 	20H, 1H 		//1D57 	1AA0
		BTSC 	3H, 2H 			//1D58 	2903
		INCR 	21H, 1H 		//1D59 	1AA1
		LDR 	20H, 0H 			//1D5A 	1820
		IORWR 	21H, 0H 		//1D5B 	1421
		BTSC 	3H, 2H 			//1D5C 	2903
		LJUMP 	575H 			//1D5D 	3D75
		CLRF 	24H 			//1D5E 	11A4
		INCR 	24H, 1H 		//1D5F 	1AA4
		BTSC 	21H, 7H 		//1D60 	2BA1
		LJUMP 	565H 			//1D61 	3D65
		LSLF 	20H, 1H 		//1D62 	05A0
		RLR 	21H, 1H 			//1D63 	1DA1
		LJUMP 	55FH 			//1D64 	3D5F
		LDR 	21H, 0H 			//1D65 	1821
		SUBWR 	23H, 0H 		//1D66 	1223
		BTSS 	3H, 2H 			//1D67 	2D03
		LJUMP 	56BH 			//1D68 	3D6B
		LDR 	20H, 0H 			//1D69 	1820
		SUBWR 	22H, 0H 		//1D6A 	1222
		BTSS 	3H, 0H 			//1D6B 	2C03
		LJUMP 	571H 			//1D6C 	3D71
		LDR 	20H, 0H 			//1D6D 	1820
		SUBWR 	22H, 1H 		//1D6E 	12A2
		LDR 	21H, 0H 			//1D6F 	1821
		SUBWFB 	23H, 1H 		//1D70 	0BA3
		LSRF 	21H, 1H 		//1D71 	06A1
		RRR 	20H, 1H 			//1D72 	1CA0
		DECRSZ 	24H, 1H 		//1D73 	1BA4
		LJUMP 	565H 			//1D74 	3D65
		LDR 	25H, 0H 			//1D75 	1825
		BTSC 	3H, 2H 			//1D76 	2903
		LJUMP 	57DH 			//1D77 	3D7D
		COMR 	22H, 1H 		//1D78 	19A2
		COMR 	23H, 1H 		//1D79 	19A3
		INCR 	22H, 1H 		//1D7A 	1AA2
		BTSC 	3H, 2H 			//1D7B 	2903
		INCR 	23H, 1H 		//1D7C 	1AA3
		LDR 	23H, 0H 			//1D7D 	1823
		STR 	21H 			//1D7E 	10A1
		LDR 	22H, 0H 			//1D7F 	1822
		STR 	20H 			//1D80 	10A0
		RET 					//1D81 	1008
		LDR 	46H, 0H 			//1D82 	1846
		STR 	4CH 			//1D83 	10CC
		LDR 	47H, 0H 			//1D84 	1847
		STR 	4DH 			//1D85 	10CD
		LDR 	48H, 0H 			//1D86 	1848
		STR 	4EH 			//1D87 	10CE
		BCR 	3H, 0H 			//1D88 	2003
		RLR 	4DH, 0H 			//1D89 	1D4D
		RLR 	4EH, 0H 			//1D8A 	1D4E
		STR 	4FH 			//1D8B 	10CF
		LDR 	4FH, 0H 			//1D8C 	184F
		BTSS 	3H, 2H 			//1D8D 	2D03
		LJUMP 	590H 			//1D8E 	3D90
		LJUMP 	7F3H 			//1D8F 	3FF3
		LDR 	49H, 0H 			//1D90 	1849
		STR 	4CH 			//1D91 	10CC
		LDR 	4AH, 0H 			//1D92 	184A
		STR 	4DH 			//1D93 	10CD
		LDR 	4BH, 0H 			//1D94 	184B
		STR 	4EH 			//1D95 	10CE
		BCR 	3H, 0H 			//1D96 	2003
		RLR 	4DH, 0H 			//1D97 	1D4D
		RLR 	4EH, 0H 			//1D98 	1D4E
		STR 	54H 			//1D99 	10D4
		LDR 	54H, 0H 			//1D9A 	1854
		BTSS 	3H, 2H 			//1D9B 	2D03
		LJUMP 	59EH 			//1D9C 	3D9E
		LJUMP 	7F3H 			//1D9D 	3FF3
		LDR 	54H, 0H 			//1D9E 	1854
		ADDWI 	7BH 			//1D9F 	0E7B
		ADDWR 	4FH, 1H 		//1DA0 	17CF
		LDR 	48H, 0H 			//1DA1 	1848
		STR 	54H 			//1DA2 	10D4
		LDR 	4BH, 0H 			//1DA3 	184B
		XORWR 	54H, 1H 		//1DA4 	16D4
		LDWI 	80H 			//1DA5 	0080
		ANDWR 	54H, 1H 		//1DA6 	15D4
		LDWI 	FFH 			//1DA7 	00FF
		BSR 	47H, 7H 			//1DA8 	27C7
		BSR 	4AH, 7H 			//1DA9 	27CA
		ANDWR 	49H, 1H 		//1DAA 	15C9
		ANDWR 	4AH, 1H 		//1DAB 	15CA
		LDWI 	7H 			//1DAC 	0007
		CLRF 	4BH 			//1DAD 	11CB
		CLRF 	50H 			//1DAE 	11D0
		CLRF 	51H 			//1DAF 	11D1
		CLRF 	52H 			//1DB0 	11D2
		STR 	53H 			//1DB1 	10D3
		BTSS 	46H, 0H 		//1DB2 	2C46
		LJUMP 	5B6H 			//1DB3 	3DB6
		LCALL 	7D5H 			//1DB4 	37D5
		MOVLP 	19H 			//1DB5 	0199
		LSRF 	48H, 1H 		//1DB6 	06C8
		RRR 	47H, 1H 			//1DB7 	1CC7
		RRR 	46H, 1H 			//1DB8 	1CC6
		LSLF 	49H, 1H 		//1DB9 	05C9
		RLR 	4AH, 1H 			//1DBA 	1DCA
		RLR 	4BH, 1H 			//1DBB 	1DCB
		DECRSZ 	53H, 1H 		//1DBC 	1BD3
		LJUMP 	5B2H 			//1DBD 	3DB2
		LDWI 	9H 			//1DBE 	0009
		STR 	53H 			//1DBF 	10D3
		BTSS 	46H, 0H 		//1DC0 	2C46
		LJUMP 	5C4H 			//1DC1 	3DC4
		LCALL 	7D5H 			//1DC2 	37D5
		MOVLP 	19H 			//1DC3 	0199
		LSRF 	48H, 1H 		//1DC4 	06C8
		RRR 	47H, 1H 			//1DC5 	1CC7
		RRR 	46H, 1H 			//1DC6 	1CC6
		LSRF 	52H, 1H 		//1DC7 	06D2
		RRR 	51H, 1H 			//1DC8 	1CD1
		RRR 	50H, 1H 			//1DC9 	1CD0
		DECRSZ 	53H, 1H 		//1DCA 	1BD3
		LJUMP 	5C0H 			//1DCB 	3DC0
		LDR 	50H, 0H 			//1DCC 	1850
		STR 	20H 			//1DCD 	10A0
		LDR 	51H, 0H 			//1DCE 	1851
		STR 	21H 			//1DCF 	10A1
		LDR 	52H, 0H 			//1DD0 	1852
		STR 	22H 			//1DD1 	10A2
		LDR 	4FH, 0H 			//1DD2 	184F
		STR 	23H 			//1DD3 	10A3
		LDR 	54H, 0H 			//1DD4 	1854
		STR 	24H 			//1DD5 	10A4
		LCALL 	61DH 			//1DD6 	361D
		LDR 	20H, 0H 			//1DD7 	1820
		STR 	46H 			//1DD8 	10C6
		LDR 	21H, 0H 			//1DD9 	1821
		STR 	47H 			//1DDA 	10C7
		LDR 	22H, 0H 			//1DDB 	1822
		STR 	48H 			//1DDC 	10C8
		RET 					//1DDD 	1008
		STR 	26H 			//1DDE 	10A6
		CLRF 	28H 			//1DDF 	11A8
		LDR 	25H, 0H 			//1DE0 	1825
		BTSC 	3H, 2H 			//1DE1 	2903
		LJUMP 	5F4H 			//1DE2 	3DF4
		CLRF 	27H 			//1DE3 	11A7
		INCR 	27H, 1H 		//1DE4 	1AA7
		BTSC 	25H, 7H 		//1DE5 	2BA5
		LJUMP 	5E9H 			//1DE6 	3DE9
		LSLF 	25H, 1H 		//1DE7 	05A5
		LJUMP 	5E4H 			//1DE8 	3DE4
		LSLF 	28H, 1H 		//1DE9 	05A8
		LDR 	25H, 0H 			//1DEA 	1825
		SUBWR 	26H, 0H 		//1DEB 	1226
		BTSS 	3H, 0H 			//1DEC 	2C03
		LJUMP 	5F1H 			//1DED 	3DF1
		LDR 	25H, 0H 			//1DEE 	1825
		SUBWR 	26H, 1H 		//1DEF 	12A6
		BSR 	28H, 0H 			//1DF0 	2428
		LSRF 	25H, 1H 		//1DF1 	06A5
		DECRSZ 	27H, 1H 		//1DF2 	1BA7
		LJUMP 	5E9H 			//1DF3 	3DE9
		LDR 	28H, 0H 			//1DF4 	1828
		RET 					//1DF5 	1008
		STR 	22H 			//1DF6 	10A2
		LDWI 	8H 			//1DF7 	0008
		STR 	23H 			//1DF8 	10A3
		CLRF 	24H 			//1DF9 	11A4
		LDR 	22H, 0H 			//1DFA 	1822
		STR 	21H 			//1DFB 	10A1
		LDWI 	7H 			//1DFC 	0007
		LSRF 	21H, 1H 		//1DFD 	06A1
		DECRSZ 	9H, 1H 		//1DFE 	1B89
		LJUMP 	5FDH 			//1DFF 	3DFD
		LSLF 	24H, 0H 		//1E00 	0524
		IORWR 	21H, 0H 		//1E01 	1421
		STR 	24H 			//1E02 	10A4
		LSLF 	22H, 1H 		//1E03 	05A2
		LDR 	20H, 0H 			//1E04 	1820
		SUBWR 	24H, 0H 		//1E05 	1224
		BTSS 	3H, 0H 			//1E06 	2C03
		LJUMP 	60AH 			//1E07 	3E0A
		LDR 	20H, 0H 			//1E08 	1820
		SUBWR 	24H, 1H 		//1E09 	12A4
		DECRSZ 	23H, 1H 		//1E0A 	1BA3
		LJUMP 	5FAH 			//1E0B 	3DFA
		LDR 	24H, 0H 			//1E0C 	1824
		RET 					//1E0D 	1008
		STR 	2CH 			//1E0E 	10AC
		STR 	20H 			//1E0F 	10A0
		LDWI 	8EH 			//1E10 	008E
		CLRF 	21H 			//1E11 	11A1
		CLRF 	22H 			//1E12 	11A2
		STR 	23H 			//1E13 	10A3
		CLRF 	24H 			//1E14 	11A4
		LCALL 	61DH 			//1E15 	361D
		LDR 	20H, 0H 			//1E16 	1820
		STR 	28H 			//1E17 	10A8
		LDR 	21H, 0H 			//1E18 	1821
		STR 	29H 			//1E19 	10A9
		LDR 	22H, 0H 			//1E1A 	1822
		STR 	2AH 			//1E1B 	10AA
		RET 					//1E1C 	1008
		LDR 	23H, 0H 			//1E1D 	1823
		BTSC 	3H, 2H 			//1E1E 	2903
		LJUMP 	625H 			//1E1F 	3E25
		LDR 	22H, 0H 			//1E20 	1822
		IORWR 	21H, 0H 		//1E21 	1421
		IORWR 	20H, 0H 		//1E22 	1420
		BTSS 	3H, 2H 			//1E23 	2D03
		LJUMP 	62DH 			//1E24 	3E2D
		CLRF 	20H 			//1E25 	11A0
		CLRF 	21H 			//1E26 	11A1
		CLRF 	22H 			//1E27 	11A2
		RET 					//1E28 	1008
		INCR 	23H, 1H 		//1E29 	1AA3
		LSRF 	22H, 1H 		//1E2A 	06A2
		RRR 	21H, 1H 			//1E2B 	1CA1
		RRR 	20H, 1H 			//1E2C 	1CA0
		LDWI 	FEH 			//1E2D 	00FE
		ANDWR 	22H, 0H 		//1E2E 	1522
		BTSC 	3H, 2H 			//1E2F 	2903
		LJUMP 	63BH 			//1E30 	3E3B
		LJUMP 	629H 			//1E31 	3E29
		INCR 	23H, 1H 		//1E32 	1AA3
		INCR 	20H, 1H 		//1E33 	1AA0
		BTSC 	3H, 2H 			//1E34 	2903
		INCR 	21H, 1H 		//1E35 	1AA1
		BTSC 	3H, 2H 			//1E36 	2903
		INCR 	22H, 1H 		//1E37 	1AA2
		LSRF 	22H, 1H 		//1E38 	06A2
		RRR 	21H, 1H 			//1E39 	1CA1
		RRR 	20H, 1H 			//1E3A 	1CA0
		LDWI 	FFH 			//1E3B 	00FF
		ANDWR 	22H, 0H 		//1E3C 	1522
		BTSC 	3H, 2H 			//1E3D 	2903
		LJUMP 	648H 			//1E3E 	3E48
		LJUMP 	632H 			//1E3F 	3E32
		LDWI 	2H 			//1E40 	0002
		SUBWR 	23H, 0H 		//1E41 	1223
		BTSS 	3H, 0H 			//1E42 	2C03
		LJUMP 	64AH 			//1E43 	3E4A
		DECR 	23H, 1H 		//1E44 	13A3
		LSLF 	20H, 1H 		//1E45 	05A0
		RLR 	21H, 1H 			//1E46 	1DA1
		RLR 	22H, 1H 			//1E47 	1DA2
		BTSS 	21H, 7H 		//1E48 	2FA1
		LJUMP 	640H 			//1E49 	3E40
		BTSS 	23H, 0H 		//1E4A 	2C23
		BCR 	21H, 7H 			//1E4B 	23A1
		LSRF 	23H, 1H 		//1E4C 	06A3
		LDR 	23H, 0H 			//1E4D 	1823
		STR 	27H 			//1E4E 	10A7
		CLRF 	26H 			//1E4F 	11A6
		CLRF 	25H 			//1E50 	11A5
		LDR 	25H, 0H 			//1E51 	1825
		IORWR 	20H, 1H 		//1E52 	14A0
		LDR 	26H, 0H 			//1E53 	1826
		IORWR 	21H, 1H 		//1E54 	14A1
		LDR 	27H, 0H 			//1E55 	1827
		IORWR 	22H, 1H 		//1E56 	14A2
		LDR 	24H, 0H 			//1E57 	1824
		BTSS 	3H, 2H 			//1E58 	2D03
		BSR 	22H, 7H 			//1E59 	27A2
		RET 					//1E5A 	1008
		LDR 	58H, 0H 			//1E5B 	1858
		STR 	5BH 			//1E5C 	10DB
		LDR 	59H, 0H 			//1E5D 	1859
		STR 	5CH 			//1E5E 	10DC
		LDR 	5AH, 0H 			//1E5F 	185A
		STR 	5DH 			//1E60 	10DD
		BCR 	3H, 0H 			//1E61 	2003
		RLR 	5CH, 0H 			//1E62 	1D5C
		RLR 	5DH, 0H 			//1E63 	1D5D
		STR 	62H 			//1E64 	10E2
		LDR 	62H, 0H 			//1E65 	1862
		BTSS 	3H, 2H 			//1E66 	2D03
		LJUMP 	669H 			//1E67 	3E69
		LJUMP 	7FCH 			//1E68 	3FFC
		LDR 	55H, 0H 			//1E69 	1855
		STR 	5BH 			//1E6A 	10DB
		LDR 	56H, 0H 			//1E6B 	1856
		STR 	5CH 			//1E6C 	10DC
		LDR 	57H, 0H 			//1E6D 	1857
		STR 	5DH 			//1E6E 	10DD
		BCR 	3H, 0H 			//1E6F 	2003
		RLR 	5CH, 0H 			//1E70 	1D5C
		RLR 	5DH, 0H 			//1E71 	1D5D
		STR 	63H 			//1E72 	10E3
		LDR 	63H, 0H 			//1E73 	1863
		BTSS 	3H, 2H 			//1E74 	2D03
		LJUMP 	677H 			//1E75 	3E77
		LJUMP 	7FCH 			//1E76 	3FFC
		LDWI 	89H 			//1E77 	0089
		CLRF 	5FH 			//1E78 	11DF
		CLRF 	60H 			//1E79 	11E0
		CLRF 	61H 			//1E7A 	11E1
		ADDWR 	63H, 0H 		//1E7B 	1763
		STR 	5BH 			//1E7C 	10DB
		SUBWR 	62H, 1H 		//1E7D 	12E2
		LDR 	5AH, 0H 			//1E7E 	185A
		STR 	63H 			//1E7F 	10E3
		LDR 	57H, 0H 			//1E80 	1857
		XORWR 	63H, 1H 		//1E81 	16E3
		LDWI 	80H 			//1E82 	0080
		ANDWR 	63H, 1H 		//1E83 	15E3
		LDWI 	18H 			//1E84 	0018
		BSR 	59H, 7H 			//1E85 	27D9
		CLRF 	5AH 			//1E86 	11DA
		BSR 	56H, 7H 			//1E87 	27D6
		CLRF 	57H 			//1E88 	11D7
		STR 	5EH 			//1E89 	10DE
		LSLF 	5FH, 1H 		//1E8A 	05DF
		RLR 	60H, 1H 			//1E8B 	1DE0
		RLR 	61H, 1H 			//1E8C 	1DE1
		LDR 	57H, 0H 			//1E8D 	1857
		SUBWR 	5AH, 0H 		//1E8E 	125A
		BTSS 	3H, 2H 			//1E8F 	2D03
		LJUMP 	697H 			//1E90 	3E97
		LDR 	56H, 0H 			//1E91 	1856
		SUBWR 	59H, 0H 		//1E92 	1259
		BTSS 	3H, 2H 			//1E93 	2D03
		LJUMP 	697H 			//1E94 	3E97
		LDR 	55H, 0H 			//1E95 	1855
		SUBWR 	58H, 0H 		//1E96 	1258
		BTSS 	3H, 0H 			//1E97 	2C03
		LJUMP 	6A0H 			//1E98 	3EA0
		LDR 	55H, 0H 			//1E99 	1855
		SUBWR 	58H, 1H 		//1E9A 	12D8
		LDR 	56H, 0H 			//1E9B 	1856
		SUBWFB 	59H, 1H 		//1E9C 	0BD9
		LDR 	57H, 0H 			//1E9D 	1857
		SUBWFB 	5AH, 1H 		//1E9E 	0BDA
		BSR 	5FH, 0H 			//1E9F 	245F
		LSLF 	58H, 1H 		//1EA0 	05D8
		RLR 	59H, 1H 			//1EA1 	1DD9
		RLR 	5AH, 1H 			//1EA2 	1DDA
		DECRSZ 	5EH, 1H 		//1EA3 	1BDE
		LJUMP 	68AH 			//1EA4 	3E8A
		LDR 	5FH, 0H 			//1EA5 	185F
		STR 	20H 			//1EA6 	10A0
		LDR 	60H, 0H 			//1EA7 	1860
		STR 	21H 			//1EA8 	10A1
		LDR 	61H, 0H 			//1EA9 	1861
		STR 	22H 			//1EAA 	10A2
		LDR 	62H, 0H 			//1EAB 	1862
		STR 	23H 			//1EAC 	10A3
		LDR 	63H, 0H 			//1EAD 	1863
		STR 	24H 			//1EAE 	10A4
		LCALL 	61DH 			//1EAF 	361D
		LDR 	20H, 0H 			//1EB0 	1820
		STR 	55H 			//1EB1 	10D5
		LDR 	21H, 0H 			//1EB2 	1821
		STR 	56H 			//1EB3 	10D6
		LDR 	22H, 0H 			//1EB4 	1822
		STR 	57H 			//1EB5 	10D7
		RET 					//1EB6 	1008

		//;NFB.C: 233: for(int a=0;a<Time;a++)
		CLRF 	22H 			//1EB7 	11A2
		CLRF 	23H 			//1EB8 	11A3
		LDR 	23H, 0H 			//1EB9 	1823
		XORWI 	80H 			//1EBA 	0A80
		MOVLB 	1H 			//1EBB 	1021
		STR 	6FH 			//1EBC 	10EF
		MOVLB 	2H 			//1EBD 	1022
		LDR 	21H, 0H 			//1EBE 	1821
		XORWI 	80H 			//1EBF 	0A80
		MOVLB 	1H 			//1EC0 	1021
		SUBWR 	6FH, 0H 		//1EC1 	126F
		BTSS 	3H, 2H 			//1EC2 	2D03
		LJUMP 	6C7H 			//1EC3 	3EC7
		MOVLB 	2H 			//1EC4 	1022
		LDR 	20H, 0H 			//1EC5 	1820
		SUBWR 	22H, 0H 		//1EC6 	1222
		BTSC 	3H, 0H 			//1EC7 	2803
		RET 					//1EC8 	1008

		//;NFB.C: 234: {
		//;NFB.C: 235: DelayUs(1000);
		LDWI 	E8H 			//1EC9 	00E8
		MOVLB 	1H 			//1ECA 	1021
		STR 	6AH 			//1ECB 	10EA
		LDWI 	3H 			//1ECC 	0003
		STR 	6BH 			//1ECD 	10EB
		LCALL 	22DH 			//1ECE 	322D
		MOVLP 	19H 			//1ECF 	0199
		MOVLB 	2H 			//1ED0 	1022
		INCR 	22H, 1H 		//1ED1 	1AA2
		BTSC 	3H, 2H 			//1ED2 	2903
		INCR 	23H, 1H 		//1ED3 	1AA3
		LJUMP 	6B9H 			//1ED4 	3EB9
		LDWI 	3H 			//1ED5 	0003
		STR 	8H 			//1ED6 	1088
		LDWI 	55H 			//1ED7 	0055
		STR 	16H 			//1ED8 	1096
		LDWI 	AAH 			//1ED9 	00AA
		STR 	16H 			//1EDA 	1096
		BSR 	15H, 1H 			//1EDB 	2495
		NOP 					//1EDC 	1000
		NOP 					//1EDD 	1000
		RET 					//1EDE 	1008
		LDR 	57H, 0H 			//1EDF 	1857
		MOVLB 	1H 			//1EE0 	1021
		STR 	32H 			//1EE1 	10B2
		MOVLB 	0H 			//1EE2 	1020
		LDR 	58H, 0H 			//1EE3 	1858
		MOVLB 	1H 			//1EE4 	1021
		STR 	33H 			//1EE5 	10B3
		MOVLB 	0H 			//1EE6 	1020
		LDR 	59H, 0H 			//1EE7 	1859
		MOVLB 	1H 			//1EE8 	1021
		STR 	34H 			//1EE9 	10B4
		RET 					//1EEA 	1008
		STR 	5H 			//1EEB 	1085
		LDR 	2EH, 0H 			//1EEC 	182E
		STR 	4H 			//1EED 	1084
		LDWI 	6CH 			//1EEE 	006C
		ADDWR 	4H, 1H 		//1EEF 	1784
		LDWI 	A0H 			//1EF0 	00A0
		ADDWFC 	5H, 1H 		//1EF1 	0D85
		MOVIW 	0H[0] 			//1EF2 	0F00
		STR 	46H 			//1EF3 	10C6
		MOVIW 	1H[0] 			//1EF4 	0F01
		STR 	47H 			//1EF5 	10C7
		MOVIW 	2H[0] 			//1EF6 	0F02
		STR 	48H 			//1EF7 	10C8
		RET 					//1EF8 	1008
		ADDWFC 	5H, 1H 		//1EF9 	0D85
		MOVIW 	0H[0] 			//1EFA 	0F00
		STR 	46H 			//1EFB 	10C6
		MOVIW 	1H[0] 			//1EFC 	0F01
		STR 	47H 			//1EFD 	10C7
		MOVIW 	2H[0] 			//1EFE 	0F02
		STR 	48H 			//1EFF 	10C8
		RET 					//1F00 	1008
		LDR 	2FH, 0H 			//1F01 	182F
		STR 	5H 			//1F02 	1085
		LDR 	2EH, 0H 			//1F03 	182E
		STR 	4H 			//1F04 	1084
		LDWI 	6CH 			//1F05 	006C
		ADDWR 	4H, 1H 		//1F06 	1784
		LDWI 	A0H 			//1F07 	00A0
		ADDWFC 	5H, 1H 		//1F08 	0D85
		MOVIW 	0H[0] 			//1F09 	0F00
		RET 					//1F0A 	1008
		LDR 	55H, 0H 			//1F0B 	1855
		MOVLB 	0H 			//1F0C 	1020
		STR 	57H 			//1F0D 	10D7
		MOVLB 	1H 			//1F0E 	1021
		LDR 	56H, 0H 			//1F0F 	1856
		MOVLB 	0H 			//1F10 	1020
		STR 	58H 			//1F11 	10D8
		MOVLB 	1H 			//1F12 	1021
		LDR 	57H, 0H 			//1F13 	1857
		MOVLB 	0H 			//1F14 	1020
		STR 	59H 			//1F15 	10D9
		MOVLB 	1H 			//1F16 	1021
		LDWI 	40H 			//1F17 	0040
		CLRF 	46H 			//1F18 	11C6
		CLRF 	47H 			//1F19 	11C7
		STR 	48H 			//1F1A 	10C8
		MOVLB 	0H 			//1F1B 	1020
		LDR 	57H, 0H 			//1F1C 	1857
		MOVLB 	1H 			//1F1D 	1021
		STR 	49H 			//1F1E 	10C9
		MOVLB 	0H 			//1F1F 	1020
		LDR 	58H, 0H 			//1F20 	1858
		MOVLB 	1H 			//1F21 	1021
		STR 	4AH 			//1F22 	10CA
		MOVLB 	0H 			//1F23 	1020
		LDR 	59H, 0H 			//1F24 	1859
		MOVLB 	1H 			//1F25 	1021
		STR 	4BH 			//1F26 	10CB
		RET 					//1F27 	1008
		LDR 	46H, 0H 			//1F28 	1846
		MOVLB 	0H 			//1F29 	1020
		STR 	57H 			//1F2A 	10D7
		MOVLB 	1H 			//1F2B 	1021
		LDR 	47H, 0H 			//1F2C 	1847
		MOVLB 	0H 			//1F2D 	1020
		STR 	58H 			//1F2E 	10D8
		MOVLB 	1H 			//1F2F 	1021
		LDR 	48H, 0H 			//1F30 	1848
		MOVLB 	0H 			//1F31 	1020
		STR 	59H 			//1F32 	10D9
		RET 					//1F33 	1008
		ADDWFC 	5H, 1H 		//1F34 	0D85
		MOVIW 	0H[0] 			//1F35 	0F00
		STR 	49H 			//1F36 	10C9
		MOVIW 	1H[0] 			//1F37 	0F01
		STR 	4AH 			//1F38 	10CA
		MOVIW 	2H[0] 			//1F39 	0F02
		STR 	4BH 			//1F3A 	10CB
		RET 					//1F3B 	1008
		LDR 	27H, 0H 			//1F3C 	1827
		STR 	2FH 			//1F3D 	10AF
		LDR 	26H, 0H 			//1F3E 	1826
		STR 	2EH 			//1F3F 	10AE
		LDWI 	3H 			//1F40 	0003
		STR 	30H 			//1F41 	10B0
		CLRF 	31H 			//1F42 	11B1
		RET 					//1F43 	1008
		LDR 	2FH, 0H 			//1F44 	182F
		STR 	5H 			//1F45 	1085
		LDR 	2EH, 0H 			//1F46 	182E
		STR 	4H 			//1F47 	1084
		LDWI 	87H 			//1F48 	0087
		ADDWR 	4H, 1H 		//1F49 	1784
		RETW 	A0H 			//1F4A 	04A0
		LDR 	2FH, 0H 			//1F4B 	182F
		STR 	5H 			//1F4C 	1085
		LDR 	2EH, 0H 			//1F4D 	182E
		STR 	4H 			//1F4E 	1084
		LDWI 	45H 			//1F4F 	0045
		ADDWR 	4H, 1H 		//1F50 	1784
		RETW 	A0H 			//1F51 	04A0
		LDR 	46H, 0H 			//1F52 	1846
		STR 	55H 			//1F53 	10D5
		LDR 	47H, 0H 			//1F54 	1847
		STR 	56H 			//1F55 	10D6
		LDR 	48H, 0H 			//1F56 	1848
		STR 	57H 			//1F57 	10D7
		RET 					//1F58 	1008
		STR 	22H 			//1F59 	10A2
		CLRF 	23H 			//1F5A 	11A3
		BTSC 	22H, 7H 		//1F5B 	2BA2
		DECR 	23H, 1H 		//1F5C 	13A3
		LDWI 	AH 			//1F5D 	000A
		STR 	20H 			//1F5E 	10A0
		CLRF 	21H 			//1F5F 	11A1
		RET 					//1F60 	1008
		STR 	2EH 			//1F61 	10AE
		LDWI 	3H 			//1F62 	0003
		CLRF 	2FH 			//1F63 	11AF
		STR 	30H 			//1F64 	10B0
		CLRF 	31H 			//1F65 	11B1
		RET 					//1F66 	1008
		LDR 	21H, 0H 			//1F67 	1821
		STR 	2FH 			//1F68 	10AF
		LDR 	20H, 0H 			//1F69 	1820
		STR 	2EH 			//1F6A 	10AE
		LDWI 	3H 			//1F6B 	0003
		STR 	30H 			//1F6C 	10B0
		CLRF 	31H 			//1F6D 	11B1
		RET 					//1F6E 	1008
		LDR 	46H, 0H 			//1F6F 	1846
		STR 	59H 			//1F70 	10D9
		LDR 	47H, 0H 			//1F71 	1847
		STR 	5AH 			//1F72 	10DA
		LDR 	48H, 0H 			//1F73 	1848
		STR 	5BH 			//1F74 	10DB
		LDR 	5CH, 0H 			//1F75 	185C
		RET 					//1F76 	1008
		LDR 	2FH, 0H 			//1F77 	182F
		STR 	5H 			//1F78 	1085
		LDR 	2EH, 0H 			//1F79 	182E
		STR 	4H 			//1F7A 	1084
		LDWI 	A2H 			//1F7B 	00A2
		ADDWR 	4H, 1H 		//1F7C 	1784
		RETW 	A0H 			//1F7D 	04A0
		LDWI 	AH 			//1F7E 	000A
		STR 	26H 			//1F7F 	10A6
		CLRF 	27H 			//1F80 	11A7
		LDR 	5CH, 0H 			//1F81 	185C
		STR 	22H 			//1F82 	10A2
		CLRF 	23H 			//1F83 	11A3
		BTSC 	22H, 7H 		//1F84 	2BA2
		DECR 	23H, 1H 		//1F85 	13A3
		LDWI 	64H 			//1F86 	0064
		STR 	20H 			//1F87 	10A0
		CLRF 	21H 			//1F88 	11A1
		RET 					//1F89 	1008
		LDR 	46H, 0H 			//1F8A 	1846
		STR 	55H 			//1F8B 	10D5
		LDR 	47H, 0H 			//1F8C 	1847
		STR 	56H 			//1F8D 	10D6
		LDR 	48H, 0H 			//1F8E 	1848
		STR 	57H 			//1F8F 	10D7
		RET 					//1F90 	1008
		LDR 	2FH, 0H 			//1F91 	182F
		STR 	5H 			//1F92 	1085
		LDR 	2EH, 0H 			//1F93 	182E
		STR 	4H 			//1F94 	1084
		LDWI 	60H 			//1F95 	0060
		ADDWR 	4H, 1H 		//1F96 	1784
		RETW 	A0H 			//1F97 	04A0
		LDR 	2EH, 0H 			//1F98 	182E
		STR 	49H 			//1F99 	10C9
		LDR 	2FH, 0H 			//1F9A 	182F
		STR 	4AH 			//1F9B 	10CA
		LDR 	30H, 0H 			//1F9C 	1830
		STR 	4BH 			//1F9D 	10CB
		RET 					//1F9E 	1008
		LDR 	46H, 0H 			//1F9F 	1846
		STR 	5DH 			//1FA0 	10DD
		LDR 	47H, 0H 			//1FA1 	1847
		STR 	5EH 			//1FA2 	10DE
		LDR 	48H, 0H 			//1FA3 	1848
		STR 	5FH 			//1FA4 	10DF
		RET 					//1FA5 	1008
		STR 	26H 			//1FA6 	10A6
		CLRF 	27H 			//1FA7 	11A7
		LDR 	5CH, 0H 			//1FA8 	185C
		STR 	28H 			//1FA9 	10A8
		CLRF 	29H 			//1FAA 	11A9
		RET 					//1FAB 	1008
		STR 	65H 			//1FAC 	10E5
		LDR 	64H, 0H 			//1FAD 	1864
		STR 	2EH 			//1FAE 	10AE
		LDR 	65H, 0H 			//1FAF 	1865
		STR 	2FH 			//1FB0 	10AF
		RET 					//1FB1 	1008
		LDWI 	66H 			//1FB2 	0066
		STR 	35H 			//1FB3 	10B5
		LDWI 	46H 			//1FB4 	0046
		STR 	36H 			//1FB5 	10B6
		LDWI 	40H 			//1FB6 	0040
		STR 	37H 			//1FB7 	10B7
		RET 					//1FB8 	1008
		LDR 	46H, 0H 			//1FB9 	1846
		STR 	5CH 			//1FBA 	10DC
		LDR 	47H, 0H 			//1FBB 	1847
		STR 	5DH 			//1FBC 	10DD
		LDR 	48H, 0H 			//1FBD 	1848
		STR 	5EH 			//1FBE 	10DE
		RET 					//1FBF 	1008
		LDR 	5CH, 0H 			//1FC0 	185C
		STR 	49H 			//1FC1 	10C9
		LDR 	5DH, 0H 			//1FC2 	185D
		STR 	4AH 			//1FC3 	10CA
		LDR 	5EH, 0H 			//1FC4 	185E
		STR 	4BH 			//1FC5 	10CB
		RET 					//1FC6 	1008
		LDWI 	9AH 			//1FC7 	009A
		STR 	35H 			//1FC8 	10B5
		LDWI 	79H 			//1FC9 	0079
		STR 	36H 			//1FCA 	10B6
		LDWI 	40H 			//1FCB 	0040
		STR 	37H 			//1FCC 	10B7
		RET 					//1FCD 	1008
		LDR 	59H, 0H 			//1FCE 	1859
		STR 	49H 			//1FCF 	10C9
		LDR 	5AH, 0H 			//1FD0 	185A
		STR 	4AH 			//1FD1 	10CA
		LDR 	5BH, 0H 			//1FD2 	185B
		STR 	4BH 			//1FD3 	10CB
		RET 					//1FD4 	1008
		LDR 	49H, 0H 			//1FD5 	1849
		ADDWR 	50H, 1H 		//1FD6 	17D0
		LDR 	4AH, 0H 			//1FD7 	184A
		ADDWFC 	51H, 1H 		//1FD8 	0DD1
		LDR 	4BH, 0H 			//1FD9 	184B
		ADDWFC 	52H, 1H 		//1FDA 	0DD2
		RET 					//1FDB 	1008
		STR 	55H 			//1FDC 	10D5
		MOVIW 	1H[0] 			//1FDD 	0F01
		STR 	56H 			//1FDE 	10D6
		MOVIW 	2H[0] 			//1FDF 	0F02
		STR 	57H 			//1FE0 	10D7
		RET 					//1FE1 	1008
		LDWI 	40H 			//1FE2 	0040
		CLRF 	46H 			//1FE3 	11C6
		CLRF 	47H 			//1FE4 	11C7
		STR 	48H 			//1FE5 	10C8
		MOVLB 	2H 			//1FE6 	1022
		RET 					//1FE7 	1008
		LDWI 	60H 			//1FE8 	0060
		CLRF 	35H 			//1FE9 	11B5
		STR 	36H 			//1FEA 	10B6
		LDWI 	40H 			//1FEB 	0040
		STR 	37H 			//1FEC 	10B7
		RET 					//1FED 	1008
		LDR 	5CH, 0H 			//1FEE 	185C
		XORWI 	80H 			//1FEF 	0A80
		ADDWI 	75H 			//1FF0 	0E75
		LDR 	5CH, 0H 			//1FF1 	185C
		RET 					//1FF2 	1008
		CLRF 	46H 			//1FF3 	11C6
		CLRF 	47H 			//1FF4 	11C7
		CLRF 	48H 			//1FF5 	11C8
		RET 					//1FF6 	1008
		LDR 	21H, 0H 			//1FF7 	1821
		STR 	29H 			//1FF8 	10A9
		LDR 	20H, 0H 			//1FF9 	1820
		STR 	28H 			//1FFA 	10A8
		RET 					//1FFB 	1008
		CLRF 	55H 			//1FFC 	11D5
		CLRF 	56H 			//1FFD 	11D6
		CLRF 	57H 			//1FFE 	11D7
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
		RETW 	44H 			//20AA 	0444
		RETW 	25H 			//20AB 	0425
		RETW 	64H 			//20AC 	0464
		RETW 	2CH 			//20AD 	042C
		RETW 	25H 			//20AE 	0425
		RETW 	30H 			//20AF 	0430
		RETW 	2EH 			//20B0 	042E
		RETW 	31H 			//20B1 	0431
		RETW 	66H 			//20B2 	0466
		RETW 	DH 			//20B3 	040D
		RETW 	AH 			//20B4 	040A
		RETW 	0H 			//20B5 	0400
		RETW 	54H 			//20B6 	0454
		RETW 	3AH 			//20B7 	043A
		RETW 	25H 			//20B8 	0425
		RETW 	30H 			//20B9 	0430
		RETW 	2EH 			//20BA 	042E
		RETW 	31H 			//20BB 	0431
		RETW 	66H 			//20BC 	0466
		RETW 	DH 			//20BD 	040D
		RETW 	AH 			//20BE 	040A
		RETW 	0H 			//20BF 	0400
		RETW 	54H 			//20C0 	0454
		RETW 	25H 			//20C1 	0425
		RETW 	30H 			//20C2 	0430
		RETW 	2EH 			//20C3 	042E
		RETW 	31H 			//20C4 	0431
		RETW 	66H 			//20C5 	0466
		RETW 	DH 			//20C6 	040D
		RETW 	AH 			//20C7 	040A
		RETW 	0H 			//20C8 	0400
		RETW 	48H 			//20C9 	0448
		RETW 	30H 			//20CA 	0430
		RETW 	DH 			//20CB 	040D
		RETW 	AH 			//20CC 	040A
		RETW 	0H 			//20CD 	0400
		RETW 	50H 			//20CE 	0450
		RETW 	30H 			//20CF 	0430
		RETW 	DH 			//20D0 	040D
		RETW 	AH 			//20D1 	040A
		RETW 	0H 			//20D2 	0400
		RETW 	53H 			//20D3 	0453
		RETW 	30H 			//20D4 	0430
		RETW 	DH 			//20D5 	040D
		RETW 	AH 			//20D6 	040A
		RETW 	0H 			//20D7 	0400
		RETW 	54H 			//20D8 	0454
		RETW 	30H 			//20D9 	0430
		RETW 	DH 			//20DA 	040D
		RETW 	AH 			//20DB 	040A
		RETW 	0H 			//20DC 	0400
		RETW 	48H 			//20DD 	0448
		RETW 	31H 			//20DE 	0431
		RETW 	DH 			//20DF 	040D
		RETW 	AH 			//20E0 	040A
		RETW 	0H 			//20E1 	0400
		RETW 	50H 			//20E2 	0450
		RETW 	31H 			//20E3 	0431
		RETW 	DH 			//20E4 	040D
		RETW 	AH 			//20E5 	040A
		RETW 	0H 			//20E6 	0400
		RETW 	53H 			//20E7 	0453
		RETW 	31H 			//20E8 	0431
		RETW 	DH 			//20E9 	040D
		RETW 	AH 			//20EA 	040A
		RETW 	0H 			//20EB 	0400
		RETW 	72H 			//20EC 	0472
		RETW 	64H 			//20ED 	0464
		RETW 	31H 			//20EE 	0431
		RETW 	0H 			//20EF 	0400
		RETW 	72H 			//20F0 	0472
		RETW 	64H 			//20F1 	0464
		RETW 	32H 			//20F2 	0432
		RETW 	0H 			//20F3 	0400
		RETW 	52H 			//20F4 	0452
		RETW 	30H 			//20F5 	0430
		RETW 	3AH 			//20F6 	043A
		RETW 	0H 			//20F7 	0400
		RETW 	54H 			//20F8 	0454
		RETW 	30H 			//20F9 	0430
		RETW 	3AH 			//20FA 	043A
		RETW 	0H 			//20FB 	0400
		RETW 	54H 			//20FC 	0454
		RETW 	31H 			//20FD 	0431
		RETW 	3AH 			//20FE 	043A
		RETW 	0H 			//20FF 	0400
		RETW 	74H 			//2100 	0474
		RETW 	31H 			//2101 	0431
		RETW 	3AH 			//2102 	043A
		RETW 	0H 			//2103 	0400
		RETW 	54H 			//2104 	0454
		RETW 	32H 			//2105 	0432
		RETW 	3AH 			//2106 	043A
		RETW 	0H 			//2107 	0400
		RETW 	74H 			//2108 	0474
		RETW 	32H 			//2109 	0432
		RETW 	3AH 			//210A 	043A
		RETW 	0H 			//210B 	0400
		RETW 	70H 			//210C 	0470
		RETW 	66H 			//210D 	0466
		RETW 	3AH 			//210E 	043A
		RETW 	0H 			//210F 	0400
		RETW 	54H 			//2110 	0454
		RETW 	72H 			//2111 	0472
		RETW 	3AH 			//2112 	043A
		RETW 	0H 			//2113 	0400
		ORG		2114H
		RETW 	70H 			//2114 	0470
		RETW 	74H 			//2115 	0474
		RETW 	3AH 			//2116 	043A
		RETW 	0H 			//2117 	0400
		ORG		24EDH
		LDR 	20H, 0H 			//24ED 	1820
		STR 	26H 			//24EE 	10A6
		LDR 	21H, 0H 			//24EF 	1821
		STR 	27H 			//24F0 	10A7
		LDR 	22H, 0H 			//24F1 	1822
		STR 	28H 			//24F2 	10A8
		BCR 	3H, 0H 			//24F3 	2003
		RLR 	27H, 0H 			//24F4 	1D27
		RLR 	28H, 0H 			//24F5 	1D28
		STR 	2EH 			//24F6 	10AE
		LDR 	2EH, 0H 			//24F7 	182E
		BTSS 	3H, 2H 			//24F8 	2D03
		LJUMP 	4FFH 			//24F9 	3CFF
		CLRF 	20H 			//24FA 	11A0
		CLRF 	21H 			//24FB 	11A1
		CLRF 	22H 			//24FC 	11A2
		CLRF 	23H 			//24FD 	11A3
		RET 					//24FE 	1008
		LDR 	23H, 0H 			//24FF 	1823
		STR 	26H 			//2500 	10A6
		LDR 	24H, 0H 			//2501 	1824
		STR 	27H 			//2502 	10A7
		LDR 	25H, 0H 			//2503 	1825
		STR 	28H 			//2504 	10A8
		BCR 	3H, 0H 			//2505 	2003
		RLR 	27H, 0H 			//2506 	1D27
		RLR 	28H, 0H 			//2507 	1D28
		STR 	2DH 			//2508 	10AD
		LDR 	2DH, 0H 			//2509 	182D
		BTSC 	3H, 2H 			//250A 	2903
		LJUMP 	4FAH 			//250B 	3CFA
		LDWI 	7FH 			//250C 	007F
		BSR 	21H, 7H 			//250D 	27A1
		CLRF 	22H 			//250E 	11A2
		BSR 	24H, 7H 			//250F 	27A4
		CLRF 	25H 			//2510 	11A5
		CLRF 	29H 			//2511 	11A9
		CLRF 	2AH 			//2512 	11AA
		CLRF 	2BH 			//2513 	11AB
		CLRF 	2CH 			//2514 	11AC
		SUBWR 	2EH, 1H 		//2515 	12AE
		LDWI 	98H 			//2516 	0098
		ADDWR 	2DH, 0H 		//2517 	172D
		STR 	26H 			//2518 	10A6
		SUBWR 	2EH, 1H 		//2519 	12AE
		LDWI 	18H 			//251A 	0018
		STR 	2DH 			//251B 	10AD
		LSLF 	29H, 1H 		//251C 	05A9
		RLR 	2AH, 1H 			//251D 	1DAA
		RLR 	2BH, 1H 			//251E 	1DAB
		RLR 	2CH, 1H 			//251F 	1DAC
		LDR 	25H, 0H 			//2520 	1825
		SUBWR 	22H, 0H 		//2521 	1222
		BTSS 	3H, 2H 			//2522 	2D03
		LJUMP 	52AH 			//2523 	3D2A
		LDR 	24H, 0H 			//2524 	1824
		SUBWR 	21H, 0H 		//2525 	1221
		BTSS 	3H, 2H 			//2526 	2D03
		LJUMP 	52AH 			//2527 	3D2A
		LDR 	23H, 0H 			//2528 	1823
		SUBWR 	20H, 0H 		//2529 	1220
		BTSS 	3H, 0H 			//252A 	2C03
		LJUMP 	533H 			//252B 	3D33
		LDR 	23H, 0H 			//252C 	1823
		SUBWR 	20H, 1H 		//252D 	12A0
		LDR 	24H, 0H 			//252E 	1824
		SUBWFB 	21H, 1H 		//252F 	0BA1
		LDR 	25H, 0H 			//2530 	1825
		SUBWFB 	22H, 1H 		//2531 	0BA2
		BSR 	29H, 0H 			//2532 	2429
		LSLF 	20H, 1H 		//2533 	05A0
		RLR 	21H, 1H 			//2534 	1DA1
		RLR 	22H, 1H 			//2535 	1DA2
		DECRSZ 	2DH, 1H 		//2536 	1BAD
		LJUMP 	51CH 			//2537 	3D1C
		BTSS 	2EH, 7H 		//2538 	2FAE
		LJUMP 	546H 			//2539 	3D46
		LDR 	2EH, 0H 			//253A 	182E
		XORWI 	80H 			//253B 	0A80
		ADDWI 	97H 			//253C 	0E97
		BTSS 	3H, 0H 			//253D 	2C03
		LJUMP 	4FAH 			//253E 	3CFA
		LSRF 	2CH, 1H 		//253F 	06AC
		RRR 	2BH, 1H 			//2540 	1CAB
		RRR 	2AH, 1H 			//2541 	1CAA
		RRR 	29H, 1H 			//2542 	1CA9
		INCRSZ 	2EH, 1H 		//2543 	1FAE
		LJUMP 	53FH 			//2544 	3D3F
		LJUMP 	553H 			//2545 	3D53
		LDWI 	18H 			//2546 	0018
		SUBWR 	2EH, 0H 		//2547 	122E
		BTSC 	3H, 0H 			//2548 	2803
		LJUMP 	4FAH 			//2549 	3CFA
		LDR 	2EH, 0H 			//254A 	182E
		BTSC 	3H, 2H 			//254B 	2903
		LJUMP 	553H 			//254C 	3D53
		LSLF 	29H, 1H 		//254D 	05A9
		RLR 	2AH, 1H 			//254E 	1DAA
		RLR 	2BH, 1H 			//254F 	1DAB
		RLR 	2CH, 1H 			//2550 	1DAC
		DECR 	2EH, 1H 		//2551 	13AE
		LJUMP 	54AH 			//2552 	3D4A
		LDR 	2CH, 0H 			//2553 	182C
		STR 	23H 			//2554 	10A3
		LDR 	2BH, 0H 			//2555 	182B
		STR 	22H 			//2556 	10A2
		LDR 	2AH, 0H 			//2557 	182A
		STR 	21H 			//2558 	10A1
		LDR 	29H, 0H 			//2559 	1829
		STR 	20H 			//255A 	10A0
		RET 					//255B 	1008
		LDWI 	A0H 			//255C 	00A0
		STR 	6H 			//255D 	1086
		CLRF 	7H 			//255E 	1187
		MOVIW 	0H[1] 			//255F 	0F40
		MOVLB 	1H 			//2560 	1021
		STR 	26H 			//2561 	10A6
		MOVIW 	1H[1] 			//2562 	0F41
		STR 	27H 			//2563 	10A7
		MOVIW 	2H[1] 			//2564 	0F42
		STR 	28H 			//2565 	10A8
		MOVIW 	3H[1] 			//2566 	0F43
		STR 	29H 			//2567 	10A9
		BCR 	3H, 0H 			//2568 	2003
		RLR 	28H, 0H 			//2569 	1D28
		RLR 	29H, 0H 			//256A 	1D29
		STR 	33H 			//256B 	10B3
		LDR 	33H, 0H 			//256C 	1833
		BTSS 	3H, 2H 			//256D 	2D03
		LJUMP 	574H 			//256E 	3D74
		CLRF 	20H 			//256F 	11A0
		CLRF 	21H 			//2570 	11A1
		CLRF 	22H 			//2571 	11A2
		CLRF 	23H 			//2572 	11A3
		RET 					//2573 	1008
		LDWI 	A3H 			//2574 	00A3
		LCALL 	604H 			//2575 	3604
		MOVLP 	25H 			//2576 	01A5
		BCR 	3H, 0H 			//2577 	2003
		RLR 	28H, 0H 			//2578 	1D28
		RLR 	29H, 0H 			//2579 	1D29
		STR 	32H 			//257A 	10B2
		LDR 	32H, 0H 			//257B 	1832
		BTSC 	3H, 2H 			//257C 	2903
		LJUMP 	56FH 			//257D 	3D6F
		LDWI 	A0H 			//257E 	00A0
		STR 	6H 			//257F 	1086
		LDWI 	80H 			//2580 	0080
		ADDFSR 	1H, 1H 		//2581 	0141
		ADDFSR 	1H, 1H 		//2582 	0141
		IORWR 	1H, 1H 		//2583 	1481
		LDWI 	A0H 			//2584 	00A0
		ADDFSR 	1H, 1H 		//2585 	0141
		STR 	6H 			//2586 	1086
		LDWI 	A3H 			//2587 	00A3
		LCALL 	60FH 			//2588 	360F
		MOVLP 	25H 			//2589 	01A5
		STR 	6H 			//258A 	1086
		LDWI 	80H 			//258B 	0080
		CLRF 	7H 			//258C 	1187
		ADDFSR 	1H, 1H 		//258D 	0141
		ADDFSR 	1H, 1H 		//258E 	0141
		IORWR 	1H, 1H 		//258F 	1481
		LDWI 	A3H 			//2590 	00A3
		ADDFSR 	1H, 1H 		//2591 	0141
		STR 	6H 			//2592 	1086
		LDWI 	7FH 			//2593 	007F
		LCALL 	60FH 			//2594 	360F
		MOVLP 	25H 			//2595 	01A5
		CLRF 	2EH 			//2596 	11AE
		CLRF 	2FH 			//2597 	11AF
		CLRF 	30H 			//2598 	11B0
		CLRF 	31H 			//2599 	11B1
		SUBWR 	33H, 1H 		//259A 	12B3
		LDWI 	A0H 			//259B 	00A0
		ADDWR 	32H, 0H 		//259C 	1732
		STR 	26H 			//259D 	10A6
		SUBWR 	33H, 1H 		//259E 	12B3
		LDWI 	20H 			//259F 	0020
		STR 	32H 			//25A0 	10B2
		LDWI 	A3H 			//25A1 	00A3
		LSLF 	2EH, 1H 		//25A2 	05AE
		RLR 	2FH, 1H 			//25A3 	1DAF
		RLR 	30H, 1H 			//25A4 	1DB0
		RLR 	31H, 1H 			//25A5 	1DB1
		LCALL 	604H 			//25A6 	3604
		MOVLP 	25H 			//25A7 	01A5
		LDWI 	A0H 			//25A8 	00A0
		STR 	6H 			//25A9 	1086
		MOVIW 	0H[1] 			//25AA 	0F40
		STR 	2AH 			//25AB 	10AA
		MOVIW 	1H[1] 			//25AC 	0F41
		STR 	2BH 			//25AD 	10AB
		MOVIW 	2H[1] 			//25AE 	0F42
		STR 	2CH 			//25AF 	10AC
		MOVIW 	3H[1] 			//25B0 	0F43
		STR 	2DH 			//25B1 	10AD
		LDR 	29H, 0H 			//25B2 	1829
		SUBWR 	2DH, 0H 		//25B3 	122D
		BTSS 	3H, 2H 			//25B4 	2D03
		LJUMP 	5C0H 			//25B5 	3DC0
		LDR 	28H, 0H 			//25B6 	1828
		SUBWR 	2CH, 0H 		//25B7 	122C
		BTSS 	3H, 2H 			//25B8 	2D03
		LJUMP 	5C0H 			//25B9 	3DC0
		LDR 	27H, 0H 			//25BA 	1827
		SUBWR 	2BH, 0H 		//25BB 	122B
		BTSS 	3H, 2H 			//25BC 	2D03
		LJUMP 	5C0H 			//25BD 	3DC0
		LDR 	26H, 0H 			//25BE 	1826
		SUBWR 	2AH, 0H 		//25BF 	122A
		BTSS 	3H, 0H 			//25C0 	2C03
		LJUMP 	5D4H 			//25C1 	3DD4
		LDWI 	A3H 			//25C2 	00A3
		LCALL 	604H 			//25C3 	3604
		MOVLP 	25H 			//25C4 	01A5
		LDWI 	A0H 			//25C5 	00A0
		STR 	6H 			//25C6 	1086
		LDR 	26H, 0H 			//25C7 	1826
		SUBWR 	1H, 1H 		//25C8 	1281
		ADDFSR 	1H, 1H 		//25C9 	0141
		LDR 	27H, 0H 			//25CA 	1827
		SUBWFB 	1H, 1H 		//25CB 	0B81
		ADDFSR 	1H, 1H 		//25CC 	0141
		LDR 	28H, 0H 			//25CD 	1828
		SUBWFB 	1H, 1H 		//25CE 	0B81
		ADDFSR 	1H, 1H 		//25CF 	0141
		LDR 	29H, 0H 			//25D0 	1829
		SUBWFB 	1H, 1H 		//25D1 	0B81
		ADDFSR 	1H, 3DH 		//25D2 	017D
		BSR 	2EH, 0H 			//25D3 	242E
		LDWI 	A0H 			//25D4 	00A0
		STR 	6H 			//25D5 	1086
		CLRF 	7H 			//25D6 	1187
		LSLF 	1H, 1H 			//25D7 	0581
		ADDFSR 	1H, 1H 		//25D8 	0141
		RLR 	1H, 1H 			//25D9 	1D81
		ADDFSR 	1H, 1H 		//25DA 	0141
		RLR 	1H, 1H 			//25DB 	1D81
		ADDFSR 	1H, 1H 		//25DC 	0141
		RLR 	1H, 1H 			//25DD 	1D81
		DECRSZ 	32H, 1H 		//25DE 	1BB2
		LJUMP 	5A1H 			//25DF 	3DA1
		BTSS 	33H, 7H 		//25E0 	2FB3
		LJUMP 	5EEH 			//25E1 	3DEE
		LDR 	33H, 0H 			//25E2 	1833
		XORWI 	80H 			//25E3 	0A80
		ADDWI 	9FH 			//25E4 	0E9F
		BTSS 	3H, 0H 			//25E5 	2C03
		LJUMP 	56FH 			//25E6 	3D6F
		LSRF 	31H, 1H 		//25E7 	06B1
		RRR 	30H, 1H 			//25E8 	1CB0
		RRR 	2FH, 1H 			//25E9 	1CAF
		RRR 	2EH, 1H 			//25EA 	1CAE
		INCRSZ 	33H, 1H 		//25EB 	1FB3
		LJUMP 	5E7H 			//25EC 	3DE7
		LJUMP 	5FBH 			//25ED 	3DFB
		LDWI 	20H 			//25EE 	0020
		SUBWR 	33H, 0H 		//25EF 	1233
		BTSC 	3H, 0H 			//25F0 	2803
		LJUMP 	56FH 			//25F1 	3D6F
		LDR 	33H, 0H 			//25F2 	1833
		BTSC 	3H, 2H 			//25F3 	2903
		LJUMP 	5FBH 			//25F4 	3DFB
		LSLF 	2EH, 1H 		//25F5 	05AE
		RLR 	2FH, 1H 			//25F6 	1DAF
		RLR 	30H, 1H 			//25F7 	1DB0
		RLR 	31H, 1H 			//25F8 	1DB1
		DECR 	33H, 1H 		//25F9 	13B3
		LJUMP 	5F2H 			//25FA 	3DF2
		LDR 	31H, 0H 			//25FB 	1831
		STR 	23H 			//25FC 	10A3
		LDR 	30H, 0H 			//25FD 	1830
		STR 	22H 			//25FE 	10A2
		LDR 	2FH, 0H 			//25FF 	182F
		STR 	21H 			//2600 	10A1
		LDR 	2EH, 0H 			//2601 	182E
		STR 	20H 			//2602 	10A0
		RET 					//2603 	1008
		STR 	6H 			//2604 	1086
		CLRF 	7H 			//2605 	1187
		MOVIW 	0H[1] 			//2606 	0F40
		STR 	26H 			//2607 	10A6
		MOVIW 	1H[1] 			//2608 	0F41
		STR 	27H 			//2609 	10A7
		MOVIW 	2H[1] 			//260A 	0F42
		STR 	28H 			//260B 	10A8
		MOVIW 	3H[1] 			//260C 	0F43
		STR 	29H 			//260D 	10A9
		RET 					//260E 	1008
		CLRF 	7H 			//260F 	1187
		ADDFSR 	1H, 1H 		//2610 	0141
		ADDFSR 	1H, 1H 		//2611 	0141
		ADDFSR 	1H, 1H 		//2612 	0141
		CLRF 	1H 			//2613 	1181
		RET 					//2614 	1008
		STR 	7DH 			//2615 	10FD
		LDR 	7DH, 0H 			//2616 	187D
		BTSC 	3H, 2H 			//2617 	2903
		RETW 	0H 			//2618 	0400
		LDR 	7DH, 0H 			//2619 	187D
		STR 	6H 			//261A 	1086
		LDWI 	3H 			//261B 	0003
		STR 	7H 			//261C 	1087
		LDR 	1H, 0H 			//261D 	1801
		BTSC 	3H, 2H 			//261E 	2903
		RETW 	0H 			//261F 	0400
		LDR 	7CH, 0H 			//2620 	187C
		STR 	76H 			//2621 	10F6
		LDR 	7BH, 0H 			//2622 	187B
		STR 	75H 			//2623 	10F5
		LDR 	7CH, 0H 			//2624 	187C
		STR 	71H 			//2625 	10F1
		LDR 	7BH, 0H 			//2626 	187B
		STR 	70H 			//2627 	10F0
		LCALL 	682H 			//2628 	3682
		MOVLP 	26H 			//2629 	01A6
		LDR 	71H, 0H 			//262A 	1871
		STR 	78H 			//262B 	10F8
		LDR 	70H, 0H 			//262C 	1870
		STR 	77H 			//262D 	10F7
		LDR 	7DH, 0H 			//262E 	187D
		LCALL 	657H 			//262F 	3657
		MOVLP 	26H 			//2630 	01A6
		LDR 	75H, 0H 			//2631 	1875
		IORWR 	76H, 0H 		//2632 	1476
		BTSS 	3H, 2H 			//2633 	2D03
		LJUMP 	637H 			//2634 	3E37
		LDR 	7DH, 0H 			//2635 	187D
		RET 					//2636 	1008
		LDR 	7BH, 0H 			//2637 	187B
		STR 	4H 			//2638 	1084
		LDR 	7CH, 0H 			//2639 	187C
		STR 	5H 			//263A 	1085
		LDR 	0H, 0H 			//263B 	1800
		STR 	70H 			//263C 	10F0
		CLRF 	71H 			//263D 	11F1
		LDR 	7DH, 0H 			//263E 	187D
		ADDWI 	1H 			//263F 	0E01
		LCALL 	643H 			//2640 	3643
		MOVLP 	26H 			//2641 	01A6
		LJUMP 	615H 			//2642 	3E15
		STR 	72H 			//2643 	10F2
		LDR 	72H, 0H 			//2644 	1872
		STR 	6H 			//2645 	1086
		LDWI 	3H 			//2646 	0003
		STR 	7H 			//2647 	1087
		LDR 	1H, 0H 			//2648 	1801
		XORWR 	70H, 0H 		//2649 	1670
		BTSS 	3H, 2H 			//264A 	2D03
		LJUMP 	64EH 			//264B 	3E4E
		LDR 	72H, 0H 			//264C 	1872
		RET 					//264D 	1008
		LDR 	72H, 0H 			//264E 	1872
		STR 	6H 			//264F 	1086
		LDWI 	3H 			//2650 	0003
		STR 	7H 			//2651 	1087
		INCR 	72H, 1H 		//2652 	1AF2
		LDR 	1H, 0H 			//2653 	1801
		BTSC 	3H, 2H 			//2654 	2903
		RETW 	0H 			//2655 	0400
		LJUMP 	644H 			//2656 	3E44
		STR 	7AH 			//2657 	10FA
		LDWI 	1H 			//2658 	0001
		SUBWR 	77H, 1H 		//2659 	12F7
		LDWI 	0H 			//265A 	0000
		SUBWFB 	78H, 1H 		//265B 	0BF8
		INCRSZ 	77H, 0H 		//265C 	1F77
		LJUMP 	661H 			//265D 	3E61
		INCR 	78H, 0H 		//265E 	1A78
		BTSC 	3H, 2H 			//265F 	2903
		LJUMP 	67FH 			//2660 	3E7F
		LDR 	7AH, 0H 			//2661 	187A
		LCALL 	6E5H 			//2662 	36E5
		MOVLP 	26H 			//2663 	01A6
		BTSC 	3H, 2H 			//2664 	2903
		LJUMP 	66FH 			//2665 	3E6F
		LCALL 	698H 			//2666 	3698
		MOVLP 	26H 			//2667 	01A6
		STR 	79H 			//2668 	10F9
		LDR 	7AH, 0H 			//2669 	187A
		STR 	6H 			//266A 	1086
		LDR 	1H, 0H 			//266B 	1801
		XORWR 	79H, 0H 		//266C 	1679
		BTSC 	3H, 2H 			//266D 	2903
		LJUMP 	67AH 			//266E 	3E7A
		LDR 	7AH, 0H 			//266F 	187A
		STR 	6H 			//2670 	1086
		LDWI 	3H 			//2671 	0003
		STR 	7H 			//2672 	1087
		LCALL 	698H 			//2673 	3698
		SUBWR 	1H, 0H 		//2674 	1201
		STR 	75H 			//2675 	10F5
		CLRF 	76H 			//2676 	11F6
		BTSS 	3H, 0H 			//2677 	2C03
		DECR 	76H, 1H 		//2678 	13F6
		RET 					//2679 	1008
		INCR 	7AH, 1H 		//267A 	1AFA
		INCR 	75H, 1H 		//267B 	1AF5
		BTSC 	3H, 2H 			//267C 	2903
		INCR 	76H, 1H 		//267D 	1AF6
		LJUMP 	658H 			//267E 	3E58
		CLRF 	75H 			//267F 	11F5
		CLRF 	76H 			//2680 	11F6
		RET 					//2681 	1008
		LDR 	71H, 0H 			//2682 	1871
		STR 	74H 			//2683 	10F4
		LDR 	70H, 0H 			//2684 	1870
		STR 	73H 			//2685 	10F3
		LDR 	73H, 0H 			//2686 	1873
		STR 	4H 			//2687 	1084
		LDR 	74H, 0H 			//2688 	1874
		STR 	5H 			//2689 	1085
		MOVIW 	FSR0++ 		//268A 	1012
		BTSC 	3H, 2H 			//268B 	2903
		LJUMP 	691H 			//268C 	3E91
		INCR 	73H, 1H 		//268D 	1AF3
		BTSC 	3H, 2H 			//268E 	2903
		INCR 	74H, 1H 		//268F 	1AF4
		LJUMP 	686H 			//2690 	3E86
		LDR 	70H, 0H 			//2691 	1870
		SUBWR 	73H, 0H 		//2692 	1273
		STR 	70H 			//2693 	10F0
		LDR 	71H, 0H 			//2694 	1871
		SUBWFB 	74H, 0H 		//2695 	0B74
		STR 	71H 			//2696 	10F1
		RET 					//2697 	1008
		LDR 	75H, 0H 			//2698 	1875
		STR 	4H 			//2699 	1084
		LDR 	76H, 0H 			//269A 	1876
		STR 	5H 			//269B 	1085
		LDR 	0H, 0H 			//269C 	1800
		RET 					//269D 	1008
		MOVLB 	0H 			//269E 	1020
		STR 	24H 			//269F 	10A4

		//;NFB.C: 50: int res = 0;
		CLRF 	20H 			//26A0 	11A0
		CLRF 	21H 			//26A1 	11A1

		//;NFB.C: 51: for (int i = 0; arr[i] != '\0'; ++i){
		CLRF 	22H 			//26A2 	11A2
		CLRF 	23H 			//26A3 	11A3
		LDR 	22H, 0H 			//26A4 	1822
		ADDWR 	24H, 0H 		//26A5 	1724
		STR 	78H 			//26A6 	10F8
		LCALL 	6E5H 			//26A7 	36E5
		MOVLP 	26H 			//26A8 	01A6
		BTSC 	3H, 2H 			//26A9 	2903
		LJUMP 	6CBH 			//26AA 	3ECB

		//;NFB.C: 52: res = (res * 10) + (arr[i] - '0');
		LDR 	22H, 0H 			//26AB 	1822
		ADDWR 	24H, 0H 		//26AC 	1724
		STR 	78H 			//26AD 	10F8
		STR 	6H 			//26AE 	1086
		LDR 	1H, 0H 			//26AF 	1801
		STR 	79H 			//26B0 	10F9
		CLRF 	7AH 			//26B1 	11FA
		LDR 	21H, 0H 			//26B2 	1821
		STR 	71H 			//26B3 	10F1
		LDR 	20H, 0H 			//26B4 	1820
		STR 	70H 			//26B5 	10F0
		LDWI 	AH 			//26B6 	000A
		STR 	72H 			//26B7 	10F2
		CLRF 	73H 			//26B8 	11F3
		LCALL 	6D0H 			//26B9 	36D0
		MOVLP 	26H 			//26BA 	01A6
		LDR 	79H, 0H 			//26BB 	1879
		ADDWR 	70H, 0H 		//26BC 	1770
		STR 	7BH 			//26BD 	10FB
		LDR 	7AH, 0H 			//26BE 	187A
		ADDWFC 	71H, 0H 		//26BF 	0D71
		STR 	7CH 			//26C0 	10FC
		LDR 	7BH, 0H 			//26C1 	187B
		ADDWI 	D0H 			//26C2 	0ED0
		STR 	20H 			//26C3 	10A0
		LDWI 	FFH 			//26C4 	00FF
		ADDWFC 	7CH, 0H 		//26C5 	0D7C
		STR 	21H 			//26C6 	10A1
		INCR 	22H, 1H 		//26C7 	1AA2
		BTSC 	3H, 2H 			//26C8 	2903
		INCR 	23H, 1H 		//26C9 	1AA3
		LJUMP 	6A4H 			//26CA 	3EA4

		//;NFB.C: 53: }
		//;NFB.C: 54: return res;
		LDR 	21H, 0H 			//26CB 	1821
		STR 	77H 			//26CC 	10F7
		LDR 	20H, 0H 			//26CD 	1820
		STR 	76H 			//26CE 	10F6
		RET 					//26CF 	1008
		CLRF 	74H 			//26D0 	11F4
		CLRF 	75H 			//26D1 	11F5
		BTSS 	70H, 0H 		//26D2 	2C70
		LJUMP 	6D8H 			//26D3 	3ED8
		LDR 	72H, 0H 			//26D4 	1872
		ADDWR 	74H, 1H 		//26D5 	17F4
		LDR 	73H, 0H 			//26D6 	1873
		ADDWFC 	75H, 1H 		//26D7 	0DF5
		LSLF 	72H, 1H 		//26D8 	05F2
		RLR 	73H, 1H 			//26D9 	1DF3
		LSRF 	71H, 1H 		//26DA 	06F1
		RRR 	70H, 1H 			//26DB 	1CF0
		LDR 	70H, 0H 			//26DC 	1870
		IORWR 	71H, 0H 		//26DD 	1471
		BTSS 	3H, 2H 			//26DE 	2D03
		LJUMP 	6D2H 			//26DF 	3ED2
		LDR 	75H, 0H 			//26E0 	1875
		STR 	71H 			//26E1 	10F1
		LDR 	74H, 0H 			//26E2 	1874
		STR 	70H 			//26E3 	10F0
		RET 					//26E4 	1008
		STR 	6H 			//26E5 	1086
		LDWI 	3H 			//26E6 	0003
		STR 	7H 			//26E7 	1087
		LDR 	1H, 0H 			//26E8 	1801
		RET 					//26E9 	1008

		//;NFB.C: 619: POWER_INITIAL();
		MOVLP 	8H 			//26EA 	0188
		LCALL 	AH 			//26EB 	300A
		MOVLP 	26H 			//26EC 	01A6

		//;NFB.C: 620: EEPROM_INIT();
		MOVLP 	1AH 			//26ED 	019A
		LCALL 	262H 			//26EE 	3262
		MOVLP 	26H 			//26EF 	01A6

		//;NFB.C: 621: UART_INITIAL();
		MOVLP 	10H 			//26F0 	0190
		LCALL 	4CH 			//26F1 	304C
		MOVLP 	26H 			//26F2 	01A6

		//;NFB.C: 622: IO_INT_INITIAL();
		MOVLP 	10H 			//26F3 	0190
		LCALL 	AH 			//26F4 	300A
		MOVLP 	26H 			//26F5 	01A6

		//;NFB.C: 623: ADC_INITIAL();
		MOVLP 	10H 			//26F6 	0190
		LCALL 	39H 			//26F7 	3039
		MOVLP 	26H 			//26F8 	01A6

		//;NFB.C: 624: OP0_INITIAL();
		MOVLP 	10H 			//26F9 	0190
		LCALL 	2H 			//26FA 	3002
		MOVLP 	26H 			//26FB 	01A6

		//;NFB.C: 625: TIM2_INITIAL();
		MOVLP 	10H 			//26FC 	0190
		LCALL 	17H 			//26FD 	3017
		MOVLP 	26H 			//26FE 	01A6

		//;NFB.C: 626: INIT();
		MOVLP 	8H 			//26FF 	0188
		LCALL 	1H 			//2700 	3001
		MOVLP 	26H 			//2701 	01A6

		//;NFB.C: 627: DelayMs(100);
		MOVLP 	18H 			//2702 	0198
		LCALL 	C8H 			//2703 	30C8
		MOVLP 	26H 			//2704 	01A6
		MOVLP 	1EH 			//2705 	019E
		LCALL 	6B7H 			//2706 	36B7
		MOVLP 	26H 			//2707 	01A6
		SLEEP 					//2708 	1063

		//;NFB.C: 629: __nop();
		NOP 					//2709 	1000

		//;NFB.C: 630: __nop();
		NOP 					//270A 	1000
		MOVLP 	17H 			//270B 	0197
		LJUMP 	7B4H 			//270C 	3FB4

		//;NFB.C: 636: if(BATL){
		MOVLB 	6H 			//270D 	1026
		LDR 	4AH, 0H 			//270E 	184A
		IORWR 	4BH, 0H 		//270F 	144B
		BTSC 	3H, 2H 			//2710 	2903
		LJUMP 	717H 			//2711 	3F17

		//;NFB.C: 637: BATL = 0;
		CLRF 	4AH 			//2712 	11CA
		CLRF 	4BH 			//2713 	11CB

		//;NFB.C: 638: BatteryLevel();
		MOVLP 	19H 			//2714 	0199
		LCALL 	13CH 			//2715 	313C
		MOVLP 	26H 			//2716 	01A6

		//;NFB.C: 639: }
		//;NFB.C: 640: if(BTNtimer){
		MOVLB 	0H 			//2717 	1020
		LDR 	6BH, 0H 			//2718 	186B
		IORWR 	6CH, 0H 		//2719 	146C
		BTSC 	3H, 2H 			//271A 	2903
		LJUMP 	7A2H 			//271B 	3FA2
		LDWI 	1H 			//271C 	0001

		//;NFB.C: 641: BTNtimer=0;
		CLRF 	6BH 			//271D 	11EB
		CLRF 	6CH 			//271E 	11EC

		//;NFB.C: 642: PowerOn = 1 - PowerOn;
		MOVLB 	2H 			//271F 	1022
		STR 	4AH 			//2720 	10CA
		MOVLB 	0H 			//2721 	1020
		LDR 	6DH, 0H 			//2722 	186D
		MOVLB 	2H 			//2723 	1022
		SUBWR 	4AH, 0H 		//2724 	124A
		MOVLB 	0H 			//2725 	1020
		STR 	6DH 			//2726 	10ED
		COMR 	6EH, 0H 		//2727 	196E
		BTSC 	3H, 0H 			//2728 	2803
		INCR 	9H, 1H 			//2729 	1A89
		STR 	6EH 			//272A 	10EE

		//;NFB.C: 643: if(PowerOn){
		IORWR 	6DH, 0H 		//272B 	146D
		BTSC 	3H, 2H 			//272C 	2903
		LJUMP 	767H 			//272D 	3F67

		//;NFB.C: 644: send((char*)"P1\r\n",4);
		LDWI 	E2H 			//272E 	00E2
		MOVLB 	2H 			//272F 	1022
		STR 	24H 			//2730 	10A4
		LDWI 	A0H 			//2731 	00A0
		MOVLP 	18H 			//2732 	0198
		LCALL 	84H 			//2733 	3084
		MOVLP 	26H 			//2734 	01A6
		MOVLP 	19H 			//2735 	0199
		LCALL 	119H 			//2736 	3119
		MOVLP 	26H 			//2737 	01A6

		//;NFB.C: 645: PC1 = 0;
		MOVLB 	0H 			//2738 	1020
		BCR 	EH, 1H 			//2739 	208E

		//;NFB.C: 646: PB0 = 1;
		//;NFB.C: 647: DelayMs(500);
		MOVLP 	18H 			//273A 	0198
		LCALL 	5DH 			//273B 	305D
		MOVLP 	26H 			//273C 	01A6
		MOVLP 	1EH 			//273D 	019E
		LCALL 	6B7H 			//273E 	36B7
		MOVLP 	26H 			//273F 	01A6

		//;NFB.C: 648: PB0 = 0;
		MOVLB 	0H 			//2740 	1020
		BCR 	DH, 0H 			//2741 	200D

		//;NFB.C: 649: BatteryLevel();
		MOVLP 	19H 			//2742 	0199
		LCALL 	13CH 			//2743 	313C
		MOVLP 	26H 			//2744 	01A6

		//;NFB.C: 650: timeleft = 20;
		LDWI 	14H 			//2745 	0014
		MOVLB 	6H 			//2746 	1026
		STR 	46H 			//2747 	10C6
		LDWI 	9H 			//2748 	0009
		CLRF 	47H 			//2749 	11C7

		//;NFB.C: 651: timeleft1 = 9;
		STR 	44H 			//274A 	10C4
		LDWI 	DDH 			//274B 	00DD
		CLRF 	45H 			//274C 	11C5

		//;NFB.C: 652: send((char*)"H1\r\n",4);
		MOVLB 	2H 			//274D 	1022
		STR 	24H 			//274E 	10A4
		LDWI 	A0H 			//274F 	00A0
		MOVLP 	18H 			//2750 	0198
		LCALL 	84H 			//2751 	3084
		MOVLP 	26H 			//2752 	01A6
		MOVLP 	19H 			//2753 	0199
		LCALL 	119H 			//2754 	3119
		MOVLP 	26H 			//2755 	01A6

		//;NFB.C: 653: HTOn = 1;
		MOVLB 	6H 			//2756 	1026
		CLRF 	68H 			//2757 	11E8
		INCR 	68H, 1H 		//2758 	1AE8
		CLRF 	69H 			//2759 	11E9

		//;NFB.C: 654: PA0 = 1;
		MOVLB 	0H 			//275A 	1020
		BSR 	CH, 0H 			//275B 	240C

		//;NFB.C: 655: HTcnt = 0;
		MOVLB 	7H 			//275C 	1027
		CLRF 	24H 			//275D 	11A4
		CLRF 	25H 			//275E 	11A5
		CLRF 	26H 			//275F 	11A6
		CLRF 	27H 			//2760 	11A7

		//;NFB.C: 656: HTtimecnt = 0;
		MOVLB 	5H 			//2761 	1025
		CLRF 	59H 			//2762 	11D9
		CLRF 	5AH 			//2763 	11DA
		CLRF 	5BH 			//2764 	11DB
		CLRF 	5CH 			//2765 	11DC

		//;NFB.C: 657: } else{
		LJUMP 	7A2H 			//2766 	3FA2

		//;NFB.C: 658: send((char*)"H0\r\n",4);
		MOVLP 	18H 			//2767 	0198
		LCALL 	89H 			//2768 	3089
		MOVLP 	26H 			//2769 	01A6
		MOVLP 	18H 			//276A 	0198
		LCALL 	84H 			//276B 	3084
		MOVLP 	26H 			//276C 	01A6
		MOVLP 	19H 			//276D 	0199
		LCALL 	119H 			//276E 	3119
		MOVLP 	26H 			//276F 	01A6

		//;NFB.C: 659: HTOn = 0;
		//;NFB.C: 660: HTtimer = 0;
		//;NFB.C: 661: PA0 = 0;
		MOVLP 	18H 			//2770 	0198
		LCALL 	ADH 			//2771 	30AD
		MOVLP 	26H 			//2772 	01A6
		BCR 	CH, 0H 			//2773 	200C

		//;NFB.C: 662: send((char*)"S0\r\n",4);
		MOVLP 	18H 			//2774 	0198
		LCALL 	8DH 			//2775 	308D
		MOVLP 	26H 			//2776 	01A6
		MOVLP 	18H 			//2777 	0198
		LCALL 	84H 			//2778 	3084
		MOVLP 	26H 			//2779 	01A6
		MOVLP 	19H 			//277A 	0199
		LCALL 	119H 			//277B 	3119
		MOVLP 	26H 			//277C 	01A6

		//;NFB.C: 663: SmokeOn = 0;
		//;NFB.C: 664: Smoketimer = 0;
		//;NFB.C: 665: PuffOn = 0;
		MOVLP 	18H 			//277D 	0198
		LCALL 	BBH 			//277E 	30BB
		MOVLP 	26H 			//277F 	01A6
		LDWI 	CEH 			//2780 	00CE
		CLRF 	69H 			//2781 	11E9
		CLRF 	6AH 			//2782 	11EA

		//;NFB.C: 666: send((char*)"P0\r\n",4);
		MOVLB 	2H 			//2783 	1022
		STR 	24H 			//2784 	10A4
		LDWI 	A0H 			//2785 	00A0
		MOVLP 	18H 			//2786 	0198
		LCALL 	84H 			//2787 	3084
		MOVLP 	26H 			//2788 	01A6
		MOVLP 	19H 			//2789 	0199
		LCALL 	119H 			//278A 	3119
		MOVLP 	26H 			//278B 	01A6

		//;NFB.C: 667: PC1=1;
		MOVLB 	0H 			//278C 	1020
		BSR 	EH, 1H 			//278D 	248E

		//;NFB.C: 668: PB0 = 1;
		//;NFB.C: 669: DelayMs(500);
		MOVLP 	18H 			//278E 	0198
		LCALL 	5DH 			//278F 	305D
		MOVLP 	26H 			//2790 	01A6
		MOVLP 	1EH 			//2791 	019E
		LCALL 	6B7H 			//2792 	36B7
		MOVLP 	26H 			//2793 	01A6

		//;NFB.C: 670: PB0 = 0;
		MOVLB 	0H 			//2794 	1020
		BCR 	DH, 0H 			//2795 	200D

		//;NFB.C: 671: PA1=1;
		BSR 	CH, 1H 			//2796 	248C

		//;NFB.C: 672: PB2=1;
		BSR 	DH, 2H 			//2797 	250D

		//;NFB.C: 673: PB3=1;
		BSR 	DH, 3H 			//2798 	258D

		//;NFB.C: 674: DelayMs(100);
		MOVLP 	18H 			//2799 	0198
		LCALL 	C8H 			//279A 	30C8
		MOVLP 	26H 			//279B 	01A6
		MOVLP 	1EH 			//279C 	019E
		LCALL 	6B7H 			//279D 	36B7
		MOVLP 	26H 			//279E 	01A6
		SLEEP 					//279F 	1063

		//;NFB.C: 676: __nop();
		NOP 					//27A0 	1000

		//;NFB.C: 677: __nop();
		NOP 					//27A1 	1000

		//;NFB.C: 678: }
		//;NFB.C: 679: }
		//;NFB.C: 680: if(HTtimer){
		MOVLB 	6H 			//27A2 	1026
		LDR 	66H, 0H 			//27A3 	1866
		IORWR 	67H, 0H 		//27A4 	1467
		MOVLP 	13H 			//27A5 	0193
		BTSC 	3H, 2H 			//27A6 	2903
		LJUMP 	320H 			//27A7 	3B20

		//;NFB.C: 681: HTtimer = 0;
		CLRF 	66H 			//27A8 	11E6
		CLRF 	67H 			//27A9 	11E7

		//;NFB.C: 682: if(PA0){
		MOVLB 	0H 			//27AA 	1020
		BTSS 	CH, 0H 			//27AB 	2C0C
		LJUMP 	104H 			//27AC 	3904

		//;NFB.C: 683: HTVP_ = GET_ADC_DATA(2);
		LDWI 	2H 			//27AD 	0002
		MOVLP 	1AH 			//27AE 	019A
		LCALL 	211H 			//27AF 	3211
		MOVLP 	26H 			//27B0 	01A6
		MOVLP 	18H 			//27B1 	0198
		LCALL 	A5H 			//27B2 	30A5
		MOVLP 	26H 			//27B3 	01A6

		//;NFB.C: 684: for(int i=0;i<4;i++){
		CLRF 	49H 			//27B4 	11C9
		CLRF 	4AH 			//27B5 	11CA
		LDR 	4AH, 0H 			//27B6 	184A
		MOVLP 	18H 			//27B7 	0198
		LCALL 	23H 			//27B8 	3023
		MOVLP 	26H 			//27B9 	01A6
		BTSS 	3H, 2H 			//27BA 	2D03
		LJUMP 	7BFH 			//27BB 	3FBF
		LDWI 	4H 			//27BC 	0004
		MOVLB 	5H 			//27BD 	1025
		SUBWR 	49H, 0H 		//27BE 	1249
		BTSC 	3H, 0H 			//27BF 	2803
		LJUMP 	7D6H 			//27C0 	3FD6

		//;NFB.C: 685: HTVP_ = (HTVP_+GET_ADC_DATA(2))/2;
		LDWI 	2H 			//27C1 	0002
		MOVLP 	1AH 			//27C2 	019A
		LCALL 	211H 			//27C3 	3211
		MOVLP 	26H 			//27C4 	01A6
		MOVLB 	5H 			//27C5 	1025
		LDR 	6CH, 0H 			//27C6 	186C
		MOVLB 	2H 			//27C7 	1022
		ADDWR 	20H, 0H 		//27C8 	1720
		STR 	4AH 			//27C9 	10CA
		MOVLB 	5H 			//27CA 	1025
		LDR 	6DH, 0H 			//27CB 	186D
		MOVLP 	7H 			//27CC 	0187
		LCALL 	77DH 			//27CD 	377D
		MOVLP 	26H 			//27CE 	01A6
		MOVLP 	18H 			//27CF 	0198
		LCALL 	DFH 			//27D0 	30DF
		MOVLP 	26H 			//27D1 	01A6
		INCR 	49H, 1H 		//27D2 	1AC9
		BTSC 	3H, 2H 			//27D3 	2903
		INCR 	4AH, 1H 		//27D4 	1ACA
		LJUMP 	7B6H 			//27D5 	3FB6

		//;NFB.C: 686: }
		//;NFB.C: 687: HTVN_ = GET_ADC_DATA(1);
		LDWI 	1H 			//27D6 	0001
		MOVLP 	1AH 			//27D7 	019A
		LCALL 	211H 			//27D8 	3211
		MOVLP 	26H 			//27D9 	01A6
		MOVLP 	18H 			//27DA 	0198
		LCALL 	95H 			//27DB 	3095
		MOVLP 	26H 			//27DC 	01A6

		//;NFB.C: 688: for(int i=0;i<4;i++){
		CLRF 	4BH 			//27DD 	11CB
		CLRF 	4CH 			//27DE 	11CC
		LDR 	4CH, 0H 			//27DF 	184C
		MOVLP 	18H 			//27E0 	0198
		LCALL 	23H 			//27E1 	3023
		MOVLP 	26H 			//27E2 	01A6
		BTSS 	3H, 2H 			//27E3 	2D03
		LJUMP 	7E8H 			//27E4 	3FE8
		LDWI 	4H 			//27E5 	0004
		MOVLB 	5H 			//27E6 	1025
		SUBWR 	4BH, 0H 		//27E7 	124B
		MOVLP 	10H 			//27E8 	0190
		BTSC 	3H, 0H 			//27E9 	2803
		LJUMP 	5FH 			//27EA 	385F

		//;NFB.C: 689: HTVN_ = (HTVN_+GET_ADC_DATA(1))/2;
		LDWI 	1H 			//27EB 	0001
		MOVLP 	1AH 			//27EC 	019A
		LCALL 	211H 			//27ED 	3211
		MOVLP 	26H 			//27EE 	01A6
		MOVLB 	5H 			//27EF 	1025
		LDR 	6AH, 0H 			//27F0 	186A
		MOVLB 	2H 			//27F1 	1022
		ADDWR 	20H, 0H 		//27F2 	1720
		STR 	4AH 			//27F3 	10CA
		MOVLB 	5H 			//27F4 	1025
		LDR 	6BH, 0H 			//27F5 	186B
		MOVLP 	7H 			//27F6 	0187
		LCALL 	77DH 			//27F7 	377D
		MOVLP 	26H 			//27F8 	01A6
		MOVLP 	18H 			//27F9 	0198
		LCALL 	CDH 			//27FA 	30CD
		MOVLP 	26H 			//27FB 	01A6
		INCR 	4BH, 1H 		//27FC 	1ACB
		ORG		27FDH
		BTSC 	3H, 2H 			//27FD 	2903
		INCR 	4CH, 1H 		//27FE 	1ACC
		LJUMP 	7DFH 			//27FF 	3FDF
			END
