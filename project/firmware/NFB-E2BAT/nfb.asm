//Deviec:FT64F0AX
//-----------------------Variable---------------------------------
		_command		EQU		2BCH
		_valc		EQU		2B2H
		_n		EQU		26EH
		_HTVP_		EQU		1EEH
		_HTVN_		EQU		26CH
		_HTVI_		EQU		26AH
		_HTVP		EQU		23BH
		_HTVN		EQU		238H
		_HTVI		EQU		235H
		_I		EQU		232H
		_V		EQU		22FH
		_R		EQU		22CH
		_T		EQU		1E9H
		_diffT		EQU		60H
		_bat		EQU		5DH
		_PowerOn		EQU		268H
		_BTNpressed		EQU		266H
		_BTNtimer		EQU		264H
		_HTOn		EQU		262H
		_HTtimer		EQU		260H
		_SmokeOn		EQU		25EH
		_Smoketimer		EQU		25CH
		_PuffOn		EQU		25AH
		_RDE		EQU		258H
		_t1E		EQU		256H
		_t2E		EQU		254H
		_T1E		EQU		252H
		_T2E		EQU		250H
		_PTE		EQU		24EH
		_PFE		EQU		24CH
		_BTNcnt		EQU		2ACH
		_HTcnt		EQU		2A8H
		_HTtimecnt		EQU		1E5H
		_Smokecnt		EQU		2A4H
		_Smoketimecnt		EQU		56H
		_Puffcnt		EQU		2A0H
		_timeleft		EQU		24AH
		_timeleft1		EQU		248H
		_timeleft2		EQU		246H
		_timeleft3		EQU		244H
		_timenow		EQU		2B0H
		_Toffset		EQU		229H
		_m		EQU		226H
		_Tm		EQU		223H
		_t1		EQU		1ECH
		_t2		EQU		242H
		_T1		EQU		5AH
		_T2		EQU		220H
		_pf		EQU		240H
		_pt		EQU		23EH
//		main@msg_3683		EQU		1B4H
//		main@i_3682		EQU		1E0H
//		main@i_3681		EQU		1DEH
//		main@i_3680		EQU		1DCH
//		main@i_3672		EQU		1DAH
//		main@i_3671		EQU		1D8H
//		main@i		EQU		1D6H
//		main@msg_3686		EQU		1BEH
//		main@puffno		EQU		138H
//		main@msg_3675		EQU		1AAH
//		main@msg		EQU		1A0H
//		main@dataL_3702		EQU		1CEH
//		main@dataL_3701		EQU		1CDH
//		main@data_3698		EQU		1D1H
//		main@dataH_3700		EQU		1CCH
//		main@dataL_3699		EQU		1CBH
//		main@data		EQU		1CFH
//		main@dataH_3697		EQU		1CAH
//		main@dataL_3696		EQU		1C9H
//		main@dataH		EQU		1C8H
//		main@dataL_3693		EQU		13BH
//		main@dataL		EQU		13AH
//		main@msg_3690		EQU		320H
//		strlen@cp		EQU		30H
//		strlen@s		EQU		2DH
//		sprintf@val		EQU		128H
//		sprintf@tmpval.vd		EQU		124H
//		sprintf@tmpval.integ		EQU		124H
//		sprintf@tmpval		EQU		124H
//		sprintf@fval		EQU		132H
//		sprintf@prec		EQU		135H
//		sprintf@width		EQU		130H
//		sprintf@exp		EQU		12EH
//		sprintf@flag		EQU		12CH
//		sprintf@c		EQU		137H
//		sprintf@ap		EQU		123H
//		sprintf@sp		EQU		C1H
//		sprintf@f		EQU		C3H
//		scale@scl		EQU		B3H
//		scale@scl		EQU		B3H
//		scale@scl		EQU		B3H
//		___awmod@sign		EQU		32H
//		___awmod@counter		EQU		31H
//		___awmod@divisor		EQU		2DH
//		___awmod@dividend		EQU		2FH
//		isdigit@c		EQU		2EH
//		isdigit@c		EQU		2EH
//		isdigit@c		EQU		2EH
//		fround@prec		EQU		B6H
//		fround@prec		EQU		B6H
//		fround@prec		EQU		B6H
//		___wmul@product		EQU		3FH
//		___wmul@multiplier		EQU		3BH
//		___wmul@multiplicand		EQU		3DH
//		___lbmod@dividend		EQU		2FH
//		___lbmod@rem		EQU		31H
//		___lbmod@counter		EQU		30H
//		___lbmod@dividend		EQU		2FH
//		___lbmod@divisor		EQU		2DH
//		___lbmod@dividend		EQU		2FH
//		___lbdiv@dividend		EQU		33H
//		___lbdiv@quotient		EQU		35H
//		___lbdiv@counter		EQU		34H
//		___lbdiv@dividend		EQU		33H
//		___lbdiv@divisor		EQU		32H
//		___lbdiv@dividend		EQU		33H
//		__tdiv_to_l_@quot		EQU		36H
//		__tdiv_to_l_@exp1		EQU		3BH
//		__tdiv_to_l_@cntr		EQU		3AH
//		__tdiv_to_l_@f1		EQU		2DH
//		__tdiv_to_l_@f2		EQU		30H
//		__div_to_l_@quot		EQU		3BH
//		__div_to_l_@exp1		EQU		40H
//		__div_to_l_@cntr		EQU		3FH
//		__div_to_l_@f1		EQU		2DH
//		__div_to_l_@f2		EQU		30H
//		___lltoft@exp		EQU		39H
//		___lltoft@c		EQU		35H
//		___llmod@counter		EQU		42H
//		___llmod@divisor		EQU		3AH
//		___llmod@dividend		EQU		3EH
//		___lldiv@quotient		EQU		36H
//		___lldiv@counter		EQU		35H
//		___lldiv@divisor		EQU		2DH
//		___lldiv@dividend		EQU		31H
//		___ftsub@f2		EQU		4DH
//		___ftsub@f1		EQU		50H
//		___ftadd@exp1		EQU		4CH
//		___ftadd@exp2		EQU		4BH
//		___ftadd@sign		EQU		4AH
//		___ftadd@f1		EQU		41H
//		___ftadd@f2		EQU		44H
//		___ftneg@f1		EQU		2DH
//		send@i		EQU		D0H
//		send@tbuf		EQU		CBH
//		send@len		EQU		CDH
//		___lwtoft@c		EQU		35H
//		EEPROM_INIT@EEReadData		EQU		41H
//		EEPROMwrite@EEAddr		EQU		2EH
//		EEPROMwrite@EEAddr		EQU		2EH
//		EEPROMwrite@Data		EQU		2DH
//		EEPROMwrite@EEAddr		EQU		2EH
//		EEPROMread@EEAddr		EQU		2DH
//		EEPROMread@ReEEPROMread		EQU		2EH
//		EEPROMread@EEAddr		EQU		2DH
//		EEPROMread@EEAddr		EQU		2DH
//		BatteryLevel@Vdd		EQU		CAH
//		BatteryChargingLevel@i		EQU		CFH
//		BatteryChargingLevel@Vdd		EQU		CDH
//		___ftge@ff1		EQU		3FH
//		___ftge@ff2		EQU		42H
//		___ftdiv@f3		EQU		B7H
//		___ftdiv@sign		EQU		BAH
//		___ftdiv@exp		EQU		B6H
//		___ftdiv@cntr		EQU		B5H
//		___ftdiv@f2		EQU		ACH
//		___ftdiv@f1		EQU		AFH
//		GET_ADC_DATA@adcChannel		EQU		C9H
//		GET_ADC_DATA@adcChannel		EQU		C9H
//		GET_ADC_DATA@adcChannel		EQU		C9H
//		DelayMs@a		EQU		C9H
//		DelayMs@Time		EQU		C6H
//		DelayUs@a		EQU		C4H
//		DelayUs@Time		EQU		C1H
//		___fttol@lval		EQU		BCH
//		___fttol@exp1		EQU		C0H
//		___fttol@sign1		EQU		BBH
//		___fttol@f1		EQU		B4H
//		___ftmul@f3_as_product		EQU		A7H
//		___ftmul@sign		EQU		ABH
//		___ftmul@cntr		EQU		AAH
//		___ftmul@exp		EQU		A6H
//		___ftmul@f1		EQU		A0H
//		___ftmul@f2		EQU		A3H
//		___awtoft@sign		EQU		3EH
//		___awtoft@c		EQU		3BH
//		___ftpack@arg		EQU		2DH
//		___ftpack@exp		EQU		30H
//		___ftpack@sign		EQU		31H
//		___awdiv@quotient		EQU		39H
//		___awdiv@sign		EQU		38H
//		___awdiv@counter		EQU		37H
//		___awdiv@divisor		EQU		33H
//		___awdiv@dividend		EQU		35H
//		ISR@i		EQU		2BH
//		ISR@len		EQU		29H
//		i1___awtoft@sign		EQU		7DH
//		i1___awtoft@c		EQU		25H
//		i1___ftpack@arg		EQU		70H
//		i1___ftpack@exp		EQU		73H
//		i1___ftpack@sign		EQU		74H
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
//-----------------------Variable END---------------------------------
		ORG		0000H
		ORG		0000H
		MOVLP 	1H 			//0000 	0181
		LJUMP 	1A6H 			//0001 	39A6
		ORG		0004H
		BSR 	7EH, 0H 			//0004 	247E
		MOVLP 	0H 			//0005 	0180

		//;NFB.C: 58: if(UR1RXNE&&UR1RXNEF)
		MOVLB 	9H 			//0006 	1029
		BTSC 	EH, 0H 			//0007 	280E
		BTSS 	12H, 0H 		//0008 	2C12
		LJUMP 	11CH 			//0009 	391C

		//;NFB.C: 59: {
		//;NFB.C: 60: command[n] = UR1DATAL;
		MOVLB 	4H 			//000A 	1024
		LDR 	6EH, 0H 			//000B 	186E
		ADDWI 	BCH 			//000C 	0EBC
		STR 	6H 			//000D 	1086
		LDWI 	2H 			//000E 	0002
		STR 	7H 			//000F 	1087
		MOVLB 	9H 			//0010 	1029
		LDR 	CH, 0H 			//0011 	180C
		STR 	1H 			//0012 	1081

		//;NFB.C: 61: n++;
		MOVLB 	4H 			//0013 	1024
		INCR 	6EH, 1H 		//0014 	1AEE
		BTSC 	3H, 2H 			//0015 	2903
		INCR 	6FH, 1H 		//0016 	1AEF

		//;NFB.C: 62: if(strstr(command,"\r\n")){
		LDWI 	B9H 			//0017 	00B9
		STR 	7BH 			//0018 	10FB
		LDWI 	A0H 			//0019 	00A0
		STR 	7CH 			//001A 	10FC
		LDWI 	BCH 			//001B 	00BC
		MOVLP 	4H 			//001C 	0184
		LCALL 	478H 			//001D 	3478
		MOVLP 	0H 			//001E 	0180
		XORWI 	0H 			//001F 	0A00
		BTSC 	3H, 2H 			//0020 	2903
		LJUMP 	11CH 			//0021 	391C

		//;NFB.C: 63: int len = strlen(command)-5;
		LDWI 	BCH 			//0022 	00BC
		STR 	70H 			//0023 	10F0
		LDWI 	2H 			//0024 	0002
		STR 	71H 			//0025 	10F1
		MOVLP 	4H 			//0026 	0184
		LCALL 	4E5H 			//0027 	34E5
		MOVLP 	0H 			//0028 	0180
		LDR 	71H, 0H 			//0029 	1871
		MOVLB 	0H 			//002A 	1020
		STR 	2AH 			//002B 	10AA
		LDR 	70H, 0H 			//002C 	1870
		STR 	29H 			//002D 	10A9
		LDWI 	FBH 			//002E 	00FB
		ADDWR 	29H, 1H 		//002F 	17A9
		LDWI 	FFH 			//0030 	00FF
		ADDWFC 	2AH, 1H 		//0031 	0DAA

		//;NFB.C: 64: for(int i=0;i<len;i++){
		CLRF 	2BH 			//0032 	11AB
		CLRF 	2CH 			//0033 	11AC
		LDR 	2CH, 0H 			//0034 	182C
		XORWI 	80H 			//0035 	0A80
		STR 	28H 			//0036 	10A8
		LDR 	2AH, 0H 			//0037 	182A
		XORWI 	80H 			//0038 	0A80
		SUBWR 	28H, 0H 		//0039 	1228
		BTSS 	3H, 2H 			//003A 	2D03
		LJUMP 	3EH 			//003B 	383E
		LDR 	29H, 0H 			//003C 	1829
		SUBWR 	2BH, 0H 		//003D 	122B
		BTSC 	3H, 0H 			//003E 	2803
		LJUMP 	51H 			//003F 	3851

		//;NFB.C: 65: valc[i] += command[i+3];
		MOVLB 	0H 			//0040 	1020
		LDR 	2BH, 0H 			//0041 	182B
		ADDWI 	B2H 			//0042 	0EB2
		STR 	6H 			//0043 	1086
		LDWI 	2H 			//0044 	0002
		STR 	7H 			//0045 	1087
		LDR 	2BH, 0H 			//0046 	182B
		ADDWI 	BFH 			//0047 	0EBF
		STR 	4H 			//0048 	1084
		LDWI 	2H 			//0049 	0002
		STR 	5H 			//004A 	1085
		LDR 	0H, 0H 			//004B 	1800
		ADDWR 	1H, 1H 		//004C 	1781
		INCR 	2BH, 1H 		//004D 	1AAB
		BTSC 	3H, 2H 			//004E 	2903
		INCR 	2CH, 1H 		//004F 	1AAC
		LJUMP 	34H 			//0050 	3834

		//;NFB.C: 66: }
		//;NFB.C: 67: if(strstr(command,"t1:")){
		LDWI 	E2H 			//0051 	00E2
		STR 	7BH 			//0052 	10FB
		LDWI 	A0H 			//0053 	00A0
		STR 	7CH 			//0054 	10FC
		LDWI 	BCH 			//0055 	00BC
		MOVLP 	4H 			//0056 	0184
		LCALL 	478H 			//0057 	3478
		MOVLP 	0H 			//0058 	0180
		XORWI 	0H 			//0059 	0A00
		BTSC 	3H, 2H 			//005A 	2903
		LJUMP 	6AH 			//005B 	386A

		//;NFB.C: 68: t1 = charArrayToInt(valc);
		LDWI 	B2H 			//005C 	00B2
		MOVLP 	5H 			//005D 	0185
		LCALL 	501H 			//005E 	3501
		MOVLP 	0H 			//005F 	0180
		LDR 	77H, 0H 			//0060 	1877
		MOVLB 	3H 			//0061 	1023
		STR 	6DH 			//0062 	10ED
		LDR 	76H, 0H 			//0063 	1876
		STR 	6CH 			//0064 	10EC

		//;NFB.C: 69: t1E = 1;
		MOVLB 	4H 			//0065 	1024
		CLRF 	56H 			//0066 	11D6
		INCR 	56H, 1H 		//0067 	1AD6
		CLRF 	57H 			//0068 	11D7

		//;NFB.C: 70: } else if(strstr(command,"t2:")){
		LJUMP 	107H 			//0069 	3907
		LDWI 	EAH 			//006A 	00EA
		STR 	7BH 			//006B 	10FB
		LDWI 	A0H 			//006C 	00A0
		STR 	7CH 			//006D 	10FC
		LDWI 	BCH 			//006E 	00BC
		MOVLP 	4H 			//006F 	0184
		LCALL 	478H 			//0070 	3478
		MOVLP 	0H 			//0071 	0180
		XORWI 	0H 			//0072 	0A00
		BTSC 	3H, 2H 			//0073 	2903
		LJUMP 	82H 			//0074 	3882

		//;NFB.C: 71: t2 = charArrayToInt(valc);
		LDWI 	B2H 			//0075 	00B2
		MOVLP 	5H 			//0076 	0185
		LCALL 	501H 			//0077 	3501
		MOVLP 	0H 			//0078 	0180
		LDR 	77H, 0H 			//0079 	1877
		MOVLB 	4H 			//007A 	1024
		STR 	43H 			//007B 	10C3
		LDR 	76H, 0H 			//007C 	1876
		STR 	42H 			//007D 	10C2

		//;NFB.C: 72: t2E = 1;
		CLRF 	54H 			//007E 	11D4
		INCR 	54H, 1H 		//007F 	1AD4
		CLRF 	55H 			//0080 	11D5

		//;NFB.C: 73: } else if(strstr(command,"pf:")){
		LJUMP 	107H 			//0081 	3907
		LDWI 	EEH 			//0082 	00EE
		STR 	7BH 			//0083 	10FB
		LDWI 	A0H 			//0084 	00A0
		STR 	7CH 			//0085 	10FC
		LDWI 	BCH 			//0086 	00BC
		MOVLP 	4H 			//0087 	0184
		LCALL 	478H 			//0088 	3478
		MOVLP 	0H 			//0089 	0180
		XORWI 	0H 			//008A 	0A00
		BTSC 	3H, 2H 			//008B 	2903
		LJUMP 	9AH 			//008C 	389A

		//;NFB.C: 74: pf = charArrayToInt(valc);
		LDWI 	B2H 			//008D 	00B2
		MOVLP 	5H 			//008E 	0185
		LCALL 	501H 			//008F 	3501
		MOVLP 	0H 			//0090 	0180
		LDR 	77H, 0H 			//0091 	1877
		MOVLB 	4H 			//0092 	1024
		STR 	41H 			//0093 	10C1
		LDR 	76H, 0H 			//0094 	1876
		STR 	40H 			//0095 	10C0

		//;NFB.C: 75: PFE = 1;
		CLRF 	4CH 			//0096 	11CC
		INCR 	4CH, 1H 		//0097 	1ACC
		CLRF 	4DH 			//0098 	11CD

		//;NFB.C: 76: } else if(strstr(command,"T1:")){
		LJUMP 	107H 			//0099 	3907
		LDWI 	DEH 			//009A 	00DE
		STR 	7BH 			//009B 	10FB
		LDWI 	A0H 			//009C 	00A0
		STR 	7CH 			//009D 	10FC
		LDWI 	BCH 			//009E 	00BC
		MOVLP 	4H 			//009F 	0184
		LCALL 	478H 			//00A0 	3478
		MOVLP 	0H 			//00A1 	0180
		XORWI 	0H 			//00A2 	0A00
		BTSC 	3H, 2H 			//00A3 	2903
		LJUMP 	BBH 			//00A4 	38BB

		//;NFB.C: 77: T1 = (float)charArrayToInt(valc);
		LDWI 	B2H 			//00A5 	00B2
		MOVLP 	5H 			//00A6 	0185
		LCALL 	501H 			//00A7 	3501
		MOVLP 	0H 			//00A8 	0180
		LDR 	77H, 0H 			//00A9 	1877
		STR 	26H 			//00AA 	10A6
		LDR 	76H, 0H 			//00AB 	1876
		STR 	25H 			//00AC 	10A5
		MOVLP 	6H 			//00AD 	0186
		LCALL 	675H 			//00AE 	3675
		MOVLP 	0H 			//00AF 	0180
		LDR 	25H, 0H 			//00B0 	1825
		STR 	5AH 			//00B1 	10DA
		LDR 	26H, 0H 			//00B2 	1826
		STR 	5BH 			//00B3 	10DB
		LDR 	27H, 0H 			//00B4 	1827
		STR 	5CH 			//00B5 	10DC

		//;NFB.C: 78: T1E = 1;
		MOVLB 	4H 			//00B6 	1024
		CLRF 	52H 			//00B7 	11D2
		INCR 	52H, 1H 		//00B8 	1AD2
		CLRF 	53H 			//00B9 	11D3

		//;NFB.C: 79: } else if(strstr(command,"T2:")){
		LJUMP 	107H 			//00BA 	3907
		LDWI 	E6H 			//00BB 	00E6
		STR 	7BH 			//00BC 	10FB
		LDWI 	A0H 			//00BD 	00A0
		STR 	7CH 			//00BE 	10FC
		LDWI 	BCH 			//00BF 	00BC
		MOVLP 	4H 			//00C0 	0184
		LCALL 	478H 			//00C1 	3478
		MOVLP 	0H 			//00C2 	0180
		XORWI 	0H 			//00C3 	0A00
		BTSC 	3H, 2H 			//00C4 	2903
		LJUMP 	E0H 			//00C5 	38E0

		//;NFB.C: 80: T2 = (float)charArrayToInt(valc);
		LDWI 	B2H 			//00C6 	00B2
		MOVLP 	5H 			//00C7 	0185
		LCALL 	501H 			//00C8 	3501
		MOVLP 	0H 			//00C9 	0180
		LDR 	77H, 0H 			//00CA 	1877
		STR 	26H 			//00CB 	10A6
		LDR 	76H, 0H 			//00CC 	1876
		STR 	25H 			//00CD 	10A5
		MOVLP 	6H 			//00CE 	0186
		LCALL 	675H 			//00CF 	3675
		MOVLP 	0H 			//00D0 	0180
		LDR 	25H, 0H 			//00D1 	1825
		MOVLB 	4H 			//00D2 	1024
		STR 	20H 			//00D3 	10A0
		MOVLB 	0H 			//00D4 	1020
		LDR 	26H, 0H 			//00D5 	1826
		MOVLB 	4H 			//00D6 	1024
		STR 	21H 			//00D7 	10A1
		MOVLB 	0H 			//00D8 	1020
		LDR 	27H, 0H 			//00D9 	1827
		MOVLB 	4H 			//00DA 	1024
		STR 	22H 			//00DB 	10A2

		//;NFB.C: 81: T2E = 1;
		CLRF 	50H 			//00DC 	11D0
		INCR 	50H, 1H 		//00DD 	1AD0
		CLRF 	51H 			//00DE 	11D1

		//;NFB.C: 82: } else if(strstr(command,"pt:")){
		LJUMP 	107H 			//00DF 	3907
		LDWI 	F2H 			//00E0 	00F2
		STR 	7BH 			//00E1 	10FB
		LDWI 	A0H 			//00E2 	00A0
		STR 	7CH 			//00E3 	10FC
		LDWI 	BCH 			//00E4 	00BC
		MOVLP 	4H 			//00E5 	0184
		LCALL 	478H 			//00E6 	3478
		MOVLP 	0H 			//00E7 	0180
		XORWI 	0H 			//00E8 	0A00
		BTSC 	3H, 2H 			//00E9 	2903
		LJUMP 	F8H 			//00EA 	38F8

		//;NFB.C: 83: pt = charArrayToInt(valc);
		LDWI 	B2H 			//00EB 	00B2
		MOVLP 	5H 			//00EC 	0185
		LCALL 	501H 			//00ED 	3501
		MOVLP 	0H 			//00EE 	0180
		LDR 	77H, 0H 			//00EF 	1877
		MOVLB 	4H 			//00F0 	1024
		STR 	3FH 			//00F1 	10BF
		LDR 	76H, 0H 			//00F2 	1876
		STR 	3EH 			//00F3 	10BE

		//;NFB.C: 84: PTE = 1;
		CLRF 	4EH 			//00F4 	11CE
		INCR 	4EH, 1H 		//00F5 	1ACE
		CLRF 	4FH 			//00F6 	11CF

		//;NFB.C: 85: } else if(strstr(command,"rd-")){
		LJUMP 	107H 			//00F7 	3907
		LDWI 	DAH 			//00F8 	00DA
		STR 	7BH 			//00F9 	10FB
		LDWI 	A0H 			//00FA 	00A0
		STR 	7CH 			//00FB 	10FC
		LDWI 	BCH 			//00FC 	00BC
		MOVLP 	4H 			//00FD 	0184
		LCALL 	478H 			//00FE 	3478
		MOVLP 	0H 			//00FF 	0180
		XORWI 	0H 			//0100 	0A00
		BTSC 	3H, 2H 			//0101 	2903
		LJUMP 	107H 			//0102 	3907

		//;NFB.C: 86: RDE = 1;
		MOVLB 	4H 			//0103 	1024
		CLRF 	58H 			//0104 	11D8
		INCR 	58H, 1H 		//0105 	1AD8
		CLRF 	59H 			//0106 	11D9

		//;NFB.C: 87: }
		//;NFB.C: 88: n = 0;
		MOVLB 	4H 			//0107 	1024
		LDWI 	AH 			//0108 	000A
		CLRF 	6EH 			//0109 	11EE
		CLRF 	6FH 			//010A 	11EF
		CLRF 	70H 			//010B 	11F0
		CLRF 	71H 			//010C 	11F1
		STR 	72H 			//010D 	10F2
		LDWI 	BCH 			//010E 	00BC
		CLRF 	73H 			//010F 	11F3
		MOVLP 	7H 			//0110 	0187
		LCALL 	731H 			//0111 	3731
		MOVLP 	0H 			//0112 	0180
		LDWI 	AH 			//0113 	000A

		//;NFB.C: 90: memset(valc,0,10);
		CLRF 	70H 			//0114 	11F0
		CLRF 	71H 			//0115 	11F1
		STR 	72H 			//0116 	10F2
		LDWI 	B2H 			//0117 	00B2
		CLRF 	73H 			//0118 	11F3
		MOVLP 	7H 			//0119 	0187
		LCALL 	731H 			//011A 	3731
		MOVLP 	0H 			//011B 	0180

		//;NFB.C: 91: }
		//;NFB.C: 92: }
		//;NFB.C: 93: if(EPIF0&0X10)
		MOVLB 	0H 			//011C 	1020
		BTSS 	14H, 4H 		//011D 	2E14
		LJUMP 	12AH 			//011E 	392A

		//;NFB.C: 94: {
		//;NFB.C: 95: EPIF0=0X10;
		LDWI 	10H 			//011F 	0010
		STR 	14H 			//0120 	1094

		//;NFB.C: 96: BTNpressed = 1;
		MOVLB 	4H 			//0121 	1024
		CLRF 	66H 			//0122 	11E6
		INCR 	66H, 1H 		//0123 	1AE6
		CLRF 	67H 			//0124 	11E7

		//;NFB.C: 97: BTNcnt = 0;
		MOVLB 	5H 			//0125 	1025
		CLRF 	2CH 			//0126 	11AC
		CLRF 	2DH 			//0127 	11AD
		CLRF 	2EH 			//0128 	11AE
		CLRF 	2FH 			//0129 	11AF

		//;NFB.C: 98: }
		//;NFB.C: 99: if(T2UIE&&T2UIF)
		MOVLB 	6H 			//012A 	1026
		BTSC 	DH, 0H 			//012B 	280D
		BTSS 	EH, 0H 			//012C 	2C0E
		LJUMP 	1A4H 			//012D 	39A4

		//;NFB.C: 102: millisnow++;
		BSR 	EH, 0H 			//012E 	240E

		//;NFB.C: 103: if(BTNpressed){
		MOVLB 	4H 			//012F 	1024
		LDR 	66H, 0H 			//0130 	1866
		IORWR 	67H, 0H 		//0131 	1467
		BTSC 	3H, 2H 			//0132 	2903
		LJUMP 	152H 			//0133 	3952

		//;NFB.C: 104: BTNcnt++;
		LDWI 	1H 			//0134 	0001
		MOVLB 	5H 			//0135 	1025
		ADDWR 	2CH, 1H 		//0136 	17AC
		LDWI 	0H 			//0137 	0000
		ADDWFC 	2DH, 1H 		//0138 	0DAD
		ADDWFC 	2EH, 1H 		//0139 	0DAE
		ADDWFC 	2FH, 1H 		//013A 	0DAF

		//;NFB.C: 105: if(PB4){
		MOVLB 	0H 			//013B 	1020
		BTSC 	DH, 4H 			//013C 	2A0D
		LJUMP 	14FH 			//013D 	394F

		//;NFB.C: 107: } else if(BTNcnt>=1500){
		MOVLB 	5H 			//013E 	1025
		LDR 	2FH, 0H 			//013F 	182F
		BTSS 	3H, 2H 			//0140 	2D03
		LJUMP 	14BH 			//0141 	394B
		LDR 	2EH, 0H 			//0142 	182E
		BTSS 	3H, 2H 			//0143 	2D03
		LJUMP 	14BH 			//0144 	394B
		LDWI 	DCH 			//0145 	00DC
		SUBWR 	2CH, 0H 		//0146 	122C
		LDWI 	5H 			//0147 	0005
		SUBWFB 	2DH, 0H 		//0148 	0B2D
		BTSS 	3H, 0H 			//0149 	2C03
		LJUMP 	152H 			//014A 	3952

		//;NFB.C: 108: BTNtimer = 1;
		MOVLB 	4H 			//014B 	1024
		CLRF 	64H 			//014C 	11E4
		INCR 	64H, 1H 		//014D 	1AE4
		CLRF 	65H 			//014E 	11E5

		//;NFB.C: 106: BTNpressed = 0;
		MOVLB 	4H 			//014F 	1024
		CLRF 	66H 			//0150 	11E6
		CLRF 	67H 			//0151 	11E7

		//;NFB.C: 110: }
		//;NFB.C: 111: }
		//;NFB.C: 112: if(HTOn){
		MOVLB 	4H 			//0152 	1024
		LDR 	62H, 0H 			//0153 	1862
		IORWR 	63H, 0H 		//0154 	1463
		BTSC 	3H, 2H 			//0155 	2903
		LJUMP 	17BH 			//0156 	397B

		//;NFB.C: 113: HTcnt++;
		LDWI 	1H 			//0157 	0001
		MOVLB 	5H 			//0158 	1025
		ADDWR 	28H, 1H 		//0159 	17A8
		LDWI 	0H 			//015A 	0000
		ADDWFC 	29H, 1H 		//015B 	0DA9
		ADDWFC 	2AH, 1H 		//015C 	0DAA
		ADDWFC 	2BH, 1H 		//015D 	0DAB

		//;NFB.C: 114: if(HTcnt>=50){
		LDR 	2BH, 0H 			//015E 	182B
		BTSS 	3H, 2H 			//015F 	2D03
		LJUMP 	16BH 			//0160 	396B
		LDR 	2AH, 0H 			//0161 	182A
		BTSS 	3H, 2H 			//0162 	2D03
		LJUMP 	16BH 			//0163 	396B
		LDR 	29H, 0H 			//0164 	1829
		BTSS 	3H, 2H 			//0165 	2D03
		LJUMP 	16BH 			//0166 	396B
		LDWI 	32H 			//0167 	0032
		SUBWR 	28H, 0H 		//0168 	1228
		BTSS 	3H, 0H 			//0169 	2C03
		LJUMP 	17BH 			//016A 	397B

		//;NFB.C: 115: HTtimer = 1;
		MOVLB 	4H 			//016B 	1024
		LDWI 	1H 			//016C 	0001
		CLRF 	60H 			//016D 	11E0
		INCR 	60H, 1H 		//016E 	1AE0
		CLRF 	61H 			//016F 	11E1

		//;NFB.C: 116: HTtimecnt++;
		MOVLB 	3H 			//0170 	1023
		ADDWR 	65H, 1H 		//0171 	17E5
		LDWI 	0H 			//0172 	0000
		ADDWFC 	66H, 1H 		//0173 	0DE6
		ADDWFC 	67H, 1H 		//0174 	0DE7
		ADDWFC 	68H, 1H 		//0175 	0DE8

		//;NFB.C: 117: HTcnt = 0;
		MOVLB 	5H 			//0176 	1025
		CLRF 	28H 			//0177 	11A8
		CLRF 	29H 			//0178 	11A9
		CLRF 	2AH 			//0179 	11AA
		CLRF 	2BH 			//017A 	11AB

		//;NFB.C: 118: }
		//;NFB.C: 119: }
		//;NFB.C: 120: if(SmokeOn){
		MOVLB 	4H 			//017B 	1024
		LDR 	5EH, 0H 			//017C 	185E
		IORWR 	5FH, 0H 		//017D 	145F
		BTSC 	3H, 2H 			//017E 	2903
		LJUMP 	1A4H 			//017F 	39A4

		//;NFB.C: 121: Smokecnt++;
		LDWI 	1H 			//0180 	0001
		MOVLB 	5H 			//0181 	1025
		ADDWR 	24H, 1H 		//0182 	17A4
		LDWI 	0H 			//0183 	0000
		ADDWFC 	25H, 1H 		//0184 	0DA5
		ADDWFC 	26H, 1H 		//0185 	0DA6
		ADDWFC 	27H, 1H 		//0186 	0DA7

		//;NFB.C: 122: if(Smokecnt>=10){
		LDR 	27H, 0H 			//0187 	1827
		BTSS 	3H, 2H 			//0188 	2D03
		LJUMP 	194H 			//0189 	3994
		LDR 	26H, 0H 			//018A 	1826
		BTSS 	3H, 2H 			//018B 	2D03
		LJUMP 	194H 			//018C 	3994
		LDR 	25H, 0H 			//018D 	1825
		BTSS 	3H, 2H 			//018E 	2D03
		LJUMP 	194H 			//018F 	3994
		LDWI 	AH 			//0190 	000A
		SUBWR 	24H, 0H 		//0191 	1224
		BTSS 	3H, 0H 			//0192 	2C03
		LJUMP 	1A4H 			//0193 	39A4

		//;NFB.C: 123: Smoketimer = 1;
		MOVLB 	4H 			//0194 	1024
		LDWI 	1H 			//0195 	0001
		CLRF 	5CH 			//0196 	11DC
		INCR 	5CH, 1H 		//0197 	1ADC
		CLRF 	5DH 			//0198 	11DD

		//;NFB.C: 124: Smoketimecnt++;
		MOVLB 	0H 			//0199 	1020
		ADDWR 	56H, 1H 		//019A 	17D6
		LDWI 	0H 			//019B 	0000
		ADDWFC 	57H, 1H 		//019C 	0DD7
		ADDWFC 	58H, 1H 		//019D 	0DD8
		ADDWFC 	59H, 1H 		//019E 	0DD9

		//;NFB.C: 125: Smokecnt = 0;
		MOVLB 	5H 			//019F 	1025
		CLRF 	24H 			//01A0 	11A4
		CLRF 	25H 			//01A1 	11A5
		CLRF 	26H 			//01A2 	11A6
		CLRF 	27H 			//01A3 	11A7
		BCR 	7EH, 0H 			//01A4 	207E
		RETI 					//01A5 	1009
		MOVLP 	1H 			//01A6 	0181
		LJUMP 	1A8H 			//01A7 	39A8
		LDWI 	56H 			//01A8 	0056
		STR 	4H 			//01A9 	1084
		LDWI 	0H 			//01AA 	0000
		STR 	5H 			//01AB 	1085
		LDWI 	DH 			//01AC 	000D
		MOVLP 	7H 			//01AD 	0187
		LCALL 	771H 			//01AE 	3771
		MOVLP 	1H 			//01AF 	0181
		LDWI 	E5H 			//01B0 	00E5
		STR 	4H 			//01B1 	1084
		LDWI 	1H 			//01B2 	0001
		STR 	5H 			//01B3 	1085
		LDWI 	BH 			//01B4 	000B
		MOVLP 	7H 			//01B5 	0187
		LCALL 	771H 			//01B6 	3771
		MOVLP 	1H 			//01B7 	0181
		LDWI 	20H 			//01B8 	0020
		STR 	4H 			//01B9 	1084
		LDWI 	2H 			//01BA 	0002
		STR 	5H 			//01BB 	1085
		LDWI 	50H 			//01BC 	0050
		MOVLP 	7H 			//01BD 	0187
		LCALL 	771H 			//01BE 	3771
		MOVLP 	1H 			//01BF 	0181
		LDWI 	A0H 			//01C0 	00A0
		STR 	4H 			//01C1 	1084
		LDWI 	2H 			//01C2 	0002
		STR 	5H 			//01C3 	1085
		LDWI 	26H 			//01C4 	0026
		MOVLP 	7H 			//01C5 	0187
		LCALL 	771H 			//01C6 	3771
		BCR 	7EH, 0H 			//01C7 	207E
		MOVLB 	0H 			//01C8 	1020
		MOVLP 	3H 			//01C9 	0183
		LJUMP 	345H 			//01CA 	3B45
		LDR 	69H, 0H 			//01CB 	1869
		MOVLB 	4H 			//01CC 	1024
		STR 	29H 			//01CD 	10A9
		MOVLB 	3H 			//01CE 	1023
		LDR 	6AH, 0H 			//01CF 	186A
		MOVLB 	4H 			//01D0 	1024
		STR 	2AH 			//01D1 	10AA
		MOVLB 	3H 			//01D2 	1023
		LDR 	6BH, 0H 			//01D3 	186B
		MOVLB 	4H 			//01D4 	1024
		STR 	2BH 			//01D5 	10AB
		MOVLB 	3H 			//01D6 	1023
		RET 					//01D7 	1008
		LDR 	2CH, 0H 			//01D8 	182C
		MOVLB 	4H 			//01D9 	1024
		STR 	38H 			//01DA 	10B8
		MOVLB 	1H 			//01DB 	1021
		LDR 	2DH, 0H 			//01DC 	182D
		MOVLB 	4H 			//01DD 	1024
		STR 	39H 			//01DE 	10B9
		MOVLB 	1H 			//01DF 	1021
		LDR 	2EH, 0H 			//01E0 	182E
		MOVLB 	4H 			//01E1 	1024
		STR 	3AH 			//01E2 	10BA
		RET 					//01E3 	1008
		LDR 	2CH, 0H 			//01E4 	182C
		MOVLB 	4H 			//01E5 	1024
		STR 	3BH 			//01E6 	10BB
		MOVLB 	1H 			//01E7 	1021
		LDR 	2DH, 0H 			//01E8 	182D
		MOVLB 	4H 			//01E9 	1024
		STR 	3CH 			//01EA 	10BC
		MOVLB 	1H 			//01EB 	1021
		LDR 	2EH, 0H 			//01EC 	182E
		MOVLB 	4H 			//01ED 	1024
		STR 	3DH 			//01EE 	10BD
		RET 					//01EF 	1008
		LDR 	2CH, 0H 			//01F0 	182C
		MOVLB 	0H 			//01F1 	1020
		STR 	44H 			//01F2 	10C4
		MOVLB 	1H 			//01F3 	1021
		LDR 	2DH, 0H 			//01F4 	182D
		MOVLB 	0H 			//01F5 	1020
		STR 	45H 			//01F6 	10C5
		MOVLB 	1H 			//01F7 	1021
		LDR 	2EH, 0H 			//01F8 	182E
		MOVLB 	0H 			//01F9 	1020
		STR 	46H 			//01FA 	10C6
		RET 					//01FB 	1008
		MOVLB 	1H 			//01FC 	1021
		STR 	5AH 			//01FD 	10DA
		LDWI 	0H 			//01FE 	0000
		BTSC 	5AH, 7H 		//01FF 	2BDA
		LDWI 	FFH 			//0200 	00FF
		STR 	5BH 			//0201 	10DB
		STR 	5CH 			//0202 	10DC
		LDR 	5CH, 0H 			//0203 	185C
		RET 					//0204 	1008
		LDR 	20H, 0H 			//0205 	1820
		STR 	2FH 			//0206 	10AF
		LDR 	21H, 0H 			//0207 	1821
		STR 	30H 			//0208 	10B0
		LDR 	22H, 0H 			//0209 	1822
		STR 	31H 			//020A 	10B1
		RET 					//020B 	1008
		LDR 	3BH, 0H 			//020C 	183B
		MOVLB 	1H 			//020D 	1021
		STR 	2CH 			//020E 	10AC
		MOVLB 	0H 			//020F 	1020
		LDR 	3CH, 0H 			//0210 	183C
		MOVLB 	1H 			//0211 	1021
		STR 	2DH 			//0212 	10AD
		MOVLB 	0H 			//0213 	1020
		LDR 	3DH, 0H 			//0214 	183D
		MOVLB 	1H 			//0215 	1021
		STR 	2EH 			//0216 	10AE
		MOVLB 	4H 			//0217 	1024
		LDR 	23H, 0H 			//0218 	1823
		MOVLB 	1H 			//0219 	1021
		STR 	2FH 			//021A 	10AF
		MOVLB 	4H 			//021B 	1024
		LDR 	24H, 0H 			//021C 	1824
		MOVLB 	1H 			//021D 	1021
		STR 	30H 			//021E 	10B0
		MOVLB 	4H 			//021F 	1024
		LDR 	25H, 0H 			//0220 	1825
		MOVLB 	1H 			//0221 	1021
		STR 	31H 			//0222 	10B1
		RET 					//0223 	1008
		STR 	44H 			//0224 	10C4
		MOVLB 	3H 			//0225 	1023
		LDR 	69H, 0H 			//0226 	1869
		MOVLB 	1H 			//0227 	1021
		STR 	45H 			//0228 	10C5
		MOVLB 	3H 			//0229 	1023
		LDR 	6AH, 0H 			//022A 	186A
		MOVLB 	1H 			//022B 	1021
		STR 	46H 			//022C 	10C6
		MOVLB 	3H 			//022D 	1023
		LDR 	6BH, 0H 			//022E 	186B
		MOVLB 	1H 			//022F 	1021
		STR 	47H 			//0230 	10C7
		RET 					//0231 	1008
		MOVLB 	1H 			//0232 	1021
		LDWI 	A0H 			//0233 	00A0
		CLRF 	2CH 			//0234 	11AC
		STR 	2DH 			//0235 	10AD
		LDWI 	41H 			//0236 	0041
		STR 	2EH 			//0237 	10AE
		MOVLB 	4H 			//0238 	1024
		LDR 	26H, 0H 			//0239 	1826
		MOVLB 	1H 			//023A 	1021
		STR 	20H 			//023B 	10A0
		MOVLB 	4H 			//023C 	1024
		LDR 	27H, 0H 			//023D 	1827
		MOVLB 	1H 			//023E 	1021
		STR 	21H 			//023F 	10A1
		MOVLB 	4H 			//0240 	1024
		LDR 	28H, 0H 			//0241 	1828
		MOVLB 	1H 			//0242 	1021
		STR 	22H 			//0243 	10A2
		RET 					//0244 	1008
		LDR 	2EH, 0H 			//0245 	182E
		MOVLB 	1H 			//0246 	1021
		STR 	4EH 			//0247 	10CE
		MOVLB 	0H 			//0248 	1020
		LDR 	2DH, 0H 			//0249 	182D
		MOVLB 	1H 			//024A 	1021
		STR 	4DH 			//024B 	10CD
		RET 					//024C 	1008
		STR 	42H 			//024D 	10C2
		LDWI 	9CH 			//024E 	009C
		STR 	43H 			//024F 	10C3
		RETW 	A0H 			//0250 	04A0
		MOVLB 	1H 			//0251 	1021
		ADDWFC 	47H, 0H 		//0252 	0D47
		STR 	5AH 			//0253 	10DA
		LSRF 	5AH, 1H 		//0254 	06DA
		RRR 	59H, 1H 			//0255 	1CD9
		LDR 	59H, 0H 			//0256 	1859
		RET 					//0257 	1008
		XORWI 	80H 			//0258 	0A80
		MOVLB 	1H 			//0259 	1021
		STR 	59H 			//025A 	10D9
		LDWI 	80H 			//025B 	0080
		SUBWR 	59H, 0H 		//025C 	1259
		RET 					//025D 	1008
		LDR 	4DH, 0H 			//025E 	184D
		MOVLB 	4H 			//025F 	1024
		STR 	23H 			//0260 	10A3
		MOVLB 	0H 			//0261 	1020
		LDR 	4EH, 0H 			//0262 	184E
		MOVLB 	4H 			//0263 	1024
		STR 	24H 			//0264 	10A4
		MOVLB 	0H 			//0265 	1020
		LDR 	4FH, 0H 			//0266 	184F
		MOVLB 	4H 			//0267 	1024
		STR 	25H 			//0268 	10A5
		MOVLB 	3H 			//0269 	1023
		LDR 	6CH, 0H 			//026A 	186C
		RET 					//026B 	1008
		LDR 	41H, 0H 			//026C 	1841
		MOVLB 	3H 			//026D 	1023
		STR 	69H 			//026E 	10E9
		MOVLB 	0H 			//026F 	1020
		LDR 	42H, 0H 			//0270 	1842
		MOVLB 	3H 			//0271 	1023
		STR 	6AH 			//0272 	10EA
		MOVLB 	0H 			//0273 	1020
		LDR 	43H, 0H 			//0274 	1843
		MOVLB 	3H 			//0275 	1023
		STR 	6BH 			//0276 	10EB
		RET 					//0277 	1008
		BSR 	DH, 0H 			//0278 	240D
		LDWI 	F4H 			//0279 	00F4
		MOVLB 	1H 			//027A 	1021
		STR 	46H 			//027B 	10C6
		LDWI 	1H 			//027C 	0001
		STR 	47H 			//027D 	10C7
		RET 					//027E 	1008
		LDR 	2CH, 0H 			//027F 	182C
		MOVLB 	4H 			//0280 	1024
		STR 	26H 			//0281 	10A6
		MOVLB 	1H 			//0282 	1021
		LDR 	2DH, 0H 			//0283 	182D
		MOVLB 	4H 			//0284 	1024
		STR 	27H 			//0285 	10A7
		MOVLB 	1H 			//0286 	1021
		LDR 	2EH, 0H 			//0287 	182E
		MOVLB 	4H 			//0288 	1024
		STR 	28H 			//0289 	10A8
		RET 					//028A 	1008
		LDR 	4DH, 0H 			//028B 	184D
		MOVLB 	1H 			//028C 	1021
		STR 	23H 			//028D 	10A3
		MOVLB 	0H 			//028E 	1020
		LDR 	4EH, 0H 			//028F 	184E
		MOVLB 	1H 			//0290 	1021
		STR 	24H 			//0291 	10A4
		MOVLB 	0H 			//0292 	1020
		LDR 	4FH, 0H 			//0293 	184F
		MOVLB 	1H 			//0294 	1021
		STR 	25H 			//0295 	10A5
		RET 					//0296 	1008
		LDWI 	F4H 			//0297 	00F4
		MOVLB 	1H 			//0298 	1021
		STR 	46H 			//0299 	10C6
		LDWI 	1H 			//029A 	0001
		STR 	47H 			//029B 	10C7
		RET 					//029C 	1008
		LDWI 	C1H 			//029D 	00C1
		MOVLB 	1H 			//029E 	1021
		STR 	4BH 			//029F 	10CB
		LDWI 	A0H 			//02A0 	00A0
		STR 	4CH 			//02A1 	10CC
		LDWI 	4H 			//02A2 	0004
		STR 	4DH 			//02A3 	10CD
		CLRF 	4EH 			//02A4 	11CE
		RET 					//02A5 	1008
		LDR 	47H, 0H 			//02A6 	1847
		MOVLB 	4H 			//02A7 	1024
		STR 	6BH 			//02A8 	10EB
		MOVLB 	1H 			//02A9 	1021
		LDR 	46H, 0H 			//02AA 	1846
		MOVLB 	4H 			//02AB 	1024
		STR 	6AH 			//02AC 	10EA
		MOVLB 	3H 			//02AD 	1023
		RET 					//02AE 	1008
		MOVLB 	3H 			//02AF 	1023
		LDR 	6FH, 0H 			//02B0 	186F
		MOVLB 	0H 			//02B1 	1020
		STR 	36H 			//02B2 	10B6
		MOVLB 	3H 			//02B3 	1023
		LDR 	6EH, 0H 			//02B4 	186E
		MOVLB 	0H 			//02B5 	1020
		STR 	35H 			//02B6 	10B5
		RET 					//02B7 	1008
		MOVLB 	4H 			//02B8 	1024
		LDR 	6BH, 0H 			//02B9 	186B
		MOVLB 	0H 			//02BA 	1020
		STR 	36H 			//02BB 	10B6
		MOVLB 	4H 			//02BC 	1024
		LDR 	6AH, 0H 			//02BD 	186A
		MOVLB 	0H 			//02BE 	1020
		STR 	35H 			//02BF 	10B5
		RET 					//02C0 	1008
		MOVLB 	4H 			//02C1 	1024
		LDR 	6DH, 0H 			//02C2 	186D
		MOVLB 	0H 			//02C3 	1020
		STR 	36H 			//02C4 	10B6
		MOVLB 	4H 			//02C5 	1024
		LDR 	6CH, 0H 			//02C6 	186C
		MOVLB 	0H 			//02C7 	1020
		STR 	35H 			//02C8 	10B5
		RET 					//02C9 	1008
		STR 	4CH 			//02CA 	10CC
		LDWI 	4H 			//02CB 	0004
		STR 	4DH 			//02CC 	10CD
		CLRF 	4EH 			//02CD 	11CE
		RET 					//02CE 	1008
		LDR 	47H, 0H 			//02CF 	1847
		MOVLB 	4H 			//02D0 	1024
		STR 	6DH 			//02D1 	10ED
		MOVLB 	1H 			//02D2 	1021
		LDR 	46H, 0H 			//02D3 	1846
		MOVLB 	4H 			//02D4 	1024
		STR 	6CH 			//02D5 	10EC
		MOVLB 	3H 			//02D6 	1023
		RET 					//02D7 	1008
		LDWI 	B7H 			//02D8 	00B7
		MOVLB 	1H 			//02D9 	1021
		STR 	4BH 			//02DA 	10CB
		RETW 	A0H 			//02DB 	04A0
		LDWI 	C6H 			//02DC 	00C6
		MOVLB 	1H 			//02DD 	1021
		STR 	4BH 			//02DE 	10CB
		RETW 	A0H 			//02DF 	04A0
		MOVLB 	4H 			//02E0 	1024
		STR 	6CH 			//02E1 	10EC
		MOVLB 	1H 			//02E2 	1021
		LDR 	5AH, 0H 			//02E3 	185A
		MOVLB 	4H 			//02E4 	1024
		STR 	6DH 			//02E5 	10ED
		MOVLB 	3H 			//02E6 	1023
		RET 					//02E7 	1008
		MOVLB 	4H 			//02E8 	1024
		STR 	6AH 			//02E9 	10EA
		MOVLB 	1H 			//02EA 	1021
		LDR 	5AH, 0H 			//02EB 	185A
		MOVLB 	4H 			//02EC 	1024
		STR 	6BH 			//02ED 	10EB
		MOVLB 	3H 			//02EE 	1023
		RET 					//02EF 	1008
		LDR 	47H, 0H 			//02F0 	1847
		MOVLB 	3H 			//02F1 	1023
		STR 	6FH 			//02F2 	10EF
		MOVLB 	1H 			//02F3 	1021
		LDR 	46H, 0H 			//02F4 	1846
		MOVLB 	3H 			//02F5 	1023
		STR 	6EH 			//02F6 	10EE
		RET 					//02F7 	1008
		MOVLB 	4H 			//02F8 	1024
		CLRF 	62H 			//02F9 	11E2
		CLRF 	63H 			//02FA 	11E3
		CLRF 	60H 			//02FB 	11E0
		CLRF 	61H 			//02FC 	11E1
		MOVLB 	0H 			//02FD 	1020
		RET 					//02FE 	1008
		LDR 	5AH, 0H 			//02FF 	185A
		STR 	50H 			//0300 	10D0
		LDR 	5BH, 0H 			//0301 	185B
		STR 	51H 			//0302 	10D1
		LDR 	5CH, 0H 			//0303 	185C
		STR 	52H 			//0304 	10D2
		RET 					//0305 	1008
		MOVLB 	3H 			//0306 	1023
		STR 	6EH 			//0307 	10EE
		MOVLB 	1H 			//0308 	1021
		LDR 	5AH, 0H 			//0309 	185A
		MOVLB 	3H 			//030A 	1023
		STR 	6FH 			//030B 	10EF
		RET 					//030C 	1008
		CLRF 	5EH 			//030D 	11DE
		CLRF 	5FH 			//030E 	11DF
		CLRF 	5CH 			//030F 	11DC
		CLRF 	5DH 			//0310 	11DD
		CLRF 	5AH 			//0311 	11DA
		CLRF 	5BH 			//0312 	11DB
		RET 					//0313 	1008
		LDR 	60H, 0H 			//0314 	1860
		STR 	42H 			//0315 	10C2
		LDR 	61H, 0H 			//0316 	1861
		STR 	43H 			//0317 	10C3
		LDR 	62H, 0H 			//0318 	1862
		STR 	44H 			//0319 	10C4
		RET 					//031A 	1008
		MOVLB 	3H 			//031B 	1023
		XORWR 	65H, 0H 		//031C 	1665
		IORWR 	66H, 0H 		//031D 	1466
		IORWR 	67H, 0H 		//031E 	1467
		IORWR 	68H, 0H 		//031F 	1468
		RET 					//0320 	1008
		LDWI 	FFH 			//0321 	00FF
		MOVLB 	3H 			//0322 	1023
		ADDWFC 	6DH, 0H 		//0323 	0D6D
		MOVLB 	0H 			//0324 	1020
		STR 	3CH 			//0325 	10BC
		RET 					//0326 	1008
		MOVLB 	1H 			//0327 	1021
		LDR 	59H, 0H 			//0328 	1859
		MOVLB 	0H 			//0329 	1020
		SUBWR 	56H, 0H 		//032A 	1256
		RET 					//032B 	1008
		MOVLB 	1H 			//032C 	1021
		LDR 	5AH, 0H 			//032D 	185A
		MOVLB 	0H 			//032E 	1020
		SUBWR 	57H, 0H 		//032F 	1257
		RET 					//0330 	1008
		MOVLB 	1H 			//0331 	1021
		LDR 	5BH, 0H 			//0332 	185B
		MOVLB 	0H 			//0333 	1020
		SUBWR 	58H, 0H 		//0334 	1258
		RET 					//0335 	1008
		MOVLB 	1H 			//0336 	1021
		LDR 	5AH, 0H 			//0337 	185A
		MOVLB 	3H 			//0338 	1023
		SUBWR 	66H, 0H 		//0339 	1266
		RET 					//033A 	1008
		MOVLB 	1H 			//033B 	1021
		LDR 	59H, 0H 			//033C 	1859
		MOVLB 	3H 			//033D 	1023
		SUBWR 	65H, 0H 		//033E 	1265
		RET 					//033F 	1008
		MOVLB 	1H 			//0340 	1021
		LDR 	5BH, 0H 			//0341 	185B
		MOVLB 	3H 			//0342 	1023
		SUBWR 	67H, 0H 		//0343 	1267
		RET 					//0344 	1008

		//;NFB.C: 565: POWER_INITIAL();
		MOVLP 	6H 			//0345 	0186
		LCALL 	6CEH 			//0346 	36CE
		MOVLP 	3H 			//0347 	0183

		//;NFB.C: 566: EEPROM_INIT();
		MOVLP 	19H 			//0348 	0199
		LCALL 	196H 			//0349 	3196
		MOVLP 	3H 			//034A 	0183

		//;NFB.C: 567: UART_INITIAL();
		MOVLP 	7H 			//034B 	0187
		LCALL 	70BH 			//034C 	370B
		MOVLP 	3H 			//034D 	0183

		//;NFB.C: 568: IO_INT_INITIAL();
		MOVLP 	7H 			//034E 	0187
		LCALL 	753H 			//034F 	3753
		MOVLP 	3H 			//0350 	0183

		//;NFB.C: 569: ADC_INITIAL();
		MOVLP 	7H 			//0351 	0187
		LCALL 	71EH 			//0352 	371E
		MOVLP 	3H 			//0353 	0183

		//;NFB.C: 570: OP0_INITIAL();
		MOVLP 	7H 			//0354 	0187
		LCALL 	769H 			//0355 	3769
		MOVLP 	3H 			//0356 	0183

		//;NFB.C: 571: TIM2_INITIAL();
		MOVLP 	7H 			//0357 	0187
		LCALL 	744H 			//0358 	3744
		MOVLP 	3H 			//0359 	0183

		//;NFB.C: 572: INIT();
		MOVLP 	7H 			//035A 	0187
		LCALL 	760H 			//035B 	3760
		MOVLP 	3H 			//035C 	0183

		//;NFB.C: 573: DelayMs(1000);
		LDWI 	E8H 			//035D 	00E8
		MOVLB 	1H 			//035E 	1021
		STR 	46H 			//035F 	10C6
		LDWI 	3H 			//0360 	0003
		STR 	47H 			//0361 	10C7
		MOVLP 	1EH 			//0362 	019E
		LCALL 	6B7H 			//0363 	36B7
		MOVLP 	3H 			//0364 	0183

		//;NFB.C: 574: send((char*)"START\r\n",7);
		LDWI 	AFH 			//0365 	00AF
		MOVLB 	1H 			//0366 	1021
		STR 	4BH 			//0367 	10CB
		LDWI 	A0H 			//0368 	00A0
		STR 	4CH 			//0369 	10CC
		LDWI 	7H 			//036A 	0007
		STR 	4DH 			//036B 	10CD
		CLRF 	4EH 			//036C 	11CE
		MOVLP 	19H 			//036D 	0199
		LCALL 	173H 			//036E 	3173
		MOVLP 	3H 			//036F 	0183
		MOVLP 	16H 			//0370 	0196
		LJUMP 	6F4H 			//0371 	3EF4

		//;NFB.C: 580: if(BTNtimer){
		MOVLB 	4H 			//0372 	1024
		LDR 	64H, 0H 			//0373 	1864
		IORWR 	65H, 0H 		//0374 	1465
		BTSC 	3H, 2H 			//0375 	2903
		LJUMP 	3F1H 			//0376 	3BF1
		LDWI 	1H 			//0377 	0001

		//;NFB.C: 581: BTNtimer=0;
		CLRF 	64H 			//0378 	11E4
		CLRF 	65H 			//0379 	11E5

		//;NFB.C: 582: PowerOn = 1 - PowerOn;
		MOVLB 	1H 			//037A 	1021
		STR 	59H 			//037B 	10D9
		MOVLB 	4H 			//037C 	1024
		LDR 	68H, 0H 			//037D 	1868
		MOVLB 	1H 			//037E 	1021
		SUBWR 	59H, 0H 		//037F 	1259
		MOVLB 	4H 			//0380 	1024
		STR 	68H 			//0381 	10E8
		COMR 	69H, 0H 		//0382 	1969
		BTSC 	3H, 0H 			//0383 	2803
		INCR 	9H, 1H 			//0384 	1A89
		STR 	69H 			//0385 	10E9

		//;NFB.C: 583: if(PowerOn){
		LDR 	68H, 0H 			//0386 	1868
		IORWR 	69H, 0H 		//0387 	1469
		BTSC 	3H, 2H 			//0388 	2903
		LJUMP 	3C3H 			//0389 	3BC3

		//;NFB.C: 584: send((char*)"P1\r\n",4);
		LDWI 	D0H 			//038A 	00D0
		MOVLB 	1H 			//038B 	1021
		STR 	4BH 			//038C 	10CB
		LDWI 	A0H 			//038D 	00A0
		MOVLP 	2H 			//038E 	0182
		LCALL 	2CAH 			//038F 	32CA
		MOVLP 	3H 			//0390 	0183
		MOVLP 	19H 			//0391 	0199
		LCALL 	173H 			//0392 	3173
		MOVLP 	3H 			//0393 	0183

		//;NFB.C: 585: PC1 = 0;
		MOVLB 	0H 			//0394 	1020
		BCR 	EH, 1H 			//0395 	208E

		//;NFB.C: 586: PB0 = 1;
		//;NFB.C: 587: DelayMs(500);
		MOVLP 	2H 			//0396 	0182
		LCALL 	278H 			//0397 	3278
		MOVLP 	3H 			//0398 	0183
		MOVLP 	1EH 			//0399 	019E
		LCALL 	6B7H 			//039A 	36B7
		MOVLP 	3H 			//039B 	0183

		//;NFB.C: 588: PB0 = 0;
		MOVLB 	0H 			//039C 	1020
		BCR 	DH, 0H 			//039D 	200D

		//;NFB.C: 589: BatteryLevel();
		MOVLP 	1CH 			//039E 	019C
		LCALL 	477H 			//039F 	3477
		MOVLP 	3H 			//03A0 	0183

		//;NFB.C: 590: timeleft = 20;
		LDWI 	14H 			//03A1 	0014
		MOVLB 	4H 			//03A2 	1024
		STR 	4AH 			//03A3 	10CA
		LDWI 	9H 			//03A4 	0009
		CLRF 	4BH 			//03A5 	11CB

		//;NFB.C: 591: timeleft1 = 9;
		STR 	48H 			//03A6 	10C8
		LDWI 	CBH 			//03A7 	00CB
		CLRF 	49H 			//03A8 	11C9

		//;NFB.C: 592: send((char*)"H1\r\n",4);
		MOVLB 	1H 			//03A9 	1021
		STR 	4BH 			//03AA 	10CB
		LDWI 	A0H 			//03AB 	00A0
		MOVLP 	2H 			//03AC 	0182
		LCALL 	2CAH 			//03AD 	32CA
		MOVLP 	3H 			//03AE 	0183
		MOVLP 	19H 			//03AF 	0199
		LCALL 	173H 			//03B0 	3173
		MOVLP 	3H 			//03B1 	0183

		//;NFB.C: 593: HTOn = 1;
		MOVLB 	4H 			//03B2 	1024
		CLRF 	62H 			//03B3 	11E2
		INCR 	62H, 1H 		//03B4 	1AE2
		CLRF 	63H 			//03B5 	11E3

		//;NFB.C: 594: PA0 = 1;
		MOVLB 	0H 			//03B6 	1020
		BSR 	CH, 0H 			//03B7 	240C

		//;NFB.C: 595: HTcnt = 0;
		MOVLB 	5H 			//03B8 	1025
		CLRF 	28H 			//03B9 	11A8
		CLRF 	29H 			//03BA 	11A9
		CLRF 	2AH 			//03BB 	11AA
		CLRF 	2BH 			//03BC 	11AB

		//;NFB.C: 596: HTtimecnt = 0;
		MOVLB 	3H 			//03BD 	1023
		CLRF 	65H 			//03BE 	11E5
		CLRF 	66H 			//03BF 	11E6
		CLRF 	67H 			//03C0 	11E7
		CLRF 	68H 			//03C1 	11E8

		//;NFB.C: 597: } else{
		LJUMP 	3F1H 			//03C2 	3BF1

		//;NFB.C: 598: send((char*)"H0\r\n",4);
		MOVLP 	2H 			//03C3 	0182
		LCALL 	2D8H 			//03C4 	32D8
		MOVLP 	3H 			//03C5 	0183
		MOVLP 	2H 			//03C6 	0182
		LCALL 	2CAH 			//03C7 	32CA
		MOVLP 	3H 			//03C8 	0183
		MOVLP 	19H 			//03C9 	0199
		LCALL 	173H 			//03CA 	3173
		MOVLP 	3H 			//03CB 	0183

		//;NFB.C: 599: HTOn = 0;
		//;NFB.C: 600: HTtimer = 0;
		//;NFB.C: 601: PA0 = 0;
		MOVLP 	2H 			//03CC 	0182
		LCALL 	2F8H 			//03CD 	32F8
		MOVLP 	3H 			//03CE 	0183
		BCR 	CH, 0H 			//03CF 	200C

		//;NFB.C: 602: send((char*)"S0\r\n",4);
		MOVLP 	2H 			//03D0 	0182
		LCALL 	29DH 			//03D1 	329D
		MOVLP 	3H 			//03D2 	0183
		MOVLP 	19H 			//03D3 	0199
		LCALL 	173H 			//03D4 	3173
		MOVLP 	3H 			//03D5 	0183

		//;NFB.C: 603: SmokeOn = 0;
		MOVLB 	4H 			//03D6 	1024
		LDWI 	BCH 			//03D7 	00BC

		//;NFB.C: 604: Smoketimer = 0;
		//;NFB.C: 605: PuffOn = 0;
		MOVLP 	3H 			//03D8 	0183
		LCALL 	30DH 			//03D9 	330D
		MOVLP 	3H 			//03DA 	0183

		//;NFB.C: 606: send((char*)"P0\r\n",4);
		MOVLB 	1H 			//03DB 	1021
		STR 	4BH 			//03DC 	10CB
		LDWI 	A0H 			//03DD 	00A0
		MOVLP 	2H 			//03DE 	0182
		LCALL 	2CAH 			//03DF 	32CA
		MOVLP 	3H 			//03E0 	0183
		MOVLP 	19H 			//03E1 	0199
		LCALL 	173H 			//03E2 	3173
		MOVLP 	3H 			//03E3 	0183

		//;NFB.C: 607: PC1=1;
		MOVLB 	0H 			//03E4 	1020
		BSR 	EH, 1H 			//03E5 	248E

		//;NFB.C: 608: PB0 = 1;
		//;NFB.C: 609: DelayMs(500);
		MOVLP 	2H 			//03E6 	0182
		LCALL 	278H 			//03E7 	3278
		MOVLP 	3H 			//03E8 	0183
		MOVLP 	1EH 			//03E9 	019E
		LCALL 	6B7H 			//03EA 	36B7
		MOVLP 	3H 			//03EB 	0183

		//;NFB.C: 610: PB0 = 0;
		MOVLB 	0H 			//03EC 	1020
		BCR 	DH, 0H 			//03ED 	200D

		//;NFB.C: 611: PA1=1;
		BSR 	CH, 1H 			//03EE 	248C

		//;NFB.C: 612: PB2=1;
		BSR 	DH, 2H 			//03EF 	250D

		//;NFB.C: 613: PB3=1;
		BSR 	DH, 3H 			//03F0 	258D

		//;NFB.C: 614: }
		//;NFB.C: 615: }
		//;NFB.C: 616: if(HTtimer){
		MOVLB 	4H 			//03F1 	1024
		LDR 	60H, 0H 			//03F2 	1860
		IORWR 	61H, 0H 		//03F3 	1461
		MOVLP 	13H 			//03F4 	0193
		BTSC 	3H, 2H 			//03F5 	2903
		LJUMP 	35BH 			//03F6 	3B5B

		//;NFB.C: 617: HTtimer = 0;
		CLRF 	60H 			//03F7 	11E0
		CLRF 	61H 			//03F8 	11E1

		//;NFB.C: 618: if(PA0){
		MOVLB 	0H 			//03F9 	1020
		BTSS 	CH, 0H 			//03FA 	2C0C
		LJUMP 	140H 			//03FB 	3940

		//;NFB.C: 619: HTVP_ = GET_ADC_DATA(2);
		LDWI 	2H 			//03FC 	0002
		MOVLP 	1DH 			//03FD 	019D
		LCALL 	5A2H 			//03FE 	35A2
		MOVLP 	3H 			//03FF 	0183
		MOVLP 	2H 			//0400 	0182
		LCALL 	2F0H 			//0401 	32F0
		MOVLP 	3H 			//0402 	0183

		//;NFB.C: 620: for(int i=0;i<4;i++){
		CLRF 	56H 			//0403 	11D6
		CLRF 	57H 			//0404 	11D7
		LDR 	57H, 0H 			//0405 	1857
		MOVLP 	2H 			//0406 	0182
		LCALL 	258H 			//0407 	3258
		MOVLP 	3H 			//0408 	0183
		BTSS 	3H, 2H 			//0409 	2D03
		LJUMP 	40EH 			//040A 	3C0E
		LDWI 	4H 			//040B 	0004
		MOVLB 	3H 			//040C 	1023
		SUBWR 	56H, 0H 		//040D 	1256
		BTSC 	3H, 0H 			//040E 	2803
		LJUMP 	425H 			//040F 	3C25

		//;NFB.C: 621: HTVP_ = (HTVP_+GET_ADC_DATA(2))/2;
		LDWI 	2H 			//0410 	0002
		MOVLP 	1DH 			//0411 	019D
		LCALL 	5A2H 			//0412 	35A2
		MOVLP 	3H 			//0413 	0183
		MOVLB 	3H 			//0414 	1023
		LDR 	6EH, 0H 			//0415 	186E
		MOVLB 	1H 			//0416 	1021
		ADDWR 	46H, 0H 		//0417 	1746
		STR 	59H 			//0418 	10D9
		MOVLB 	3H 			//0419 	1023
		LDR 	6FH, 0H 			//041A 	186F
		MOVLP 	2H 			//041B 	0182
		LCALL 	251H 			//041C 	3251
		MOVLP 	3H 			//041D 	0183
		MOVLP 	3H 			//041E 	0183
		LCALL 	306H 			//041F 	3306
		MOVLP 	3H 			//0420 	0183
		INCR 	56H, 1H 		//0421 	1AD6
		BTSC 	3H, 2H 			//0422 	2903
		INCR 	57H, 1H 		//0423 	1AD7
		LJUMP 	405H 			//0424 	3C05

		//;NFB.C: 622: }
		//;NFB.C: 623: HTVN_ = GET_ADC_DATA(1);
		LDWI 	1H 			//0425 	0001
		MOVLP 	1DH 			//0426 	019D
		LCALL 	5A2H 			//0427 	35A2
		MOVLP 	3H 			//0428 	0183

		//;NFB.C: 624: for(int i=0;i<4;i++){
		MOVLP 	2H 			//0429 	0182
		LCALL 	2CFH 			//042A 	32CF
		MOVLP 	3H 			//042B 	0183
		CLRF 	58H 			//042C 	11D8
		CLRF 	59H 			//042D 	11D9
		LDR 	59H, 0H 			//042E 	1859
		MOVLP 	2H 			//042F 	0182
		LCALL 	258H 			//0430 	3258
		MOVLP 	3H 			//0431 	0183
		BTSS 	3H, 2H 			//0432 	2D03
		LJUMP 	437H 			//0433 	3C37
		LDWI 	4H 			//0434 	0004
		MOVLB 	3H 			//0435 	1023
		SUBWR 	58H, 0H 		//0436 	1258
		BTSC 	3H, 0H 			//0437 	2803
		LJUMP 	44EH 			//0438 	3C4E

		//;NFB.C: 625: HTVN_ = (HTVN_+GET_ADC_DATA(1))/2;
		LDWI 	1H 			//0439 	0001
		MOVLP 	1DH 			//043A 	019D
		LCALL 	5A2H 			//043B 	35A2
		MOVLP 	3H 			//043C 	0183
		MOVLB 	4H 			//043D 	1024
		LDR 	6CH, 0H 			//043E 	186C
		MOVLB 	1H 			//043F 	1021
		ADDWR 	46H, 0H 		//0440 	1746
		STR 	59H 			//0441 	10D9
		MOVLB 	4H 			//0442 	1024
		LDR 	6DH, 0H 			//0443 	186D
		MOVLP 	2H 			//0444 	0182
		LCALL 	251H 			//0445 	3251
		MOVLP 	3H 			//0446 	0183
		MOVLP 	2H 			//0447 	0182
		LCALL 	2E0H 			//0448 	32E0
		MOVLP 	3H 			//0449 	0183
		INCR 	58H, 1H 		//044A 	1AD8
		BTSC 	3H, 2H 			//044B 	2903
		INCR 	59H, 1H 		//044C 	1AD9
		LJUMP 	42EH 			//044D 	3C2E

		//;NFB.C: 626: }
		//;NFB.C: 627: HTVI_ = GET_ADC_DATA(4);
		LDWI 	4H 			//044E 	0004
		MOVLP 	1DH 			//044F 	019D
		LCALL 	5A2H 			//0450 	35A2
		MOVLP 	3H 			//0451 	0183

		//;NFB.C: 628: for(int i=0;i<4;i++){
		MOVLP 	2H 			//0452 	0182
		LCALL 	2A6H 			//0453 	32A6
		MOVLP 	3H 			//0454 	0183
		CLRF 	5AH 			//0455 	11DA
		CLRF 	5BH 			//0456 	11DB
		LDR 	5BH, 0H 			//0457 	185B
		MOVLP 	2H 			//0458 	0182
		LCALL 	258H 			//0459 	3258
		MOVLP 	3H 			//045A 	0183
		BTSS 	3H, 2H 			//045B 	2D03
		LJUMP 	460H 			//045C 	3C60
		LDWI 	4H 			//045D 	0004
		MOVLB 	3H 			//045E 	1023
		SUBWR 	5AH, 0H 		//045F 	125A
		MOVLP 	10H 			//0460 	0190
		BTSC 	3H, 0H 			//0461 	2803
		LJUMP 	D8H 			//0462 	38D8

		//;NFB.C: 629: HTVI_ = (HTVI_+GET_ADC_DATA(4))/2;
		LDWI 	4H 			//0463 	0004
		MOVLP 	1DH 			//0464 	019D
		LCALL 	5A2H 			//0465 	35A2
		MOVLP 	3H 			//0466 	0183
		MOVLB 	4H 			//0467 	1024
		LDR 	6AH, 0H 			//0468 	186A
		MOVLB 	1H 			//0469 	1021
		ADDWR 	46H, 0H 		//046A 	1746
		STR 	59H 			//046B 	10D9
		MOVLB 	4H 			//046C 	1024
		LDR 	6BH, 0H 			//046D 	186B
		MOVLP 	2H 			//046E 	0182
		LCALL 	251H 			//046F 	3251
		MOVLP 	3H 			//0470 	0183
		MOVLP 	2H 			//0471 	0182
		LCALL 	2E8H 			//0472 	32E8
		MOVLP 	3H 			//0473 	0183
		INCR 	5AH, 1H 		//0474 	1ADA
		BTSC 	3H, 2H 			//0475 	2903
		INCR 	5BH, 1H 		//0476 	1ADB
		LJUMP 	457H 			//0477 	3C57
		STR 	7DH 			//0478 	10FD
		LDR 	7DH, 0H 			//0479 	187D
		BTSC 	3H, 2H 			//047A 	2903
		RETW 	0H 			//047B 	0400
		LDR 	7DH, 0H 			//047C 	187D
		STR 	6H 			//047D 	1086
		LDWI 	2H 			//047E 	0002
		STR 	7H 			//047F 	1087
		LDR 	1H, 0H 			//0480 	1801
		BTSC 	3H, 2H 			//0481 	2903
		RETW 	0H 			//0482 	0400
		LDR 	7CH, 0H 			//0483 	187C
		STR 	76H 			//0484 	10F6
		LDR 	7BH, 0H 			//0485 	187B
		STR 	75H 			//0486 	10F5
		LDR 	7CH, 0H 			//0487 	187C
		STR 	71H 			//0488 	10F1
		LDR 	7BH, 0H 			//0489 	187B
		STR 	70H 			//048A 	10F0
		LCALL 	4E5H 			//048B 	34E5
		MOVLP 	4H 			//048C 	0184
		LDR 	71H, 0H 			//048D 	1871
		STR 	78H 			//048E 	10F8
		LDR 	70H, 0H 			//048F 	1870
		STR 	77H 			//0490 	10F7
		LDR 	7DH, 0H 			//0491 	187D
		LCALL 	4BAH 			//0492 	34BA
		MOVLP 	4H 			//0493 	0184
		LDR 	75H, 0H 			//0494 	1875
		IORWR 	76H, 0H 		//0495 	1476
		BTSS 	3H, 2H 			//0496 	2D03
		LJUMP 	49AH 			//0497 	3C9A
		LDR 	7DH, 0H 			//0498 	187D
		RET 					//0499 	1008
		LDR 	7BH, 0H 			//049A 	187B
		STR 	4H 			//049B 	1084
		LDR 	7CH, 0H 			//049C 	187C
		STR 	5H 			//049D 	1085
		LDR 	0H, 0H 			//049E 	1800
		STR 	70H 			//049F 	10F0
		CLRF 	71H 			//04A0 	11F1
		LDR 	7DH, 0H 			//04A1 	187D
		ADDWI 	1H 			//04A2 	0E01
		LCALL 	4A6H 			//04A3 	34A6
		MOVLP 	4H 			//04A4 	0184
		LJUMP 	478H 			//04A5 	3C78
		STR 	72H 			//04A6 	10F2
		LDR 	72H, 0H 			//04A7 	1872
		STR 	6H 			//04A8 	1086
		LDWI 	2H 			//04A9 	0002
		STR 	7H 			//04AA 	1087
		LDR 	1H, 0H 			//04AB 	1801
		XORWR 	70H, 0H 		//04AC 	1670
		BTSS 	3H, 2H 			//04AD 	2D03
		LJUMP 	4B1H 			//04AE 	3CB1
		LDR 	72H, 0H 			//04AF 	1872
		RET 					//04B0 	1008
		LDR 	72H, 0H 			//04B1 	1872
		STR 	6H 			//04B2 	1086
		LDWI 	2H 			//04B3 	0002
		STR 	7H 			//04B4 	1087
		INCR 	72H, 1H 		//04B5 	1AF2
		LDR 	1H, 0H 			//04B6 	1801
		BTSC 	3H, 2H 			//04B7 	2903
		RETW 	0H 			//04B8 	0400
		LJUMP 	4A7H 			//04B9 	3CA7
		STR 	7AH 			//04BA 	10FA
		LDWI 	1H 			//04BB 	0001
		SUBWR 	77H, 1H 		//04BC 	12F7
		LDWI 	0H 			//04BD 	0000
		SUBWFB 	78H, 1H 		//04BE 	0BF8
		INCRSZ 	77H, 0H 		//04BF 	1F77
		LJUMP 	4C4H 			//04C0 	3CC4
		INCR 	78H, 0H 		//04C1 	1A78
		BTSC 	3H, 2H 			//04C2 	2903
		LJUMP 	4E2H 			//04C3 	3CE2
		LDR 	7AH, 0H 			//04C4 	187A
		LCALL 	548H 			//04C5 	3548
		MOVLP 	4H 			//04C6 	0184
		BTSC 	3H, 2H 			//04C7 	2903
		LJUMP 	4D2H 			//04C8 	3CD2
		LCALL 	4FBH 			//04C9 	34FB
		MOVLP 	4H 			//04CA 	0184
		STR 	79H 			//04CB 	10F9
		LDR 	7AH, 0H 			//04CC 	187A
		STR 	6H 			//04CD 	1086
		LDR 	1H, 0H 			//04CE 	1801
		XORWR 	79H, 0H 		//04CF 	1679
		BTSC 	3H, 2H 			//04D0 	2903
		LJUMP 	4DDH 			//04D1 	3CDD
		LDR 	7AH, 0H 			//04D2 	187A
		STR 	6H 			//04D3 	1086
		LDWI 	2H 			//04D4 	0002
		STR 	7H 			//04D5 	1087
		LCALL 	4FBH 			//04D6 	34FB
		SUBWR 	1H, 0H 		//04D7 	1201
		STR 	75H 			//04D8 	10F5
		CLRF 	76H 			//04D9 	11F6
		BTSS 	3H, 0H 			//04DA 	2C03
		DECR 	76H, 1H 		//04DB 	13F6
		RET 					//04DC 	1008
		INCR 	7AH, 1H 		//04DD 	1AFA
		INCR 	75H, 1H 		//04DE 	1AF5
		BTSC 	3H, 2H 			//04DF 	2903
		INCR 	76H, 1H 		//04E0 	1AF6
		LJUMP 	4BBH 			//04E1 	3CBB
		CLRF 	75H 			//04E2 	11F5
		CLRF 	76H 			//04E3 	11F6
		RET 					//04E4 	1008
		LDR 	71H, 0H 			//04E5 	1871
		STR 	74H 			//04E6 	10F4
		LDR 	70H, 0H 			//04E7 	1870
		STR 	73H 			//04E8 	10F3
		LDR 	73H, 0H 			//04E9 	1873
		STR 	4H 			//04EA 	1084
		LDR 	74H, 0H 			//04EB 	1874
		STR 	5H 			//04EC 	1085
		MOVIW 	FSR0++ 		//04ED 	1012
		BTSC 	3H, 2H 			//04EE 	2903
		LJUMP 	4F4H 			//04EF 	3CF4
		INCR 	73H, 1H 		//04F0 	1AF3
		BTSC 	3H, 2H 			//04F1 	2903
		INCR 	74H, 1H 		//04F2 	1AF4
		LJUMP 	4E9H 			//04F3 	3CE9
		LDR 	70H, 0H 			//04F4 	1870
		SUBWR 	73H, 0H 		//04F5 	1273
		STR 	70H 			//04F6 	10F0
		LDR 	71H, 0H 			//04F7 	1871
		SUBWFB 	74H, 0H 		//04F8 	0B74
		STR 	71H 			//04F9 	10F1
		RET 					//04FA 	1008
		LDR 	75H, 0H 			//04FB 	1875
		STR 	4H 			//04FC 	1084
		LDR 	76H, 0H 			//04FD 	1876
		STR 	5H 			//04FE 	1085
		LDR 	0H, 0H 			//04FF 	1800
		RET 					//0500 	1008
		MOVLB 	0H 			//0501 	1020
		STR 	24H 			//0502 	10A4

		//;NFB.C: 48: int res = 0;
		CLRF 	20H 			//0503 	11A0
		CLRF 	21H 			//0504 	11A1

		//;NFB.C: 49: for (int i = 0; arr[i] != '\0'; ++i){
		CLRF 	22H 			//0505 	11A2
		CLRF 	23H 			//0506 	11A3
		LDR 	22H, 0H 			//0507 	1822
		ADDWR 	24H, 0H 		//0508 	1724
		STR 	78H 			//0509 	10F8
		LCALL 	548H 			//050A 	3548
		MOVLP 	4H 			//050B 	0184
		BTSC 	3H, 2H 			//050C 	2903
		LJUMP 	52EH 			//050D 	3D2E

		//;NFB.C: 50: res = (res * 10) + (arr[i] - '0');
		LDR 	22H, 0H 			//050E 	1822
		ADDWR 	24H, 0H 		//050F 	1724
		STR 	78H 			//0510 	10F8
		STR 	6H 			//0511 	1086
		LDR 	1H, 0H 			//0512 	1801
		STR 	79H 			//0513 	10F9
		CLRF 	7AH 			//0514 	11FA
		LDR 	21H, 0H 			//0515 	1821
		STR 	71H 			//0516 	10F1
		LDR 	20H, 0H 			//0517 	1820
		STR 	70H 			//0518 	10F0
		LDWI 	AH 			//0519 	000A
		STR 	72H 			//051A 	10F2
		CLRF 	73H 			//051B 	11F3
		LCALL 	533H 			//051C 	3533
		MOVLP 	4H 			//051D 	0184
		LDR 	79H, 0H 			//051E 	1879
		ADDWR 	70H, 0H 		//051F 	1770
		STR 	7BH 			//0520 	10FB
		LDR 	7AH, 0H 			//0521 	187A
		ADDWFC 	71H, 0H 		//0522 	0D71
		STR 	7CH 			//0523 	10FC
		LDR 	7BH, 0H 			//0524 	187B
		ADDWI 	D0H 			//0525 	0ED0
		STR 	20H 			//0526 	10A0
		LDWI 	FFH 			//0527 	00FF
		ADDWFC 	7CH, 0H 		//0528 	0D7C
		STR 	21H 			//0529 	10A1
		INCR 	22H, 1H 		//052A 	1AA2
		BTSC 	3H, 2H 			//052B 	2903
		INCR 	23H, 1H 		//052C 	1AA3
		LJUMP 	507H 			//052D 	3D07

		//;NFB.C: 51: }
		//;NFB.C: 52: return res;
		LDR 	21H, 0H 			//052E 	1821
		STR 	77H 			//052F 	10F7
		LDR 	20H, 0H 			//0530 	1820
		STR 	76H 			//0531 	10F6
		RET 					//0532 	1008
		CLRF 	74H 			//0533 	11F4
		CLRF 	75H 			//0534 	11F5
		BTSS 	70H, 0H 		//0535 	2C70
		LJUMP 	53BH 			//0536 	3D3B
		LDR 	72H, 0H 			//0537 	1872
		ADDWR 	74H, 1H 		//0538 	17F4
		LDR 	73H, 0H 			//0539 	1873
		ADDWFC 	75H, 1H 		//053A 	0DF5
		LSLF 	72H, 1H 		//053B 	05F2
		RLR 	73H, 1H 			//053C 	1DF3
		LSRF 	71H, 1H 		//053D 	06F1
		RRR 	70H, 1H 			//053E 	1CF0
		LDR 	70H, 0H 			//053F 	1870
		IORWR 	71H, 0H 		//0540 	1471
		BTSS 	3H, 2H 			//0541 	2D03
		LJUMP 	535H 			//0542 	3D35
		LDR 	75H, 0H 			//0543 	1875
		STR 	71H 			//0544 	10F1
		LDR 	74H, 0H 			//0545 	1874
		STR 	70H 			//0546 	10F0
		RET 					//0547 	1008
		STR 	6H 			//0548 	1086
		LDWI 	2H 			//0549 	0002
		STR 	7H 			//054A 	1087
		LDR 	1H, 0H 			//054B 	1801
		RET 					//054C 	1008
		LDWI 	2DH 			//054D 	002D
		STR 	6H 			//054E 	1086
		CLRF 	7H 			//054F 	1187
		MOVIW 	0H[1] 			//0550 	0F40
		MOVLB 	0H 			//0551 	1020
		STR 	33H 			//0552 	10B3
		MOVIW 	1H[1] 			//0553 	0F41
		STR 	34H 			//0554 	10B4
		MOVIW 	2H[1] 			//0555 	0F42
		STR 	35H 			//0556 	10B5
		MOVIW 	3H[1] 			//0557 	0F43
		STR 	36H 			//0558 	10B6
		BCR 	3H, 0H 			//0559 	2003
		RLR 	35H, 0H 			//055A 	1D35
		RLR 	36H, 0H 			//055B 	1D36
		STR 	40H 			//055C 	10C0
		LDR 	40H, 0H 			//055D 	1840
		BTSS 	3H, 2H 			//055E 	2D03
		LJUMP 	565H 			//055F 	3D65
		CLRF 	2DH 			//0560 	11AD
		CLRF 	2EH 			//0561 	11AE
		CLRF 	2FH 			//0562 	11AF
		CLRF 	30H 			//0563 	11B0
		RET 					//0564 	1008
		LDWI 	30H 			//0565 	0030
		LCALL 	5F5H 			//0566 	35F5
		MOVLP 	5H 			//0567 	0185
		BCR 	3H, 0H 			//0568 	2003
		RLR 	35H, 0H 			//0569 	1D35
		RLR 	36H, 0H 			//056A 	1D36
		STR 	3FH 			//056B 	10BF
		LDR 	3FH, 0H 			//056C 	183F
		BTSC 	3H, 2H 			//056D 	2903
		LJUMP 	560H 			//056E 	3D60
		LDWI 	2DH 			//056F 	002D
		STR 	6H 			//0570 	1086
		LDWI 	80H 			//0571 	0080
		ADDFSR 	1H, 1H 		//0572 	0141
		ADDFSR 	1H, 1H 		//0573 	0141
		IORWR 	1H, 1H 		//0574 	1481
		LDWI 	2DH 			//0575 	002D
		ADDFSR 	1H, 1H 		//0576 	0141
		STR 	6H 			//0577 	1086
		LDWI 	30H 			//0578 	0030
		LCALL 	600H 			//0579 	3600
		MOVLP 	5H 			//057A 	0185
		STR 	6H 			//057B 	1086
		LDWI 	80H 			//057C 	0080
		CLRF 	7H 			//057D 	1187
		ADDFSR 	1H, 1H 		//057E 	0141
		ADDFSR 	1H, 1H 		//057F 	0141
		IORWR 	1H, 1H 		//0580 	1481
		LDWI 	30H 			//0581 	0030
		ADDFSR 	1H, 1H 		//0582 	0141
		STR 	6H 			//0583 	1086
		LDWI 	7FH 			//0584 	007F
		LCALL 	600H 			//0585 	3600
		MOVLP 	5H 			//0586 	0185
		CLRF 	3BH 			//0587 	11BB
		CLRF 	3CH 			//0588 	11BC
		CLRF 	3DH 			//0589 	11BD
		CLRF 	3EH 			//058A 	11BE
		SUBWR 	40H, 1H 		//058B 	12C0
		LDWI 	A0H 			//058C 	00A0
		ADDWR 	3FH, 0H 		//058D 	173F
		STR 	33H 			//058E 	10B3
		SUBWR 	40H, 1H 		//058F 	12C0
		LDWI 	20H 			//0590 	0020
		STR 	3FH 			//0591 	10BF
		LDWI 	30H 			//0592 	0030
		LSLF 	3BH, 1H 		//0593 	05BB
		RLR 	3CH, 1H 			//0594 	1DBC
		RLR 	3DH, 1H 			//0595 	1DBD
		RLR 	3EH, 1H 			//0596 	1DBE
		LCALL 	5F5H 			//0597 	35F5
		MOVLP 	5H 			//0598 	0185
		LDWI 	2DH 			//0599 	002D
		STR 	6H 			//059A 	1086
		MOVIW 	0H[1] 			//059B 	0F40
		STR 	37H 			//059C 	10B7
		MOVIW 	1H[1] 			//059D 	0F41
		STR 	38H 			//059E 	10B8
		MOVIW 	2H[1] 			//059F 	0F42
		STR 	39H 			//05A0 	10B9
		MOVIW 	3H[1] 			//05A1 	0F43
		STR 	3AH 			//05A2 	10BA
		LDR 	36H, 0H 			//05A3 	1836
		SUBWR 	3AH, 0H 		//05A4 	123A
		BTSS 	3H, 2H 			//05A5 	2D03
		LJUMP 	5B1H 			//05A6 	3DB1
		LDR 	35H, 0H 			//05A7 	1835
		SUBWR 	39H, 0H 		//05A8 	1239
		BTSS 	3H, 2H 			//05A9 	2D03
		LJUMP 	5B1H 			//05AA 	3DB1
		LDR 	34H, 0H 			//05AB 	1834
		SUBWR 	38H, 0H 		//05AC 	1238
		BTSS 	3H, 2H 			//05AD 	2D03
		LJUMP 	5B1H 			//05AE 	3DB1
		LDR 	33H, 0H 			//05AF 	1833
		SUBWR 	37H, 0H 		//05B0 	1237
		BTSS 	3H, 0H 			//05B1 	2C03
		LJUMP 	5C5H 			//05B2 	3DC5
		LDWI 	30H 			//05B3 	0030
		LCALL 	5F5H 			//05B4 	35F5
		MOVLP 	5H 			//05B5 	0185
		LDWI 	2DH 			//05B6 	002D
		STR 	6H 			//05B7 	1086
		LDR 	33H, 0H 			//05B8 	1833
		SUBWR 	1H, 1H 		//05B9 	1281
		ADDFSR 	1H, 1H 		//05BA 	0141
		LDR 	34H, 0H 			//05BB 	1834
		SUBWFB 	1H, 1H 		//05BC 	0B81
		ADDFSR 	1H, 1H 		//05BD 	0141
		LDR 	35H, 0H 			//05BE 	1835
		SUBWFB 	1H, 1H 		//05BF 	0B81
		ADDFSR 	1H, 1H 		//05C0 	0141
		LDR 	36H, 0H 			//05C1 	1836
		SUBWFB 	1H, 1H 		//05C2 	0B81
		ADDFSR 	1H, 3DH 		//05C3 	017D
		BSR 	3BH, 0H 			//05C4 	243B
		LDWI 	2DH 			//05C5 	002D
		STR 	6H 			//05C6 	1086
		CLRF 	7H 			//05C7 	1187
		LSLF 	1H, 1H 			//05C8 	0581
		ADDFSR 	1H, 1H 		//05C9 	0141
		RLR 	1H, 1H 			//05CA 	1D81
		ADDFSR 	1H, 1H 		//05CB 	0141
		RLR 	1H, 1H 			//05CC 	1D81
		ADDFSR 	1H, 1H 		//05CD 	0141
		RLR 	1H, 1H 			//05CE 	1D81
		DECRSZ 	3FH, 1H 		//05CF 	1BBF
		LJUMP 	592H 			//05D0 	3D92
		BTSS 	40H, 7H 		//05D1 	2FC0
		LJUMP 	5DFH 			//05D2 	3DDF
		LDR 	40H, 0H 			//05D3 	1840
		XORWI 	80H 			//05D4 	0A80
		ADDWI 	9FH 			//05D5 	0E9F
		BTSS 	3H, 0H 			//05D6 	2C03
		LJUMP 	560H 			//05D7 	3D60
		LSRF 	3EH, 1H 		//05D8 	06BE
		RRR 	3DH, 1H 			//05D9 	1CBD
		RRR 	3CH, 1H 			//05DA 	1CBC
		RRR 	3BH, 1H 			//05DB 	1CBB
		INCRSZ 	40H, 1H 		//05DC 	1FC0
		LJUMP 	5D8H 			//05DD 	3DD8
		LJUMP 	5ECH 			//05DE 	3DEC
		LDWI 	20H 			//05DF 	0020
		SUBWR 	40H, 0H 		//05E0 	1240
		BTSC 	3H, 0H 			//05E1 	2803
		LJUMP 	560H 			//05E2 	3D60
		LDR 	40H, 0H 			//05E3 	1840
		BTSC 	3H, 2H 			//05E4 	2903
		LJUMP 	5ECH 			//05E5 	3DEC
		LSLF 	3BH, 1H 		//05E6 	05BB
		RLR 	3CH, 1H 			//05E7 	1DBC
		RLR 	3DH, 1H 			//05E8 	1DBD
		RLR 	3EH, 1H 			//05E9 	1DBE
		DECR 	40H, 1H 		//05EA 	13C0
		LJUMP 	5E3H 			//05EB 	3DE3
		LDR 	3EH, 0H 			//05EC 	183E
		STR 	30H 			//05ED 	10B0
		LDR 	3DH, 0H 			//05EE 	183D
		STR 	2FH 			//05EF 	10AF
		LDR 	3CH, 0H 			//05F0 	183C
		STR 	2EH 			//05F1 	10AE
		LDR 	3BH, 0H 			//05F2 	183B
		STR 	2DH 			//05F3 	10AD
		RET 					//05F4 	1008
		STR 	6H 			//05F5 	1086
		CLRF 	7H 			//05F6 	1187
		MOVIW 	0H[1] 			//05F7 	0F40
		STR 	33H 			//05F8 	10B3
		MOVIW 	1H[1] 			//05F9 	0F41
		STR 	34H 			//05FA 	10B4
		MOVIW 	2H[1] 			//05FB 	0F42
		STR 	35H 			//05FC 	10B5
		MOVIW 	3H[1] 			//05FD 	0F43
		STR 	36H 			//05FE 	10B6
		RET 					//05FF 	1008
		CLRF 	7H 			//0600 	1187
		ADDFSR 	1H, 1H 		//0601 	0141
		ADDFSR 	1H, 1H 		//0602 	0141
		ADDFSR 	1H, 1H 		//0603 	0141
		CLRF 	1H 			//0604 	1181
		RET 					//0605 	1008
		LDR 	2DH, 0H 			//0606 	182D
		STR 	33H 			//0607 	10B3
		LDR 	2EH, 0H 			//0608 	182E
		STR 	34H 			//0609 	10B4
		LDR 	2FH, 0H 			//060A 	182F
		STR 	35H 			//060B 	10B5
		BCR 	3H, 0H 			//060C 	2003
		RLR 	34H, 0H 			//060D 	1D34
		RLR 	35H, 0H 			//060E 	1D35
		STR 	3BH 			//060F 	10BB
		LDR 	3BH, 0H 			//0610 	183B
		BTSS 	3H, 2H 			//0611 	2D03
		LJUMP 	618H 			//0612 	3E18
		CLRF 	2DH 			//0613 	11AD
		CLRF 	2EH 			//0614 	11AE
		CLRF 	2FH 			//0615 	11AF
		CLRF 	30H 			//0616 	11B0
		RET 					//0617 	1008
		LDR 	30H, 0H 			//0618 	1830
		STR 	33H 			//0619 	10B3
		LDR 	31H, 0H 			//061A 	1831
		STR 	34H 			//061B 	10B4
		LDR 	32H, 0H 			//061C 	1832
		STR 	35H 			//061D 	10B5
		BCR 	3H, 0H 			//061E 	2003
		RLR 	34H, 0H 			//061F 	1D34
		RLR 	35H, 0H 			//0620 	1D35
		STR 	3AH 			//0621 	10BA
		LDR 	3AH, 0H 			//0622 	183A
		BTSC 	3H, 2H 			//0623 	2903
		LJUMP 	613H 			//0624 	3E13
		LDWI 	7FH 			//0625 	007F
		BSR 	2EH, 7H 			//0626 	27AE
		CLRF 	2FH 			//0627 	11AF
		BSR 	31H, 7H 			//0628 	27B1
		CLRF 	32H 			//0629 	11B2
		CLRF 	36H 			//062A 	11B6
		CLRF 	37H 			//062B 	11B7
		CLRF 	38H 			//062C 	11B8
		CLRF 	39H 			//062D 	11B9
		SUBWR 	3BH, 1H 		//062E 	12BB
		LDWI 	98H 			//062F 	0098
		ADDWR 	3AH, 0H 		//0630 	173A
		STR 	33H 			//0631 	10B3
		SUBWR 	3BH, 1H 		//0632 	12BB
		LDWI 	18H 			//0633 	0018
		STR 	3AH 			//0634 	10BA
		LSLF 	36H, 1H 		//0635 	05B6
		RLR 	37H, 1H 			//0636 	1DB7
		RLR 	38H, 1H 			//0637 	1DB8
		RLR 	39H, 1H 			//0638 	1DB9
		LDR 	32H, 0H 			//0639 	1832
		SUBWR 	2FH, 0H 		//063A 	122F
		BTSS 	3H, 2H 			//063B 	2D03
		LJUMP 	643H 			//063C 	3E43
		LDR 	31H, 0H 			//063D 	1831
		SUBWR 	2EH, 0H 		//063E 	122E
		BTSS 	3H, 2H 			//063F 	2D03
		LJUMP 	643H 			//0640 	3E43
		LDR 	30H, 0H 			//0641 	1830
		SUBWR 	2DH, 0H 		//0642 	122D
		BTSS 	3H, 0H 			//0643 	2C03
		LJUMP 	64CH 			//0644 	3E4C
		LDR 	30H, 0H 			//0645 	1830
		SUBWR 	2DH, 1H 		//0646 	12AD
		LDR 	31H, 0H 			//0647 	1831
		SUBWFB 	2EH, 1H 		//0648 	0BAE
		LDR 	32H, 0H 			//0649 	1832
		SUBWFB 	2FH, 1H 		//064A 	0BAF
		BSR 	36H, 0H 			//064B 	2436
		LSLF 	2DH, 1H 		//064C 	05AD
		RLR 	2EH, 1H 			//064D 	1DAE
		RLR 	2FH, 1H 			//064E 	1DAF
		DECRSZ 	3AH, 1H 		//064F 	1BBA
		LJUMP 	635H 			//0650 	3E35
		BTSS 	3BH, 7H 		//0651 	2FBB
		LJUMP 	65FH 			//0652 	3E5F
		LDR 	3BH, 0H 			//0653 	183B
		XORWI 	80H 			//0654 	0A80
		ADDWI 	97H 			//0655 	0E97
		BTSS 	3H, 0H 			//0656 	2C03
		LJUMP 	613H 			//0657 	3E13
		LSRF 	39H, 1H 		//0658 	06B9
		RRR 	38H, 1H 			//0659 	1CB8
		RRR 	37H, 1H 			//065A 	1CB7
		RRR 	36H, 1H 			//065B 	1CB6
		INCRSZ 	3BH, 1H 		//065C 	1FBB
		LJUMP 	658H 			//065D 	3E58
		LJUMP 	66CH 			//065E 	3E6C
		LDWI 	18H 			//065F 	0018
		SUBWR 	3BH, 0H 		//0660 	123B
		BTSC 	3H, 0H 			//0661 	2803
		LJUMP 	613H 			//0662 	3E13
		LDR 	3BH, 0H 			//0663 	183B
		BTSC 	3H, 2H 			//0664 	2903
		LJUMP 	66CH 			//0665 	3E6C
		LSLF 	36H, 1H 		//0666 	05B6
		RLR 	37H, 1H 			//0667 	1DB7
		RLR 	38H, 1H 			//0668 	1DB8
		RLR 	39H, 1H 			//0669 	1DB9
		DECR 	3BH, 1H 		//066A 	13BB
		LJUMP 	663H 			//066B 	3E63
		LDR 	39H, 0H 			//066C 	1839
		STR 	30H 			//066D 	10B0
		LDR 	38H, 0H 			//066E 	1838
		STR 	2FH 			//066F 	10AF
		LDR 	37H, 0H 			//0670 	1837
		STR 	2EH 			//0671 	10AE
		LDR 	36H, 0H 			//0672 	1836
		STR 	2DH 			//0673 	10AD
		RET 					//0674 	1008
		CLRF 	7DH 			//0675 	11FD
		BTSS 	26H, 7H 		//0676 	2FA6
		LJUMP 	67FH 			//0677 	3E7F
		COMR 	25H, 1H 		//0678 	19A5
		COMR 	26H, 1H 		//0679 	19A6
		INCR 	25H, 1H 		//067A 	1AA5
		BTSC 	3H, 2H 			//067B 	2903
		INCR 	26H, 1H 		//067C 	1AA6
		CLRF 	7DH 			//067D 	11FD
		INCR 	7DH, 1H 		//067E 	1AFD
		LDR 	25H, 0H 			//067F 	1825
		STR 	70H 			//0680 	10F0
		LDR 	26H, 0H 			//0681 	1826
		STR 	71H 			//0682 	10F1
		LDWI 	8EH 			//0683 	008E
		CLRF 	72H 			//0684 	11F2
		STR 	73H 			//0685 	10F3
		LDR 	7DH, 0H 			//0686 	187D
		STR 	74H 			//0687 	10F4
		LCALL 	690H 			//0688 	3690
		LDR 	70H, 0H 			//0689 	1870
		STR 	25H 			//068A 	10A5
		LDR 	71H, 0H 			//068B 	1871
		STR 	26H 			//068C 	10A6
		LDR 	72H, 0H 			//068D 	1872
		STR 	27H 			//068E 	10A7
		RET 					//068F 	1008
		LDR 	73H, 0H 			//0690 	1873
		BTSC 	3H, 2H 			//0691 	2903
		LJUMP 	698H 			//0692 	3E98
		LDR 	72H, 0H 			//0693 	1872
		IORWR 	71H, 0H 		//0694 	1471
		IORWR 	70H, 0H 		//0695 	1470
		BTSS 	3H, 2H 			//0696 	2D03
		LJUMP 	6A0H 			//0697 	3EA0
		CLRF 	70H 			//0698 	11F0
		CLRF 	71H 			//0699 	11F1
		CLRF 	72H 			//069A 	11F2
		RET 					//069B 	1008
		INCR 	73H, 1H 		//069C 	1AF3
		LSRF 	72H, 1H 		//069D 	06F2
		RRR 	71H, 1H 			//069E 	1CF1
		RRR 	70H, 1H 			//069F 	1CF0
		LDWI 	FEH 			//06A0 	00FE
		ANDWR 	72H, 0H 		//06A1 	1572
		BTSC 	3H, 2H 			//06A2 	2903
		LJUMP 	6AEH 			//06A3 	3EAE
		LJUMP 	69CH 			//06A4 	3E9C
		INCR 	73H, 1H 		//06A5 	1AF3
		INCR 	70H, 1H 		//06A6 	1AF0
		BTSC 	3H, 2H 			//06A7 	2903
		INCR 	71H, 1H 		//06A8 	1AF1
		BTSC 	3H, 2H 			//06A9 	2903
		INCR 	72H, 1H 		//06AA 	1AF2
		LSRF 	72H, 1H 		//06AB 	06F2
		RRR 	71H, 1H 			//06AC 	1CF1
		RRR 	70H, 1H 			//06AD 	1CF0
		LDWI 	FFH 			//06AE 	00FF
		ANDWR 	72H, 0H 		//06AF 	1572
		BTSC 	3H, 2H 			//06B0 	2903
		LJUMP 	6BBH 			//06B1 	3EBB
		LJUMP 	6A5H 			//06B2 	3EA5
		LDWI 	2H 			//06B3 	0002
		SUBWR 	73H, 0H 		//06B4 	1273
		BTSS 	3H, 0H 			//06B5 	2C03
		LJUMP 	6BDH 			//06B6 	3EBD
		DECR 	73H, 1H 		//06B7 	13F3
		LSLF 	70H, 1H 		//06B8 	05F0
		RLR 	71H, 1H 			//06B9 	1DF1
		RLR 	72H, 1H 			//06BA 	1DF2
		BTSS 	71H, 7H 		//06BB 	2FF1
		LJUMP 	6B3H 			//06BC 	3EB3
		BTSS 	73H, 0H 		//06BD 	2C73
		BCR 	71H, 7H 			//06BE 	23F1
		LSRF 	73H, 1H 		//06BF 	06F3
		LDR 	73H, 0H 			//06C0 	1873
		STR 	77H 			//06C1 	10F7
		CLRF 	76H 			//06C2 	11F6
		CLRF 	75H 			//06C3 	11F5
		LDR 	75H, 0H 			//06C4 	1875
		IORWR 	70H, 1H 		//06C5 	14F0
		LDR 	76H, 0H 			//06C6 	1876
		IORWR 	71H, 1H 		//06C7 	14F1
		LDR 	77H, 0H 			//06C8 	1877
		IORWR 	72H, 1H 		//06C9 	14F2
		LDR 	74H, 0H 			//06CA 	1874
		BTSS 	3H, 2H 			//06CB 	2D03
		BSR 	72H, 7H 			//06CC 	27F2
		RET 					//06CD 	1008

		//;NFB.C: 138: OSCCON=0B01110001;
		LDWI 	71H 			//06CE 	0071
		MOVLB 	1H 			//06CF 	1021
		STR 	19H 			//06D0 	1099

		//;NFB.C: 140: INTCON=0;
		CLRF 	BH 			//06D1 	118B

		//;NFB.C: 142: PORTA=0B00000000;
		MOVLB 	0H 			//06D2 	1020
		CLRF 	CH 			//06D3 	118C

		//;NFB.C: 143: PORTB=0B00000000;
		CLRF 	DH 			//06D4 	118D

		//;NFB.C: 144: PORTC=0B00000000;
		CLRF 	EH 			//06D5 	118E

		//;NFB.C: 146: WPUA=0B00000000;
		MOVLB 	3H 			//06D6 	1023
		CLRF 	CH 			//06D7 	118C

		//;NFB.C: 147: WPUB=0B00010000;
		LDWI 	10H 			//06D8 	0010
		STR 	DH 			//06D9 	108D

		//;NFB.C: 148: WPUC=0B00000000;
		CLRF 	EH 			//06DA 	118E

		//;NFB.C: 150: WPDA=0B01000000;
		LDWI 	40H 			//06DB 	0040
		MOVLB 	4H 			//06DC 	1024
		STR 	CH 			//06DD 	108C

		//;NFB.C: 151: WPDB=0B00000000;
		CLRF 	DH 			//06DE 	118D

		//;NFB.C: 152: WPDC=0B00000000;
		CLRF 	EH 			//06DF 	118E

		//;NFB.C: 154: TRISA=0B11111100;
		LDWI 	FCH 			//06E0 	00FC
		MOVLB 	1H 			//06E1 	1021
		STR 	CH 			//06E2 	108C

		//;NFB.C: 155: TRISB=0B00110010;
		LDWI 	32H 			//06E3 	0032
		STR 	DH 			//06E4 	108D

		//;NFB.C: 156: TRISC=0B00000001;
		LDWI 	1H 			//06E5 	0001
		STR 	EH 			//06E6 	108E

		//;NFB.C: 158: PSRC0=0B11111111;
		LDWI 	FFH 			//06E7 	00FF
		MOVLB 	2H 			//06E8 	1022
		STR 	1AH 			//06E9 	109A

		//;NFB.C: 159: PSRC1=0B11111111;
		STR 	1BH 			//06EA 	109B

		//;NFB.C: 160: PSRC2=0B00001111;
		LDWI 	FH 			//06EB 	000F
		STR 	1CH 			//06EC 	109C

		//;NFB.C: 162: PSINK0=0B11111111;
		LDWI 	FFH 			//06ED 	00FF
		MOVLB 	3H 			//06EE 	1023
		STR 	1AH 			//06EF 	109A

		//;NFB.C: 163: PSINK1=0B11111111;
		STR 	1BH 			//06F0 	109B

		//;NFB.C: 164: PSINK2=0B00000011;
		LDWI 	3H 			//06F1 	0003
		STR 	1CH 			//06F2 	109C

		//;NFB.C: 166: ANSELA=0B00000000;
		CLRF 	17H 			//06F3 	1197
		RET 					//06F4 	1008
		LDR 	2EH, 0H 			//06F5 	182E
		STR 	31H 			//06F6 	10B1
		LDR 	2DH, 0H 			//06F7 	182D
		STR 	30H 			//06F8 	10B0
		LDR 	30H, 0H 			//06F9 	1830
		STR 	4H 			//06FA 	1084
		LDR 	31H, 0H 			//06FB 	1831
		STR 	5H 			//06FC 	1085
		MOVIW 	FSR0++ 		//06FD 	1012
		BTSC 	3H, 2H 			//06FE 	2903
		LJUMP 	704H 			//06FF 	3F04
		INCR 	30H, 1H 		//0700 	1AB0
		BTSC 	3H, 2H 			//0701 	2903
		INCR 	31H, 1H 		//0702 	1AB1
		LJUMP 	6F9H 			//0703 	3EF9
		LDR 	2DH, 0H 			//0704 	182D
		SUBWR 	30H, 0H 		//0705 	1230
		STR 	2DH 			//0706 	10AD
		LDR 	2EH, 0H 			//0707 	182E
		SUBWFB 	31H, 0H 		//0708 	0B31
		STR 	2EH 			//0709 	10AE
		RET 					//070A 	1008

		//;NFB.C: 203: AFP0 = 0B01000000;
		LDWI 	40H 			//070B 	0040
		MOVLB 	3H 			//070C 	1023
		STR 	1EH 			//070D 	109E

		//;NFB.C: 204: AFP1 = 0B01000000;
		STR 	1FH 			//070E 	109F

		//;NFB.C: 205: PCKEN|=0B00100000;
		MOVLB 	1H 			//070F 	1021
		BSR 	1AH, 5H 			//0710 	269A

		//;NFB.C: 206: UR1IER=0B00000001;
		LDWI 	1H 			//0711 	0001
		MOVLB 	9H 			//0712 	1029
		STR 	EH 			//0713 	108E

		//;NFB.C: 207: UR1LCR=0B00000001;
		STR 	FH 			//0714 	108F

		//;NFB.C: 208: UR1MCR=0B00011000;
		LDWI 	18H 			//0715 	0018
		STR 	11H 			//0716 	1091

		//;NFB.C: 210: UR1DLL=104;
		LDWI 	68H 			//0717 	0068
		STR 	14H 			//0718 	1094

		//;NFB.C: 211: UR1DLH=0;
		CLRF 	15H 			//0719 	1195

		//;NFB.C: 212: UR1TCF=1;
		BSR 	1CH, 0H 			//071A 	241C

		//;NFB.C: 213: INTCON=0B11000000;
		LDWI 	C0H 			//071B 	00C0
		STR 	BH 			//071C 	108B
		RET 					//071D 	1008

		//;NFB.C: 314: PCKEN|=0B00000001;
		BSR 	1AH, 0H 			//071E 	241A

		//;NFB.C: 316: ANSELA|=0B00010111;
		LDWI 	17H 			//071F 	0017
		MOVLB 	3H 			//0720 	1023
		IORWR 	17H, 1H 		//0721 	1497

		//;NFB.C: 319: ADCON0=0B00000000;
		MOVLB 	1H 			//0722 	1021
		CLRF 	1DH 			//0723 	119D

		//;NFB.C: 325: ADCON1=0B11100100;
		LDWI 	E4H 			//0724 	00E4
		STR 	1EH 			//0725 	109E

		//;NFB.C: 331: ADCON2=0B01000000;
		LDWI 	40H 			//0726 	0040
		STR 	1FH 			//0727 	109F

		//;NFB.C: 334: ADCON3=0B00000000;
		MOVLB 	8H 			//0728 	1028
		CLRF 	1AH 			//0729 	119A

		//;NFB.C: 335: ADDLY=0B00000000;
		MOVLB 	0H 			//072A 	1020
		CLRF 	1FH 			//072B 	119F

		//;NFB.C: 336: ADCMPH=0B00000000;
		MOVLB 	8H 			//072C 	1028
		CLRF 	1BH 			//072D 	119B

		//;NFB.C: 337: ADON=1;
		MOVLB 	1H 			//072E 	1021
		BSR 	1DH, 0H 			//072F 	241D
		RET 					//0730 	1008
		STR 	75H 			//0731 	10F5
		STR 	74H 			//0732 	10F4
		LDWI 	1H 			//0733 	0001
		SUBWR 	72H, 1H 		//0734 	12F2
		LDWI 	0H 			//0735 	0000
		SUBWFB 	73H, 1H 		//0736 	0BF3
		INCRSZ 	72H, 0H 		//0737 	1F72
		LJUMP 	73CH 			//0738 	3F3C
		INCR 	73H, 0H 		//0739 	1A73
		BTSC 	3H, 2H 			//073A 	2903
		RET 					//073B 	1008
		LDR 	74H, 0H 			//073C 	1874
		STR 	6H 			//073D 	1086
		LDWI 	2H 			//073E 	0002
		STR 	7H 			//073F 	1087
		LDR 	70H, 0H 			//0740 	1870
		STR 	1H 			//0741 	1081
		INCR 	74H, 1H 		//0742 	1AF4
		LJUMP 	733H 			//0743 	3F33

		//;NFB.C: 294: PCKEN|=0B00000100;
		MOVLB 	1H 			//0744 	1021
		BSR 	1AH, 2H 			//0745 	251A

		//;NFB.C: 295: CKOCON=0B00100000;
		LDWI 	20H 			//0746 	0020
		STR 	15H 			//0747 	1095

		//;NFB.C: 296: TCKSRC=0B00000000;
		MOVLB 	6H 			//0748 	1026
		CLRF 	1FH 			//0749 	119F

		//;NFB.C: 298: TIM2CR1=0B10000101;
		LDWI 	85H 			//074A 	0085
		STR 	CH 			//074B 	108C

		//;NFB.C: 300: TIM2IER=0B00000001;
		LDWI 	1H 			//074C 	0001
		STR 	DH 			//074D 	108D

		//;NFB.C: 302: TIM2ARRH=0x3e;
		LDWI 	3EH 			//074E 	003E
		STR 	19H 			//074F 	1099

		//;NFB.C: 303: TIM2ARRL=0x80;
		LDWI 	80H 			//0750 	0080
		STR 	1AH 			//0751 	109A
		RET 					//0752 	1008

		//;NFB.C: 223: EPS0=0B00000000;
		MOVLB 	2H 			//0753 	1022
		CLRF 	18H 			//0754 	1198

		//;NFB.C: 224: EPS1=0B00000001;
		LDWI 	1H 			//0755 	0001
		STR 	19H 			//0756 	1099

		//;NFB.C: 225: ITYPE0=0B00000000;
		CLRF 	1EH 			//0757 	119E

		//;NFB.C: 226: ITYPE1=0B00000010;
		LDWI 	2H 			//0758 	0002
		STR 	1FH 			//0759 	109F

		//;NFB.C: 227: EPIE0=0B00010000;
		LDWI 	10H 			//075A 	0010
		MOVLB 	1H 			//075B 	1021
		STR 	14H 			//075C 	1094

		//;NFB.C: 228: INTCON=0B11000000;
		LDWI 	C0H 			//075D 	00C0
		STR 	BH 			//075E 	108B
		RET 					//075F 	1008

		//;NFB.C: 465: PA0=0;
		MOVLB 	0H 			//0760 	1020
		BCR 	CH, 0H 			//0761 	200C

		//;NFB.C: 466: PB0=0;
		BCR 	DH, 0H 			//0762 	200D

		//;NFB.C: 467: PA1=1;
		BSR 	CH, 1H 			//0763 	248C

		//;NFB.C: 468: PB2=1;
		BSR 	DH, 2H 			//0764 	250D

		//;NFB.C: 469: PB3=1;
		BSR 	DH, 3H 			//0765 	258D

		//;NFB.C: 470: PC1=1;
		BSR 	EH, 1H 			//0766 	248E

		//;NFB.C: 471: PB7=1;
		BSR 	DH, 7H 			//0767 	278D
		RET 					//0768 	1008

		//;NFB.C: 365: OP0CR0 = 0B00111011;
		LDWI 	3BH 			//0769 	003B
		MOVLB 	1FH 			//076A 	103F
		STR 	FH 			//076B 	108F

		//;NFB.C: 366: OP0CFG = 0B00010001;
		LDWI 	11H 			//076C 	0011
		STR 	11H 			//076D 	1091

		//;NFB.C: 367: AN4SELB = 1;
		MOVLB 	8H 			//076E 	1028
		BSR 	1AH, 2H 			//076F 	251A
		RET 					//0770 	1008
		CLRWDT 			//0771 	1064
		CLRF 	0H 			//0772 	1180
		ADDFSR 	0H, 1H 		//0773 	0101
		ORG		0774H
		DECRSZ 	9H, 1H 		//0774 	1B89
		LJUMP 	772H 			//0775 	3F72
		RETW 	0H 			//0776 	0400
		ORG		0834H
		LDWI 	C5H 			//0834 	00C5
		MOVLB 	2H 			//0835 	1022
		STR 	23H 			//0836 	10A3
		LCALL 	67BH 			//0837 	367B
		MOVLP 	8H 			//0838 	0188
		LDR 	37H, 0H 			//0839 	1837
		BTSC 	3H, 2H 			//083A 	2903
		LJUMP 	503H 			//083B 	3D03
		LDWI 	25H 			//083C 	0025
		XORWR 	37H, 0H 		//083D 	1637
		BTSC 	3H, 2H 			//083E 	2903
		LJUMP 	4AH 			//083F 	384A
		LCALL 	661H 			//0840 	3661
		MOVLP 	8H 			//0841 	0188
		MOVLB 	2H 			//0842 	1022
		LDR 	37H, 0H 			//0843 	1837
		STR 	1H 			//0844 	1081
		MOVLB 	1H 			//0845 	1021
		INCR 	41H, 1H 		//0846 	1AC1
		BTSC 	3H, 2H 			//0847 	2903
		INCR 	42H, 1H 		//0848 	1AC2
		LJUMP 	37H 			//0849 	3837
		CLRF 	30H 			//084A 	11B0
		CLRF 	31H 			//084B 	11B1
		CLRF 	2CH 			//084C 	11AC
		CLRF 	2DH 			//084D 	11AD
		LJUMP 	55H 			//084E 	3855
		MOVLB 	2H 			//084F 	1022
		BSR 	2CH, 2H 			//0850 	252C
		MOVLB 	1H 			//0851 	1021
		INCR 	43H, 1H 		//0852 	1AC3
		BTSC 	3H, 2H 			//0853 	2903
		INCR 	44H, 1H 		//0854 	1AC4
		MOVLB 	1H 			//0855 	1021
		LCALL 	6ABH 			//0856 	36AB
		MOVLP 	8H 			//0857 	0188
		XORWI 	30H 			//0858 	0A30
		BTSC 	3H, 2H 			//0859 	2903
		LJUMP 	4FH 			//085A 	384F
		LJUMP 	5CH 			//085B 	385C
		LCALL 	6ABH 			//085C 	36AB
		MOVLP 	8H 			//085D 	0188
		LCALL 	5BDH 			//085E 	35BD
		MOVLP 	8H 			//085F 	0188
		BTSS 	3H, 0H 			//0860 	2C03
		LJUMP 	95H 			//0861 	3895
		MOVLB 	2H 			//0862 	1022
		CLRF 	30H 			//0863 	11B0
		CLRF 	31H 			//0864 	11B1
		LDWI 	AH 			//0865 	000A
		MOVLB 	0H 			//0866 	1020
		STR 	3BH 			//0867 	10BB
		CLRF 	3CH 			//0868 	11BC
		MOVLB 	2H 			//0869 	1022
		LDR 	31H, 0H 			//086A 	1831
		MOVLB 	0H 			//086B 	1020
		STR 	3EH 			//086C 	10BE
		MOVLB 	2H 			//086D 	1022
		LDR 	30H, 0H 			//086E 	1830
		MOVLB 	0H 			//086F 	1020
		STR 	3DH 			//0870 	10BD
		MOVLP 	1BH 			//0871 	019B
		LCALL 	3B7H 			//0872 	33B7
		MOVLP 	8H 			//0873 	0188
		LDR 	3CH, 0H 			//0874 	183C
		MOVLB 	2H 			//0875 	1022
		STR 	31H 			//0876 	10B1
		MOVLB 	0H 			//0877 	1020
		LDR 	3BH, 0H 			//0878 	183B
		MOVLB 	2H 			//0879 	1022
		STR 	30H 			//087A 	10B0
		MOVLB 	1H 			//087B 	1021
		LCALL 	6ABH 			//087C 	36AB
		MOVLP 	8H 			//087D 	0188
		ADDWI 	D0H 			//087E 	0ED0
		STR 	53H 			//087F 	10D3
		LDWI 	FFH 			//0880 	00FF
		BTSC 	3H, 0H 			//0881 	2803
		LDWI 	0H 			//0882 	0000
		STR 	54H 			//0883 	10D4
		LDR 	53H, 0H 			//0884 	1853
		MOVLB 	2H 			//0885 	1022
		ADDWR 	30H, 1H 		//0886 	17B0
		MOVLB 	1H 			//0887 	1021
		LDR 	54H, 0H 			//0888 	1854
		MOVLB 	2H 			//0889 	1022
		ADDWFC 	31H, 1H 		//088A 	0DB1
		MOVLB 	1H 			//088B 	1021
		INCR 	43H, 1H 		//088C 	1AC3
		BTSC 	3H, 2H 			//088D 	2903
		INCR 	44H, 1H 		//088E 	1AC4
		LCALL 	6ABH 			//088F 	36AB
		MOVLP 	8H 			//0890 	0188
		LCALL 	5BDH 			//0891 	35BD
		MOVLP 	8H 			//0892 	0188
		BTSC 	3H, 0H 			//0893 	2803
		LJUMP 	65H 			//0894 	3865
		MOVLB 	1H 			//0895 	1021
		LDR 	43H, 0H 			//0896 	1843
		STR 	4H 			//0897 	1084
		LDR 	44H, 0H 			//0898 	1844
		STR 	5H 			//0899 	1085
		MOVIW 	FSR0++ 		//089A 	1012
		XORWI 	2EH 			//089B 	0A2E
		BTSS 	3H, 2H 			//089C 	2D03
		LJUMP 	D9H 			//089D 	38D9
		MOVLB 	2H 			//089E 	1022
		BSR 	2DH, 6H 			//089F 	272D
		MOVLB 	1H 			//08A0 	1021
		INCR 	43H, 1H 		//08A1 	1AC3
		BTSC 	3H, 2H 			//08A2 	2903
		INCR 	44H, 1H 		//08A3 	1AC4
		MOVLB 	2H 			//08A4 	1022
		CLRF 	35H 			//08A5 	11B5
		CLRF 	36H 			//08A6 	11B6
		MOVLB 	1H 			//08A7 	1021
		LCALL 	6ABH 			//08A8 	36AB
		MOVLP 	8H 			//08A9 	0188
		LCALL 	5BDH 			//08AA 	35BD
		MOVLP 	8H 			//08AB 	0188
		BTSS 	3H, 0H 			//08AC 	2C03
		LJUMP 	E0H 			//08AD 	38E0
		MOVLB 	1H 			//08AE 	1021
		LCALL 	6ABH 			//08AF 	36AB
		STR 	53H 			//08B0 	10D3
		CLRF 	54H 			//08B1 	11D4
		MOVLB 	2H 			//08B2 	1022
		LDR 	36H, 0H 			//08B3 	1836
		MOVLB 	0H 			//08B4 	1020
		STR 	3CH 			//08B5 	10BC
		MOVLB 	2H 			//08B6 	1022
		LDR 	35H, 0H 			//08B7 	1835
		MOVLB 	0H 			//08B8 	1020
		STR 	3BH 			//08B9 	10BB
		LDWI 	AH 			//08BA 	000A
		STR 	3DH 			//08BB 	10BD
		CLRF 	3EH 			//08BC 	11BE
		MOVLP 	1BH 			//08BD 	019B
		LCALL 	3B7H 			//08BE 	33B7
		MOVLP 	8H 			//08BF 	0188
		MOVLB 	1H 			//08C0 	1021
		LDR 	53H, 0H 			//08C1 	1853
		MOVLB 	0H 			//08C2 	1020
		ADDWR 	3BH, 0H 		//08C3 	173B
		MOVLB 	1H 			//08C4 	1021
		STR 	55H 			//08C5 	10D5
		LDR 	54H, 0H 			//08C6 	1854
		MOVLB 	0H 			//08C7 	1020
		ADDWFC 	3CH, 0H 		//08C8 	0D3C
		MOVLB 	1H 			//08C9 	1021
		STR 	56H 			//08CA 	10D6
		LDR 	55H, 0H 			//08CB 	1855
		ADDWI 	D0H 			//08CC 	0ED0
		MOVLB 	2H 			//08CD 	1022
		STR 	35H 			//08CE 	10B5
		LDWI 	FFH 			//08CF 	00FF
		MOVLB 	1H 			//08D0 	1021
		ADDWFC 	56H, 0H 		//08D1 	0D56
		MOVLB 	2H 			//08D2 	1022
		STR 	36H 			//08D3 	10B6
		MOVLB 	1H 			//08D4 	1021
		INCR 	43H, 1H 		//08D5 	1AC3
		BTSC 	3H, 2H 			//08D6 	2903
		INCR 	44H, 1H 		//08D7 	1AC4
		LJUMP 	A7H 			//08D8 	38A7
		MOVLB 	2H 			//08D9 	1022
		CLRF 	35H 			//08DA 	11B5
		CLRF 	36H 			//08DB 	11B6
		BSR 	2DH, 4H 			//08DC 	262D
		LJUMP 	E0H 			//08DD 	38E0
		BSR 	2DH, 2H 			//08DE 	252D
		LJUMP 	EFH 			//08DF 	38EF
		LCALL 	67BH 			//08E0 	367B
		MOVLP 	8H 			//08E1 	0188
		XORWI 	0H 			//08E2 	0A00
		BTSC 	3H, 2H 			//08E3 	2903
		LJUMP 	503H 			//08E4 	3D03
		XORWI 	64H 			//08E5 	0A64
		BTSC 	3H, 2H 			//08E6 	2903
		LJUMP 	EFH 			//08E7 	38EF
		XORWI 	2H 			//08E8 	0A02
		BTSC 	3H, 2H 			//08E9 	2903
		LJUMP 	DEH 			//08EA 	38DE
		XORWI 	FH 			//08EB 	0A0F
		BTSC 	3H, 2H 			//08EC 	2903
		LJUMP 	EFH 			//08ED 	38EF
		LJUMP 	37H 			//08EE 	3837
		MOVLB 	1H 			//08EF 	1021
		LDWI 	7H 			//08F0 	0007
		CLRF 	53H 			//08F1 	11D3
		MOVLB 	2H 			//08F2 	1022
		ANDWR 	2DH, 0H 		//08F3 	152D
		MOVLB 	1H 			//08F4 	1021
		STR 	54H 			//08F5 	10D4
		LDR 	53H, 0H 			//08F6 	1853
		IORWR 	54H, 0H 		//08F7 	1454
		BTSC 	3H, 2H 			//08F8 	2903
		LJUMP 	3E5H 			//08F9 	3BE5
		MOVLB 	2H 			//08FA 	1022
		BTSS 	2DH, 4H 		//08FB 	2E2D
		LJUMP 	100H 			//08FC 	3900
		LDWI 	6H 			//08FD 	0006
		STR 	35H 			//08FE 	10B5
		CLRF 	36H 			//08FF 	11B6
		LDR 	23H, 0H 			//0900 	1823
		STR 	6H 			//0901 	1086
		CLRF 	7H 			//0902 	1187
		MOVIW 	0H[1] 			//0903 	0F40
		STR 	32H 			//0904 	10B2
		MOVIW 	1H[1] 			//0905 	0F41
		STR 	33H 			//0906 	10B3
		MOVIW 	2H[1] 			//0907 	0F42
		STR 	34H 			//0908 	10B4
		LDWI 	3H 			//0909 	0003
		ADDWR 	23H, 1H 		//090A 	17A3
		LDR 	32H, 0H 			//090B 	1832
		MOVLB 	0H 			//090C 	1020
		STR 	3FH 			//090D 	10BF
		MOVLB 	2H 			//090E 	1022
		LDR 	33H, 0H 			//090F 	1833
		MOVLB 	0H 			//0910 	1020
		STR 	40H 			//0911 	10C0
		MOVLB 	2H 			//0912 	1022
		LDR 	34H, 0H 			//0913 	1834
		MOVLB 	0H 			//0914 	1020
		LCALL 	6F9H 			//0915 	36F9
		MOVLP 	8H 			//0916 	0188
		LCALL 	506H 			//0917 	3506
		MOVLP 	8H 			//0918 	0188
		BTSC 	3H, 0H 			//0919 	2803
		LJUMP 	136H 			//091A 	3936
		MOVLB 	2H 			//091B 	1022
		LDR 	32H, 0H 			//091C 	1832
		MOVLB 	0H 			//091D 	1020
		STR 	2DH 			//091E 	10AD
		MOVLB 	2H 			//091F 	1022
		LDR 	33H, 0H 			//0920 	1833
		MOVLB 	0H 			//0921 	1020
		STR 	2EH 			//0922 	10AE
		MOVLB 	2H 			//0923 	1022
		LDR 	34H, 0H 			//0924 	1834
		MOVLB 	0H 			//0925 	1020
		STR 	2FH 			//0926 	10AF
		LCALL 	5CCH 			//0927 	35CC
		MOVLP 	8H 			//0928 	0188
		LDR 	2DH, 0H 			//0929 	182D
		MOVLB 	2H 			//092A 	1022
		STR 	32H 			//092B 	10B2
		MOVLB 	0H 			//092C 	1020
		LDR 	2EH, 0H 			//092D 	182E
		MOVLB 	2H 			//092E 	1022
		STR 	33H 			//092F 	10B3
		MOVLB 	0H 			//0930 	1020
		LDR 	2FH, 0H 			//0931 	182F
		MOVLB 	2H 			//0932 	1022
		STR 	34H 			//0933 	10B4
		LDWI 	3H 			//0934 	0003
		IORWR 	2CH, 1H 		//0935 	14AC
		MOVLB 	2H 			//0936 	1022
		CLRF 	2EH 			//0937 	11AE
		CLRF 	2FH 			//0938 	11AF
		LDR 	34H, 0H 			//0939 	1834
		IORWR 	33H, 0H 		//093A 	1433
		IORWR 	32H, 0H 		//093B 	1432
		BTSC 	3H, 2H 			//093C 	2903
		LJUMP 	1D4H 			//093D 	39D4
		LDWI 	32H 			//093E 	0032
		STR 	6H 			//093F 	1086
		LDWI 	1H 			//0940 	0001
		STR 	7H 			//0941 	1087
		LCALL 	6F3H 			//0942 	36F3
		MOVLP 	8H 			//0943 	0188
		MOVIW 	2H[1] 			//0944 	0F42
		STR 	55H 			//0945 	10D5
		MOVIW 	3H[1] 			//0946 	0F43
		STR 	56H 			//0947 	10D6
		LDWI 	FH 			//0948 	000F
		LSRF 	56H, 1H 		//0949 	06D6
		RRR 	55H, 1H 			//094A 	1CD5
		RRR 	54H, 1H 			//094B 	1CD4
		RRR 	53H, 1H 			//094C 	1CD3
		DECRSZ 	9H, 1H 		//094D 	1B89
		LJUMP 	149H 			//094E 	3949
		LDR 	54H, 0H 			//094F 	1854
		MOVLB 	2H 			//0950 	1022
		STR 	2FH 			//0951 	10AF
		MOVLB 	1H 			//0952 	1021
		LDR 	53H, 0H 			//0953 	1853
		MOVLB 	2H 			//0954 	1022
		STR 	2EH 			//0955 	10AE
		LDWI 	82H 			//0956 	0082
		CLRF 	2FH 			//0957 	11AF
		ADDWR 	2EH, 1H 		//0958 	17AE
		BTSS 	3H, 0H 			//0959 	2C03
		DECR 	2FH, 1H 		//095A 	13AF
		LDWI 	FFH 			//095B 	00FF
		ADDWR 	2EH, 1H 		//095C 	17AE
		BTSS 	3H, 0H 			//095D 	2C03
		DECR 	2FH, 1H 		//095E 	13AF
		LDWI 	3H 			//095F 	0003
		MOVLB 	0H 			//0960 	1020
		STR 	3BH 			//0961 	10BB
		CLRF 	3CH 			//0962 	11BC
		MOVLB 	2H 			//0963 	1022
		LDR 	2FH, 0H 			//0964 	182F
		MOVLB 	0H 			//0965 	1020
		STR 	3EH 			//0966 	10BE
		MOVLB 	2H 			//0967 	1022
		LDR 	2EH, 0H 			//0968 	182E
		MOVLB 	0H 			//0969 	1020
		STR 	3DH 			//096A 	10BD
		MOVLP 	1BH 			//096B 	019B
		LCALL 	3B7H 			//096C 	33B7
		MOVLP 	8H 			//096D 	0188
		LDR 	3CH, 0H 			//096E 	183C
		MOVLB 	2H 			//096F 	1022
		STR 	2FH 			//0970 	10AF
		MOVLB 	0H 			//0971 	1020
		LDR 	3BH, 0H 			//0972 	183B
		MOVLB 	2H 			//0973 	1022
		STR 	2EH 			//0974 	10AE
		LDWI 	AH 			//0975 	000A
		MOVLB 	0H 			//0976 	1020
		STR 	33H 			//0977 	10B3
		CLRF 	34H 			//0978 	11B4
		MOVLB 	2H 			//0979 	1022
		LDR 	2FH, 0H 			//097A 	182F
		MOVLB 	0H 			//097B 	1020
		STR 	36H 			//097C 	10B6
		MOVLB 	2H 			//097D 	1022
		LDR 	2EH, 0H 			//097E 	182E
		MOVLB 	0H 			//097F 	1020
		STR 	35H 			//0980 	10B5
		MOVLP 	1BH 			//0981 	019B
		LCALL 	3CCH 			//0982 	33CC
		MOVLP 	8H 			//0983 	0188
		LDR 	34H, 0H 			//0984 	1834
		MOVLB 	2H 			//0985 	1022
		STR 	2FH 			//0986 	10AF
		MOVLB 	0H 			//0987 	1020
		LDR 	33H, 0H 			//0988 	1833
		MOVLB 	2H 			//0989 	1022
		STR 	2EH 			//098A 	10AE
		BTSS 	2FH, 7H 		//098B 	2FAF
		LJUMP 	191H 			//098C 	3991
		LDWI 	FFH 			//098D 	00FF
		ADDWR 	2EH, 1H 		//098E 	17AE
		BTSS 	3H, 0H 			//098F 	2C03
		DECR 	2FH, 1H 		//0990 	13AF
		DECR 	2EH, 0H 		//0991 	132E
		XORWI 	FFH 			//0992 	0AFF
		MOVLP 	1AH 			//0993 	019A
		LCALL 	2DCH 			//0994 	32DC
		MOVLP 	8H 			//0995 	0188
		LCALL 	69EH 			//0996 	369E
		MOVLP 	8H 			//0997 	0188
		LCALL 	6CFH 			//0998 	36CF
		MOVLB 	2H 			//0999 	1022
		LDR 	24H, 0H 			//099A 	1824
		MOVLB 	1H 			//099B 	1021
		STR 	23H 			//099C 	10A3
		MOVLB 	2H 			//099D 	1022
		LDR 	25H, 0H 			//099E 	1825
		MOVLB 	1H 			//099F 	1021
		STR 	24H 			//09A0 	10A4
		MOVLB 	2H 			//09A1 	1022
		LDR 	26H, 0H 			//09A2 	1826
		MOVLB 	1H 			//09A3 	1021
		STR 	25H 			//09A4 	10A5
		MOVLP 	1DH 			//09A5 	019D
		LCALL 	534H 			//09A6 	3534
		MOVLP 	8H 			//09A7 	0188
		LDR 	20H, 0H 			//09A8 	1820
		MOVLB 	2H 			//09A9 	1022
		STR 	24H 			//09AA 	10A4
		MOVLB 	1H 			//09AB 	1021
		LDR 	21H, 0H 			//09AC 	1821
		MOVLB 	2H 			//09AD 	1022
		STR 	25H 			//09AE 	10A5
		MOVLB 	1H 			//09AF 	1021
		LDR 	22H, 0H 			//09B0 	1822
		MOVLB 	2H 			//09B1 	1022
		STR 	26H 			//09B2 	10A6
		LCALL 	667H 			//09B3 	3667
		MOVLP 	8H 			//09B4 	0188
		LDWI 	80H 			//09B5 	0080
		CLRF 	42H 			//09B6 	11C2
		STR 	43H 			//09B7 	10C3
		LDWI 	3FH 			//09B8 	003F
		STR 	44H 			//09B9 	10C4
		LCALL 	506H 			//09BA 	3506
		MOVLP 	8H 			//09BB 	0188
		BTSC 	3H, 0H 			//09BC 	2803
		LJUMP 	1C4H 			//09BD 	39C4
		LDWI 	FFH 			//09BE 	00FF
		MOVLB 	2H 			//09BF 	1022
		ADDWR 	2EH, 1H 		//09C0 	17AE
		BTSS 	3H, 0H 			//09C1 	2C03
		DECR 	2FH, 1H 		//09C2 	13AF
		LJUMP 	1D4H 			//09C3 	39D4
		MOVLB 	2H 			//09C4 	1022
		LCALL 	667H 			//09C5 	3667
		MOVLP 	8H 			//09C6 	0188
		LDWI 	20H 			//09C7 	0020
		CLRF 	42H 			//09C8 	11C2
		STR 	43H 			//09C9 	10C3
		LDWI 	41H 			//09CA 	0041
		STR 	44H 			//09CB 	10C4
		LCALL 	506H 			//09CC 	3506
		MOVLP 	8H 			//09CD 	0188
		BTSS 	3H, 0H 			//09CE 	2C03
		LJUMP 	1D4H 			//09CF 	39D4
		MOVLB 	2H 			//09D0 	1022
		INCR 	2EH, 1H 		//09D1 	1AAE
		BTSC 	3H, 2H 			//09D2 	2903
		INCR 	2FH, 1H 		//09D3 	1AAF
		MOVLB 	2H 			//09D4 	1022
		LDR 	36H, 0H 			//09D5 	1836
		LCALL 	698H 			//09D6 	3698
		MOVLP 	8H 			//09D7 	0188
		BTSS 	3H, 2H 			//09D8 	2D03
		LJUMP 	1DDH 			//09D9 	39DD
		LDWI 	DH 			//09DA 	000D
		MOVLB 	2H 			//09DB 	1022
		SUBWR 	35H, 0H 		//09DC 	1235
		BTSC 	3H, 0H 			//09DD 	2803
		LJUMP 	208H 			//09DE 	3A08
		MOVLB 	2H 			//09DF 	1022
		LDR 	35H, 0H 			//09E0 	1835
		MOVLP 	1AH 			//09E1 	019A
		LCALL 	254H 			//09E2 	3254
		MOVLP 	8H 			//09E3 	0188
		LDR 	2CH, 0H 			//09E4 	182C
		MOVLB 	0H 			//09E5 	1020
		STR 	41H 			//09E6 	10C1
		MOVLB 	1H 			//09E7 	1021
		LDR 	2DH, 0H 			//09E8 	182D
		MOVLB 	0H 			//09E9 	1020
		STR 	42H 			//09EA 	10C2
		MOVLB 	1H 			//09EB 	1021
		LDR 	2EH, 0H 			//09EC 	182E
		MOVLB 	0H 			//09ED 	1020
		STR 	43H 			//09EE 	10C3
		MOVLB 	2H 			//09EF 	1022
		LDR 	32H, 0H 			//09F0 	1832
		MOVLB 	0H 			//09F1 	1020
		STR 	44H 			//09F2 	10C4
		MOVLB 	2H 			//09F3 	1022
		LDR 	33H, 0H 			//09F4 	1833
		MOVLB 	0H 			//09F5 	1020
		STR 	45H 			//09F6 	10C5
		MOVLB 	2H 			//09F7 	1022
		LDR 	34H, 0H 			//09F8 	1834
		MOVLB 	0H 			//09F9 	1020
		STR 	46H 			//09FA 	10C6
		LCALL 	74CH 			//09FB 	374C
		MOVLP 	8H 			//09FC 	0188
		LDR 	41H, 0H 			//09FD 	1841
		MOVLB 	2H 			//09FE 	1022
		STR 	32H 			//09FF 	10B2
		MOVLB 	0H 			//0A00 	1020
		LDR 	42H, 0H 			//0A01 	1842
		MOVLB 	2H 			//0A02 	1022
		STR 	33H 			//0A03 	10B3
		MOVLB 	0H 			//0A04 	1020
		LDR 	43H, 0H 			//0A05 	1843
		MOVLB 	2H 			//0A06 	1022
		STR 	34H 			//0A07 	10B4
		MOVLB 	2H 			//0A08 	1022
		LDR 	2FH, 0H 			//0A09 	182F
		LCALL 	698H 			//0A0A 	3698
		MOVLP 	8H 			//0A0B 	0188
		BTSS 	3H, 2H 			//0A0C 	2D03
		LJUMP 	211H 			//0A0D 	3A11
		LDWI 	AH 			//0A0E 	000A
		MOVLB 	2H 			//0A0F 	1022
		SUBWR 	2EH, 0H 		//0A10 	122E
		BTSC 	3H, 0H 			//0A11 	2803
		LJUMP 	22EH 			//0A12 	3A2E
		MOVLB 	2H 			//0A13 	1022
		LDR 	34H, 0H 			//0A14 	1834
		IORWR 	33H, 0H 		//0A15 	1433
		IORWR 	32H, 0H 		//0A16 	1432
		BTSC 	3H, 2H 			//0A17 	2903
		LJUMP 	273H 			//0A18 	3A73
		LCALL 	6B1H 			//0A19 	36B1
		MOVLP 	8H 			//0A1A 	0188
		LCALL 	568H 			//0A1B 	3568
		MOVLP 	8H 			//0A1C 	0188
		LDR 	37H, 0H 			//0A1D 	1837
		IORWR 	36H, 0H 		//0A1E 	1436
		IORWR 	35H, 0H 		//0A1F 	1435
		IORWR 	34H, 0H 		//0A20 	1434
		BTSS 	3H, 2H 			//0A21 	2D03
		LJUMP 	273H 			//0A22 	3A73
		MOVLB 	2H 			//0A23 	1022
		LDR 	2FH, 0H 			//0A24 	182F
		LCALL 	698H 			//0A25 	3698
		MOVLP 	8H 			//0A26 	0188
		BTSS 	3H, 2H 			//0A27 	2D03
		LJUMP 	22CH 			//0A28 	3A2C
		LDWI 	2H 			//0A29 	0002
		MOVLB 	2H 			//0A2A 	1022
		SUBWR 	2EH, 0H 		//0A2B 	122E
		BTSS 	3H, 0H 			//0A2C 	2C03
		LJUMP 	273H 			//0A2D 	3A73
		MOVLB 	2H 			//0A2E 	1022
		LCALL 	667H 			//0A2F 	3667
		MOVLP 	8H 			//0A30 	0188
		LDWI 	70H 			//0A31 	0070
		STR 	42H 			//0A32 	10C2
		LDWI 	89H 			//0A33 	0089
		STR 	43H 			//0A34 	10C3
		LDWI 	40H 			//0A35 	0040
		STR 	44H 			//0A36 	10C4
		LCALL 	506H 			//0A37 	3506
		MOVLP 	8H 			//0A38 	0188
		BTSC 	3H, 0H 			//0A39 	2803
		LJUMP 	23DH 			//0A3A 	3A3D
		LDWI 	F7H 			//0A3B 	00F7
		LJUMP 	23EH 			//0A3C 	3A3E
		LDWI 	F8H 			//0A3D 	00F8
		MOVLB 	2H 			//0A3E 	1022
		ADDWR 	2EH, 1H 		//0A3F 	17AE
		BTSS 	3H, 0H 			//0A40 	2C03
		DECR 	2FH, 1H 		//0A41 	13AF
		LDR 	2EH, 0H 			//0A42 	182E
		MOVLP 	1AH 			//0A43 	019A
		LCALL 	2DCH 			//0A44 	32DC
		MOVLP 	8H 			//0A45 	0188
		LCALL 	69EH 			//0A46 	369E
		MOVLB 	0H 			//0A47 	1020
		STR 	2DH 			//0A48 	10AD
		MOVLB 	2H 			//0A49 	1022
		LDR 	33H, 0H 			//0A4A 	1833
		MOVLB 	0H 			//0A4B 	1020
		STR 	2EH 			//0A4C 	10AE
		MOVLB 	2H 			//0A4D 	1022
		LDR 	34H, 0H 			//0A4E 	1834
		MOVLB 	0H 			//0A4F 	1020
		STR 	2FH 			//0A50 	10AF
		MOVLB 	2H 			//0A51 	1022
		LDR 	24H, 0H 			//0A52 	1824
		MOVLB 	0H 			//0A53 	1020
		STR 	30H 			//0A54 	10B0
		MOVLB 	2H 			//0A55 	1022
		LDR 	25H, 0H 			//0A56 	1825
		MOVLB 	0H 			//0A57 	1020
		STR 	31H 			//0A58 	10B1
		MOVLB 	2H 			//0A59 	1022
		LDR 	26H, 0H 			//0A5A 	1826
		MOVLB 	0H 			//0A5B 	1020
		STR 	32H 			//0A5C 	10B2
		MOVLP 	6H 			//0A5D 	0186
		LCALL 	606H 			//0A5E 	3606
		MOVLP 	8H 			//0A5F 	0188
		LDR 	30H, 0H 			//0A60 	1830
		MOVLB 	2H 			//0A61 	1022
		STR 	2BH 			//0A62 	10AB
		MOVLB 	0H 			//0A63 	1020
		LDR 	2FH, 0H 			//0A64 	182F
		MOVLB 	2H 			//0A65 	1022
		STR 	2AH 			//0A66 	10AA
		MOVLB 	0H 			//0A67 	1020
		LDR 	2EH, 0H 			//0A68 	182E
		MOVLB 	2H 			//0A69 	1022
		STR 	29H 			//0A6A 	10A9
		MOVLB 	0H 			//0A6B 	1020
		LDR 	2DH, 0H 			//0A6C 	182D
		MOVLB 	2H 			//0A6D 	1022
		STR 	28H 			//0A6E 	10A8
		CLRF 	32H 			//0A6F 	11B2
		CLRF 	33H 			//0A70 	11B3
		CLRF 	34H 			//0A71 	11B4
		LJUMP 	2AEH 			//0A72 	3AAE
		MOVLB 	2H 			//0A73 	1022
		LCALL 	6B1H 			//0A74 	36B1
		MOVLP 	8H 			//0A75 	0188
		LCALL 	568H 			//0A76 	3568
		MOVLP 	8H 			//0A77 	0188
		LCALL 	68AH 			//0A78 	368A
		MOVLB 	2H 			//0A79 	1022
		STR 	28H 			//0A7A 	10A8
		LDR 	2BH, 0H 			//0A7B 	182B
		MOVLB 	0H 			//0A7C 	1020
		STR 	38H 			//0A7D 	10B8
		MOVLB 	2H 			//0A7E 	1022
		LDR 	2AH, 0H 			//0A7F 	182A
		MOVLB 	0H 			//0A80 	1020
		STR 	37H 			//0A81 	10B7
		MOVLB 	2H 			//0A82 	1022
		LDR 	29H, 0H 			//0A83 	1829
		MOVLB 	0H 			//0A84 	1020
		STR 	36H 			//0A85 	10B6
		MOVLB 	2H 			//0A86 	1022
		LDR 	28H, 0H 			//0A87 	1828
		MOVLB 	0H 			//0A88 	1020
		STR 	35H 			//0A89 	10B5
		MOVLP 	19H 			//0A8A 	0199
		LCALL 	156H 			//0A8B 	3156
		MOVLP 	8H 			//0A8C 	0188
		LDR 	35H, 0H 			//0A8D 	1835
		STR 	4DH 			//0A8E 	10CD
		LDR 	36H, 0H 			//0A8F 	1836
		STR 	4EH 			//0A90 	10CE
		LDR 	37H, 0H 			//0A91 	1837
		STR 	4FH 			//0A92 	10CF
		MOVLB 	2H 			//0A93 	1022
		LDR 	32H, 0H 			//0A94 	1832
		MOVLB 	0H 			//0A95 	1020
		STR 	50H 			//0A96 	10D0
		MOVLB 	2H 			//0A97 	1022
		LDR 	33H, 0H 			//0A98 	1833
		MOVLB 	0H 			//0A99 	1020
		STR 	51H 			//0A9A 	10D1
		MOVLB 	2H 			//0A9B 	1022
		LDR 	34H, 0H 			//0A9C 	1834
		MOVLB 	0H 			//0A9D 	1020
		STR 	52H 			//0A9E 	10D2
		LCALL 	5D4H 			//0A9F 	35D4
		MOVLP 	8H 			//0AA0 	0188
		LDR 	4DH, 0H 			//0AA1 	184D
		MOVLB 	2H 			//0AA2 	1022
		STR 	32H 			//0AA3 	10B2
		MOVLB 	0H 			//0AA4 	1020
		LDR 	4EH, 0H 			//0AA5 	184E
		MOVLB 	2H 			//0AA6 	1022
		STR 	33H 			//0AA7 	10B3
		MOVLB 	0H 			//0AA8 	1020
		LDR 	4FH, 0H 			//0AA9 	184F
		MOVLB 	2H 			//0AAA 	1022
		STR 	34H 			//0AAB 	10B4
		CLRF 	2EH 			//0AAC 	11AE
		CLRF 	2FH 			//0AAD 	11AF
		CLRF 	37H 			//0AAE 	11B7
		INCR 	37H, 1H 		//0AAF 	1AB7
		LCALL 	5EFH 			//0AB0 	35EF
		MOVLP 	8H 			//0AB1 	0188
		LCALL 	6C4H 			//0AB2 	36C4
		MOVLP 	8H 			//0AB3 	0188
		BTSS 	3H, 2H 			//0AB4 	2D03
		LJUMP 	2C0H 			//0AB5 	3AC0
		LCALL 	6FEH 			//0AB6 	36FE
		MOVLP 	8H 			//0AB7 	0188
		BTSS 	3H, 2H 			//0AB8 	2D03
		LJUMP 	2C0H 			//0AB9 	3AC0
		LCALL 	708H 			//0ABA 	3708
		MOVLP 	8H 			//0ABB 	0188
		BTSS 	3H, 2H 			//0ABC 	2D03
		LJUMP 	2C0H 			//0ABD 	3AC0
		LCALL 	703H 			//0ABE 	3703
		MOVLP 	8H 			//0ABF 	0188
		BTSS 	3H, 0H 			//0AC0 	2C03
		LJUMP 	2C7H 			//0AC1 	3AC7
		LDWI 	AH 			//0AC2 	000A
		INCR 	37H, 1H 		//0AC3 	1AB7
		XORWR 	37H, 0H 		//0AC4 	1637
		BTSS 	3H, 2H 			//0AC5 	2D03
		LJUMP 	2B0H 			//0AC6 	3AB0
		LDR 	37H, 0H 			//0AC7 	1837
		LCALL 	6BDH 			//0AC8 	36BD
		MOVLP 	8H 			//0AC9 	0188
		LDR 	35H, 0H 			//0ACA 	1835
		MOVLB 	1H 			//0ACB 	1021
		ADDWR 	53H, 0H 		//0ACC 	1753
		STR 	55H 			//0ACD 	10D5
		MOVLB 	2H 			//0ACE 	1022
		LDR 	36H, 0H 			//0ACF 	1836
		MOVLB 	1H 			//0AD0 	1021
		ADDWFC 	54H, 0H 		//0AD1 	0D54
		STR 	56H 			//0AD2 	10D6
		MOVLB 	2H 			//0AD3 	1022
		LDR 	2EH, 0H 			//0AD4 	182E
		MOVLB 	1H 			//0AD5 	1021
		ADDWR 	55H, 0H 		//0AD6 	1755
		STR 	57H 			//0AD7 	10D7
		MOVLB 	2H 			//0AD8 	1022
		LDR 	2FH, 0H 			//0AD9 	182F
		MOVLB 	1H 			//0ADA 	1021
		ADDWFC 	56H, 0H 		//0ADB 	0D56
		STR 	58H 			//0ADC 	10D8
		LDR 	57H, 0H 			//0ADD 	1857
		MOVLB 	2H 			//0ADE 	1022
		SUBWR 	30H, 1H 		//0ADF 	12B0
		MOVLB 	1H 			//0AE0 	1021
		LDR 	58H, 0H 			//0AE1 	1858
		MOVLB 	2H 			//0AE2 	1022
		SUBWFB 	31H, 1H 		//0AE3 	0BB1
		LDR 	35H, 0H 			//0AE4 	1835
		IORWR 	36H, 0H 		//0AE5 	1436
		BTSC 	3H, 2H 			//0AE6 	2903
		LJUMP 	2ECH 			//0AE7 	3AEC
		LDWI 	FFH 			//0AE8 	00FF
		ADDWR 	30H, 1H 		//0AE9 	17B0
		BTSS 	3H, 0H 			//0AEA 	2C03
		DECR 	31H, 1H 		//0AEB 	13B1
		LDR 	2CH, 0H 			//0AEC 	182C
		ANDWI 	3H 			//0AED 	0903
		BTSC 	3H, 2H 			//0AEE 	2903
		LJUMP 	2F4H 			//0AEF 	3AF4
		LDWI 	FFH 			//0AF0 	00FF
		ADDWR 	30H, 1H 		//0AF1 	17B0
		BTSS 	3H, 0H 			//0AF2 	2C03
		DECR 	31H, 1H 		//0AF3 	13B1
		BTSS 	2CH, 2H 		//0AF4 	2D2C
		LJUMP 	31AH 			//0AF5 	3B1A
		LDR 	2CH, 0H 			//0AF6 	182C
		ANDWI 	3H 			//0AF7 	0903
		BTSC 	3H, 2H 			//0AF8 	2903
		LJUMP 	301H 			//0AF9 	3B01
		LCALL 	661H 			//0AFA 	3661
		MOVLP 	8H 			//0AFB 	0188
		LDWI 	2DH 			//0AFC 	002D
		STR 	1H 			//0AFD 	1081
		INCR 	41H, 1H 		//0AFE 	1AC1
		BTSC 	3H, 2H 			//0AFF 	2903
		INCR 	42H, 1H 		//0B00 	1AC2
		MOVLB 	2H 			//0B01 	1022
		LDR 	31H, 0H 			//0B02 	1831
		LCALL 	698H 			//0B03 	3698
		MOVLP 	8H 			//0B04 	0188
		BTSS 	3H, 2H 			//0B05 	2D03
		LJUMP 	30AH 			//0B06 	3B0A
		LDWI 	1H 			//0B07 	0001
		MOVLB 	2H 			//0B08 	1022
		SUBWR 	30H, 0H 		//0B09 	1230
		BTSS 	3H, 0H 			//0B0A 	2C03
		LJUMP 	33DH 			//0B0B 	3B3D
		MOVLB 	1H 			//0B0C 	1021
		LCALL 	63EH 			//0B0D 	363E
		MOVLP 	8H 			//0B0E 	0188
		ADDWR 	30H, 1H 		//0B0F 	17B0
		BTSS 	3H, 0H 			//0B10 	2C03
		DECR 	31H, 1H 		//0B11 	13B1
		LJUMP 	301H 			//0B12 	3B01
		LCALL 	661H 			//0B13 	3661
		MOVLP 	8H 			//0B14 	0188
		LDWI 	20H 			//0B15 	0020
		LCALL 	673H 			//0B16 	3673
		MOVLP 	8H 			//0B17 	0188
		BTSS 	3H, 0H 			//0B18 	2C03
		DECR 	31H, 1H 		//0B19 	13B1
		LDR 	31H, 0H 			//0B1A 	1831
		LCALL 	698H 			//0B1B 	3698
		MOVLP 	8H 			//0B1C 	0188
		BTSS 	3H, 2H 			//0B1D 	2D03
		LJUMP 	322H 			//0B1E 	3B22
		LDWI 	1H 			//0B1F 	0001
		MOVLB 	2H 			//0B20 	1022
		SUBWR 	30H, 0H 		//0B21 	1230
		BTSC 	3H, 0H 			//0B22 	2803
		LJUMP 	313H 			//0B23 	3B13
		MOVLB 	2H 			//0B24 	1022
		LDR 	2CH, 0H 			//0B25 	182C
		ANDWI 	3H 			//0B26 	0903
		BTSC 	3H, 2H 			//0B27 	2903
		LJUMP 	33DH 			//0B28 	3B3D
		LCALL 	661H 			//0B29 	3661
		MOVLP 	8H 			//0B2A 	0188
		LDWI 	2DH 			//0B2B 	002D
		LJUMP 	339H 			//0B2C 	3B39
		LCALL 	5EFH 			//0B2D 	35EF
		MOVLP 	8H 			//0B2E 	0188
		LCALL 	5FFH 			//0B2F 	35FF
		MOVLP 	8H 			//0B30 	0188
		LCALL 	70DH 			//0B31 	370D
		MOVLP 	8H 			//0B32 	0188
		LCALL 	618H 			//0B33 	3618
		MOVLP 	8H 			//0B34 	0188
		LCALL 	532H 			//0B35 	3532
		MOVLP 	8H 			//0B36 	0188
		LCALL 	649H 			//0B37 	3649
		MOVLP 	8H 			//0B38 	0188
		STR 	1H 			//0B39 	1081
		INCR 	41H, 1H 		//0B3A 	1AC1
		BTSC 	3H, 2H 			//0B3B 	2903
		INCR 	42H, 1H 		//0B3C 	1AC2
		MOVLB 	2H 			//0B3D 	1022
		DECR 	37H, 1H 		//0B3E 	13B7
		INCRSZ 	37H, 0H 		//0B3F 	1F37
		LJUMP 	32DH 			//0B40 	3B2D
		LDR 	2FH, 0H 			//0B41 	182F
		LCALL 	698H 			//0B42 	3698
		MOVLP 	8H 			//0B43 	0188
		BTSS 	3H, 2H 			//0B44 	2D03
		LJUMP 	349H 			//0B45 	3B49
		LDWI 	1H 			//0B46 	0001
		MOVLB 	2H 			//0B47 	1022
		SUBWR 	2EH, 0H 		//0B48 	122E
		BTSS 	3H, 0H 			//0B49 	2C03
		LJUMP 	352H 			//0B4A 	3B52
		MOVLB 	1H 			//0B4B 	1021
		LCALL 	63EH 			//0B4C 	363E
		MOVLP 	8H 			//0B4D 	0188
		ADDWR 	2EH, 1H 		//0B4E 	17AE
		BTSS 	3H, 0H 			//0B4F 	2C03
		DECR 	2FH, 1H 		//0B50 	13AF
		LJUMP 	341H 			//0B51 	3B41
		MOVLB 	2H 			//0B52 	1022
		LDR 	36H, 0H 			//0B53 	1836
		LCALL 	698H 			//0B54 	3698
		MOVLP 	8H 			//0B55 	0188
		BTSS 	3H, 2H 			//0B56 	2D03
		LJUMP 	35BH 			//0B57 	3B5B
		LDWI 	9H 			//0B58 	0009
		MOVLB 	2H 			//0B59 	1022
		SUBWR 	35H, 0H 		//0B5A 	1235
		BTSS 	3H, 0H 			//0B5B 	2C03
		LJUMP 	360H 			//0B5C 	3B60
		LDWI 	8H 			//0B5D 	0008
		MOVLB 	2H 			//0B5E 	1022
		LJUMP 	362H 			//0B5F 	3B62
		MOVLB 	2H 			//0B60 	1022
		LDR 	35H, 0H 			//0B61 	1835
		STR 	37H 			//0B62 	10B7
		LCALL 	6BDH 			//0B63 	36BD
		MOVLP 	8H 			//0B64 	0188
		SUBWR 	35H, 1H 		//0B65 	12B5
		MOVLB 	1H 			//0B66 	1021
		LDR 	54H, 0H 			//0B67 	1854
		MOVLB 	2H 			//0B68 	1022
		SUBWFB 	36H, 1H 		//0B69 	0BB6
		LDR 	37H, 0H 			//0B6A 	1837
		BTSC 	3H, 2H 			//0B6B 	2903
		LJUMP 	373H 			//0B6C 	3B73
		LCALL 	661H 			//0B6D 	3661
		LDWI 	2EH 			//0B6E 	002E
		STR 	1H 			//0B6F 	1081
		INCR 	41H, 1H 		//0B70 	1AC1
		BTSC 	3H, 2H 			//0B71 	2903
		INCR 	42H, 1H 		//0B72 	1AC2
		MOVLB 	2H 			//0B73 	1022
		LDR 	37H, 0H 			//0B74 	1837
		MOVLP 	1AH 			//0B75 	019A
		LCALL 	2DCH 			//0B76 	32DC
		MOVLP 	8H 			//0B77 	0188
		LDR 	2CH, 0H 			//0B78 	182C
		MOVLB 	2H 			//0B79 	1022
		STR 	20H 			//0B7A 	10A0
		MOVLB 	1H 			//0B7B 	1021
		LDR 	2DH, 0H 			//0B7C 	182D
		MOVLB 	2H 			//0B7D 	1022
		STR 	21H 			//0B7E 	10A1
		MOVLB 	1H 			//0B7F 	1021
		LDR 	2EH, 0H 			//0B80 	182E
		MOVLB 	2H 			//0B81 	1022
		STR 	22H 			//0B82 	10A2
		LDR 	20H, 0H 			//0B83 	1820
		MOVLB 	1H 			//0B84 	1021
		STR 	23H 			//0B85 	10A3
		MOVLB 	2H 			//0B86 	1022
		LDR 	21H, 0H 			//0B87 	1821
		MOVLB 	1H 			//0B88 	1021
		STR 	24H 			//0B89 	10A4
		MOVLB 	2H 			//0B8A 	1022
		LDR 	22H, 0H 			//0B8B 	1822
		MOVLB 	1H 			//0B8C 	1021
		STR 	25H 			//0B8D 	10A5
		MOVLB 	2H 			//0B8E 	1022
		LDR 	32H, 0H 			//0B8F 	1832
		LCALL 	6CFH 			//0B90 	36CF
		MOVLP 	1DH 			//0B91 	019D
		LCALL 	534H 			//0B92 	3534
		MOVLP 	8H 			//0B93 	0188
		LCALL 	6ECH 			//0B94 	36EC
		MOVLP 	8H 			//0B95 	0188
		LCALL 	568H 			//0B96 	3568
		MOVLP 	8H 			//0B97 	0188
		LCALL 	68AH 			//0B98 	368A
		MOVLP 	8H 			//0B99 	0188
		LJUMP 	3D5H 			//0B9A 	3BD5
		LCALL 	5EFH 			//0B9B 	35EF
		MOVLP 	8H 			//0B9C 	0188
		LCALL 	5FFH 			//0B9D 	35FF
		MOVLP 	8H 			//0B9E 	0188
		LCALL 	70DH 			//0B9F 	370D
		MOVLP 	8H 			//0BA0 	0188
		LCALL 	618H 			//0BA1 	3618
		MOVLP 	8H 			//0BA2 	0188
		LCALL 	532H 			//0BA3 	3532
		MOVLP 	8H 			//0BA4 	0188
		LCALL 	649H 			//0BA5 	3649
		MOVLP 	8H 			//0BA6 	0188
		STR 	1H 			//0BA7 	1081
		INCR 	41H, 1H 		//0BA8 	1AC1
		BTSC 	3H, 2H 			//0BA9 	2903
		INCR 	42H, 1H 		//0BAA 	1AC2
		MOVLB 	2H 			//0BAB 	1022
		LCALL 	5EFH 			//0BAC 	35EF
		MOVLP 	8H 			//0BAD 	0188
		MOVLB 	0H 			//0BAE 	1020
		STR 	3AH 			//0BAF 	10BA
		MOVIW 	1H[0] 			//0BB0 	0F01
		STR 	3BH 			//0BB1 	10BB
		MOVIW 	2H[0] 			//0BB2 	0F02
		STR 	3CH 			//0BB3 	10BC
		MOVIW 	3H[0] 			//0BB4 	0F03
		STR 	3DH 			//0BB5 	10BD
		MOVLB 	2H 			//0BB6 	1022
		LDR 	2BH, 0H 			//0BB7 	182B
		MOVLB 	0H 			//0BB8 	1020
		STR 	41H 			//0BB9 	10C1
		MOVLB 	2H 			//0BBA 	1022
		LDR 	2AH, 0H 			//0BBB 	182A
		MOVLB 	0H 			//0BBC 	1020
		STR 	40H 			//0BBD 	10C0
		MOVLB 	2H 			//0BBE 	1022
		LDR 	29H, 0H 			//0BBF 	1829
		MOVLB 	0H 			//0BC0 	1020
		STR 	3FH 			//0BC1 	10BF
		MOVLB 	2H 			//0BC2 	1022
		LDR 	28H, 0H 			//0BC3 	1828
		MOVLB 	0H 			//0BC4 	1020
		STR 	3EH 			//0BC5 	10BE
		LCALL 	532H 			//0BC6 	3532
		MOVLP 	8H 			//0BC7 	0188
		LDR 	3DH, 0H 			//0BC8 	183D
		MOVLB 	2H 			//0BC9 	1022
		STR 	2BH 			//0BCA 	10AB
		MOVLB 	0H 			//0BCB 	1020
		LDR 	3CH, 0H 			//0BCC 	183C
		MOVLB 	2H 			//0BCD 	1022
		STR 	2AH 			//0BCE 	10AA
		MOVLB 	0H 			//0BCF 	1020
		LDR 	3BH, 0H 			//0BD0 	183B
		MOVLB 	2H 			//0BD1 	1022
		STR 	29H 			//0BD2 	10A9
		MOVLB 	0H 			//0BD3 	1020
		LDR 	3AH, 0H 			//0BD4 	183A
		MOVLB 	2H 			//0BD5 	1022
		STR 	28H 			//0BD6 	10A8
		DECR 	37H, 1H 		//0BD7 	13B7
		INCRSZ 	37H, 0H 		//0BD8 	1F37
		LJUMP 	39BH 			//0BD9 	3B9B
		LDR 	35H, 0H 			//0BDA 	1835
		IORWR 	36H, 0H 		//0BDB 	1436
		BTSC 	3H, 2H 			//0BDC 	2903
		LJUMP 	37H 			//0BDD 	3837
		MOVLB 	1H 			//0BDE 	1021
		LCALL 	63EH 			//0BDF 	363E
		MOVLP 	8H 			//0BE0 	0188
		ADDWR 	35H, 1H 		//0BE1 	17B5
		BTSS 	3H, 0H 			//0BE2 	2C03
		DECR 	36H, 1H 		//0BE3 	13B6
		LJUMP 	3DAH 			//0BE4 	3BDA
		MOVLB 	2H 			//0BE5 	1022
		LDR 	23H, 0H 			//0BE6 	1823
		STR 	6H 			//0BE7 	1086
		CLRF 	7H 			//0BE8 	1187
		LCALL 	6F3H 			//0BE9 	36F3
		MOVLP 	8H 			//0BEA 	0188
		LDR 	53H, 0H 			//0BEB 	1853
		MOVLB 	2H 			//0BEC 	1022
		STR 	28H 			//0BED 	10A8
		MOVLB 	1H 			//0BEE 	1021
		LDR 	54H, 0H 			//0BEF 	1854
		MOVLB 	2H 			//0BF0 	1022
		STR 	29H 			//0BF1 	10A9
		RLR 	9H, 1H 			//0BF2 	1D89
		SUBWFB 	9H, 1H 		//0BF3 	0B89
		COMR 	9H, 1H 			//0BF4 	1989
		STR 	2AH 			//0BF5 	10AA
		STR 	2BH 			//0BF6 	10AB
		INCR 	23H, 1H 		//0BF7 	1AA3
		INCR 	23H, 1H 		//0BF8 	1AA3
		BTSS 	2BH, 7H 		//0BF9 	2FAB
		LJUMP 	408H 			//0BFA 	3C08
		LDWI 	3H 			//0BFB 	0003
		IORWR 	2CH, 1H 		//0BFC 	14AC
		COMR 	28H, 1H 		//0BFD 	19A8
		COMR 	29H, 1H 		//0BFE 	19A9
		COMR 	2AH, 1H 		//0BFF 	19AA
		COMR 	2BH, 1H 		//0C00 	19AB
		INCR 	28H, 1H 		//0C01 	1AA8
		BTSC 	3H, 2H 			//0C02 	2903
		INCR 	29H, 1H 		//0C03 	1AA9
		BTSC 	3H, 2H 			//0C04 	2903
		INCR 	2AH, 1H 		//0C05 	1AAA
		BTSC 	3H, 2H 			//0C06 	2903
		INCR 	2BH, 1H 		//0C07 	1AAB
		LDR 	35H, 0H 			//0C08 	1835
		IORWR 	36H, 0H 		//0C09 	1436
		BTSS 	3H, 2H 			//0C0A 	2D03
		LJUMP 	414H 			//0C0B 	3C14
		LDR 	2BH, 0H 			//0C0C 	182B
		IORWR 	2AH, 0H 		//0C0D 	142A
		IORWR 	29H, 0H 		//0C0E 	1429
		IORWR 	28H, 0H 		//0C0F 	1428
		BTSC 	3H, 2H 			//0C10 	2903
		INCR 	35H, 1H 		//0C11 	1AB5
		BTSC 	3H, 2H 			//0C12 	2903
		INCR 	36H, 1H 		//0C13 	1AB6
		CLRF 	37H 			//0C14 	11B7
		INCR 	37H, 1H 		//0C15 	1AB7
		LCALL 	5EFH 			//0C16 	35EF
		MOVLP 	8H 			//0C17 	0188
		LCALL 	6C4H 			//0C18 	36C4
		MOVLP 	8H 			//0C19 	0188
		BTSS 	3H, 2H 			//0C1A 	2D03
		LJUMP 	426H 			//0C1B 	3C26
		LCALL 	6FEH 			//0C1C 	36FE
		MOVLP 	8H 			//0C1D 	0188
		BTSS 	3H, 2H 			//0C1E 	2D03
		LJUMP 	426H 			//0C1F 	3C26
		LCALL 	708H 			//0C20 	3708
		MOVLP 	8H 			//0C21 	0188
		BTSS 	3H, 2H 			//0C22 	2D03
		LJUMP 	426H 			//0C23 	3C26
		LCALL 	703H 			//0C24 	3703
		MOVLP 	8H 			//0C25 	0188
		BTSS 	3H, 0H 			//0C26 	2C03
		LJUMP 	42DH 			//0C27 	3C2D
		LDWI 	AH 			//0C28 	000A
		INCR 	37H, 1H 		//0C29 	1AB7
		XORWR 	37H, 0H 		//0C2A 	1637
		BTSS 	3H, 2H 			//0C2B 	2D03
		LJUMP 	416H 			//0C2C 	3C16
		LCALL 	6DAH 			//0C2D 	36DA
		MOVLP 	8H 			//0C2E 	0188
		LDR 	36H, 0H 			//0C2F 	1836
		XORWI 	80H 			//0C30 	0A80
		MOVLB 	1H 			//0C31 	1021
		SUBWR 	55H, 0H 		//0C32 	1255
		BTSS 	3H, 2H 			//0C33 	2D03
		LJUMP 	439H 			//0C34 	3C39
		MOVLB 	2H 			//0C35 	1022
		LDR 	35H, 0H 			//0C36 	1835
		MOVLB 	1H 			//0C37 	1021
		SUBWR 	53H, 0H 		//0C38 	1253
		BTSC 	3H, 0H 			//0C39 	2803
		LJUMP 	43FH 			//0C3A 	3C3F
		MOVLB 	2H 			//0C3B 	1022
		LDR 	35H, 0H 			//0C3C 	1835
		STR 	37H 			//0C3D 	10B7
		LJUMP 	457H 			//0C3E 	3C57
		MOVLB 	2H 			//0C3F 	1022
		LDR 	37H, 0H 			//0C40 	1837
		LCALL 	6BDH 			//0C41 	36BD
		MOVLP 	8H 			//0C42 	0188
		LDR 	36H, 0H 			//0C43 	1836
		XORWI 	80H 			//0C44 	0A80
		MOVLB 	1H 			//0C45 	1021
		STR 	55H 			//0C46 	10D5
		LDR 	54H, 0H 			//0C47 	1854
		XORWI 	80H 			//0C48 	0A80
		SUBWR 	55H, 0H 		//0C49 	1255
		BTSS 	3H, 2H 			//0C4A 	2D03
		LJUMP 	44FH 			//0C4B 	3C4F
		LDR 	53H, 0H 			//0C4C 	1853
		MOVLB 	2H 			//0C4D 	1022
		SUBWR 	35H, 0H 		//0C4E 	1235
		BTSC 	3H, 0H 			//0C4F 	2803
		LJUMP 	457H 			//0C50 	3C57
		MOVLB 	2H 			//0C51 	1022
		LDR 	37H, 0H 			//0C52 	1837
		STR 	35H 			//0C53 	10B5
		CLRF 	36H 			//0C54 	11B6
		BTSC 	35H, 7H 		//0C55 	2BB5
		DECR 	36H, 1H 		//0C56 	13B6
		MOVLB 	2H 			//0C57 	1022
		LDR 	30H, 0H 			//0C58 	1830
		IORWR 	31H, 0H 		//0C59 	1431
		BTSC 	3H, 2H 			//0C5A 	2903
		LJUMP 	464H 			//0C5B 	3C64
		LDR 	2CH, 0H 			//0C5C 	182C
		ANDWI 	3H 			//0C5D 	0903
		BTSC 	3H, 2H 			//0C5E 	2903
		LJUMP 	464H 			//0C5F 	3C64
		LDWI 	FFH 			//0C60 	00FF
		ADDWR 	30H, 1H 		//0C61 	17B0
		BTSS 	3H, 0H 			//0C62 	2C03
		DECR 	31H, 1H 		//0C63 	13B1
		BTSS 	2DH, 6H 		//0C64 	2F2D
		LJUMP 	47FH 			//0C65 	3C7F
		LDR 	36H, 0H 			//0C66 	1836
		XORWI 	80H 			//0C67 	0A80
		MOVLB 	1H 			//0C68 	1021
		STR 	53H 			//0C69 	10D3
		MOVLB 	2H 			//0C6A 	1022
		LDR 	31H, 0H 			//0C6B 	1831
		XORWI 	80H 			//0C6C 	0A80
		MOVLB 	1H 			//0C6D 	1021
		SUBWR 	53H, 0H 		//0C6E 	1253
		BTSS 	3H, 2H 			//0C6F 	2D03
		LJUMP 	474H 			//0C70 	3C74
		MOVLB 	2H 			//0C71 	1022
		LDR 	30H, 0H 			//0C72 	1830
		SUBWR 	35H, 0H 		//0C73 	1235
		BTSC 	3H, 0H 			//0C74 	2803
		LJUMP 	47CH 			//0C75 	3C7C
		MOVLB 	2H 			//0C76 	1022
		LDR 	35H, 0H 			//0C77 	1835
		SUBWR 	30H, 1H 		//0C78 	12B0
		LDR 	36H, 0H 			//0C79 	1836
		SUBWFB 	31H, 1H 		//0C7A 	0BB1
		LJUMP 	47FH 			//0C7B 	3C7F
		MOVLB 	2H 			//0C7C 	1022
		CLRF 	30H 			//0C7D 	11B0
		CLRF 	31H 			//0C7E 	11B1
		LCALL 	6DAH 			//0C7F 	36DA
		MOVLP 	8H 			//0C80 	0188
		LDR 	31H, 0H 			//0C81 	1831
		XORWI 	80H 			//0C82 	0A80
		MOVLB 	1H 			//0C83 	1021
		SUBWR 	55H, 0H 		//0C84 	1255
		BTSS 	3H, 2H 			//0C85 	2D03
		LJUMP 	48BH 			//0C86 	3C8B
		MOVLB 	2H 			//0C87 	1022
		LDR 	30H, 0H 			//0C88 	1830
		MOVLB 	1H 			//0C89 	1021
		SUBWR 	53H, 0H 		//0C8A 	1253
		BTSC 	3H, 0H 			//0C8B 	2803
		LJUMP 	497H 			//0C8C 	3C97
		MOVLB 	2H 			//0C8D 	1022
		LDR 	37H, 0H 			//0C8E 	1837
		LCALL 	6BDH 			//0C8F 	36BD
		MOVLP 	8H 			//0C90 	0188
		SUBWR 	30H, 1H 		//0C91 	12B0
		MOVLB 	1H 			//0C92 	1021
		LDR 	54H, 0H 			//0C93 	1854
		MOVLB 	2H 			//0C94 	1022
		SUBWFB 	31H, 1H 		//0C95 	0BB1
		LJUMP 	49AH 			//0C96 	3C9A
		MOVLB 	2H 			//0C97 	1022
		CLRF 	30H 			//0C98 	11B0
		CLRF 	31H 			//0C99 	11B1
		BTSS 	2CH, 2H 		//0C9A 	2D2C
		LJUMP 	4B3H 			//0C9B 	3CB3
		LDR 	2CH, 0H 			//0C9C 	182C
		ANDWI 	3H 			//0C9D 	0903
		BTSC 	3H, 2H 			//0C9E 	2903
		LJUMP 	4A7H 			//0C9F 	3CA7
		LCALL 	661H 			//0CA0 	3661
		MOVLP 	8H 			//0CA1 	0188
		LDWI 	2DH 			//0CA2 	002D
		STR 	1H 			//0CA3 	1081
		INCR 	41H, 1H 		//0CA4 	1AC1
		BTSC 	3H, 2H 			//0CA5 	2903
		INCR 	42H, 1H 		//0CA6 	1AC2
		MOVLB 	2H 			//0CA7 	1022
		LDR 	30H, 0H 			//0CA8 	1830
		IORWR 	31H, 0H 		//0CA9 	1431
		BTSC 	3H, 2H 			//0CAA 	2903
		LJUMP 	4CEH 			//0CAB 	3CCE
		MOVLB 	1H 			//0CAC 	1021
		LCALL 	63EH 			//0CAD 	363E
		MOVLP 	8H 			//0CAE 	0188
		ADDWR 	30H, 1H 		//0CAF 	17B0
		BTSS 	3H, 0H 			//0CB0 	2C03
		DECR 	31H, 1H 		//0CB1 	13B1
		LJUMP 	4A8H 			//0CB2 	3CA8
		LDR 	30H, 0H 			//0CB3 	1830
		IORWR 	31H, 0H 		//0CB4 	1431
		BTSC 	3H, 2H 			//0CB5 	2903
		LJUMP 	4C2H 			//0CB6 	3CC2
		LCALL 	661H 			//0CB7 	3661
		MOVLP 	8H 			//0CB8 	0188
		LDWI 	20H 			//0CB9 	0020
		LCALL 	673H 			//0CBA 	3673
		MOVLP 	8H 			//0CBB 	0188
		BTSS 	3H, 0H 			//0CBC 	2C03
		DECR 	31H, 1H 		//0CBD 	13B1
		LDR 	30H, 0H 			//0CBE 	1830
		IORWR 	31H, 0H 		//0CBF 	1431
		BTSS 	3H, 2H 			//0CC0 	2D03
		LJUMP 	4B7H 			//0CC1 	3CB7
		LDR 	2CH, 0H 			//0CC2 	182C
		ANDWI 	3H 			//0CC3 	0903
		BTSC 	3H, 2H 			//0CC4 	2903
		LJUMP 	4CEH 			//0CC5 	3CCE
		LCALL 	661H 			//0CC6 	3661
		MOVLP 	8H 			//0CC7 	0188
		LDWI 	2DH 			//0CC8 	002D
		STR 	1H 			//0CC9 	1081
		MOVLB 	1H 			//0CCA 	1021
		INCR 	41H, 1H 		//0CCB 	1AC1
		BTSC 	3H, 2H 			//0CCC 	2903
		INCR 	42H, 1H 		//0CCD 	1AC2
		LDWI 	FFH 			//0CCE 	00FF
		MOVLB 	2H 			//0CCF 	1022
		ADDWR 	35H, 1H 		//0CD0 	17B5
		BTSS 	3H, 0H 			//0CD1 	2C03
		DECR 	36H, 1H 		//0CD2 	13B6
		INCRSZ 	35H, 0H 		//0CD3 	1F35
		LJUMP 	4D8H 			//0CD4 	3CD8
		INCR 	36H, 0H 		//0CD5 	1A36
		BTSC 	3H, 2H 			//0CD6 	2903
		LJUMP 	37H 			//0CD7 	3837
		LDWI 	AH 			//0CD8 	000A
		MOVLB 	0H 			//0CD9 	1020
		STR 	3AH 			//0CDA 	10BA
		CLRF 	3BH 			//0CDB 	11BB
		CLRF 	3CH 			//0CDC 	11BC
		CLRF 	3DH 			//0CDD 	11BD
		MOVLB 	2H 			//0CDE 	1022
		LDR 	36H, 0H 			//0CDF 	1836
		STR 	5H 			//0CE0 	1085
		LDR 	35H, 0H 			//0CE1 	1835
		STR 	4H 			//0CE2 	1084
		LDWI 	0H 			//0CE3 	0000
		LSLF 	4H, 1H 			//0CE4 	0584
		RLR 	5H, 1H 			//0CE5 	1D85
		LSLF 	4H, 1H 			//0CE6 	0584
		RLR 	5H, 1H 			//0CE7 	1D85
		ADDWR 	4H, 1H 		//0CE8 	1784
		LDWI 	A0H 			//0CE9 	00A0
		ADDWFC 	5H, 1H 		//0CEA 	0D85
		MOVIW 	0H[0] 			//0CEB 	0F00
		LCALL 	5FFH 			//0CEC 	35FF
		MOVLP 	8H 			//0CED 	0188
		LCALL 	70DH 			//0CEE 	370D
		MOVLP 	8H 			//0CEF 	0188
		LDR 	30H, 0H 			//0CF0 	1830
		STR 	41H 			//0CF1 	10C1
		LDR 	2FH, 0H 			//0CF2 	182F
		STR 	40H 			//0CF3 	10C0
		LDR 	2EH, 0H 			//0CF4 	182E
		STR 	3FH 			//0CF5 	10BF
		LDR 	2DH, 0H 			//0CF6 	182D
		STR 	3EH 			//0CF7 	10BE
		LCALL 	532H 			//0CF8 	3532
		MOVLP 	8H 			//0CF9 	0188
		LDR 	3AH, 0H 			//0CFA 	183A
		ADDWI 	30H 			//0CFB 	0E30
		MOVLB 	2H 			//0CFC 	1022
		STR 	37H 			//0CFD 	10B7
		LCALL 	661H 			//0CFE 	3661
		MOVLP 	8H 			//0CFF 	0188
		MOVLB 	2H 			//0D00 	1022
		LDR 	37H, 0H 			//0D01 	1837
		LJUMP 	4C9H 			//0D02 	3CC9
		LCALL 	661H 			//0D03 	3661
		CLRF 	1H 			//0D04 	1181
		RET 					//0D05 	1008
		BTSS 	41H, 7H 		//0D06 	2FC1
		LJUMP 	515H 			//0D07 	3D15
		LDR 	3FH, 0H 			//0D08 	183F
		SUBWI 	0H 			//0D09 	0C00
		STR 	3FH 			//0D0A 	10BF
		LDR 	40H, 0H 			//0D0B 	1840
		BTSS 	3H, 0H 			//0D0C 	2C03
		INCRSZ 	40H, 0H 		//0D0D 	1F40
		SUBWI 	0H 			//0D0E 	0C00
		STR 	40H 			//0D0F 	10C0
		LDR 	41H, 0H 			//0D10 	1841
		BTSS 	3H, 0H 			//0D11 	2C03
		INCRSZ 	41H, 0H 		//0D12 	1F41
		SUBWI 	80H 			//0D13 	0C80
		STR 	41H 			//0D14 	10C1
		BTSS 	44H, 7H 		//0D15 	2FC4
		LJUMP 	524H 			//0D16 	3D24
		LDR 	42H, 0H 			//0D17 	1842
		SUBWI 	0H 			//0D18 	0C00
		STR 	42H 			//0D19 	10C2
		LDR 	43H, 0H 			//0D1A 	1843
		BTSS 	3H, 0H 			//0D1B 	2C03
		INCRSZ 	43H, 0H 		//0D1C 	1F43
		SUBWI 	0H 			//0D1D 	0C00
		STR 	43H 			//0D1E 	10C3
		LDR 	44H, 0H 			//0D1F 	1844
		BTSS 	3H, 0H 			//0D20 	2C03
		INCRSZ 	44H, 0H 		//0D21 	1F44
		SUBWI 	80H 			//0D22 	0C80
		STR 	44H 			//0D23 	10C4
		LDWI 	80H 			//0D24 	0080
		XORWR 	41H, 1H 		//0D25 	16C1
		XORWR 	44H, 1H 		//0D26 	16C4
		LDR 	44H, 0H 			//0D27 	1844
		SUBWR 	41H, 0H 		//0D28 	1241
		BTSS 	3H, 2H 			//0D29 	2D03
		RET 					//0D2A 	1008
		LDR 	43H, 0H 			//0D2B 	1843
		SUBWR 	40H, 0H 		//0D2C 	1240
		BTSS 	3H, 2H 			//0D2D 	2D03
		RET 					//0D2E 	1008
		LDR 	42H, 0H 			//0D2F 	1842
		SUBWR 	3FH, 0H 		//0D30 	123F
		RET 					//0D31 	1008
		LDR 	3DH, 0H 			//0D32 	183D
		IORWR 	3CH, 0H 		//0D33 	143C
		IORWR 	3BH, 0H 		//0D34 	143B
		IORWR 	3AH, 0H 		//0D35 	143A
		BTSC 	3H, 2H 			//0D36 	2903
		LJUMP 	55FH 			//0D37 	3D5F
		CLRF 	42H 			//0D38 	11C2
		INCR 	42H, 1H 		//0D39 	1AC2
		BTSC 	3DH, 7H 		//0D3A 	2BBD
		LJUMP 	541H 			//0D3B 	3D41
		LSLF 	3AH, 1H 		//0D3C 	05BA
		RLR 	3BH, 1H 			//0D3D 	1DBB
		RLR 	3CH, 1H 			//0D3E 	1DBC
		RLR 	3DH, 1H 			//0D3F 	1DBD
		LJUMP 	539H 			//0D40 	3D39
		LDR 	3DH, 0H 			//0D41 	183D
		SUBWR 	41H, 0H 		//0D42 	1241
		BTSS 	3H, 2H 			//0D43 	2D03
		LJUMP 	54FH 			//0D44 	3D4F
		LDR 	3CH, 0H 			//0D45 	183C
		SUBWR 	40H, 0H 		//0D46 	1240
		BTSS 	3H, 2H 			//0D47 	2D03
		LJUMP 	54FH 			//0D48 	3D4F
		LDR 	3BH, 0H 			//0D49 	183B
		SUBWR 	3FH, 0H 		//0D4A 	123F
		BTSS 	3H, 2H 			//0D4B 	2D03
		LJUMP 	54FH 			//0D4C 	3D4F
		LDR 	3AH, 0H 			//0D4D 	183A
		SUBWR 	3EH, 0H 		//0D4E 	123E
		BTSS 	3H, 0H 			//0D4F 	2C03
		LJUMP 	559H 			//0D50 	3D59
		LDR 	3AH, 0H 			//0D51 	183A
		SUBWR 	3EH, 1H 		//0D52 	12BE
		LDR 	3BH, 0H 			//0D53 	183B
		SUBWFB 	3FH, 1H 		//0D54 	0BBF
		LDR 	3CH, 0H 			//0D55 	183C
		SUBWFB 	40H, 1H 		//0D56 	0BC0
		LDR 	3DH, 0H 			//0D57 	183D
		SUBWFB 	41H, 1H 		//0D58 	0BC1
		LSRF 	3DH, 1H 		//0D59 	06BD
		RRR 	3CH, 1H 			//0D5A 	1CBC
		RRR 	3BH, 1H 			//0D5B 	1CBB
		RRR 	3AH, 1H 			//0D5C 	1CBA
		DECRSZ 	42H, 1H 		//0D5D 	1BC2
		LJUMP 	541H 			//0D5E 	3D41
		LDR 	41H, 0H 			//0D5F 	1841
		STR 	3DH 			//0D60 	10BD
		LDR 	40H, 0H 			//0D61 	1840
		STR 	3CH 			//0D62 	10BC
		LDR 	3FH, 0H 			//0D63 	183F
		STR 	3BH 			//0D64 	10BB
		LDR 	3EH, 0H 			//0D65 	183E
		STR 	3AH 			//0D66 	10BA
		RET 					//0D67 	1008
		LCALL 	6E5H 			//0D68 	36E5
		MOVLP 	8H 			//0D69 	0188
		BCR 	3H, 0H 			//0D6A 	2003
		RLR 	39H, 0H 			//0D6B 	1D39
		RLR 	3AH, 0H 			//0D6C 	1D3A
		STR 	40H 			//0D6D 	10C0
		LDR 	40H, 0H 			//0D6E 	1840
		BTSS 	3H, 2H 			//0D6F 	2D03
		LJUMP 	576H 			//0D70 	3D76
		CLRF 	34H 			//0D71 	11B4
		CLRF 	35H 			//0D72 	11B5
		CLRF 	36H 			//0D73 	11B6
		CLRF 	37H 			//0D74 	11B7
		RET 					//0D75 	1008
		LCALL 	6E5H 			//0D76 	36E5
		MOVLP 	8H 			//0D77 	0188
		LDWI 	17H 			//0D78 	0017
		LSRF 	3AH, 1H 		//0D79 	06BA
		RRR 	39H, 1H 			//0D7A 	1CB9
		RRR 	38H, 1H 			//0D7B 	1CB8
		DECRSZ 	9H, 1H 		//0D7C 	1B89
		LJUMP 	579H 			//0D7D 	3D79
		LDR 	38H, 0H 			//0D7E 	1838
		STR 	3BH 			//0D7F 	10BB
		BSR 	35H, 7H 			//0D80 	27B5
		CLRF 	36H 			//0D81 	11B6
		LDR 	34H, 0H 			//0D82 	1834
		STR 	3CH 			//0D83 	10BC
		LDR 	35H, 0H 			//0D84 	1835
		STR 	3DH 			//0D85 	10BD
		LDR 	36H, 0H 			//0D86 	1836
		STR 	3EH 			//0D87 	10BE
		LDWI 	8EH 			//0D88 	008E
		CLRF 	3FH 			//0D89 	11BF
		SUBWR 	40H, 1H 		//0D8A 	12C0
		BTSS 	40H, 7H 		//0D8B 	2FC0
		LJUMP 	599H 			//0D8C 	3D99
		LDR 	40H, 0H 			//0D8D 	1840
		XORWI 	80H 			//0D8E 	0A80
		ADDWI 	8FH 			//0D8F 	0E8F
		BTSS 	3H, 0H 			//0D90 	2C03
		LJUMP 	571H 			//0D91 	3D71
		LSRF 	3FH, 1H 		//0D92 	06BF
		RRR 	3EH, 1H 			//0D93 	1CBE
		RRR 	3DH, 1H 			//0D94 	1CBD
		RRR 	3CH, 1H 			//0D95 	1CBC
		INCRSZ 	40H, 1H 		//0D96 	1FC0
		LJUMP 	592H 			//0D97 	3D92
		LJUMP 	5A6H 			//0D98 	3DA6
		LDWI 	18H 			//0D99 	0018
		SUBWR 	40H, 0H 		//0D9A 	1240
		BTSC 	3H, 0H 			//0D9B 	2803
		LJUMP 	571H 			//0D9C 	3D71
		LDR 	40H, 0H 			//0D9D 	1840
		BTSC 	3H, 2H 			//0D9E 	2903
		LJUMP 	5A6H 			//0D9F 	3DA6
		LSLF 	3CH, 1H 		//0DA0 	05BC
		RLR 	3DH, 1H 			//0DA1 	1DBD
		RLR 	3EH, 1H 			//0DA2 	1DBE
		RLR 	3FH, 1H 			//0DA3 	1DBF
		DECR 	40H, 1H 		//0DA4 	13C0
		LJUMP 	59DH 			//0DA5 	3D9D
		LDR 	3BH, 0H 			//0DA6 	183B
		BTSC 	3H, 2H 			//0DA7 	2903
		LJUMP 	5B4H 			//0DA8 	3DB4
		COMR 	3CH, 1H 		//0DA9 	19BC
		COMR 	3DH, 1H 		//0DAA 	19BD
		COMR 	3EH, 1H 		//0DAB 	19BE
		COMR 	3FH, 1H 		//0DAC 	19BF
		INCR 	3CH, 1H 		//0DAD 	1ABC
		BTSC 	3H, 2H 			//0DAE 	2903
		INCR 	3DH, 1H 		//0DAF 	1ABD
		BTSC 	3H, 2H 			//0DB0 	2903
		INCR 	3EH, 1H 		//0DB1 	1ABE
		BTSC 	3H, 2H 			//0DB2 	2903
		INCR 	3FH, 1H 		//0DB3 	1ABF
		LDR 	3FH, 0H 			//0DB4 	183F
		STR 	37H 			//0DB5 	10B7
		LDR 	3EH, 0H 			//0DB6 	183E
		STR 	36H 			//0DB7 	10B6
		LDR 	3DH, 0H 			//0DB8 	183D
		STR 	35H 			//0DB9 	10B5
		LDR 	3CH, 0H 			//0DBA 	183C
		STR 	34H 			//0DBB 	10B4
		RET 					//0DBC 	1008
		MOVLB 	0H 			//0DBD 	1020
		STR 	2EH 			//0DBE 	10AE
		LDWI 	3AH 			//0DBF 	003A
		CLRF 	2DH 			//0DC0 	11AD
		SUBWR 	2EH, 0H 		//0DC1 	122E
		BTSC 	3H, 0H 			//0DC2 	2803
		LJUMP 	5CAH 			//0DC3 	3DCA
		LDWI 	30H 			//0DC4 	0030
		SUBWR 	2EH, 0H 		//0DC5 	122E
		BTSS 	3H, 0H 			//0DC6 	2C03
		LJUMP 	5CAH 			//0DC7 	3DCA
		CLRF 	2DH 			//0DC8 	11AD
		INCR 	2DH, 1H 		//0DC9 	1AAD
		RRR 	2DH, 0H 			//0DCA 	1C2D
		RET 					//0DCB 	1008
		LDR 	2FH, 0H 			//0DCC 	182F
		IORWR 	2EH, 0H 		//0DCD 	142E
		IORWR 	2DH, 0H 		//0DCE 	142D
		BTSC 	3H, 2H 			//0DCF 	2903
		RET 					//0DD0 	1008
		LDWI 	80H 			//0DD1 	0080
		XORWR 	2FH, 1H 		//0DD2 	16AF
		RET 					//0DD3 	1008
		LDR 	4FH, 0H 			//0DD4 	184F
		IORWR 	4EH, 0H 		//0DD5 	144E
		IORWR 	4DH, 0H 		//0DD6 	144D
		BTSC 	3H, 2H 			//0DD7 	2903
		LJUMP 	5DBH 			//0DD8 	3DDB
		LDWI 	80H 			//0DD9 	0080
		XORWR 	4FH, 1H 		//0DDA 	16CF
		LDR 	50H, 0H 			//0DDB 	1850
		STR 	41H 			//0DDC 	10C1
		LDR 	51H, 0H 			//0DDD 	1851
		STR 	42H 			//0DDE 	10C2
		LDR 	52H, 0H 			//0DDF 	1852
		STR 	43H 			//0DE0 	10C3
		LDR 	4DH, 0H 			//0DE1 	184D
		STR 	44H 			//0DE2 	10C4
		LDR 	4EH, 0H 			//0DE3 	184E
		STR 	45H 			//0DE4 	10C5
		LDR 	4FH, 0H 			//0DE5 	184F
		STR 	46H 			//0DE6 	10C6
		LCALL 	74CH 			//0DE7 	374C
		LDR 	41H, 0H 			//0DE8 	1841
		STR 	4DH 			//0DE9 	10CD
		LDR 	42H, 0H 			//0DEA 	1842
		STR 	4EH 			//0DEB 	10CE
		LDR 	43H, 0H 			//0DEC 	1843
		STR 	4FH 			//0DED 	10CF
		RET 					//0DEE 	1008
		LDR 	37H, 0H 			//0DEF 	1837
		MOVLB 	1H 			//0DF0 	1021
		STR 	53H 			//0DF1 	10D3
		LDWI 	0H 			//0DF2 	0000
		CLRF 	54H 			//0DF3 	11D4
		LSLF 	53H, 1H 		//0DF4 	05D3
		RLR 	54H, 1H 			//0DF5 	1DD4
		LSLF 	53H, 1H 		//0DF6 	05D3
		RLR 	54H, 1H 			//0DF7 	1DD4
		ADDWR 	53H, 0H 		//0DF8 	1753
		STR 	4H 			//0DF9 	1084
		LDWI 	A0H 			//0DFA 	00A0
		ADDWFC 	54H, 0H 		//0DFB 	0D54
		STR 	5H 			//0DFC 	1085
		MOVIW 	0H[0] 			//0DFD 	0F00
		RET 					//0DFE 	1008
		MOVLB 	0H 			//0DFF 	1020
		STR 	2DH 			//0E00 	10AD
		MOVIW 	1H[0] 			//0E01 	0F01
		STR 	2EH 			//0E02 	10AE
		MOVIW 	2H[0] 			//0E03 	0F02
		STR 	2FH 			//0E04 	10AF
		MOVIW 	3H[0] 			//0E05 	0F03
		STR 	30H 			//0E06 	10B0
		MOVLB 	2H 			//0E07 	1022
		LDR 	2BH, 0H 			//0E08 	182B
		MOVLB 	0H 			//0E09 	1020
		STR 	34H 			//0E0A 	10B4
		MOVLB 	2H 			//0E0B 	1022
		LDR 	2AH, 0H 			//0E0C 	182A
		MOVLB 	0H 			//0E0D 	1020
		STR 	33H 			//0E0E 	10B3
		MOVLB 	2H 			//0E0F 	1022
		LDR 	29H, 0H 			//0E10 	1829
		MOVLB 	0H 			//0E11 	1020
		STR 	32H 			//0E12 	10B2
		MOVLB 	2H 			//0E13 	1022
		LDR 	28H, 0H 			//0E14 	1828
		MOVLB 	0H 			//0E15 	1020
		STR 	31H 			//0E16 	10B1
		RET 					//0E17 	1008
		LDR 	30H, 0H 			//0E18 	1830
		MOVLB 	2H 			//0E19 	1022
		STR 	27H 			//0E1A 	10A7
		MOVLB 	0H 			//0E1B 	1020
		LDR 	2FH, 0H 			//0E1C 	182F
		MOVLB 	2H 			//0E1D 	1022
		STR 	26H 			//0E1E 	10A6
		MOVLB 	0H 			//0E1F 	1020
		LDR 	2EH, 0H 			//0E20 	182E
		MOVLB 	2H 			//0E21 	1022
		STR 	25H 			//0E22 	10A5
		MOVLB 	0H 			//0E23 	1020
		LDR 	2DH, 0H 			//0E24 	182D
		MOVLB 	2H 			//0E25 	1022
		STR 	24H 			//0E26 	10A4
		LDWI 	AH 			//0E27 	000A
		MOVLB 	0H 			//0E28 	1020
		STR 	3AH 			//0E29 	10BA
		CLRF 	3BH 			//0E2A 	11BB
		CLRF 	3CH 			//0E2B 	11BC
		CLRF 	3DH 			//0E2C 	11BD
		MOVLB 	2H 			//0E2D 	1022
		LDR 	27H, 0H 			//0E2E 	1827
		MOVLB 	0H 			//0E2F 	1020
		STR 	41H 			//0E30 	10C1
		MOVLB 	2H 			//0E31 	1022
		LDR 	26H, 0H 			//0E32 	1826
		MOVLB 	0H 			//0E33 	1020
		STR 	40H 			//0E34 	10C0
		MOVLB 	2H 			//0E35 	1022
		LDR 	25H, 0H 			//0E36 	1825
		MOVLB 	0H 			//0E37 	1020
		STR 	3FH 			//0E38 	10BF
		MOVLB 	2H 			//0E39 	1022
		LDR 	24H, 0H 			//0E3A 	1824
		MOVLB 	0H 			//0E3B 	1020
		STR 	3EH 			//0E3C 	10BE
		RET 					//0E3D 	1008
		LDR 	41H, 0H 			//0E3E 	1841
		STR 	6H 			//0E3F 	1086
		LDR 	42H, 0H 			//0E40 	1842
		STR 	7H 			//0E41 	1087
		LDWI 	30H 			//0E42 	0030
		STR 	1H 			//0E43 	1081
		INCR 	41H, 1H 		//0E44 	1AC1
		BTSC 	3H, 2H 			//0E45 	2903
		INCR 	42H, 1H 		//0E46 	1AC2
		MOVLB 	2H 			//0E47 	1022
		RETW 	FFH 			//0E48 	04FF
		LDR 	3DH, 0H 			//0E49 	183D
		MOVLB 	2H 			//0E4A 	1022
		STR 	27H 			//0E4B 	10A7
		MOVLB 	0H 			//0E4C 	1020
		LDR 	3CH, 0H 			//0E4D 	183C
		MOVLB 	2H 			//0E4E 	1022
		STR 	26H 			//0E4F 	10A6
		MOVLB 	0H 			//0E50 	1020
		LDR 	3BH, 0H 			//0E51 	183B
		MOVLB 	2H 			//0E52 	1022
		STR 	25H 			//0E53 	10A5
		MOVLB 	0H 			//0E54 	1020
		LDR 	3AH, 0H 			//0E55 	183A
		MOVLB 	2H 			//0E56 	1022
		STR 	24H 			//0E57 	10A4
		ADDWI 	30H 			//0E58 	0E30
		MOVLB 	1H 			//0E59 	1021
		STR 	53H 			//0E5A 	10D3
		LDR 	41H, 0H 			//0E5B 	1841
		STR 	6H 			//0E5C 	1086
		LDR 	42H, 0H 			//0E5D 	1842
		STR 	7H 			//0E5E 	1087
		LDR 	53H, 0H 			//0E5F 	1853
		RET 					//0E60 	1008
		MOVLB 	1H 			//0E61 	1021
		LDR 	41H, 0H 			//0E62 	1841
		STR 	6H 			//0E63 	1086
		LDR 	42H, 0H 			//0E64 	1842
		STR 	7H 			//0E65 	1087
		RET 					//0E66 	1008
		LDR 	24H, 0H 			//0E67 	1824
		MOVLB 	0H 			//0E68 	1020
		STR 	3FH 			//0E69 	10BF
		MOVLB 	2H 			//0E6A 	1022
		LDR 	25H, 0H 			//0E6B 	1825
		MOVLB 	0H 			//0E6C 	1020
		STR 	40H 			//0E6D 	10C0
		MOVLB 	2H 			//0E6E 	1022
		LDR 	26H, 0H 			//0E6F 	1826
		MOVLB 	0H 			//0E70 	1020
		STR 	41H 			//0E71 	10C1
		RET 					//0E72 	1008
		STR 	1H 			//0E73 	1081
		INCR 	41H, 1H 		//0E74 	1AC1
		BTSC 	3H, 2H 			//0E75 	2903
		INCR 	42H, 1H 		//0E76 	1AC2
		LDWI 	FFH 			//0E77 	00FF
		MOVLB 	2H 			//0E78 	1022
		ADDWR 	30H, 1H 		//0E79 	17B0
		RET 					//0E7A 	1008
		MOVLB 	1H 			//0E7B 	1021
		LDR 	44H, 0H 			//0E7C 	1844
		STR 	54H 			//0E7D 	10D4
		LDR 	43H, 0H 			//0E7E 	1843
		STR 	53H 			//0E7F 	10D3
		INCR 	43H, 1H 		//0E80 	1AC3
		BTSC 	3H, 2H 			//0E81 	2903
		INCR 	44H, 1H 		//0E82 	1AC4
		STR 	4H 			//0E83 	1084
		LDR 	54H, 0H 			//0E84 	1854
		STR 	5H 			//0E85 	1085
		LDR 	0H, 0H 			//0E86 	1800
		MOVLB 	2H 			//0E87 	1022
		STR 	37H 			//0E88 	10B7
		RET 					//0E89 	1008
		LDR 	37H, 0H 			//0E8A 	1837
		MOVLB 	2H 			//0E8B 	1022
		STR 	2BH 			//0E8C 	10AB
		MOVLB 	1H 			//0E8D 	1021
		LDR 	36H, 0H 			//0E8E 	1836
		MOVLB 	2H 			//0E8F 	1022
		STR 	2AH 			//0E90 	10AA
		MOVLB 	1H 			//0E91 	1021
		LDR 	35H, 0H 			//0E92 	1835
		MOVLB 	2H 			//0E93 	1022
		STR 	29H 			//0E94 	10A9
		MOVLB 	1H 			//0E95 	1021
		LDR 	34H, 0H 			//0E96 	1834
		RET 					//0E97 	1008
		XORWI 	80H 			//0E98 	0A80
		MOVLB 	1H 			//0E99 	1021
		STR 	53H 			//0E9A 	10D3
		LDWI 	80H 			//0E9B 	0080
		SUBWR 	53H, 0H 		//0E9C 	1253
		RET 					//0E9D 	1008
		LDR 	2CH, 0H 			//0E9E 	182C
		MOVLB 	2H 			//0E9F 	1022
		STR 	24H 			//0EA0 	10A4
		MOVLB 	1H 			//0EA1 	1021
		LDR 	2DH, 0H 			//0EA2 	182D
		MOVLB 	2H 			//0EA3 	1022
		STR 	25H 			//0EA4 	10A5
		MOVLB 	1H 			//0EA5 	1021
		LDR 	2EH, 0H 			//0EA6 	182E
		MOVLB 	2H 			//0EA7 	1022
		STR 	26H 			//0EA8 	10A6
		LDR 	32H, 0H 			//0EA9 	1832
		RET 					//0EAA 	1008
		LDR 	43H, 0H 			//0EAB 	1843
		STR 	4H 			//0EAC 	1084
		LDR 	44H, 0H 			//0EAD 	1844
		STR 	5H 			//0EAE 	1085
		LDR 	0H, 0H 			//0EAF 	1800
		RET 					//0EB0 	1008
		LDR 	32H, 0H 			//0EB1 	1832
		MOVLB 	1H 			//0EB2 	1021
		STR 	34H 			//0EB3 	10B4
		MOVLB 	2H 			//0EB4 	1022
		LDR 	33H, 0H 			//0EB5 	1833
		MOVLB 	1H 			//0EB6 	1021
		STR 	35H 			//0EB7 	10B5
		MOVLB 	2H 			//0EB8 	1022
		LDR 	34H, 0H 			//0EB9 	1834
		MOVLB 	1H 			//0EBA 	1021
		STR 	36H 			//0EBB 	10B6
		RET 					//0EBC 	1008
		MOVLB 	1H 			//0EBD 	1021
		STR 	53H 			//0EBE 	10D3
		CLRF 	54H 			//0EBF 	11D4
		BTSC 	53H, 7H 		//0EC0 	2BD3
		DECR 	54H, 1H 		//0EC1 	13D4
		MOVLB 	2H 			//0EC2 	1022
		RET 					//0EC3 	1008
		STR 	55H 			//0EC4 	10D5
		MOVIW 	1H[0] 			//0EC5 	0F01
		STR 	56H 			//0EC6 	10D6
		MOVIW 	2H[0] 			//0EC7 	0F02
		STR 	57H 			//0EC8 	10D7
		MOVIW 	3H[0] 			//0EC9 	0F03
		STR 	58H 			//0ECA 	10D8
		LDR 	58H, 0H 			//0ECB 	1858
		MOVLB 	2H 			//0ECC 	1022
		SUBWR 	2BH, 0H 		//0ECD 	122B
		RET 					//0ECE 	1008
		MOVLB 	1H 			//0ECF 	1021
		STR 	20H 			//0ED0 	10A0
		MOVLB 	2H 			//0ED1 	1022
		LDR 	33H, 0H 			//0ED2 	1833
		MOVLB 	1H 			//0ED3 	1021
		STR 	21H 			//0ED4 	10A1
		MOVLB 	2H 			//0ED5 	1022
		LDR 	34H, 0H 			//0ED6 	1834
		MOVLB 	1H 			//0ED7 	1021
		STR 	22H 			//0ED8 	10A2
		RET 					//0ED9 	1008
		LDR 	37H, 0H 			//0EDA 	1837
		MOVLB 	1H 			//0EDB 	1021
		STR 	53H 			//0EDC 	10D3
		CLRF 	54H 			//0EDD 	11D4
		BTSC 	53H, 7H 		//0EDE 	2BD3
		DECR 	54H, 1H 		//0EDF 	13D4
		LDR 	54H, 0H 			//0EE0 	1854
		XORWI 	80H 			//0EE1 	0A80
		STR 	55H 			//0EE2 	10D5
		MOVLB 	2H 			//0EE3 	1022
		RET 					//0EE4 	1008
		LDR 	34H, 0H 			//0EE5 	1834
		STR 	38H 			//0EE6 	10B8
		LDR 	35H, 0H 			//0EE7 	1835
		STR 	39H 			//0EE8 	10B9
		LDR 	36H, 0H 			//0EE9 	1836
		STR 	3AH 			//0EEA 	10BA
		RET 					//0EEB 	1008
		LDR 	20H, 0H 			//0EEC 	1820
		STR 	34H 			//0EED 	10B4
		LDR 	21H, 0H 			//0EEE 	1821
		STR 	35H 			//0EEF 	10B5
		LDR 	22H, 0H 			//0EF0 	1822
		STR 	36H 			//0EF1 	10B6
		RET 					//0EF2 	1008
		MOVIW 	0H[1] 			//0EF3 	0F40
		MOVLB 	1H 			//0EF4 	1021
		STR 	53H 			//0EF5 	10D3
		MOVIW 	1H[1] 			//0EF6 	0F41
		STR 	54H 			//0EF7 	10D4
		RET 					//0EF8 	1008
		STR 	41H 			//0EF9 	10C1
		CLRF 	42H 			//0EFA 	11C2
		CLRF 	43H 			//0EFB 	11C3
		CLRF 	44H 			//0EFC 	11C4
		RET 					//0EFD 	1008
		MOVLB 	1H 			//0EFE 	1021
		LDR 	57H, 0H 			//0EFF 	1857
		MOVLB 	2H 			//0F00 	1022
		SUBWR 	2AH, 0H 		//0F01 	122A
		RET 					//0F02 	1008
		MOVLB 	1H 			//0F03 	1021
		LDR 	55H, 0H 			//0F04 	1855
		MOVLB 	2H 			//0F05 	1022
		SUBWR 	28H, 0H 		//0F06 	1228
		RET 					//0F07 	1008
		MOVLB 	1H 			//0F08 	1021
		LDR 	56H, 0H 			//0F09 	1856
		MOVLB 	2H 			//0F0A 	1022
		SUBWR 	29H, 0H 		//0F0B 	1229
		RET 					//0F0C 	1008
		CLRF 	36H 			//0F0D 	11B6
		CLRF 	37H 			//0F0E 	11B7
		CLRF 	38H 			//0F0F 	11B8
		CLRF 	39H 			//0F10 	11B9
		LDR 	30H, 0H 			//0F11 	1830
		IORWR 	2FH, 0H 		//0F12 	142F
		IORWR 	2EH, 0H 		//0F13 	142E
		IORWR 	2DH, 0H 		//0F14 	142D
		BTSC 	3H, 2H 			//0F15 	2903
		LJUMP 	743H 			//0F16 	3F43
		CLRF 	35H 			//0F17 	11B5
		INCR 	35H, 1H 		//0F18 	1AB5
		BTSC 	30H, 7H 		//0F19 	2BB0
		LJUMP 	720H 			//0F1A 	3F20
		LSLF 	2DH, 1H 		//0F1B 	05AD
		RLR 	2EH, 1H 			//0F1C 	1DAE
		RLR 	2FH, 1H 			//0F1D 	1DAF
		RLR 	30H, 1H 			//0F1E 	1DB0
		LJUMP 	718H 			//0F1F 	3F18
		LSLF 	36H, 1H 		//0F20 	05B6
		RLR 	37H, 1H 			//0F21 	1DB7
		RLR 	38H, 1H 			//0F22 	1DB8
		RLR 	39H, 1H 			//0F23 	1DB9
		LDR 	30H, 0H 			//0F24 	1830
		SUBWR 	34H, 0H 		//0F25 	1234
		BTSS 	3H, 2H 			//0F26 	2D03
		LJUMP 	732H 			//0F27 	3F32
		LDR 	2FH, 0H 			//0F28 	182F
		SUBWR 	33H, 0H 		//0F29 	1233
		BTSS 	3H, 2H 			//0F2A 	2D03
		LJUMP 	732H 			//0F2B 	3F32
		LDR 	2EH, 0H 			//0F2C 	182E
		SUBWR 	32H, 0H 		//0F2D 	1232
		BTSS 	3H, 2H 			//0F2E 	2D03
		LJUMP 	732H 			//0F2F 	3F32
		LDR 	2DH, 0H 			//0F30 	182D
		SUBWR 	31H, 0H 		//0F31 	1231
		BTSS 	3H, 0H 			//0F32 	2C03
		LJUMP 	73DH 			//0F33 	3F3D
		LDR 	2DH, 0H 			//0F34 	182D
		SUBWR 	31H, 1H 		//0F35 	12B1
		LDR 	2EH, 0H 			//0F36 	182E
		SUBWFB 	32H, 1H 		//0F37 	0BB2
		LDR 	2FH, 0H 			//0F38 	182F
		SUBWFB 	33H, 1H 		//0F39 	0BB3
		LDR 	30H, 0H 			//0F3A 	1830
		SUBWFB 	34H, 1H 		//0F3B 	0BB4
		BSR 	36H, 0H 			//0F3C 	2436
		LSRF 	30H, 1H 		//0F3D 	06B0
		RRR 	2FH, 1H 			//0F3E 	1CAF
		RRR 	2EH, 1H 			//0F3F 	1CAE
		RRR 	2DH, 1H 			//0F40 	1CAD
		DECRSZ 	35H, 1H 		//0F41 	1BB5
		LJUMP 	720H 			//0F42 	3F20
		LDR 	39H, 0H 			//0F43 	1839
		STR 	30H 			//0F44 	10B0
		LDR 	38H, 0H 			//0F45 	1838
		STR 	2FH 			//0F46 	10AF
		LDR 	37H, 0H 			//0F47 	1837
		STR 	2EH 			//0F48 	10AE
		LDR 	36H, 0H 			//0F49 	1836
		STR 	2DH 			//0F4A 	10AD
		RET 					//0F4B 	1008
		LDR 	41H, 0H 			//0F4C 	1841
		STR 	47H 			//0F4D 	10C7
		LDR 	42H, 0H 			//0F4E 	1842
		STR 	48H 			//0F4F 	10C8
		LDR 	43H, 0H 			//0F50 	1843
		STR 	49H 			//0F51 	10C9
		BCR 	3H, 0H 			//0F52 	2003
		RLR 	48H, 0H 			//0F53 	1D48
		RLR 	49H, 0H 			//0F54 	1D49
		STR 	4CH 			//0F55 	10CC
		LDR 	44H, 0H 			//0F56 	1844
		STR 	47H 			//0F57 	10C7
		LDR 	45H, 0H 			//0F58 	1845
		STR 	48H 			//0F59 	10C8
		LDR 	46H, 0H 			//0F5A 	1846
		STR 	49H 			//0F5B 	10C9
		BCR 	3H, 0H 			//0F5C 	2003
		RLR 	48H, 0H 			//0F5D 	1D48
		RLR 	49H, 0H 			//0F5E 	1D49
		STR 	4BH 			//0F5F 	10CB
		LDR 	4CH, 0H 			//0F60 	184C
		BTSC 	3H, 2H 			//0F61 	2903
		LJUMP 	76FH 			//0F62 	3F6F
		LDR 	4BH, 0H 			//0F63 	184B
		SUBWR 	4CH, 0H 		//0F64 	124C
		LDR 	4BH, 0H 			//0F65 	184B
		BTSC 	3H, 0H 			//0F66 	2803
		LJUMP 	777H 			//0F67 	3F77
		STR 	47H 			//0F68 	10C7
		LDR 	4CH, 0H 			//0F69 	184C
		SUBWR 	47H, 1H 		//0F6A 	12C7
		LDWI 	19H 			//0F6B 	0019
		SUBWR 	47H, 0H 		//0F6C 	1247
		BTSS 	3H, 0H 			//0F6D 	2C03
		LJUMP 	776H 			//0F6E 	3F76
		LDR 	44H, 0H 			//0F6F 	1844
		STR 	41H 			//0F70 	10C1
		LDR 	45H, 0H 			//0F71 	1845
		STR 	42H 			//0F72 	10C2
		LDR 	46H, 0H 			//0F73 	1846
		STR 	43H 			//0F74 	10C3
		RET 					//0F75 	1008
		LDR 	4BH, 0H 			//0F76 	184B
		BTSC 	3H, 2H 			//0F77 	2903
		RET 					//0F78 	1008
		LDR 	4CH, 0H 			//0F79 	184C
		SUBWR 	4BH, 0H 		//0F7A 	124B
		BTSC 	3H, 0H 			//0F7B 	2803
		LJUMP 	785H 			//0F7C 	3F85
		LDR 	4CH, 0H 			//0F7D 	184C
		STR 	47H 			//0F7E 	10C7
		LDR 	4BH, 0H 			//0F7F 	184B
		SUBWR 	47H, 1H 		//0F80 	12C7
		LDWI 	19H 			//0F81 	0019
		SUBWR 	47H, 0H 		//0F82 	1247
		BTSC 	3H, 0H 			//0F83 	2803
		RET 					//0F84 	1008
		LDWI 	6H 			//0F85 	0006
		STR 	4AH 			//0F86 	10CA
		BTSC 	43H, 7H 		//0F87 	2BC3
		BSR 	4AH, 7H 			//0F88 	27CA
		BTSC 	46H, 7H 		//0F89 	2BC6
		BSR 	4AH, 6H 			//0F8A 	274A
		BSR 	42H, 7H 			//0F8B 	27C2
		CLRF 	43H 			//0F8C 	11C3
		BSR 	45H, 7H 			//0F8D 	27C5
		CLRF 	46H 			//0F8E 	11C6
		LDR 	4BH, 0H 			//0F8F 	184B
		SUBWR 	4CH, 0H 		//0F90 	124C
		BTSC 	3H, 0H 			//0F91 	2803
		LJUMP 	7AAH 			//0F92 	3FAA
		LSLF 	44H, 1H 		//0F93 	05C4
		RLR 	45H, 1H 			//0F94 	1DC5
		RLR 	46H, 1H 			//0F95 	1DC6
		DECR 	4BH, 1H 		//0F96 	13CB
		LDR 	4BH, 0H 			//0F97 	184B
		XORWR 	4CH, 0H 		//0F98 	164C
		BTSC 	3H, 2H 			//0F99 	2903
		LJUMP 	7A5H 			//0F9A 	3FA5
		DECR 	4AH, 1H 		//0F9B 	13CA
		LDR 	4AH, 0H 			//0F9C 	184A
		ANDWI 	7H 			//0F9D 	0907
		BTSC 	3H, 2H 			//0F9E 	2903
		LJUMP 	7A5H 			//0F9F 	3FA5
		LJUMP 	793H 			//0FA0 	3F93
		LSRF 	43H, 1H 		//0FA1 	06C3
		RRR 	42H, 1H 			//0FA2 	1CC2
		RRR 	41H, 1H 			//0FA3 	1CC1
		INCR 	4CH, 1H 		//0FA4 	1ACC
		LDR 	4CH, 0H 			//0FA5 	184C
		XORWR 	4BH, 0H 		//0FA6 	164B
		BTSC 	3H, 2H 			//0FA7 	2903
		LJUMP 	7C4H 			//0FA8 	3FC4
		LJUMP 	7A1H 			//0FA9 	3FA1
		LDR 	4CH, 0H 			//0FAA 	184C
		SUBWR 	4BH, 0H 		//0FAB 	124B
		BTSC 	3H, 0H 			//0FAC 	2803
		LJUMP 	7C4H 			//0FAD 	3FC4
		LSLF 	41H, 1H 		//0FAE 	05C1
		RLR 	42H, 1H 			//0FAF 	1DC2
		RLR 	43H, 1H 			//0FB0 	1DC3
		DECR 	4CH, 1H 		//0FB1 	13CC
		LDR 	4BH, 0H 			//0FB2 	184B
		XORWR 	4CH, 0H 		//0FB3 	164C
		BTSC 	3H, 2H 			//0FB4 	2903
		LJUMP 	7C0H 			//0FB5 	3FC0
		DECR 	4AH, 1H 		//0FB6 	13CA
		LDR 	4AH, 0H 			//0FB7 	184A
		ANDWI 	7H 			//0FB8 	0907
		BTSC 	3H, 2H 			//0FB9 	2903
		LJUMP 	7C0H 			//0FBA 	3FC0
		LJUMP 	7AEH 			//0FBB 	3FAE
		LSRF 	46H, 1H 		//0FBC 	06C6
		RRR 	45H, 1H 			//0FBD 	1CC5
		RRR 	44H, 1H 			//0FBE 	1CC4
		INCR 	4BH, 1H 		//0FBF 	1ACB
		LDR 	4CH, 0H 			//0FC0 	184C
		XORWR 	4BH, 0H 		//0FC1 	164B
		BTSS 	3H, 2H 			//0FC2 	2D03
		LJUMP 	7BCH 			//0FC3 	3FBC
		BTSS 	4AH, 7H 		//0FC4 	2FCA
		LJUMP 	7CFH 			//0FC5 	3FCF
		LDWI 	FFH 			//0FC6 	00FF
		XORWR 	41H, 1H 		//0FC7 	16C1
		XORWR 	42H, 1H 		//0FC8 	16C2
		XORWR 	43H, 1H 		//0FC9 	16C3
		INCR 	41H, 1H 		//0FCA 	1AC1
		BTSC 	3H, 2H 			//0FCB 	2903
		INCR 	42H, 1H 		//0FCC 	1AC2
		BTSC 	3H, 2H 			//0FCD 	2903
		INCR 	43H, 1H 		//0FCE 	1AC3
		BTSS 	4AH, 6H 		//0FCF 	2F4A
		LJUMP 	7D7H 			//0FD0 	3FD7
		LCALL 	7FAH 			//0FD1 	37FA
		MOVLP 	8H 			//0FD2 	0188
		BTSC 	3H, 2H 			//0FD3 	2903
		INCR 	45H, 1H 		//0FD4 	1AC5
		BTSC 	3H, 2H 			//0FD5 	2903
		INCR 	46H, 1H 		//0FD6 	1AC6
		CLRF 	4AH 			//0FD7 	11CA
		LDR 	41H, 0H 			//0FD8 	1841
		ADDWR 	44H, 1H 		//0FD9 	17C4
		LDR 	42H, 0H 			//0FDA 	1842
		ADDWFC 	45H, 1H 		//0FDB 	0DC5
		LDR 	43H, 0H 			//0FDC 	1843
		ADDWFC 	46H, 1H 		//0FDD 	0DC6
		BTSS 	46H, 7H 		//0FDE 	2FC6
		LJUMP 	7E7H 			//0FDF 	3FE7
		LCALL 	7FAH 			//0FE0 	37FA
		BTSC 	3H, 2H 			//0FE1 	2903
		INCR 	45H, 1H 		//0FE2 	1AC5
		BTSC 	3H, 2H 			//0FE3 	2903
		INCR 	46H, 1H 		//0FE4 	1AC6
		CLRF 	4AH 			//0FE5 	11CA
		INCR 	4AH, 1H 		//0FE6 	1ACA
		LDR 	44H, 0H 			//0FE7 	1844
		STR 	2DH 			//0FE8 	10AD
		LDR 	45H, 0H 			//0FE9 	1845
		STR 	2EH 			//0FEA 	10AE
		LDR 	46H, 0H 			//0FEB 	1846
		STR 	2FH 			//0FEC 	10AF
		LDR 	4CH, 0H 			//0FED 	184C
		STR 	30H 			//0FEE 	10B0
		LDR 	4AH, 0H 			//0FEF 	184A
		STR 	31H 			//0FF0 	10B1
		MOVLP 	1EH 			//0FF1 	019E
		LCALL 	640H 			//0FF2 	3640
		LDR 	2DH, 0H 			//0FF3 	182D
		STR 	41H 			//0FF4 	10C1
		LDR 	2EH, 0H 			//0FF5 	182E
		STR 	42H 			//0FF6 	10C2
		LDR 	2FH, 0H 			//0FF7 	182F
		STR 	43H 			//0FF8 	10C3
		RET 					//0FF9 	1008
		LDWI 	FFH 			//0FFA 	00FF
		XORWR 	44H, 1H 		//0FFB 	16C4
		ORG		0FFCH
		XORWR 	45H, 1H 		//0FFC 	16C5
		XORWR 	46H, 1H 		//0FFD 	16C6
		INCR 	44H, 1H 		//0FFE 	1AC4
		RET 					//0FFF 	1008
		ORG		10D8H

		//;NFB.C: 630: }
		//;NFB.C: 631: HTVP = (float)HTVP_*2/4096;
		LCALL 	70AH 			//10D8 	370A
		MOVLP 	2H 			//10D9 	0182
		LCALL 	2AFH 			//10DA 	32AF
		MOVLP 	10H 			//10DB 	0190
		MOVLP 	19H 			//10DC 	0199
		LCALL 	146H 			//10DD 	3146
		MOVLP 	10H 			//10DE 	0190
		LCALL 	715H 			//10DF 	3715
		MOVLP 	1DH 			//10E0 	019D
		LCALL 	534H 			//10E1 	3534
		MOVLP 	10H 			//10E2 	0190
		MOVLP 	2H 			//10E3 	0182
		LCALL 	205H 			//10E4 	3205
		MOVLP 	10H 			//10E5 	0190
		MOVLP 	1DH 			//10E6 	019D
		LCALL 	5D6H 			//10E7 	35D6
		MOVLP 	10H 			//10E8 	0190
		MOVLP 	1H 			//10E9 	0181
		LCALL 	1E4H 			//10EA 	31E4
		MOVLP 	10H 			//10EB 	0190

		//;NFB.C: 632: HTVN = (float)HTVN_*2/4096;
		LCALL 	70AH 			//10EC 	370A
		MOVLP 	2H 			//10ED 	0182
		LCALL 	2C1H 			//10EE 	32C1
		MOVLP 	10H 			//10EF 	0190
		MOVLP 	19H 			//10F0 	0199
		LCALL 	146H 			//10F1 	3146
		MOVLP 	10H 			//10F2 	0190
		LCALL 	715H 			//10F3 	3715
		MOVLP 	1DH 			//10F4 	019D
		LCALL 	534H 			//10F5 	3534
		MOVLP 	10H 			//10F6 	0190
		MOVLP 	2H 			//10F7 	0182
		LCALL 	205H 			//10F8 	3205
		MOVLP 	10H 			//10F9 	0190
		MOVLP 	1DH 			//10FA 	019D
		LCALL 	5D6H 			//10FB 	35D6
		MOVLP 	10H 			//10FC 	0190
		MOVLP 	1H 			//10FD 	0181
		LCALL 	1D8H 			//10FE 	31D8
		MOVLP 	10H 			//10FF 	0190

		//;NFB.C: 633: HTVI = (float)HTVI_*2/4096;
		LCALL 	70AH 			//1100 	370A
		MOVLP 	2H 			//1101 	0182
		LCALL 	2B8H 			//1102 	32B8
		MOVLP 	10H 			//1103 	0190
		MOVLP 	19H 			//1104 	0199
		LCALL 	146H 			//1105 	3146
		MOVLP 	10H 			//1106 	0190
		LCALL 	715H 			//1107 	3715
		MOVLP 	1DH 			//1108 	019D
		LCALL 	534H 			//1109 	3534
		MOVLP 	10H 			//110A 	0190
		MOVLP 	2H 			//110B 	0182
		LCALL 	205H 			//110C 	3205
		MOVLP 	10H 			//110D 	0190
		MOVLP 	1DH 			//110E 	019D
		LCALL 	5D6H 			//110F 	35D6
		MOVLP 	10H 			//1110 	0190

		//;NFB.C: 634: I = HTVI/0.01/39;
		LCALL 	7D1H 			//1111 	37D1
		MOVLP 	1DH 			//1112 	019D
		LCALL 	5D6H 			//1113 	35D6
		MOVLP 	10H 			//1114 	0190

		//;NFB.C: 634: I = HTVI/0.01/39;
		LCALL 	7F0H 			//1115 	37F0
		MOVLP 	10H 			//1116 	0190
		LCALL 	7C3H 			//1117 	37C3
		MOVLP 	1DH 			//1118 	019D
		LCALL 	5D6H 			//1119 	35D6
		MOVLP 	10H 			//111A 	0190

		//;NFB.C: 635: V = (HTVP-HTVN)*2;
		LCALL 	721H 			//111B 	3721
		MOVLP 	DH 			//111C 	018D
		LCALL 	5D4H 			//111D 	35D4
		MOVLP 	10H 			//111E 	0190
		MOVLP 	2H 			//111F 	0182
		LCALL 	28BH 			//1120 	328B
		MOVLP 	10H 			//1121 	0190
		MOVLP 	1DH 			//1122 	019D
		LCALL 	534H 			//1123 	3534
		MOVLP 	10H 			//1124 	0190

		//;NFB.C: 636: R = V/I;
		LCALL 	794H 			//1125 	3794
		MOVLP 	1DH 			//1126 	019D
		LCALL 	5D6H 			//1127 	35D6
		MOVLP 	10H 			//1128 	0190

		//;NFB.C: 637: T = (((R/R0)-1)/0.0026)+25;
		LCALL 	76FH 			//1129 	376F
		MOVLP 	1DH 			//112A 	019D
		LCALL 	5D6H 			//112B 	35D6
		MOVLP 	10H 			//112C 	0190
		MOVLP 	1H 			//112D 	0181
		LCALL 	1F0H 			//112E 	31F0
		MOVLP 	10H 			//112F 	0190
		MOVLP 	FH 			//1130 	018F
		LCALL 	74CH 			//1131 	374C
		MOVLP 	10H 			//1132 	0190

		//;NFB.C: 637: T = (((R/R0)-1)/0.0026)+25;
		LCALL 	74AH 			//1133 	374A
		MOVLP 	1DH 			//1134 	019D
		LCALL 	5D6H 			//1135 	35D6
		MOVLP 	10H 			//1136 	0190
		MOVLP 	1H 			//1137 	0181
		LCALL 	1F0H 			//1138 	31F0
		MOVLP 	10H 			//1139 	0190
		MOVLP 	FH 			//113A 	018F
		LCALL 	74CH 			//113B 	374C
		MOVLP 	10H 			//113C 	0190
		MOVLP 	2H 			//113D 	0182
		LCALL 	26CH 			//113E 	326C
		MOVLP 	10H 			//113F 	0190

		//;NFB.C: 638: }
		//;NFB.C: 639: if(HTtimecnt>=timeleft){
		MOVLB 	4H 			//1140 	1024
		LDR 	4AH, 0H 			//1141 	184A
		MOVLB 	1H 			//1142 	1021
		STR 	59H 			//1143 	10D9
		MOVLB 	4H 			//1144 	1024
		LDR 	4BH, 0H 			//1145 	184B
		MOVLP 	1H 			//1146 	0181
		LCALL 	1FCH 			//1147 	31FC
		MOVLP 	10H 			//1148 	0190
		MOVLB 	3H 			//1149 	1023
		SUBWR 	68H, 0H 		//114A 	1268
		BTSS 	3H, 2H 			//114B 	2D03
		LJUMP 	15AH 			//114C 	395A
		MOVLP 	3H 			//114D 	0183
		LCALL 	340H 			//114E 	3340
		MOVLP 	10H 			//114F 	0190
		BTSS 	3H, 2H 			//1150 	2D03
		LJUMP 	15AH 			//1151 	395A
		MOVLP 	3H 			//1152 	0183
		LCALL 	336H 			//1153 	3336
		MOVLP 	10H 			//1154 	0190
		BTSS 	3H, 2H 			//1155 	2D03
		LJUMP 	15AH 			//1156 	395A
		MOVLP 	3H 			//1157 	0183
		LCALL 	33BH 			//1158 	333B
		MOVLP 	10H 			//1159 	0190
		BTSS 	3H, 0H 			//115A 	2C03
		LJUMP 	183H 			//115B 	3983

		//;NFB.C: 640: PC1 = ~PC1;
		LDWI 	2H 			//115C 	0002
		MOVLB 	0H 			//115D 	1020
		XORWR 	EH, 1H 		//115E 	168E

		//;NFB.C: 641: char msg[10];
		//;NFB.C: 642: sprintf(msg,"T:%0.1f\r\n",T);
		LDWI 	A0H 			//115F 	00A0
		MOVLB 	1H 			//1160 	1021
		STR 	41H 			//1161 	10C1
		LDWI 	1H 			//1162 	0001
		MOVLP 	2H 			//1163 	0182
		LCALL 	24DH 			//1164 	324D
		MOVLP 	10H 			//1165 	0190
		MOVLP 	2H 			//1166 	0182
		LCALL 	224H 			//1167 	3224
		MOVLP 	10H 			//1168 	0190
		MOVLP 	8H 			//1169 	0188
		LCALL 	34H 			//116A 	3034
		MOVLP 	10H 			//116B 	0190

		//;NFB.C: 643: send(msg,strlen(msg));
		LDWI 	A0H 			//116C 	00A0
		STR 	4BH 			//116D 	10CB
		LDWI 	1H 			//116E 	0001
		STR 	4CH 			//116F 	10CC
		LDWI 	A0H 			//1170 	00A0
		MOVLB 	0H 			//1171 	1020
		STR 	2DH 			//1172 	10AD
		LDWI 	1H 			//1173 	0001
		STR 	2EH 			//1174 	10AE
		MOVLP 	6H 			//1175 	0186
		LCALL 	6F5H 			//1176 	36F5
		MOVLP 	10H 			//1177 	0190
		MOVLP 	2H 			//1178 	0182
		LCALL 	245H 			//1179 	3245
		MOVLP 	10H 			//117A 	0190
		MOVLP 	19H 			//117B 	0199
		LCALL 	173H 			//117C 	3173
		MOVLP 	10H 			//117D 	0190

		//;NFB.C: 644: timeleft += 20;
		LDWI 	14H 			//117E 	0014
		MOVLB 	4H 			//117F 	1024
		ADDWR 	4AH, 1H 		//1180 	17CA
		BTSC 	3H, 0H 			//1181 	2803
		INCR 	4BH, 1H 		//1182 	1ACB

		//;NFB.C: 645: }
		//;NFB.C: 646: if(t1>=30){
		MOVLB 	3H 			//1183 	1023
		LDR 	6DH, 0H 			//1184 	186D
		MOVLP 	2H 			//1185 	0182
		LCALL 	258H 			//1186 	3258
		MOVLP 	10H 			//1187 	0190
		BTSS 	3H, 2H 			//1188 	2D03
		LJUMP 	18DH 			//1189 	398D
		LDWI 	1EH 			//118A 	001E
		MOVLB 	3H 			//118B 	1023
		SUBWR 	6CH, 0H 		//118C 	126C
		BTSS 	3H, 0H 			//118D 	2C03
		LJUMP 	23AH 			//118E 	3A3A

		//;NFB.C: 647: if(HTtimecnt==20){
		LDWI 	14H 			//118F 	0014
		MOVLP 	3H 			//1190 	0183
		LCALL 	31BH 			//1191 	331B
		MOVLP 	10H 			//1192 	0190
		BTSS 	3H, 2H 			//1193 	2D03
		LJUMP 	1B4H 			//1194 	39B4

		//;NFB.C: 648: Toffset = T;
		//;NFB.C: 649: Tm = T1-T;
		MOVLP 	1H 			//1195 	0181
		LCALL 	1CBH 			//1196 	31CB
		MOVLP 	10H 			//1197 	0190
		LCALL 	7B7H 			//1198 	37B7
		MOVLP 	2H 			//1199 	0182
		LCALL 	2FFH 			//119A 	32FF
		MOVLP 	10H 			//119B 	0190
		MOVLP 	DH 			//119C 	018D
		LCALL 	5D4H 			//119D 	35D4
		MOVLP 	10H 			//119E 	0190

		//;NFB.C: 650: m = Tm/(t1-1);
		MOVLP 	2H 			//119F 	0182
		LCALL 	25EH 			//11A0 	325E
		MOVLP 	10H 			//11A1 	0190
		ADDWI 	FFH 			//11A2 	0EFF
		MOVLB 	0H 			//11A3 	1020
		STR 	3BH 			//11A4 	10BB
		MOVLP 	3H 			//11A5 	0183
		LCALL 	321H 			//11A6 	3321
		MOVLP 	10H 			//11A7 	0190
		MOVLP 	1DH 			//11A8 	019D
		LCALL 	5BBH 			//11A9 	35BB
		MOVLP 	10H 			//11AA 	0190
		MOVLP 	2H 			//11AB 	0182
		LCALL 	20CH 			//11AC 	320C
		MOVLP 	10H 			//11AD 	0190
		MOVLP 	1DH 			//11AE 	019D
		LCALL 	5D6H 			//11AF 	35D6
		MOVLP 	10H 			//11B0 	0190
		MOVLP 	2H 			//11B1 	0182
		LCALL 	27FH 			//11B2 	327F
		MOVLP 	10H 			//11B3 	0190

		//;NFB.C: 651: }
		//;NFB.C: 652: if(HTtimecnt>20){
		MOVLB 	3H 			//11B4 	1023
		LDR 	68H, 0H 			//11B5 	1868
		BTSS 	3H, 2H 			//11B6 	2D03
		LJUMP 	1C2H 			//11B7 	39C2
		LDR 	67H, 0H 			//11B8 	1867
		BTSS 	3H, 2H 			//11B9 	2D03
		LJUMP 	1C2H 			//11BA 	39C2
		LDR 	66H, 0H 			//11BB 	1866
		BTSS 	3H, 2H 			//11BC 	2D03
		LJUMP 	1C2H 			//11BD 	39C2
		LDWI 	15H 			//11BE 	0015
		SUBWR 	65H, 0H 		//11BF 	1265
		BTSS 	3H, 0H 			//11C0 	2C03
		LJUMP 	280H 			//11C1 	3A80

		//;NFB.C: 653: diffT = ((m*(HTtimecnt-20)/20)+Toffset)-T;
		LCALL 	7B7H 			//11C2 	37B7
		MOVLP 	2H 			//11C3 	0182
		LCALL 	232H 			//11C4 	3232
		MOVLP 	10H 			//11C5 	0190
		LDWI 	ECH 			//11C6 	00EC
		MOVLB 	3H 			//11C7 	1023
		ADDWR 	65H, 0H 		//11C8 	1765
		MOVLB 	0H 			//11C9 	1020
		STR 	35H 			//11CA 	10B5
		LDWI 	FFH 			//11CB 	00FF
		MOVLB 	3H 			//11CC 	1023
		ADDWFC 	66H, 0H 		//11CD 	0D66
		MOVLB 	0H 			//11CE 	1020
		STR 	36H 			//11CF 	10B6
		LDWI 	FFH 			//11D0 	00FF
		MOVLB 	3H 			//11D1 	1023
		ADDWFC 	67H, 0H 		//11D2 	0D67
		MOVLB 	0H 			//11D3 	1020
		STR 	37H 			//11D4 	10B7
		LDWI 	FFH 			//11D5 	00FF
		MOVLB 	3H 			//11D6 	1023
		ADDWFC 	68H, 0H 		//11D7 	0D68
		MOVLB 	0H 			//11D8 	1020
		STR 	38H 			//11D9 	10B8
		MOVLP 	19H 			//11DA 	0199
		LCALL 	156H 			//11DB 	3156
		MOVLP 	10H 			//11DC 	0190
		LDR 	35H, 0H 			//11DD 	1835
		MOVLB 	1H 			//11DE 	1021
		STR 	23H 			//11DF 	10A3
		MOVLB 	0H 			//11E0 	1020
		LDR 	36H, 0H 			//11E1 	1836
		MOVLB 	1H 			//11E2 	1021
		STR 	24H 			//11E3 	10A4
		MOVLB 	0H 			//11E4 	1020
		LDR 	37H, 0H 			//11E5 	1837
		MOVLB 	1H 			//11E6 	1021
		STR 	25H 			//11E7 	10A5
		MOVLP 	1DH 			//11E8 	019D
		LCALL 	534H 			//11E9 	3534
		MOVLP 	10H 			//11EA 	0190
		MOVLP 	2H 			//11EB 	0182
		LCALL 	205H 			//11EC 	3205
		MOVLP 	10H 			//11ED 	0190
		MOVLP 	1DH 			//11EE 	019D
		LCALL 	5D6H 			//11EF 	35D6
		MOVLP 	10H 			//11F0 	0190
		LDR 	2CH, 0H 			//11F1 	182C
		MOVLB 	0H 			//11F2 	1020
		STR 	50H 			//11F3 	10D0
		MOVLB 	1H 			//11F4 	1021
		LDR 	2DH, 0H 			//11F5 	182D
		MOVLB 	0H 			//11F6 	1020
		STR 	51H 			//11F7 	10D1
		MOVLB 	1H 			//11F8 	1021
		LDR 	2EH, 0H 			//11F9 	182E
		MOVLB 	0H 			//11FA 	1020
		STR 	52H 			//11FB 	10D2
		MOVLP 	DH 			//11FC 	018D
		LCALL 	5D4H 			//11FD 	35D4
		MOVLP 	10H 			//11FE 	0190
		LDR 	4DH, 0H 			//11FF 	184D
		MOVLB 	3H 			//1200 	1023
		STR 	53H 			//1201 	10D3
		MOVLB 	0H 			//1202 	1020
		LDR 	4EH, 0H 			//1203 	184E
		MOVLB 	3H 			//1204 	1023
		STR 	54H 			//1205 	10D4
		MOVLB 	0H 			//1206 	1020
		LDR 	4FH, 0H 			//1207 	184F
		MOVLB 	3H 			//1208 	1023
		STR 	55H 			//1209 	10D5

		//;NFB.C: 653: diffT = ((m*(HTtimecnt-20)/20)+Toffset)-T;
		MOVLB 	4H 			//120A 	1024
		LDR 	29H, 0H 			//120B 	1829
		MOVLB 	0H 			//120C 	1020
		STR 	41H 			//120D 	10C1
		MOVLB 	4H 			//120E 	1024
		LDR 	2AH, 0H 			//120F 	182A
		MOVLB 	0H 			//1210 	1020
		STR 	42H 			//1211 	10C2
		MOVLB 	4H 			//1212 	1024
		LDR 	2BH, 0H 			//1213 	182B
		MOVLB 	0H 			//1214 	1020
		STR 	43H 			//1215 	10C3
		MOVLB 	3H 			//1216 	1023
		LDR 	53H, 0H 			//1217 	1853
		MOVLB 	0H 			//1218 	1020
		STR 	44H 			//1219 	10C4
		MOVLB 	3H 			//121A 	1023
		LDR 	54H, 0H 			//121B 	1854
		MOVLB 	0H 			//121C 	1020
		STR 	45H 			//121D 	10C5
		MOVLB 	3H 			//121E 	1023
		LDR 	55H, 0H 			//121F 	1855
		MOVLB 	0H 			//1220 	1020
		STR 	46H 			//1221 	10C6
		MOVLP 	FH 			//1222 	018F
		LCALL 	74CH 			//1223 	374C
		MOVLP 	10H 			//1224 	0190
		LDR 	41H, 0H 			//1225 	1841
		STR 	60H 			//1226 	10E0
		LDR 	42H, 0H 			//1227 	1842
		STR 	61H 			//1228 	10E1
		LDR 	43H, 0H 			//1229 	1843
		STR 	62H 			//122A 	10E2

		//;NFB.C: 654: if(diffT>=0){
		LDR 	60H, 0H 			//122B 	1860
		STR 	3FH 			//122C 	10BF
		LDR 	61H, 0H 			//122D 	1861
		STR 	40H 			//122E 	10C0
		LDR 	62H, 0H 			//122F 	1862
		MOVLP 	EH 			//1230 	018E
		LCALL 	6F9H 			//1231 	36F9
		MOVLP 	10H 			//1232 	0190
		MOVLP 	DH 			//1233 	018D
		LCALL 	506H 			//1234 	3506
		MOVLP 	10H 			//1235 	0190
		BTSC 	3H, 0H 			//1236 	2803
		LJUMP 	27FH 			//1237 	3A7F

		//;NFB.C: 657: PA0 = 0;
		//;NFB.C: 656: } else{
		BCR 	CH, 0H 			//1238 	200C
		LJUMP 	280H 			//1239 	3A80
		MOVLB 	3H 			//123A 	1023
		LDR 	6DH, 0H 			//123B 	186D
		MOVLP 	2H 			//123C 	0182
		LCALL 	258H 			//123D 	3258
		MOVLP 	10H 			//123E 	0190
		BTSS 	3H, 2H 			//123F 	2D03
		LJUMP 	244H 			//1240 	3A44
		LDWI 	14H 			//1241 	0014
		MOVLB 	3H 			//1242 	1023
		SUBWR 	6CH, 0H 		//1243 	126C
		BTSS 	3H, 0H 			//1244 	2C03
		LJUMP 	280H 			//1245 	3A80

		//;NFB.C: 661: if(HTtimecnt==200){
		LDWI 	C8H 			//1246 	00C8
		MOVLP 	3H 			//1247 	0183
		LCALL 	31BH 			//1248 	331B
		MOVLP 	10H 			//1249 	0190
		BTSS 	3H, 2H 			//124A 	2D03
		LJUMP 	26BH 			//124B 	3A6B

		//;NFB.C: 662: Toffset = T;
		//;NFB.C: 663: Tm = T1-T;
		MOVLP 	1H 			//124C 	0181
		LCALL 	1CBH 			//124D 	31CB
		MOVLP 	10H 			//124E 	0190
		LCALL 	7B7H 			//124F 	37B7
		MOVLP 	2H 			//1250 	0182
		LCALL 	2FFH 			//1251 	32FF
		MOVLP 	10H 			//1252 	0190
		MOVLP 	DH 			//1253 	018D
		LCALL 	5D4H 			//1254 	35D4
		MOVLP 	10H 			//1255 	0190

		//;NFB.C: 664: m = Tm/(t1-10);
		MOVLP 	2H 			//1256 	0182
		LCALL 	25EH 			//1257 	325E
		MOVLP 	10H 			//1258 	0190
		ADDWI 	F6H 			//1259 	0EF6
		MOVLB 	0H 			//125A 	1020
		STR 	3BH 			//125B 	10BB
		MOVLP 	3H 			//125C 	0183
		LCALL 	321H 			//125D 	3321
		MOVLP 	10H 			//125E 	0190
		MOVLP 	1DH 			//125F 	019D
		LCALL 	5BBH 			//1260 	35BB
		MOVLP 	10H 			//1261 	0190
		MOVLP 	2H 			//1262 	0182
		LCALL 	20CH 			//1263 	320C
		MOVLP 	10H 			//1264 	0190
		MOVLP 	1DH 			//1265 	019D
		LCALL 	5D6H 			//1266 	35D6
		MOVLP 	10H 			//1267 	0190
		MOVLP 	2H 			//1268 	0182
		LCALL 	27FH 			//1269 	327F
		MOVLP 	10H 			//126A 	0190

		//;NFB.C: 665: }
		//;NFB.C: 666: if(HTtimecnt>200){
		MOVLB 	3H 			//126B 	1023
		LDR 	68H, 0H 			//126C 	1868
		BTSS 	3H, 2H 			//126D 	2D03
		LJUMP 	279H 			//126E 	3A79
		LDR 	67H, 0H 			//126F 	1867
		BTSS 	3H, 2H 			//1270 	2D03
		LJUMP 	279H 			//1271 	3A79
		LDR 	66H, 0H 			//1272 	1866
		BTSS 	3H, 2H 			//1273 	2D03
		LJUMP 	279H 			//1274 	3A79
		LDWI 	C9H 			//1275 	00C9
		SUBWR 	65H, 0H 		//1276 	1265
		BTSS 	3H, 0H 			//1277 	2C03
		LJUMP 	280H 			//1278 	3A80

		//;NFB.C: 667: diffT = ((m*(HTtimecnt-200)/20)+Toffset)-T;
		LCALL 	7B7H 			//1279 	37B7
		MOVLP 	2H 			//127A 	0182
		LCALL 	232H 			//127B 	3232
		MOVLP 	10H 			//127C 	0190
		LDWI 	38H 			//127D 	0038
		LJUMP 	1C7H 			//127E 	39C7

		//;NFB.C: 668: if(diffT>=0){
		//;NFB.C: 667: diffT = ((m*(HTtimecnt-200)/20)+Toffset)-T;
		//;NFB.C: 655: PA0 = 1;
		BSR 	CH, 0H 			//127F 	240C

		//;NFB.C: 672: }
		//;NFB.C: 673: }
		//;NFB.C: 674: }
		//;NFB.C: 675: if(HTtimecnt>=timeleft1){
		MOVLB 	4H 			//1280 	1024
		LDR 	48H, 0H 			//1281 	1848
		MOVLB 	1H 			//1282 	1021
		STR 	59H 			//1283 	10D9
		MOVLB 	4H 			//1284 	1024
		LDR 	49H, 0H 			//1285 	1849
		MOVLP 	1H 			//1286 	0181
		LCALL 	1FCH 			//1287 	31FC
		MOVLP 	10H 			//1288 	0190
		MOVLB 	3H 			//1289 	1023
		SUBWR 	68H, 0H 		//128A 	1268
		BTSS 	3H, 2H 			//128B 	2D03
		LJUMP 	29AH 			//128C 	3A9A
		MOVLP 	3H 			//128D 	0183
		LCALL 	340H 			//128E 	3340
		MOVLP 	10H 			//128F 	0190
		BTSS 	3H, 2H 			//1290 	2D03
		LJUMP 	29AH 			//1291 	3A9A
		MOVLP 	3H 			//1292 	0183
		LCALL 	336H 			//1293 	3336
		MOVLP 	10H 			//1294 	0190
		BTSS 	3H, 2H 			//1295 	2D03
		LJUMP 	29AH 			//1296 	3A9A
		MOVLP 	3H 			//1297 	0183
		LCALL 	33BH 			//1298 	333B
		MOVLP 	10H 			//1299 	0190
		BTSS 	3H, 0H 			//129A 	2C03
		LJUMP 	2A3H 			//129B 	3AA3

		//;NFB.C: 676: PA0 = 1;
		MOVLB 	0H 			//129C 	1020
		BSR 	CH, 0H 			//129D 	240C

		//;NFB.C: 677: timeleft1 += 10;
		LDWI 	AH 			//129E 	000A
		MOVLB 	4H 			//129F 	1024
		ADDWR 	48H, 1H 		//12A0 	17C8
		BTSC 	3H, 0H 			//12A1 	2803
		INCR 	49H, 1H 		//12A2 	1AC9

		//;NFB.C: 678: }
		//;NFB.C: 679: if(HTtimecnt>((t1*20)+9) || T>=T1){
		MOVLB 	3H 			//12A3 	1023
		LDR 	6DH, 0H 			//12A4 	186D
		MOVLB 	0H 			//12A5 	1020
		STR 	3CH 			//12A6 	10BC
		MOVLB 	3H 			//12A7 	1023
		LDR 	6CH, 0H 			//12A8 	186C
		MOVLB 	0H 			//12A9 	1020
		STR 	3BH 			//12AA 	10BB
		LDWI 	14H 			//12AB 	0014
		STR 	3DH 			//12AC 	10BD
		CLRF 	3EH 			//12AD 	11BE
		MOVLP 	1BH 			//12AE 	019B
		LCALL 	3B7H 			//12AF 	33B7
		MOVLP 	10H 			//12B0 	0190
		LDR 	3BH, 0H 			//12B1 	183B
		ADDWI 	9H 			//12B2 	0E09
		MOVLB 	1H 			//12B3 	1021
		STR 	59H 			//12B4 	10D9
		LDWI 	0H 			//12B5 	0000
		MOVLB 	0H 			//12B6 	1020
		ADDWFC 	3CH, 0H 		//12B7 	0D3C
		MOVLB 	1H 			//12B8 	1021
		STR 	5AH 			//12B9 	10DA
		LDR 	59H, 0H 			//12BA 	1859
		STR 	5BH 			//12BB 	10DB
		LDR 	5AH, 0H 			//12BC 	185A
		STR 	5CH 			//12BD 	10DC
		LDWI 	0H 			//12BE 	0000
		BTSC 	5CH, 7H 		//12BF 	2BDC
		LDWI 	FFH 			//12C0 	00FF
		STR 	5DH 			//12C1 	10DD
		STR 	5EH 			//12C2 	10DE
		MOVLB 	3H 			//12C3 	1023
		LDR 	68H, 0H 			//12C4 	1868
		MOVLB 	1H 			//12C5 	1021
		SUBWR 	5EH, 0H 		//12C6 	125E
		BTSS 	3H, 2H 			//12C7 	2D03
		LJUMP 	2D9H 			//12C8 	3AD9
		MOVLB 	3H 			//12C9 	1023
		LDR 	67H, 0H 			//12CA 	1867
		MOVLB 	1H 			//12CB 	1021
		SUBWR 	5DH, 0H 		//12CC 	125D
		BTSS 	3H, 2H 			//12CD 	2D03
		LJUMP 	2D9H 			//12CE 	3AD9
		MOVLB 	3H 			//12CF 	1023
		LDR 	66H, 0H 			//12D0 	1866
		MOVLB 	1H 			//12D1 	1021
		SUBWR 	5CH, 0H 		//12D2 	125C
		BTSS 	3H, 2H 			//12D3 	2D03
		LJUMP 	2D9H 			//12D4 	3AD9
		MOVLB 	3H 			//12D5 	1023
		LDR 	65H, 0H 			//12D6 	1865
		MOVLB 	1H 			//12D7 	1021
		SUBWR 	5BH, 0H 		//12D8 	125B
		BTSS 	3H, 0H 			//12D9 	2C03
		LJUMP 	2F2H 			//12DA 	3AF2
		MOVLB 	3H 			//12DB 	1023
		LDR 	69H, 0H 			//12DC 	1869
		MOVLB 	0H 			//12DD 	1020
		STR 	3FH 			//12DE 	10BF
		MOVLB 	3H 			//12DF 	1023
		LDR 	6AH, 0H 			//12E0 	186A
		MOVLB 	0H 			//12E1 	1020
		STR 	40H 			//12E2 	10C0
		MOVLB 	3H 			//12E3 	1023
		LDR 	6BH, 0H 			//12E4 	186B
		MOVLB 	0H 			//12E5 	1020
		STR 	41H 			//12E6 	10C1
		LDR 	5AH, 0H 			//12E7 	185A
		STR 	42H 			//12E8 	10C2
		LDR 	5BH, 0H 			//12E9 	185B
		STR 	43H 			//12EA 	10C3
		LDR 	5CH, 0H 			//12EB 	185C
		STR 	44H 			//12EC 	10C4
		MOVLP 	DH 			//12ED 	018D
		LCALL 	506H 			//12EE 	3506
		MOVLP 	10H 			//12EF 	0190
		BTSS 	3H, 0H 			//12F0 	2C03
		LJUMP 	35BH 			//12F1 	3B5B

		//;NFB.C: 680: char msg[10];
		//;NFB.C: 681: sprintf(msg,"T%0.1f\r\n",T);
		LDWI 	AAH 			//12F2 	00AA
		MOVLB 	1H 			//12F3 	1021
		STR 	41H 			//12F4 	10C1
		LDWI 	1H 			//12F5 	0001
		STR 	42H 			//12F6 	10C2
		LDWI 	A6H 			//12F7 	00A6
		STR 	43H 			//12F8 	10C3
		LDWI 	A0H 			//12F9 	00A0
		MOVLP 	2H 			//12FA 	0182
		LCALL 	224H 			//12FB 	3224
		MOVLP 	10H 			//12FC 	0190
		MOVLP 	8H 			//12FD 	0188
		LCALL 	34H 			//12FE 	3034
		MOVLP 	10H 			//12FF 	0190

		//;NFB.C: 682: send(msg,strlen(msg));
		LDWI 	AAH 			//1300 	00AA
		STR 	4BH 			//1301 	10CB
		LDWI 	1H 			//1302 	0001
		STR 	4CH 			//1303 	10CC
		LDWI 	AAH 			//1304 	00AA
		MOVLB 	0H 			//1305 	1020
		STR 	2DH 			//1306 	10AD
		LDWI 	1H 			//1307 	0001
		STR 	2EH 			//1308 	10AE
		MOVLP 	6H 			//1309 	0186
		LCALL 	6F5H 			//130A 	36F5
		MOVLP 	10H 			//130B 	0190
		MOVLP 	2H 			//130C 	0182
		LCALL 	245H 			//130D 	3245
		MOVLP 	10H 			//130E 	0190
		MOVLP 	19H 			//130F 	0199
		LCALL 	173H 			//1310 	3173
		MOVLP 	10H 			//1311 	0190

		//;NFB.C: 683: send((char*)"T0\r\n",4);
		MOVLP 	2H 			//1312 	0182
		LCALL 	2DCH 			//1313 	32DC
		MOVLP 	10H 			//1314 	0190
		MOVLP 	2H 			//1315 	0182
		LCALL 	2CAH 			//1316 	32CA
		MOVLP 	10H 			//1317 	0190
		MOVLP 	19H 			//1318 	0199
		LCALL 	173H 			//1319 	3173
		MOVLP 	10H 			//131A 	0190

		//;NFB.C: 684: send((char*)"H0\r\n",4);
		MOVLP 	2H 			//131B 	0182
		LCALL 	2D8H 			//131C 	32D8
		MOVLP 	10H 			//131D 	0190
		MOVLP 	2H 			//131E 	0182
		LCALL 	2CAH 			//131F 	32CA
		MOVLP 	10H 			//1320 	0190
		MOVLP 	19H 			//1321 	0199
		LCALL 	173H 			//1322 	3173
		MOVLP 	10H 			//1323 	0190

		//;NFB.C: 685: PA0 = 0;
		MOVLB 	0H 			//1324 	1020
		BCR 	CH, 0H 			//1325 	200C

		//;NFB.C: 686: HTOn = 0;
		//;NFB.C: 687: HTtimer = 0;
		//;NFB.C: 688: PB0 = 1;
		MOVLP 	2H 			//1326 	0182
		LCALL 	2F8H 			//1327 	32F8
		MOVLP 	10H 			//1328 	0190

		//;NFB.C: 689: DelayMs(500);
		MOVLP 	2H 			//1329 	0182
		LCALL 	278H 			//132A 	3278
		MOVLP 	10H 			//132B 	0190
		MOVLP 	1EH 			//132C 	019E
		LCALL 	6B7H 			//132D 	36B7
		MOVLP 	10H 			//132E 	0190

		//;NFB.C: 690: PB0 = 0;
		MOVLB 	0H 			//132F 	1020
		BCR 	DH, 0H 			//1330 	200D

		//;NFB.C: 691: DelayMs(500);
		MOVLP 	2H 			//1331 	0182
		LCALL 	297H 			//1332 	3297
		MOVLP 	10H 			//1333 	0190
		MOVLP 	1EH 			//1334 	019E
		LCALL 	6B7H 			//1335 	36B7
		MOVLP 	10H 			//1336 	0190

		//;NFB.C: 692: send((char*)"S1\r\n",4);
		LDWI 	D5H 			//1337 	00D5
		MOVLB 	1H 			//1338 	1021
		STR 	4BH 			//1339 	10CB
		LDWI 	A0H 			//133A 	00A0
		MOVLP 	2H 			//133B 	0182
		LCALL 	2CAH 			//133C 	32CA
		MOVLP 	10H 			//133D 	0190
		MOVLP 	19H 			//133E 	0199
		LCALL 	173H 			//133F 	3173
		MOVLP 	10H 			//1340 	0190

		//;NFB.C: 693: PC1 = 0;
		MOVLB 	0H 			//1341 	1020
		BCR 	EH, 1H 			//1342 	208E

		//;NFB.C: 694: PB3 = 1;
		BSR 	DH, 3H 			//1343 	258D

		//;NFB.C: 695: PB2 = 1;
		BSR 	DH, 2H 			//1344 	250D

		//;NFB.C: 696: PA1 = 1;
		BSR 	CH, 1H 			//1345 	248C

		//;NFB.C: 697: timeleft2 = 100;
		LDWI 	64H 			//1346 	0064
		MOVLB 	4H 			//1347 	1024
		STR 	46H 			//1348 	10C6
		LDWI 	9H 			//1349 	0009
		CLRF 	47H 			//134A 	11C7

		//;NFB.C: 698: timeleft3 = 9;
		STR 	44H 			//134B 	10C4
		CLRF 	45H 			//134C 	11C5

		//;NFB.C: 699: SmokeOn = 1;
		CLRF 	5EH 			//134D 	11DE
		INCR 	5EH, 1H 		//134E 	1ADE
		CLRF 	5FH 			//134F 	11DF

		//;NFB.C: 700: Puffcnt = 0;
		MOVLB 	5H 			//1350 	1025
		CLRF 	20H 			//1351 	11A0
		CLRF 	21H 			//1352 	11A1
		CLRF 	22H 			//1353 	11A2
		CLRF 	23H 			//1354 	11A3

		//;NFB.C: 701: Smoketimecnt = 0;
		MOVLB 	0H 			//1355 	1020
		CLRF 	56H 			//1356 	11D6
		CLRF 	57H 			//1357 	11D7
		CLRF 	58H 			//1358 	11D8
		CLRF 	59H 			//1359 	11D9

		//;NFB.C: 702: PA0 = 1;
		BSR 	CH, 0H 			//135A 	240C

		//;NFB.C: 703: }
		//;NFB.C: 704: }
		//;NFB.C: 705: if(Smoketimer){
		MOVLB 	4H 			//135B 	1024
		LDR 	5CH, 0H 			//135C 	185C
		IORWR 	5DH, 0H 		//135D 	145D
		BTSC 	3H, 2H 			//135E 	2903
		LJUMP 	5EBH 			//135F 	3DEB

		//;NFB.C: 706: Smoketimer = 0;
		CLRF 	5CH 			//1360 	11DC
		CLRF 	5DH 			//1361 	11DD

		//;NFB.C: 707: if(PA0){
		MOVLB 	0H 			//1362 	1020
		BTSS 	CH, 0H 			//1363 	2C0C
		LJUMP 	448H 			//1364 	3C48

		//;NFB.C: 708: HTVP_ = GET_ADC_DATA(2);
		LDWI 	2H 			//1365 	0002
		MOVLP 	1DH 			//1366 	019D
		LCALL 	5A2H 			//1367 	35A2
		MOVLP 	10H 			//1368 	0190
		MOVLP 	2H 			//1369 	0182
		LCALL 	2F0H 			//136A 	32F0
		MOVLP 	10H 			//136B 	0190

		//;NFB.C: 709: for(int i=0;i<4;i++){
		CLRF 	5CH 			//136C 	11DC
		CLRF 	5DH 			//136D 	11DD
		LDR 	5DH, 0H 			//136E 	185D
		MOVLP 	2H 			//136F 	0182
		LCALL 	258H 			//1370 	3258
		MOVLP 	10H 			//1371 	0190
		BTSS 	3H, 2H 			//1372 	2D03
		LJUMP 	377H 			//1373 	3B77
		LDWI 	4H 			//1374 	0004
		MOVLB 	3H 			//1375 	1023
		SUBWR 	5CH, 0H 		//1376 	125C
		BTSC 	3H, 0H 			//1377 	2803
		LJUMP 	38EH 			//1378 	3B8E

		//;NFB.C: 710: HTVP_ = (HTVP_+GET_ADC_DATA(2))/2;
		LDWI 	2H 			//1379 	0002
		MOVLP 	1DH 			//137A 	019D
		LCALL 	5A2H 			//137B 	35A2
		MOVLP 	10H 			//137C 	0190
		MOVLB 	3H 			//137D 	1023
		LDR 	6EH, 0H 			//137E 	186E
		MOVLB 	1H 			//137F 	1021
		ADDWR 	46H, 0H 		//1380 	1746
		STR 	59H 			//1381 	10D9
		MOVLB 	3H 			//1382 	1023
		LDR 	6FH, 0H 			//1383 	186F
		MOVLP 	2H 			//1384 	0182
		LCALL 	251H 			//1385 	3251
		MOVLP 	10H 			//1386 	0190
		MOVLP 	3H 			//1387 	0183
		LCALL 	306H 			//1388 	3306
		MOVLP 	10H 			//1389 	0190
		INCR 	5CH, 1H 		//138A 	1ADC
		BTSC 	3H, 2H 			//138B 	2903
		INCR 	5DH, 1H 		//138C 	1ADD
		LJUMP 	36EH 			//138D 	3B6E

		//;NFB.C: 711: }
		//;NFB.C: 712: HTVN_ = GET_ADC_DATA(1);
		LDWI 	1H 			//138E 	0001
		MOVLP 	1DH 			//138F 	019D
		LCALL 	5A2H 			//1390 	35A2
		MOVLP 	10H 			//1391 	0190

		//;NFB.C: 713: for(int i=0;i<4;i++){
		MOVLP 	2H 			//1392 	0182
		LCALL 	2CFH 			//1393 	32CF
		MOVLP 	10H 			//1394 	0190
		CLRF 	5EH 			//1395 	11DE
		CLRF 	5FH 			//1396 	11DF
		LDR 	5FH, 0H 			//1397 	185F
		MOVLP 	2H 			//1398 	0182
		LCALL 	258H 			//1399 	3258
		MOVLP 	10H 			//139A 	0190
		BTSS 	3H, 2H 			//139B 	2D03
		LJUMP 	3A0H 			//139C 	3BA0
		LDWI 	4H 			//139D 	0004
		MOVLB 	3H 			//139E 	1023
		SUBWR 	5EH, 0H 		//139F 	125E
		BTSC 	3H, 0H 			//13A0 	2803
		LJUMP 	3B7H 			//13A1 	3BB7

		//;NFB.C: 714: HTVN_ = (HTVN_+GET_ADC_DATA(1))/2;
		LDWI 	1H 			//13A2 	0001
		MOVLP 	1DH 			//13A3 	019D
		LCALL 	5A2H 			//13A4 	35A2
		MOVLP 	10H 			//13A5 	0190
		MOVLB 	4H 			//13A6 	1024
		LDR 	6CH, 0H 			//13A7 	186C
		MOVLB 	1H 			//13A8 	1021
		ADDWR 	46H, 0H 		//13A9 	1746
		STR 	59H 			//13AA 	10D9
		MOVLB 	4H 			//13AB 	1024
		LDR 	6DH, 0H 			//13AC 	186D
		MOVLP 	2H 			//13AD 	0182
		LCALL 	251H 			//13AE 	3251
		MOVLP 	10H 			//13AF 	0190
		MOVLP 	2H 			//13B0 	0182
		LCALL 	2E0H 			//13B1 	32E0
		MOVLP 	10H 			//13B2 	0190
		INCR 	5EH, 1H 		//13B3 	1ADE
		BTSC 	3H, 2H 			//13B4 	2903
		INCR 	5FH, 1H 		//13B5 	1ADF
		LJUMP 	397H 			//13B6 	3B97

		//;NFB.C: 715: }
		//;NFB.C: 716: HTVI_ = GET_ADC_DATA(4);
		LDWI 	4H 			//13B7 	0004
		MOVLP 	1DH 			//13B8 	019D
		LCALL 	5A2H 			//13B9 	35A2
		MOVLP 	10H 			//13BA 	0190

		//;NFB.C: 717: for(int i=0;i<4;i++){
		MOVLP 	2H 			//13BB 	0182
		LCALL 	2A6H 			//13BC 	32A6
		MOVLP 	10H 			//13BD 	0190
		CLRF 	60H 			//13BE 	11E0
		CLRF 	61H 			//13BF 	11E1
		LDR 	61H, 0H 			//13C0 	1861
		MOVLP 	2H 			//13C1 	0182
		LCALL 	258H 			//13C2 	3258
		MOVLP 	10H 			//13C3 	0190
		BTSS 	3H, 2H 			//13C4 	2D03
		LJUMP 	3C9H 			//13C5 	3BC9
		LDWI 	4H 			//13C6 	0004
		MOVLB 	3H 			//13C7 	1023
		SUBWR 	60H, 0H 		//13C8 	1260
		BTSC 	3H, 0H 			//13C9 	2803
		LJUMP 	3E0H 			//13CA 	3BE0

		//;NFB.C: 718: HTVI_ = (HTVI_+GET_ADC_DATA(4))/2;
		LDWI 	4H 			//13CB 	0004
		MOVLP 	1DH 			//13CC 	019D
		LCALL 	5A2H 			//13CD 	35A2
		MOVLP 	10H 			//13CE 	0190
		MOVLB 	4H 			//13CF 	1024
		LDR 	6AH, 0H 			//13D0 	186A
		MOVLB 	1H 			//13D1 	1021
		ADDWR 	46H, 0H 		//13D2 	1746
		STR 	59H 			//13D3 	10D9
		MOVLB 	4H 			//13D4 	1024
		LDR 	6BH, 0H 			//13D5 	186B
		MOVLP 	2H 			//13D6 	0182
		LCALL 	251H 			//13D7 	3251
		MOVLP 	10H 			//13D8 	0190
		MOVLP 	2H 			//13D9 	0182
		LCALL 	2E8H 			//13DA 	32E8
		MOVLP 	10H 			//13DB 	0190
		INCR 	60H, 1H 		//13DC 	1AE0
		BTSC 	3H, 2H 			//13DD 	2903
		INCR 	61H, 1H 		//13DE 	1AE1
		LJUMP 	3C0H 			//13DF 	3BC0

		//;NFB.C: 719: }
		//;NFB.C: 720: HTVP = (float)HTVP_*2/4096;
		LCALL 	70AH 			//13E0 	370A
		MOVLP 	2H 			//13E1 	0182
		LCALL 	2AFH 			//13E2 	32AF
		MOVLP 	10H 			//13E3 	0190
		MOVLP 	19H 			//13E4 	0199
		LCALL 	146H 			//13E5 	3146
		MOVLP 	10H 			//13E6 	0190
		LCALL 	715H 			//13E7 	3715
		MOVLP 	1DH 			//13E8 	019D
		LCALL 	534H 			//13E9 	3534
		MOVLP 	10H 			//13EA 	0190
		MOVLP 	2H 			//13EB 	0182
		LCALL 	205H 			//13EC 	3205
		MOVLP 	10H 			//13ED 	0190
		MOVLP 	1DH 			//13EE 	019D
		LCALL 	5D6H 			//13EF 	35D6
		MOVLP 	10H 			//13F0 	0190
		MOVLP 	1H 			//13F1 	0181
		LCALL 	1E4H 			//13F2 	31E4
		MOVLP 	10H 			//13F3 	0190

		//;NFB.C: 721: HTVN = (float)HTVN_*2/4096;
		LCALL 	70AH 			//13F4 	370A
		MOVLP 	2H 			//13F5 	0182
		LCALL 	2C1H 			//13F6 	32C1
		MOVLP 	10H 			//13F7 	0190
		MOVLP 	19H 			//13F8 	0199
		LCALL 	146H 			//13F9 	3146
		MOVLP 	10H 			//13FA 	0190
		LCALL 	715H 			//13FB 	3715
		MOVLP 	1DH 			//13FC 	019D
		LCALL 	534H 			//13FD 	3534
		MOVLP 	10H 			//13FE 	0190
		MOVLP 	2H 			//13FF 	0182
		LCALL 	205H 			//1400 	3205
		MOVLP 	10H 			//1401 	0190
		MOVLP 	1DH 			//1402 	019D
		LCALL 	5D6H 			//1403 	35D6
		MOVLP 	10H 			//1404 	0190
		MOVLP 	1H 			//1405 	0181
		LCALL 	1D8H 			//1406 	31D8
		MOVLP 	10H 			//1407 	0190

		//;NFB.C: 722: HTVI = (float)HTVI_*2/4096;
		LCALL 	70AH 			//1408 	370A
		MOVLP 	2H 			//1409 	0182
		LCALL 	2B8H 			//140A 	32B8
		MOVLP 	10H 			//140B 	0190
		MOVLP 	19H 			//140C 	0199
		LCALL 	146H 			//140D 	3146
		MOVLP 	10H 			//140E 	0190
		LCALL 	715H 			//140F 	3715
		MOVLP 	1DH 			//1410 	019D
		LCALL 	534H 			//1411 	3534
		MOVLP 	10H 			//1412 	0190
		MOVLP 	2H 			//1413 	0182
		LCALL 	205H 			//1414 	3205
		MOVLP 	10H 			//1415 	0190
		MOVLP 	1DH 			//1416 	019D
		LCALL 	5D6H 			//1417 	35D6
		MOVLP 	10H 			//1418 	0190

		//;NFB.C: 723: I = HTVI/0.01/39;
		LCALL 	7D1H 			//1419 	37D1
		MOVLP 	1DH 			//141A 	019D
		LCALL 	5D6H 			//141B 	35D6
		MOVLP 	10H 			//141C 	0190

		//;NFB.C: 723: I = HTVI/0.01/39;
		LCALL 	7F0H 			//141D 	37F0
		MOVLP 	10H 			//141E 	0190
		LCALL 	7C3H 			//141F 	37C3
		MOVLP 	1DH 			//1420 	019D
		LCALL 	5D6H 			//1421 	35D6
		MOVLP 	10H 			//1422 	0190

		//;NFB.C: 724: V = (HTVP-HTVN)*2;
		LCALL 	721H 			//1423 	3721
		MOVLP 	DH 			//1424 	018D
		LCALL 	5D4H 			//1425 	35D4
		MOVLP 	10H 			//1426 	0190
		MOVLP 	2H 			//1427 	0182
		LCALL 	28BH 			//1428 	328B
		MOVLP 	10H 			//1429 	0190
		MOVLP 	1DH 			//142A 	019D
		LCALL 	534H 			//142B 	3534
		MOVLP 	10H 			//142C 	0190

		//;NFB.C: 725: R = V/I;
		LCALL 	794H 			//142D 	3794
		MOVLP 	1DH 			//142E 	019D
		LCALL 	5D6H 			//142F 	35D6
		MOVLP 	10H 			//1430 	0190

		//;NFB.C: 726: T = (((R/R0)-1)/0.0026)+25;
		LCALL 	76FH 			//1431 	376F
		MOVLP 	1DH 			//1432 	019D
		LCALL 	5D6H 			//1433 	35D6
		MOVLP 	10H 			//1434 	0190
		MOVLP 	1H 			//1435 	0181
		LCALL 	1F0H 			//1436 	31F0
		MOVLP 	10H 			//1437 	0190
		MOVLP 	FH 			//1438 	018F
		LCALL 	74CH 			//1439 	374C
		MOVLP 	10H 			//143A 	0190

		//;NFB.C: 726: T = (((R/R0)-1)/0.0026)+25;
		LCALL 	74AH 			//143B 	374A
		MOVLP 	1DH 			//143C 	019D
		LCALL 	5D6H 			//143D 	35D6
		MOVLP 	10H 			//143E 	0190
		MOVLP 	1H 			//143F 	0181
		LCALL 	1F0H 			//1440 	31F0
		MOVLP 	10H 			//1441 	0190
		MOVLP 	FH 			//1442 	018F
		LCALL 	74CH 			//1443 	374C
		MOVLP 	10H 			//1444 	0190
		MOVLP 	2H 			//1445 	0182
		LCALL 	26CH 			//1446 	326C
		MOVLP 	10H 			//1447 	0190

		//;NFB.C: 727: }
		//;NFB.C: 728: if(Smoketimecnt>=timeleft2){
		MOVLB 	4H 			//1448 	1024
		LDR 	46H, 0H 			//1449 	1846
		MOVLB 	1H 			//144A 	1021
		STR 	59H 			//144B 	10D9
		MOVLB 	4H 			//144C 	1024
		LDR 	47H, 0H 			//144D 	1847
		MOVLP 	1H 			//144E 	0181
		LCALL 	1FCH 			//144F 	31FC
		MOVLP 	10H 			//1450 	0190
		MOVLB 	0H 			//1451 	1020
		SUBWR 	59H, 0H 		//1452 	1259
		BTSS 	3H, 2H 			//1453 	2D03
		LJUMP 	462H 			//1454 	3C62
		MOVLP 	3H 			//1455 	0183
		LCALL 	331H 			//1456 	3331
		MOVLP 	10H 			//1457 	0190
		BTSS 	3H, 2H 			//1458 	2D03
		LJUMP 	462H 			//1459 	3C62
		MOVLP 	3H 			//145A 	0183
		LCALL 	32CH 			//145B 	332C
		MOVLP 	10H 			//145C 	0190
		BTSS 	3H, 2H 			//145D 	2D03
		LJUMP 	462H 			//145E 	3C62
		MOVLP 	3H 			//145F 	0183
		LCALL 	327H 			//1460 	3327
		MOVLP 	10H 			//1461 	0190
		BTSC 	3H, 0H 			//1462 	2803

		//;NFB.C: 729: if(PA0){
		BTSS 	CH, 0H 			//1463 	2C0C
		LJUMP 	489H 			//1464 	3C89

		//;NFB.C: 730: char msg[10];
		//;NFB.C: 731: sprintf(msg,"T:%0.1f\r\n",T);
		LDWI 	B4H 			//1465 	00B4
		MOVLB 	1H 			//1466 	1021
		STR 	41H 			//1467 	10C1
		LDWI 	1H 			//1468 	0001
		MOVLP 	2H 			//1469 	0182
		LCALL 	24DH 			//146A 	324D
		MOVLP 	10H 			//146B 	0190
		MOVLP 	2H 			//146C 	0182
		LCALL 	224H 			//146D 	3224
		MOVLP 	10H 			//146E 	0190
		MOVLP 	8H 			//146F 	0188
		LCALL 	34H 			//1470 	3034
		MOVLP 	10H 			//1471 	0190

		//;NFB.C: 732: send(msg,strlen(msg));
		LDWI 	B4H 			//1472 	00B4
		STR 	4BH 			//1473 	10CB
		LDWI 	1H 			//1474 	0001
		STR 	4CH 			//1475 	10CC
		LDWI 	B4H 			//1476 	00B4
		MOVLB 	0H 			//1477 	1020
		STR 	2DH 			//1478 	10AD
		LDWI 	1H 			//1479 	0001
		STR 	2EH 			//147A 	10AE
		MOVLP 	6H 			//147B 	0186
		LCALL 	6F5H 			//147C 	36F5
		MOVLP 	10H 			//147D 	0190
		MOVLP 	2H 			//147E 	0182
		LCALL 	245H 			//147F 	3245
		MOVLP 	10H 			//1480 	0190
		MOVLP 	19H 			//1481 	0199
		LCALL 	173H 			//1482 	3173
		MOVLP 	10H 			//1483 	0190

		//;NFB.C: 733: timeleft2 += 100;
		LDWI 	64H 			//1484 	0064
		MOVLB 	4H 			//1485 	1024
		ADDWR 	46H, 1H 		//1486 	17C6
		BTSC 	3H, 0H 			//1487 	2803
		INCR 	47H, 1H 		//1488 	1AC7

		//;NFB.C: 734: }
		//;NFB.C: 735: }
		//;NFB.C: 736: diffT = T2-T;
		MOVLB 	3H 			//1489 	1023
		LCALL 	7B7H 			//148A 	37B7
		MOVLB 	4H 			//148B 	1024
		LDR 	20H, 0H 			//148C 	1820
		MOVLB 	0H 			//148D 	1020
		STR 	50H 			//148E 	10D0
		MOVLB 	4H 			//148F 	1024
		LDR 	21H, 0H 			//1490 	1821
		MOVLB 	0H 			//1491 	1020
		STR 	51H 			//1492 	10D1
		MOVLB 	4H 			//1493 	1024
		LDR 	22H, 0H 			//1494 	1822
		MOVLB 	0H 			//1495 	1020
		STR 	52H 			//1496 	10D2
		MOVLP 	DH 			//1497 	018D
		LCALL 	5D4H 			//1498 	35D4
		MOVLP 	10H 			//1499 	0190
		LDR 	4DH, 0H 			//149A 	184D
		STR 	60H 			//149B 	10E0
		LDR 	4EH, 0H 			//149C 	184E
		STR 	61H 			//149D 	10E1
		LDR 	4FH, 0H 			//149E 	184F
		STR 	62H 			//149F 	10E2

		//;NFB.C: 737: if(diffT>0){
		CLRF 	3FH 			//14A0 	11BF
		CLRF 	40H 			//14A1 	11C0
		CLRF 	41H 			//14A2 	11C1
		MOVLP 	3H 			//14A3 	0183
		LCALL 	314H 			//14A4 	3314
		MOVLP 	10H 			//14A5 	0190
		MOVLP 	DH 			//14A6 	018D
		LCALL 	506H 			//14A7 	3506
		MOVLP 	10H 			//14A8 	0190
		BTSC 	3H, 0H 			//14A9 	2803
		LJUMP 	4ADH 			//14AA 	3CAD

		//;NFB.C: 738: PA0 = 1;
		BSR 	CH, 0H 			//14AB 	240C

		//;NFB.C: 739: } else{
		LJUMP 	4AEH 			//14AC 	3CAE

		//;NFB.C: 740: PA0 = 0;
		BCR 	CH, 0H 			//14AD 	200C

		//;NFB.C: 741: }
		//;NFB.C: 742: if(Smoketimecnt>=timeleft3){
		MOVLB 	4H 			//14AE 	1024
		LDR 	44H, 0H 			//14AF 	1844
		MOVLB 	1H 			//14B0 	1021
		STR 	59H 			//14B1 	10D9
		MOVLB 	4H 			//14B2 	1024
		LDR 	45H, 0H 			//14B3 	1845
		MOVLP 	1H 			//14B4 	0181
		LCALL 	1FCH 			//14B5 	31FC
		MOVLP 	10H 			//14B6 	0190
		MOVLB 	0H 			//14B7 	1020
		SUBWR 	59H, 0H 		//14B8 	1259
		BTSS 	3H, 2H 			//14B9 	2D03
		LJUMP 	4C8H 			//14BA 	3CC8
		MOVLP 	3H 			//14BB 	0183
		LCALL 	331H 			//14BC 	3331
		MOVLP 	10H 			//14BD 	0190
		BTSS 	3H, 2H 			//14BE 	2D03
		LJUMP 	4C8H 			//14BF 	3CC8
		MOVLP 	3H 			//14C0 	0183
		LCALL 	32CH 			//14C1 	332C
		MOVLP 	10H 			//14C2 	0190
		BTSS 	3H, 2H 			//14C3 	2D03
		LJUMP 	4C8H 			//14C4 	3CC8
		MOVLP 	3H 			//14C5 	0183
		LCALL 	327H 			//14C6 	3327
		MOVLP 	10H 			//14C7 	0190
		BTSS 	3H, 0H 			//14C8 	2C03
		LJUMP 	4D0H 			//14C9 	3CD0

		//;NFB.C: 743: PA0 = 1;
		BSR 	CH, 0H 			//14CA 	240C

		//;NFB.C: 744: timeleft3 += 10;
		LDWI 	AH 			//14CB 	000A
		MOVLB 	4H 			//14CC 	1024
		ADDWR 	44H, 1H 		//14CD 	17C4
		BTSC 	3H, 0H 			//14CE 	2803
		INCR 	45H, 1H 		//14CF 	1AC5

		//;NFB.C: 745: }
		//;NFB.C: 746: if(diffT>pt && !PuffOn && Smoketimecnt>200){
		MOVLB 	4H 			//14D0 	1024
		LDR 	3FH, 0H 			//14D1 	183F
		MOVLB 	0H 			//14D2 	1020
		STR 	3CH 			//14D3 	10BC
		MOVLB 	4H 			//14D4 	1024
		LDR 	3EH, 0H 			//14D5 	183E
		MOVLB 	0H 			//14D6 	1020
		STR 	3BH 			//14D7 	10BB
		MOVLP 	1DH 			//14D8 	019D
		LCALL 	5BBH 			//14D9 	35BB
		MOVLP 	10H 			//14DA 	0190
		LDR 	3BH, 0H 			//14DB 	183B
		STR 	3FH 			//14DC 	10BF
		LDR 	3CH, 0H 			//14DD 	183C
		STR 	40H 			//14DE 	10C0
		LDR 	3DH, 0H 			//14DF 	183D
		STR 	41H 			//14E0 	10C1
		MOVLP 	3H 			//14E1 	0183
		LCALL 	314H 			//14E2 	3314
		MOVLP 	10H 			//14E3 	0190
		MOVLP 	DH 			//14E4 	018D
		LCALL 	506H 			//14E5 	3506
		MOVLP 	10H 			//14E6 	0190
		BTSC 	3H, 0H 			//14E7 	2803
		LJUMP 	548H 			//14E8 	3D48
		MOVLB 	4H 			//14E9 	1024
		LDR 	5AH, 0H 			//14EA 	185A
		IORWR 	5BH, 0H 		//14EB 	145B
		BTSS 	3H, 2H 			//14EC 	2D03
		LJUMP 	548H 			//14ED 	3D48
		MOVLB 	0H 			//14EE 	1020
		LDR 	59H, 0H 			//14EF 	1859
		BTSS 	3H, 2H 			//14F0 	2D03
		LJUMP 	4FCH 			//14F1 	3CFC
		LDR 	58H, 0H 			//14F2 	1858
		BTSS 	3H, 2H 			//14F3 	2D03
		LJUMP 	4FCH 			//14F4 	3CFC
		LDR 	57H, 0H 			//14F5 	1857
		BTSS 	3H, 2H 			//14F6 	2D03
		LJUMP 	4FCH 			//14F7 	3CFC
		LDWI 	C9H 			//14F8 	00C9
		SUBWR 	56H, 0H 		//14F9 	1256
		BTSS 	3H, 0H 			//14FA 	2C03
		LJUMP 	548H 			//14FB 	3D48

		//;NFB.C: 747: Puffcnt++;
		LDWI 	1H 			//14FC 	0001
		MOVLB 	5H 			//14FD 	1025
		ADDWR 	20H, 1H 		//14FE 	17A0
		LDWI 	0H 			//14FF 	0000
		ADDWFC 	21H, 1H 		//1500 	0DA1
		ADDWFC 	22H, 1H 		//1501 	0DA2
		ADDWFC 	23H, 1H 		//1502 	0DA3

		//;NFB.C: 748: int puffno = Puffcnt;
		LDR 	21H, 0H 			//1503 	1821
		MOVLB 	2H 			//1504 	1022
		STR 	39H 			//1505 	10B9
		MOVLB 	5H 			//1506 	1025
		LDR 	20H, 0H 			//1507 	1820
		MOVLB 	2H 			//1508 	1022
		STR 	38H 			//1509 	10B8

		//;NFB.C: 749: char msg[10];
		//;NFB.C: 750: sprintf(msg,"D%d,%0.1f\r\n",puffno,diffT);
		LDWI 	BEH 			//150A 	00BE
		MOVLB 	1H 			//150B 	1021
		STR 	41H 			//150C 	10C1
		LDWI 	1H 			//150D 	0001
		STR 	42H 			//150E 	10C2
		LDWI 	90H 			//150F 	0090
		STR 	43H 			//1510 	10C3
		LDWI 	A0H 			//1511 	00A0
		STR 	44H 			//1512 	10C4
		MOVLB 	2H 			//1513 	1022
		LDR 	39H, 0H 			//1514 	1839
		MOVLB 	1H 			//1515 	1021
		STR 	46H 			//1516 	10C6
		MOVLB 	2H 			//1517 	1022
		LDR 	38H, 0H 			//1518 	1838
		MOVLB 	1H 			//1519 	1021
		STR 	45H 			//151A 	10C5
		MOVLB 	0H 			//151B 	1020
		LDR 	60H, 0H 			//151C 	1860
		MOVLB 	1H 			//151D 	1021
		STR 	47H 			//151E 	10C7
		MOVLB 	0H 			//151F 	1020
		LDR 	61H, 0H 			//1520 	1861
		MOVLB 	1H 			//1521 	1021
		STR 	48H 			//1522 	10C8
		MOVLB 	0H 			//1523 	1020
		LDR 	62H, 0H 			//1524 	1862
		MOVLB 	1H 			//1525 	1021
		STR 	49H 			//1526 	10C9
		MOVLP 	8H 			//1527 	0188
		LCALL 	34H 			//1528 	3034
		MOVLP 	10H 			//1529 	0190

		//;NFB.C: 751: send(msg,strlen(msg));
		LDWI 	BEH 			//152A 	00BE
		STR 	4BH 			//152B 	10CB
		LDWI 	1H 			//152C 	0001
		STR 	4CH 			//152D 	10CC
		LDWI 	BEH 			//152E 	00BE
		MOVLB 	0H 			//152F 	1020
		STR 	2DH 			//1530 	10AD
		LDWI 	1H 			//1531 	0001
		STR 	2EH 			//1532 	10AE
		MOVLP 	6H 			//1533 	0186
		LCALL 	6F5H 			//1534 	36F5
		MOVLP 	10H 			//1535 	0190
		MOVLP 	2H 			//1536 	0182
		LCALL 	245H 			//1537 	3245
		MOVLP 	10H 			//1538 	0190
		MOVLP 	19H 			//1539 	0199
		LCALL 	173H 			//153A 	3173
		MOVLP 	10H 			//153B 	0190

		//;NFB.C: 752: PuffOn = 1;
		MOVLB 	4H 			//153C 	1024
		CLRF 	5AH 			//153D 	11DA
		INCR 	5AH, 1H 		//153E 	1ADA
		CLRF 	5BH 			//153F 	11DB

		//;NFB.C: 753: timenow = Smoketimecnt;
		MOVLB 	0H 			//1540 	1020
		LDR 	57H, 0H 			//1541 	1857
		MOVLB 	5H 			//1542 	1025
		STR 	31H 			//1543 	10B1
		MOVLB 	0H 			//1544 	1020
		LDR 	56H, 0H 			//1545 	1856
		MOVLB 	5H 			//1546 	1025
		STR 	30H 			//1547 	10B0

		//;NFB.C: 754: }
		//;NFB.C: 755: if(PuffOn){
		MOVLB 	4H 			//1548 	1024
		LDR 	5AH, 0H 			//1549 	185A
		IORWR 	5BH, 0H 		//154A 	145B
		BTSC 	3H, 2H 			//154B 	2903
		LJUMP 	582H 			//154C 	3D82

		//;NFB.C: 756: if(Smoketimecnt-timenow>=200){
		MOVLB 	5H 			//154D 	1025
		LDR 	30H, 0H 			//154E 	1830
		MOVLB 	1H 			//154F 	1021
		STR 	59H 			//1550 	10D9
		MOVLB 	5H 			//1551 	1025
		LDR 	31H, 0H 			//1552 	1831
		MOVLB 	1H 			//1553 	1021
		STR 	5AH 			//1554 	10DA
		LDWI 	0H 			//1555 	0000
		BTSC 	5AH, 7H 		//1556 	2BDA
		LDWI 	FFH 			//1557 	00FF
		STR 	5BH 			//1558 	10DB
		STR 	5CH 			//1559 	10DC
		MOVLB 	0H 			//155A 	1020
		LDR 	56H, 0H 			//155B 	1856
		MOVLB 	1H 			//155C 	1021
		STR 	5DH 			//155D 	10DD
		MOVLB 	0H 			//155E 	1020
		LDR 	57H, 0H 			//155F 	1857
		MOVLB 	1H 			//1560 	1021
		STR 	5EH 			//1561 	10DE
		MOVLB 	0H 			//1562 	1020
		LDR 	58H, 0H 			//1563 	1858
		MOVLB 	1H 			//1564 	1021
		STR 	5FH 			//1565 	10DF
		MOVLB 	0H 			//1566 	1020
		LDR 	59H, 0H 			//1567 	1859
		MOVLB 	1H 			//1568 	1021
		STR 	60H 			//1569 	10E0
		LDR 	59H, 0H 			//156A 	1859
		SUBWR 	5DH, 1H 		//156B 	12DD
		LDR 	5AH, 0H 			//156C 	185A
		SUBWFB 	5EH, 1H 		//156D 	0BDE
		LDR 	5BH, 0H 			//156E 	185B
		SUBWFB 	5FH, 1H 		//156F 	0BDF
		LDR 	5CH, 0H 			//1570 	185C
		SUBWFB 	60H, 1H 		//1571 	0BE0
		LDR 	60H, 0H 			//1572 	1860
		BTSS 	3H, 2H 			//1573 	2D03
		LJUMP 	57FH 			//1574 	3D7F
		LDR 	5FH, 0H 			//1575 	185F
		BTSS 	3H, 2H 			//1576 	2D03
		LJUMP 	57FH 			//1577 	3D7F
		LDR 	5EH, 0H 			//1578 	185E
		BTSS 	3H, 2H 			//1579 	2D03
		LJUMP 	57FH 			//157A 	3D7F
		LDWI 	C8H 			//157B 	00C8
		SUBWR 	5DH, 0H 		//157C 	125D
		BTSS 	3H, 0H 			//157D 	2C03
		LJUMP 	582H 			//157E 	3D82

		//;NFB.C: 757: PuffOn = 0;
		MOVLB 	4H 			//157F 	1024
		CLRF 	5AH 			//1580 	11DA
		CLRF 	5BH 			//1581 	11DB

		//;NFB.C: 758: }
		//;NFB.C: 759: }
		//;NFB.C: 760: if(Smoketimecnt>=(t2*100) || Puffcnt>=pf){
		MOVLB 	4H 			//1582 	1024
		LDR 	43H, 0H 			//1583 	1843
		MOVLB 	0H 			//1584 	1020
		STR 	3CH 			//1585 	10BC
		MOVLB 	4H 			//1586 	1024
		LDR 	42H, 0H 			//1587 	1842
		MOVLB 	0H 			//1588 	1020
		STR 	3BH 			//1589 	10BB
		LDWI 	64H 			//158A 	0064
		STR 	3DH 			//158B 	10BD
		CLRF 	3EH 			//158C 	11BE
		MOVLP 	1BH 			//158D 	019B
		LCALL 	3B7H 			//158E 	33B7
		MOVLP 	10H 			//158F 	0190
		LDR 	3BH, 0H 			//1590 	183B
		MOVLB 	1H 			//1591 	1021
		STR 	59H 			//1592 	10D9
		MOVLB 	0H 			//1593 	1020
		LDR 	3CH, 0H 			//1594 	183C
		MOVLP 	1H 			//1595 	0181
		LCALL 	1FCH 			//1596 	31FC
		MOVLP 	10H 			//1597 	0190
		MOVLB 	0H 			//1598 	1020
		SUBWR 	59H, 0H 		//1599 	1259
		BTSS 	3H, 2H 			//159A 	2D03
		LJUMP 	5A9H 			//159B 	3DA9
		MOVLP 	3H 			//159C 	0183
		LCALL 	331H 			//159D 	3331
		MOVLP 	10H 			//159E 	0190
		BTSS 	3H, 2H 			//159F 	2D03
		LJUMP 	5A9H 			//15A0 	3DA9
		MOVLP 	3H 			//15A1 	0183
		LCALL 	32CH 			//15A2 	332C
		MOVLP 	10H 			//15A3 	0190
		BTSS 	3H, 2H 			//15A4 	2D03
		LJUMP 	5A9H 			//15A5 	3DA9
		MOVLP 	3H 			//15A6 	0183
		LCALL 	327H 			//15A7 	3327
		MOVLP 	10H 			//15A8 	0190
		BTSC 	3H, 0H 			//15A9 	2803
		LJUMP 	5CAH 			//15AA 	3DCA
		MOVLB 	4H 			//15AB 	1024
		LDR 	40H, 0H 			//15AC 	1840
		MOVLB 	1H 			//15AD 	1021
		STR 	59H 			//15AE 	10D9
		MOVLB 	4H 			//15AF 	1024
		LDR 	41H, 0H 			//15B0 	1841
		MOVLP 	1H 			//15B1 	0181
		LCALL 	1FCH 			//15B2 	31FC
		MOVLP 	10H 			//15B3 	0190
		MOVLB 	5H 			//15B4 	1025
		SUBWR 	23H, 0H 		//15B5 	1223
		BTSS 	3H, 2H 			//15B6 	2D03
		LJUMP 	5C8H 			//15B7 	3DC8
		MOVLB 	1H 			//15B8 	1021
		LDR 	5BH, 0H 			//15B9 	185B
		MOVLB 	5H 			//15BA 	1025
		SUBWR 	22H, 0H 		//15BB 	1222
		BTSS 	3H, 2H 			//15BC 	2D03
		LJUMP 	5C8H 			//15BD 	3DC8
		MOVLB 	1H 			//15BE 	1021
		LDR 	5AH, 0H 			//15BF 	185A
		MOVLB 	5H 			//15C0 	1025
		SUBWR 	21H, 0H 		//15C1 	1221
		BTSS 	3H, 2H 			//15C2 	2D03
		LJUMP 	5C8H 			//15C3 	3DC8
		MOVLB 	1H 			//15C4 	1021
		LDR 	59H, 0H 			//15C5 	1859
		MOVLB 	5H 			//15C6 	1025
		SUBWR 	20H, 0H 		//15C7 	1220
		BTSS 	3H, 0H 			//15C8 	2C03
		LJUMP 	5EBH 			//15C9 	3DEB

		//;NFB.C: 761: send((char*)"T0\r\n",4);
		MOVLP 	2H 			//15CA 	0182
		LCALL 	2DCH 			//15CB 	32DC
		MOVLP 	10H 			//15CC 	0190
		MOVLP 	2H 			//15CD 	0182
		LCALL 	2CAH 			//15CE 	32CA
		MOVLP 	10H 			//15CF 	0190
		MOVLP 	19H 			//15D0 	0199
		LCALL 	173H 			//15D1 	3173
		MOVLP 	10H 			//15D2 	0190

		//;NFB.C: 762: send((char*)"S0\r\n",4);
		MOVLP 	2H 			//15D3 	0182
		LCALL 	29DH 			//15D4 	329D
		MOVLP 	10H 			//15D5 	0190
		MOVLP 	19H 			//15D6 	0199
		LCALL 	173H 			//15D7 	3173
		MOVLP 	10H 			//15D8 	0190

		//;NFB.C: 763: PA0 = 0;
		MOVLB 	0H 			//15D9 	1020
		BCR 	CH, 0H 			//15DA 	200C

		//;NFB.C: 764: SmokeOn = 0;
		MOVLB 	4H 			//15DB 	1024

		//;NFB.C: 765: Smoketimer = 0;
		//;NFB.C: 766: PuffOn = 0;
		MOVLP 	3H 			//15DC 	0183
		LCALL 	30DH 			//15DD 	330D
		MOVLP 	10H 			//15DE 	0190

		//;NFB.C: 767: PowerOn = 0;
		CLRF 	68H 			//15DF 	11E8
		CLRF 	69H 			//15E0 	11E9

		//;NFB.C: 768: PC1=1;
		MOVLB 	0H 			//15E1 	1020
		BSR 	EH, 1H 			//15E2 	248E

		//;NFB.C: 769: PB0 = 1;
		//;NFB.C: 770: DelayMs(500);
		MOVLP 	2H 			//15E3 	0182
		LCALL 	278H 			//15E4 	3278
		MOVLP 	10H 			//15E5 	0190
		MOVLP 	1EH 			//15E6 	019E
		LCALL 	6B7H 			//15E7 	36B7
		MOVLP 	10H 			//15E8 	0190

		//;NFB.C: 771: PB0 = 0;
		MOVLB 	0H 			//15E9 	1020
		BCR 	DH, 0H 			//15EA 	200D

		//;NFB.C: 772: }
		//;NFB.C: 773: }
		//;NFB.C: 774: if(RDE){
		MOVLB 	4H 			//15EB 	1024
		LDR 	58H, 0H 			//15EC 	1858
		IORWR 	59H, 0H 		//15ED 	1459
		BTSC 	3H, 2H 			//15EE 	2903
		LJUMP 	648H 			//15EF 	3E48
		LDWI 	20H 			//15F0 	0020

		//;NFB.C: 775: RDE = 0;
		CLRF 	58H 			//15F1 	11D8
		CLRF 	59H 			//15F2 	11D9

		//;NFB.C: 776: char msg[80];
		//;NFB.C: 777: sprintf(msg,"%d,%d,%0.0f,%0.0f,%d,%d\r\n",t1,t2,T1,T2,pf,pt);
		MOVLB 	1H 			//15F3 	1021
		STR 	41H 			//15F4 	10C1
		LDWI 	3H 			//15F5 	0003
		STR 	42H 			//15F6 	10C2
		LDWI 	28H 			//15F7 	0028
		STR 	43H 			//15F8 	10C3
		LDWI 	A0H 			//15F9 	00A0
		STR 	44H 			//15FA 	10C4
		MOVLB 	3H 			//15FB 	1023
		LDR 	6DH, 0H 			//15FC 	186D
		MOVLB 	1H 			//15FD 	1021
		STR 	46H 			//15FE 	10C6
		MOVLB 	3H 			//15FF 	1023
		LDR 	6CH, 0H 			//1600 	186C
		MOVLB 	1H 			//1601 	1021
		STR 	45H 			//1602 	10C5
		MOVLB 	4H 			//1603 	1024
		LDR 	43H, 0H 			//1604 	1843
		MOVLB 	1H 			//1605 	1021
		STR 	48H 			//1606 	10C8
		MOVLB 	4H 			//1607 	1024
		LDR 	42H, 0H 			//1608 	1842
		MOVLB 	1H 			//1609 	1021
		STR 	47H 			//160A 	10C7
		MOVLB 	0H 			//160B 	1020
		LDR 	5AH, 0H 			//160C 	185A
		MOVLB 	1H 			//160D 	1021
		STR 	49H 			//160E 	10C9
		MOVLB 	0H 			//160F 	1020
		LDR 	5BH, 0H 			//1610 	185B
		MOVLB 	1H 			//1611 	1021
		STR 	4AH 			//1612 	10CA
		MOVLB 	0H 			//1613 	1020
		LDR 	5CH, 0H 			//1614 	185C
		MOVLB 	1H 			//1615 	1021
		STR 	4BH 			//1616 	10CB
		MOVLB 	4H 			//1617 	1024
		LDR 	20H, 0H 			//1618 	1820
		MOVLB 	1H 			//1619 	1021
		STR 	4CH 			//161A 	10CC
		MOVLB 	4H 			//161B 	1024
		LDR 	21H, 0H 			//161C 	1821
		MOVLB 	1H 			//161D 	1021
		STR 	4DH 			//161E 	10CD
		MOVLB 	4H 			//161F 	1024
		LDR 	22H, 0H 			//1620 	1822
		MOVLB 	1H 			//1621 	1021
		STR 	4EH 			//1622 	10CE
		MOVLB 	4H 			//1623 	1024
		LDR 	41H, 0H 			//1624 	1841
		MOVLB 	1H 			//1625 	1021
		STR 	50H 			//1626 	10D0
		MOVLB 	4H 			//1627 	1024
		LDR 	40H, 0H 			//1628 	1840
		MOVLB 	1H 			//1629 	1021
		STR 	4FH 			//162A 	10CF
		MOVLB 	4H 			//162B 	1024
		LDR 	3FH, 0H 			//162C 	183F
		MOVLB 	1H 			//162D 	1021
		STR 	52H 			//162E 	10D2
		MOVLB 	4H 			//162F 	1024
		LDR 	3EH, 0H 			//1630 	183E
		MOVLB 	1H 			//1631 	1021
		STR 	51H 			//1632 	10D1
		MOVLP 	8H 			//1633 	0188
		LCALL 	34H 			//1634 	3034
		MOVLP 	10H 			//1635 	0190

		//;NFB.C: 778: send(msg,strlen(msg));
		LDWI 	20H 			//1636 	0020
		STR 	4BH 			//1637 	10CB
		LDWI 	3H 			//1638 	0003
		STR 	4CH 			//1639 	10CC
		LDWI 	20H 			//163A 	0020
		MOVLB 	0H 			//163B 	1020
		STR 	2DH 			//163C 	10AD
		LDWI 	3H 			//163D 	0003
		STR 	2EH 			//163E 	10AE
		MOVLP 	6H 			//163F 	0186
		LCALL 	6F5H 			//1640 	36F5
		MOVLP 	10H 			//1641 	0190
		MOVLP 	2H 			//1642 	0182
		LCALL 	245H 			//1643 	3245
		MOVLP 	10H 			//1644 	0190
		MOVLP 	19H 			//1645 	0199
		LCALL 	173H 			//1646 	3173
		MOVLP 	10H 			//1647 	0190

		//;NFB.C: 779: }
		//;NFB.C: 780: if(t1E){
		MOVLB 	4H 			//1648 	1024
		LDR 	56H, 0H 			//1649 	1856
		IORWR 	57H, 0H 		//164A 	1457
		BTSC 	3H, 2H 			//164B 	2903
		LJUMP 	65AH 			//164C 	3E5A

		//;NFB.C: 781: t1E = 0;
		CLRF 	56H 			//164D 	11D6
		CLRF 	57H 			//164E 	11D7

		//;NFB.C: 782: unsigned char dataL = t1;
		MOVLB 	3H 			//164F 	1023
		LDR 	6CH, 0H 			//1650 	186C
		MOVLB 	2H 			//1651 	1022
		STR 	3AH 			//1652 	10BA

		//;NFB.C: 783: EEPROMwrite(0x01,dataL);
		LDR 	3AH, 0H 			//1653 	183A
		MOVLB 	0H 			//1654 	1020
		STR 	2DH 			//1655 	10AD
		LDWI 	1H 			//1656 	0001
		MOVLP 	1AH 			//1657 	019A
		LCALL 	235H 			//1658 	3235
		MOVLP 	10H 			//1659 	0190

		//;NFB.C: 784: }
		//;NFB.C: 785: if(t2E){
		MOVLB 	4H 			//165A 	1024
		LDR 	54H, 0H 			//165B 	1854
		IORWR 	55H, 0H 		//165C 	1455
		BTSC 	3H, 2H 			//165D 	2903
		LJUMP 	677H 			//165E 	3E77

		//;NFB.C: 786: t2E = 0;
		CLRF 	54H 			//165F 	11D4
		CLRF 	55H 			//1660 	11D5

		//;NFB.C: 787: unsigned char dataL = t2&0xFF;
		LDR 	42H, 0H 			//1661 	1842
		MOVLB 	2H 			//1662 	1022
		STR 	3BH 			//1663 	10BB

		//;NFB.C: 788: unsigned char dataH = (t2>>8)&0xFF;
		MOVLB 	4H 			//1664 	1024
		LDR 	43H, 0H 			//1665 	1843
		MOVLB 	3H 			//1666 	1023
		STR 	48H 			//1667 	10C8

		//;NFB.C: 789: EEPROMwrite(0x02,dataL);
		MOVLB 	2H 			//1668 	1022
		LDR 	3BH, 0H 			//1669 	183B
		MOVLB 	0H 			//166A 	1020
		STR 	2DH 			//166B 	10AD
		LDWI 	2H 			//166C 	0002
		MOVLP 	1AH 			//166D 	019A
		LCALL 	235H 			//166E 	3235
		MOVLP 	10H 			//166F 	0190

		//;NFB.C: 790: EEPROMwrite(0x03,dataH);
		LDR 	48H, 0H 			//1670 	1848
		MOVLB 	0H 			//1671 	1020
		STR 	2DH 			//1672 	10AD
		LDWI 	3H 			//1673 	0003
		MOVLP 	1AH 			//1674 	019A
		LCALL 	235H 			//1675 	3235
		MOVLP 	10H 			//1676 	0190

		//;NFB.C: 791: }
		//;NFB.C: 792: if(T1E){
		MOVLB 	4H 			//1677 	1024
		LDR 	52H, 0H 			//1678 	1852
		IORWR 	53H, 0H 		//1679 	1453
		BTSC 	3H, 2H 			//167A 	2903
		LJUMP 	6A5H 			//167B 	3EA5

		//;NFB.C: 793: T1E = 0;
		CLRF 	52H 			//167C 	11D2
		CLRF 	53H 			//167D 	11D3

		//;NFB.C: 794: int data = (int)T1;
		MOVLB 	0H 			//167E 	1020
		LDR 	5AH, 0H 			//167F 	185A
		MOVLB 	1H 			//1680 	1021
		STR 	34H 			//1681 	10B4
		MOVLB 	0H 			//1682 	1020
		LDR 	5BH, 0H 			//1683 	185B
		MOVLB 	1H 			//1684 	1021
		STR 	35H 			//1685 	10B5
		MOVLB 	0H 			//1686 	1020
		LDR 	5CH, 0H 			//1687 	185C
		MOVLB 	1H 			//1688 	1021
		STR 	36H 			//1689 	10B6
		MOVLP 	DH 			//168A 	018D
		LCALL 	568H 			//168B 	3568
		MOVLP 	10H 			//168C 	0190
		LDR 	35H, 0H 			//168D 	1835
		MOVLB 	3H 			//168E 	1023
		STR 	50H 			//168F 	10D0
		MOVLB 	1H 			//1690 	1021
		LDR 	34H, 0H 			//1691 	1834
		MOVLB 	3H 			//1692 	1023
		STR 	4FH 			//1693 	10CF

		//;NFB.C: 795: unsigned char dataL = data&0xFF;
		STR 	49H 			//1694 	10C9

		//;NFB.C: 796: unsigned char dataH = (data>>8)&0xFF;
		LDR 	50H, 0H 			//1695 	1850
		STR 	4AH 			//1696 	10CA

		//;NFB.C: 797: EEPROMwrite(0x04,dataL);
		LDR 	49H, 0H 			//1697 	1849
		MOVLB 	0H 			//1698 	1020
		STR 	2DH 			//1699 	10AD
		LDWI 	4H 			//169A 	0004
		MOVLP 	1AH 			//169B 	019A
		LCALL 	235H 			//169C 	3235
		MOVLP 	10H 			//169D 	0190

		//;NFB.C: 798: EEPROMwrite(0x05,dataH);
		LDR 	4AH, 0H 			//169E 	184A
		MOVLB 	0H 			//169F 	1020
		STR 	2DH 			//16A0 	10AD
		LDWI 	5H 			//16A1 	0005
		MOVLP 	1AH 			//16A2 	019A
		LCALL 	235H 			//16A3 	3235
		MOVLP 	10H 			//16A4 	0190

		//;NFB.C: 799: }
		//;NFB.C: 800: if(T2E){
		MOVLB 	4H 			//16A5 	1024
		LDR 	50H, 0H 			//16A6 	1850
		IORWR 	51H, 0H 		//16A7 	1451
		BTSC 	3H, 2H 			//16A8 	2903
		LJUMP 	6D2H 			//16A9 	3ED2

		//;NFB.C: 801: T2E = 0;
		CLRF 	50H 			//16AA 	11D0
		CLRF 	51H 			//16AB 	11D1

		//;NFB.C: 802: int data = (int)T2;
		LDR 	20H, 0H 			//16AC 	1820
		MOVLB 	1H 			//16AD 	1021
		STR 	34H 			//16AE 	10B4
		MOVLB 	4H 			//16AF 	1024
		LDR 	21H, 0H 			//16B0 	1821
		MOVLB 	1H 			//16B1 	1021
		STR 	35H 			//16B2 	10B5
		MOVLB 	4H 			//16B3 	1024
		LDR 	22H, 0H 			//16B4 	1822
		MOVLB 	1H 			//16B5 	1021
		STR 	36H 			//16B6 	10B6
		MOVLP 	DH 			//16B7 	018D
		LCALL 	568H 			//16B8 	3568
		MOVLP 	10H 			//16B9 	0190
		LDR 	35H, 0H 			//16BA 	1835
		MOVLB 	3H 			//16BB 	1023
		STR 	52H 			//16BC 	10D2
		MOVLB 	1H 			//16BD 	1021
		LDR 	34H, 0H 			//16BE 	1834
		MOVLB 	3H 			//16BF 	1023
		STR 	51H 			//16C0 	10D1

		//;NFB.C: 803: unsigned char dataL = data&0xFF;
		STR 	4BH 			//16C1 	10CB

		//;NFB.C: 804: unsigned char dataH = (data>>8)&0xFF;
		LDR 	52H, 0H 			//16C2 	1852
		STR 	4CH 			//16C3 	10CC

		//;NFB.C: 805: EEPROMwrite(0x06,dataL);
		LDR 	4BH, 0H 			//16C4 	184B
		MOVLB 	0H 			//16C5 	1020
		STR 	2DH 			//16C6 	10AD
		LDWI 	6H 			//16C7 	0006
		MOVLP 	1AH 			//16C8 	019A
		LCALL 	235H 			//16C9 	3235
		MOVLP 	10H 			//16CA 	0190

		//;NFB.C: 806: EEPROMwrite(0x07,dataH);
		LDR 	4CH, 0H 			//16CB 	184C
		MOVLB 	0H 			//16CC 	1020
		STR 	2DH 			//16CD 	10AD
		LDWI 	7H 			//16CE 	0007
		MOVLP 	1AH 			//16CF 	019A
		LCALL 	235H 			//16D0 	3235
		MOVLP 	10H 			//16D1 	0190

		//;NFB.C: 807: }
		//;NFB.C: 808: if(PFE){
		MOVLB 	4H 			//16D2 	1024
		LDR 	4CH, 0H 			//16D3 	184C
		IORWR 	4DH, 0H 		//16D4 	144D
		BTSC 	3H, 2H 			//16D5 	2903
		LJUMP 	6E3H 			//16D6 	3EE3

		//;NFB.C: 809: PFE = 0;
		CLRF 	4CH 			//16D7 	11CC
		CLRF 	4DH 			//16D8 	11CD

		//;NFB.C: 810: unsigned char dataL = pf&0xFF;
		LDR 	40H, 0H 			//16D9 	1840
		MOVLB 	3H 			//16DA 	1023
		STR 	4DH 			//16DB 	10CD

		//;NFB.C: 811: EEPROMwrite(0x08,dataL);
		LDR 	4DH, 0H 			//16DC 	184D
		MOVLB 	0H 			//16DD 	1020
		STR 	2DH 			//16DE 	10AD
		LDWI 	8H 			//16DF 	0008
		MOVLP 	1AH 			//16E0 	019A
		LCALL 	235H 			//16E1 	3235
		MOVLP 	10H 			//16E2 	0190

		//;NFB.C: 812: }
		//;NFB.C: 813: if(PTE){
		MOVLB 	4H 			//16E3 	1024
		LDR 	4EH, 0H 			//16E4 	184E
		IORWR 	4FH, 0H 		//16E5 	144F
		BTSC 	3H, 2H 			//16E6 	2903
		LJUMP 	6F4H 			//16E7 	3EF4

		//;NFB.C: 814: PTE = 0;
		CLRF 	4EH 			//16E8 	11CE
		CLRF 	4FH 			//16E9 	11CF

		//;NFB.C: 815: unsigned char dataL = pt&0xFF;
		LDR 	3EH, 0H 			//16EA 	183E
		MOVLB 	3H 			//16EB 	1023
		STR 	4EH 			//16EC 	10CE

		//;NFB.C: 816: EEPROMwrite(0x09,dataL);
		LDR 	4EH, 0H 			//16ED 	184E
		MOVLB 	0H 			//16EE 	1020
		STR 	2DH 			//16EF 	10AD
		LDWI 	9H 			//16F0 	0009
		MOVLP 	1AH 			//16F1 	019A
		LCALL 	235H 			//16F2 	3235
		MOVLP 	10H 			//16F3 	0190

		//;NFB.C: 577: {
		//;NFB.C: 579: if(!PA6){
		MOVLB 	0H 			//16F4 	1020
		MOVLP 	3H 			//16F5 	0183
		BTSS 	CH, 6H 			//16F6 	2F0C
		LJUMP 	372H 			//16F7 	3B72

		//;NFB.C: 819: BatteryChargingLevel();
		MOVLP 	1CH 			//16F8 	019C
		LCALL 	4C2H 			//16F9 	34C2
		MOVLP 	10H 			//16FA 	0190

		//;NFB.C: 820: if(BTNtimer){
		MOVLB 	4H 			//16FB 	1024
		LDR 	64H, 0H 			//16FC 	1864
		IORWR 	65H, 0H 		//16FD 	1465
		BTSC 	3H, 2H 			//16FE 	2903
		LJUMP 	702H 			//16FF 	3F02

		//;NFB.C: 821: BTNtimer=0;
		CLRF 	64H 			//1700 	11E4
		CLRF 	65H 			//1701 	11E5

		//;NFB.C: 822: }
		//;NFB.C: 823: if(!PA6){
		MOVLB 	0H 			//1702 	1020
		BTSC 	CH, 6H 			//1703 	2B0C
		LJUMP 	6F4H 			//1704 	3EF4

		//;NFB.C: 824: PB7 = 1;
		BSR 	DH, 7H 			//1705 	278D

		//;NFB.C: 825: PB3 = 1;
		BSR 	DH, 3H 			//1706 	258D

		//;NFB.C: 826: PB2 = 1;
		BSR 	DH, 2H 			//1707 	250D

		//;NFB.C: 827: PA1 = 1;
		BSR 	CH, 1H 			//1708 	248C
		LJUMP 	6F4H 			//1709 	3EF4
		MOVLB 	1H 			//170A 	1021
		LDWI 	80H 			//170B 	0080
		CLRF 	2CH 			//170C 	11AC
		STR 	2DH 			//170D 	10AD
		LDWI 	45H 			//170E 	0045
		STR 	2EH 			//170F 	10AE
		LDWI 	40H 			//1710 	0040
		CLRF 	20H 			//1711 	11A0
		CLRF 	21H 			//1712 	11A1
		STR 	22H 			//1713 	10A2
		RET 					//1714 	1008
		LDR 	35H, 0H 			//1715 	1835
		MOVLB 	1H 			//1716 	1021
		STR 	23H 			//1717 	10A3
		MOVLB 	0H 			//1718 	1020
		LDR 	36H, 0H 			//1719 	1836
		MOVLB 	1H 			//171A 	1021
		STR 	24H 			//171B 	10A4
		MOVLB 	0H 			//171C 	1020
		LDR 	37H, 0H 			//171D 	1837
		MOVLB 	1H 			//171E 	1021
		STR 	25H 			//171F 	10A5
		RET 					//1720 	1008
		LDR 	2CH, 0H 			//1721 	182C
		MOVLB 	4H 			//1722 	1024
		STR 	32H 			//1723 	10B2
		MOVLB 	1H 			//1724 	1021
		LDR 	2DH, 0H 			//1725 	182D
		MOVLB 	4H 			//1726 	1024
		STR 	33H 			//1727 	10B3
		MOVLB 	1H 			//1728 	1021
		LDR 	2EH, 0H 			//1729 	182E
		MOVLB 	4H 			//172A 	1024
		STR 	34H 			//172B 	10B4
		MOVLB 	1H 			//172C 	1021
		LDWI 	40H 			//172D 	0040
		CLRF 	20H 			//172E 	11A0
		CLRF 	21H 			//172F 	11A1
		STR 	22H 			//1730 	10A2
		MOVLB 	4H 			//1731 	1024
		LDR 	38H, 0H 			//1732 	1838
		MOVLB 	0H 			//1733 	1020
		STR 	4DH 			//1734 	10CD
		MOVLB 	4H 			//1735 	1024
		LDR 	39H, 0H 			//1736 	1839
		MOVLB 	0H 			//1737 	1020
		STR 	4EH 			//1738 	10CE
		MOVLB 	4H 			//1739 	1024
		LDR 	3AH, 0H 			//173A 	183A
		MOVLB 	0H 			//173B 	1020
		STR 	4FH 			//173C 	10CF
		MOVLB 	4H 			//173D 	1024
		LDR 	3BH, 0H 			//173E 	183B
		MOVLB 	0H 			//173F 	1020
		STR 	50H 			//1740 	10D0
		MOVLB 	4H 			//1741 	1024
		LDR 	3CH, 0H 			//1742 	183C
		MOVLB 	0H 			//1743 	1020
		STR 	51H 			//1744 	10D1
		MOVLB 	4H 			//1745 	1024
		LDR 	3DH, 0H 			//1746 	183D
		MOVLB 	0H 			//1747 	1020
		STR 	52H 			//1748 	10D2
		RET 					//1749 	1008
		LDR 	41H, 0H 			//174A 	1841
		MOVLB 	3H 			//174B 	1023
		STR 	62H 			//174C 	10E2
		MOVLB 	0H 			//174D 	1020
		LDR 	42H, 0H 			//174E 	1842
		MOVLB 	3H 			//174F 	1023
		STR 	63H 			//1750 	10E3
		MOVLB 	0H 			//1751 	1020
		LDR 	43H, 0H 			//1752 	1843
		MOVLB 	3H 			//1753 	1023
		STR 	64H 			//1754 	10E4
		MOVLB 	0H 			//1755 	1020
		LDWI 	C8H 			//1756 	00C8
		CLRF 	41H 			//1757 	11C1
		STR 	42H 			//1758 	10C2
		LDWI 	41H 			//1759 	0041
		STR 	43H 			//175A 	10C3
		LDWI 	65H 			//175B 	0065
		MOVLB 	1H 			//175C 	1021
		STR 	2CH 			//175D 	10AC
		LDWI 	2AH 			//175E 	002A
		STR 	2DH 			//175F 	10AD
		LDWI 	3BH 			//1760 	003B
		STR 	2EH 			//1761 	10AE
		MOVLB 	3H 			//1762 	1023
		LDR 	62H, 0H 			//1763 	1862
		MOVLB 	1H 			//1764 	1021
		STR 	2FH 			//1765 	10AF
		MOVLB 	3H 			//1766 	1023
		LDR 	63H, 0H 			//1767 	1863
		MOVLB 	1H 			//1768 	1021
		STR 	30H 			//1769 	10B0
		MOVLB 	3H 			//176A 	1023
		LDR 	64H, 0H 			//176B 	1864
		MOVLB 	1H 			//176C 	1021
		STR 	31H 			//176D 	10B1
		RET 					//176E 	1008
		LDR 	2CH, 0H 			//176F 	182C
		MOVLB 	4H 			//1770 	1024
		STR 	2CH 			//1771 	10AC
		MOVLB 	1H 			//1772 	1021
		LDR 	2DH, 0H 			//1773 	182D
		MOVLB 	4H 			//1774 	1024
		STR 	2DH 			//1775 	10AD
		MOVLB 	1H 			//1776 	1021
		LDR 	2EH, 0H 			//1777 	182E
		MOVLB 	4H 			//1778 	1024
		STR 	2EH 			//1779 	10AE
		MOVLB 	0H 			//177A 	1020
		LDWI 	80H 			//177B 	0080
		CLRF 	41H 			//177C 	11C1
		STR 	42H 			//177D 	10C2
		LDWI 	BFH 			//177E 	00BF
		STR 	43H 			//177F 	10C3
		LDWI 	66H 			//1780 	0066
		MOVLB 	1H 			//1781 	1021
		STR 	2CH 			//1782 	10AC
		LDWI 	26H 			//1783 	0026
		STR 	2DH 			//1784 	10AD
		LDWI 	3FH 			//1785 	003F
		STR 	2EH 			//1786 	10AE
		MOVLB 	4H 			//1787 	1024
		LDR 	2CH, 0H 			//1788 	182C
		MOVLB 	1H 			//1789 	1021
		STR 	2FH 			//178A 	10AF
		MOVLB 	4H 			//178B 	1024
		LDR 	2DH, 0H 			//178C 	182D
		MOVLB 	1H 			//178D 	1021
		STR 	30H 			//178E 	10B0
		MOVLB 	4H 			//178F 	1024
		LDR 	2EH, 0H 			//1790 	182E
		MOVLB 	1H 			//1791 	1021
		STR 	31H 			//1792 	10B1
		RET 					//1793 	1008
		LDR 	20H, 0H 			//1794 	1820
		MOVLB 	4H 			//1795 	1024
		STR 	2FH 			//1796 	10AF
		MOVLB 	1H 			//1797 	1021
		LDR 	21H, 0H 			//1798 	1821
		MOVLB 	4H 			//1799 	1024
		STR 	30H 			//179A 	10B0
		MOVLB 	1H 			//179B 	1021
		LDR 	22H, 0H 			//179C 	1822
		MOVLB 	4H 			//179D 	1024
		STR 	31H 			//179E 	10B1
		LDR 	32H, 0H 			//179F 	1832
		MOVLB 	1H 			//17A0 	1021
		STR 	2CH 			//17A1 	10AC
		MOVLB 	4H 			//17A2 	1024
		LDR 	33H, 0H 			//17A3 	1833
		MOVLB 	1H 			//17A4 	1021
		STR 	2DH 			//17A5 	10AD
		MOVLB 	4H 			//17A6 	1024
		LDR 	34H, 0H 			//17A7 	1834
		MOVLB 	1H 			//17A8 	1021
		STR 	2EH 			//17A9 	10AE
		MOVLB 	4H 			//17AA 	1024
		LDR 	2FH, 0H 			//17AB 	182F
		MOVLB 	1H 			//17AC 	1021
		STR 	2FH 			//17AD 	10AF
		MOVLB 	4H 			//17AE 	1024
		LDR 	30H, 0H 			//17AF 	1830
		MOVLB 	1H 			//17B0 	1021
		STR 	30H 			//17B1 	10B0
		MOVLB 	4H 			//17B2 	1024
		LDR 	31H, 0H 			//17B3 	1831
		MOVLB 	1H 			//17B4 	1021
		STR 	31H 			//17B5 	10B1
		RET 					//17B6 	1008
		LDR 	69H, 0H 			//17B7 	1869
		MOVLB 	0H 			//17B8 	1020
		STR 	4DH 			//17B9 	10CD
		MOVLB 	3H 			//17BA 	1023
		LDR 	6AH, 0H 			//17BB 	186A
		MOVLB 	0H 			//17BC 	1020
		STR 	4EH 			//17BD 	10CE
		MOVLB 	3H 			//17BE 	1023
		LDR 	6BH, 0H 			//17BF 	186B
		MOVLB 	0H 			//17C0 	1020
		STR 	4FH 			//17C1 	10CF
		RET 					//17C2 	1008
		STR 	2EH 			//17C3 	10AE
		MOVLB 	3H 			//17C4 	1023
		LDR 	62H, 0H 			//17C5 	1862
		MOVLB 	1H 			//17C6 	1021
		STR 	2FH 			//17C7 	10AF
		MOVLB 	3H 			//17C8 	1023
		LDR 	63H, 0H 			//17C9 	1863
		MOVLB 	1H 			//17CA 	1021
		STR 	30H 			//17CB 	10B0
		MOVLB 	3H 			//17CC 	1023
		LDR 	64H, 0H 			//17CD 	1864
		MOVLB 	1H 			//17CE 	1021
		STR 	31H 			//17CF 	10B1
		RET 					//17D0 	1008
		LDR 	2CH, 0H 			//17D1 	182C
		MOVLB 	4H 			//17D2 	1024
		STR 	35H 			//17D3 	10B5
		MOVLB 	1H 			//17D4 	1021
		LDR 	2DH, 0H 			//17D5 	182D
		MOVLB 	4H 			//17D6 	1024
		STR 	36H 			//17D7 	10B6
		MOVLB 	1H 			//17D8 	1021
		LDR 	2EH, 0H 			//17D9 	182E
		MOVLB 	4H 			//17DA 	1024
		STR 	37H 			//17DB 	10B7
		LDWI 	D7H 			//17DC 	00D7
		MOVLB 	1H 			//17DD 	1021
		STR 	2CH 			//17DE 	10AC
		LDWI 	23H 			//17DF 	0023
		STR 	2DH 			//17E0 	10AD
		LDWI 	3CH 			//17E1 	003C
		STR 	2EH 			//17E2 	10AE
		MOVLB 	4H 			//17E3 	1024
		LDR 	35H, 0H 			//17E4 	1835
		MOVLB 	1H 			//17E5 	1021
		STR 	2FH 			//17E6 	10AF
		MOVLB 	4H 			//17E7 	1024
		LDR 	36H, 0H 			//17E8 	1836
		MOVLB 	1H 			//17E9 	1021
		STR 	30H 			//17EA 	10B0
		MOVLB 	4H 			//17EB 	1024
		LDR 	37H, 0H 			//17EC 	1837
		MOVLB 	1H 			//17ED 	1021
		STR 	31H 			//17EE 	10B1
		RET 					//17EF 	1008
		LDR 	2CH, 0H 			//17F0 	182C
		MOVLB 	3H 			//17F1 	1023
		STR 	62H 			//17F2 	10E2
		MOVLB 	1H 			//17F3 	1021
		LDR 	2DH, 0H 			//17F4 	182D
		MOVLB 	3H 			//17F5 	1023
		STR 	63H 			//17F6 	10E3
		MOVLB 	1H 			//17F7 	1021
		LDR 	2EH, 0H 			//17F8 	182E
		MOVLB 	3H 			//17F9 	1023
		STR 	64H 			//17FA 	10E4
		MOVLB 	1H 			//17FB 	1021
		LDWI 	1CH 			//17FC 	001C
		CLRF 	2CH 			//17FD 	11AC
		STR 	2DH 			//17FE 	10AD
		RETW 	42H 			//17FF 	0442
		ORG		1946H
		LDR 	35H, 0H 			//1946 	1835
		STR 	2DH 			//1947 	10AD
		LDR 	36H, 0H 			//1948 	1836
		STR 	2EH 			//1949 	10AE
		LDWI 	8EH 			//194A 	008E
		CLRF 	2FH 			//194B 	11AF
		STR 	30H 			//194C 	10B0
		CLRF 	31H 			//194D 	11B1
		LCALL 	640H 			//194E 	3640
		LDR 	2DH, 0H 			//194F 	182D
		STR 	35H 			//1950 	10B5
		LDR 	2EH, 0H 			//1951 	182E
		STR 	36H 			//1952 	10B6
		LDR 	2FH, 0H 			//1953 	182F
		STR 	37H 			//1954 	10B7
		RET 					//1955 	1008
		LDWI 	8EH 			//1956 	008E
		STR 	39H 			//1957 	10B9
		LDWI 	FFH 			//1958 	00FF
		ANDWR 	38H, 0H 		//1959 	1538
		BTSC 	3H, 2H 			//195A 	2903
		LJUMP 	162H 			//195B 	3962
		LSRF 	38H, 1H 		//195C 	06B8
		RRR 	37H, 1H 			//195D 	1CB7
		RRR 	36H, 1H 			//195E 	1CB6
		RRR 	35H, 1H 			//195F 	1CB5
		INCR 	39H, 1H 		//1960 	1AB9
		LJUMP 	158H 			//1961 	3958
		LDR 	35H, 0H 			//1962 	1835
		STR 	2DH 			//1963 	10AD
		LDR 	36H, 0H 			//1964 	1836
		STR 	2EH 			//1965 	10AE
		LDR 	37H, 0H 			//1966 	1837
		STR 	2FH 			//1967 	10AF
		LDR 	39H, 0H 			//1968 	1839
		STR 	30H 			//1969 	10B0
		CLRF 	31H 			//196A 	11B1
		LCALL 	640H 			//196B 	3640
		LDR 	2DH, 0H 			//196C 	182D
		STR 	35H 			//196D 	10B5
		LDR 	2EH, 0H 			//196E 	182E
		STR 	36H 			//196F 	10B6
		LDR 	2FH, 0H 			//1970 	182F
		STR 	37H 			//1971 	10B7
		RET 					//1972 	1008

		//;NFB.C: 456: for(int i=0;i<len;i++)
		CLRF 	50H 			//1973 	11D0
		CLRF 	51H 			//1974 	11D1
		LDR 	51H, 0H 			//1975 	1851
		XORWI 	80H 			//1976 	0A80
		STR 	4FH 			//1977 	10CF
		LDR 	4EH, 0H 			//1978 	184E
		XORWI 	80H 			//1979 	0A80
		SUBWR 	4FH, 0H 		//197A 	124F
		BTSS 	3H, 2H 			//197B 	2D03
		LJUMP 	17FH 			//197C 	397F
		LDR 	4DH, 0H 			//197D 	184D
		SUBWR 	50H, 0H 		//197E 	1250
		BTSC 	3H, 0H 			//197F 	2803
		RET 					//1980 	1008

		//;NFB.C: 457: {
		//;NFB.C: 458: UR1DATAL=tbuf[i];
		MOVLB 	1H 			//1981 	1021
		LDR 	4BH, 0H 			//1982 	184B
		ADDWR 	50H, 0H 		//1983 	1750
		STR 	4H 			//1984 	1084
		LDR 	4CH, 0H 			//1985 	184C
		ADDWFC 	51H, 0H 		//1986 	0D51
		STR 	5H 			//1987 	1085
		LDR 	0H, 0H 			//1988 	1800
		MOVLB 	9H 			//1989 	1029
		STR 	CH 			//198A 	108C

		//;NFB.C: 459: DelayMs(1);
		MOVLB 	1H 			//198B 	1021
		CLRF 	46H 			//198C 	11C6
		INCR 	46H, 1H 		//198D 	1AC6
		CLRF 	47H 			//198E 	11C7
		LCALL 	6B7H 			//198F 	36B7
		MOVLP 	19H 			//1990 	0199
		MOVLB 	1H 			//1991 	1021
		INCR 	50H, 1H 		//1992 	1AD0
		BTSC 	3H, 2H 			//1993 	2903
		INCR 	51H, 1H 		//1994 	1AD1
		LJUMP 	175H 			//1995 	3975

		//;NFB.C: 476: unsigned char EEReadData=EEPROMread(0x00);
		LDWI 	0H 			//1996 	0000
		LCALL 	21DH 			//1997 	321D
		MOVLP 	19H 			//1998 	0199
		STR 	41H 			//1999 	10C1

		//;NFB.C: 477: if(EEReadData != 0x45){
		XORWI 	45H 			//199A 	0A45
		BTSC 	3H, 2H 			//199B 	2903
		LJUMP 	1D7H 			//199C 	39D7

		//;NFB.C: 478: EEPROMwrite(0x00,0x45);
		LDWI 	45H 			//199D 	0045
		STR 	2DH 			//199E 	10AD
		LDWI 	0H 			//199F 	0000
		LCALL 	235H 			//19A0 	3235
		MOVLP 	19H 			//19A1 	0199

		//;NFB.C: 479: EEPROMwrite(0x01,0x14);
		LDWI 	14H 			//19A2 	0014
		MOVLB 	0H 			//19A3 	1020
		STR 	2DH 			//19A4 	10AD
		LDWI 	1H 			//19A5 	0001
		LCALL 	235H 			//19A6 	3235
		MOVLP 	19H 			//19A7 	0199

		//;NFB.C: 480: EEPROMwrite(0x02,0x36);
		LDWI 	36H 			//19A8 	0036
		MOVLB 	0H 			//19A9 	1020
		STR 	2DH 			//19AA 	10AD
		LDWI 	2H 			//19AB 	0002
		LCALL 	235H 			//19AC 	3235
		MOVLP 	19H 			//19AD 	0199

		//;NFB.C: 481: EEPROMwrite(0x03,0x01);
		MOVLB 	0H 			//19AE 	1020
		LDWI 	3H 			//19AF 	0003
		CLRF 	2DH 			//19B0 	11AD
		INCR 	2DH, 1H 		//19B1 	1AAD
		LCALL 	235H 			//19B2 	3235
		MOVLP 	19H 			//19B3 	0199

		//;NFB.C: 482: EEPROMwrite(0x04,0x40);
		LDWI 	40H 			//19B4 	0040
		MOVLB 	0H 			//19B5 	1020
		STR 	2DH 			//19B6 	10AD
		LDWI 	4H 			//19B7 	0004
		LCALL 	235H 			//19B8 	3235
		MOVLP 	19H 			//19B9 	0199

		//;NFB.C: 483: EEPROMwrite(0x05,0x01);
		MOVLB 	0H 			//19BA 	1020
		LDWI 	5H 			//19BB 	0005
		CLRF 	2DH 			//19BC 	11AD
		INCR 	2DH, 1H 		//19BD 	1AAD
		LCALL 	235H 			//19BE 	3235
		MOVLP 	19H 			//19BF 	0199

		//;NFB.C: 484: EEPROMwrite(0x06,0x27);
		LDWI 	27H 			//19C0 	0027
		MOVLB 	0H 			//19C1 	1020
		STR 	2DH 			//19C2 	10AD
		LDWI 	6H 			//19C3 	0006
		LCALL 	235H 			//19C4 	3235
		MOVLP 	19H 			//19C5 	0199

		//;NFB.C: 485: EEPROMwrite(0x07,0x01);
		MOVLB 	0H 			//19C6 	1020
		LDWI 	7H 			//19C7 	0007
		CLRF 	2DH 			//19C8 	11AD
		INCR 	2DH, 1H 		//19C9 	1AAD
		LCALL 	235H 			//19CA 	3235
		MOVLP 	19H 			//19CB 	0199

		//;NFB.C: 486: EEPROMwrite(0x08,0x0F);
		LDWI 	FH 			//19CC 	000F
		MOVLB 	0H 			//19CD 	1020
		STR 	2DH 			//19CE 	10AD
		LDWI 	8H 			//19CF 	0008
		LCALL 	235H 			//19D0 	3235
		MOVLP 	19H 			//19D1 	0199

		//;NFB.C: 487: EEPROMwrite(0x09,0x05);
		LDWI 	5H 			//19D2 	0005
		MOVLB 	0H 			//19D3 	1020
		STR 	2DH 			//19D4 	10AD
		LDWI 	9H 			//19D5 	0009
		LJUMP 	235H 			//19D6 	3A35

		//;NFB.C: 488: } else{
		//;NFB.C: 489: t1 = EEPROMread(0x01);
		LDWI 	1H 			//19D7 	0001
		LCALL 	21DH 			//19D8 	321D
		MOVLP 	19H 			//19D9 	0199
		MOVLB 	3H 			//19DA 	1023
		STR 	6CH 			//19DB 	10EC
		LDWI 	2H 			//19DC 	0002
		CLRF 	6DH 			//19DD 	11ED

		//;NFB.C: 490: t2 = (EEPROMread(0x03)<<8) + EEPROMread(0x02);
		LCALL 	21DH 			//19DE 	321D
		MOVLP 	19H 			//19DF 	0199
		STR 	3FH 			//19E0 	10BF
		LDWI 	3H 			//19E1 	0003
		LCALL 	21DH 			//19E2 	321D
		MOVLP 	19H 			//19E3 	0199
		MOVLB 	4H 			//19E4 	1024
		STR 	43H 			//19E5 	10C3
		MOVLB 	0H 			//19E6 	1020
		LDR 	3FH, 0H 			//19E7 	183F
		MOVLB 	4H 			//19E8 	1024
		STR 	42H 			//19E9 	10C2

		//;NFB.C: 491: T1 = (EEPROMread(0x05)<<8) + EEPROMread(0x04);
		LDWI 	4H 			//19EA 	0004
		LCALL 	21DH 			//19EB 	321D
		MOVLP 	19H 			//19EC 	0199
		STR 	3FH 			//19ED 	10BF
		LDWI 	5H 			//19EE 	0005
		LCALL 	21DH 			//19EF 	321D
		MOVLP 	19H 			//19F0 	0199
		LCALL 	7E3H 			//19F1 	37E3
		MOVLP 	19H 			//19F2 	0199
		LCALL 	5BBH 			//19F3 	35BB
		MOVLP 	19H 			//19F4 	0199
		LDR 	3BH, 0H 			//19F5 	183B
		STR 	5AH 			//19F6 	10DA
		LDR 	3CH, 0H 			//19F7 	183C
		STR 	5BH 			//19F8 	10DB
		LDR 	3DH, 0H 			//19F9 	183D
		STR 	5CH 			//19FA 	10DC

		//;NFB.C: 492: T2 = (EEPROMread(0x07)<<8) + EEPROMread(0x06);
		LDWI 	6H 			//19FB 	0006
		LCALL 	21DH 			//19FC 	321D
		MOVLP 	19H 			//19FD 	0199
		STR 	3FH 			//19FE 	10BF
		LDWI 	7H 			//19FF 	0007
		LCALL 	21DH 			//1A00 	321D
		MOVLP 	19H 			//1A01 	0199
		LCALL 	7E3H 			//1A02 	37E3
		MOVLP 	19H 			//1A03 	0199
		LCALL 	5BBH 			//1A04 	35BB
		MOVLP 	19H 			//1A05 	0199
		LDR 	3BH, 0H 			//1A06 	183B
		MOVLB 	4H 			//1A07 	1024
		STR 	20H 			//1A08 	10A0
		MOVLB 	0H 			//1A09 	1020
		LDR 	3CH, 0H 			//1A0A 	183C
		MOVLB 	4H 			//1A0B 	1024
		STR 	21H 			//1A0C 	10A1
		MOVLB 	0H 			//1A0D 	1020
		LDR 	3DH, 0H 			//1A0E 	183D
		MOVLB 	4H 			//1A0F 	1024
		STR 	22H 			//1A10 	10A2

		//;NFB.C: 493: pf = EEPROMread(0x08);
		LDWI 	8H 			//1A11 	0008
		LCALL 	21DH 			//1A12 	321D
		MOVLP 	19H 			//1A13 	0199
		MOVLB 	4H 			//1A14 	1024
		STR 	40H 			//1A15 	10C0
		LDWI 	9H 			//1A16 	0009
		CLRF 	41H 			//1A17 	11C1

		//;NFB.C: 494: pt = EEPROMread(0x09);
		LCALL 	21DH 			//1A18 	321D
		MOVLB 	4H 			//1A19 	1024
		STR 	3EH 			//1A1A 	10BE
		CLRF 	3FH 			//1A1B 	11BF
		RET 					//1A1C 	1008
		MOVLB 	0H 			//1A1D 	1020
		STR 	2DH 			//1A1E 	10AD

		//;NFB.C: 377: unsigned char ReEEPROMread;
		//;NFB.C: 378: while(GIE)
		BTSS 	BH, 7H 			//1A1F 	2F8B
		LJUMP 	225H 			//1A20 	3A25

		//;NFB.C: 379: {
		//;NFB.C: 380: GIE = 0;
		BCR 	BH, 7H 			//1A21 	238B

		//;NFB.C: 381: __nop();
		NOP 					//1A22 	1000

		//;NFB.C: 382: __nop();
		NOP 					//1A23 	1000
		LJUMP 	21FH 			//1A24 	3A1F

		//;NFB.C: 383: }
		//;NFB.C: 384: EEADRL=EEAddr;
		MOVLB 	0H 			//1A25 	1020
		LDR 	2DH, 0H 			//1A26 	182D
		MOVLB 	3H 			//1A27 	1023
		STR 	11H 			//1A28 	1091

		//;NFB.C: 386: CFGS=0;
		BCR 	15H, 6H 			//1A29 	2315

		//;NFB.C: 387: EEPGD=0;
		BCR 	15H, 7H 			//1A2A 	2395

		//;NFB.C: 388: RD=1;
		BSR 	15H, 0H 			//1A2B 	2415

		//;NFB.C: 389: __nop();
		NOP 					//1A2C 	1000

		//;NFB.C: 390: __nop();
		NOP 					//1A2D 	1000

		//;NFB.C: 391: __nop();
		NOP 					//1A2E 	1000

		//;NFB.C: 392: __nop();
		NOP 					//1A2F 	1000

		//;NFB.C: 393: ReEEPROMread=EEDATL;
		MOVLB 	3H 			//1A30 	1023
		LDR 	13H, 0H 			//1A31 	1813
		MOVLB 	0H 			//1A32 	1020
		STR 	2EH 			//1A33 	10AE

		//;NFB.C: 395: return ReEEPROMread;
		RET 					//1A34 	1008
		STR 	2EH 			//1A35 	10AE

		//;NFB.C: 427: while(GIE)
		BTSS 	BH, 7H 			//1A36 	2F8B
		LJUMP 	23CH 			//1A37 	3A3C

		//;NFB.C: 428: {
		//;NFB.C: 429: GIE = 0;
		BCR 	BH, 7H 			//1A38 	238B

		//;NFB.C: 430: __nop();
		NOP 					//1A39 	1000

		//;NFB.C: 431: __nop();
		NOP 					//1A3A 	1000
		LJUMP 	236H 			//1A3B 	3A36

		//;NFB.C: 432: }
		//;NFB.C: 433: EEADRL=EEAddr;
		MOVLB 	0H 			//1A3C 	1020
		LDR 	2EH, 0H 			//1A3D 	182E
		MOVLB 	3H 			//1A3E 	1023
		STR 	11H 			//1A3F 	1091

		//;NFB.C: 434: EEDATL=Data;
		MOVLB 	0H 			//1A40 	1020
		LDR 	2DH, 0H 			//1A41 	182D
		MOVLB 	3H 			//1A42 	1023
		STR 	13H 			//1A43 	1093

		//;NFB.C: 436: CFGS=0;
		BCR 	15H, 6H 			//1A44 	2315

		//;NFB.C: 437: EEPGD=0;
		BCR 	15H, 7H 			//1A45 	2395

		//;NFB.C: 438: WREN=1;
		BSR 	15H, 2H 			//1A46 	2515

		//;NFB.C: 439: EEIF=0;
		BCR 	BH, 2H 			//1A47 	210B

		//;NFB.C: 441: Unlock_Flash();
		LCALL 	6D1H 			//1A48 	36D1
		MOVLP 	19H 			//1A49 	0199

		//;NFB.C: 442: __nop();
		NOP 					//1A4A 	1000

		//;NFB.C: 443: __nop();
		NOP 					//1A4B 	1000

		//;NFB.C: 444: __nop();
		NOP 					//1A4C 	1000

		//;NFB.C: 445: __nop();
		NOP 					//1A4D 	1000

		//;NFB.C: 447: while(WR);
		MOVLB 	3H 			//1A4E 	1023
		BTSC 	15H, 1H 		//1A4F 	2895
		LJUMP 	24EH 			//1A50 	3A4E

		//;NFB.C: 448: WREN=0;
		BCR 	15H, 2H 			//1A51 	2115

		//;NFB.C: 449: GIE=1;
		BSR 	BH, 7H 			//1A52 	278B
		RET 					//1A53 	1008
		MOVLB 	1H 			//1A54 	1021
		STR 	36H 			//1A55 	10B6
		LDWI 	6EH 			//1A56 	006E
		SUBWR 	36H, 0H 		//1A57 	1236
		BTSS 	3H, 0H 			//1A58 	2C03
		LJUMP 	2A1H 			//1A59 	3AA1
		LDWI 	AH 			//1A5A 	000A
		MOVLB 	0H 			//1A5B 	1020
		STR 	32H 			//1A5C 	10B2
		LDWI 	64H 			//1A5D 	0064
		STR 	2DH 			//1A5E 	10AD
		MOVLB 	1H 			//1A5F 	1021
		LDR 	36H, 0H 			//1A60 	1836
		LCALL 	45EH 			//1A61 	345E
		MOVLP 	19H 			//1A62 	0199
		LCALL 	445H 			//1A63 	3445
		MOVLP 	19H 			//1A64 	0199
		LCALL 	779H 			//1A65 	3779
		MOVLP 	19H 			//1A66 	0199
		LCALL 	3B7H 			//1A67 	33B7
		MOVLP 	19H 			//1A68 	0199
		LCALL 	729H 			//1A69 	3729
		MOVLP 	19H 			//1A6A 	0199
		LCALL 	6DBH 			//1A6B 	36DB
		MOVLP 	19H 			//1A6C 	0199
		LDWI 	64H 			//1A6D 	0064
		LCALL 	7E9H 			//1A6E 	37E9
		MOVLP 	19H 			//1A6F 	0199
		LCALL 	445H 			//1A70 	3445
		MOVLP 	19H 			//1A71 	0199
		LCALL 	779H 			//1A72 	3779
		MOVLP 	19H 			//1A73 	0199
		LCALL 	3B7H 			//1A74 	33B7
		MOVLP 	19H 			//1A75 	0199
		LCALL 	75BH 			//1A76 	375B
		MOVLP 	19H 			//1A77 	0199
		LCALL 	6EBH 			//1A78 	36EB
		MOVLP 	19H 			//1A79 	0199
		LCALL 	534H 			//1A7A 	3534
		MOVLP 	19H 			//1A7B 	0199
		LCALL 	7BBH 			//1A7C 	37BB
		MOVLP 	19H 			//1A7D 	0199
		LCALL 	7DDH 			//1A7E 	37DD
		MOVLP 	19H 			//1A7F 	0199
		LCALL 	45EH 			//1A80 	345E
		MOVLP 	19H 			//1A81 	0199
		LCALL 	779H 			//1A82 	3779
		MOVLP 	19H 			//1A83 	0199
		LCALL 	3B7H 			//1A84 	33B7
		MOVLP 	19H 			//1A85 	0199
		LCALL 	6E4H 			//1A86 	36E4
		MOVLP 	19H 			//1A87 	0199
		LCALL 	6DBH 			//1A88 	36DB
		MOVLP 	19H 			//1A89 	0199
		LCALL 	7C2H 			//1A8A 	37C2
		MOVLP 	19H 			//1A8B 	0199
		LCALL 	534H 			//1A8C 	3534
		MOVLP 	19H 			//1A8D 	0199
		LDR 	20H, 0H 			//1A8E 	1820
		STR 	30H 			//1A8F 	10B0
		LDR 	21H, 0H 			//1A90 	1821
		STR 	31H 			//1A91 	10B1
		LDR 	22H, 0H 			//1A92 	1822
		STR 	32H 			//1A93 	10B2
		LDWI 	3FH 			//1A94 	003F
		CLRF 	20H 			//1A95 	11A0
		CLRF 	21H 			//1A96 	11A1
		STR 	22H 			//1A97 	10A2
		LDR 	30H, 0H 			//1A98 	1830
		STR 	23H 			//1A99 	10A3
		LDR 	31H, 0H 			//1A9A 	1831
		STR 	24H 			//1A9B 	10A4
		LDR 	32H, 0H 			//1A9C 	1832
		STR 	25H 			//1A9D 	10A5
		LCALL 	534H 			//1A9E 	3534
		MOVLP 	19H 			//1A9F 	0199
		LJUMP 	78EH 			//1AA0 	3F8E
		LDWI 	BH 			//1AA1 	000B
		SUBWR 	36H, 0H 		//1AA2 	1236
		BTSS 	3H, 0H 			//1AA3 	2C03
		LJUMP 	2CBH 			//1AA4 	3ACB
		LCALL 	7DDH 			//1AA5 	37DD
		MOVLP 	19H 			//1AA6 	0199
		LCALL 	45EH 			//1AA7 	345E
		MOVLP 	19H 			//1AA8 	0199
		LCALL 	779H 			//1AA9 	3779
		MOVLP 	19H 			//1AAA 	0199
		LCALL 	3B7H 			//1AAB 	33B7
		MOVLP 	19H 			//1AAC 	0199
		LCALL 	6E4H 			//1AAD 	36E4
		MOVLP 	19H 			//1AAE 	0199
		LCALL 	6DBH 			//1AAF 	36DB
		MOVLP 	19H 			//1AB0 	0199
		LDWI 	AH 			//1AB1 	000A
		LCALL 	7E9H 			//1AB2 	37E9
		MOVLP 	19H 			//1AB3 	0199
		LCALL 	445H 			//1AB4 	3445
		MOVLP 	19H 			//1AB5 	0199
		LCALL 	779H 			//1AB6 	3779
		MOVLP 	19H 			//1AB7 	0199
		LCALL 	3B7H 			//1AB8 	33B7
		MOVLP 	19H 			//1AB9 	0199
		LCALL 	729H 			//1ABA 	3729
		MOVLP 	19H 			//1ABB 	0199
		LCALL 	6EBH 			//1ABC 	36EB
		MOVLP 	19H 			//1ABD 	0199
		LCALL 	534H 			//1ABE 	3534
		MOVLP 	19H 			//1ABF 	0199
		LCALL 	7BBH 			//1AC0 	37BB
		MOVLP 	19H 			//1AC1 	0199
		LDWI 	3FH 			//1AC2 	003F
		CLRF 	20H 			//1AC3 	11A0
		CLRF 	21H 			//1AC4 	11A1
		STR 	22H 			//1AC5 	10A2
		LCALL 	7C2H 			//1AC6 	37C2
		MOVLP 	19H 			//1AC7 	0199
		LCALL 	534H 			//1AC8 	3534
		MOVLP 	19H 			//1AC9 	0199
		LJUMP 	78EH 			//1ACA 	3F8E
		LDWI 	3FH 			//1ACB 	003F
		CLRF 	20H 			//1ACC 	11A0
		CLRF 	21H 			//1ACD 	11A1
		STR 	22H 			//1ACE 	10A2
		LDR 	36H, 0H 			//1ACF 	1836
		MOVLB 	0H 			//1AD0 	1020
		LCALL 	779H 			//1AD1 	3779
		MOVLP 	19H 			//1AD2 	0199
		LCALL 	3B7H 			//1AD3 	33B7
		MOVLP 	19H 			//1AD4 	0199
		LCALL 	6E4H 			//1AD5 	36E4
		MOVLP 	19H 			//1AD6 	0199
		LCALL 	6EBH 			//1AD7 	36EB
		MOVLP 	19H 			//1AD8 	0199
		LCALL 	534H 			//1AD9 	3534
		MOVLP 	19H 			//1ADA 	0199
		LJUMP 	78EH 			//1ADB 	3F8E
		MOVLB 	1H 			//1ADC 	1021
		STR 	33H 			//1ADD 	10B3
		BTSS 	33H, 7H 		//1ADE 	2FB3
		LJUMP 	34AH 			//1ADF 	3B4A
		COMR 	33H, 1H 		//1AE0 	19B3
		INCR 	33H, 1H 		//1AE1 	1AB3
		LDR 	33H, 0H 			//1AE2 	1833
		XORWI 	80H 			//1AE3 	0A80
		ADDWI 	12H 			//1AE4 	0E12
		BTSS 	3H, 0H 			//1AE5 	2C03
		LJUMP 	31FH 			//1AE6 	3B1F
		LCALL 	77FH 			//1AE7 	377F
		MOVLP 	19H 			//1AE8 	0199
		LCALL 	7A5H 			//1AE9 	37A5
		MOVLP 	19H 			//1AEA 	0199
		LCALL 	40CH 			//1AEB 	340C
		MOVLP 	19H 			//1AEC 	0199
		LCALL 	7FBH 			//1AED 	37FB
		MOVLP 	19H 			//1AEE 	0199
		LCALL 	3CCH 			//1AEF 	33CC
		MOVLP 	19H 			//1AF0 	0199
		LCALL 	730H 			//1AF1 	3730
		MOVLP 	19H 			//1AF2 	0199
		LCALL 	3B7H 			//1AF3 	33B7
		MOVLP 	19H 			//1AF4 	0199
		LCALL 	729H 			//1AF5 	3729
		MOVLP 	19H 			//1AF6 	0199
		LCALL 	6DBH 			//1AF7 	36DB
		MOVLP 	19H 			//1AF8 	0199
		LDWI 	64H 			//1AF9 	0064
		MOVLB 	0H 			//1AFA 	1020
		STR 	33H 			//1AFB 	10B3
		LCALL 	787H 			//1AFC 	3787
		MOVLP 	19H 			//1AFD 	0199
		BTSC 	35H, 7H 		//1AFE 	2BB5
		DECR 	36H, 1H 		//1AFF 	13B6
		LCALL 	3CCH 			//1B00 	33CC
		MOVLP 	19H 			//1B01 	0199
		LCALL 	730H 			//1B02 	3730
		MOVLP 	19H 			//1B03 	0199
		LCALL 	3B7H 			//1B04 	33B7
		MOVLP 	19H 			//1B05 	0199
		LCALL 	75BH 			//1B06 	375B
		MOVLP 	19H 			//1B07 	0199
		LCALL 	6EBH 			//1B08 	36EB
		MOVLP 	19H 			//1B09 	0199
		LCALL 	534H 			//1B0A 	3534
		MOVLP 	19H 			//1B0B 	0199
		LCALL 	762H 			//1B0C 	3762
		MOVLP 	19H 			//1B0D 	0199
		LCALL 	744H 			//1B0E 	3744
		MOVLP 	19H 			//1B0F 	0199
		LCALL 	40CH 			//1B10 	340C
		MOVLP 	19H 			//1B11 	0199
		LCALL 	771H 			//1B12 	3771
		MOVLP 	19H 			//1B13 	0199
		LCALL 	3B7H 			//1B14 	33B7
		MOVLP 	19H 			//1B15 	0199
		LCALL 	6E4H 			//1B16 	36E4
		MOVLP 	19H 			//1B17 	0199
		LCALL 	6DBH 			//1B18 	36DB
		MOVLP 	19H 			//1B19 	0199
		LCALL 	7ADH 			//1B1A 	37AD
		MOVLP 	19H 			//1B1B 	0199
		LCALL 	534H 			//1B1C 	3534
		MOVLP 	19H 			//1B1D 	0199
		LJUMP 	76AH 			//1B1E 	3F6A
		LCALL 	7F2H 			//1B1F 	37F2
		MOVLP 	19H 			//1B20 	0199
		BTSS 	3H, 0H 			//1B21 	2C03
		LJUMP 	342H 			//1B22 	3B42
		LCALL 	744H 			//1B23 	3744
		MOVLP 	19H 			//1B24 	0199
		LCALL 	40CH 			//1B25 	340C
		MOVLP 	19H 			//1B26 	0199
		LCALL 	771H 			//1B27 	3771
		MOVLP 	19H 			//1B28 	0199
		LCALL 	3B7H 			//1B29 	33B7
		MOVLP 	19H 			//1B2A 	0199
		LCALL 	6E4H 			//1B2B 	36E4
		MOVLP 	19H 			//1B2C 	0199
		LCALL 	6DBH 			//1B2D 	36DB
		MOVLP 	19H 			//1B2E 	0199
		LCALL 	77FH 			//1B2F 	377F
		MOVLP 	19H 			//1B30 	0199
		STR 	35H 			//1B31 	10B5
		CLRF 	36H 			//1B32 	11B6
		BTSC 	35H, 7H 		//1B33 	2BB5
		DECR 	36H, 1H 		//1B34 	13B6
		LCALL 	3CCH 			//1B35 	33CC
		MOVLP 	19H 			//1B36 	0199
		LCALL 	730H 			//1B37 	3730
		MOVLP 	19H 			//1B38 	0199
		LCALL 	3B7H 			//1B39 	33B7
		MOVLP 	19H 			//1B3A 	0199
		LCALL 	729H 			//1B3B 	3729
		MOVLP 	19H 			//1B3C 	0199
		LCALL 	6EBH 			//1B3D 	36EB
		MOVLP 	19H 			//1B3E 	0199
		LCALL 	534H 			//1B3F 	3534
		MOVLP 	19H 			//1B40 	0199
		LJUMP 	76AH 			//1B41 	3F6A
		MOVLB 	0H 			//1B42 	1020
		LCALL 	779H 			//1B43 	3779
		MOVLP 	19H 			//1B44 	0199
		LCALL 	3B7H 			//1B45 	33B7
		MOVLP 	19H 			//1B46 	0199
		LCALL 	6E4H 			//1B47 	36E4
		MOVLP 	19H 			//1B48 	0199
		LJUMP 	79CH 			//1B49 	3F9C
		LDR 	33H, 0H 			//1B4A 	1833
		XORWI 	80H 			//1B4B 	0A80
		ADDWI 	12H 			//1B4C 	0E12
		BTSS 	3H, 0H 			//1B4D 	2C03
		LJUMP 	38CH 			//1B4E 	3B8C
		LCALL 	77FH 			//1B4F 	377F
		MOVLP 	19H 			//1B50 	0199
		LCALL 	7A5H 			//1B51 	37A5
		MOVLP 	19H 			//1B52 	0199
		LCALL 	40CH 			//1B53 	340C
		MOVLP 	19H 			//1B54 	0199
		LCALL 	7FBH 			//1B55 	37FB
		MOVLP 	19H 			//1B56 	0199
		LCALL 	3CCH 			//1B57 	33CC
		MOVLP 	19H 			//1B58 	0199
		LCALL 	730H 			//1B59 	3730
		MOVLP 	19H 			//1B5A 	0199
		LCALL 	3B7H 			//1B5B 	33B7
		MOVLP 	19H 			//1B5C 	0199
		LCALL 	795H 			//1B5D 	3795
		MOVLP 	19H 			//1B5E 	0199
		LCALL 	6DBH 			//1B5F 	36DB
		MOVLP 	19H 			//1B60 	0199
		LDWI 	64H 			//1B61 	0064
		MOVLB 	0H 			//1B62 	1020
		STR 	33H 			//1B63 	10B3
		LCALL 	787H 			//1B64 	3787
		MOVLP 	19H 			//1B65 	0199
		BTSC 	35H, 7H 		//1B66 	2BB5
		DECR 	36H, 1H 		//1B67 	13B6
		LCALL 	3CCH 			//1B68 	33CC
		MOVLP 	19H 			//1B69 	0199
		LCALL 	730H 			//1B6A 	3730
		MOVLP 	19H 			//1B6B 	0199
		LCALL 	3B7H 			//1B6C 	33B7
		MOVLP 	19H 			//1B6D 	0199
		LDR 	3CH, 0H 			//1B6E 	183C
		STR 	5H 			//1B6F 	1085
		LDR 	3BH, 0H 			//1B70 	183B
		STR 	4H 			//1B71 	1084
		LDWI 	78H 			//1B72 	0078
		ADDWR 	4H, 1H 		//1B73 	1784
		LDWI 	A0H 			//1B74 	00A0
		LCALL 	6EBH 			//1B75 	36EB
		MOVLP 	19H 			//1B76 	0199
		LCALL 	534H 			//1B77 	3534
		MOVLP 	19H 			//1B78 	0199
		LCALL 	762H 			//1B79 	3762
		MOVLP 	19H 			//1B7A 	0199
		LCALL 	744H 			//1B7B 	3744
		MOVLP 	19H 			//1B7C 	0199
		LCALL 	40CH 			//1B7D 	340C
		MOVLP 	19H 			//1B7E 	0199
		LCALL 	771H 			//1B7F 	3771
		MOVLP 	19H 			//1B80 	0199
		LCALL 	3B7H 			//1B81 	33B7
		MOVLP 	19H 			//1B82 	0199
		LCALL 	74DH 			//1B83 	374D
		MOVLP 	19H 			//1B84 	0199
		LCALL 	6DBH 			//1B85 	36DB
		MOVLP 	19H 			//1B86 	0199
		LCALL 	7ADH 			//1B87 	37AD
		MOVLP 	19H 			//1B88 	0199
		LCALL 	534H 			//1B89 	3534
		MOVLP 	19H 			//1B8A 	0199
		LJUMP 	76AH 			//1B8B 	3F6A
		LCALL 	7F2H 			//1B8C 	37F2
		MOVLP 	19H 			//1B8D 	0199
		BTSS 	3H, 0H 			//1B8E 	2C03
		LJUMP 	3AFH 			//1B8F 	3BAF
		LCALL 	744H 			//1B90 	3744
		MOVLP 	19H 			//1B91 	0199
		LCALL 	40CH 			//1B92 	340C
		MOVLP 	19H 			//1B93 	0199
		LCALL 	771H 			//1B94 	3771
		MOVLP 	19H 			//1B95 	0199
		LCALL 	3B7H 			//1B96 	33B7
		MOVLP 	19H 			//1B97 	0199
		LCALL 	74DH 			//1B98 	374D
		MOVLP 	19H 			//1B99 	0199
		LCALL 	6DBH 			//1B9A 	36DB
		MOVLP 	19H 			//1B9B 	0199
		LCALL 	77FH 			//1B9C 	377F
		MOVLP 	19H 			//1B9D 	0199
		STR 	35H 			//1B9E 	10B5
		CLRF 	36H 			//1B9F 	11B6
		BTSC 	35H, 7H 		//1BA0 	2BB5
		DECR 	36H, 1H 		//1BA1 	13B6
		LCALL 	3CCH 			//1BA2 	33CC
		MOVLP 	19H 			//1BA3 	0199
		LCALL 	730H 			//1BA4 	3730
		MOVLP 	19H 			//1BA5 	0199
		LCALL 	3B7H 			//1BA6 	33B7
		MOVLP 	19H 			//1BA7 	0199
		LCALL 	795H 			//1BA8 	3795
		MOVLP 	19H 			//1BA9 	0199
		LCALL 	6EBH 			//1BAA 	36EB
		MOVLP 	19H 			//1BAB 	0199
		LCALL 	534H 			//1BAC 	3534
		MOVLP 	19H 			//1BAD 	0199
		LJUMP 	76AH 			//1BAE 	3F6A
		MOVLB 	0H 			//1BAF 	1020
		LCALL 	779H 			//1BB0 	3779
		MOVLP 	19H 			//1BB1 	0199
		LCALL 	3B7H 			//1BB2 	33B7
		MOVLP 	19H 			//1BB3 	0199
		LCALL 	74DH 			//1BB4 	374D
		MOVLP 	19H 			//1BB5 	0199
		LJUMP 	79CH 			//1BB6 	3F9C
		CLRF 	3FH 			//1BB7 	11BF
		CLRF 	40H 			//1BB8 	11C0
		BTSS 	3BH, 0H 		//1BB9 	2C3B
		LJUMP 	3BFH 			//1BBA 	3BBF
		LDR 	3DH, 0H 			//1BBB 	183D
		ADDWR 	3FH, 1H 		//1BBC 	17BF
		LDR 	3EH, 0H 			//1BBD 	183E
		ADDWFC 	40H, 1H 		//1BBE 	0DC0
		LSLF 	3DH, 1H 		//1BBF 	05BD
		RLR 	3EH, 1H 			//1BC0 	1DBE
		LSRF 	3CH, 1H 		//1BC1 	06BC
		RRR 	3BH, 1H 			//1BC2 	1CBB
		LDR 	3BH, 0H 			//1BC3 	183B
		IORWR 	3CH, 0H 		//1BC4 	143C
		BTSS 	3H, 2H 			//1BC5 	2D03
		LJUMP 	3B9H 			//1BC6 	3BB9
		LDR 	40H, 0H 			//1BC7 	1840
		STR 	3CH 			//1BC8 	10BC
		LDR 	3FH, 0H 			//1BC9 	183F
		STR 	3BH 			//1BCA 	10BB
		RET 					//1BCB 	1008
		CLRF 	38H 			//1BCC 	11B8
		BTSS 	34H, 7H 		//1BCD 	2FB4
		LJUMP 	3D6H 			//1BCE 	3BD6
		COMR 	33H, 1H 		//1BCF 	19B3
		COMR 	34H, 1H 		//1BD0 	19B4
		INCR 	33H, 1H 		//1BD1 	1AB3
		BTSC 	3H, 2H 			//1BD2 	2903
		INCR 	34H, 1H 		//1BD3 	1AB4
		CLRF 	38H 			//1BD4 	11B8
		INCR 	38H, 1H 		//1BD5 	1AB8
		BTSS 	36H, 7H 		//1BD6 	2FB6
		LJUMP 	3DFH 			//1BD7 	3BDF
		COMR 	35H, 1H 		//1BD8 	19B5
		COMR 	36H, 1H 		//1BD9 	19B6
		INCR 	35H, 1H 		//1BDA 	1AB5
		BTSC 	3H, 2H 			//1BDB 	2903
		INCR 	36H, 1H 		//1BDC 	1AB6
		LDWI 	1H 			//1BDD 	0001
		XORWR 	38H, 1H 		//1BDE 	16B8
		CLRF 	39H 			//1BDF 	11B9
		CLRF 	3AH 			//1BE0 	11BA
		LDR 	33H, 0H 			//1BE1 	1833
		IORWR 	34H, 0H 		//1BE2 	1434
		BTSC 	3H, 2H 			//1BE3 	2903
		LJUMP 	3FFH 			//1BE4 	3BFF
		CLRF 	37H 			//1BE5 	11B7
		INCR 	37H, 1H 		//1BE6 	1AB7
		BTSC 	34H, 7H 		//1BE7 	2BB4
		LJUMP 	3ECH 			//1BE8 	3BEC
		LSLF 	33H, 1H 		//1BE9 	05B3
		RLR 	34H, 1H 			//1BEA 	1DB4
		LJUMP 	3E6H 			//1BEB 	3BE6
		LSLF 	39H, 1H 		//1BEC 	05B9
		RLR 	3AH, 1H 			//1BED 	1DBA
		LDR 	34H, 0H 			//1BEE 	1834
		SUBWR 	36H, 0H 		//1BEF 	1236
		BTSS 	3H, 2H 			//1BF0 	2D03
		LJUMP 	3F4H 			//1BF1 	3BF4
		LDR 	33H, 0H 			//1BF2 	1833
		SUBWR 	35H, 0H 		//1BF3 	1235
		BTSS 	3H, 0H 			//1BF4 	2C03
		LJUMP 	3FBH 			//1BF5 	3BFB
		LDR 	33H, 0H 			//1BF6 	1833
		SUBWR 	35H, 1H 		//1BF7 	12B5
		LDR 	34H, 0H 			//1BF8 	1834
		SUBWFB 	36H, 1H 		//1BF9 	0BB6
		BSR 	39H, 0H 			//1BFA 	2439
		LSRF 	34H, 1H 		//1BFB 	06B4
		RRR 	33H, 1H 			//1BFC 	1CB3
		DECRSZ 	37H, 1H 		//1BFD 	1BB7
		LJUMP 	3ECH 			//1BFE 	3BEC
		LDR 	38H, 0H 			//1BFF 	1838
		BTSC 	3H, 2H 			//1C00 	2903
		LJUMP 	407H 			//1C01 	3C07
		COMR 	39H, 1H 		//1C02 	19B9
		COMR 	3AH, 1H 		//1C03 	19BA
		INCR 	39H, 1H 		//1C04 	1AB9
		BTSC 	3H, 2H 			//1C05 	2903
		INCR 	3AH, 1H 		//1C06 	1ABA
		LDR 	3AH, 0H 			//1C07 	183A
		STR 	34H 			//1C08 	10B4
		LDR 	39H, 0H 			//1C09 	1839
		STR 	33H 			//1C0A 	10B3
		RET 					//1C0B 	1008
		CLRF 	32H 			//1C0C 	11B2
		BTSS 	30H, 7H 		//1C0D 	2FB0
		LJUMP 	416H 			//1C0E 	3C16
		COMR 	2FH, 1H 		//1C0F 	19AF
		COMR 	30H, 1H 		//1C10 	19B0
		INCR 	2FH, 1H 		//1C11 	1AAF
		BTSC 	3H, 2H 			//1C12 	2903
		INCR 	30H, 1H 		//1C13 	1AB0
		CLRF 	32H 			//1C14 	11B2
		INCR 	32H, 1H 		//1C15 	1AB2
		BTSS 	2EH, 7H 		//1C16 	2FAE
		LJUMP 	41DH 			//1C17 	3C1D
		COMR 	2DH, 1H 		//1C18 	19AD
		COMR 	2EH, 1H 		//1C19 	19AE
		INCR 	2DH, 1H 		//1C1A 	1AAD
		BTSC 	3H, 2H 			//1C1B 	2903
		INCR 	2EH, 1H 		//1C1C 	1AAE
		LDR 	2DH, 0H 			//1C1D 	182D
		IORWR 	2EH, 0H 		//1C1E 	142E
		BTSC 	3H, 2H 			//1C1F 	2903
		LJUMP 	438H 			//1C20 	3C38
		CLRF 	31H 			//1C21 	11B1
		INCR 	31H, 1H 		//1C22 	1AB1
		BTSC 	2EH, 7H 		//1C23 	2BAE
		LJUMP 	428H 			//1C24 	3C28
		LSLF 	2DH, 1H 		//1C25 	05AD
		RLR 	2EH, 1H 			//1C26 	1DAE
		LJUMP 	422H 			//1C27 	3C22
		LDR 	2EH, 0H 			//1C28 	182E
		SUBWR 	30H, 0H 		//1C29 	1230
		BTSS 	3H, 2H 			//1C2A 	2D03
		LJUMP 	42EH 			//1C2B 	3C2E
		LDR 	2DH, 0H 			//1C2C 	182D
		SUBWR 	2FH, 0H 		//1C2D 	122F
		BTSS 	3H, 0H 			//1C2E 	2C03
		LJUMP 	434H 			//1C2F 	3C34
		LDR 	2DH, 0H 			//1C30 	182D
		SUBWR 	2FH, 1H 		//1C31 	12AF
		LDR 	2EH, 0H 			//1C32 	182E
		SUBWFB 	30H, 1H 		//1C33 	0BB0
		LSRF 	2EH, 1H 		//1C34 	06AE
		RRR 	2DH, 1H 			//1C35 	1CAD
		DECRSZ 	31H, 1H 		//1C36 	1BB1
		LJUMP 	428H 			//1C37 	3C28
		LDR 	32H, 0H 			//1C38 	1832
		BTSC 	3H, 2H 			//1C39 	2903
		LJUMP 	440H 			//1C3A 	3C40
		COMR 	2FH, 1H 		//1C3B 	19AF
		COMR 	30H, 1H 		//1C3C 	19B0
		INCR 	2FH, 1H 		//1C3D 	1AAF
		BTSC 	3H, 2H 			//1C3E 	2903
		INCR 	30H, 1H 		//1C3F 	1AB0
		LDR 	30H, 0H 			//1C40 	1830
		STR 	2EH 			//1C41 	10AE
		LDR 	2FH, 0H 			//1C42 	182F
		STR 	2DH 			//1C43 	10AD
		RET 					//1C44 	1008
		MOVLB 	0H 			//1C45 	1020
		STR 	33H 			//1C46 	10B3
		CLRF 	35H 			//1C47 	11B5
		LDR 	32H, 0H 			//1C48 	1832
		BTSC 	3H, 2H 			//1C49 	2903
		LJUMP 	45CH 			//1C4A 	3C5C
		CLRF 	34H 			//1C4B 	11B4
		INCR 	34H, 1H 		//1C4C 	1AB4
		BTSC 	32H, 7H 		//1C4D 	2BB2
		LJUMP 	451H 			//1C4E 	3C51
		LSLF 	32H, 1H 		//1C4F 	05B2
		LJUMP 	44CH 			//1C50 	3C4C
		LSLF 	35H, 1H 		//1C51 	05B5
		LDR 	32H, 0H 			//1C52 	1832
		SUBWR 	33H, 0H 		//1C53 	1233
		BTSS 	3H, 0H 			//1C54 	2C03
		LJUMP 	459H 			//1C55 	3C59
		LDR 	32H, 0H 			//1C56 	1832
		SUBWR 	33H, 1H 		//1C57 	12B3
		BSR 	35H, 0H 			//1C58 	2435
		LSRF 	32H, 1H 		//1C59 	06B2
		DECRSZ 	34H, 1H 		//1C5A 	1BB4
		LJUMP 	451H 			//1C5B 	3C51
		LDR 	35H, 0H 			//1C5C 	1835
		RET 					//1C5D 	1008
		MOVLB 	0H 			//1C5E 	1020
		STR 	2FH 			//1C5F 	10AF
		LDWI 	8H 			//1C60 	0008
		STR 	30H 			//1C61 	10B0
		CLRF 	31H 			//1C62 	11B1
		LDR 	2FH, 0H 			//1C63 	182F
		STR 	2EH 			//1C64 	10AE
		LDWI 	7H 			//1C65 	0007
		LSRF 	2EH, 1H 		//1C66 	06AE
		DECRSZ 	9H, 1H 		//1C67 	1B89
		LJUMP 	466H 			//1C68 	3C66
		LSLF 	31H, 0H 		//1C69 	0531
		IORWR 	2EH, 0H 		//1C6A 	142E
		STR 	31H 			//1C6B 	10B1
		LSLF 	2FH, 1H 		//1C6C 	05AF
		LDR 	2DH, 0H 			//1C6D 	182D
		SUBWR 	31H, 0H 		//1C6E 	1231
		BTSS 	3H, 0H 			//1C6F 	2C03
		LJUMP 	473H 			//1C70 	3C73
		LDR 	2DH, 0H 			//1C71 	182D
		SUBWR 	31H, 1H 		//1C72 	12B1
		DECRSZ 	30H, 1H 		//1C73 	1BB0
		LJUMP 	463H 			//1C74 	3C63
		LDR 	31H, 0H 			//1C75 	1831
		RET 					//1C76 	1008

		//;NFB.C: 500: int Vdd = GET_ADC_DATA(2);
		LDWI 	2H 			//1C77 	0002
		LCALL 	5A2H 			//1C78 	35A2
		MOVLP 	19H 			//1C79 	0199
		LDR 	47H, 0H 			//1C7A 	1847
		STR 	4BH 			//1C7B 	10CB
		LDR 	46H, 0H 			//1C7C 	1846
		STR 	4AH 			//1C7D 	10CA

		//;NFB.C: 501: bat = (float)Vdd*2/4096;
		LDWI 	80H 			//1C7E 	0080
		CLRF 	2CH 			//1C7F 	11AC
		STR 	2DH 			//1C80 	10AD
		LDWI 	45H 			//1C81 	0045
		STR 	2EH 			//1C82 	10AE
		LDWI 	40H 			//1C83 	0040
		CLRF 	20H 			//1C84 	11A0
		CLRF 	21H 			//1C85 	11A1
		STR 	22H 			//1C86 	10A2
		LDR 	4BH, 0H 			//1C87 	184B
		MOVLB 	0H 			//1C88 	1020
		STR 	3CH 			//1C89 	10BC
		MOVLB 	1H 			//1C8A 	1021
		LDR 	4AH, 0H 			//1C8B 	184A
		MOVLB 	0H 			//1C8C 	1020
		STR 	3BH 			//1C8D 	10BB
		LCALL 	5BBH 			//1C8E 	35BB
		MOVLP 	19H 			//1C8F 	0199
		LCALL 	738H 			//1C90 	3738
		MOVLP 	19H 			//1C91 	0199
		LCALL 	534H 			//1C92 	3534
		MOVLP 	2H 			//1C93 	0182
		LCALL 	205H 			//1C94 	3205
		MOVLP 	19H 			//1C95 	0199
		LCALL 	5D6H 			//1C96 	35D6
		MOVLP 	19H 			//1C97 	0199

		//;NFB.C: 502: bat = bat*2;
		LCALL 	6F4H 			//1C98 	36F4
		MOVLP 	19H 			//1C99 	0199
		LCALL 	534H 			//1C9A 	3534
		MOVLP 	19H 			//1C9B 	0199

		//;NFB.C: 503: if(bat>=3.9){
		LCALL 	711H 			//1C9C 	3711
		MOVLP 	DH 			//1C9D 	018D
		LCALL 	506H 			//1C9E 	3506
		MOVLP 	19H 			//1C9F 	0199
		BTSS 	3H, 0H 			//1CA0 	2C03
		LJUMP 	4A6H 			//1CA1 	3CA6

		//;NFB.C: 504: PB3 = 0;
		BCR 	DH, 3H 			//1CA2 	218D

		//;NFB.C: 505: PB2 = 0;
		BCR 	DH, 2H 			//1CA3 	210D

		//;NFB.C: 506: PA1 = 0;
		BCR 	CH, 1H 			//1CA4 	208C

		//;NFB.C: 507: } else if(bat>=3.5){
		RET 					//1CA5 	1008
		LCALL 	754H 			//1CA6 	3754
		MOVLP 	19H 			//1CA7 	0199
		LCALL 	7D7H 			//1CA8 	37D7
		MOVLP 	DH 			//1CA9 	018D
		LCALL 	506H 			//1CAA 	3506
		MOVLP 	19H 			//1CAB 	0199
		BTSS 	3H, 0H 			//1CAC 	2C03
		LJUMP 	4B2H 			//1CAD 	3CB2

		//;NFB.C: 508: PB3 = 1;
		BSR 	DH, 3H 			//1CAE 	258D

		//;NFB.C: 509: PB2 = 0;
		BCR 	DH, 2H 			//1CAF 	210D

		//;NFB.C: 510: PA1 = 0;
		BCR 	CH, 1H 			//1CB0 	208C

		//;NFB.C: 511: } else if(bat>=3.1){
		RET 					//1CB1 	1008
		LCALL 	754H 			//1CB2 	3754
		MOVLP 	19H 			//1CB3 	0199
		LCALL 	7C9H 			//1CB4 	37C9
		MOVLP 	DH 			//1CB5 	018D
		LCALL 	506H 			//1CB6 	3506
		MOVLP 	19H 			//1CB7 	0199
		BTSS 	3H, 0H 			//1CB8 	2C03
		LJUMP 	4BEH 			//1CB9 	3CBE

		//;NFB.C: 512: PB3 = 1;
		BSR 	DH, 3H 			//1CBA 	258D

		//;NFB.C: 513: PB2 = 1;
		BSR 	DH, 2H 			//1CBB 	250D

		//;NFB.C: 514: PA1 = 0;
		BCR 	CH, 1H 			//1CBC 	208C

		//;NFB.C: 515: } else{
		RET 					//1CBD 	1008

		//;NFB.C: 516: PB3 = 1;
		BSR 	DH, 3H 			//1CBE 	258D

		//;NFB.C: 517: PB2 = 1;
		BSR 	DH, 2H 			//1CBF 	250D

		//;NFB.C: 518: PA1 = 1;
		BSR 	CH, 1H 			//1CC0 	248C
		RET 					//1CC1 	1008

		//;NFB.C: 524: int Vdd = GET_ADC_DATA(2);
		LDWI 	2H 			//1CC2 	0002
		LCALL 	5A2H 			//1CC3 	35A2
		MOVLP 	19H 			//1CC4 	0199
		LDR 	47H, 0H 			//1CC5 	1847
		STR 	4EH 			//1CC6 	10CE
		LDR 	46H, 0H 			//1CC7 	1846
		STR 	4DH 			//1CC8 	10CD

		//;NFB.C: 525: for(int i=0;i<4;i++){
		CLRF 	4FH 			//1CC9 	11CF
		CLRF 	50H 			//1CCA 	11D0

		//;NFB.C: 526: Vdd = (Vdd+GET_ADC_DATA(2))/2;
		LDWI 	2H 			//1CCB 	0002
		LCALL 	5A2H 			//1CCC 	35A2
		MOVLP 	19H 			//1CCD 	0199
		LDR 	4DH, 0H 			//1CCE 	184D
		ADDWR 	46H, 0H 		//1CCF 	1746
		STR 	4BH 			//1CD0 	10CB
		LDR 	4EH, 0H 			//1CD1 	184E
		ADDWFC 	47H, 0H 		//1CD2 	0D47
		STR 	4CH 			//1CD3 	10CC
		LSRF 	4CH, 1H 		//1CD4 	06CC
		RRR 	4BH, 1H 			//1CD5 	1CCB
		LDR 	4BH, 0H 			//1CD6 	184B
		STR 	4DH 			//1CD7 	10CD
		LDR 	4CH, 0H 			//1CD8 	184C
		STR 	4EH 			//1CD9 	10CE
		INCR 	4FH, 1H 		//1CDA 	1ACF
		BTSC 	3H, 2H 			//1CDB 	2903
		INCR 	50H, 1H 		//1CDC 	1AD0
		LDR 	50H, 0H 			//1CDD 	1850
		XORWI 	80H 			//1CDE 	0A80
		STR 	4BH 			//1CDF 	10CB
		LDWI 	80H 			//1CE0 	0080
		SUBWR 	4BH, 0H 		//1CE1 	124B
		BTSS 	3H, 2H 			//1CE2 	2D03
		LJUMP 	4E6H 			//1CE3 	3CE6
		LDWI 	4H 			//1CE4 	0004
		SUBWR 	4FH, 0H 		//1CE5 	124F
		BTSS 	3H, 0H 			//1CE6 	2C03
		LJUMP 	4CBH 			//1CE7 	3CCB

		//;NFB.C: 527: }
		//;NFB.C: 528: bat = (float)Vdd*2/4096;
		MOVLP 	17H 			//1CE8 	0197
		LCALL 	70AH 			//1CE9 	370A
		MOVLP 	19H 			//1CEA 	0199
		LDR 	4EH, 0H 			//1CEB 	184E
		MOVLB 	0H 			//1CEC 	1020
		STR 	3CH 			//1CED 	10BC
		MOVLB 	1H 			//1CEE 	1021
		LDR 	4DH, 0H 			//1CEF 	184D
		MOVLB 	0H 			//1CF0 	1020
		STR 	3BH 			//1CF1 	10BB
		LCALL 	5BBH 			//1CF2 	35BB
		MOVLP 	19H 			//1CF3 	0199
		LCALL 	738H 			//1CF4 	3738
		MOVLP 	19H 			//1CF5 	0199
		LCALL 	534H 			//1CF6 	3534
		MOVLP 	2H 			//1CF7 	0182
		LCALL 	205H 			//1CF8 	3205
		MOVLP 	19H 			//1CF9 	0199
		LCALL 	5D6H 			//1CFA 	35D6
		MOVLP 	19H 			//1CFB 	0199

		//;NFB.C: 529: bat = bat*2;
		LCALL 	6F4H 			//1CFC 	36F4
		MOVLP 	19H 			//1CFD 	0199
		LCALL 	534H 			//1CFE 	3534
		MOVLP 	19H 			//1CFF 	0199

		//;NFB.C: 530: if(bat>=3.9){
		LCALL 	711H 			//1D00 	3711
		MOVLP 	DH 			//1D01 	018D
		LCALL 	506H 			//1D02 	3506
		MOVLP 	19H 			//1D03 	0199
		BTSS 	3H, 0H 			//1D04 	2C03
		LJUMP 	510H 			//1D05 	3D10

		//;NFB.C: 531: PB3 = 0;
		BCR 	DH, 3H 			//1D06 	218D

		//;NFB.C: 532: PB2 = 0;
		BCR 	DH, 2H 			//1D07 	210D

		//;NFB.C: 533: PA1 = 0;
		BCR 	CH, 1H 			//1D08 	208C

		//;NFB.C: 534: if(PB5){
		BTSS 	DH, 5H 			//1D09 	2E8D
		LJUMP 	50DH 			//1D0A 	3D0D

		//;NFB.C: 535: PB7 = 0;
		BCR 	DH, 7H 			//1D0B 	238D

		//;NFB.C: 536: } else{
		LJUMP 	530H 			//1D0C 	3D30

		//;NFB.C: 537: PB7 = ~PB7;
		LDWI 	80H 			//1D0D 	0080
		XORWR 	DH, 1H 		//1D0E 	168D
		LJUMP 	530H 			//1D0F 	3D30
		LCALL 	754H 			//1D10 	3754
		MOVLP 	19H 			//1D11 	0199
		LCALL 	7D7H 			//1D12 	37D7
		MOVLP 	DH 			//1D13 	018D
		LCALL 	506H 			//1D14 	3506
		MOVLP 	19H 			//1D15 	0199
		BTSS 	3H, 0H 			//1D16 	2C03
		LJUMP 	51EH 			//1D17 	3D1E

		//;NFB.C: 540: PB7 = 1;
		BSR 	DH, 7H 			//1D18 	278D

		//;NFB.C: 541: PB3 = ~PB3;
		LDWI 	8H 			//1D19 	0008
		XORWR 	DH, 1H 		//1D1A 	168D

		//;NFB.C: 542: PB2 = 0;
		BCR 	DH, 2H 			//1D1B 	210D

		//;NFB.C: 543: PA1 = 0;
		BCR 	CH, 1H 			//1D1C 	208C

		//;NFB.C: 544: } else if(bat>=3.1){
		LJUMP 	530H 			//1D1D 	3D30
		LCALL 	754H 			//1D1E 	3754
		MOVLP 	19H 			//1D1F 	0199
		LCALL 	7C9H 			//1D20 	37C9
		MOVLP 	DH 			//1D21 	018D
		LCALL 	506H 			//1D22 	3506
		MOVLP 	19H 			//1D23 	0199
		BTSS 	3H, 0H 			//1D24 	2C03
		LJUMP 	52BH 			//1D25 	3D2B

		//;NFB.C: 545: PB7 = 1;
		BSR 	DH, 7H 			//1D26 	278D

		//;NFB.C: 546: PB3 = 1;
		BSR 	DH, 3H 			//1D27 	258D

		//;NFB.C: 547: PB2 = ~PB2;
		LDWI 	4H 			//1D28 	0004
		XORWR 	DH, 1H 		//1D29 	168D
		LJUMP 	51CH 			//1D2A 	3D1C

		//;NFB.C: 550: PB7 = 1;
		BSR 	DH, 7H 			//1D2B 	278D

		//;NFB.C: 551: PB3 = 1;
		BSR 	DH, 3H 			//1D2C 	258D

		//;NFB.C: 552: PB2 = 1;
		BSR 	DH, 2H 			//1D2D 	250D

		//;NFB.C: 553: PA1 = ~PA1;
		LDWI 	2H 			//1D2E 	0002
		XORWR 	CH, 1H 		//1D2F 	168C

		//;NFB.C: 554: }
		//;NFB.C: 555: DelayMs(500);
		MOVLP 	2H 			//1D30 	0182
		LCALL 	297H 			//1D31 	3297
		MOVLP 	19H 			//1D32 	0199
		LJUMP 	6B7H 			//1D33 	3EB7
		LDR 	20H, 0H 			//1D34 	1820
		MOVLB 	0H 			//1D35 	1020
		STR 	53H 			//1D36 	10D3
		MOVLB 	1H 			//1D37 	1021
		LDR 	21H, 0H 			//1D38 	1821
		MOVLB 	0H 			//1D39 	1020
		STR 	54H 			//1D3A 	10D4
		MOVLB 	1H 			//1D3B 	1021
		LDR 	22H, 0H 			//1D3C 	1822
		LCALL 	7B4H 			//1D3D 	37B4
		MOVLP 	19H 			//1D3E 	0199
		STR 	26H 			//1D3F 	10A6
		LDR 	26H, 0H 			//1D40 	1826
		BTSS 	3H, 2H 			//1D41 	2D03
		LJUMP 	544H 			//1D42 	3D44
		LJUMP 	7F7H 			//1D43 	3FF7
		LDR 	23H, 0H 			//1D44 	1823
		MOVLB 	0H 			//1D45 	1020
		STR 	53H 			//1D46 	10D3
		MOVLB 	1H 			//1D47 	1021
		LDR 	24H, 0H 			//1D48 	1824
		MOVLB 	0H 			//1D49 	1020
		STR 	54H 			//1D4A 	10D4
		MOVLB 	1H 			//1D4B 	1021
		LDR 	25H, 0H 			//1D4C 	1825
		LCALL 	7B4H 			//1D4D 	37B4
		MOVLP 	19H 			//1D4E 	0199
		STR 	2BH 			//1D4F 	10AB
		LDR 	2BH, 0H 			//1D50 	182B
		BTSS 	3H, 2H 			//1D51 	2D03
		LJUMP 	554H 			//1D52 	3D54
		LJUMP 	7F7H 			//1D53 	3FF7
		LDR 	2BH, 0H 			//1D54 	182B
		ADDWI 	7BH 			//1D55 	0E7B
		ADDWR 	26H, 1H 		//1D56 	17A6
		LDR 	22H, 0H 			//1D57 	1822
		STR 	2BH 			//1D58 	10AB
		LDR 	25H, 0H 			//1D59 	1825
		XORWR 	2BH, 1H 		//1D5A 	16AB
		LDWI 	80H 			//1D5B 	0080
		ANDWR 	2BH, 1H 		//1D5C 	15AB
		LDWI 	FFH 			//1D5D 	00FF
		BSR 	21H, 7H 			//1D5E 	27A1
		BSR 	24H, 7H 			//1D5F 	27A4
		ANDWR 	23H, 1H 		//1D60 	15A3
		ANDWR 	24H, 1H 		//1D61 	15A4
		LDWI 	7H 			//1D62 	0007
		CLRF 	25H 			//1D63 	11A5
		CLRF 	27H 			//1D64 	11A7
		CLRF 	28H 			//1D65 	11A8
		CLRF 	29H 			//1D66 	11A9
		STR 	2AH 			//1D67 	10AA
		BTSS 	20H, 0H 		//1D68 	2C20
		LJUMP 	56CH 			//1D69 	3D6C
		LCALL 	7D0H 			//1D6A 	37D0
		MOVLP 	19H 			//1D6B 	0199
		LSRF 	22H, 1H 		//1D6C 	06A2
		RRR 	21H, 1H 			//1D6D 	1CA1
		RRR 	20H, 1H 			//1D6E 	1CA0
		LSLF 	23H, 1H 		//1D6F 	05A3
		RLR 	24H, 1H 			//1D70 	1DA4
		RLR 	25H, 1H 			//1D71 	1DA5
		DECRSZ 	2AH, 1H 		//1D72 	1BAA
		LJUMP 	568H 			//1D73 	3D68
		LDWI 	9H 			//1D74 	0009
		STR 	2AH 			//1D75 	10AA
		BTSS 	20H, 0H 		//1D76 	2C20
		LJUMP 	57AH 			//1D77 	3D7A
		LCALL 	7D0H 			//1D78 	37D0
		MOVLP 	19H 			//1D79 	0199
		LSRF 	22H, 1H 		//1D7A 	06A2
		RRR 	21H, 1H 			//1D7B 	1CA1
		RRR 	20H, 1H 			//1D7C 	1CA0
		LSRF 	29H, 1H 		//1D7D 	06A9
		RRR 	28H, 1H 			//1D7E 	1CA8
		RRR 	27H, 1H 			//1D7F 	1CA7
		DECRSZ 	2AH, 1H 		//1D80 	1BAA
		LJUMP 	576H 			//1D81 	3D76
		LDR 	27H, 0H 			//1D82 	1827
		MOVLB 	0H 			//1D83 	1020
		STR 	2DH 			//1D84 	10AD
		MOVLB 	1H 			//1D85 	1021
		LDR 	28H, 0H 			//1D86 	1828
		MOVLB 	0H 			//1D87 	1020
		STR 	2EH 			//1D88 	10AE
		MOVLB 	1H 			//1D89 	1021
		LDR 	29H, 0H 			//1D8A 	1829
		MOVLB 	0H 			//1D8B 	1020
		STR 	2FH 			//1D8C 	10AF
		MOVLB 	1H 			//1D8D 	1021
		LDR 	26H, 0H 			//1D8E 	1826
		MOVLB 	0H 			//1D8F 	1020
		STR 	30H 			//1D90 	10B0
		MOVLB 	1H 			//1D91 	1021
		LDR 	2BH, 0H 			//1D92 	182B
		MOVLB 	0H 			//1D93 	1020
		STR 	31H 			//1D94 	10B1
		LCALL 	640H 			//1D95 	3640
		LDR 	2DH, 0H 			//1D96 	182D
		MOVLB 	1H 			//1D97 	1021
		STR 	20H 			//1D98 	10A0
		MOVLB 	0H 			//1D99 	1020
		LDR 	2EH, 0H 			//1D9A 	182E
		MOVLB 	1H 			//1D9B 	1021
		STR 	21H 			//1D9C 	10A1
		MOVLB 	0H 			//1D9D 	1020
		LDR 	2FH, 0H 			//1D9E 	182F
		MOVLB 	1H 			//1D9F 	1021
		STR 	22H 			//1DA0 	10A2
		RET 					//1DA1 	1008
		MOVLB 	1H 			//1DA2 	1021
		STR 	49H 			//1DA3 	10C9

		//;NFB.C: 347: ADCON0&=0B00001111;
		LDWI 	FH 			//1DA4 	000F
		ANDWR 	1DH, 1H 		//1DA5 	159D

		//;NFB.C: 348: ADCON0|=adcChannel<<4;
		SWAPR 	49H, 0H 		//1DA6 	1E49
		ANDWI 	F0H 			//1DA7 	09F0
		IORWR 	1DH, 1H 		//1DA8 	149D

		//;NFB.C: 349: DelayUs(100);
		LDWI 	64H 			//1DA9 	0064
		STR 	41H 			//1DAA 	10C1
		CLRF 	42H 			//1DAB 	11C2
		LCALL 	67EH 			//1DAC 	367E
		MOVLP 	19H 			//1DAD 	0199

		//;NFB.C: 350: GO=1;
		MOVLB 	1H 			//1DAE 	1021
		BSR 	1DH, 1H 			//1DAF 	249D

		//;NFB.C: 351: __nop();
		NOP 					//1DB0 	1000

		//;NFB.C: 352: __nop();
		NOP 					//1DB1 	1000

		//;NFB.C: 353: while(GO);
		MOVLB 	1H 			//1DB2 	1021
		BTSC 	1DH, 1H 		//1DB3 	289D
		LJUMP 	5B2H 			//1DB4 	3DB2

		//;NFB.C: 355: return (unsigned int)(ADRESH<<8|ADRESL);
		LDR 	1CH, 0H 			//1DB5 	181C
		STR 	47H 			//1DB6 	10C7
		CLRF 	46H 			//1DB7 	11C6
		LDR 	1BH, 0H 			//1DB8 	181B
		IORWR 	46H, 1H 		//1DB9 	14C6
		RET 					//1DBA 	1008
		CLRF 	3EH 			//1DBB 	11BE
		BTSS 	3CH, 7H 		//1DBC 	2FBC
		LJUMP 	5C5H 			//1DBD 	3DC5
		COMR 	3BH, 1H 		//1DBE 	19BB
		COMR 	3CH, 1H 		//1DBF 	19BC
		INCR 	3BH, 1H 		//1DC0 	1ABB
		BTSC 	3H, 2H 			//1DC1 	2903
		INCR 	3CH, 1H 		//1DC2 	1ABC
		CLRF 	3EH 			//1DC3 	11BE
		INCR 	3EH, 1H 		//1DC4 	1ABE
		LDR 	3BH, 0H 			//1DC5 	183B
		STR 	2DH 			//1DC6 	10AD
		LDR 	3CH, 0H 			//1DC7 	183C
		STR 	2EH 			//1DC8 	10AE
		LDWI 	8EH 			//1DC9 	008E
		CLRF 	2FH 			//1DCA 	11AF
		STR 	30H 			//1DCB 	10B0
		LDR 	3EH, 0H 			//1DCC 	183E
		STR 	31H 			//1DCD 	10B1
		LCALL 	640H 			//1DCE 	3640
		LDR 	2DH, 0H 			//1DCF 	182D
		STR 	3BH 			//1DD0 	10BB
		LDR 	2EH, 0H 			//1DD1 	182E
		STR 	3CH 			//1DD2 	10BC
		LDR 	2FH, 0H 			//1DD3 	182F
		STR 	3DH 			//1DD4 	10BD
		RET 					//1DD5 	1008
		LDR 	2FH, 0H 			//1DD6 	182F
		STR 	32H 			//1DD7 	10B2
		LDR 	30H, 0H 			//1DD8 	1830
		STR 	33H 			//1DD9 	10B3
		LDR 	31H, 0H 			//1DDA 	1831
		STR 	34H 			//1DDB 	10B4
		BCR 	3H, 0H 			//1DDC 	2003
		RLR 	33H, 0H 			//1DDD 	1D33
		RLR 	34H, 0H 			//1DDE 	1D34
		STR 	36H 			//1DDF 	10B6
		LDR 	36H, 0H 			//1DE0 	1836
		BTSS 	3H, 2H 			//1DE1 	2D03
		LJUMP 	5E4H 			//1DE2 	3DE4
		LJUMP 	7EEH 			//1DE3 	3FEE
		LDR 	2CH, 0H 			//1DE4 	182C
		STR 	32H 			//1DE5 	10B2
		LDR 	2DH, 0H 			//1DE6 	182D
		STR 	33H 			//1DE7 	10B3
		LDR 	2EH, 0H 			//1DE8 	182E
		STR 	34H 			//1DE9 	10B4
		BCR 	3H, 0H 			//1DEA 	2003
		RLR 	33H, 0H 			//1DEB 	1D33
		RLR 	34H, 0H 			//1DEC 	1D34
		STR 	3AH 			//1DED 	10BA
		LDR 	3AH, 0H 			//1DEE 	183A
		BTSS 	3H, 2H 			//1DEF 	2D03
		LJUMP 	5F2H 			//1DF0 	3DF2
		LJUMP 	7EEH 			//1DF1 	3FEE
		LDWI 	89H 			//1DF2 	0089
		CLRF 	37H 			//1DF3 	11B7
		CLRF 	38H 			//1DF4 	11B8
		CLRF 	39H 			//1DF5 	11B9
		ADDWR 	3AH, 0H 		//1DF6 	173A
		STR 	32H 			//1DF7 	10B2
		SUBWR 	36H, 1H 		//1DF8 	12B6
		LDR 	31H, 0H 			//1DF9 	1831
		STR 	3AH 			//1DFA 	10BA
		LDR 	2EH, 0H 			//1DFB 	182E
		XORWR 	3AH, 1H 		//1DFC 	16BA
		LDWI 	80H 			//1DFD 	0080
		ANDWR 	3AH, 1H 		//1DFE 	15BA
		LDWI 	18H 			//1DFF 	0018
		BSR 	30H, 7H 			//1E00 	27B0
		CLRF 	31H 			//1E01 	11B1
		BSR 	2DH, 7H 			//1E02 	27AD
		CLRF 	2EH 			//1E03 	11AE
		STR 	35H 			//1E04 	10B5
		LSLF 	37H, 1H 		//1E05 	05B7
		RLR 	38H, 1H 			//1E06 	1DB8
		RLR 	39H, 1H 			//1E07 	1DB9
		LDR 	2EH, 0H 			//1E08 	182E
		SUBWR 	31H, 0H 		//1E09 	1231
		BTSS 	3H, 2H 			//1E0A 	2D03
		LJUMP 	612H 			//1E0B 	3E12
		LDR 	2DH, 0H 			//1E0C 	182D
		SUBWR 	30H, 0H 		//1E0D 	1230
		BTSS 	3H, 2H 			//1E0E 	2D03
		LJUMP 	612H 			//1E0F 	3E12
		LDR 	2CH, 0H 			//1E10 	182C
		SUBWR 	2FH, 0H 		//1E11 	122F
		BTSS 	3H, 0H 			//1E12 	2C03
		LJUMP 	61BH 			//1E13 	3E1B
		LDR 	2CH, 0H 			//1E14 	182C
		SUBWR 	2FH, 1H 		//1E15 	12AF
		LDR 	2DH, 0H 			//1E16 	182D
		SUBWFB 	30H, 1H 		//1E17 	0BB0
		LDR 	2EH, 0H 			//1E18 	182E
		SUBWFB 	31H, 1H 		//1E19 	0BB1
		BSR 	37H, 0H 			//1E1A 	2437
		LSLF 	2FH, 1H 		//1E1B 	05AF
		RLR 	30H, 1H 			//1E1C 	1DB0
		RLR 	31H, 1H 			//1E1D 	1DB1
		DECRSZ 	35H, 1H 		//1E1E 	1BB5
		LJUMP 	605H 			//1E1F 	3E05
		LDR 	37H, 0H 			//1E20 	1837
		MOVLB 	0H 			//1E21 	1020
		STR 	2DH 			//1E22 	10AD
		MOVLB 	1H 			//1E23 	1021
		LDR 	38H, 0H 			//1E24 	1838
		MOVLB 	0H 			//1E25 	1020
		STR 	2EH 			//1E26 	10AE
		MOVLB 	1H 			//1E27 	1021
		LDR 	39H, 0H 			//1E28 	1839
		MOVLB 	0H 			//1E29 	1020
		STR 	2FH 			//1E2A 	10AF
		MOVLB 	1H 			//1E2B 	1021
		LDR 	36H, 0H 			//1E2C 	1836
		MOVLB 	0H 			//1E2D 	1020
		STR 	30H 			//1E2E 	10B0
		MOVLB 	1H 			//1E2F 	1021
		LDR 	3AH, 0H 			//1E30 	183A
		MOVLB 	0H 			//1E31 	1020
		STR 	31H 			//1E32 	10B1
		LCALL 	640H 			//1E33 	3640
		LDR 	2DH, 0H 			//1E34 	182D
		MOVLB 	1H 			//1E35 	1021
		STR 	2CH 			//1E36 	10AC
		MOVLB 	0H 			//1E37 	1020
		LDR 	2EH, 0H 			//1E38 	182E
		MOVLB 	1H 			//1E39 	1021
		STR 	2DH 			//1E3A 	10AD
		MOVLB 	0H 			//1E3B 	1020
		LDR 	2FH, 0H 			//1E3C 	182F
		MOVLB 	1H 			//1E3D 	1021
		STR 	2EH 			//1E3E 	10AE
		RET 					//1E3F 	1008
		LDR 	30H, 0H 			//1E40 	1830
		BTSC 	3H, 2H 			//1E41 	2903
		LJUMP 	648H 			//1E42 	3E48
		LDR 	2FH, 0H 			//1E43 	182F
		IORWR 	2EH, 0H 		//1E44 	142E
		IORWR 	2DH, 0H 		//1E45 	142D
		BTSS 	3H, 2H 			//1E46 	2D03
		LJUMP 	650H 			//1E47 	3E50
		CLRF 	2DH 			//1E48 	11AD
		CLRF 	2EH 			//1E49 	11AE
		CLRF 	2FH 			//1E4A 	11AF
		RET 					//1E4B 	1008
		INCR 	30H, 1H 		//1E4C 	1AB0
		LSRF 	2FH, 1H 		//1E4D 	06AF
		RRR 	2EH, 1H 			//1E4E 	1CAE
		RRR 	2DH, 1H 			//1E4F 	1CAD
		LDWI 	FEH 			//1E50 	00FE
		ANDWR 	2FH, 0H 		//1E51 	152F
		BTSC 	3H, 2H 			//1E52 	2903
		LJUMP 	65EH 			//1E53 	3E5E
		LJUMP 	64CH 			//1E54 	3E4C
		INCR 	30H, 1H 		//1E55 	1AB0
		INCR 	2DH, 1H 		//1E56 	1AAD
		BTSC 	3H, 2H 			//1E57 	2903
		INCR 	2EH, 1H 		//1E58 	1AAE
		BTSC 	3H, 2H 			//1E59 	2903
		INCR 	2FH, 1H 		//1E5A 	1AAF
		LSRF 	2FH, 1H 		//1E5B 	06AF
		RRR 	2EH, 1H 			//1E5C 	1CAE
		RRR 	2DH, 1H 			//1E5D 	1CAD
		LDWI 	FFH 			//1E5E 	00FF
		ANDWR 	2FH, 0H 		//1E5F 	152F
		BTSC 	3H, 2H 			//1E60 	2903
		LJUMP 	66BH 			//1E61 	3E6B
		LJUMP 	655H 			//1E62 	3E55
		LDWI 	2H 			//1E63 	0002
		SUBWR 	30H, 0H 		//1E64 	1230
		BTSS 	3H, 0H 			//1E65 	2C03
		LJUMP 	66DH 			//1E66 	3E6D
		DECR 	30H, 1H 		//1E67 	13B0
		LSLF 	2DH, 1H 		//1E68 	05AD
		RLR 	2EH, 1H 			//1E69 	1DAE
		RLR 	2FH, 1H 			//1E6A 	1DAF
		BTSS 	2EH, 7H 		//1E6B 	2FAE
		LJUMP 	663H 			//1E6C 	3E63
		BTSS 	30H, 0H 		//1E6D 	2C30
		BCR 	2EH, 7H 			//1E6E 	23AE
		LSRF 	30H, 1H 		//1E6F 	06B0
		LDR 	30H, 0H 			//1E70 	1830
		STR 	34H 			//1E71 	10B4
		CLRF 	33H 			//1E72 	11B3
		CLRF 	32H 			//1E73 	11B2
		LDR 	32H, 0H 			//1E74 	1832
		IORWR 	2DH, 1H 		//1E75 	14AD
		LDR 	33H, 0H 			//1E76 	1833
		IORWR 	2EH, 1H 		//1E77 	14AE
		LDR 	34H, 0H 			//1E78 	1834
		IORWR 	2FH, 1H 		//1E79 	14AF
		LDR 	31H, 0H 			//1E7A 	1831
		BTSS 	3H, 2H 			//1E7B 	2D03
		BSR 	2FH, 7H 			//1E7C 	27AF
		RET 					//1E7D 	1008

		//;NFB.C: 176: Time = (int)(Time/2*0.8);
		LDR 	42H, 0H 			//1E7E 	1842
		MOVLB 	0H 			//1E7F 	1020
		STR 	36H 			//1E80 	10B6
		MOVLB 	1H 			//1E81 	1021
		LDR 	41H, 0H 			//1E82 	1841
		MOVLB 	0H 			//1E83 	1020
		STR 	35H 			//1E84 	10B5
		LDWI 	2H 			//1E85 	0002
		STR 	33H 			//1E86 	10B3
		CLRF 	34H 			//1E87 	11B4
		LCALL 	3CCH 			//1E88 	33CC
		MOVLP 	19H 			//1E89 	0199
		LDR 	34H, 0H 			//1E8A 	1834
		STR 	3CH 			//1E8B 	10BC
		LDR 	33H, 0H 			//1E8C 	1833
		STR 	3BH 			//1E8D 	10BB
		LCALL 	5BBH 			//1E8E 	35BB
		MOVLP 	19H 			//1E8F 	0199
		LCALL 	738H 			//1E90 	3738
		MOVLP 	19H 			//1E91 	0199
		LDWI 	CDH 			//1E92 	00CD
		STR 	20H 			//1E93 	10A0
		LDWI 	4CH 			//1E94 	004C
		STR 	21H 			//1E95 	10A1
		LDWI 	3FH 			//1E96 	003F
		STR 	22H 			//1E97 	10A2
		LCALL 	534H 			//1E98 	3534
		MOVLP 	EH 			//1E99 	018E
		LCALL 	6ECH 			//1E9A 	36EC
		MOVLP 	19H 			//1E9B 	0199
		MOVLP 	DH 			//1E9C 	018D
		LCALL 	568H 			//1E9D 	3568
		MOVLP 	19H 			//1E9E 	0199
		LDR 	35H, 0H 			//1E9F 	1835
		STR 	42H 			//1EA0 	10C2
		LDR 	34H, 0H 			//1EA1 	1834
		STR 	41H 			//1EA2 	10C1

		//;NFB.C: 177: for(int a=0;a<Time;a++)
		CLRF 	44H 			//1EA3 	11C4
		CLRF 	45H 			//1EA4 	11C5
		LDR 	45H, 0H 			//1EA5 	1845
		XORWI 	80H 			//1EA6 	0A80
		STR 	43H 			//1EA7 	10C3
		LDR 	42H, 0H 			//1EA8 	1842
		XORWI 	80H 			//1EA9 	0A80
		SUBWR 	43H, 0H 		//1EAA 	1243
		BTSS 	3H, 2H 			//1EAB 	2D03
		LJUMP 	6AFH 			//1EAC 	3EAF
		LDR 	41H, 0H 			//1EAD 	1841
		SUBWR 	44H, 0H 		//1EAE 	1244
		BTSC 	3H, 0H 			//1EAF 	2803
		RET 					//1EB0 	1008

		//;NFB.C: 178: {
		//;NFB.C: 179: __nop();
		NOP 					//1EB1 	1000
		MOVLB 	1H 			//1EB2 	1021
		INCR 	44H, 1H 		//1EB3 	1AC4
		BTSC 	3H, 2H 			//1EB4 	2903
		INCR 	45H, 1H 		//1EB5 	1AC5
		LJUMP 	6A5H 			//1EB6 	3EA5

		//;NFB.C: 190: for(int a=0;a<Time;a++)
		CLRF 	49H 			//1EB7 	11C9
		CLRF 	4AH 			//1EB8 	11CA
		LDR 	4AH, 0H 			//1EB9 	184A
		XORWI 	80H 			//1EBA 	0A80
		STR 	48H 			//1EBB 	10C8
		LDR 	47H, 0H 			//1EBC 	1847
		XORWI 	80H 			//1EBD 	0A80
		SUBWR 	48H, 0H 		//1EBE 	1248
		BTSS 	3H, 2H 			//1EBF 	2D03
		LJUMP 	6C3H 			//1EC0 	3EC3
		LDR 	46H, 0H 			//1EC1 	1846
		SUBWR 	49H, 0H 		//1EC2 	1249
		BTSC 	3H, 0H 			//1EC3 	2803
		RET 					//1EC4 	1008

		//;NFB.C: 191: {
		//;NFB.C: 192: DelayUs(1000);
		LDWI 	E8H 			//1EC5 	00E8
		MOVLB 	1H 			//1EC6 	1021
		STR 	41H 			//1EC7 	10C1
		LDWI 	3H 			//1EC8 	0003
		STR 	42H 			//1EC9 	10C2
		LCALL 	67EH 			//1ECA 	367E
		MOVLP 	19H 			//1ECB 	0199
		MOVLB 	1H 			//1ECC 	1021
		INCR 	49H, 1H 		//1ECD 	1AC9
		BTSC 	3H, 2H 			//1ECE 	2903
		INCR 	4AH, 1H 		//1ECF 	1ACA
		LJUMP 	6B9H 			//1ED0 	3EB9
		LDWI 	3H 			//1ED1 	0003
		STR 	8H 			//1ED2 	1088
		LDWI 	55H 			//1ED3 	0055
		STR 	16H 			//1ED4 	1096
		LDWI 	AAH 			//1ED5 	00AA
		STR 	16H 			//1ED6 	1096
		BSR 	15H, 1H 			//1ED7 	2495
		NOP 					//1ED8 	1000
		NOP 					//1ED9 	1000
		RET 					//1EDA 	1008
		ADDWFC 	5H, 1H 		//1EDB 	0D85
		MOVIW 	0H[0] 			//1EDC 	0F00
		MOVLB 	1H 			//1EDD 	1021
		STR 	20H 			//1EDE 	10A0
		MOVIW 	1H[0] 			//1EDF 	0F01
		STR 	21H 			//1EE0 	10A1
		MOVIW 	2H[0] 			//1EE1 	0F02
		STR 	22H 			//1EE2 	10A2
		RET 					//1EE3 	1008
		LDR 	3CH, 0H 			//1EE4 	183C
		STR 	5H 			//1EE5 	1085
		LDR 	3BH, 0H 			//1EE6 	183B
		STR 	4H 			//1EE7 	1084
		LDWI 	69H 			//1EE8 	0069
		ADDWR 	4H, 1H 		//1EE9 	1784
		RETW 	A0H 			//1EEA 	04A0
		ADDWFC 	5H, 1H 		//1EEB 	0D85
		MOVIW 	0H[0] 			//1EEC 	0F00
		MOVLB 	1H 			//1EED 	1021
		STR 	23H 			//1EEE 	10A3
		MOVIW 	1H[0] 			//1EEF 	0F01
		STR 	24H 			//1EF0 	10A4
		MOVIW 	2H[0] 			//1EF1 	0F02
		STR 	25H 			//1EF2 	10A5
		RET 					//1EF3 	1008
		LDR 	2CH, 0H 			//1EF4 	182C
		MOVLB 	0H 			//1EF5 	1020
		STR 	5DH 			//1EF6 	10DD
		MOVLB 	1H 			//1EF7 	1021
		LDR 	2DH, 0H 			//1EF8 	182D
		MOVLB 	0H 			//1EF9 	1020
		STR 	5EH 			//1EFA 	10DE
		MOVLB 	1H 			//1EFB 	1021
		LDR 	2EH, 0H 			//1EFC 	182E
		MOVLB 	0H 			//1EFD 	1020
		STR 	5FH 			//1EFE 	10DF
		MOVLB 	1H 			//1EFF 	1021
		LDWI 	40H 			//1F00 	0040
		CLRF 	20H 			//1F01 	11A0
		CLRF 	21H 			//1F02 	11A1
		STR 	22H 			//1F03 	10A2
		MOVLB 	0H 			//1F04 	1020
		LDR 	5DH, 0H 			//1F05 	185D
		MOVLB 	1H 			//1F06 	1021
		STR 	23H 			//1F07 	10A3
		MOVLB 	0H 			//1F08 	1020
		LDR 	5EH, 0H 			//1F09 	185E
		MOVLB 	1H 			//1F0A 	1021
		STR 	24H 			//1F0B 	10A4
		MOVLB 	0H 			//1F0C 	1020
		LDR 	5FH, 0H 			//1F0D 	185F
		MOVLB 	1H 			//1F0E 	1021
		STR 	25H 			//1F0F 	10A5
		RET 					//1F10 	1008
		LDR 	20H, 0H 			//1F11 	1820
		MOVLB 	0H 			//1F12 	1020
		STR 	5DH 			//1F13 	10DD
		MOVLB 	1H 			//1F14 	1021
		LDR 	21H, 0H 			//1F15 	1821
		MOVLB 	0H 			//1F16 	1020
		STR 	5EH 			//1F17 	10DE
		MOVLB 	1H 			//1F18 	1021
		LDR 	22H, 0H 			//1F19 	1822
		MOVLB 	0H 			//1F1A 	1020
		STR 	5FH 			//1F1B 	10DF
		LDR 	5DH, 0H 			//1F1C 	185D
		STR 	3FH 			//1F1D 	10BF
		LDR 	5EH, 0H 			//1F1E 	185E
		STR 	40H 			//1F1F 	10C0
		LDR 	5FH, 0H 			//1F20 	185F
		STR 	41H 			//1F21 	10C1
		LDWI 	9AH 			//1F22 	009A
		STR 	42H 			//1F23 	10C2
		LDWI 	79H 			//1F24 	0079
		STR 	43H 			//1F25 	10C3
		LDWI 	40H 			//1F26 	0040
		STR 	44H 			//1F27 	10C4
		RET 					//1F28 	1008
		LDR 	3CH, 0H 			//1F29 	183C
		STR 	5H 			//1F2A 	1085
		LDR 	3BH, 0H 			//1F2B 	183B
		STR 	4H 			//1F2C 	1084
		LDWI 	84H 			//1F2D 	0084
		ADDWR 	4H, 1H 		//1F2E 	1784
		RETW 	A0H 			//1F2F 	04A0
		LDR 	34H, 0H 			//1F30 	1834
		STR 	3CH 			//1F31 	10BC
		LDR 	33H, 0H 			//1F32 	1833
		STR 	3BH 			//1F33 	10BB
		LDWI 	3H 			//1F34 	0003
		STR 	3DH 			//1F35 	10BD
		CLRF 	3EH 			//1F36 	11BE
		RET 					//1F37 	1008
		LDR 	3BH, 0H 			//1F38 	183B
		MOVLB 	1H 			//1F39 	1021
		STR 	23H 			//1F3A 	10A3
		MOVLB 	0H 			//1F3B 	1020
		LDR 	3CH, 0H 			//1F3C 	183C
		MOVLB 	1H 			//1F3D 	1021
		STR 	24H 			//1F3E 	10A4
		MOVLB 	0H 			//1F3F 	1020
		LDR 	3DH, 0H 			//1F40 	183D
		MOVLB 	1H 			//1F41 	1021
		STR 	25H 			//1F42 	10A5
		RET 					//1F43 	1008
		MOVLB 	0H 			//1F44 	1020
		STR 	2FH 			//1F45 	10AF
		CLRF 	30H 			//1F46 	11B0
		BTSC 	2FH, 7H 		//1F47 	2BAF
		DECR 	30H, 1H 		//1F48 	13B0
		LDWI 	AH 			//1F49 	000A
		STR 	2DH 			//1F4A 	10AD
		CLRF 	2EH 			//1F4B 	11AE
		RET 					//1F4C 	1008
		LDR 	3CH, 0H 			//1F4D 	183C
		STR 	5H 			//1F4E 	1085
		LDR 	3BH, 0H 			//1F4F 	183B
		STR 	4H 			//1F50 	1084
		LDWI 	42H 			//1F51 	0042
		ADDWR 	4H, 1H 		//1F52 	1784
		RETW 	A0H 			//1F53 	04A0
		LDR 	5DH, 0H 			//1F54 	185D
		STR 	3FH 			//1F55 	10BF
		LDR 	5EH, 0H 			//1F56 	185E
		STR 	40H 			//1F57 	10C0
		LDR 	5FH, 0H 			//1F58 	185F
		STR 	41H 			//1F59 	10C1
		RET 					//1F5A 	1008
		LDR 	3CH, 0H 			//1F5B 	183C
		STR 	5H 			//1F5C 	1085
		LDR 	3BH, 0H 			//1F5D 	183B
		STR 	4H 			//1F5E 	1084
		LDWI 	9FH 			//1F5F 	009F
		ADDWR 	4H, 1H 		//1F60 	1784
		RETW 	A0H 			//1F61 	04A0
		LDR 	20H, 0H 			//1F62 	1820
		STR 	30H 			//1F63 	10B0
		LDR 	21H, 0H 			//1F64 	1821
		STR 	31H 			//1F65 	10B1
		LDR 	22H, 0H 			//1F66 	1822
		STR 	32H 			//1F67 	10B2
		LDR 	33H, 0H 			//1F68 	1833
		RET 					//1F69 	1008
		LDR 	20H, 0H 			//1F6A 	1820
		STR 	2CH 			//1F6B 	10AC
		LDR 	21H, 0H 			//1F6C 	1821
		STR 	2DH 			//1F6D 	10AD
		LDR 	22H, 0H 			//1F6E 	1822
		STR 	2EH 			//1F6F 	10AE
		RET 					//1F70 	1008
		LDR 	2EH, 0H 			//1F71 	182E
		STR 	3CH 			//1F72 	10BC
		LDR 	2DH, 0H 			//1F73 	182D
		STR 	3BH 			//1F74 	10BB
		LDWI 	3H 			//1F75 	0003
		STR 	3DH 			//1F76 	10BD
		CLRF 	3EH 			//1F77 	11BE
		RET 					//1F78 	1008
		STR 	3BH 			//1F79 	10BB
		LDWI 	3H 			//1F7A 	0003
		CLRF 	3CH 			//1F7B 	11BC
		STR 	3DH 			//1F7C 	10BD
		CLRF 	3EH 			//1F7D 	11BE
		RET 					//1F7E 	1008
		LDWI 	AH 			//1F7F 	000A
		MOVLB 	0H 			//1F80 	1020
		STR 	33H 			//1F81 	10B3
		CLRF 	34H 			//1F82 	11B4
		MOVLB 	1H 			//1F83 	1021
		LDR 	33H, 0H 			//1F84 	1833
		MOVLB 	0H 			//1F85 	1020
		RET 					//1F86 	1008
		CLRF 	34H 			//1F87 	11B4
		MOVLB 	1H 			//1F88 	1021
		LDR 	33H, 0H 			//1F89 	1833
		MOVLB 	0H 			//1F8A 	1020
		STR 	35H 			//1F8B 	10B5
		CLRF 	36H 			//1F8C 	11B6
		RET 					//1F8D 	1008
		LDR 	20H, 0H 			//1F8E 	1820
		STR 	2CH 			//1F8F 	10AC
		LDR 	21H, 0H 			//1F90 	1821
		STR 	2DH 			//1F91 	10AD
		LDR 	22H, 0H 			//1F92 	1822
		STR 	2EH 			//1F93 	10AE
		RET 					//1F94 	1008
		LDR 	3CH, 0H 			//1F95 	183C
		STR 	5H 			//1F96 	1085
		LDR 	3BH, 0H 			//1F97 	183B
		STR 	4H 			//1F98 	1084
		LDWI 	5DH 			//1F99 	005D
		ADDWR 	4H, 1H 		//1F9A 	1784
		RETW 	A0H 			//1F9B 	04A0
		ADDWFC 	5H, 1H 		//1F9C 	0D85
		MOVIW 	0H[0] 			//1F9D 	0F00
		MOVLB 	1H 			//1F9E 	1021
		STR 	2CH 			//1F9F 	10AC
		MOVIW 	1H[0] 			//1FA0 	0F01
		STR 	2DH 			//1FA1 	10AD
		MOVIW 	2H[0] 			//1FA2 	0F02
		STR 	2EH 			//1FA3 	10AE
		RET 					//1FA4 	1008
		STR 	2FH 			//1FA5 	10AF
		CLRF 	30H 			//1FA6 	11B0
		BTSC 	2FH, 7H 		//1FA7 	2BAF
		DECR 	30H, 1H 		//1FA8 	13B0
		LDWI 	64H 			//1FA9 	0064
		STR 	2DH 			//1FAA 	10AD
		CLRF 	2EH 			//1FAB 	11AE
		RET 					//1FAC 	1008
		LDR 	30H, 0H 			//1FAD 	1830
		STR 	23H 			//1FAE 	10A3
		LDR 	31H, 0H 			//1FAF 	1831
		STR 	24H 			//1FB0 	10A4
		LDR 	32H, 0H 			//1FB1 	1832
		STR 	25H 			//1FB2 	10A5
		RET 					//1FB3 	1008
		MOVLB 	0H 			//1FB4 	1020
		STR 	55H 			//1FB5 	10D5
		BCR 	3H, 0H 			//1FB6 	2003
		RLR 	54H, 0H 			//1FB7 	1D54
		RLR 	55H, 0H 			//1FB8 	1D55
		MOVLB 	1H 			//1FB9 	1021
		RET 					//1FBA 	1008
		LDR 	20H, 0H 			//1FBB 	1820
		STR 	33H 			//1FBC 	10B3
		LDR 	21H, 0H 			//1FBD 	1821
		STR 	34H 			//1FBE 	10B4
		LDR 	22H, 0H 			//1FBF 	1822
		STR 	35H 			//1FC0 	10B5
		RET 					//1FC1 	1008
		LDR 	33H, 0H 			//1FC2 	1833
		STR 	23H 			//1FC3 	10A3
		LDR 	34H, 0H 			//1FC4 	1834
		STR 	24H 			//1FC5 	10A4
		LDR 	35H, 0H 			//1FC6 	1835
		STR 	25H 			//1FC7 	10A5
		RET 					//1FC8 	1008
		LDWI 	66H 			//1FC9 	0066
		STR 	42H 			//1FCA 	10C2
		LDWI 	46H 			//1FCB 	0046
		STR 	43H 			//1FCC 	10C3
		LDWI 	40H 			//1FCD 	0040
		STR 	44H 			//1FCE 	10C4
		RET 					//1FCF 	1008
		LDR 	23H, 0H 			//1FD0 	1823
		ADDWR 	27H, 1H 		//1FD1 	17A7
		LDR 	24H, 0H 			//1FD2 	1824
		ADDWFC 	28H, 1H 		//1FD3 	0DA8
		LDR 	25H, 0H 			//1FD4 	1825
		ADDWFC 	29H, 1H 		//1FD5 	0DA9
		RET 					//1FD6 	1008
		LDWI 	60H 			//1FD7 	0060
		CLRF 	42H 			//1FD8 	11C2
		STR 	43H 			//1FD9 	10C3
		LDWI 	40H 			//1FDA 	0040
		STR 	44H 			//1FDB 	10C4
		RET 					//1FDC 	1008
		LDWI 	AH 			//1FDD 	000A
		MOVLB 	0H 			//1FDE 	1020
		STR 	2DH 			//1FDF 	10AD
		MOVLB 	1H 			//1FE0 	1021
		LDR 	36H, 0H 			//1FE1 	1836
		RET 					//1FE2 	1008
		STR 	40H 			//1FE3 	10C0
		LDR 	3FH, 0H 			//1FE4 	183F
		STR 	3BH 			//1FE5 	10BB
		LDR 	40H, 0H 			//1FE6 	1840
		STR 	3CH 			//1FE7 	10BC
		RET 					//1FE8 	1008
		MOVLB 	0H 			//1FE9 	1020
		STR 	32H 			//1FEA 	10B2
		MOVLB 	1H 			//1FEB 	1021
		LDR 	36H, 0H 			//1FEC 	1836
		RET 					//1FED 	1008
		CLRF 	2CH 			//1FEE 	11AC
		CLRF 	2DH 			//1FEF 	11AD
		CLRF 	2EH 			//1FF0 	11AE
		RET 					//1FF1 	1008
		LDR 	33H, 0H 			//1FF2 	1833
		XORWI 	80H 			//1FF3 	0A80
		ADDWI 	75H 			//1FF4 	0E75
		LDR 	33H, 0H 			//1FF5 	1833
		RET 					//1FF6 	1008
		CLRF 	20H 			//1FF7 	11A0
		CLRF 	21H 			//1FF8 	11A1
		CLRF 	22H 			//1FF9 	11A2
		RET 					//1FFA 	1008
		LDR 	2EH, 0H 			//1FFB 	182E
		STR 	36H 			//1FFC 	10B6
		LDR 	2DH, 0H 			//1FFD 	182D
		STR 	35H 			//1FFE 	10B5
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
		RETW 	25H 			//2028 	0425
		RETW 	64H 			//2029 	0464
		RETW 	2CH 			//202A 	042C
		RETW 	25H 			//202B 	0425
		RETW 	64H 			//202C 	0464
		RETW 	2CH 			//202D 	042C
		RETW 	25H 			//202E 	0425
		RETW 	30H 			//202F 	0430
		RETW 	2EH 			//2030 	042E
		RETW 	30H 			//2031 	0430
		RETW 	66H 			//2032 	0466
		RETW 	2CH 			//2033 	042C
		RETW 	25H 			//2034 	0425
		RETW 	30H 			//2035 	0430
		RETW 	2EH 			//2036 	042E
		RETW 	30H 			//2037 	0430
		RETW 	66H 			//2038 	0466
		RETW 	2CH 			//2039 	042C
		RETW 	25H 			//203A 	0425
		RETW 	64H 			//203B 	0464
		RETW 	2CH 			//203C 	042C
		RETW 	25H 			//203D 	0425
		RETW 	64H 			//203E 	0464
		RETW 	DH 			//203F 	040D
		RETW 	AH 			//2040 	040A
		RETW 	0H 			//2041 	0400
		RETW 	0H 			//2042 	0400
		RETW 	80H 			//2043 	0480
		RETW 	3FH 			//2044 	043F
		RETW 	0H 			//2045 	0400
		RETW 	20H 			//2046 	0420
		RETW 	41H 			//2047 	0441
		RETW 	0H 			//2048 	0400
		RETW 	C8H 			//2049 	04C8
		RETW 	42H 			//204A 	0442
		RETW 	0H 			//204B 	0400
		RETW 	7AH 			//204C 	047A
		RETW 	44H 			//204D 	0444
		RETW 	40H 			//204E 	0440
		RETW 	1CH 			//204F 	041C
		RETW 	46H 			//2050 	0446
		RETW 	50H 			//2051 	0450
		RETW 	C3H 			//2052 	04C3
		RETW 	47H 			//2053 	0447
		RETW 	24H 			//2054 	0424
		RETW 	74H 			//2055 	0474
		RETW 	49H 			//2056 	0449
		RETW 	97H 			//2057 	0497
		RETW 	18H 			//2058 	0418
		RETW 	4BH 			//2059 	044B
		RETW 	BCH 			//205A 	04BC
		RETW 	BEH 			//205B 	04BE
		RETW 	4CH 			//205C 	044C
		RETW 	6BH 			//205D 	046B
		RETW 	6EH 			//205E 	046E
		RETW 	4EH 			//205F 	044E
		RETW 	3H 			//2060 	0403
		RETW 	15H 			//2061 	0415
		RETW 	50H 			//2062 	0450
		RETW 	79H 			//2063 	0479
		RETW 	ADH 			//2064 	04AD
		RETW 	60H 			//2065 	0460
		RETW 	F3H 			//2066 	04F3
		RETW 	49H 			//2067 	0449
		RETW 	71H 			//2068 	0471
		RETW 	0H 			//2069 	0400
		RETW 	80H 			//206A 	0480
		RETW 	3FH 			//206B 	043F
		RETW 	CDH 			//206C 	04CD
		RETW 	CCH 			//206D 	04CC
		RETW 	3DH 			//206E 	043D
		RETW 	D7H 			//206F 	04D7
		RETW 	23H 			//2070 	0423
		RETW 	3CH 			//2071 	043C
		RETW 	12H 			//2072 	0412
		RETW 	83H 			//2073 	0483
		RETW 	3AH 			//2074 	043A
		RETW 	B7H 			//2075 	04B7
		RETW 	D1H 			//2076 	04D1
		RETW 	38H 			//2077 	0438
		RETW 	C6H 			//2078 	04C6
		RETW 	27H 			//2079 	0427
		RETW 	37H 			//207A 	0437
		RETW 	38H 			//207B 	0438
		RETW 	86H 			//207C 	0486
		RETW 	35H 			//207D 	0435
		RETW 	C0H 			//207E 	04C0
		RETW 	D6H 			//207F 	04D6
		RETW 	33H 			//2080 	0433
		RETW 	CCH 			//2081 	04CC
		RETW 	2BH 			//2082 	042B
		RETW 	32H 			//2083 	0432
		RETW 	70H 			//2084 	0470
		RETW 	89H 			//2085 	0489
		RETW 	30H 			//2086 	0430
		RETW 	E7H 			//2087 	04E7
		RETW 	DBH 			//2088 	04DB
		RETW 	2EH 			//2089 	042E
		RETW 	E5H 			//208A 	04E5
		RETW 	3CH 			//208B 	043C
		RETW 	1EH 			//208C 	041E
		RETW 	42H 			//208D 	0442
		RETW 	A2H 			//208E 	04A2
		RETW 	DH 			//208F 	040D
		RETW 	44H 			//2090 	0444
		RETW 	25H 			//2091 	0425
		RETW 	64H 			//2092 	0464
		RETW 	2CH 			//2093 	042C
		RETW 	25H 			//2094 	0425
		RETW 	30H 			//2095 	0430
		RETW 	2EH 			//2096 	042E
		RETW 	31H 			//2097 	0431
		RETW 	66H 			//2098 	0466
		RETW 	DH 			//2099 	040D
		RETW 	AH 			//209A 	040A
		RETW 	0H 			//209B 	0400
		RETW 	54H 			//209C 	0454
		RETW 	3AH 			//209D 	043A
		RETW 	25H 			//209E 	0425
		RETW 	30H 			//209F 	0430
		RETW 	2EH 			//20A0 	042E
		RETW 	31H 			//20A1 	0431
		RETW 	66H 			//20A2 	0466
		RETW 	DH 			//20A3 	040D
		RETW 	AH 			//20A4 	040A
		RETW 	0H 			//20A5 	0400
		RETW 	54H 			//20A6 	0454
		RETW 	25H 			//20A7 	0425
		RETW 	30H 			//20A8 	0430
		RETW 	2EH 			//20A9 	042E
		RETW 	31H 			//20AA 	0431
		RETW 	66H 			//20AB 	0466
		RETW 	DH 			//20AC 	040D
		RETW 	AH 			//20AD 	040A
		RETW 	0H 			//20AE 	0400
		RETW 	53H 			//20AF 	0453
		RETW 	54H 			//20B0 	0454
		RETW 	41H 			//20B1 	0441
		RETW 	52H 			//20B2 	0452
		RETW 	54H 			//20B3 	0454
		RETW 	DH 			//20B4 	040D
		RETW 	AH 			//20B5 	040A
		RETW 	0H 			//20B6 	0400
		RETW 	48H 			//20B7 	0448
		RETW 	30H 			//20B8 	0430
		RETW 	DH 			//20B9 	040D
		RETW 	AH 			//20BA 	040A
		RETW 	0H 			//20BB 	0400
		RETW 	50H 			//20BC 	0450
		RETW 	30H 			//20BD 	0430
		RETW 	DH 			//20BE 	040D
		RETW 	AH 			//20BF 	040A
		RETW 	0H 			//20C0 	0400
		RETW 	53H 			//20C1 	0453
		RETW 	30H 			//20C2 	0430
		RETW 	DH 			//20C3 	040D
		RETW 	AH 			//20C4 	040A
		RETW 	0H 			//20C5 	0400
		RETW 	54H 			//20C6 	0454
		RETW 	30H 			//20C7 	0430
		RETW 	DH 			//20C8 	040D
		RETW 	AH 			//20C9 	040A
		RETW 	0H 			//20CA 	0400
		RETW 	48H 			//20CB 	0448
		RETW 	31H 			//20CC 	0431
		RETW 	DH 			//20CD 	040D
		RETW 	AH 			//20CE 	040A
		RETW 	0H 			//20CF 	0400
		RETW 	50H 			//20D0 	0450
		RETW 	31H 			//20D1 	0431
		RETW 	DH 			//20D2 	040D
		RETW 	AH 			//20D3 	040A
		RETW 	0H 			//20D4 	0400
		RETW 	53H 			//20D5 	0453
		RETW 	31H 			//20D6 	0431
		RETW 	DH 			//20D7 	040D
		RETW 	AH 			//20D8 	040A
		RETW 	0H 			//20D9 	0400
		RETW 	72H 			//20DA 	0472
		RETW 	64H 			//20DB 	0464
		RETW 	2DH 			//20DC 	042D
		RETW 	0H 			//20DD 	0400
		RETW 	54H 			//20DE 	0454
		RETW 	31H 			//20DF 	0431
		RETW 	3AH 			//20E0 	043A
		RETW 	0H 			//20E1 	0400
		RETW 	74H 			//20E2 	0474
		RETW 	31H 			//20E3 	0431
		RETW 	3AH 			//20E4 	043A
		RETW 	0H 			//20E5 	0400
		RETW 	54H 			//20E6 	0454
		RETW 	32H 			//20E7 	0432
		RETW 	3AH 			//20E8 	043A
		RETW 	0H 			//20E9 	0400
		RETW 	74H 			//20EA 	0474
		RETW 	32H 			//20EB 	0432
		RETW 	3AH 			//20EC 	043A
		RETW 	0H 			//20ED 	0400
		RETW 	70H 			//20EE 	0470
		RETW 	66H 			//20EF 	0466
		RETW 	3AH 			//20F0 	043A
		RETW 	0H 			//20F1 	0400
		RETW 	70H 			//20F2 	0470
		RETW 	74H 			//20F3 	0474
		RETW 	3AH 			//20F4 	043A
		RETW 	0H 			//20F5 	0400
			END
