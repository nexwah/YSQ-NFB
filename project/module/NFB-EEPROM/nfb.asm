//Deviec:FT64F0AX
//-----------------------Variable---------------------------------
		_command		EQU		2BAH
		_HTVP_		EQU		1EEH
		_HTVN_		EQU		61H
		_HTVI_		EQU		26EH
		_HTVP		EQU		23BH
		_HTVN		EQU		238H
		_HTVI		EQU		235H
		_I		EQU		232H
		_V		EQU		22FH
		_R		EQU		22CH
		_T		EQU		1E9H
		_diffT		EQU		5EH
		_PowerOn		EQU		26CH
		_BTNpressed		EQU		26AH
		_BTNtimer		EQU		268H
		_HTOn		EQU		266H
		_HTtimer		EQU		264H
		_SmokeOn		EQU		262H
		_Smoketimer		EQU		260H
		_PuffOn		EQU		25EH
		_ReadFlag		EQU		25CH
		_t1E		EQU		25AH
		_t2E		EQU		258H
		_T1E		EQU		256H
		_T2E		EQU		254H
		_PTE		EQU		252H
		_PFE		EQU		250H
		_BTNcnt		EQU		2ACH
		_HTcnt		EQU		2A8H
		_HTtimecnt		EQU		1E5H
		_Smokecnt		EQU		2A4H
		_Smoketimecnt		EQU		57H
		_Puffcnt		EQU		2A0H
		_timeleft		EQU		24EH
		_timeleft1		EQU		24CH
		_timeleft2		EQU		24AH
		_timeleft3		EQU		248H
		_Toffset		EQU		229H
		_m		EQU		226H
		_Tm		EQU		223H
		_n		EQU		246H
		_timenow		EQU		244H
		_t1		EQU		1ECH
		_t2		EQU		242H
		_T1		EQU		5BH
		_T2		EQU		220H
		_puffno		EQU		240H
		_Ptarget		EQU		23EH
		_valc		EQU		2B0H
//		main@msg_3693		EQU		1B4H
//		main@i_3692		EQU		1E0H
//		main@i_3691		EQU		1DEH
//		main@i_3690		EQU		1DCH
//		main@i_3682		EQU		1DAH
//		main@i_3681		EQU		1D8H
//		main@i		EQU		1D6H
//		main@msg_3696		EQU		1BEH
//		main@pf		EQU		E1H
//		main@msg_3685		EQU		1AAH
//		main@msg		EQU		1A0H
//		main@dataL_3712		EQU		1CEH
//		main@dataL_3711		EQU		1CDH
//		main@data_3708		EQU		1D1H
//		main@dataH_3710		EQU		1CCH
//		main@dataL_3709		EQU		1CBH
//		main@data		EQU		1CFH
//		main@dataH_3707		EQU		1CAH
//		main@dataL_3706		EQU		1C9H
//		main@dataH		EQU		1C8H
//		main@dataL_3703		EQU		E4H
//		main@dataL		EQU		E3H
//		main@msg_3700		EQU		320H
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
//		___lldiv@quotient		EQU		35H
//		___lldiv@counter		EQU		39H
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
//		send@i		EQU		CFH
//		send@tbuf		EQU		CAH
//		send@len		EQU		CCH
//		DelayMs@a		EQU		C8H
//		DelayMs@Time		EQU		C5H
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
//		BatteryLevel@bat		EQU		CBH
//		BatteryLevel@Vdd		EQU		C9H
//		___ftge@ff1		EQU		3FH
//		___ftge@ff2		EQU		42H
//		___ftdiv@f3		EQU		B6H
//		___ftdiv@sign		EQU		BAH
//		___ftdiv@exp		EQU		B9H
//		___ftdiv@cntr		EQU		B5H
//		___ftdiv@f2		EQU		ACH
//		___ftdiv@f1		EQU		AFH
//		GET_ADC_DATA@adcChannel		EQU		C8H
//		GET_ADC_DATA@adcChannel		EQU		C8H
//		GET_ADC_DATA@adcChannel		EQU		C8H
//		DelayUs@a		EQU		C3H
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

		//;NFB.C: 78: if(UR1RXNE&&UR1RXNEF)
		MOVLB 	9H 			//0006 	1029
		BTSC 	EH, 0H 			//0007 	280E
		BTSS 	12H, 0H 		//0008 	2C12
		LJUMP 	11CH 			//0009 	391C

		//;NFB.C: 79: {
		//;NFB.C: 80: command[n] = UR1DATAL;
		MOVLB 	4H 			//000A 	1024
		LDR 	46H, 0H 			//000B 	1846
		ADDWI 	BAH 			//000C 	0EBA
		STR 	6H 			//000D 	1086
		LDWI 	2H 			//000E 	0002
		STR 	7H 			//000F 	1087
		MOVLB 	9H 			//0010 	1029
		LDR 	CH, 0H 			//0011 	180C
		STR 	1H 			//0012 	1081

		//;NFB.C: 81: n++;
		MOVLB 	4H 			//0013 	1024
		INCR 	46H, 1H 		//0014 	1AC6
		BTSC 	3H, 2H 			//0015 	2903
		INCR 	47H, 1H 		//0016 	1AC7

		//;NFB.C: 82: if(strstr(command,"\r\n")){
		LDWI 	6H 			//0017 	0006
		STR 	7BH 			//0018 	10FB
		LDWI 	A1H 			//0019 	00A1
		STR 	7CH 			//001A 	10FC
		LDWI 	BAH 			//001B 	00BA
		MOVLP 	2H 			//001C 	0182
		LCALL 	2FEH 			//001D 	32FE
		MOVLP 	0H 			//001E 	0180
		XORWI 	0H 			//001F 	0A00
		BTSC 	3H, 2H 			//0020 	2903
		LJUMP 	11CH 			//0021 	391C

		//;NFB.C: 83: int len = strlen(command)-5;
		LDWI 	BAH 			//0022 	00BA
		STR 	70H 			//0023 	10F0
		LDWI 	2H 			//0024 	0002
		STR 	71H 			//0025 	10F1
		MOVLP 	3H 			//0026 	0183
		LCALL 	36BH 			//0027 	336B
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

		//;NFB.C: 84: for(int i=0;i<len;i++){
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

		//;NFB.C: 85: valc[i] += command[i+3];
		MOVLB 	0H 			//0040 	1020
		LDR 	2BH, 0H 			//0041 	182B
		ADDWI 	B0H 			//0042 	0EB0
		STR 	6H 			//0043 	1086
		LDWI 	2H 			//0044 	0002
		STR 	7H 			//0045 	1087
		LDR 	2BH, 0H 			//0046 	182B
		ADDWI 	BDH 			//0047 	0EBD
		STR 	4H 			//0048 	1084
		LDWI 	2H 			//0049 	0002
		STR 	5H 			//004A 	1085
		LDR 	0H, 0H 			//004B 	1800
		ADDWR 	1H, 1H 		//004C 	1781
		INCR 	2BH, 1H 		//004D 	1AAB
		BTSC 	3H, 2H 			//004E 	2903
		INCR 	2CH, 1H 		//004F 	1AAC
		LJUMP 	34H 			//0050 	3834

		//;NFB.C: 86: }
		//;NFB.C: 87: if(strstr(command,"t1:")){
		LDWI 	2FH 			//0051 	002F
		STR 	7BH 			//0052 	10FB
		LDWI 	A1H 			//0053 	00A1
		STR 	7CH 			//0054 	10FC
		LDWI 	BAH 			//0055 	00BA
		MOVLP 	2H 			//0056 	0182
		LCALL 	2FEH 			//0057 	32FE
		MOVLP 	0H 			//0058 	0180
		XORWI 	0H 			//0059 	0A00
		BTSC 	3H, 2H 			//005A 	2903
		LJUMP 	6AH 			//005B 	386A

		//;NFB.C: 88: t1 = charArrayToInt(valc);
		LDWI 	B0H 			//005C 	00B0
		MOVLP 	3H 			//005D 	0183
		LCALL 	387H 			//005E 	3387
		MOVLP 	0H 			//005F 	0180
		LDR 	77H, 0H 			//0060 	1877
		MOVLB 	3H 			//0061 	1023
		STR 	6DH 			//0062 	10ED
		LDR 	76H, 0H 			//0063 	1876
		STR 	6CH 			//0064 	10EC

		//;NFB.C: 89: t1E = 1;
		MOVLB 	4H 			//0065 	1024
		CLRF 	5AH 			//0066 	11DA
		INCR 	5AH, 1H 		//0067 	1ADA
		CLRF 	5BH 			//0068 	11DB

		//;NFB.C: 90: } else if(strstr(command,"t2:")){
		LJUMP 	107H 			//0069 	3907
		LDWI 	37H 			//006A 	0037
		STR 	7BH 			//006B 	10FB
		LDWI 	A1H 			//006C 	00A1
		STR 	7CH 			//006D 	10FC
		LDWI 	BAH 			//006E 	00BA
		MOVLP 	2H 			//006F 	0182
		LCALL 	2FEH 			//0070 	32FE
		MOVLP 	0H 			//0071 	0180
		XORWI 	0H 			//0072 	0A00
		BTSC 	3H, 2H 			//0073 	2903
		LJUMP 	82H 			//0074 	3882

		//;NFB.C: 91: t2 = charArrayToInt(valc);
		LDWI 	B0H 			//0075 	00B0
		MOVLP 	3H 			//0076 	0183
		LCALL 	387H 			//0077 	3387
		MOVLP 	0H 			//0078 	0180
		LDR 	77H, 0H 			//0079 	1877
		MOVLB 	4H 			//007A 	1024
		STR 	43H 			//007B 	10C3
		LDR 	76H, 0H 			//007C 	1876
		STR 	42H 			//007D 	10C2

		//;NFB.C: 92: t2E = 1;
		CLRF 	58H 			//007E 	11D8
		INCR 	58H, 1H 		//007F 	1AD8
		CLRF 	59H 			//0080 	11D9

		//;NFB.C: 93: } else if(strstr(command,"pf:")){
		LJUMP 	107H 			//0081 	3907
		LDWI 	3BH 			//0082 	003B
		STR 	7BH 			//0083 	10FB
		LDWI 	A1H 			//0084 	00A1
		STR 	7CH 			//0085 	10FC
		LDWI 	BAH 			//0086 	00BA
		MOVLP 	2H 			//0087 	0182
		LCALL 	2FEH 			//0088 	32FE
		MOVLP 	0H 			//0089 	0180
		XORWI 	0H 			//008A 	0A00
		BTSC 	3H, 2H 			//008B 	2903
		LJUMP 	9AH 			//008C 	389A

		//;NFB.C: 94: puffno = charArrayToInt(valc);
		LDWI 	B0H 			//008D 	00B0
		MOVLP 	3H 			//008E 	0183
		LCALL 	387H 			//008F 	3387
		MOVLP 	0H 			//0090 	0180
		LDR 	77H, 0H 			//0091 	1877
		MOVLB 	4H 			//0092 	1024
		STR 	41H 			//0093 	10C1
		LDR 	76H, 0H 			//0094 	1876
		STR 	40H 			//0095 	10C0

		//;NFB.C: 95: PFE = 1;
		CLRF 	50H 			//0096 	11D0
		INCR 	50H, 1H 		//0097 	1AD0
		CLRF 	51H 			//0098 	11D1

		//;NFB.C: 96: } else if(strstr(command,"T1:")){
		LJUMP 	107H 			//0099 	3907
		LDWI 	2BH 			//009A 	002B
		STR 	7BH 			//009B 	10FB
		LDWI 	A1H 			//009C 	00A1
		STR 	7CH 			//009D 	10FC
		LDWI 	BAH 			//009E 	00BA
		MOVLP 	2H 			//009F 	0182
		LCALL 	2FEH 			//00A0 	32FE
		MOVLP 	0H 			//00A1 	0180
		XORWI 	0H 			//00A2 	0A00
		BTSC 	3H, 2H 			//00A3 	2903
		LJUMP 	BBH 			//00A4 	38BB

		//;NFB.C: 97: T1 = (float)charArrayToInt(valc);
		LDWI 	B0H 			//00A5 	00B0
		MOVLP 	3H 			//00A6 	0183
		LCALL 	387H 			//00A7 	3387
		MOVLP 	0H 			//00A8 	0180
		LDR 	77H, 0H 			//00A9 	1877
		STR 	26H 			//00AA 	10A6
		LDR 	76H, 0H 			//00AB 	1876
		STR 	25H 			//00AC 	10A5
		MOVLP 	4H 			//00AD 	0184
		LCALL 	48CH 			//00AE 	348C
		MOVLP 	0H 			//00AF 	0180
		LDR 	25H, 0H 			//00B0 	1825
		STR 	5BH 			//00B1 	10DB
		LDR 	26H, 0H 			//00B2 	1826
		STR 	5CH 			//00B3 	10DC
		LDR 	27H, 0H 			//00B4 	1827
		STR 	5DH 			//00B5 	10DD

		//;NFB.C: 98: T1E = 1;
		MOVLB 	4H 			//00B6 	1024
		CLRF 	56H 			//00B7 	11D6
		INCR 	56H, 1H 		//00B8 	1AD6
		CLRF 	57H 			//00B9 	11D7

		//;NFB.C: 99: } else if(strstr(command,"T2:")){
		LJUMP 	107H 			//00BA 	3907
		LDWI 	33H 			//00BB 	0033
		STR 	7BH 			//00BC 	10FB
		LDWI 	A1H 			//00BD 	00A1
		STR 	7CH 			//00BE 	10FC
		LDWI 	BAH 			//00BF 	00BA
		MOVLP 	2H 			//00C0 	0182
		LCALL 	2FEH 			//00C1 	32FE
		MOVLP 	0H 			//00C2 	0180
		XORWI 	0H 			//00C3 	0A00
		BTSC 	3H, 2H 			//00C4 	2903
		LJUMP 	E0H 			//00C5 	38E0

		//;NFB.C: 100: T2 = (float)charArrayToInt(valc);
		LDWI 	B0H 			//00C6 	00B0
		MOVLP 	3H 			//00C7 	0183
		LCALL 	387H 			//00C8 	3387
		MOVLP 	0H 			//00C9 	0180
		LDR 	77H, 0H 			//00CA 	1877
		STR 	26H 			//00CB 	10A6
		LDR 	76H, 0H 			//00CC 	1876
		STR 	25H 			//00CD 	10A5
		MOVLP 	4H 			//00CE 	0184
		LCALL 	48CH 			//00CF 	348C
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

		//;NFB.C: 101: T2E = 1;
		CLRF 	54H 			//00DC 	11D4
		INCR 	54H, 1H 		//00DD 	1AD4
		CLRF 	55H 			//00DE 	11D5

		//;NFB.C: 102: } else if(strstr(command,"pt:")){
		LJUMP 	107H 			//00DF 	3907
		LDWI 	3FH 			//00E0 	003F
		STR 	7BH 			//00E1 	10FB
		LDWI 	A1H 			//00E2 	00A1
		STR 	7CH 			//00E3 	10FC
		LDWI 	BAH 			//00E4 	00BA
		MOVLP 	2H 			//00E5 	0182
		LCALL 	2FEH 			//00E6 	32FE
		MOVLP 	0H 			//00E7 	0180
		XORWI 	0H 			//00E8 	0A00
		BTSC 	3H, 2H 			//00E9 	2903
		LJUMP 	F8H 			//00EA 	38F8

		//;NFB.C: 103: Ptarget = charArrayToInt(valc);
		LDWI 	B0H 			//00EB 	00B0
		MOVLP 	3H 			//00EC 	0183
		LCALL 	387H 			//00ED 	3387
		MOVLP 	0H 			//00EE 	0180
		LDR 	77H, 0H 			//00EF 	1877
		MOVLB 	4H 			//00F0 	1024
		STR 	3FH 			//00F1 	10BF
		LDR 	76H, 0H 			//00F2 	1876
		STR 	3EH 			//00F3 	10BE

		//;NFB.C: 104: PTE = 1;
		CLRF 	52H 			//00F4 	11D2
		INCR 	52H, 1H 		//00F5 	1AD2
		CLRF 	53H 			//00F6 	11D3

		//;NFB.C: 105: } else if(strstr(command,"rd-")){
		LJUMP 	107H 			//00F7 	3907
		LDWI 	27H 			//00F8 	0027
		STR 	7BH 			//00F9 	10FB
		LDWI 	A1H 			//00FA 	00A1
		STR 	7CH 			//00FB 	10FC
		LDWI 	BAH 			//00FC 	00BA
		MOVLP 	2H 			//00FD 	0182
		LCALL 	2FEH 			//00FE 	32FE
		MOVLP 	0H 			//00FF 	0180
		XORWI 	0H 			//0100 	0A00
		BTSC 	3H, 2H 			//0101 	2903
		LJUMP 	107H 			//0102 	3907

		//;NFB.C: 106: ReadFlag = 1;
		MOVLB 	4H 			//0103 	1024
		CLRF 	5CH 			//0104 	11DC
		INCR 	5CH, 1H 		//0105 	1ADC
		CLRF 	5DH 			//0106 	11DD

		//;NFB.C: 107: }
		//;NFB.C: 108: n = 0;
		MOVLB 	4H 			//0107 	1024
		LDWI 	AH 			//0108 	000A
		CLRF 	46H 			//0109 	11C6
		CLRF 	47H 			//010A 	11C7
		CLRF 	70H 			//010B 	11F0
		CLRF 	71H 			//010C 	11F1
		STR 	72H 			//010D 	10F2
		LDWI 	BAH 			//010E 	00BA
		CLRF 	73H 			//010F 	11F3
		MOVLP 	5H 			//0110 	0185
		LCALL 	547H 			//0111 	3547
		MOVLP 	0H 			//0112 	0180
		LDWI 	AH 			//0113 	000A

		//;NFB.C: 110: memset(valc,0,10);
		CLRF 	70H 			//0114 	11F0
		CLRF 	71H 			//0115 	11F1
		STR 	72H 			//0116 	10F2
		LDWI 	B0H 			//0117 	00B0
		CLRF 	73H 			//0118 	11F3
		MOVLP 	5H 			//0119 	0185
		LCALL 	547H 			//011A 	3547
		MOVLP 	0H 			//011B 	0180

		//;NFB.C: 111: }
		//;NFB.C: 112: }
		//;NFB.C: 113: if(EPIF0&0X10)
		MOVLB 	0H 			//011C 	1020
		BTSS 	14H, 4H 		//011D 	2E14
		LJUMP 	12AH 			//011E 	392A

		//;NFB.C: 114: {
		//;NFB.C: 115: EPIF0=0X10;
		LDWI 	10H 			//011F 	0010
		STR 	14H 			//0120 	1094

		//;NFB.C: 116: BTNpressed = 1;
		MOVLB 	4H 			//0121 	1024
		CLRF 	6AH 			//0122 	11EA
		INCR 	6AH, 1H 		//0123 	1AEA
		CLRF 	6BH 			//0124 	11EB

		//;NFB.C: 117: BTNcnt = 0;
		MOVLB 	5H 			//0125 	1025
		CLRF 	2CH 			//0126 	11AC
		CLRF 	2DH 			//0127 	11AD
		CLRF 	2EH 			//0128 	11AE
		CLRF 	2FH 			//0129 	11AF

		//;NFB.C: 118: }
		//;NFB.C: 119: if(T2UIE&&T2UIF)
		MOVLB 	6H 			//012A 	1026
		BTSC 	DH, 0H 			//012B 	280D
		BTSS 	EH, 0H 			//012C 	2C0E
		LJUMP 	1A4H 			//012D 	39A4

		//;NFB.C: 120: {
		//;NFB.C: 121: T2UIF=1;
		BSR 	EH, 0H 			//012E 	240E

		//;NFB.C: 122: if(BTNpressed){
		MOVLB 	4H 			//012F 	1024
		LDR 	6AH, 0H 			//0130 	186A
		IORWR 	6BH, 0H 		//0131 	146B
		BTSC 	3H, 2H 			//0132 	2903
		LJUMP 	152H 			//0133 	3952

		//;NFB.C: 123: BTNcnt++;
		LDWI 	1H 			//0134 	0001
		MOVLB 	5H 			//0135 	1025
		ADDWR 	2CH, 1H 		//0136 	17AC
		LDWI 	0H 			//0137 	0000
		ADDWFC 	2DH, 1H 		//0138 	0DAD
		ADDWFC 	2EH, 1H 		//0139 	0DAE
		ADDWFC 	2FH, 1H 		//013A 	0DAF

		//;NFB.C: 124: if(PB4){
		MOVLB 	0H 			//013B 	1020
		BTSC 	DH, 4H 			//013C 	2A0D
		LJUMP 	14FH 			//013D 	394F

		//;NFB.C: 126: } else if(BTNcnt>=1500){
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

		//;NFB.C: 127: BTNtimer = 1;
		MOVLB 	4H 			//014B 	1024
		CLRF 	68H 			//014C 	11E8
		INCR 	68H, 1H 		//014D 	1AE8
		CLRF 	69H 			//014E 	11E9

		//;NFB.C: 125: BTNpressed = 0;
		MOVLB 	4H 			//014F 	1024
		CLRF 	6AH 			//0150 	11EA
		CLRF 	6BH 			//0151 	11EB

		//;NFB.C: 129: }
		//;NFB.C: 130: }
		//;NFB.C: 131: if(HTOn){
		MOVLB 	4H 			//0152 	1024
		LDR 	66H, 0H 			//0153 	1866
		IORWR 	67H, 0H 		//0154 	1467
		BTSC 	3H, 2H 			//0155 	2903
		LJUMP 	17BH 			//0156 	397B

		//;NFB.C: 132: HTcnt++;
		LDWI 	1H 			//0157 	0001
		MOVLB 	5H 			//0158 	1025
		ADDWR 	28H, 1H 		//0159 	17A8
		LDWI 	0H 			//015A 	0000
		ADDWFC 	29H, 1H 		//015B 	0DA9
		ADDWFC 	2AH, 1H 		//015C 	0DAA
		ADDWFC 	2BH, 1H 		//015D 	0DAB

		//;NFB.C: 133: if(HTcnt>=50){
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

		//;NFB.C: 134: HTtimer = 1;
		MOVLB 	4H 			//016B 	1024
		LDWI 	1H 			//016C 	0001
		CLRF 	64H 			//016D 	11E4
		INCR 	64H, 1H 		//016E 	1AE4
		CLRF 	65H 			//016F 	11E5

		//;NFB.C: 135: HTtimecnt++;
		MOVLB 	3H 			//0170 	1023
		ADDWR 	65H, 1H 		//0171 	17E5
		LDWI 	0H 			//0172 	0000
		ADDWFC 	66H, 1H 		//0173 	0DE6
		ADDWFC 	67H, 1H 		//0174 	0DE7
		ADDWFC 	68H, 1H 		//0175 	0DE8

		//;NFB.C: 136: HTcnt = 0;
		MOVLB 	5H 			//0176 	1025
		CLRF 	28H 			//0177 	11A8
		CLRF 	29H 			//0178 	11A9
		CLRF 	2AH 			//0179 	11AA
		CLRF 	2BH 			//017A 	11AB

		//;NFB.C: 137: }
		//;NFB.C: 138: }
		//;NFB.C: 139: if(SmokeOn){
		MOVLB 	4H 			//017B 	1024
		LDR 	62H, 0H 			//017C 	1862
		IORWR 	63H, 0H 		//017D 	1463
		BTSC 	3H, 2H 			//017E 	2903
		LJUMP 	1A4H 			//017F 	39A4

		//;NFB.C: 140: Smokecnt++;
		LDWI 	1H 			//0180 	0001
		MOVLB 	5H 			//0181 	1025
		ADDWR 	24H, 1H 		//0182 	17A4
		LDWI 	0H 			//0183 	0000
		ADDWFC 	25H, 1H 		//0184 	0DA5
		ADDWFC 	26H, 1H 		//0185 	0DA6
		ADDWFC 	27H, 1H 		//0186 	0DA7

		//;NFB.C: 141: if(Smokecnt>=10){
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

		//;NFB.C: 142: Smoketimer = 1;
		MOVLB 	4H 			//0194 	1024
		LDWI 	1H 			//0195 	0001
		CLRF 	60H 			//0196 	11E0
		INCR 	60H, 1H 		//0197 	1AE0
		CLRF 	61H 			//0198 	11E1

		//;NFB.C: 143: Smoketimecnt++;
		MOVLB 	0H 			//0199 	1020
		ADDWR 	57H, 1H 		//019A 	17D7
		LDWI 	0H 			//019B 	0000
		ADDWFC 	58H, 1H 		//019C 	0DD8
		ADDWFC 	59H, 1H 		//019D 	0DD9
		ADDWFC 	5AH, 1H 		//019E 	0DDA

		//;NFB.C: 144: Smokecnt = 0;
		MOVLB 	5H 			//019F 	1025
		CLRF 	24H 			//01A0 	11A4
		CLRF 	25H 			//01A1 	11A5
		CLRF 	26H 			//01A2 	11A6
		CLRF 	27H 			//01A3 	11A7
		BCR 	7EH, 0H 			//01A4 	207E
		RETI 					//01A5 	1009
		MOVLP 	1H 			//01A6 	0181
		LJUMP 	1A8H 			//01A7 	39A8
		LDWI 	57H 			//01A8 	0057
		STR 	4H 			//01A9 	1084
		LDWI 	0H 			//01AA 	0000
		STR 	5H 			//01AB 	1085
		LDWI 	CH 			//01AC 	000C
		MOVLP 	5H 			//01AD 	0185
		LCALL 	589H 			//01AE 	3589
		MOVLP 	1H 			//01AF 	0181
		LDWI 	E5H 			//01B0 	00E5
		STR 	4H 			//01B1 	1084
		LDWI 	1H 			//01B2 	0001
		STR 	5H 			//01B3 	1085
		LDWI 	BH 			//01B4 	000B
		MOVLP 	5H 			//01B5 	0185
		LCALL 	589H 			//01B6 	3589
		MOVLP 	1H 			//01B7 	0181
		LDWI 	20H 			//01B8 	0020
		STR 	4H 			//01B9 	1084
		LDWI 	2H 			//01BA 	0002
		STR 	5H 			//01BB 	1085
		LDWI 	50H 			//01BC 	0050
		MOVLP 	5H 			//01BD 	0185
		LCALL 	589H 			//01BE 	3589
		MOVLP 	1H 			//01BF 	0181
		LDWI 	A0H 			//01C0 	00A0
		STR 	4H 			//01C1 	1084
		LDWI 	2H 			//01C2 	0002
		STR 	5H 			//01C3 	1085
		LDWI 	24H 			//01C4 	0024
		MOVLP 	5H 			//01C5 	0185
		LCALL 	589H 			//01C6 	3589
		BCR 	7EH, 0H 			//01C7 	207E
		MOVLB 	0H 			//01C8 	1020
		MOVLP 	1H 			//01C9 	0181
		LJUMP 	1CBH 			//01CA 	39CB

		//;NFB.C: 623: POWER_INITIAL();
		MOVLP 	4H 			//01CB 	0184
		LCALL 	4E5H 			//01CC 	34E5
		MOVLP 	1H 			//01CD 	0181

		//;NFB.C: 624: EEPROM_INIT();
		MOVLP 	1CH 			//01CE 	019C
		LCALL 	46DH 			//01CF 	346D
		MOVLP 	1H 			//01D0 	0181

		//;NFB.C: 625: UART_INITIAL();
		MOVLP 	5H 			//01D1 	0185
		LCALL 	521H 			//01D2 	3521
		MOVLP 	1H 			//01D3 	0181

		//;NFB.C: 626: IO_INT_INITIAL();
		MOVLP 	5H 			//01D4 	0185
		LCALL 	569H 			//01D5 	3569
		MOVLP 	1H 			//01D6 	0181

		//;NFB.C: 627: ADC_INITIAL();
		MOVLP 	5H 			//01D7 	0185
		LCALL 	534H 			//01D8 	3534
		MOVLP 	1H 			//01D9 	0181

		//;NFB.C: 628: OP0_INITIAL();
		MOVLP 	5H 			//01DA 	0185
		LCALL 	581H 			//01DB 	3581
		MOVLP 	1H 			//01DC 	0181

		//;NFB.C: 629: TIM2_INITIAL();
		MOVLP 	5H 			//01DD 	0185
		LCALL 	55AH 			//01DE 	355A
		MOVLP 	1H 			//01DF 	0181

		//;NFB.C: 630: INIT();
		MOVLP 	5H 			//01E0 	0185
		LCALL 	576H 			//01E1 	3576
		MOVLP 	1H 			//01E2 	0181

		//;NFB.C: 631: DelayMs(1000);
		LDWI 	E8H 			//01E3 	00E8
		MOVLB 	1H 			//01E4 	1021
		STR 	45H 			//01E5 	10C5
		LDWI 	3H 			//01E6 	0003
		STR 	46H 			//01E7 	10C6
		MOVLP 	1AH 			//01E8 	019A
		LCALL 	230H 			//01E9 	3230
		MOVLP 	1H 			//01EA 	0181

		//;NFB.C: 632: send((char*)"START\r\n",7);
		LDWI 	FCH 			//01EB 	00FC
		MOVLB 	1H 			//01EC 	1021
		STR 	4AH 			//01ED 	10CA
		LDWI 	A0H 			//01EE 	00A0
		STR 	4BH 			//01EF 	10CB
		LDWI 	7H 			//01F0 	0007
		STR 	4CH 			//01F1 	10CC
		CLRF 	4DH 			//01F2 	11CD
		MOVLP 	1AH 			//01F3 	019A
		LCALL 	20DH 			//01F4 	320D
		MOVLP 	1H 			//01F5 	0181

		//;NFB.C: 635: {
		//;NFB.C: 637: if(BTNtimer){
		MOVLB 	4H 			//01F6 	1024
		LDR 	68H, 0H 			//01F7 	1868
		IORWR 	69H, 0H 		//01F8 	1469
		BTSC 	3H, 2H 			//01F9 	2903
		LJUMP 	277H 			//01FA 	3A77
		LDWI 	1H 			//01FB 	0001

		//;NFB.C: 638: BTNtimer=0;
		CLRF 	68H 			//01FC 	11E8
		CLRF 	69H 			//01FD 	11E9

		//;NFB.C: 639: PowerOn = 1 - PowerOn;
		MOVLB 	1H 			//01FE 	1021
		STR 	59H 			//01FF 	10D9
		MOVLB 	4H 			//0200 	1024
		LDR 	6CH, 0H 			//0201 	186C
		MOVLB 	1H 			//0202 	1021
		SUBWR 	59H, 0H 		//0203 	1259
		MOVLB 	4H 			//0204 	1024
		STR 	6CH 			//0205 	10EC
		COMR 	6DH, 0H 		//0206 	196D
		BTSC 	3H, 0H 			//0207 	2803
		INCR 	9H, 1H 			//0208 	1A89
		STR 	6DH 			//0209 	10ED

		//;NFB.C: 640: if(PowerOn){
		LDR 	6CH, 0H 			//020A 	186C
		IORWR 	6DH, 0H 		//020B 	146D
		BTSC 	3H, 2H 			//020C 	2903
		LJUMP 	247H 			//020D 	3A47

		//;NFB.C: 641: send((char*)"P1\r\n",4);
		LDWI 	1DH 			//020E 	001D
		MOVLB 	1H 			//020F 	1021
		STR 	4AH 			//0210 	10CA
		LDWI 	A1H 			//0211 	00A1
		MOVLP 	FH 			//0212 	018F
		LCALL 	781H 			//0213 	3781
		MOVLP 	1H 			//0214 	0181
		MOVLP 	1AH 			//0215 	019A
		LCALL 	20DH 			//0216 	320D
		MOVLP 	1H 			//0217 	0181

		//;NFB.C: 642: PC1 = 0;
		MOVLB 	0H 			//0218 	1020
		BCR 	EH, 1H 			//0219 	208E

		//;NFB.C: 643: PB0 = 1;
		//;NFB.C: 644: DelayMs(500);
		MOVLP 	FH 			//021A 	018F
		LCALL 	753H 			//021B 	3753
		MOVLP 	1H 			//021C 	0181
		MOVLP 	1AH 			//021D 	019A
		LCALL 	230H 			//021E 	3230
		MOVLP 	1H 			//021F 	0181

		//;NFB.C: 645: PB0 = 0;
		MOVLB 	0H 			//0220 	1020
		BCR 	DH, 0H 			//0221 	200D

		//;NFB.C: 646: BatteryLevel();
		MOVLP 	1DH 			//0222 	019D
		LCALL 	52BH 			//0223 	352B
		MOVLP 	1H 			//0224 	0181

		//;NFB.C: 647: timeleft = 20;
		LDWI 	14H 			//0225 	0014
		MOVLB 	4H 			//0226 	1024
		STR 	4EH 			//0227 	10CE
		LDWI 	9H 			//0228 	0009
		CLRF 	4FH 			//0229 	11CF

		//;NFB.C: 648: timeleft1 = 9;
		STR 	4CH 			//022A 	10CC
		LDWI 	18H 			//022B 	0018
		CLRF 	4DH 			//022C 	11CD

		//;NFB.C: 649: send((char*)"H1\r\n",4);
		MOVLB 	1H 			//022D 	1021
		STR 	4AH 			//022E 	10CA
		LDWI 	A1H 			//022F 	00A1
		MOVLP 	FH 			//0230 	018F
		LCALL 	781H 			//0231 	3781
		MOVLP 	1H 			//0232 	0181
		MOVLP 	1AH 			//0233 	019A
		LCALL 	20DH 			//0234 	320D
		MOVLP 	1H 			//0235 	0181

		//;NFB.C: 650: HTOn = 1;
		MOVLB 	4H 			//0236 	1024
		CLRF 	66H 			//0237 	11E6
		INCR 	66H, 1H 		//0238 	1AE6
		CLRF 	67H 			//0239 	11E7

		//;NFB.C: 651: PA0 = 1;
		MOVLB 	0H 			//023A 	1020
		BSR 	CH, 0H 			//023B 	240C

		//;NFB.C: 652: HTcnt = 0;
		MOVLB 	5H 			//023C 	1025
		CLRF 	28H 			//023D 	11A8
		CLRF 	29H 			//023E 	11A9
		CLRF 	2AH 			//023F 	11AA
		CLRF 	2BH 			//0240 	11AB

		//;NFB.C: 653: HTtimecnt = 0;
		MOVLB 	3H 			//0241 	1023
		CLRF 	65H 			//0242 	11E5
		CLRF 	66H 			//0243 	11E6
		CLRF 	67H 			//0244 	11E7
		CLRF 	68H 			//0245 	11E8

		//;NFB.C: 654: } else{
		LJUMP 	277H 			//0246 	3A77

		//;NFB.C: 655: send((char*)"H0\r\n",4);
		MOVLP 	FH 			//0247 	018F
		LCALL 	797H 			//0248 	3797
		MOVLP 	1H 			//0249 	0181
		MOVLP 	FH 			//024A 	018F
		LCALL 	781H 			//024B 	3781
		MOVLP 	1H 			//024C 	0181
		MOVLP 	1AH 			//024D 	019A
		LCALL 	20DH 			//024E 	320D
		MOVLP 	1H 			//024F 	0181

		//;NFB.C: 656: HTOn = 0;
		//;NFB.C: 657: HTtimer = 0;
		//;NFB.C: 658: PA0 = 0;
		MOVLP 	FH 			//0250 	018F
		LCALL 	7C8H 			//0251 	37C8
		MOVLP 	1H 			//0252 	0181
		BCR 	CH, 0H 			//0253 	200C

		//;NFB.C: 659: send((char*)"S0\r\n",4);
		MOVLP 	FH 			//0254 	018F
		LCALL 	793H 			//0255 	3793
		MOVLP 	1H 			//0256 	0181
		MOVLP 	FH 			//0257 	018F
		LCALL 	781H 			//0258 	3781
		MOVLP 	1H 			//0259 	0181
		MOVLP 	1AH 			//025A 	019A
		LCALL 	20DH 			//025B 	320D
		MOVLP 	1H 			//025C 	0181

		//;NFB.C: 660: SmokeOn = 0;
		MOVLB 	4H 			//025D 	1024
		LDWI 	9H 			//025E 	0009

		//;NFB.C: 661: Smoketimer = 0;
		//;NFB.C: 662: PuffOn = 0;
		MOVLP 	FH 			//025F 	018F
		LCALL 	7BAH 			//0260 	37BA
		MOVLP 	1H 			//0261 	0181

		//;NFB.C: 663: send((char*)"P0\r\n",4);
		MOVLB 	1H 			//0262 	1021
		STR 	4AH 			//0263 	10CA
		LDWI 	A1H 			//0264 	00A1
		MOVLP 	FH 			//0265 	018F
		LCALL 	781H 			//0266 	3781
		MOVLP 	1H 			//0267 	0181
		MOVLP 	1AH 			//0268 	019A
		LCALL 	20DH 			//0269 	320D
		MOVLP 	1H 			//026A 	0181

		//;NFB.C: 664: PC1=1;
		MOVLB 	0H 			//026B 	1020
		BSR 	EH, 1H 			//026C 	248E

		//;NFB.C: 665: PB0 = 1;
		//;NFB.C: 666: DelayMs(500);
		MOVLP 	FH 			//026D 	018F
		LCALL 	753H 			//026E 	3753
		MOVLP 	1H 			//026F 	0181
		MOVLP 	1AH 			//0270 	019A
		LCALL 	230H 			//0271 	3230
		MOVLP 	1H 			//0272 	0181

		//;NFB.C: 667: PB0 = 0;
		MOVLB 	0H 			//0273 	1020

		//;NFB.C: 668: PA1=1;
		//;NFB.C: 669: PB2=1;
		//;NFB.C: 670: PB3=1;
		//;NFB.C: 671: PC1=1;
		//;NFB.C: 672: PB7=1;
		MOVLP 	5H 			//0274 	0185
		LCALL 	57AH 			//0275 	357A
		MOVLP 	1H 			//0276 	0181

		//;NFB.C: 673: }
		//;NFB.C: 674: }
		//;NFB.C: 675: if(HTtimer){
		MOVLB 	4H 			//0277 	1024
		LDR 	64H, 0H 			//0278 	1864
		IORWR 	65H, 0H 		//0279 	1465
		MOVLP 	AH 			//027A 	018A
		BTSC 	3H, 2H 			//027B 	2903
		LJUMP 	24FH 			//027C 	3A4F

		//;NFB.C: 676: HTtimer = 0;
		CLRF 	64H 			//027D 	11E4
		CLRF 	65H 			//027E 	11E5

		//;NFB.C: 677: if(PA0){
		MOVLB 	0H 			//027F 	1020
		BTSS 	CH, 0H 			//0280 	2C0C
		LJUMP 	59H 			//0281 	3859

		//;NFB.C: 678: HTVP_ = GET_ADC_DATA(2);
		LDWI 	2H 			//0282 	0002
		MOVLP 	1EH 			//0283 	019E
		LCALL 	648H 			//0284 	3648
		MOVLP 	1H 			//0285 	0181
		MOVLP 	FH 			//0286 	018F
		LCALL 	7ABH 			//0287 	37AB
		MOVLP 	1H 			//0288 	0181

		//;NFB.C: 679: for(int i=0;i<4;i++){
		CLRF 	56H 			//0289 	11D6
		CLRF 	57H 			//028A 	11D7
		LDR 	57H, 0H 			//028B 	1857
		MOVLP 	FH 			//028C 	018F
		LCALL 	727H 			//028D 	3727
		MOVLP 	1H 			//028E 	0181
		BTSS 	3H, 2H 			//028F 	2D03
		LJUMP 	294H 			//0290 	3A94
		LDWI 	4H 			//0291 	0004
		MOVLB 	3H 			//0292 	1023
		SUBWR 	56H, 0H 		//0293 	1256
		BTSC 	3H, 0H 			//0294 	2803
		LJUMP 	2ABH 			//0295 	3AAB

		//;NFB.C: 680: HTVP_ = (HTVP_+GET_ADC_DATA(2))/2;
		LDWI 	2H 			//0296 	0002
		MOVLP 	1EH 			//0297 	019E
		LCALL 	648H 			//0298 	3648
		MOVLP 	1H 			//0299 	0181
		MOVLB 	3H 			//029A 	1023
		LDR 	6EH, 0H 			//029B 	186E
		MOVLB 	1H 			//029C 	1021
		ADDWR 	45H, 0H 		//029D 	1745
		STR 	59H 			//029E 	10D9
		MOVLB 	3H 			//029F 	1023
		LDR 	6FH, 0H 			//02A0 	186F
		MOVLP 	FH 			//02A1 	018F
		LCALL 	720H 			//02A2 	3720
		MOVLP 	1H 			//02A3 	0181
		MOVLP 	FH 			//02A4 	018F
		LCALL 	7B3H 			//02A5 	37B3
		MOVLP 	1H 			//02A6 	0181
		INCR 	56H, 1H 		//02A7 	1AD6
		BTSC 	3H, 2H 			//02A8 	2903
		INCR 	57H, 1H 		//02A9 	1AD7
		LJUMP 	28BH 			//02AA 	3A8B

		//;NFB.C: 681: }
		//;NFB.C: 682: HTVN_ = GET_ADC_DATA(1);
		LDWI 	1H 			//02AB 	0001
		MOVLP 	1EH 			//02AC 	019E
		LCALL 	648H 			//02AD 	3648
		MOVLP 	1H 			//02AE 	0181

		//;NFB.C: 683: for(int i=0;i<4;i++){
		MOVLP 	FH 			//02AF 	018F
		LCALL 	786H 			//02B0 	3786
		MOVLP 	1H 			//02B1 	0181
		CLRF 	58H 			//02B2 	11D8
		CLRF 	59H 			//02B3 	11D9
		LDR 	59H, 0H 			//02B4 	1859
		MOVLP 	FH 			//02B5 	018F
		LCALL 	727H 			//02B6 	3727
		MOVLP 	1H 			//02B7 	0181
		BTSS 	3H, 2H 			//02B8 	2D03
		LJUMP 	2BDH 			//02B9 	3ABD
		LDWI 	4H 			//02BA 	0004
		MOVLB 	3H 			//02BB 	1023
		SUBWR 	58H, 0H 		//02BC 	1258
		BTSC 	3H, 0H 			//02BD 	2803
		LJUMP 	2D4H 			//02BE 	3AD4

		//;NFB.C: 684: HTVN_ = (HTVN_+GET_ADC_DATA(1))/2;
		LDWI 	1H 			//02BF 	0001
		MOVLP 	1EH 			//02C0 	019E
		LCALL 	648H 			//02C1 	3648
		MOVLP 	1H 			//02C2 	0181
		MOVLB 	0H 			//02C3 	1020
		LDR 	61H, 0H 			//02C4 	1861
		MOVLB 	1H 			//02C5 	1021
		ADDWR 	45H, 0H 		//02C6 	1745
		STR 	59H 			//02C7 	10D9
		MOVLB 	0H 			//02C8 	1020
		LDR 	62H, 0H 			//02C9 	1862
		MOVLP 	FH 			//02CA 	018F
		LCALL 	720H 			//02CB 	3720
		MOVLP 	1H 			//02CC 	0181
		MOVLP 	FH 			//02CD 	018F
		LCALL 	7A3H 			//02CE 	37A3
		MOVLP 	1H 			//02CF 	0181
		INCR 	58H, 1H 		//02D0 	1AD8
		BTSC 	3H, 2H 			//02D1 	2903
		INCR 	59H, 1H 		//02D2 	1AD9
		LJUMP 	2B4H 			//02D3 	3AB4

		//;NFB.C: 685: }
		//;NFB.C: 686: HTVI_ = GET_ADC_DATA(4);
		LDWI 	4H 			//02D4 	0004
		MOVLP 	1EH 			//02D5 	019E
		LCALL 	648H 			//02D6 	3648
		MOVLP 	1H 			//02D7 	0181

		//;NFB.C: 687: for(int i=0;i<4;i++){
		MOVLP 	FH 			//02D8 	018F
		LCALL 	766H 			//02D9 	3766
		MOVLP 	1H 			//02DA 	0181
		CLRF 	5AH 			//02DB 	11DA
		CLRF 	5BH 			//02DC 	11DB
		LDR 	5BH, 0H 			//02DD 	185B
		MOVLP 	FH 			//02DE 	018F
		LCALL 	727H 			//02DF 	3727
		MOVLP 	1H 			//02E0 	0181
		BTSS 	3H, 2H 			//02E1 	2D03
		LJUMP 	2E6H 			//02E2 	3AE6
		LDWI 	4H 			//02E3 	0004
		MOVLB 	3H 			//02E4 	1023
		SUBWR 	5AH, 0H 		//02E5 	125A
		MOVLP 	8H 			//02E6 	0188
		BTSC 	3H, 0H 			//02E7 	2803
		LJUMP 	2H 			//02E8 	3802

		//;NFB.C: 688: HTVI_ = (HTVI_+GET_ADC_DATA(4))/2;
		LDWI 	4H 			//02E9 	0004
		MOVLP 	1EH 			//02EA 	019E
		LCALL 	648H 			//02EB 	3648
		MOVLP 	1H 			//02EC 	0181
		MOVLB 	4H 			//02ED 	1024
		LDR 	6EH, 0H 			//02EE 	186E
		MOVLB 	1H 			//02EF 	1021
		ADDWR 	45H, 0H 		//02F0 	1745
		STR 	59H 			//02F1 	10D9
		MOVLB 	4H 			//02F2 	1024
		LDR 	6FH, 0H 			//02F3 	186F
		MOVLP 	FH 			//02F4 	018F
		LCALL 	720H 			//02F5 	3720
		MOVLP 	1H 			//02F6 	0181
		MOVLP 	FH 			//02F7 	018F
		LCALL 	79BH 			//02F8 	379B
		MOVLP 	1H 			//02F9 	0181
		INCR 	5AH, 1H 		//02FA 	1ADA
		BTSC 	3H, 2H 			//02FB 	2903
		INCR 	5BH, 1H 		//02FC 	1ADB
		LJUMP 	2DDH 			//02FD 	3ADD
		STR 	7DH 			//02FE 	10FD
		LDR 	7DH, 0H 			//02FF 	187D
		BTSC 	3H, 2H 			//0300 	2903
		RETW 	0H 			//0301 	0400
		LDR 	7DH, 0H 			//0302 	187D
		STR 	6H 			//0303 	1086
		LDWI 	2H 			//0304 	0002
		STR 	7H 			//0305 	1087
		LDR 	1H, 0H 			//0306 	1801
		BTSC 	3H, 2H 			//0307 	2903
		RETW 	0H 			//0308 	0400
		LDR 	7CH, 0H 			//0309 	187C
		STR 	76H 			//030A 	10F6
		LDR 	7BH, 0H 			//030B 	187B
		STR 	75H 			//030C 	10F5
		LDR 	7CH, 0H 			//030D 	187C
		STR 	71H 			//030E 	10F1
		LDR 	7BH, 0H 			//030F 	187B
		STR 	70H 			//0310 	10F0
		LCALL 	36BH 			//0311 	336B
		MOVLP 	2H 			//0312 	0182
		LDR 	71H, 0H 			//0313 	1871
		STR 	78H 			//0314 	10F8
		LDR 	70H, 0H 			//0315 	1870
		STR 	77H 			//0316 	10F7
		LDR 	7DH, 0H 			//0317 	187D
		LCALL 	340H 			//0318 	3340
		MOVLP 	2H 			//0319 	0182
		LDR 	75H, 0H 			//031A 	1875
		IORWR 	76H, 0H 		//031B 	1476
		BTSS 	3H, 2H 			//031C 	2D03
		LJUMP 	320H 			//031D 	3B20
		LDR 	7DH, 0H 			//031E 	187D
		RET 					//031F 	1008
		LDR 	7BH, 0H 			//0320 	187B
		STR 	4H 			//0321 	1084
		LDR 	7CH, 0H 			//0322 	187C
		STR 	5H 			//0323 	1085
		LDR 	0H, 0H 			//0324 	1800
		STR 	70H 			//0325 	10F0
		CLRF 	71H 			//0326 	11F1
		LDR 	7DH, 0H 			//0327 	187D
		ADDWI 	1H 			//0328 	0E01
		LCALL 	32CH 			//0329 	332C
		MOVLP 	2H 			//032A 	0182
		LJUMP 	2FEH 			//032B 	3AFE
		STR 	72H 			//032C 	10F2
		LDR 	72H, 0H 			//032D 	1872
		STR 	6H 			//032E 	1086
		LDWI 	2H 			//032F 	0002
		STR 	7H 			//0330 	1087
		LDR 	1H, 0H 			//0331 	1801
		XORWR 	70H, 0H 		//0332 	1670
		BTSS 	3H, 2H 			//0333 	2D03
		LJUMP 	337H 			//0334 	3B37
		LDR 	72H, 0H 			//0335 	1872
		RET 					//0336 	1008
		LDR 	72H, 0H 			//0337 	1872
		STR 	6H 			//0338 	1086
		LDWI 	2H 			//0339 	0002
		STR 	7H 			//033A 	1087
		INCR 	72H, 1H 		//033B 	1AF2
		LDR 	1H, 0H 			//033C 	1801
		BTSC 	3H, 2H 			//033D 	2903
		RETW 	0H 			//033E 	0400
		LJUMP 	32DH 			//033F 	3B2D
		STR 	7AH 			//0340 	10FA
		LDWI 	1H 			//0341 	0001
		SUBWR 	77H, 1H 		//0342 	12F7
		LDWI 	0H 			//0343 	0000
		SUBWFB 	78H, 1H 		//0344 	0BF8
		INCRSZ 	77H, 0H 		//0345 	1F77
		LJUMP 	34AH 			//0346 	3B4A
		INCR 	78H, 0H 		//0347 	1A78
		BTSC 	3H, 2H 			//0348 	2903
		LJUMP 	368H 			//0349 	3B68
		LDR 	7AH, 0H 			//034A 	187A
		LCALL 	3CEH 			//034B 	33CE
		MOVLP 	2H 			//034C 	0182
		BTSC 	3H, 2H 			//034D 	2903
		LJUMP 	358H 			//034E 	3B58
		LCALL 	381H 			//034F 	3381
		MOVLP 	2H 			//0350 	0182
		STR 	79H 			//0351 	10F9
		LDR 	7AH, 0H 			//0352 	187A
		STR 	6H 			//0353 	1086
		LDR 	1H, 0H 			//0354 	1801
		XORWR 	79H, 0H 		//0355 	1679
		BTSC 	3H, 2H 			//0356 	2903
		LJUMP 	363H 			//0357 	3B63
		LDR 	7AH, 0H 			//0358 	187A
		STR 	6H 			//0359 	1086
		LDWI 	2H 			//035A 	0002
		STR 	7H 			//035B 	1087
		LCALL 	381H 			//035C 	3381
		SUBWR 	1H, 0H 		//035D 	1201
		STR 	75H 			//035E 	10F5
		CLRF 	76H 			//035F 	11F6
		BTSS 	3H, 0H 			//0360 	2C03
		DECR 	76H, 1H 		//0361 	13F6
		RET 					//0362 	1008
		INCR 	7AH, 1H 		//0363 	1AFA
		INCR 	75H, 1H 		//0364 	1AF5
		BTSC 	3H, 2H 			//0365 	2903
		INCR 	76H, 1H 		//0366 	1AF6
		LJUMP 	341H 			//0367 	3B41
		CLRF 	75H 			//0368 	11F5
		CLRF 	76H 			//0369 	11F6
		RET 					//036A 	1008
		LDR 	71H, 0H 			//036B 	1871
		STR 	74H 			//036C 	10F4
		LDR 	70H, 0H 			//036D 	1870
		STR 	73H 			//036E 	10F3
		LDR 	73H, 0H 			//036F 	1873
		STR 	4H 			//0370 	1084
		LDR 	74H, 0H 			//0371 	1874
		STR 	5H 			//0372 	1085
		MOVIW 	FSR0++ 		//0373 	1012
		BTSC 	3H, 2H 			//0374 	2903
		LJUMP 	37AH 			//0375 	3B7A
		INCR 	73H, 1H 		//0376 	1AF3
		BTSC 	3H, 2H 			//0377 	2903
		INCR 	74H, 1H 		//0378 	1AF4
		LJUMP 	36FH 			//0379 	3B6F
		LDR 	70H, 0H 			//037A 	1870
		SUBWR 	73H, 0H 		//037B 	1273
		STR 	70H 			//037C 	10F0
		LDR 	71H, 0H 			//037D 	1871
		SUBWFB 	74H, 0H 		//037E 	0B74
		STR 	71H 			//037F 	10F1
		RET 					//0380 	1008
		LDR 	75H, 0H 			//0381 	1875
		STR 	4H 			//0382 	1084
		LDR 	76H, 0H 			//0383 	1876
		STR 	5H 			//0384 	1085
		LDR 	0H, 0H 			//0385 	1800
		RET 					//0386 	1008
		MOVLB 	0H 			//0387 	1020
		STR 	24H 			//0388 	10A4

		//;NFB.C: 68: int res = 0;
		CLRF 	20H 			//0389 	11A0
		CLRF 	21H 			//038A 	11A1

		//;NFB.C: 69: for (int i = 0; arr[i] != '\0'; ++i){
		CLRF 	22H 			//038B 	11A2
		CLRF 	23H 			//038C 	11A3
		LDR 	22H, 0H 			//038D 	1822
		ADDWR 	24H, 0H 		//038E 	1724
		STR 	78H 			//038F 	10F8
		LCALL 	3CEH 			//0390 	33CE
		MOVLP 	2H 			//0391 	0182
		BTSC 	3H, 2H 			//0392 	2903
		LJUMP 	3B4H 			//0393 	3BB4

		//;NFB.C: 70: res = (res * 10) + (arr[i] - '0');
		LDR 	22H, 0H 			//0394 	1822
		ADDWR 	24H, 0H 		//0395 	1724
		STR 	78H 			//0396 	10F8
		STR 	6H 			//0397 	1086
		LDR 	1H, 0H 			//0398 	1801
		STR 	79H 			//0399 	10F9
		CLRF 	7AH 			//039A 	11FA
		LDR 	21H, 0H 			//039B 	1821
		STR 	71H 			//039C 	10F1
		LDR 	20H, 0H 			//039D 	1820
		STR 	70H 			//039E 	10F0
		LDWI 	AH 			//039F 	000A
		STR 	72H 			//03A0 	10F2
		CLRF 	73H 			//03A1 	11F3
		LCALL 	3B9H 			//03A2 	33B9
		MOVLP 	2H 			//03A3 	0182
		LDR 	79H, 0H 			//03A4 	1879
		ADDWR 	70H, 0H 		//03A5 	1770
		STR 	7BH 			//03A6 	10FB
		LDR 	7AH, 0H 			//03A7 	187A
		ADDWFC 	71H, 0H 		//03A8 	0D71
		STR 	7CH 			//03A9 	10FC
		LDR 	7BH, 0H 			//03AA 	187B
		ADDWI 	D0H 			//03AB 	0ED0
		STR 	20H 			//03AC 	10A0
		LDWI 	FFH 			//03AD 	00FF
		ADDWFC 	7CH, 0H 		//03AE 	0D7C
		STR 	21H 			//03AF 	10A1
		INCR 	22H, 1H 		//03B0 	1AA2
		BTSC 	3H, 2H 			//03B1 	2903
		INCR 	23H, 1H 		//03B2 	1AA3
		LJUMP 	38DH 			//03B3 	3B8D

		//;NFB.C: 71: }
		//;NFB.C: 72: return res;
		LDR 	21H, 0H 			//03B4 	1821
		STR 	77H 			//03B5 	10F7
		LDR 	20H, 0H 			//03B6 	1820
		STR 	76H 			//03B7 	10F6
		RET 					//03B8 	1008
		CLRF 	74H 			//03B9 	11F4
		CLRF 	75H 			//03BA 	11F5
		BTSS 	70H, 0H 		//03BB 	2C70
		LJUMP 	3C1H 			//03BC 	3BC1
		LDR 	72H, 0H 			//03BD 	1872
		ADDWR 	74H, 1H 		//03BE 	17F4
		LDR 	73H, 0H 			//03BF 	1873
		ADDWFC 	75H, 1H 		//03C0 	0DF5
		LSLF 	72H, 1H 		//03C1 	05F2
		RLR 	73H, 1H 			//03C2 	1DF3
		LSRF 	71H, 1H 		//03C3 	06F1
		RRR 	70H, 1H 			//03C4 	1CF0
		LDR 	70H, 0H 			//03C5 	1870
		IORWR 	71H, 0H 		//03C6 	1471
		BTSS 	3H, 2H 			//03C7 	2D03
		LJUMP 	3BBH 			//03C8 	3BBB
		LDR 	75H, 0H 			//03C9 	1875
		STR 	71H 			//03CA 	10F1
		LDR 	74H, 0H 			//03CB 	1874
		STR 	70H 			//03CC 	10F0
		RET 					//03CD 	1008
		STR 	6H 			//03CE 	1086
		LDWI 	2H 			//03CF 	0002
		STR 	7H 			//03D0 	1087
		LDR 	1H, 0H 			//03D1 	1801
		RET 					//03D2 	1008
		LDWI 	2DH 			//03D3 	002D
		STR 	6H 			//03D4 	1086
		CLRF 	7H 			//03D5 	1187
		MOVIW 	0H[1] 			//03D6 	0F40
		MOVLB 	0H 			//03D7 	1020
		STR 	33H 			//03D8 	10B3
		MOVIW 	1H[1] 			//03D9 	0F41
		STR 	34H 			//03DA 	10B4
		MOVIW 	2H[1] 			//03DB 	0F42
		STR 	35H 			//03DC 	10B5
		MOVIW 	3H[1] 			//03DD 	0F43
		STR 	36H 			//03DE 	10B6
		BCR 	3H, 0H 			//03DF 	2003
		RLR 	35H, 0H 			//03E0 	1D35
		RLR 	36H, 0H 			//03E1 	1D36
		STR 	40H 			//03E2 	10C0
		LDR 	40H, 0H 			//03E3 	1840
		BTSS 	3H, 2H 			//03E4 	2D03
		LJUMP 	3EBH 			//03E5 	3BEB
		CLRF 	2DH 			//03E6 	11AD
		CLRF 	2EH 			//03E7 	11AE
		CLRF 	2FH 			//03E8 	11AF
		CLRF 	30H 			//03E9 	11B0
		RET 					//03EA 	1008
		LDWI 	30H 			//03EB 	0030
		LCALL 	47BH 			//03EC 	347B
		MOVLP 	3H 			//03ED 	0183
		BCR 	3H, 0H 			//03EE 	2003
		RLR 	35H, 0H 			//03EF 	1D35
		RLR 	36H, 0H 			//03F0 	1D36
		STR 	3FH 			//03F1 	10BF
		LDR 	3FH, 0H 			//03F2 	183F
		BTSC 	3H, 2H 			//03F3 	2903
		LJUMP 	3E6H 			//03F4 	3BE6
		LDWI 	2DH 			//03F5 	002D
		STR 	6H 			//03F6 	1086
		LDWI 	80H 			//03F7 	0080
		ADDFSR 	1H, 1H 		//03F8 	0141
		ADDFSR 	1H, 1H 		//03F9 	0141
		IORWR 	1H, 1H 		//03FA 	1481
		LDWI 	2DH 			//03FB 	002D
		ADDFSR 	1H, 1H 		//03FC 	0141
		STR 	6H 			//03FD 	1086
		LDWI 	30H 			//03FE 	0030
		LCALL 	486H 			//03FF 	3486
		MOVLP 	3H 			//0400 	0183
		STR 	6H 			//0401 	1086
		LDWI 	80H 			//0402 	0080
		CLRF 	7H 			//0403 	1187
		ADDFSR 	1H, 1H 		//0404 	0141
		ADDFSR 	1H, 1H 		//0405 	0141
		IORWR 	1H, 1H 		//0406 	1481
		LDWI 	30H 			//0407 	0030
		ADDFSR 	1H, 1H 		//0408 	0141
		STR 	6H 			//0409 	1086
		LDWI 	7FH 			//040A 	007F
		LCALL 	486H 			//040B 	3486
		MOVLP 	3H 			//040C 	0183
		CLRF 	3BH 			//040D 	11BB
		CLRF 	3CH 			//040E 	11BC
		CLRF 	3DH 			//040F 	11BD
		CLRF 	3EH 			//0410 	11BE
		SUBWR 	40H, 1H 		//0411 	12C0
		LDWI 	A0H 			//0412 	00A0
		ADDWR 	3FH, 0H 		//0413 	173F
		STR 	33H 			//0414 	10B3
		SUBWR 	40H, 1H 		//0415 	12C0
		LDWI 	20H 			//0416 	0020
		STR 	3FH 			//0417 	10BF
		LDWI 	30H 			//0418 	0030
		LSLF 	3BH, 1H 		//0419 	05BB
		RLR 	3CH, 1H 			//041A 	1DBC
		RLR 	3DH, 1H 			//041B 	1DBD
		RLR 	3EH, 1H 			//041C 	1DBE
		LCALL 	47BH 			//041D 	347B
		MOVLP 	3H 			//041E 	0183
		LDWI 	2DH 			//041F 	002D
		STR 	6H 			//0420 	1086
		MOVIW 	0H[1] 			//0421 	0F40
		STR 	37H 			//0422 	10B7
		MOVIW 	1H[1] 			//0423 	0F41
		STR 	38H 			//0424 	10B8
		MOVIW 	2H[1] 			//0425 	0F42
		STR 	39H 			//0426 	10B9
		MOVIW 	3H[1] 			//0427 	0F43
		STR 	3AH 			//0428 	10BA
		LDR 	36H, 0H 			//0429 	1836
		SUBWR 	3AH, 0H 		//042A 	123A
		BTSS 	3H, 2H 			//042B 	2D03
		LJUMP 	437H 			//042C 	3C37
		LDR 	35H, 0H 			//042D 	1835
		SUBWR 	39H, 0H 		//042E 	1239
		BTSS 	3H, 2H 			//042F 	2D03
		LJUMP 	437H 			//0430 	3C37
		LDR 	34H, 0H 			//0431 	1834
		SUBWR 	38H, 0H 		//0432 	1238
		BTSS 	3H, 2H 			//0433 	2D03
		LJUMP 	437H 			//0434 	3C37
		LDR 	33H, 0H 			//0435 	1833
		SUBWR 	37H, 0H 		//0436 	1237
		BTSS 	3H, 0H 			//0437 	2C03
		LJUMP 	44BH 			//0438 	3C4B
		LDWI 	30H 			//0439 	0030
		LCALL 	47BH 			//043A 	347B
		MOVLP 	3H 			//043B 	0183
		LDWI 	2DH 			//043C 	002D
		STR 	6H 			//043D 	1086
		LDR 	33H, 0H 			//043E 	1833
		SUBWR 	1H, 1H 		//043F 	1281
		ADDFSR 	1H, 1H 		//0440 	0141
		LDR 	34H, 0H 			//0441 	1834
		SUBWFB 	1H, 1H 		//0442 	0B81
		ADDFSR 	1H, 1H 		//0443 	0141
		LDR 	35H, 0H 			//0444 	1835
		SUBWFB 	1H, 1H 		//0445 	0B81
		ADDFSR 	1H, 1H 		//0446 	0141
		LDR 	36H, 0H 			//0447 	1836
		SUBWFB 	1H, 1H 		//0448 	0B81
		ADDFSR 	1H, 3DH 		//0449 	017D
		BSR 	3BH, 0H 			//044A 	243B
		LDWI 	2DH 			//044B 	002D
		STR 	6H 			//044C 	1086
		CLRF 	7H 			//044D 	1187
		LSLF 	1H, 1H 			//044E 	0581
		ADDFSR 	1H, 1H 		//044F 	0141
		RLR 	1H, 1H 			//0450 	1D81
		ADDFSR 	1H, 1H 		//0451 	0141
		RLR 	1H, 1H 			//0452 	1D81
		ADDFSR 	1H, 1H 		//0453 	0141
		RLR 	1H, 1H 			//0454 	1D81
		DECRSZ 	3FH, 1H 		//0455 	1BBF
		LJUMP 	418H 			//0456 	3C18
		BTSS 	40H, 7H 		//0457 	2FC0
		LJUMP 	465H 			//0458 	3C65
		LDR 	40H, 0H 			//0459 	1840
		XORWI 	80H 			//045A 	0A80
		ADDWI 	9FH 			//045B 	0E9F
		BTSS 	3H, 0H 			//045C 	2C03
		LJUMP 	3E6H 			//045D 	3BE6
		LSRF 	3EH, 1H 		//045E 	06BE
		RRR 	3DH, 1H 			//045F 	1CBD
		RRR 	3CH, 1H 			//0460 	1CBC
		RRR 	3BH, 1H 			//0461 	1CBB
		INCRSZ 	40H, 1H 		//0462 	1FC0
		LJUMP 	45EH 			//0463 	3C5E
		LJUMP 	472H 			//0464 	3C72
		LDWI 	20H 			//0465 	0020
		SUBWR 	40H, 0H 		//0466 	1240
		BTSC 	3H, 0H 			//0467 	2803
		LJUMP 	3E6H 			//0468 	3BE6
		LDR 	40H, 0H 			//0469 	1840
		BTSC 	3H, 2H 			//046A 	2903
		LJUMP 	472H 			//046B 	3C72
		LSLF 	3BH, 1H 		//046C 	05BB
		RLR 	3CH, 1H 			//046D 	1DBC
		RLR 	3DH, 1H 			//046E 	1DBD
		RLR 	3EH, 1H 			//046F 	1DBE
		DECR 	40H, 1H 		//0470 	13C0
		LJUMP 	469H 			//0471 	3C69
		LDR 	3EH, 0H 			//0472 	183E
		STR 	30H 			//0473 	10B0
		LDR 	3DH, 0H 			//0474 	183D
		STR 	2FH 			//0475 	10AF
		LDR 	3CH, 0H 			//0476 	183C
		STR 	2EH 			//0477 	10AE
		LDR 	3BH, 0H 			//0478 	183B
		STR 	2DH 			//0479 	10AD
		RET 					//047A 	1008
		STR 	6H 			//047B 	1086
		CLRF 	7H 			//047C 	1187
		MOVIW 	0H[1] 			//047D 	0F40
		STR 	33H 			//047E 	10B3
		MOVIW 	1H[1] 			//047F 	0F41
		STR 	34H 			//0480 	10B4
		MOVIW 	2H[1] 			//0481 	0F42
		STR 	35H 			//0482 	10B5
		MOVIW 	3H[1] 			//0483 	0F43
		STR 	36H 			//0484 	10B6
		RET 					//0485 	1008
		CLRF 	7H 			//0486 	1187
		ADDFSR 	1H, 1H 		//0487 	0141
		ADDFSR 	1H, 1H 		//0488 	0141
		ADDFSR 	1H, 1H 		//0489 	0141
		CLRF 	1H 			//048A 	1181
		RET 					//048B 	1008
		CLRF 	7DH 			//048C 	11FD
		BTSS 	26H, 7H 		//048D 	2FA6
		LJUMP 	496H 			//048E 	3C96
		COMR 	25H, 1H 		//048F 	19A5
		COMR 	26H, 1H 		//0490 	19A6
		INCR 	25H, 1H 		//0491 	1AA5
		BTSC 	3H, 2H 			//0492 	2903
		INCR 	26H, 1H 		//0493 	1AA6
		CLRF 	7DH 			//0494 	11FD
		INCR 	7DH, 1H 		//0495 	1AFD
		LDR 	25H, 0H 			//0496 	1825
		STR 	70H 			//0497 	10F0
		LDR 	26H, 0H 			//0498 	1826
		STR 	71H 			//0499 	10F1
		LDWI 	8EH 			//049A 	008E
		CLRF 	72H 			//049B 	11F2
		STR 	73H 			//049C 	10F3
		LDR 	7DH, 0H 			//049D 	187D
		STR 	74H 			//049E 	10F4
		LCALL 	4A7H 			//049F 	34A7
		LDR 	70H, 0H 			//04A0 	1870
		STR 	25H 			//04A1 	10A5
		LDR 	71H, 0H 			//04A2 	1871
		STR 	26H 			//04A3 	10A6
		LDR 	72H, 0H 			//04A4 	1872
		STR 	27H 			//04A5 	10A7
		RET 					//04A6 	1008
		LDR 	73H, 0H 			//04A7 	1873
		BTSC 	3H, 2H 			//04A8 	2903
		LJUMP 	4AFH 			//04A9 	3CAF
		LDR 	72H, 0H 			//04AA 	1872
		IORWR 	71H, 0H 		//04AB 	1471
		IORWR 	70H, 0H 		//04AC 	1470
		BTSS 	3H, 2H 			//04AD 	2D03
		LJUMP 	4B7H 			//04AE 	3CB7
		CLRF 	70H 			//04AF 	11F0
		CLRF 	71H 			//04B0 	11F1
		CLRF 	72H 			//04B1 	11F2
		RET 					//04B2 	1008
		INCR 	73H, 1H 		//04B3 	1AF3
		LSRF 	72H, 1H 		//04B4 	06F2
		RRR 	71H, 1H 			//04B5 	1CF1
		RRR 	70H, 1H 			//04B6 	1CF0
		LDWI 	FEH 			//04B7 	00FE
		ANDWR 	72H, 0H 		//04B8 	1572
		BTSC 	3H, 2H 			//04B9 	2903
		LJUMP 	4C5H 			//04BA 	3CC5
		LJUMP 	4B3H 			//04BB 	3CB3
		INCR 	73H, 1H 		//04BC 	1AF3
		INCR 	70H, 1H 		//04BD 	1AF0
		BTSC 	3H, 2H 			//04BE 	2903
		INCR 	71H, 1H 		//04BF 	1AF1
		BTSC 	3H, 2H 			//04C0 	2903
		INCR 	72H, 1H 		//04C1 	1AF2
		LSRF 	72H, 1H 		//04C2 	06F2
		RRR 	71H, 1H 			//04C3 	1CF1
		RRR 	70H, 1H 			//04C4 	1CF0
		LDWI 	FFH 			//04C5 	00FF
		ANDWR 	72H, 0H 		//04C6 	1572
		BTSC 	3H, 2H 			//04C7 	2903
		LJUMP 	4D2H 			//04C8 	3CD2
		LJUMP 	4BCH 			//04C9 	3CBC
		LDWI 	2H 			//04CA 	0002
		SUBWR 	73H, 0H 		//04CB 	1273
		BTSS 	3H, 0H 			//04CC 	2C03
		LJUMP 	4D4H 			//04CD 	3CD4
		DECR 	73H, 1H 		//04CE 	13F3
		LSLF 	70H, 1H 		//04CF 	05F0
		RLR 	71H, 1H 			//04D0 	1DF1
		RLR 	72H, 1H 			//04D1 	1DF2
		BTSS 	71H, 7H 		//04D2 	2FF1
		LJUMP 	4CAH 			//04D3 	3CCA
		BTSS 	73H, 0H 		//04D4 	2C73
		BCR 	71H, 7H 			//04D5 	23F1
		LSRF 	73H, 1H 		//04D6 	06F3
		LDR 	73H, 0H 			//04D7 	1873
		STR 	77H 			//04D8 	10F7
		CLRF 	76H 			//04D9 	11F6
		CLRF 	75H 			//04DA 	11F5
		LDR 	75H, 0H 			//04DB 	1875
		IORWR 	70H, 1H 		//04DC 	14F0
		LDR 	76H, 0H 			//04DD 	1876
		IORWR 	71H, 1H 		//04DE 	14F1
		LDR 	77H, 0H 			//04DF 	1877
		IORWR 	72H, 1H 		//04E0 	14F2
		LDR 	74H, 0H 			//04E1 	1874
		BTSS 	3H, 2H 			//04E2 	2D03
		BSR 	72H, 7H 			//04E3 	27F2
		RET 					//04E4 	1008

		//;NFB.C: 157: OSCCON=0B01110001;
		LDWI 	71H 			//04E5 	0071
		MOVLB 	1H 			//04E6 	1021
		STR 	19H 			//04E7 	1099

		//;NFB.C: 159: INTCON=0;
		CLRF 	BH 			//04E8 	118B

		//;NFB.C: 161: PORTA=0B00000000;
		MOVLB 	0H 			//04E9 	1020
		CLRF 	CH 			//04EA 	118C

		//;NFB.C: 162: PORTB=0B00000000;
		CLRF 	DH 			//04EB 	118D

		//;NFB.C: 163: PORTC=0B00000000;
		CLRF 	EH 			//04EC 	118E

		//;NFB.C: 165: WPUA=0B00000000;
		MOVLB 	3H 			//04ED 	1023
		CLRF 	CH 			//04EE 	118C

		//;NFB.C: 166: WPUB=0B00010000;
		LDWI 	10H 			//04EF 	0010
		STR 	DH 			//04F0 	108D

		//;NFB.C: 167: WPUC=0B00000000;
		CLRF 	EH 			//04F1 	118E

		//;NFB.C: 169: WPDA=0B00000000;
		MOVLB 	4H 			//04F2 	1024
		CLRF 	CH 			//04F3 	118C

		//;NFB.C: 170: WPDB=0B00000000;
		CLRF 	DH 			//04F4 	118D

		//;NFB.C: 171: WPDC=0B00000000;
		CLRF 	EH 			//04F5 	118E

		//;NFB.C: 173: TRISA=0B11111100;
		LDWI 	FCH 			//04F6 	00FC
		MOVLB 	1H 			//04F7 	1021
		STR 	CH 			//04F8 	108C

		//;NFB.C: 174: TRISB=0B00110010;
		LDWI 	32H 			//04F9 	0032
		STR 	DH 			//04FA 	108D

		//;NFB.C: 175: TRISC=0B00000001;
		LDWI 	1H 			//04FB 	0001
		STR 	EH 			//04FC 	108E

		//;NFB.C: 177: PSRC0=0B11111111;
		LDWI 	FFH 			//04FD 	00FF
		MOVLB 	2H 			//04FE 	1022
		STR 	1AH 			//04FF 	109A

		//;NFB.C: 178: PSRC1=0B11111111;
		STR 	1BH 			//0500 	109B

		//;NFB.C: 179: PSRC2=0B00001111;
		LDWI 	FH 			//0501 	000F
		STR 	1CH 			//0502 	109C

		//;NFB.C: 181: PSINK0=0B11111111;
		LDWI 	FFH 			//0503 	00FF
		MOVLB 	3H 			//0504 	1023
		STR 	1AH 			//0505 	109A

		//;NFB.C: 182: PSINK1=0B11111111;
		STR 	1BH 			//0506 	109B

		//;NFB.C: 183: PSINK2=0B00000011;
		LDWI 	3H 			//0507 	0003
		STR 	1CH 			//0508 	109C

		//;NFB.C: 185: ANSELA=0B00000000;
		CLRF 	17H 			//0509 	1197
		RET 					//050A 	1008
		LDR 	2EH, 0H 			//050B 	182E
		STR 	31H 			//050C 	10B1
		LDR 	2DH, 0H 			//050D 	182D
		STR 	30H 			//050E 	10B0
		LDR 	30H, 0H 			//050F 	1830
		STR 	4H 			//0510 	1084
		LDR 	31H, 0H 			//0511 	1831
		STR 	5H 			//0512 	1085
		MOVIW 	FSR0++ 		//0513 	1012
		BTSC 	3H, 2H 			//0514 	2903
		LJUMP 	51AH 			//0515 	3D1A
		INCR 	30H, 1H 		//0516 	1AB0
		BTSC 	3H, 2H 			//0517 	2903
		INCR 	31H, 1H 		//0518 	1AB1
		LJUMP 	50FH 			//0519 	3D0F
		LDR 	2DH, 0H 			//051A 	182D
		SUBWR 	30H, 0H 		//051B 	1230
		STR 	2DH 			//051C 	10AD
		LDR 	2EH, 0H 			//051D 	182E
		SUBWFB 	31H, 0H 		//051E 	0B31
		STR 	2EH 			//051F 	10AE
		RET 					//0520 	1008

		//;NFB.C: 222: AFP0 = 0B01000000;
		LDWI 	40H 			//0521 	0040
		MOVLB 	3H 			//0522 	1023
		STR 	1EH 			//0523 	109E

		//;NFB.C: 223: AFP1 = 0B01000000;
		STR 	1FH 			//0524 	109F

		//;NFB.C: 224: PCKEN|=0B00100000;
		MOVLB 	1H 			//0525 	1021
		BSR 	1AH, 5H 			//0526 	269A

		//;NFB.C: 225: UR1IER=0B00000001;
		LDWI 	1H 			//0527 	0001
		MOVLB 	9H 			//0528 	1029
		STR 	EH 			//0529 	108E

		//;NFB.C: 226: UR1LCR=0B00000001;
		STR 	FH 			//052A 	108F

		//;NFB.C: 227: UR1MCR=0B00011000;
		LDWI 	18H 			//052B 	0018
		STR 	11H 			//052C 	1091

		//;NFB.C: 229: UR1DLL=104;
		LDWI 	68H 			//052D 	0068
		STR 	14H 			//052E 	1094

		//;NFB.C: 230: UR1DLH=0;
		CLRF 	15H 			//052F 	1195

		//;NFB.C: 231: UR1TCF=1;
		BSR 	1CH, 0H 			//0530 	241C

		//;NFB.C: 232: INTCON=0B11000000;
		LDWI 	C0H 			//0531 	00C0
		STR 	BH 			//0532 	108B
		RET 					//0533 	1008

		//;NFB.C: 333: PCKEN|=0B00000001;
		BSR 	1AH, 0H 			//0534 	241A

		//;NFB.C: 335: ANSELA|=0B00001111;
		LDWI 	FH 			//0535 	000F
		MOVLB 	3H 			//0536 	1023
		IORWR 	17H, 1H 		//0537 	1497

		//;NFB.C: 339: ADCON0=0B00000000;
		MOVLB 	1H 			//0538 	1021
		CLRF 	1DH 			//0539 	119D

		//;NFB.C: 345: ADCON1=0B11100100;
		LDWI 	E4H 			//053A 	00E4
		STR 	1EH 			//053B 	109E

		//;NFB.C: 351: ADCON2=0B01000000;
		LDWI 	40H 			//053C 	0040
		STR 	1FH 			//053D 	109F

		//;NFB.C: 354: ADCON3=0B00000000;
		MOVLB 	8H 			//053E 	1028
		CLRF 	1AH 			//053F 	119A

		//;NFB.C: 355: ADDLY=0B00000000;
		MOVLB 	0H 			//0540 	1020
		CLRF 	1FH 			//0541 	119F

		//;NFB.C: 356: ADCMPH=0B00000000;
		MOVLB 	8H 			//0542 	1028
		CLRF 	1BH 			//0543 	119B

		//;NFB.C: 357: ADON=1;
		MOVLB 	1H 			//0544 	1021
		BSR 	1DH, 0H 			//0545 	241D
		RET 					//0546 	1008
		STR 	75H 			//0547 	10F5
		STR 	74H 			//0548 	10F4
		LDWI 	1H 			//0549 	0001
		SUBWR 	72H, 1H 		//054A 	12F2
		LDWI 	0H 			//054B 	0000
		SUBWFB 	73H, 1H 		//054C 	0BF3
		INCRSZ 	72H, 0H 		//054D 	1F72
		LJUMP 	552H 			//054E 	3D52
		INCR 	73H, 0H 		//054F 	1A73
		BTSC 	3H, 2H 			//0550 	2903
		RET 					//0551 	1008
		LDR 	74H, 0H 			//0552 	1874
		STR 	6H 			//0553 	1086
		LDWI 	2H 			//0554 	0002
		STR 	7H 			//0555 	1087
		LDR 	70H, 0H 			//0556 	1870
		STR 	1H 			//0557 	1081
		INCR 	74H, 1H 		//0558 	1AF4
		LJUMP 	549H 			//0559 	3D49

		//;NFB.C: 313: PCKEN|=0B00000100;
		MOVLB 	1H 			//055A 	1021
		BSR 	1AH, 2H 			//055B 	251A

		//;NFB.C: 314: CKOCON=0B00100000;
		LDWI 	20H 			//055C 	0020
		STR 	15H 			//055D 	1095

		//;NFB.C: 315: TCKSRC=0B00000000;
		MOVLB 	6H 			//055E 	1026
		CLRF 	1FH 			//055F 	119F

		//;NFB.C: 317: TIM2CR1=0B10000101;
		LDWI 	85H 			//0560 	0085
		STR 	CH 			//0561 	108C

		//;NFB.C: 319: TIM2IER=0B00000001;
		LDWI 	1H 			//0562 	0001
		STR 	DH 			//0563 	108D

		//;NFB.C: 321: TIM2ARRH=0x3e;
		LDWI 	3EH 			//0564 	003E
		STR 	19H 			//0565 	1099

		//;NFB.C: 322: TIM2ARRL=0x80;
		LDWI 	80H 			//0566 	0080
		STR 	1AH 			//0567 	109A
		RET 					//0568 	1008

		//;NFB.C: 242: EPS0=0B00000000;
		MOVLB 	2H 			//0569 	1022
		CLRF 	18H 			//056A 	1198

		//;NFB.C: 243: EPS1=0B00000001;
		LDWI 	1H 			//056B 	0001
		STR 	19H 			//056C 	1099

		//;NFB.C: 244: ITYPE0=0B00000000;
		CLRF 	1EH 			//056D 	119E

		//;NFB.C: 245: ITYPE1=0B00000010;
		LDWI 	2H 			//056E 	0002
		STR 	1FH 			//056F 	109F

		//;NFB.C: 246: EPIE0=0B00010000;
		LDWI 	10H 			//0570 	0010
		MOVLB 	1H 			//0571 	1021
		STR 	14H 			//0572 	1094

		//;NFB.C: 247: INTCON=0B11000000;
		LDWI 	C0H 			//0573 	00C0
		STR 	BH 			//0574 	108B
		RET 					//0575 	1008

		//;NFB.C: 486: PA0=0;
		MOVLB 	0H 			//0576 	1020
		BCR 	CH, 0H 			//0577 	200C

		//;NFB.C: 487: PB0=0;
		//;NFB.C: 488: PA1=1;
		//;NFB.C: 489: PB2=1;
		//;NFB.C: 490: PB3=1;
		//;NFB.C: 491: PC1=1;
		//;NFB.C: 492: PB7=1;
		LCALL 	57AH 			//0578 	357A
		RET 					//0579 	1008
		BCR 	DH, 0H 			//057A 	200D
		BSR 	CH, 1H 			//057B 	248C
		BSR 	DH, 2H 			//057C 	250D
		BSR 	DH, 3H 			//057D 	258D
		BSR 	EH, 1H 			//057E 	248E
		BSR 	DH, 7H 			//057F 	278D
		RET 					//0580 	1008

		//;NFB.C: 385: OP0CR0 = 0B00111011;
		LDWI 	3BH 			//0581 	003B
		MOVLB 	1FH 			//0582 	103F
		STR 	FH 			//0583 	108F

		//;NFB.C: 386: OP0CFG = 0B00010001;
		LDWI 	11H 			//0584 	0011
		STR 	11H 			//0585 	1091

		//;NFB.C: 387: AN4SELB = 1;
		MOVLB 	8H 			//0586 	1028
		BSR 	1AH, 2H 			//0587 	251A
		RET 					//0588 	1008
		CLRWDT 			//0589 	1064
		CLRF 	0H 			//058A 	1180
		ADDFSR 	0H, 1H 		//058B 	0101
		ORG		058CH
		DECRSZ 	9H, 1H 		//058C 	1B89
		LJUMP 	58AH 			//058D 	3D8A
		RETW 	0H 			//058E 	0400
		ORG		0802H

		//;NFB.C: 689: }
		//;NFB.C: 690: HTVP = (float)HTVP_*2/4096;
		MOVLB 	1H 			//0802 	1021
		LCALL 	5D8H 			//0803 	35D8
		MOVLP 	8H 			//0804 	0188
		LCALL 	76FH 			//0805 	376F
		MOVLP 	19H 			//0806 	0199
		LCALL 	132H 			//0807 	3132
		MOVLP 	8H 			//0808 	0188
		LCALL 	5A3H 			//0809 	35A3
		MOVLP 	1DH 			//080A 	019D
		LCALL 	59CH 			//080B 	359C
		MOVLP 	8H 			//080C 	0188
		LCALL 	6FAH 			//080D 	36FA
		MOVLP 	1EH 			//080E 	019E
		LCALL 	69EH 			//080F 	369E
		MOVLP 	8H 			//0810 	0188

		//;NFB.C: 691: HTVN = (float)HTVN_*2/4096;
		LCALL 	6BBH 			//0811 	36BB
		MOVLP 	8H 			//0812 	0188
		LCALL 	5D8H 			//0813 	35D8
		MOVLP 	8H 			//0814 	0188
		LCALL 	7DCH 			//0815 	37DC
		MOVLP 	19H 			//0816 	0199
		LCALL 	132H 			//0817 	3132
		MOVLP 	8H 			//0818 	0188
		LCALL 	5A3H 			//0819 	35A3
		MOVLP 	1DH 			//081A 	019D
		LCALL 	59CH 			//081B 	359C
		MOVLP 	8H 			//081C 	0188
		LCALL 	6FAH 			//081D 	36FA
		MOVLP 	1EH 			//081E 	019E
		LCALL 	69EH 			//081F 	369E
		MOVLP 	8H 			//0820 	0188

		//;NFB.C: 692: HTVI = (float)HTVI_*2/4096;
		LCALL 	695H 			//0821 	3695
		MOVLP 	8H 			//0822 	0188
		LCALL 	5D8H 			//0823 	35D8
		MOVLP 	8H 			//0824 	0188
		LCALL 	778H 			//0825 	3778
		MOVLP 	19H 			//0826 	0199
		LCALL 	132H 			//0827 	3132
		MOVLP 	8H 			//0828 	0188
		LCALL 	5A3H 			//0829 	35A3
		MOVLP 	1DH 			//082A 	019D
		LCALL 	59CH 			//082B 	359C
		MOVLP 	8H 			//082C 	0188
		LCALL 	6FAH 			//082D 	36FA
		MOVLP 	1EH 			//082E 	019E
		LCALL 	69EH 			//082F 	369E
		MOVLP 	8H 			//0830 	0188

		//;NFB.C: 693: I = HTVI/0.01/39;
		LCALL 	669H 			//0831 	3669
		MOVLP 	1EH 			//0832 	019E
		LCALL 	69EH 			//0833 	369E
		MOVLP 	8H 			//0834 	0188

		//;NFB.C: 693: I = HTVI/0.01/39;
		LCALL 	6A2H 			//0835 	36A2
		MOVLP 	8H 			//0836 	0188
		LCALL 	65BH 			//0837 	365B
		MOVLP 	1EH 			//0838 	019E
		LCALL 	69EH 			//0839 	369E
		MOVLP 	8H 			//083A 	0188

		//;NFB.C: 694: V = (HTVP-HTVN)*2;
		LCALL 	5AFH 			//083B 	35AF
		MOVLP 	16H 			//083C 	0196
		LCALL 	611H 			//083D 	3611
		MOVLP 	8H 			//083E 	0188
		LCALL 	73BH 			//083F 	373B
		MOVLP 	1DH 			//0840 	019D
		LCALL 	59CH 			//0841 	359C
		MOVLP 	8H 			//0842 	0188

		//;NFB.C: 695: R = V/I;
		LCALL 	62CH 			//0843 	362C
		MOVLP 	1EH 			//0844 	019E
		LCALL 	69EH 			//0845 	369E
		MOVLP 	8H 			//0846 	0188

		//;NFB.C: 696: T = (((R/R0)-1)/0.0026)+25;
		LCALL 	607H 			//0847 	3607
		MOVLP 	1EH 			//0848 	019E
		LCALL 	69EH 			//0849 	369E
		MOVLP 	8H 			//084A 	0188
		LCALL 	6C8H 			//084B 	36C8
		MOVLP 	19H 			//084C 	0199
		LCALL 	15FH 			//084D 	315F
		MOVLP 	8H 			//084E 	0188

		//;NFB.C: 696: T = (((R/R0)-1)/0.0026)+25;
		LCALL 	5E2H 			//084F 	35E2
		MOVLP 	1EH 			//0850 	019E
		LCALL 	69EH 			//0851 	369E
		MOVLP 	8H 			//0852 	0188
		LCALL 	6C8H 			//0853 	36C8
		MOVLP 	19H 			//0854 	0199
		LCALL 	15FH 			//0855 	315F
		MOVLP 	8H 			//0856 	0188
		LCALL 	747H 			//0857 	3747
		MOVLP 	8H 			//0858 	0188

		//;NFB.C: 697: }
		//;NFB.C: 698: if(HTtimecnt>=timeleft){
		MOVLB 	4H 			//0859 	1024
		LDR 	4EH, 0H 			//085A 	184E
		MOVLB 	1H 			//085B 	1021
		STR 	59H 			//085C 	10D9
		MOVLB 	4H 			//085D 	1024
		LDR 	4FH, 0H 			//085E 	184F
		LCALL 	6B2H 			//085F 	36B2
		MOVLP 	8H 			//0860 	0188
		MOVLB 	3H 			//0861 	1023
		SUBWR 	68H, 0H 		//0862 	1268
		BTSS 	3H, 2H 			//0863 	2D03
		LJUMP 	6FH 			//0864 	386F
		LCALL 	7F6H 			//0865 	37F6
		MOVLP 	8H 			//0866 	0188
		BTSS 	3H, 2H 			//0867 	2D03
		LJUMP 	6FH 			//0868 	386F
		LCALL 	7FBH 			//0869 	37FB
		MOVLP 	8H 			//086A 	0188
		BTSS 	3H, 2H 			//086B 	2D03
		LJUMP 	6FH 			//086C 	386F
		LCALL 	7F1H 			//086D 	37F1
		MOVLP 	8H 			//086E 	0188
		BTSS 	3H, 0H 			//086F 	2C03
		LJUMP 	93H 			//0870 	3893

		//;NFB.C: 699: PC1 = ~PC1;
		LDWI 	2H 			//0871 	0002
		MOVLB 	0H 			//0872 	1020
		XORWR 	EH, 1H 		//0873 	168E

		//;NFB.C: 700: char msg[10];
		//;NFB.C: 701: sprintf(msg,"T:%0.1f\r\n",T);
		LDWI 	A0H 			//0874 	00A0
		MOVLB 	1H 			//0875 	1021
		STR 	41H 			//0876 	10C1
		LDWI 	1H 			//0877 	0001
		LCALL 	71CH 			//0878 	371C
		MOVLP 	8H 			//0879 	0188
		LCALL 	6ECH 			//087A 	36EC
		MOVLP 	10H 			//087B 	0190
		LCALL 	74H 			//087C 	3074
		MOVLP 	8H 			//087D 	0188

		//;NFB.C: 702: send(msg,strlen(msg));
		LDWI 	A0H 			//087E 	00A0
		STR 	4AH 			//087F 	10CA
		LDWI 	1H 			//0880 	0001
		STR 	4BH 			//0881 	10CB
		LDWI 	A0H 			//0882 	00A0
		MOVLB 	0H 			//0883 	1020
		STR 	2DH 			//0884 	10AD
		LDWI 	1H 			//0885 	0001
		STR 	2EH 			//0886 	10AE
		MOVLP 	5H 			//0887 	0185
		LCALL 	50BH 			//0888 	350B
		MOVLP 	8H 			//0889 	0188
		LCALL 	714H 			//088A 	3714
		MOVLP 	1AH 			//088B 	019A
		LCALL 	20DH 			//088C 	320D
		MOVLP 	8H 			//088D 	0188

		//;NFB.C: 703: timeleft += 20;
		LDWI 	14H 			//088E 	0014
		MOVLB 	4H 			//088F 	1024
		ADDWR 	4EH, 1H 		//0890 	17CE
		BTSC 	3H, 0H 			//0891 	2803
		INCR 	4FH, 1H 		//0892 	1ACF

		//;NFB.C: 704: }
		//;NFB.C: 705: if(t1>=30){
		MOVLB 	3H 			//0893 	1023
		LDR 	6DH, 0H 			//0894 	186D
		LCALL 	727H 			//0895 	3727
		MOVLP 	8H 			//0896 	0188
		BTSS 	3H, 2H 			//0897 	2D03
		LJUMP 	9CH 			//0898 	389C
		LDWI 	1EH 			//0899 	001E
		MOVLB 	3H 			//089A 	1023
		SUBWR 	6CH, 0H 		//089B 	126C
		BTSS 	3H, 0H 			//089C 	2C03
		LJUMP 	140H 			//089D 	3940

		//;NFB.C: 706: if(HTtimecnt==20){
		LDWI 	14H 			//089E 	0014
		MOVLB 	3H 			//089F 	1023
		XORWR 	65H, 0H 		//08A0 	1665
		IORWR 	66H, 0H 		//08A1 	1466
		IORWR 	67H, 0H 		//08A2 	1467
		IORWR 	68H, 0H 		//08A3 	1468
		BTSS 	3H, 2H 			//08A4 	2D03
		LJUMP 	BDH 			//08A5 	38BD

		//;NFB.C: 707: Toffset = T;
		//;NFB.C: 708: Tm = T1-T;
		LCALL 	688H 			//08A6 	3688
		MOVLP 	8H 			//08A7 	0188
		LCALL 	64FH 			//08A8 	364F
		MOVLP 	8H 			//08A9 	0188
		LCALL 	7CFH 			//08AA 	37CF
		MOVLP 	16H 			//08AB 	0196
		LCALL 	611H 			//08AC 	3611
		MOVLP 	8H 			//08AD 	0188

		//;NFB.C: 709: m = Tm/(t1-1);
		LCALL 	72DH 			//08AE 	372D
		MOVLP 	8H 			//08AF 	0188
		ADDWI 	FFH 			//08B0 	0EFF
		MOVLB 	0H 			//08B1 	1020
		STR 	3BH 			//08B2 	10BB
		LCALL 	7D6H 			//08B3 	37D6
		MOVLP 	1DH 			//08B4 	019D
		LCALL 	581H 			//08B5 	3581
		MOVLP 	8H 			//08B6 	0188
		LCALL 	6D4H 			//08B7 	36D4
		MOVLP 	1EH 			//08B8 	019E
		LCALL 	69EH 			//08B9 	369E
		MOVLP 	8H 			//08BA 	0188
		LCALL 	75AH 			//08BB 	375A
		MOVLP 	8H 			//08BC 	0188

		//;NFB.C: 710: }
		//;NFB.C: 711: if(HTtimecnt>20){
		MOVLB 	3H 			//08BD 	1023
		LDR 	68H, 0H 			//08BE 	1868
		BTSS 	3H, 2H 			//08BF 	2D03
		LJUMP 	CBH 			//08C0 	38CB
		LDR 	67H, 0H 			//08C1 	1867
		BTSS 	3H, 2H 			//08C2 	2D03
		LJUMP 	CBH 			//08C3 	38CB
		LDR 	66H, 0H 			//08C4 	1866
		BTSS 	3H, 2H 			//08C5 	2D03
		LJUMP 	CBH 			//08C6 	38CB
		LDWI 	15H 			//08C7 	0015
		SUBWR 	65H, 0H 		//08C8 	1265
		BTSS 	3H, 0H 			//08C9 	2C03
		LJUMP 	185H 			//08CA 	3985

		//;NFB.C: 712: diffT = ((m*(HTtimecnt-20)/20)+Toffset)-T;
		LCALL 	64FH 			//08CB 	364F
		MOVLP 	8H 			//08CC 	0188
		LCALL 	701H 			//08CD 	3701
		LDWI 	ECH 			//08CE 	00EC
		MOVLB 	3H 			//08CF 	1023
		ADDWR 	65H, 0H 		//08D0 	1765
		MOVLB 	0H 			//08D1 	1020
		STR 	35H 			//08D2 	10B5
		LDWI 	FFH 			//08D3 	00FF
		MOVLB 	3H 			//08D4 	1023
		ADDWFC 	66H, 0H 		//08D5 	0D66
		MOVLB 	0H 			//08D6 	1020
		STR 	36H 			//08D7 	10B6
		LDWI 	FFH 			//08D8 	00FF
		MOVLB 	3H 			//08D9 	1023
		ADDWFC 	67H, 0H 		//08DA 	0D67
		MOVLB 	0H 			//08DB 	1020
		STR 	37H 			//08DC 	10B7
		LDWI 	FFH 			//08DD 	00FF
		MOVLB 	3H 			//08DE 	1023
		ADDWFC 	68H, 0H 		//08DF 	0D68
		MOVLB 	0H 			//08E0 	1020
		STR 	38H 			//08E1 	10B8
		MOVLP 	19H 			//08E2 	0199
		LCALL 	142H 			//08E3 	3142
		MOVLP 	8H 			//08E4 	0188
		LDR 	35H, 0H 			//08E5 	1835
		MOVLB 	1H 			//08E6 	1021
		STR 	23H 			//08E7 	10A3
		MOVLB 	0H 			//08E8 	1020
		LDR 	36H, 0H 			//08E9 	1836
		MOVLB 	1H 			//08EA 	1021
		STR 	24H 			//08EB 	10A4
		MOVLB 	0H 			//08EC 	1020
		LDR 	37H, 0H 			//08ED 	1837
		MOVLB 	1H 			//08EE 	1021
		STR 	25H 			//08EF 	10A5
		MOVLP 	1DH 			//08F0 	019D
		LCALL 	59CH 			//08F1 	359C
		MOVLP 	8H 			//08F2 	0188
		LCALL 	6FAH 			//08F3 	36FA
		MOVLP 	1EH 			//08F4 	019E
		LCALL 	69EH 			//08F5 	369E
		MOVLP 	8H 			//08F6 	0188
		LDR 	2CH, 0H 			//08F7 	182C
		MOVLB 	0H 			//08F8 	1020
		STR 	50H 			//08F9 	10D0
		MOVLB 	1H 			//08FA 	1021
		LDR 	2DH, 0H 			//08FB 	182D
		MOVLB 	0H 			//08FC 	1020
		STR 	51H 			//08FD 	10D1
		MOVLB 	1H 			//08FE 	1021
		LDR 	2EH, 0H 			//08FF 	182E
		MOVLB 	0H 			//0900 	1020
		STR 	52H 			//0901 	10D2
		MOVLP 	16H 			//0902 	0196
		LCALL 	611H 			//0903 	3611
		MOVLP 	8H 			//0904 	0188
		LDR 	4DH, 0H 			//0905 	184D
		MOVLB 	3H 			//0906 	1023
		STR 	53H 			//0907 	10D3
		MOVLB 	0H 			//0908 	1020
		LDR 	4EH, 0H 			//0909 	184E
		MOVLB 	3H 			//090A 	1023
		STR 	54H 			//090B 	10D4
		MOVLB 	0H 			//090C 	1020
		LDR 	4FH, 0H 			//090D 	184F
		MOVLB 	3H 			//090E 	1023
		STR 	55H 			//090F 	10D5

		//;NFB.C: 712: diffT = ((m*(HTtimecnt-20)/20)+Toffset)-T;
		MOVLB 	4H 			//0910 	1024
		LDR 	29H, 0H 			//0911 	1829
		MOVLB 	0H 			//0912 	1020
		STR 	41H 			//0913 	10C1
		MOVLB 	4H 			//0914 	1024
		LDR 	2AH, 0H 			//0915 	182A
		MOVLB 	0H 			//0916 	1020
		STR 	42H 			//0917 	10C2
		MOVLB 	4H 			//0918 	1024
		LDR 	2BH, 0H 			//0919 	182B
		MOVLB 	0H 			//091A 	1020
		STR 	43H 			//091B 	10C3
		MOVLB 	3H 			//091C 	1023
		LDR 	53H, 0H 			//091D 	1853
		MOVLB 	0H 			//091E 	1020
		STR 	44H 			//091F 	10C4
		MOVLB 	3H 			//0920 	1023
		LDR 	54H, 0H 			//0921 	1854
		MOVLB 	0H 			//0922 	1020
		STR 	45H 			//0923 	10C5
		MOVLB 	3H 			//0924 	1023
		LDR 	55H, 0H 			//0925 	1855
		MOVLB 	0H 			//0926 	1020
		STR 	46H 			//0927 	10C6
		MOVLP 	19H 			//0928 	0199
		LCALL 	15FH 			//0929 	315F
		MOVLP 	8H 			//092A 	0188
		LDR 	41H, 0H 			//092B 	1841
		STR 	5EH 			//092C 	10DE
		LDR 	42H, 0H 			//092D 	1842
		STR 	5FH 			//092E 	10DF
		LDR 	43H, 0H 			//092F 	1843
		STR 	60H 			//0930 	10E0

		//;NFB.C: 713: if(diffT>=0){
		LDR 	5EH, 0H 			//0931 	185E
		STR 	3FH 			//0932 	10BF
		LDR 	5FH, 0H 			//0933 	185F
		STR 	40H 			//0934 	10C0
		LDR 	60H, 0H 			//0935 	1860
		MOVLP 	17H 			//0936 	0197
		LCALL 	74DH 			//0937 	374D
		MOVLP 	8H 			//0938 	0188
		MOVLP 	15H 			//0939 	0195
		LCALL 	543H 			//093A 	3543
		MOVLP 	8H 			//093B 	0188
		BTSC 	3H, 0H 			//093C 	2803
		LJUMP 	184H 			//093D 	3984

		//;NFB.C: 716: PA0 = 0;
		//;NFB.C: 715: } else{
		BCR 	CH, 0H 			//093E 	200C
		LJUMP 	185H 			//093F 	3985
		MOVLB 	3H 			//0940 	1023
		LDR 	6DH, 0H 			//0941 	186D
		LCALL 	727H 			//0942 	3727
		MOVLP 	8H 			//0943 	0188
		BTSS 	3H, 2H 			//0944 	2D03
		LJUMP 	149H 			//0945 	3949
		LDWI 	14H 			//0946 	0014
		MOVLB 	3H 			//0947 	1023
		SUBWR 	6CH, 0H 		//0948 	126C
		BTSS 	3H, 0H 			//0949 	2C03
		LJUMP 	185H 			//094A 	3985

		//;NFB.C: 720: if(HTtimecnt==300){
		LDWI 	2CH 			//094B 	002C
		MOVLB 	3H 			//094C 	1023
		XORWR 	65H, 0H 		//094D 	1665
		BTSS 	3H, 2H 			//094E 	2D03
		LJUMP 	16CH 			//094F 	396C
		DECR 	66H, 0H 		//0950 	1366
		IORWR 	67H, 0H 		//0951 	1467
		IORWR 	68H, 0H 		//0952 	1468
		BTSS 	3H, 2H 			//0953 	2D03
		LJUMP 	16CH 			//0954 	396C

		//;NFB.C: 721: Toffset = T;
		//;NFB.C: 722: Tm = T1-T;
		LCALL 	688H 			//0955 	3688
		MOVLP 	8H 			//0956 	0188
		LCALL 	64FH 			//0957 	364F
		MOVLP 	8H 			//0958 	0188
		LCALL 	7CFH 			//0959 	37CF
		MOVLP 	16H 			//095A 	0196
		LCALL 	611H 			//095B 	3611
		MOVLP 	8H 			//095C 	0188

		//;NFB.C: 723: m = Tm/(t1-15);
		LCALL 	72DH 			//095D 	372D
		MOVLP 	8H 			//095E 	0188
		ADDWI 	F1H 			//095F 	0EF1
		MOVLB 	0H 			//0960 	1020
		STR 	3BH 			//0961 	10BB
		LCALL 	7D6H 			//0962 	37D6
		MOVLP 	1DH 			//0963 	019D
		LCALL 	581H 			//0964 	3581
		MOVLP 	8H 			//0965 	0188
		LCALL 	6D4H 			//0966 	36D4
		MOVLP 	1EH 			//0967 	019E
		LCALL 	69EH 			//0968 	369E
		MOVLP 	8H 			//0969 	0188
		LCALL 	75AH 			//096A 	375A
		MOVLP 	8H 			//096B 	0188

		//;NFB.C: 724: }
		//;NFB.C: 725: if(HTtimecnt>300){
		MOVLB 	3H 			//096C 	1023
		LDR 	68H, 0H 			//096D 	1868
		BTSS 	3H, 2H 			//096E 	2D03
		LJUMP 	179H 			//096F 	3979
		LDR 	67H, 0H 			//0970 	1867
		BTSS 	3H, 2H 			//0971 	2D03
		LJUMP 	179H 			//0972 	3979
		LDWI 	2DH 			//0973 	002D
		SUBWR 	65H, 0H 		//0974 	1265
		LDWI 	1H 			//0975 	0001
		SUBWFB 	66H, 0H 		//0976 	0B66
		BTSS 	3H, 0H 			//0977 	2C03
		LJUMP 	185H 			//0978 	3985

		//;NFB.C: 726: diffT = ((m*(HTtimecnt-300)/20)+Toffset)-T;
		LCALL 	64FH 			//0979 	364F
		MOVLP 	8H 			//097A 	0188
		LCALL 	701H 			//097B 	3701
		MOVLP 	8H 			//097C 	0188
		LDWI 	D4H 			//097D 	00D4
		MOVLB 	3H 			//097E 	1023
		ADDWR 	65H, 0H 		//097F 	1765
		MOVLB 	0H 			//0980 	1020
		STR 	35H 			//0981 	10B5
		LDWI 	FEH 			//0982 	00FE
		LJUMP 	D4H 			//0983 	38D4

		//;NFB.C: 727: if(diffT>=0){
		//;NFB.C: 726: diffT = ((m*(HTtimecnt-300)/20)+Toffset)-T;
		//;NFB.C: 714: PA0 = 1;
		BSR 	CH, 0H 			//0984 	240C

		//;NFB.C: 731: }
		//;NFB.C: 732: }
		//;NFB.C: 733: }
		//;NFB.C: 734: if(HTtimecnt>=timeleft1){
		MOVLB 	4H 			//0985 	1024
		LDR 	4CH, 0H 			//0986 	184C
		MOVLB 	1H 			//0987 	1021
		STR 	59H 			//0988 	10D9
		MOVLB 	4H 			//0989 	1024
		LDR 	4DH, 0H 			//098A 	184D
		LCALL 	6B2H 			//098B 	36B2
		MOVLP 	8H 			//098C 	0188
		MOVLB 	3H 			//098D 	1023
		SUBWR 	68H, 0H 		//098E 	1268
		BTSS 	3H, 2H 			//098F 	2D03
		LJUMP 	19BH 			//0990 	399B
		LCALL 	7F6H 			//0991 	37F6
		MOVLP 	8H 			//0992 	0188
		BTSS 	3H, 2H 			//0993 	2D03
		LJUMP 	19BH 			//0994 	399B
		LCALL 	7FBH 			//0995 	37FB
		MOVLP 	8H 			//0996 	0188
		BTSS 	3H, 2H 			//0997 	2D03
		LJUMP 	19BH 			//0998 	399B
		LCALL 	7F1H 			//0999 	37F1
		MOVLP 	8H 			//099A 	0188
		BTSS 	3H, 0H 			//099B 	2C03
		LJUMP 	1A4H 			//099C 	39A4

		//;NFB.C: 735: PA0 = 1;
		MOVLB 	0H 			//099D 	1020
		BSR 	CH, 0H 			//099E 	240C

		//;NFB.C: 736: timeleft1 += 10;
		LDWI 	AH 			//099F 	000A
		MOVLB 	4H 			//09A0 	1024
		ADDWR 	4CH, 1H 		//09A1 	17CC
		BTSC 	3H, 0H 			//09A2 	2803
		INCR 	4DH, 1H 		//09A3 	1ACD

		//;NFB.C: 737: }
		//;NFB.C: 738: if(HTtimecnt>((t1*20)+9) || T>=T1){
		MOVLB 	3H 			//09A4 	1023
		LDR 	6DH, 0H 			//09A5 	186D
		MOVLB 	0H 			//09A6 	1020
		STR 	3CH 			//09A7 	10BC
		MOVLB 	3H 			//09A8 	1023
		LDR 	6CH, 0H 			//09A9 	186C
		MOVLB 	0H 			//09AA 	1020
		STR 	3BH 			//09AB 	10BB
		LDWI 	14H 			//09AC 	0014
		STR 	3DH 			//09AD 	10BD
		CLRF 	3EH 			//09AE 	11BE
		MOVLP 	1BH 			//09AF 	019B
		LCALL 	3ADH 			//09B0 	33AD
		MOVLP 	8H 			//09B1 	0188
		LDR 	3BH, 0H 			//09B2 	183B
		ADDWI 	9H 			//09B3 	0E09
		MOVLB 	1H 			//09B4 	1021
		STR 	59H 			//09B5 	10D9
		LDWI 	0H 			//09B6 	0000
		MOVLB 	0H 			//09B7 	1020
		ADDWFC 	3CH, 0H 		//09B8 	0D3C
		MOVLB 	1H 			//09B9 	1021
		STR 	5AH 			//09BA 	10DA
		LDR 	59H, 0H 			//09BB 	1859
		STR 	5BH 			//09BC 	10DB
		LDR 	5AH, 0H 			//09BD 	185A
		STR 	5CH 			//09BE 	10DC
		LDWI 	0H 			//09BF 	0000
		BTSC 	5CH, 7H 		//09C0 	2BDC
		LDWI 	FFH 			//09C1 	00FF
		STR 	5DH 			//09C2 	10DD
		STR 	5EH 			//09C3 	10DE
		MOVLB 	3H 			//09C4 	1023
		LDR 	68H, 0H 			//09C5 	1868
		MOVLB 	1H 			//09C6 	1021
		SUBWR 	5EH, 0H 		//09C7 	125E
		BTSS 	3H, 2H 			//09C8 	2D03
		LJUMP 	1DAH 			//09C9 	39DA
		MOVLB 	3H 			//09CA 	1023
		LDR 	67H, 0H 			//09CB 	1867
		MOVLB 	1H 			//09CC 	1021
		SUBWR 	5DH, 0H 		//09CD 	125D
		BTSS 	3H, 2H 			//09CE 	2D03
		LJUMP 	1DAH 			//09CF 	39DA
		MOVLB 	3H 			//09D0 	1023
		LDR 	66H, 0H 			//09D1 	1866
		MOVLB 	1H 			//09D2 	1021
		SUBWR 	5CH, 0H 		//09D3 	125C
		BTSS 	3H, 2H 			//09D4 	2D03
		LJUMP 	1DAH 			//09D5 	39DA
		MOVLB 	3H 			//09D6 	1023
		LDR 	65H, 0H 			//09D7 	1865
		MOVLB 	1H 			//09D8 	1021
		SUBWR 	5BH, 0H 		//09D9 	125B
		BTSS 	3H, 0H 			//09DA 	2C03
		LJUMP 	1F3H 			//09DB 	39F3
		MOVLB 	3H 			//09DC 	1023
		LDR 	69H, 0H 			//09DD 	1869
		MOVLB 	0H 			//09DE 	1020
		STR 	3FH 			//09DF 	10BF
		MOVLB 	3H 			//09E0 	1023
		LDR 	6AH, 0H 			//09E1 	186A
		MOVLB 	0H 			//09E2 	1020
		STR 	40H 			//09E3 	10C0
		MOVLB 	3H 			//09E4 	1023
		LDR 	6BH, 0H 			//09E5 	186B
		MOVLB 	0H 			//09E6 	1020
		STR 	41H 			//09E7 	10C1
		LDR 	5BH, 0H 			//09E8 	185B
		STR 	42H 			//09E9 	10C2
		LDR 	5CH, 0H 			//09EA 	185C
		STR 	43H 			//09EB 	10C3
		LDR 	5DH, 0H 			//09EC 	185D
		STR 	44H 			//09ED 	10C4
		MOVLP 	15H 			//09EE 	0195
		LCALL 	543H 			//09EF 	3543
		MOVLP 	8H 			//09F0 	0188
		BTSS 	3H, 0H 			//09F1 	2C03
		LJUMP 	24FH 			//09F2 	3A4F

		//;NFB.C: 739: char msg[10];
		//;NFB.C: 740: sprintf(msg,"T%0.1f\r\n",T);
		LDWI 	AAH 			//09F3 	00AA
		MOVLB 	1H 			//09F4 	1021
		STR 	41H 			//09F5 	10C1
		LDWI 	1H 			//09F6 	0001
		STR 	42H 			//09F7 	10C2
		LDWI 	F3H 			//09F8 	00F3
		STR 	43H 			//09F9 	10C3
		LDWI 	A0H 			//09FA 	00A0
		LCALL 	6ECH 			//09FB 	36EC
		MOVLP 	10H 			//09FC 	0190
		LCALL 	74H 			//09FD 	3074
		MOVLP 	8H 			//09FE 	0188

		//;NFB.C: 741: send(msg,strlen(msg));
		LDWI 	AAH 			//09FF 	00AA
		STR 	4AH 			//0A00 	10CA
		LDWI 	1H 			//0A01 	0001
		STR 	4BH 			//0A02 	10CB
		LDWI 	AAH 			//0A03 	00AA
		MOVLB 	0H 			//0A04 	1020
		STR 	2DH 			//0A05 	10AD
		LDWI 	1H 			//0A06 	0001
		STR 	2EH 			//0A07 	10AE
		MOVLP 	5H 			//0A08 	0185
		LCALL 	50BH 			//0A09 	350B
		MOVLP 	8H 			//0A0A 	0188
		LCALL 	714H 			//0A0B 	3714
		MOVLP 	1AH 			//0A0C 	019A
		LCALL 	20DH 			//0A0D 	320D
		MOVLP 	8H 			//0A0E 	0188

		//;NFB.C: 742: send((char*)"T0\r\n",4);
		LCALL 	78FH 			//0A0F 	378F
		MOVLP 	8H 			//0A10 	0188
		LCALL 	781H 			//0A11 	3781
		MOVLP 	1AH 			//0A12 	019A
		LCALL 	20DH 			//0A13 	320D
		MOVLP 	8H 			//0A14 	0188

		//;NFB.C: 743: send((char*)"H0\r\n",4);
		LCALL 	797H 			//0A15 	3797
		MOVLP 	8H 			//0A16 	0188
		LCALL 	781H 			//0A17 	3781
		MOVLP 	1AH 			//0A18 	019A
		LCALL 	20DH 			//0A19 	320D
		MOVLP 	8H 			//0A1A 	0188

		//;NFB.C: 744: PA0 = 0;
		MOVLB 	0H 			//0A1B 	1020
		BCR 	CH, 0H 			//0A1C 	200C

		//;NFB.C: 745: HTOn = 0;
		//;NFB.C: 746: HTtimer = 0;
		//;NFB.C: 747: PB0 = 1;
		LCALL 	7C8H 			//0A1D 	37C8
		MOVLP 	8H 			//0A1E 	0188

		//;NFB.C: 748: DelayMs(500);
		LCALL 	753H 			//0A1F 	3753
		MOVLP 	1AH 			//0A20 	019A
		LCALL 	230H 			//0A21 	3230
		MOVLP 	8H 			//0A22 	0188

		//;NFB.C: 749: PB0 = 0;
		MOVLB 	0H 			//0A23 	1020
		BCR 	DH, 0H 			//0A24 	200D

		//;NFB.C: 750: DelayMs(500);
		LDWI 	F4H 			//0A25 	00F4
		MOVLB 	1H 			//0A26 	1021
		STR 	45H 			//0A27 	10C5
		LDWI 	1H 			//0A28 	0001
		STR 	46H 			//0A29 	10C6
		MOVLP 	1AH 			//0A2A 	019A
		LCALL 	230H 			//0A2B 	3230
		MOVLP 	8H 			//0A2C 	0188

		//;NFB.C: 751: send((char*)"S1\r\n",4);
		LDWI 	22H 			//0A2D 	0022
		MOVLB 	1H 			//0A2E 	1021
		STR 	4AH 			//0A2F 	10CA
		LDWI 	A1H 			//0A30 	00A1
		LCALL 	781H 			//0A31 	3781
		MOVLP 	1AH 			//0A32 	019A
		LCALL 	20DH 			//0A33 	320D
		MOVLP 	8H 			//0A34 	0188

		//;NFB.C: 752: PC1 = 0;
		MOVLB 	0H 			//0A35 	1020
		BCR 	EH, 1H 			//0A36 	208E

		//;NFB.C: 753: PB3 = 1;
		BSR 	DH, 3H 			//0A37 	258D

		//;NFB.C: 754: PB2 = 1;
		BSR 	DH, 2H 			//0A38 	250D

		//;NFB.C: 755: PA1 = 1;
		BSR 	CH, 1H 			//0A39 	248C

		//;NFB.C: 756: timeleft2 = 100;
		LDWI 	64H 			//0A3A 	0064
		MOVLB 	4H 			//0A3B 	1024
		STR 	4AH 			//0A3C 	10CA
		LDWI 	9H 			//0A3D 	0009
		CLRF 	4BH 			//0A3E 	11CB

		//;NFB.C: 757: timeleft3 = 9;
		STR 	48H 			//0A3F 	10C8
		CLRF 	49H 			//0A40 	11C9

		//;NFB.C: 758: SmokeOn = 1;
		CLRF 	62H 			//0A41 	11E2
		INCR 	62H, 1H 		//0A42 	1AE2
		CLRF 	63H 			//0A43 	11E3

		//;NFB.C: 759: Puffcnt = 0;
		MOVLB 	5H 			//0A44 	1025
		CLRF 	20H 			//0A45 	11A0
		CLRF 	21H 			//0A46 	11A1
		CLRF 	22H 			//0A47 	11A2
		CLRF 	23H 			//0A48 	11A3

		//;NFB.C: 760: Smoketimecnt = 0;
		MOVLB 	0H 			//0A49 	1020
		CLRF 	57H 			//0A4A 	11D7
		CLRF 	58H 			//0A4B 	11D8
		CLRF 	59H 			//0A4C 	11D9
		CLRF 	5AH 			//0A4D 	11DA

		//;NFB.C: 761: PA0 = 1;
		BSR 	CH, 0H 			//0A4E 	240C

		//;NFB.C: 762: }
		//;NFB.C: 763: }
		//;NFB.C: 764: if(Smoketimer){
		MOVLB 	4H 			//0A4F 	1024
		LDR 	60H, 0H 			//0A50 	1860
		IORWR 	61H, 0H 		//0A51 	1461
		BTSC 	3H, 2H 			//0A52 	2903
		LJUMP 	49BH 			//0A53 	3C9B

		//;NFB.C: 765: Smoketimer = 0;
		CLRF 	60H 			//0A54 	11E0
		CLRF 	61H 			//0A55 	11E1

		//;NFB.C: 766: if(PA0){
		MOVLB 	0H 			//0A56 	1020
		BTSS 	CH, 0H 			//0A57 	2C0C
		LJUMP 	31FH 			//0A58 	3B1F

		//;NFB.C: 767: HTVP_ = GET_ADC_DATA(2);
		LDWI 	2H 			//0A59 	0002
		MOVLP 	1EH 			//0A5A 	019E
		LCALL 	648H 			//0A5B 	3648
		MOVLP 	8H 			//0A5C 	0188
		LCALL 	7ABH 			//0A5D 	37AB
		MOVLP 	8H 			//0A5E 	0188

		//;NFB.C: 768: for(int i=0;i<4;i++){
		CLRF 	5CH 			//0A5F 	11DC
		CLRF 	5DH 			//0A60 	11DD
		LDR 	5DH, 0H 			//0A61 	185D
		LCALL 	727H 			//0A62 	3727
		MOVLP 	8H 			//0A63 	0188
		BTSS 	3H, 2H 			//0A64 	2D03
		LJUMP 	269H 			//0A65 	3A69
		LDWI 	4H 			//0A66 	0004
		MOVLB 	3H 			//0A67 	1023
		SUBWR 	5CH, 0H 		//0A68 	125C
		BTSC 	3H, 0H 			//0A69 	2803
		LJUMP 	27EH 			//0A6A 	3A7E

		//;NFB.C: 769: HTVP_ = (HTVP_+GET_ADC_DATA(2))/2;
		LDWI 	2H 			//0A6B 	0002
		MOVLP 	1EH 			//0A6C 	019E
		LCALL 	648H 			//0A6D 	3648
		MOVLP 	8H 			//0A6E 	0188
		MOVLB 	3H 			//0A6F 	1023
		LDR 	6EH, 0H 			//0A70 	186E
		MOVLB 	1H 			//0A71 	1021
		ADDWR 	45H, 0H 		//0A72 	1745
		STR 	59H 			//0A73 	10D9
		MOVLB 	3H 			//0A74 	1023
		LDR 	6FH, 0H 			//0A75 	186F
		LCALL 	720H 			//0A76 	3720
		MOVLP 	8H 			//0A77 	0188
		LCALL 	7B3H 			//0A78 	37B3
		MOVLP 	8H 			//0A79 	0188
		INCR 	5CH, 1H 		//0A7A 	1ADC
		BTSC 	3H, 2H 			//0A7B 	2903
		INCR 	5DH, 1H 		//0A7C 	1ADD
		LJUMP 	261H 			//0A7D 	3A61

		//;NFB.C: 770: }
		//;NFB.C: 771: HTVN_ = GET_ADC_DATA(1);
		LDWI 	1H 			//0A7E 	0001
		MOVLP 	1EH 			//0A7F 	019E
		LCALL 	648H 			//0A80 	3648
		MOVLP 	8H 			//0A81 	0188

		//;NFB.C: 772: for(int i=0;i<4;i++){
		LCALL 	786H 			//0A82 	3786
		MOVLP 	8H 			//0A83 	0188
		CLRF 	5EH 			//0A84 	11DE
		CLRF 	5FH 			//0A85 	11DF
		LDR 	5FH, 0H 			//0A86 	185F
		LCALL 	727H 			//0A87 	3727
		MOVLP 	8H 			//0A88 	0188
		BTSS 	3H, 2H 			//0A89 	2D03
		LJUMP 	28EH 			//0A8A 	3A8E
		LDWI 	4H 			//0A8B 	0004
		MOVLB 	3H 			//0A8C 	1023
		SUBWR 	5EH, 0H 		//0A8D 	125E
		BTSC 	3H, 0H 			//0A8E 	2803
		LJUMP 	2A3H 			//0A8F 	3AA3

		//;NFB.C: 773: HTVN_ = (HTVN_+GET_ADC_DATA(1))/2;
		LDWI 	1H 			//0A90 	0001
		MOVLP 	1EH 			//0A91 	019E
		LCALL 	648H 			//0A92 	3648
		MOVLP 	8H 			//0A93 	0188
		MOVLB 	0H 			//0A94 	1020
		LDR 	61H, 0H 			//0A95 	1861
		MOVLB 	1H 			//0A96 	1021
		ADDWR 	45H, 0H 		//0A97 	1745
		STR 	59H 			//0A98 	10D9
		MOVLB 	0H 			//0A99 	1020
		LDR 	62H, 0H 			//0A9A 	1862
		LCALL 	720H 			//0A9B 	3720
		MOVLP 	8H 			//0A9C 	0188
		LCALL 	7A3H 			//0A9D 	37A3
		MOVLP 	8H 			//0A9E 	0188
		INCR 	5EH, 1H 		//0A9F 	1ADE
		BTSC 	3H, 2H 			//0AA0 	2903
		INCR 	5FH, 1H 		//0AA1 	1ADF
		LJUMP 	286H 			//0AA2 	3A86

		//;NFB.C: 774: }
		//;NFB.C: 775: HTVI_ = GET_ADC_DATA(4);
		LDWI 	4H 			//0AA3 	0004
		MOVLP 	1EH 			//0AA4 	019E
		LCALL 	648H 			//0AA5 	3648
		MOVLP 	8H 			//0AA6 	0188

		//;NFB.C: 776: for(int i=0;i<4;i++){
		LCALL 	766H 			//0AA7 	3766
		MOVLP 	8H 			//0AA8 	0188
		CLRF 	60H 			//0AA9 	11E0
		CLRF 	61H 			//0AAA 	11E1
		LDR 	61H, 0H 			//0AAB 	1861
		LCALL 	727H 			//0AAC 	3727
		MOVLP 	8H 			//0AAD 	0188
		BTSS 	3H, 2H 			//0AAE 	2D03
		LJUMP 	2B3H 			//0AAF 	3AB3
		LDWI 	4H 			//0AB0 	0004
		MOVLB 	3H 			//0AB1 	1023
		SUBWR 	60H, 0H 		//0AB2 	1260
		BTSC 	3H, 0H 			//0AB3 	2803
		LJUMP 	2C8H 			//0AB4 	3AC8

		//;NFB.C: 777: HTVI_ = (HTVI_+GET_ADC_DATA(4))/2;
		LDWI 	4H 			//0AB5 	0004
		MOVLP 	1EH 			//0AB6 	019E
		LCALL 	648H 			//0AB7 	3648
		MOVLP 	8H 			//0AB8 	0188
		MOVLB 	4H 			//0AB9 	1024
		LDR 	6EH, 0H 			//0ABA 	186E
		MOVLB 	1H 			//0ABB 	1021
		ADDWR 	45H, 0H 		//0ABC 	1745
		STR 	59H 			//0ABD 	10D9
		MOVLB 	4H 			//0ABE 	1024
		LDR 	6FH, 0H 			//0ABF 	186F
		LCALL 	720H 			//0AC0 	3720
		MOVLP 	8H 			//0AC1 	0188
		LCALL 	79BH 			//0AC2 	379B
		MOVLP 	8H 			//0AC3 	0188
		INCR 	60H, 1H 		//0AC4 	1AE0
		BTSC 	3H, 2H 			//0AC5 	2903
		INCR 	61H, 1H 		//0AC6 	1AE1
		LJUMP 	2ABH 			//0AC7 	3AAB

		//;NFB.C: 778: }
		//;NFB.C: 779: HTVP = (float)HTVP_*2/4096;
		MOVLB 	1H 			//0AC8 	1021
		LCALL 	5D8H 			//0AC9 	35D8
		MOVLP 	8H 			//0ACA 	0188
		LCALL 	76FH 			//0ACB 	376F
		MOVLP 	19H 			//0ACC 	0199
		LCALL 	132H 			//0ACD 	3132
		MOVLP 	8H 			//0ACE 	0188
		LCALL 	5A3H 			//0ACF 	35A3
		MOVLP 	1DH 			//0AD0 	019D
		LCALL 	59CH 			//0AD1 	359C
		MOVLP 	8H 			//0AD2 	0188
		LCALL 	6FAH 			//0AD3 	36FA
		MOVLP 	1EH 			//0AD4 	019E
		LCALL 	69EH 			//0AD5 	369E
		MOVLP 	8H 			//0AD6 	0188

		//;NFB.C: 780: HTVN = (float)HTVN_*2/4096;
		LCALL 	6BBH 			//0AD7 	36BB
		MOVLP 	8H 			//0AD8 	0188
		LCALL 	5D8H 			//0AD9 	35D8
		MOVLP 	8H 			//0ADA 	0188
		LCALL 	7DCH 			//0ADB 	37DC
		MOVLP 	19H 			//0ADC 	0199
		LCALL 	132H 			//0ADD 	3132
		MOVLP 	8H 			//0ADE 	0188
		LCALL 	5A3H 			//0ADF 	35A3
		MOVLP 	1DH 			//0AE0 	019D
		LCALL 	59CH 			//0AE1 	359C
		MOVLP 	8H 			//0AE2 	0188
		LCALL 	6FAH 			//0AE3 	36FA
		MOVLP 	1EH 			//0AE4 	019E
		LCALL 	69EH 			//0AE5 	369E
		MOVLP 	8H 			//0AE6 	0188

		//;NFB.C: 781: HTVI = (float)HTVI_*2/4096;
		LCALL 	695H 			//0AE7 	3695
		MOVLP 	8H 			//0AE8 	0188
		LCALL 	5D8H 			//0AE9 	35D8
		MOVLP 	8H 			//0AEA 	0188
		LCALL 	778H 			//0AEB 	3778
		MOVLP 	19H 			//0AEC 	0199
		LCALL 	132H 			//0AED 	3132
		MOVLP 	8H 			//0AEE 	0188
		LCALL 	5A3H 			//0AEF 	35A3
		MOVLP 	1DH 			//0AF0 	019D
		LCALL 	59CH 			//0AF1 	359C
		MOVLP 	8H 			//0AF2 	0188
		LCALL 	6FAH 			//0AF3 	36FA
		MOVLP 	1EH 			//0AF4 	019E
		LCALL 	69EH 			//0AF5 	369E
		MOVLP 	8H 			//0AF6 	0188

		//;NFB.C: 782: I = HTVI/0.01/39;
		LCALL 	669H 			//0AF7 	3669
		MOVLP 	1EH 			//0AF8 	019E
		LCALL 	69EH 			//0AF9 	369E
		MOVLP 	8H 			//0AFA 	0188

		//;NFB.C: 782: I = HTVI/0.01/39;
		LCALL 	6A2H 			//0AFB 	36A2
		MOVLP 	8H 			//0AFC 	0188
		LCALL 	65BH 			//0AFD 	365B
		MOVLP 	1EH 			//0AFE 	019E
		LCALL 	69EH 			//0AFF 	369E
		MOVLP 	8H 			//0B00 	0188

		//;NFB.C: 783: V = (HTVP-HTVN)*2;
		LCALL 	5AFH 			//0B01 	35AF
		MOVLP 	16H 			//0B02 	0196
		LCALL 	611H 			//0B03 	3611
		MOVLP 	8H 			//0B04 	0188
		LCALL 	73BH 			//0B05 	373B
		MOVLP 	1DH 			//0B06 	019D
		LCALL 	59CH 			//0B07 	359C
		MOVLP 	8H 			//0B08 	0188

		//;NFB.C: 784: R = V/I;
		LCALL 	62CH 			//0B09 	362C
		MOVLP 	1EH 			//0B0A 	019E
		LCALL 	69EH 			//0B0B 	369E
		MOVLP 	8H 			//0B0C 	0188

		//;NFB.C: 785: T = (((R/R0)-1)/0.0026)+25;
		LCALL 	607H 			//0B0D 	3607
		MOVLP 	1EH 			//0B0E 	019E
		LCALL 	69EH 			//0B0F 	369E
		MOVLP 	8H 			//0B10 	0188
		LCALL 	6C8H 			//0B11 	36C8
		MOVLP 	19H 			//0B12 	0199
		LCALL 	15FH 			//0B13 	315F
		MOVLP 	8H 			//0B14 	0188

		//;NFB.C: 785: T = (((R/R0)-1)/0.0026)+25;
		LCALL 	5E2H 			//0B15 	35E2
		MOVLP 	1EH 			//0B16 	019E
		LCALL 	69EH 			//0B17 	369E
		MOVLP 	8H 			//0B18 	0188
		LCALL 	6C8H 			//0B19 	36C8
		MOVLP 	19H 			//0B1A 	0199
		LCALL 	15FH 			//0B1B 	315F
		MOVLP 	8H 			//0B1C 	0188
		LCALL 	747H 			//0B1D 	3747
		MOVLP 	8H 			//0B1E 	0188

		//;NFB.C: 786: }
		//;NFB.C: 787: if(Smoketimecnt>=timeleft2){
		MOVLB 	4H 			//0B1F 	1024
		LDR 	4AH, 0H 			//0B20 	184A
		MOVLB 	1H 			//0B21 	1021
		STR 	59H 			//0B22 	10D9
		MOVLB 	4H 			//0B23 	1024
		LDR 	4BH, 0H 			//0B24 	184B
		LCALL 	6B2H 			//0B25 	36B2
		MOVLP 	8H 			//0B26 	0188
		MOVLB 	0H 			//0B27 	1020
		SUBWR 	5AH, 0H 		//0B28 	125A
		BTSS 	3H, 2H 			//0B29 	2D03
		LJUMP 	335H 			//0B2A 	3B35
		LCALL 	7E7H 			//0B2B 	37E7
		MOVLP 	8H 			//0B2C 	0188
		BTSS 	3H, 2H 			//0B2D 	2D03
		LJUMP 	335H 			//0B2E 	3B35
		LCALL 	7E2H 			//0B2F 	37E2
		MOVLP 	8H 			//0B30 	0188
		BTSS 	3H, 2H 			//0B31 	2D03
		LJUMP 	335H 			//0B32 	3B35
		LCALL 	7ECH 			//0B33 	37EC
		MOVLP 	8H 			//0B34 	0188
		BTSC 	3H, 0H 			//0B35 	2803

		//;NFB.C: 788: if(PA0){
		BTSS 	CH, 0H 			//0B36 	2C0C
		LJUMP 	357H 			//0B37 	3B57

		//;NFB.C: 789: char msg[10];
		//;NFB.C: 790: sprintf(msg,"T:%0.1f\r\n",T);
		LDWI 	B4H 			//0B38 	00B4
		MOVLB 	1H 			//0B39 	1021
		STR 	41H 			//0B3A 	10C1
		LDWI 	1H 			//0B3B 	0001
		LCALL 	71CH 			//0B3C 	371C
		MOVLP 	8H 			//0B3D 	0188
		LCALL 	6ECH 			//0B3E 	36EC
		MOVLP 	10H 			//0B3F 	0190
		LCALL 	74H 			//0B40 	3074
		MOVLP 	8H 			//0B41 	0188

		//;NFB.C: 791: send(msg,strlen(msg));
		LDWI 	B4H 			//0B42 	00B4
		STR 	4AH 			//0B43 	10CA
		LDWI 	1H 			//0B44 	0001
		STR 	4BH 			//0B45 	10CB
		LDWI 	B4H 			//0B46 	00B4
		MOVLB 	0H 			//0B47 	1020
		STR 	2DH 			//0B48 	10AD
		LDWI 	1H 			//0B49 	0001
		STR 	2EH 			//0B4A 	10AE
		MOVLP 	5H 			//0B4B 	0185
		LCALL 	50BH 			//0B4C 	350B
		MOVLP 	8H 			//0B4D 	0188
		LCALL 	714H 			//0B4E 	3714
		MOVLP 	1AH 			//0B4F 	019A
		LCALL 	20DH 			//0B50 	320D
		MOVLP 	8H 			//0B51 	0188

		//;NFB.C: 792: timeleft2 += 100;
		LDWI 	64H 			//0B52 	0064
		MOVLB 	4H 			//0B53 	1024
		ADDWR 	4AH, 1H 		//0B54 	17CA
		BTSC 	3H, 0H 			//0B55 	2803
		INCR 	4BH, 1H 		//0B56 	1ACB

		//;NFB.C: 793: }
		//;NFB.C: 794: }
		//;NFB.C: 795: diffT = T2-T;
		MOVLB 	3H 			//0B57 	1023
		LCALL 	64FH 			//0B58 	364F
		MOVLB 	4H 			//0B59 	1024
		LDR 	20H, 0H 			//0B5A 	1820
		MOVLB 	0H 			//0B5B 	1020
		STR 	50H 			//0B5C 	10D0
		MOVLB 	4H 			//0B5D 	1024
		LDR 	21H, 0H 			//0B5E 	1821
		MOVLB 	0H 			//0B5F 	1020
		STR 	51H 			//0B60 	10D1
		MOVLB 	4H 			//0B61 	1024
		LDR 	22H, 0H 			//0B62 	1822
		MOVLB 	0H 			//0B63 	1020
		STR 	52H 			//0B64 	10D2
		MOVLP 	16H 			//0B65 	0196
		LCALL 	611H 			//0B66 	3611
		MOVLP 	8H 			//0B67 	0188
		LDR 	4DH, 0H 			//0B68 	184D
		STR 	5EH 			//0B69 	10DE
		LDR 	4EH, 0H 			//0B6A 	184E
		STR 	5FH 			//0B6B 	10DF
		LDR 	4FH, 0H 			//0B6C 	184F
		STR 	60H 			//0B6D 	10E0

		//;NFB.C: 796: if(diffT>0){
		CLRF 	3FH 			//0B6E 	11BF
		CLRF 	40H 			//0B6F 	11C0
		CLRF 	41H 			//0B70 	11C1
		LCALL 	7C1H 			//0B71 	37C1
		MOVLP 	15H 			//0B72 	0195
		LCALL 	543H 			//0B73 	3543
		MOVLP 	8H 			//0B74 	0188
		BTSC 	3H, 0H 			//0B75 	2803
		LJUMP 	379H 			//0B76 	3B79

		//;NFB.C: 797: PA0 = 1;
		BSR 	CH, 0H 			//0B77 	240C

		//;NFB.C: 798: } else{
		LJUMP 	37AH 			//0B78 	3B7A

		//;NFB.C: 799: PA0 = 0;
		BCR 	CH, 0H 			//0B79 	200C

		//;NFB.C: 800: }
		//;NFB.C: 801: if(Smoketimecnt>=timeleft3){
		MOVLB 	4H 			//0B7A 	1024
		LDR 	48H, 0H 			//0B7B 	1848
		MOVLB 	1H 			//0B7C 	1021
		STR 	59H 			//0B7D 	10D9
		MOVLB 	4H 			//0B7E 	1024
		LDR 	49H, 0H 			//0B7F 	1849
		LCALL 	6B2H 			//0B80 	36B2
		MOVLP 	8H 			//0B81 	0188
		MOVLB 	0H 			//0B82 	1020
		SUBWR 	5AH, 0H 		//0B83 	125A
		BTSS 	3H, 2H 			//0B84 	2D03
		LJUMP 	390H 			//0B85 	3B90
		LCALL 	7E7H 			//0B86 	37E7
		MOVLP 	8H 			//0B87 	0188
		BTSS 	3H, 2H 			//0B88 	2D03
		LJUMP 	390H 			//0B89 	3B90
		LCALL 	7E2H 			//0B8A 	37E2
		MOVLP 	8H 			//0B8B 	0188
		BTSS 	3H, 2H 			//0B8C 	2D03
		LJUMP 	390H 			//0B8D 	3B90
		LCALL 	7ECH 			//0B8E 	37EC
		MOVLP 	8H 			//0B8F 	0188
		BTSS 	3H, 0H 			//0B90 	2C03
		LJUMP 	398H 			//0B91 	3B98

		//;NFB.C: 802: PA0 = 1;
		BSR 	CH, 0H 			//0B92 	240C

		//;NFB.C: 803: timeleft3 += 10;
		LDWI 	AH 			//0B93 	000A
		MOVLB 	4H 			//0B94 	1024
		ADDWR 	48H, 1H 		//0B95 	17C8
		BTSC 	3H, 0H 			//0B96 	2803
		INCR 	49H, 1H 		//0B97 	1AC9

		//;NFB.C: 804: }
		//;NFB.C: 805: if(diffT>Ptarget && !PuffOn && Smoketimecnt>200){
		MOVLB 	4H 			//0B98 	1024
		LDR 	3FH, 0H 			//0B99 	183F
		MOVLB 	0H 			//0B9A 	1020
		STR 	3CH 			//0B9B 	10BC
		MOVLB 	4H 			//0B9C 	1024
		LDR 	3EH, 0H 			//0B9D 	183E
		MOVLB 	0H 			//0B9E 	1020
		STR 	3BH 			//0B9F 	10BB
		MOVLP 	1DH 			//0BA0 	019D
		LCALL 	581H 			//0BA1 	3581
		MOVLP 	8H 			//0BA2 	0188
		LDR 	3BH, 0H 			//0BA3 	183B
		STR 	3FH 			//0BA4 	10BF
		LDR 	3CH, 0H 			//0BA5 	183C
		STR 	40H 			//0BA6 	10C0
		LDR 	3DH, 0H 			//0BA7 	183D
		STR 	41H 			//0BA8 	10C1
		LCALL 	7C1H 			//0BA9 	37C1
		MOVLP 	15H 			//0BAA 	0195
		LCALL 	543H 			//0BAB 	3543
		MOVLP 	8H 			//0BAC 	0188
		BTSC 	3H, 0H 			//0BAD 	2803
		LJUMP 	407H 			//0BAE 	3C07
		MOVLB 	4H 			//0BAF 	1024
		LDR 	5EH, 0H 			//0BB0 	185E
		IORWR 	5FH, 0H 		//0BB1 	145F
		BTSS 	3H, 2H 			//0BB2 	2D03
		LJUMP 	407H 			//0BB3 	3C07
		MOVLB 	0H 			//0BB4 	1020
		LDR 	5AH, 0H 			//0BB5 	185A
		BTSS 	3H, 2H 			//0BB6 	2D03
		LJUMP 	3C2H 			//0BB7 	3BC2
		LDR 	59H, 0H 			//0BB8 	1859
		BTSS 	3H, 2H 			//0BB9 	2D03
		LJUMP 	3C2H 			//0BBA 	3BC2
		LDR 	58H, 0H 			//0BBB 	1858
		BTSS 	3H, 2H 			//0BBC 	2D03
		LJUMP 	3C2H 			//0BBD 	3BC2
		LDWI 	C9H 			//0BBE 	00C9
		SUBWR 	57H, 0H 		//0BBF 	1257
		BTSS 	3H, 0H 			//0BC0 	2C03
		LJUMP 	407H 			//0BC1 	3C07

		//;NFB.C: 806: Puffcnt++;
		LDWI 	1H 			//0BC2 	0001
		MOVLB 	5H 			//0BC3 	1025
		ADDWR 	20H, 1H 		//0BC4 	17A0
		LDWI 	0H 			//0BC5 	0000
		ADDWFC 	21H, 1H 		//0BC6 	0DA1
		ADDWFC 	22H, 1H 		//0BC7 	0DA2
		ADDWFC 	23H, 1H 		//0BC8 	0DA3

		//;NFB.C: 807: int pf = Puffcnt;
		LDR 	21H, 0H 			//0BC9 	1821
		MOVLB 	1H 			//0BCA 	1021
		STR 	62H 			//0BCB 	10E2
		MOVLB 	5H 			//0BCC 	1025
		LDR 	20H, 0H 			//0BCD 	1820
		MOVLB 	1H 			//0BCE 	1021
		STR 	61H 			//0BCF 	10E1

		//;NFB.C: 808: char msg[10];
		//;NFB.C: 809: sprintf(msg,"D%d,%0.1f\r\n",pf,diffT);
		LDWI 	BEH 			//0BD0 	00BE
		STR 	41H 			//0BD1 	10C1
		LDWI 	1H 			//0BD2 	0001
		STR 	42H 			//0BD3 	10C2
		LDWI 	DDH 			//0BD4 	00DD
		STR 	43H 			//0BD5 	10C3
		LDWI 	A0H 			//0BD6 	00A0
		STR 	44H 			//0BD7 	10C4
		LDR 	62H, 0H 			//0BD8 	1862
		STR 	46H 			//0BD9 	10C6
		LDR 	61H, 0H 			//0BDA 	1861
		STR 	45H 			//0BDB 	10C5
		MOVLB 	0H 			//0BDC 	1020
		LDR 	5EH, 0H 			//0BDD 	185E
		MOVLB 	1H 			//0BDE 	1021
		STR 	47H 			//0BDF 	10C7
		MOVLB 	0H 			//0BE0 	1020
		LDR 	5FH, 0H 			//0BE1 	185F
		MOVLB 	1H 			//0BE2 	1021
		STR 	48H 			//0BE3 	10C8
		MOVLB 	0H 			//0BE4 	1020
		LDR 	60H, 0H 			//0BE5 	1860
		MOVLB 	1H 			//0BE6 	1021
		STR 	49H 			//0BE7 	10C9
		MOVLP 	10H 			//0BE8 	0190
		LCALL 	74H 			//0BE9 	3074
		MOVLP 	8H 			//0BEA 	0188

		//;NFB.C: 810: send(msg,strlen(msg));
		LDWI 	BEH 			//0BEB 	00BE
		STR 	4AH 			//0BEC 	10CA
		LDWI 	1H 			//0BED 	0001
		STR 	4BH 			//0BEE 	10CB
		LDWI 	BEH 			//0BEF 	00BE
		MOVLB 	0H 			//0BF0 	1020
		STR 	2DH 			//0BF1 	10AD
		LDWI 	1H 			//0BF2 	0001
		STR 	2EH 			//0BF3 	10AE
		MOVLP 	5H 			//0BF4 	0185
		LCALL 	50BH 			//0BF5 	350B
		MOVLP 	8H 			//0BF6 	0188
		LCALL 	714H 			//0BF7 	3714
		MOVLP 	1AH 			//0BF8 	019A
		LCALL 	20DH 			//0BF9 	320D
		MOVLP 	8H 			//0BFA 	0188

		//;NFB.C: 811: PuffOn = 1;
		MOVLB 	4H 			//0BFB 	1024
		CLRF 	5EH 			//0BFC 	11DE
		INCR 	5EH, 1H 		//0BFD 	1ADE
		CLRF 	5FH 			//0BFE 	11DF

		//;NFB.C: 812: timenow = Smoketimecnt;
		MOVLB 	0H 			//0BFF 	1020
		LDR 	58H, 0H 			//0C00 	1858
		MOVLB 	4H 			//0C01 	1024
		STR 	45H 			//0C02 	10C5
		MOVLB 	0H 			//0C03 	1020
		LDR 	57H, 0H 			//0C04 	1857
		MOVLB 	4H 			//0C05 	1024
		STR 	44H 			//0C06 	10C4

		//;NFB.C: 813: }
		//;NFB.C: 814: if(PuffOn){
		MOVLB 	4H 			//0C07 	1024
		LDR 	5EH, 0H 			//0C08 	185E
		IORWR 	5FH, 0H 		//0C09 	145F
		BTSC 	3H, 2H 			//0C0A 	2903
		LJUMP 	440H 			//0C0B 	3C40

		//;NFB.C: 815: if(Smoketimecnt-timenow>=200){
		LDR 	44H, 0H 			//0C0C 	1844
		MOVLB 	1H 			//0C0D 	1021
		STR 	59H 			//0C0E 	10D9
		MOVLB 	4H 			//0C0F 	1024
		LDR 	45H, 0H 			//0C10 	1845
		MOVLB 	1H 			//0C11 	1021
		STR 	5AH 			//0C12 	10DA
		LDWI 	0H 			//0C13 	0000
		BTSC 	5AH, 7H 		//0C14 	2BDA
		LDWI 	FFH 			//0C15 	00FF
		STR 	5BH 			//0C16 	10DB
		STR 	5CH 			//0C17 	10DC
		MOVLB 	0H 			//0C18 	1020
		LDR 	57H, 0H 			//0C19 	1857
		MOVLB 	1H 			//0C1A 	1021
		STR 	5DH 			//0C1B 	10DD
		MOVLB 	0H 			//0C1C 	1020
		LDR 	58H, 0H 			//0C1D 	1858
		MOVLB 	1H 			//0C1E 	1021
		STR 	5EH 			//0C1F 	10DE
		MOVLB 	0H 			//0C20 	1020
		LDR 	59H, 0H 			//0C21 	1859
		MOVLB 	1H 			//0C22 	1021
		STR 	5FH 			//0C23 	10DF
		MOVLB 	0H 			//0C24 	1020
		LDR 	5AH, 0H 			//0C25 	185A
		MOVLB 	1H 			//0C26 	1021
		STR 	60H 			//0C27 	10E0
		LDR 	59H, 0H 			//0C28 	1859
		SUBWR 	5DH, 1H 		//0C29 	12DD
		LDR 	5AH, 0H 			//0C2A 	185A
		SUBWFB 	5EH, 1H 		//0C2B 	0BDE
		LDR 	5BH, 0H 			//0C2C 	185B
		SUBWFB 	5FH, 1H 		//0C2D 	0BDF
		LDR 	5CH, 0H 			//0C2E 	185C
		SUBWFB 	60H, 1H 		//0C2F 	0BE0
		LDR 	60H, 0H 			//0C30 	1860
		BTSS 	3H, 2H 			//0C31 	2D03
		LJUMP 	43DH 			//0C32 	3C3D
		LDR 	5FH, 0H 			//0C33 	185F
		BTSS 	3H, 2H 			//0C34 	2D03
		LJUMP 	43DH 			//0C35 	3C3D
		LDR 	5EH, 0H 			//0C36 	185E
		BTSS 	3H, 2H 			//0C37 	2D03
		LJUMP 	43DH 			//0C38 	3C3D
		LDWI 	C8H 			//0C39 	00C8
		SUBWR 	5DH, 0H 		//0C3A 	125D
		BTSS 	3H, 0H 			//0C3B 	2C03
		LJUMP 	440H 			//0C3C 	3C40

		//;NFB.C: 816: PuffOn = 0;
		MOVLB 	4H 			//0C3D 	1024
		CLRF 	5EH 			//0C3E 	11DE
		CLRF 	5FH 			//0C3F 	11DF

		//;NFB.C: 817: }
		//;NFB.C: 818: }
		//;NFB.C: 819: if(Smoketimecnt>=(t2*100) || Puffcnt>=puffno){
		MOVLB 	4H 			//0C40 	1024
		LDR 	43H, 0H 			//0C41 	1843
		MOVLB 	0H 			//0C42 	1020
		STR 	3CH 			//0C43 	10BC
		MOVLB 	4H 			//0C44 	1024
		LDR 	42H, 0H 			//0C45 	1842
		MOVLB 	0H 			//0C46 	1020
		STR 	3BH 			//0C47 	10BB
		LDWI 	64H 			//0C48 	0064
		STR 	3DH 			//0C49 	10BD
		CLRF 	3EH 			//0C4A 	11BE
		MOVLP 	1BH 			//0C4B 	019B
		LCALL 	3ADH 			//0C4C 	33AD
		MOVLP 	8H 			//0C4D 	0188
		LDR 	3BH, 0H 			//0C4E 	183B
		MOVLB 	1H 			//0C4F 	1021
		STR 	59H 			//0C50 	10D9
		MOVLB 	0H 			//0C51 	1020
		LDR 	3CH, 0H 			//0C52 	183C
		LCALL 	6B2H 			//0C53 	36B2
		MOVLP 	8H 			//0C54 	0188
		MOVLB 	0H 			//0C55 	1020
		SUBWR 	5AH, 0H 		//0C56 	125A
		BTSS 	3H, 2H 			//0C57 	2D03
		LJUMP 	463H 			//0C58 	3C63
		LCALL 	7E7H 			//0C59 	37E7
		MOVLP 	8H 			//0C5A 	0188
		BTSS 	3H, 2H 			//0C5B 	2D03
		LJUMP 	463H 			//0C5C 	3C63
		LCALL 	7E2H 			//0C5D 	37E2
		MOVLP 	8H 			//0C5E 	0188
		BTSS 	3H, 2H 			//0C5F 	2D03
		LJUMP 	463H 			//0C60 	3C63
		LCALL 	7ECH 			//0C61 	37EC
		MOVLP 	8H 			//0C62 	0188
		BTSC 	3H, 0H 			//0C63 	2803
		LJUMP 	483H 			//0C64 	3C83
		MOVLB 	4H 			//0C65 	1024
		LDR 	40H, 0H 			//0C66 	1840
		MOVLB 	1H 			//0C67 	1021
		STR 	59H 			//0C68 	10D9
		MOVLB 	4H 			//0C69 	1024
		LDR 	41H, 0H 			//0C6A 	1841
		LCALL 	6B2H 			//0C6B 	36B2
		MOVLP 	8H 			//0C6C 	0188
		MOVLB 	5H 			//0C6D 	1025
		SUBWR 	23H, 0H 		//0C6E 	1223
		BTSS 	3H, 2H 			//0C6F 	2D03
		LJUMP 	481H 			//0C70 	3C81
		MOVLB 	1H 			//0C71 	1021
		LDR 	5BH, 0H 			//0C72 	185B
		MOVLB 	5H 			//0C73 	1025
		SUBWR 	22H, 0H 		//0C74 	1222
		BTSS 	3H, 2H 			//0C75 	2D03
		LJUMP 	481H 			//0C76 	3C81
		MOVLB 	1H 			//0C77 	1021
		LDR 	5AH, 0H 			//0C78 	185A
		MOVLB 	5H 			//0C79 	1025
		SUBWR 	21H, 0H 		//0C7A 	1221
		BTSS 	3H, 2H 			//0C7B 	2D03
		LJUMP 	481H 			//0C7C 	3C81
		MOVLB 	1H 			//0C7D 	1021
		LDR 	59H, 0H 			//0C7E 	1859
		MOVLB 	5H 			//0C7F 	1025
		SUBWR 	20H, 0H 		//0C80 	1220
		BTSS 	3H, 0H 			//0C81 	2C03
		LJUMP 	49BH 			//0C82 	3C9B

		//;NFB.C: 820: send((char*)"T0\r\n",4);
		LCALL 	78FH 			//0C83 	378F
		MOVLP 	8H 			//0C84 	0188
		LCALL 	781H 			//0C85 	3781
		MOVLP 	1AH 			//0C86 	019A
		LCALL 	20DH 			//0C87 	320D
		MOVLP 	8H 			//0C88 	0188

		//;NFB.C: 821: send((char*)"S0\r\n",4);
		LCALL 	793H 			//0C89 	3793
		MOVLP 	8H 			//0C8A 	0188
		LCALL 	781H 			//0C8B 	3781
		MOVLP 	1AH 			//0C8C 	019A
		LCALL 	20DH 			//0C8D 	320D
		MOVLP 	8H 			//0C8E 	0188

		//;NFB.C: 822: PA0 = 0;
		MOVLB 	0H 			//0C8F 	1020
		BCR 	CH, 0H 			//0C90 	200C

		//;NFB.C: 823: SmokeOn = 0;
		MOVLB 	4H 			//0C91 	1024

		//;NFB.C: 824: Smoketimer = 0;
		//;NFB.C: 825: PuffOn = 0;
		LCALL 	7BAH 			//0C92 	37BA
		MOVLP 	8H 			//0C93 	0188

		//;NFB.C: 826: PB0 = 1;
		MOVLB 	0H 			//0C94 	1020

		//;NFB.C: 827: DelayMs(500);
		LCALL 	753H 			//0C95 	3753
		MOVLP 	1AH 			//0C96 	019A
		LCALL 	230H 			//0C97 	3230
		MOVLP 	8H 			//0C98 	0188

		//;NFB.C: 828: PB0 = 0;
		MOVLB 	0H 			//0C99 	1020
		BCR 	DH, 0H 			//0C9A 	200D

		//;NFB.C: 829: }
		//;NFB.C: 830: }
		//;NFB.C: 831: if(ReadFlag){
		MOVLB 	4H 			//0C9B 	1024
		LDR 	5CH, 0H 			//0C9C 	185C
		IORWR 	5DH, 0H 		//0C9D 	145D
		BTSC 	3H, 2H 			//0C9E 	2903
		LJUMP 	4F6H 			//0C9F 	3CF6
		LDWI 	20H 			//0CA0 	0020

		//;NFB.C: 832: ReadFlag = 0;
		CLRF 	5CH 			//0CA1 	11DC
		CLRF 	5DH 			//0CA2 	11DD

		//;NFB.C: 833: char msg[80];
		//;NFB.C: 834: sprintf(msg,"%d,%d,%0.0f,%0.0f,%d,%d\r\n",t1,t2,T1,T2,puffno,Ptarget);
		MOVLB 	1H 			//0CA3 	1021
		STR 	41H 			//0CA4 	10C1
		LDWI 	3H 			//0CA5 	0003
		STR 	42H 			//0CA6 	10C2
		LDWI 	C3H 			//0CA7 	00C3
		STR 	43H 			//0CA8 	10C3
		LDWI 	A0H 			//0CA9 	00A0
		STR 	44H 			//0CAA 	10C4
		MOVLB 	3H 			//0CAB 	1023
		LDR 	6DH, 0H 			//0CAC 	186D
		MOVLB 	1H 			//0CAD 	1021
		STR 	46H 			//0CAE 	10C6
		MOVLB 	3H 			//0CAF 	1023
		LDR 	6CH, 0H 			//0CB0 	186C
		MOVLB 	1H 			//0CB1 	1021
		STR 	45H 			//0CB2 	10C5
		MOVLB 	4H 			//0CB3 	1024
		LDR 	43H, 0H 			//0CB4 	1843
		MOVLB 	1H 			//0CB5 	1021
		STR 	48H 			//0CB6 	10C8
		MOVLB 	4H 			//0CB7 	1024
		LDR 	42H, 0H 			//0CB8 	1842
		MOVLB 	1H 			//0CB9 	1021
		STR 	47H 			//0CBA 	10C7
		MOVLB 	0H 			//0CBB 	1020
		LDR 	5BH, 0H 			//0CBC 	185B
		MOVLB 	1H 			//0CBD 	1021
		STR 	49H 			//0CBE 	10C9
		MOVLB 	0H 			//0CBF 	1020
		LDR 	5CH, 0H 			//0CC0 	185C
		MOVLB 	1H 			//0CC1 	1021
		STR 	4AH 			//0CC2 	10CA
		MOVLB 	0H 			//0CC3 	1020
		LDR 	5DH, 0H 			//0CC4 	185D
		MOVLB 	1H 			//0CC5 	1021
		STR 	4BH 			//0CC6 	10CB
		MOVLB 	4H 			//0CC7 	1024
		LDR 	20H, 0H 			//0CC8 	1820
		MOVLB 	1H 			//0CC9 	1021
		STR 	4CH 			//0CCA 	10CC
		MOVLB 	4H 			//0CCB 	1024
		LDR 	21H, 0H 			//0CCC 	1821
		MOVLB 	1H 			//0CCD 	1021
		STR 	4DH 			//0CCE 	10CD
		MOVLB 	4H 			//0CCF 	1024
		LDR 	22H, 0H 			//0CD0 	1822
		MOVLB 	1H 			//0CD1 	1021
		STR 	4EH 			//0CD2 	10CE
		MOVLB 	4H 			//0CD3 	1024
		LDR 	41H, 0H 			//0CD4 	1841
		MOVLB 	1H 			//0CD5 	1021
		STR 	50H 			//0CD6 	10D0
		MOVLB 	4H 			//0CD7 	1024
		LDR 	40H, 0H 			//0CD8 	1840
		MOVLB 	1H 			//0CD9 	1021
		STR 	4FH 			//0CDA 	10CF
		MOVLB 	4H 			//0CDB 	1024
		LDR 	3FH, 0H 			//0CDC 	183F
		MOVLB 	1H 			//0CDD 	1021
		STR 	52H 			//0CDE 	10D2
		MOVLB 	4H 			//0CDF 	1024
		LDR 	3EH, 0H 			//0CE0 	183E
		MOVLB 	1H 			//0CE1 	1021
		STR 	51H 			//0CE2 	10D1
		MOVLP 	10H 			//0CE3 	0190
		LCALL 	74H 			//0CE4 	3074
		MOVLP 	8H 			//0CE5 	0188

		//;NFB.C: 835: send(msg,strlen(msg));
		LDWI 	20H 			//0CE6 	0020
		STR 	4AH 			//0CE7 	10CA
		LDWI 	3H 			//0CE8 	0003
		STR 	4BH 			//0CE9 	10CB
		LDWI 	20H 			//0CEA 	0020
		MOVLB 	0H 			//0CEB 	1020
		STR 	2DH 			//0CEC 	10AD
		LDWI 	3H 			//0CED 	0003
		STR 	2EH 			//0CEE 	10AE
		MOVLP 	5H 			//0CEF 	0185
		LCALL 	50BH 			//0CF0 	350B
		MOVLP 	8H 			//0CF1 	0188
		LCALL 	714H 			//0CF2 	3714
		MOVLP 	1AH 			//0CF3 	019A
		LCALL 	20DH 			//0CF4 	320D
		MOVLP 	8H 			//0CF5 	0188

		//;NFB.C: 836: }
		//;NFB.C: 837: if(t1E){
		MOVLB 	4H 			//0CF6 	1024
		LDR 	5AH, 0H 			//0CF7 	185A
		IORWR 	5BH, 0H 		//0CF8 	145B
		BTSC 	3H, 2H 			//0CF9 	2903
		LJUMP 	508H 			//0CFA 	3D08

		//;NFB.C: 838: t1E = 0;
		CLRF 	5AH 			//0CFB 	11DA
		CLRF 	5BH 			//0CFC 	11DB

		//;NFB.C: 839: unsigned char dataL = t1;
		MOVLB 	3H 			//0CFD 	1023
		LDR 	6CH, 0H 			//0CFE 	186C
		MOVLB 	1H 			//0CFF 	1021
		STR 	63H 			//0D00 	10E3

		//;NFB.C: 840: EEPROMwrite(0x01,dataL);
		LDR 	63H, 0H 			//0D01 	1863
		MOVLB 	0H 			//0D02 	1020
		STR 	2DH 			//0D03 	10AD
		LDWI 	1H 			//0D04 	0001
		MOVLP 	1DH 			//0D05 	019D
		LCALL 	50CH 			//0D06 	350C
		MOVLP 	8H 			//0D07 	0188

		//;NFB.C: 841: }
		//;NFB.C: 842: if(t2E){
		MOVLB 	4H 			//0D08 	1024
		LDR 	58H, 0H 			//0D09 	1858
		IORWR 	59H, 0H 		//0D0A 	1459
		BTSC 	3H, 2H 			//0D0B 	2903
		LJUMP 	525H 			//0D0C 	3D25

		//;NFB.C: 843: t2E = 0;
		CLRF 	58H 			//0D0D 	11D8
		CLRF 	59H 			//0D0E 	11D9

		//;NFB.C: 844: unsigned char dataL = t2&0xFF;
		LDR 	42H, 0H 			//0D0F 	1842
		MOVLB 	1H 			//0D10 	1021
		STR 	64H 			//0D11 	10E4

		//;NFB.C: 845: unsigned char dataH = (t2>>8)&0xFF;
		MOVLB 	4H 			//0D12 	1024
		LDR 	43H, 0H 			//0D13 	1843
		MOVLB 	3H 			//0D14 	1023
		STR 	48H 			//0D15 	10C8

		//;NFB.C: 846: EEPROMwrite(0x02,dataL);
		MOVLB 	1H 			//0D16 	1021
		LDR 	64H, 0H 			//0D17 	1864
		MOVLB 	0H 			//0D18 	1020
		STR 	2DH 			//0D19 	10AD
		LDWI 	2H 			//0D1A 	0002
		MOVLP 	1DH 			//0D1B 	019D
		LCALL 	50CH 			//0D1C 	350C
		MOVLP 	8H 			//0D1D 	0188

		//;NFB.C: 847: EEPROMwrite(0x03,dataH);
		LDR 	48H, 0H 			//0D1E 	1848
		MOVLB 	0H 			//0D1F 	1020
		STR 	2DH 			//0D20 	10AD
		LDWI 	3H 			//0D21 	0003
		MOVLP 	1DH 			//0D22 	019D
		LCALL 	50CH 			//0D23 	350C
		MOVLP 	8H 			//0D24 	0188

		//;NFB.C: 848: }
		//;NFB.C: 849: if(T1E){
		MOVLB 	4H 			//0D25 	1024
		LDR 	56H, 0H 			//0D26 	1856
		IORWR 	57H, 0H 		//0D27 	1457
		BTSC 	3H, 2H 			//0D28 	2903
		LJUMP 	553H 			//0D29 	3D53

		//;NFB.C: 850: T1E = 0;
		CLRF 	56H 			//0D2A 	11D6
		CLRF 	57H 			//0D2B 	11D7

		//;NFB.C: 851: int data = (int)T1;
		MOVLB 	0H 			//0D2C 	1020
		LDR 	5BH, 0H 			//0D2D 	185B
		MOVLB 	1H 			//0D2E 	1021
		STR 	34H 			//0D2F 	10B4
		MOVLB 	0H 			//0D30 	1020
		LDR 	5CH, 0H 			//0D31 	185C
		MOVLB 	1H 			//0D32 	1021
		STR 	35H 			//0D33 	10B5
		MOVLB 	0H 			//0D34 	1020
		LDR 	5DH, 0H 			//0D35 	185D
		MOVLB 	1H 			//0D36 	1021
		STR 	36H 			//0D37 	10B6
		MOVLP 	15H 			//0D38 	0195
		LCALL 	5A5H 			//0D39 	35A5
		MOVLP 	8H 			//0D3A 	0188
		LDR 	35H, 0H 			//0D3B 	1835
		MOVLB 	3H 			//0D3C 	1023
		STR 	50H 			//0D3D 	10D0
		MOVLB 	1H 			//0D3E 	1021
		LDR 	34H, 0H 			//0D3F 	1834
		MOVLB 	3H 			//0D40 	1023
		STR 	4FH 			//0D41 	10CF

		//;NFB.C: 852: unsigned char dataL = data&0xFF;
		STR 	49H 			//0D42 	10C9

		//;NFB.C: 853: unsigned char dataH = (data>>8)&0xFF;
		LDR 	50H, 0H 			//0D43 	1850
		STR 	4AH 			//0D44 	10CA

		//;NFB.C: 854: EEPROMwrite(0x04,dataL);
		LDR 	49H, 0H 			//0D45 	1849
		MOVLB 	0H 			//0D46 	1020
		STR 	2DH 			//0D47 	10AD
		LDWI 	4H 			//0D48 	0004
		MOVLP 	1DH 			//0D49 	019D
		LCALL 	50CH 			//0D4A 	350C
		MOVLP 	8H 			//0D4B 	0188

		//;NFB.C: 855: EEPROMwrite(0x05,dataH);
		LDR 	4AH, 0H 			//0D4C 	184A
		MOVLB 	0H 			//0D4D 	1020
		STR 	2DH 			//0D4E 	10AD
		LDWI 	5H 			//0D4F 	0005
		MOVLP 	1DH 			//0D50 	019D
		LCALL 	50CH 			//0D51 	350C
		MOVLP 	8H 			//0D52 	0188

		//;NFB.C: 856: }
		//;NFB.C: 857: if(T2E){
		MOVLB 	4H 			//0D53 	1024
		LDR 	54H, 0H 			//0D54 	1854
		IORWR 	55H, 0H 		//0D55 	1455
		BTSC 	3H, 2H 			//0D56 	2903
		LJUMP 	580H 			//0D57 	3D80

		//;NFB.C: 858: T2E = 0;
		CLRF 	54H 			//0D58 	11D4
		CLRF 	55H 			//0D59 	11D5

		//;NFB.C: 859: int data = (int)T2;
		LDR 	20H, 0H 			//0D5A 	1820
		MOVLB 	1H 			//0D5B 	1021
		STR 	34H 			//0D5C 	10B4
		MOVLB 	4H 			//0D5D 	1024
		LDR 	21H, 0H 			//0D5E 	1821
		MOVLB 	1H 			//0D5F 	1021
		STR 	35H 			//0D60 	10B5
		MOVLB 	4H 			//0D61 	1024
		LDR 	22H, 0H 			//0D62 	1822
		MOVLB 	1H 			//0D63 	1021
		STR 	36H 			//0D64 	10B6
		MOVLP 	15H 			//0D65 	0195
		LCALL 	5A5H 			//0D66 	35A5
		MOVLP 	8H 			//0D67 	0188
		LDR 	35H, 0H 			//0D68 	1835
		MOVLB 	3H 			//0D69 	1023
		STR 	52H 			//0D6A 	10D2
		MOVLB 	1H 			//0D6B 	1021
		LDR 	34H, 0H 			//0D6C 	1834
		MOVLB 	3H 			//0D6D 	1023
		STR 	51H 			//0D6E 	10D1

		//;NFB.C: 860: unsigned char dataL = data&0xFF;
		STR 	4BH 			//0D6F 	10CB

		//;NFB.C: 861: unsigned char dataH = (data>>8)&0xFF;
		LDR 	52H, 0H 			//0D70 	1852
		STR 	4CH 			//0D71 	10CC

		//;NFB.C: 862: EEPROMwrite(0x06,dataL);
		LDR 	4BH, 0H 			//0D72 	184B
		MOVLB 	0H 			//0D73 	1020
		STR 	2DH 			//0D74 	10AD
		LDWI 	6H 			//0D75 	0006
		MOVLP 	1DH 			//0D76 	019D
		LCALL 	50CH 			//0D77 	350C
		MOVLP 	8H 			//0D78 	0188

		//;NFB.C: 863: EEPROMwrite(0x07,dataH);
		LDR 	4CH, 0H 			//0D79 	184C
		MOVLB 	0H 			//0D7A 	1020
		STR 	2DH 			//0D7B 	10AD
		LDWI 	7H 			//0D7C 	0007
		MOVLP 	1DH 			//0D7D 	019D
		LCALL 	50CH 			//0D7E 	350C
		MOVLP 	8H 			//0D7F 	0188

		//;NFB.C: 864: }
		//;NFB.C: 865: if(PFE){
		MOVLB 	4H 			//0D80 	1024
		LDR 	50H, 0H 			//0D81 	1850
		IORWR 	51H, 0H 		//0D82 	1451
		BTSC 	3H, 2H 			//0D83 	2903
		LJUMP 	591H 			//0D84 	3D91

		//;NFB.C: 866: PFE = 0;
		CLRF 	50H 			//0D85 	11D0
		CLRF 	51H 			//0D86 	11D1

		//;NFB.C: 867: unsigned char dataL = puffno&0xFF;
		LDR 	40H, 0H 			//0D87 	1840
		MOVLB 	3H 			//0D88 	1023
		STR 	4DH 			//0D89 	10CD

		//;NFB.C: 868: EEPROMwrite(0x08,dataL);
		LDR 	4DH, 0H 			//0D8A 	184D
		MOVLB 	0H 			//0D8B 	1020
		STR 	2DH 			//0D8C 	10AD
		LDWI 	8H 			//0D8D 	0008
		MOVLP 	1DH 			//0D8E 	019D
		LCALL 	50CH 			//0D8F 	350C
		MOVLP 	8H 			//0D90 	0188

		//;NFB.C: 869: }
		//;NFB.C: 870: if(PTE){
		MOVLB 	4H 			//0D91 	1024
		LDR 	52H, 0H 			//0D92 	1852
		IORWR 	53H, 0H 		//0D93 	1453
		BTSC 	3H, 2H 			//0D94 	2903
		LJUMP 	5A1H 			//0D95 	3DA1

		//;NFB.C: 871: PTE = 0;
		CLRF 	52H 			//0D96 	11D2
		CLRF 	53H 			//0D97 	11D3

		//;NFB.C: 872: unsigned char dataL = Ptarget&0xFF;
		LDR 	3EH, 0H 			//0D98 	183E
		MOVLB 	3H 			//0D99 	1023
		STR 	4EH 			//0D9A 	10CE

		//;NFB.C: 873: EEPROMwrite(0x09,dataL);
		LDR 	4EH, 0H 			//0D9B 	184E
		MOVLB 	0H 			//0D9C 	1020
		STR 	2DH 			//0D9D 	10AD
		LDWI 	9H 			//0D9E 	0009
		MOVLP 	1DH 			//0D9F 	019D
		LCALL 	50CH 			//0DA0 	350C
		MOVLP 	1H 			//0DA1 	0181
		LJUMP 	1F6H 			//0DA2 	39F6
		LDR 	35H, 0H 			//0DA3 	1835
		MOVLB 	1H 			//0DA4 	1021
		STR 	23H 			//0DA5 	10A3
		MOVLB 	0H 			//0DA6 	1020
		LDR 	36H, 0H 			//0DA7 	1836
		MOVLB 	1H 			//0DA8 	1021
		STR 	24H 			//0DA9 	10A4
		MOVLB 	0H 			//0DAA 	1020
		LDR 	37H, 0H 			//0DAB 	1837
		MOVLB 	1H 			//0DAC 	1021
		STR 	25H 			//0DAD 	10A5
		RET 					//0DAE 	1008
		LDR 	2CH, 0H 			//0DAF 	182C
		MOVLB 	4H 			//0DB0 	1024
		STR 	32H 			//0DB1 	10B2
		MOVLB 	1H 			//0DB2 	1021
		LDR 	2DH, 0H 			//0DB3 	182D
		MOVLB 	4H 			//0DB4 	1024
		STR 	33H 			//0DB5 	10B3
		MOVLB 	1H 			//0DB6 	1021
		LDR 	2EH, 0H 			//0DB7 	182E
		MOVLB 	4H 			//0DB8 	1024
		STR 	34H 			//0DB9 	10B4
		MOVLB 	1H 			//0DBA 	1021
		LDWI 	40H 			//0DBB 	0040
		CLRF 	20H 			//0DBC 	11A0
		CLRF 	21H 			//0DBD 	11A1
		STR 	22H 			//0DBE 	10A2
		MOVLB 	4H 			//0DBF 	1024
		LDR 	38H, 0H 			//0DC0 	1838
		MOVLB 	0H 			//0DC1 	1020
		STR 	4DH 			//0DC2 	10CD
		MOVLB 	4H 			//0DC3 	1024
		LDR 	39H, 0H 			//0DC4 	1839
		MOVLB 	0H 			//0DC5 	1020
		STR 	4EH 			//0DC6 	10CE
		MOVLB 	4H 			//0DC7 	1024
		LDR 	3AH, 0H 			//0DC8 	183A
		MOVLB 	0H 			//0DC9 	1020
		STR 	4FH 			//0DCA 	10CF
		MOVLB 	4H 			//0DCB 	1024
		LDR 	3BH, 0H 			//0DCC 	183B
		MOVLB 	0H 			//0DCD 	1020
		STR 	50H 			//0DCE 	10D0
		MOVLB 	4H 			//0DCF 	1024
		LDR 	3CH, 0H 			//0DD0 	183C
		MOVLB 	0H 			//0DD1 	1020
		STR 	51H 			//0DD2 	10D1
		MOVLB 	4H 			//0DD3 	1024
		LDR 	3DH, 0H 			//0DD4 	183D
		MOVLB 	0H 			//0DD5 	1020
		STR 	52H 			//0DD6 	10D2
		RET 					//0DD7 	1008
		LDWI 	80H 			//0DD8 	0080
		CLRF 	2CH 			//0DD9 	11AC
		STR 	2DH 			//0DDA 	10AD
		LDWI 	45H 			//0DDB 	0045
		STR 	2EH 			//0DDC 	10AE
		LDWI 	40H 			//0DDD 	0040
		CLRF 	20H 			//0DDE 	11A0
		CLRF 	21H 			//0DDF 	11A1
		STR 	22H 			//0DE0 	10A2
		RET 					//0DE1 	1008
		LDR 	41H, 0H 			//0DE2 	1841
		MOVLB 	3H 			//0DE3 	1023
		STR 	62H 			//0DE4 	10E2
		MOVLB 	0H 			//0DE5 	1020
		LDR 	42H, 0H 			//0DE6 	1842
		MOVLB 	3H 			//0DE7 	1023
		STR 	63H 			//0DE8 	10E3
		MOVLB 	0H 			//0DE9 	1020
		LDR 	43H, 0H 			//0DEA 	1843
		MOVLB 	3H 			//0DEB 	1023
		STR 	64H 			//0DEC 	10E4
		MOVLB 	0H 			//0DED 	1020
		LDWI 	C8H 			//0DEE 	00C8
		CLRF 	41H 			//0DEF 	11C1
		STR 	42H 			//0DF0 	10C2
		LDWI 	41H 			//0DF1 	0041
		STR 	43H 			//0DF2 	10C3
		LDWI 	65H 			//0DF3 	0065
		MOVLB 	1H 			//0DF4 	1021
		STR 	2CH 			//0DF5 	10AC
		LDWI 	2AH 			//0DF6 	002A
		STR 	2DH 			//0DF7 	10AD
		LDWI 	3BH 			//0DF8 	003B
		STR 	2EH 			//0DF9 	10AE
		MOVLB 	3H 			//0DFA 	1023
		LDR 	62H, 0H 			//0DFB 	1862
		MOVLB 	1H 			//0DFC 	1021
		STR 	2FH 			//0DFD 	10AF
		MOVLB 	3H 			//0DFE 	1023
		LDR 	63H, 0H 			//0DFF 	1863
		MOVLB 	1H 			//0E00 	1021
		STR 	30H 			//0E01 	10B0
		MOVLB 	3H 			//0E02 	1023
		LDR 	64H, 0H 			//0E03 	1864
		MOVLB 	1H 			//0E04 	1021
		STR 	31H 			//0E05 	10B1
		RET 					//0E06 	1008
		LDR 	2CH, 0H 			//0E07 	182C
		MOVLB 	4H 			//0E08 	1024
		STR 	2CH 			//0E09 	10AC
		MOVLB 	1H 			//0E0A 	1021
		LDR 	2DH, 0H 			//0E0B 	182D
		MOVLB 	4H 			//0E0C 	1024
		STR 	2DH 			//0E0D 	10AD
		MOVLB 	1H 			//0E0E 	1021
		LDR 	2EH, 0H 			//0E0F 	182E
		MOVLB 	4H 			//0E10 	1024
		STR 	2EH 			//0E11 	10AE
		MOVLB 	0H 			//0E12 	1020
		LDWI 	80H 			//0E13 	0080
		CLRF 	41H 			//0E14 	11C1
		STR 	42H 			//0E15 	10C2
		LDWI 	BFH 			//0E16 	00BF
		STR 	43H 			//0E17 	10C3
		LDWI 	66H 			//0E18 	0066
		MOVLB 	1H 			//0E19 	1021
		STR 	2CH 			//0E1A 	10AC
		LDWI 	26H 			//0E1B 	0026
		STR 	2DH 			//0E1C 	10AD
		LDWI 	3FH 			//0E1D 	003F
		STR 	2EH 			//0E1E 	10AE
		MOVLB 	4H 			//0E1F 	1024
		LDR 	2CH, 0H 			//0E20 	182C
		MOVLB 	1H 			//0E21 	1021
		STR 	2FH 			//0E22 	10AF
		MOVLB 	4H 			//0E23 	1024
		LDR 	2DH, 0H 			//0E24 	182D
		MOVLB 	1H 			//0E25 	1021
		STR 	30H 			//0E26 	10B0
		MOVLB 	4H 			//0E27 	1024
		LDR 	2EH, 0H 			//0E28 	182E
		MOVLB 	1H 			//0E29 	1021
		STR 	31H 			//0E2A 	10B1
		RET 					//0E2B 	1008
		LDR 	20H, 0H 			//0E2C 	1820
		MOVLB 	4H 			//0E2D 	1024
		STR 	2FH 			//0E2E 	10AF
		MOVLB 	1H 			//0E2F 	1021
		LDR 	21H, 0H 			//0E30 	1821
		MOVLB 	4H 			//0E31 	1024
		STR 	30H 			//0E32 	10B0
		MOVLB 	1H 			//0E33 	1021
		LDR 	22H, 0H 			//0E34 	1822
		MOVLB 	4H 			//0E35 	1024
		STR 	31H 			//0E36 	10B1
		LDR 	32H, 0H 			//0E37 	1832
		MOVLB 	1H 			//0E38 	1021
		STR 	2CH 			//0E39 	10AC
		MOVLB 	4H 			//0E3A 	1024
		LDR 	33H, 0H 			//0E3B 	1833
		MOVLB 	1H 			//0E3C 	1021
		STR 	2DH 			//0E3D 	10AD
		MOVLB 	4H 			//0E3E 	1024
		LDR 	34H, 0H 			//0E3F 	1834
		MOVLB 	1H 			//0E40 	1021
		STR 	2EH 			//0E41 	10AE
		MOVLB 	4H 			//0E42 	1024
		LDR 	2FH, 0H 			//0E43 	182F
		MOVLB 	1H 			//0E44 	1021
		STR 	2FH 			//0E45 	10AF
		MOVLB 	4H 			//0E46 	1024
		LDR 	30H, 0H 			//0E47 	1830
		MOVLB 	1H 			//0E48 	1021
		STR 	30H 			//0E49 	10B0
		MOVLB 	4H 			//0E4A 	1024
		LDR 	31H, 0H 			//0E4B 	1831
		MOVLB 	1H 			//0E4C 	1021
		STR 	31H 			//0E4D 	10B1
		RET 					//0E4E 	1008
		LDR 	69H, 0H 			//0E4F 	1869
		MOVLB 	0H 			//0E50 	1020
		STR 	4DH 			//0E51 	10CD
		MOVLB 	3H 			//0E52 	1023
		LDR 	6AH, 0H 			//0E53 	186A
		MOVLB 	0H 			//0E54 	1020
		STR 	4EH 			//0E55 	10CE
		MOVLB 	3H 			//0E56 	1023
		LDR 	6BH, 0H 			//0E57 	186B
		MOVLB 	0H 			//0E58 	1020
		STR 	4FH 			//0E59 	10CF
		RET 					//0E5A 	1008
		STR 	2EH 			//0E5B 	10AE
		MOVLB 	3H 			//0E5C 	1023
		LDR 	62H, 0H 			//0E5D 	1862
		MOVLB 	1H 			//0E5E 	1021
		STR 	2FH 			//0E5F 	10AF
		MOVLB 	3H 			//0E60 	1023
		LDR 	63H, 0H 			//0E61 	1863
		MOVLB 	1H 			//0E62 	1021
		STR 	30H 			//0E63 	10B0
		MOVLB 	3H 			//0E64 	1023
		LDR 	64H, 0H 			//0E65 	1864
		MOVLB 	1H 			//0E66 	1021
		STR 	31H 			//0E67 	10B1
		RET 					//0E68 	1008
		LDR 	2CH, 0H 			//0E69 	182C
		MOVLB 	4H 			//0E6A 	1024
		STR 	35H 			//0E6B 	10B5
		MOVLB 	1H 			//0E6C 	1021
		LDR 	2DH, 0H 			//0E6D 	182D
		MOVLB 	4H 			//0E6E 	1024
		STR 	36H 			//0E6F 	10B6
		MOVLB 	1H 			//0E70 	1021
		LDR 	2EH, 0H 			//0E71 	182E
		MOVLB 	4H 			//0E72 	1024
		STR 	37H 			//0E73 	10B7
		LDWI 	D7H 			//0E74 	00D7
		MOVLB 	1H 			//0E75 	1021
		STR 	2CH 			//0E76 	10AC
		LDWI 	23H 			//0E77 	0023
		STR 	2DH 			//0E78 	10AD
		LDWI 	3CH 			//0E79 	003C
		STR 	2EH 			//0E7A 	10AE
		MOVLB 	4H 			//0E7B 	1024
		LDR 	35H, 0H 			//0E7C 	1835
		MOVLB 	1H 			//0E7D 	1021
		STR 	2FH 			//0E7E 	10AF
		MOVLB 	4H 			//0E7F 	1024
		LDR 	36H, 0H 			//0E80 	1836
		MOVLB 	1H 			//0E81 	1021
		STR 	30H 			//0E82 	10B0
		MOVLB 	4H 			//0E83 	1024
		LDR 	37H, 0H 			//0E84 	1837
		MOVLB 	1H 			//0E85 	1021
		STR 	31H 			//0E86 	10B1
		RET 					//0E87 	1008
		LDR 	69H, 0H 			//0E88 	1869
		MOVLB 	4H 			//0E89 	1024
		STR 	29H 			//0E8A 	10A9
		MOVLB 	3H 			//0E8B 	1023
		LDR 	6AH, 0H 			//0E8C 	186A
		MOVLB 	4H 			//0E8D 	1024
		STR 	2AH 			//0E8E 	10AA
		MOVLB 	3H 			//0E8F 	1023
		LDR 	6BH, 0H 			//0E90 	186B
		MOVLB 	4H 			//0E91 	1024
		STR 	2BH 			//0E92 	10AB
		MOVLB 	3H 			//0E93 	1023
		RET 					//0E94 	1008
		LDR 	2CH, 0H 			//0E95 	182C
		MOVLB 	4H 			//0E96 	1024
		STR 	38H 			//0E97 	10B8
		MOVLB 	1H 			//0E98 	1021
		LDR 	2DH, 0H 			//0E99 	182D
		MOVLB 	4H 			//0E9A 	1024
		STR 	39H 			//0E9B 	10B9
		MOVLB 	1H 			//0E9C 	1021
		LDR 	2EH, 0H 			//0E9D 	182E
		MOVLB 	4H 			//0E9E 	1024
		STR 	3AH 			//0E9F 	10BA
		MOVLB 	1H 			//0EA0 	1021
		RET 					//0EA1 	1008
		LDR 	2CH, 0H 			//0EA2 	182C
		MOVLB 	3H 			//0EA3 	1023
		STR 	62H 			//0EA4 	10E2
		MOVLB 	1H 			//0EA5 	1021
		LDR 	2DH, 0H 			//0EA6 	182D
		MOVLB 	3H 			//0EA7 	1023
		STR 	63H 			//0EA8 	10E3
		MOVLB 	1H 			//0EA9 	1021
		LDR 	2EH, 0H 			//0EAA 	182E
		MOVLB 	3H 			//0EAB 	1023
		STR 	64H 			//0EAC 	10E4
		MOVLB 	1H 			//0EAD 	1021
		LDWI 	1CH 			//0EAE 	001C
		CLRF 	2CH 			//0EAF 	11AC
		STR 	2DH 			//0EB0 	10AD
		RETW 	42H 			//0EB1 	0442
		MOVLB 	1H 			//0EB2 	1021
		STR 	5AH 			//0EB3 	10DA
		LDWI 	0H 			//0EB4 	0000
		BTSC 	5AH, 7H 		//0EB5 	2BDA
		LDWI 	FFH 			//0EB6 	00FF
		STR 	5BH 			//0EB7 	10DB
		STR 	5CH 			//0EB8 	10DC
		LDR 	5CH, 0H 			//0EB9 	185C
		RET 					//0EBA 	1008
		LDR 	2CH, 0H 			//0EBB 	182C
		MOVLB 	4H 			//0EBC 	1024
		STR 	3BH 			//0EBD 	10BB
		MOVLB 	1H 			//0EBE 	1021
		LDR 	2DH, 0H 			//0EBF 	182D
		MOVLB 	4H 			//0EC0 	1024
		STR 	3CH 			//0EC1 	10BC
		MOVLB 	1H 			//0EC2 	1021
		LDR 	2EH, 0H 			//0EC3 	182E
		MOVLB 	4H 			//0EC4 	1024
		STR 	3DH 			//0EC5 	10BD
		MOVLB 	1H 			//0EC6 	1021
		RET 					//0EC7 	1008
		LDR 	2CH, 0H 			//0EC8 	182C
		MOVLB 	0H 			//0EC9 	1020
		STR 	44H 			//0ECA 	10C4
		MOVLB 	1H 			//0ECB 	1021
		LDR 	2DH, 0H 			//0ECC 	182D
		MOVLB 	0H 			//0ECD 	1020
		STR 	45H 			//0ECE 	10C5
		MOVLB 	1H 			//0ECF 	1021
		LDR 	2EH, 0H 			//0ED0 	182E
		MOVLB 	0H 			//0ED1 	1020
		STR 	46H 			//0ED2 	10C6
		RET 					//0ED3 	1008
		LDR 	3BH, 0H 			//0ED4 	183B
		MOVLB 	1H 			//0ED5 	1021
		STR 	2CH 			//0ED6 	10AC
		MOVLB 	0H 			//0ED7 	1020
		LDR 	3CH, 0H 			//0ED8 	183C
		MOVLB 	1H 			//0ED9 	1021
		STR 	2DH 			//0EDA 	10AD
		MOVLB 	0H 			//0EDB 	1020
		LDR 	3DH, 0H 			//0EDC 	183D
		MOVLB 	1H 			//0EDD 	1021
		STR 	2EH 			//0EDE 	10AE
		MOVLB 	4H 			//0EDF 	1024
		LDR 	23H, 0H 			//0EE0 	1823
		MOVLB 	1H 			//0EE1 	1021
		STR 	2FH 			//0EE2 	10AF
		MOVLB 	4H 			//0EE3 	1024
		LDR 	24H, 0H 			//0EE4 	1824
		MOVLB 	1H 			//0EE5 	1021
		STR 	30H 			//0EE6 	10B0
		MOVLB 	4H 			//0EE7 	1024
		LDR 	25H, 0H 			//0EE8 	1825
		MOVLB 	1H 			//0EE9 	1021
		STR 	31H 			//0EEA 	10B1
		RET 					//0EEB 	1008
		STR 	44H 			//0EEC 	10C4
		MOVLB 	3H 			//0EED 	1023
		LDR 	69H, 0H 			//0EEE 	1869
		MOVLB 	1H 			//0EEF 	1021
		STR 	45H 			//0EF0 	10C5
		MOVLB 	3H 			//0EF1 	1023
		LDR 	6AH, 0H 			//0EF2 	186A
		MOVLB 	1H 			//0EF3 	1021
		STR 	46H 			//0EF4 	10C6
		MOVLB 	3H 			//0EF5 	1023
		LDR 	6BH, 0H 			//0EF6 	186B
		MOVLB 	1H 			//0EF7 	1021
		STR 	47H 			//0EF8 	10C7
		RET 					//0EF9 	1008
		LDR 	20H, 0H 			//0EFA 	1820
		STR 	2FH 			//0EFB 	10AF
		LDR 	21H, 0H 			//0EFC 	1821
		STR 	30H 			//0EFD 	10B0
		LDR 	22H, 0H 			//0EFE 	1822
		STR 	31H 			//0EFF 	10B1
		RET 					//0F00 	1008
		MOVLB 	1H 			//0F01 	1021
		LDWI 	A0H 			//0F02 	00A0
		CLRF 	2CH 			//0F03 	11AC
		STR 	2DH 			//0F04 	10AD
		LDWI 	41H 			//0F05 	0041
		STR 	2EH 			//0F06 	10AE
		MOVLB 	4H 			//0F07 	1024
		LDR 	26H, 0H 			//0F08 	1826
		MOVLB 	1H 			//0F09 	1021
		STR 	20H 			//0F0A 	10A0
		MOVLB 	4H 			//0F0B 	1024
		LDR 	27H, 0H 			//0F0C 	1827
		MOVLB 	1H 			//0F0D 	1021
		STR 	21H 			//0F0E 	10A1
		MOVLB 	4H 			//0F0F 	1024
		LDR 	28H, 0H 			//0F10 	1828
		MOVLB 	1H 			//0F11 	1021
		STR 	22H 			//0F12 	10A2
		RET 					//0F13 	1008
		LDR 	2EH, 0H 			//0F14 	182E
		MOVLB 	1H 			//0F15 	1021
		STR 	4DH 			//0F16 	10CD
		MOVLB 	0H 			//0F17 	1020
		LDR 	2DH, 0H 			//0F18 	182D
		MOVLB 	1H 			//0F19 	1021
		STR 	4CH 			//0F1A 	10CC
		RET 					//0F1B 	1008
		STR 	42H 			//0F1C 	10C2
		LDWI 	E9H 			//0F1D 	00E9
		STR 	43H 			//0F1E 	10C3
		RETW 	A0H 			//0F1F 	04A0
		MOVLB 	1H 			//0F20 	1021
		ADDWFC 	46H, 0H 		//0F21 	0D46
		STR 	5AH 			//0F22 	10DA
		LSRF 	5AH, 1H 		//0F23 	06DA
		RRR 	59H, 1H 			//0F24 	1CD9
		LDR 	59H, 0H 			//0F25 	1859
		RET 					//0F26 	1008
		XORWI 	80H 			//0F27 	0A80
		MOVLB 	1H 			//0F28 	1021
		STR 	59H 			//0F29 	10D9
		LDWI 	80H 			//0F2A 	0080
		SUBWR 	59H, 0H 		//0F2B 	1259
		RET 					//0F2C 	1008
		LDR 	4DH, 0H 			//0F2D 	184D
		MOVLB 	4H 			//0F2E 	1024
		STR 	23H 			//0F2F 	10A3
		MOVLB 	0H 			//0F30 	1020
		LDR 	4EH, 0H 			//0F31 	184E
		MOVLB 	4H 			//0F32 	1024
		STR 	24H 			//0F33 	10A4
		MOVLB 	0H 			//0F34 	1020
		LDR 	4FH, 0H 			//0F35 	184F
		MOVLB 	4H 			//0F36 	1024
		STR 	25H 			//0F37 	10A5
		MOVLB 	3H 			//0F38 	1023
		LDR 	6CH, 0H 			//0F39 	186C
		RET 					//0F3A 	1008
		LDR 	4DH, 0H 			//0F3B 	184D
		MOVLB 	1H 			//0F3C 	1021
		STR 	23H 			//0F3D 	10A3
		MOVLB 	0H 			//0F3E 	1020
		LDR 	4EH, 0H 			//0F3F 	184E
		MOVLB 	1H 			//0F40 	1021
		STR 	24H 			//0F41 	10A4
		MOVLB 	0H 			//0F42 	1020
		LDR 	4FH, 0H 			//0F43 	184F
		MOVLB 	1H 			//0F44 	1021
		STR 	25H 			//0F45 	10A5
		RET 					//0F46 	1008
		LDR 	41H, 0H 			//0F47 	1841
		MOVLB 	3H 			//0F48 	1023
		STR 	69H 			//0F49 	10E9
		MOVLB 	0H 			//0F4A 	1020
		LDR 	42H, 0H 			//0F4B 	1842
		MOVLB 	3H 			//0F4C 	1023
		STR 	6AH 			//0F4D 	10EA
		MOVLB 	0H 			//0F4E 	1020
		LDR 	43H, 0H 			//0F4F 	1843
		MOVLB 	3H 			//0F50 	1023
		STR 	6BH 			//0F51 	10EB
		RET 					//0F52 	1008
		BSR 	DH, 0H 			//0F53 	240D
		LDWI 	F4H 			//0F54 	00F4
		MOVLB 	1H 			//0F55 	1021
		STR 	45H 			//0F56 	10C5
		LDWI 	1H 			//0F57 	0001
		STR 	46H 			//0F58 	10C6
		RET 					//0F59 	1008
		LDR 	2CH, 0H 			//0F5A 	182C
		MOVLB 	4H 			//0F5B 	1024
		STR 	26H 			//0F5C 	10A6
		MOVLB 	1H 			//0F5D 	1021
		LDR 	2DH, 0H 			//0F5E 	182D
		MOVLB 	4H 			//0F5F 	1024
		STR 	27H 			//0F60 	10A7
		MOVLB 	1H 			//0F61 	1021
		LDR 	2EH, 0H 			//0F62 	182E
		MOVLB 	4H 			//0F63 	1024
		STR 	28H 			//0F64 	10A8
		RET 					//0F65 	1008
		LDR 	46H, 0H 			//0F66 	1846
		MOVLB 	4H 			//0F67 	1024
		STR 	6FH 			//0F68 	10EF
		MOVLB 	1H 			//0F69 	1021
		LDR 	45H, 0H 			//0F6A 	1845
		MOVLB 	4H 			//0F6B 	1024
		STR 	6EH 			//0F6C 	10EE
		MOVLB 	3H 			//0F6D 	1023
		RET 					//0F6E 	1008
		MOVLB 	3H 			//0F6F 	1023
		LDR 	6FH, 0H 			//0F70 	186F
		MOVLB 	0H 			//0F71 	1020
		STR 	36H 			//0F72 	10B6
		MOVLB 	3H 			//0F73 	1023
		LDR 	6EH, 0H 			//0F74 	186E
		MOVLB 	0H 			//0F75 	1020
		STR 	35H 			//0F76 	10B5
		RET 					//0F77 	1008
		MOVLB 	4H 			//0F78 	1024
		LDR 	6FH, 0H 			//0F79 	186F
		MOVLB 	0H 			//0F7A 	1020
		STR 	36H 			//0F7B 	10B6
		MOVLB 	4H 			//0F7C 	1024
		LDR 	6EH, 0H 			//0F7D 	186E
		MOVLB 	0H 			//0F7E 	1020
		STR 	35H 			//0F7F 	10B5
		RET 					//0F80 	1008
		STR 	4BH 			//0F81 	10CB
		LDWI 	4H 			//0F82 	0004
		STR 	4CH 			//0F83 	10CC
		CLRF 	4DH 			//0F84 	11CD
		RET 					//0F85 	1008
		LDR 	46H, 0H 			//0F86 	1846
		MOVLB 	0H 			//0F87 	1020
		STR 	62H 			//0F88 	10E2
		MOVLB 	1H 			//0F89 	1021
		LDR 	45H, 0H 			//0F8A 	1845
		MOVLB 	0H 			//0F8B 	1020
		STR 	61H 			//0F8C 	10E1
		MOVLB 	3H 			//0F8D 	1023
		RET 					//0F8E 	1008
		LDWI 	13H 			//0F8F 	0013
		MOVLB 	1H 			//0F90 	1021
		STR 	4AH 			//0F91 	10CA
		RETW 	A1H 			//0F92 	04A1
		LDWI 	EH 			//0F93 	000E
		MOVLB 	1H 			//0F94 	1021
		STR 	4AH 			//0F95 	10CA
		RETW 	A1H 			//0F96 	04A1
		LDWI 	4H 			//0F97 	0004
		MOVLB 	1H 			//0F98 	1021
		STR 	4AH 			//0F99 	10CA
		RETW 	A1H 			//0F9A 	04A1
		MOVLB 	4H 			//0F9B 	1024
		STR 	6EH 			//0F9C 	10EE
		MOVLB 	1H 			//0F9D 	1021
		LDR 	5AH, 0H 			//0F9E 	185A
		MOVLB 	4H 			//0F9F 	1024
		STR 	6FH 			//0FA0 	10EF
		MOVLB 	3H 			//0FA1 	1023
		RET 					//0FA2 	1008
		MOVLB 	0H 			//0FA3 	1020
		STR 	61H 			//0FA4 	10E1
		MOVLB 	1H 			//0FA5 	1021
		LDR 	5AH, 0H 			//0FA6 	185A
		MOVLB 	0H 			//0FA7 	1020
		STR 	62H 			//0FA8 	10E2
		MOVLB 	3H 			//0FA9 	1023
		RET 					//0FAA 	1008
		LDR 	46H, 0H 			//0FAB 	1846
		MOVLB 	3H 			//0FAC 	1023
		STR 	6FH 			//0FAD 	10EF
		MOVLB 	1H 			//0FAE 	1021
		LDR 	45H, 0H 			//0FAF 	1845
		MOVLB 	3H 			//0FB0 	1023
		STR 	6EH 			//0FB1 	10EE
		RET 					//0FB2 	1008
		MOVLB 	3H 			//0FB3 	1023
		STR 	6EH 			//0FB4 	10EE
		MOVLB 	1H 			//0FB5 	1021
		LDR 	5AH, 0H 			//0FB6 	185A
		MOVLB 	3H 			//0FB7 	1023
		STR 	6FH 			//0FB8 	10EF
		RET 					//0FB9 	1008
		CLRF 	62H 			//0FBA 	11E2
		CLRF 	63H 			//0FBB 	11E3
		CLRF 	60H 			//0FBC 	11E0
		CLRF 	61H 			//0FBD 	11E1
		CLRF 	5EH 			//0FBE 	11DE
		CLRF 	5FH 			//0FBF 	11DF
		RET 					//0FC0 	1008
		LDR 	5EH, 0H 			//0FC1 	185E
		STR 	42H 			//0FC2 	10C2
		LDR 	5FH, 0H 			//0FC3 	185F
		STR 	43H 			//0FC4 	10C3
		LDR 	60H, 0H 			//0FC5 	1860
		STR 	44H 			//0FC6 	10C4
		RET 					//0FC7 	1008
		MOVLB 	4H 			//0FC8 	1024
		CLRF 	66H 			//0FC9 	11E6
		CLRF 	67H 			//0FCA 	11E7
		CLRF 	64H 			//0FCB 	11E4
		CLRF 	65H 			//0FCC 	11E5
		MOVLB 	0H 			//0FCD 	1020
		RET 					//0FCE 	1008
		LDR 	5BH, 0H 			//0FCF 	185B
		STR 	50H 			//0FD0 	10D0
		LDR 	5CH, 0H 			//0FD1 	185C
		STR 	51H 			//0FD2 	10D1
		LDR 	5DH, 0H 			//0FD3 	185D
		STR 	52H 			//0FD4 	10D2
		RET 					//0FD5 	1008
		LDWI 	FFH 			//0FD6 	00FF
		MOVLB 	3H 			//0FD7 	1023
		ADDWFC 	6DH, 0H 		//0FD8 	0D6D
		MOVLB 	0H 			//0FD9 	1020
		STR 	3CH 			//0FDA 	10BC
		RET 					//0FDB 	1008
		MOVLB 	0H 			//0FDC 	1020
		LDR 	62H, 0H 			//0FDD 	1862
		STR 	36H 			//0FDE 	10B6
		LDR 	61H, 0H 			//0FDF 	1861
		STR 	35H 			//0FE0 	10B5
		RET 					//0FE1 	1008
		MOVLB 	1H 			//0FE2 	1021
		LDR 	5AH, 0H 			//0FE3 	185A
		MOVLB 	0H 			//0FE4 	1020
		SUBWR 	58H, 0H 		//0FE5 	1258
		RET 					//0FE6 	1008
		MOVLB 	1H 			//0FE7 	1021
		LDR 	5BH, 0H 			//0FE8 	185B
		MOVLB 	0H 			//0FE9 	1020
		SUBWR 	59H, 0H 		//0FEA 	1259
		RET 					//0FEB 	1008
		MOVLB 	1H 			//0FEC 	1021
		LDR 	59H, 0H 			//0FED 	1859
		MOVLB 	0H 			//0FEE 	1020
		SUBWR 	57H, 0H 		//0FEF 	1257
		RET 					//0FF0 	1008
		MOVLB 	1H 			//0FF1 	1021
		LDR 	59H, 0H 			//0FF2 	1859
		MOVLB 	3H 			//0FF3 	1023
		SUBWR 	65H, 0H 		//0FF4 	1265
		RET 					//0FF5 	1008
		MOVLB 	1H 			//0FF6 	1021
		LDR 	5BH, 0H 			//0FF7 	185B
		MOVLB 	3H 			//0FF8 	1023
		SUBWR 	67H, 0H 		//0FF9 	1267
		ORG		0FFAH
		RET 					//0FFA 	1008
		MOVLB 	1H 			//0FFB 	1021
		LDR 	5AH, 0H 			//0FFC 	185A
		MOVLB 	3H 			//0FFD 	1023
		SUBWR 	66H, 0H 		//0FFE 	1266
		RET 					//0FFF 	1008
		ORG		1074H
		LDWI 	C5H 			//1074 	00C5
		MOVLB 	2H 			//1075 	1022
		STR 	23H 			//1076 	10A3
		LCALL 	6B9H 			//1077 	36B9
		MOVLP 	10H 			//1078 	0190
		LDR 	37H, 0H 			//1079 	1837
		BTSC 	3H, 2H 			//107A 	2903
		LJUMP 	540H 			//107B 	3D40
		LDWI 	25H 			//107C 	0025
		XORWR 	37H, 0H 		//107D 	1637
		BTSC 	3H, 2H 			//107E 	2903
		LJUMP 	8AH 			//107F 	388A
		LCALL 	687H 			//1080 	3687
		MOVLP 	10H 			//1081 	0190
		MOVLB 	2H 			//1082 	1022
		LDR 	37H, 0H 			//1083 	1837
		STR 	1H 			//1084 	1081
		MOVLB 	1H 			//1085 	1021
		INCR 	41H, 1H 		//1086 	1AC1
		BTSC 	3H, 2H 			//1087 	2903
		INCR 	42H, 1H 		//1088 	1AC2
		LJUMP 	77H 			//1089 	3877
		CLRF 	30H 			//108A 	11B0
		CLRF 	31H 			//108B 	11B1
		CLRF 	2CH 			//108C 	11AC
		CLRF 	2DH 			//108D 	11AD
		LJUMP 	95H 			//108E 	3895
		MOVLB 	2H 			//108F 	1022
		BSR 	2CH, 2H 			//1090 	252C
		MOVLB 	1H 			//1091 	1021
		INCR 	43H, 1H 		//1092 	1AC3
		BTSC 	3H, 2H 			//1093 	2903
		INCR 	44H, 1H 		//1094 	1AC4
		LCALL 	6F5H 			//1095 	36F5
		MOVLP 	10H 			//1096 	0190
		XORWI 	30H 			//1097 	0A30
		BTSC 	3H, 2H 			//1098 	2903
		LJUMP 	8FH 			//1099 	388F
		LJUMP 	9BH 			//109A 	389B
		LCALL 	703H 			//109B 	3703
		MOVLP 	10H 			//109C 	0190
		LCALL 	5FAH 			//109D 	35FA
		MOVLP 	10H 			//109E 	0190
		BTSS 	3H, 0H 			//109F 	2C03
		LJUMP 	D3H 			//10A0 	38D3
		MOVLB 	2H 			//10A1 	1022
		CLRF 	30H 			//10A2 	11B0
		CLRF 	31H 			//10A3 	11B1
		LDWI 	AH 			//10A4 	000A
		MOVLB 	0H 			//10A5 	1020
		STR 	3BH 			//10A6 	10BB
		CLRF 	3CH 			//10A7 	11BC
		MOVLB 	2H 			//10A8 	1022
		LDR 	31H, 0H 			//10A9 	1831
		MOVLB 	0H 			//10AA 	1020
		STR 	3EH 			//10AB 	10BE
		MOVLB 	2H 			//10AC 	1022
		LDR 	30H, 0H 			//10AD 	1830
		MOVLB 	0H 			//10AE 	1020
		STR 	3DH 			//10AF 	10BD
		MOVLP 	1BH 			//10B0 	019B
		LCALL 	3ADH 			//10B1 	33AD
		MOVLP 	10H 			//10B2 	0190
		LDR 	3CH, 0H 			//10B3 	183C
		MOVLB 	2H 			//10B4 	1022
		STR 	31H 			//10B5 	10B1
		MOVLB 	0H 			//10B6 	1020
		LDR 	3BH, 0H 			//10B7 	183B
		MOVLB 	2H 			//10B8 	1022
		STR 	30H 			//10B9 	10B0
		LCALL 	6F5H 			//10BA 	36F5
		MOVLP 	10H 			//10BB 	0190
		ADDWI 	D0H 			//10BC 	0ED0
		STR 	53H 			//10BD 	10D3
		LDWI 	FFH 			//10BE 	00FF
		BTSC 	3H, 0H 			//10BF 	2803
		LDWI 	0H 			//10C0 	0000
		STR 	54H 			//10C1 	10D4
		LDR 	53H, 0H 			//10C2 	1853
		MOVLB 	2H 			//10C3 	1022
		ADDWR 	30H, 1H 		//10C4 	17B0
		MOVLB 	1H 			//10C5 	1021
		LDR 	54H, 0H 			//10C6 	1854
		MOVLB 	2H 			//10C7 	1022
		ADDWFC 	31H, 1H 		//10C8 	0DB1
		MOVLB 	1H 			//10C9 	1021
		INCR 	43H, 1H 		//10CA 	1AC3
		BTSC 	3H, 2H 			//10CB 	2903
		INCR 	44H, 1H 		//10CC 	1AC4
		LCALL 	703H 			//10CD 	3703
		MOVLP 	10H 			//10CE 	0190
		LCALL 	5FAH 			//10CF 	35FA
		MOVLP 	10H 			//10D0 	0190
		BTSC 	3H, 0H 			//10D1 	2803
		LJUMP 	A4H 			//10D2 	38A4
		MOVLB 	1H 			//10D3 	1021
		LDR 	43H, 0H 			//10D4 	1843
		STR 	4H 			//10D5 	1084
		LDR 	44H, 0H 			//10D6 	1844
		STR 	5H 			//10D7 	1085
		MOVIW 	FSR0++ 		//10D8 	1012
		XORWI 	2EH 			//10D9 	0A2E
		BTSS 	3H, 2H 			//10DA 	2D03
		LJUMP 	115H 			//10DB 	3915
		MOVLB 	2H 			//10DC 	1022
		BSR 	2DH, 6H 			//10DD 	272D
		MOVLB 	1H 			//10DE 	1021
		INCR 	43H, 1H 		//10DF 	1AC3
		BTSC 	3H, 2H 			//10E0 	2903
		INCR 	44H, 1H 		//10E1 	1AC4
		MOVLB 	2H 			//10E2 	1022
		CLRF 	35H 			//10E3 	11B5
		CLRF 	36H 			//10E4 	11B6
		LCALL 	6F5H 			//10E5 	36F5
		MOVLP 	10H 			//10E6 	0190
		LCALL 	5FAH 			//10E7 	35FA
		MOVLP 	10H 			//10E8 	0190
		BTSS 	3H, 0H 			//10E9 	2C03
		LJUMP 	11CH 			//10EA 	391C
		LCALL 	6F5H 			//10EB 	36F5
		STR 	53H 			//10EC 	10D3
		CLRF 	54H 			//10ED 	11D4
		MOVLB 	2H 			//10EE 	1022
		LDR 	36H, 0H 			//10EF 	1836
		MOVLB 	0H 			//10F0 	1020
		STR 	3CH 			//10F1 	10BC
		MOVLB 	2H 			//10F2 	1022
		LDR 	35H, 0H 			//10F3 	1835
		MOVLB 	0H 			//10F4 	1020
		STR 	3BH 			//10F5 	10BB
		LDWI 	AH 			//10F6 	000A
		STR 	3DH 			//10F7 	10BD
		CLRF 	3EH 			//10F8 	11BE
		MOVLP 	1BH 			//10F9 	019B
		LCALL 	3ADH 			//10FA 	33AD
		MOVLP 	10H 			//10FB 	0190
		MOVLB 	1H 			//10FC 	1021
		LDR 	53H, 0H 			//10FD 	1853
		MOVLB 	0H 			//10FE 	1020
		ADDWR 	3BH, 0H 		//10FF 	173B
		MOVLB 	1H 			//1100 	1021
		STR 	55H 			//1101 	10D5
		LDR 	54H, 0H 			//1102 	1854
		MOVLB 	0H 			//1103 	1020
		ADDWFC 	3CH, 0H 		//1104 	0D3C
		MOVLB 	1H 			//1105 	1021
		STR 	56H 			//1106 	10D6
		LDR 	55H, 0H 			//1107 	1855
		ADDWI 	D0H 			//1108 	0ED0
		MOVLB 	2H 			//1109 	1022
		STR 	35H 			//110A 	10B5
		LDWI 	FFH 			//110B 	00FF
		MOVLB 	1H 			//110C 	1021
		ADDWFC 	56H, 0H 		//110D 	0D56
		MOVLB 	2H 			//110E 	1022
		STR 	36H 			//110F 	10B6
		MOVLB 	1H 			//1110 	1021
		INCR 	43H, 1H 		//1111 	1AC3
		BTSC 	3H, 2H 			//1112 	2903
		INCR 	44H, 1H 		//1113 	1AC4
		LJUMP 	E5H 			//1114 	38E5
		MOVLB 	2H 			//1115 	1022
		CLRF 	35H 			//1116 	11B5
		CLRF 	36H 			//1117 	11B6
		BSR 	2DH, 4H 			//1118 	262D
		LJUMP 	11CH 			//1119 	391C
		BSR 	2DH, 2H 			//111A 	252D
		LJUMP 	12BH 			//111B 	392B
		LCALL 	6B9H 			//111C 	36B9
		MOVLP 	10H 			//111D 	0190
		XORWI 	0H 			//111E 	0A00
		BTSC 	3H, 2H 			//111F 	2903
		LJUMP 	540H 			//1120 	3D40
		XORWI 	64H 			//1121 	0A64
		BTSC 	3H, 2H 			//1122 	2903
		LJUMP 	12BH 			//1123 	392B
		XORWI 	2H 			//1124 	0A02
		BTSC 	3H, 2H 			//1125 	2903
		LJUMP 	11AH 			//1126 	391A
		XORWI 	FH 			//1127 	0A0F
		BTSC 	3H, 2H 			//1128 	2903
		LJUMP 	12BH 			//1129 	392B
		LJUMP 	77H 			//112A 	3877
		MOVLB 	1H 			//112B 	1021
		LDWI 	7H 			//112C 	0007
		CLRF 	53H 			//112D 	11D3
		MOVLB 	2H 			//112E 	1022
		ANDWR 	2DH, 0H 		//112F 	152D
		MOVLB 	1H 			//1130 	1021
		STR 	54H 			//1131 	10D4
		LDR 	53H, 0H 			//1132 	1853
		IORWR 	54H, 0H 		//1133 	1454
		BTSC 	3H, 2H 			//1134 	2903
		LJUMP 	422H 			//1135 	3C22
		MOVLB 	2H 			//1136 	1022
		BTSS 	2DH, 4H 		//1137 	2E2D
		LJUMP 	13CH 			//1138 	393C
		LDWI 	6H 			//1139 	0006
		STR 	35H 			//113A 	10B5
		CLRF 	36H 			//113B 	11B6
		LDR 	23H, 0H 			//113C 	1823
		STR 	6H 			//113D 	1086
		CLRF 	7H 			//113E 	1187
		MOVIW 	0H[1] 			//113F 	0F40
		STR 	32H 			//1140 	10B2
		MOVIW 	1H[1] 			//1141 	0F41
		STR 	33H 			//1142 	10B3
		MOVIW 	2H[1] 			//1143 	0F42
		STR 	34H 			//1144 	10B4
		LDWI 	3H 			//1145 	0003
		ADDWR 	23H, 1H 		//1146 	17A3
		LDR 	32H, 0H 			//1147 	1832
		MOVLB 	0H 			//1148 	1020
		STR 	3FH 			//1149 	10BF
		MOVLB 	2H 			//114A 	1022
		LDR 	33H, 0H 			//114B 	1833
		MOVLB 	0H 			//114C 	1020
		STR 	40H 			//114D 	10C0
		MOVLB 	2H 			//114E 	1022
		LDR 	34H, 0H 			//114F 	1834
		MOVLB 	0H 			//1150 	1020
		LCALL 	74DH 			//1151 	374D
		MOVLP 	10H 			//1152 	0190
		LCALL 	543H 			//1153 	3543
		MOVLP 	10H 			//1154 	0190
		BTSC 	3H, 0H 			//1155 	2803
		LJUMP 	172H 			//1156 	3972
		MOVLB 	2H 			//1157 	1022
		LDR 	32H, 0H 			//1158 	1832
		MOVLB 	0H 			//1159 	1020
		STR 	2DH 			//115A 	10AD
		MOVLB 	2H 			//115B 	1022
		LDR 	33H, 0H 			//115C 	1833
		MOVLB 	0H 			//115D 	1020
		STR 	2EH 			//115E 	10AE
		MOVLB 	2H 			//115F 	1022
		LDR 	34H, 0H 			//1160 	1834
		MOVLB 	0H 			//1161 	1020
		STR 	2FH 			//1162 	10AF
		LCALL 	609H 			//1163 	3609
		MOVLP 	10H 			//1164 	0190
		LDR 	2DH, 0H 			//1165 	182D
		MOVLB 	2H 			//1166 	1022
		STR 	32H 			//1167 	10B2
		MOVLB 	0H 			//1168 	1020
		LDR 	2EH, 0H 			//1169 	182E
		MOVLB 	2H 			//116A 	1022
		STR 	33H 			//116B 	10B3
		MOVLB 	0H 			//116C 	1020
		LDR 	2FH, 0H 			//116D 	182F
		MOVLB 	2H 			//116E 	1022
		STR 	34H 			//116F 	10B4
		LDWI 	3H 			//1170 	0003
		IORWR 	2CH, 1H 		//1171 	14AC
		MOVLB 	2H 			//1172 	1022
		CLRF 	2EH 			//1173 	11AE
		CLRF 	2FH 			//1174 	11AF
		LDR 	34H, 0H 			//1175 	1834
		IORWR 	33H, 0H 		//1176 	1433
		IORWR 	32H, 0H 		//1177 	1432
		BTSC 	3H, 2H 			//1178 	2903
		LJUMP 	210H 			//1179 	3A10
		LDWI 	32H 			//117A 	0032
		STR 	6H 			//117B 	1086
		LDWI 	1H 			//117C 	0001
		STR 	7H 			//117D 	1087
		LCALL 	738H 			//117E 	3738
		MOVLP 	10H 			//117F 	0190
		MOVIW 	2H[1] 			//1180 	0F42
		STR 	55H 			//1181 	10D5
		MOVIW 	3H[1] 			//1182 	0F43
		STR 	56H 			//1183 	10D6
		LDWI 	FH 			//1184 	000F
		LSRF 	56H, 1H 		//1185 	06D6
		RRR 	55H, 1H 			//1186 	1CD5
		RRR 	54H, 1H 			//1187 	1CD4
		RRR 	53H, 1H 			//1188 	1CD3
		DECRSZ 	9H, 1H 		//1189 	1B89
		LJUMP 	185H 			//118A 	3985
		LDR 	54H, 0H 			//118B 	1854
		MOVLB 	2H 			//118C 	1022
		STR 	2FH 			//118D 	10AF
		MOVLB 	1H 			//118E 	1021
		LDR 	53H, 0H 			//118F 	1853
		MOVLB 	2H 			//1190 	1022
		STR 	2EH 			//1191 	10AE
		LDWI 	82H 			//1192 	0082
		CLRF 	2FH 			//1193 	11AF
		ADDWR 	2EH, 1H 		//1194 	17AE
		BTSS 	3H, 0H 			//1195 	2C03
		DECR 	2FH, 1H 		//1196 	13AF
		LDWI 	FFH 			//1197 	00FF
		ADDWR 	2EH, 1H 		//1198 	17AE
		BTSS 	3H, 0H 			//1199 	2C03
		DECR 	2FH, 1H 		//119A 	13AF
		LDWI 	3H 			//119B 	0003
		MOVLB 	0H 			//119C 	1020
		STR 	3BH 			//119D 	10BB
		CLRF 	3CH 			//119E 	11BC
		MOVLB 	2H 			//119F 	1022
		LDR 	2FH, 0H 			//11A0 	182F
		MOVLB 	0H 			//11A1 	1020
		STR 	3EH 			//11A2 	10BE
		MOVLB 	2H 			//11A3 	1022
		LDR 	2EH, 0H 			//11A4 	182E
		MOVLB 	0H 			//11A5 	1020
		STR 	3DH 			//11A6 	10BD
		MOVLP 	1BH 			//11A7 	019B
		LCALL 	3ADH 			//11A8 	33AD
		MOVLP 	10H 			//11A9 	0190
		LDR 	3CH, 0H 			//11AA 	183C
		MOVLB 	2H 			//11AB 	1022
		STR 	2FH 			//11AC 	10AF
		MOVLB 	0H 			//11AD 	1020
		LDR 	3BH, 0H 			//11AE 	183B
		MOVLB 	2H 			//11AF 	1022
		STR 	2EH 			//11B0 	10AE
		LDWI 	AH 			//11B1 	000A
		MOVLB 	0H 			//11B2 	1020
		STR 	33H 			//11B3 	10B3
		CLRF 	34H 			//11B4 	11B4
		MOVLB 	2H 			//11B5 	1022
		LDR 	2FH, 0H 			//11B6 	182F
		MOVLB 	0H 			//11B7 	1020
		STR 	36H 			//11B8 	10B6
		MOVLB 	2H 			//11B9 	1022
		LDR 	2EH, 0H 			//11BA 	182E
		MOVLB 	0H 			//11BB 	1020
		STR 	35H 			//11BC 	10B5
		MOVLP 	1BH 			//11BD 	019B
		LCALL 	3C2H 			//11BE 	33C2
		MOVLP 	10H 			//11BF 	0190
		LDR 	34H, 0H 			//11C0 	1834
		MOVLB 	2H 			//11C1 	1022
		STR 	2FH 			//11C2 	10AF
		MOVLB 	0H 			//11C3 	1020
		LDR 	33H, 0H 			//11C4 	1833
		MOVLB 	2H 			//11C5 	1022
		STR 	2EH 			//11C6 	10AE
		BTSS 	2FH, 7H 		//11C7 	2FAF
		LJUMP 	1CDH 			//11C8 	39CD
		LDWI 	FFH 			//11C9 	00FF
		ADDWR 	2EH, 1H 		//11CA 	17AE
		BTSS 	3H, 0H 			//11CB 	2C03
		DECR 	2FH, 1H 		//11CC 	13AF
		DECR 	2EH, 0H 		//11CD 	132E
		XORWI 	FFH 			//11CE 	0AFF
		MOVLP 	1AH 			//11CF 	019A
		LCALL 	2D2H 			//11D0 	32D2
		MOVLP 	10H 			//11D1 	0190
		LCALL 	6DCH 			//11D2 	36DC
		MOVLP 	10H 			//11D3 	0190
		LCALL 	709H 			//11D4 	3709
		MOVLB 	2H 			//11D5 	1022
		LDR 	24H, 0H 			//11D6 	1824
		MOVLB 	1H 			//11D7 	1021
		STR 	23H 			//11D8 	10A3
		MOVLB 	2H 			//11D9 	1022
		LDR 	25H, 0H 			//11DA 	1825
		MOVLB 	1H 			//11DB 	1021
		STR 	24H 			//11DC 	10A4
		MOVLB 	2H 			//11DD 	1022
		LDR 	26H, 0H 			//11DE 	1826
		MOVLB 	1H 			//11DF 	1021
		STR 	25H 			//11E0 	10A5
		MOVLP 	1DH 			//11E1 	019D
		LCALL 	59CH 			//11E2 	359C
		MOVLP 	10H 			//11E3 	0190
		LDR 	20H, 0H 			//11E4 	1820
		MOVLB 	2H 			//11E5 	1022
		STR 	24H 			//11E6 	10A4
		MOVLB 	1H 			//11E7 	1021
		LDR 	21H, 0H 			//11E8 	1821
		MOVLB 	2H 			//11E9 	1022
		STR 	25H 			//11EA 	10A5
		MOVLB 	1H 			//11EB 	1021
		LDR 	22H, 0H 			//11EC 	1822
		MOVLB 	2H 			//11ED 	1022
		STR 	26H 			//11EE 	10A6
		LCALL 	6A5H 			//11EF 	36A5
		MOVLP 	10H 			//11F0 	0190
		LDWI 	80H 			//11F1 	0080
		CLRF 	42H 			//11F2 	11C2
		STR 	43H 			//11F3 	10C3
		LDWI 	3FH 			//11F4 	003F
		STR 	44H 			//11F5 	10C4
		LCALL 	543H 			//11F6 	3543
		MOVLP 	10H 			//11F7 	0190
		BTSC 	3H, 0H 			//11F8 	2803
		LJUMP 	200H 			//11F9 	3A00
		LDWI 	FFH 			//11FA 	00FF
		MOVLB 	2H 			//11FB 	1022
		ADDWR 	2EH, 1H 		//11FC 	17AE
		BTSS 	3H, 0H 			//11FD 	2C03
		DECR 	2FH, 1H 		//11FE 	13AF
		LJUMP 	210H 			//11FF 	3A10
		MOVLB 	2H 			//1200 	1022
		LCALL 	6A5H 			//1201 	36A5
		MOVLP 	10H 			//1202 	0190
		LDWI 	20H 			//1203 	0020
		CLRF 	42H 			//1204 	11C2
		STR 	43H 			//1205 	10C3
		LDWI 	41H 			//1206 	0041
		STR 	44H 			//1207 	10C4
		LCALL 	543H 			//1208 	3543
		MOVLP 	10H 			//1209 	0190
		BTSS 	3H, 0H 			//120A 	2C03
		LJUMP 	210H 			//120B 	3A10
		MOVLB 	2H 			//120C 	1022
		INCR 	2EH, 1H 		//120D 	1AAE
		BTSC 	3H, 2H 			//120E 	2903
		INCR 	2FH, 1H 		//120F 	1AAF
		MOVLB 	2H 			//1210 	1022
		LDR 	36H, 0H 			//1211 	1836
		LCALL 	6D6H 			//1212 	36D6
		MOVLP 	10H 			//1213 	0190
		BTSS 	3H, 2H 			//1214 	2D03
		LJUMP 	219H 			//1215 	3A19
		LDWI 	DH 			//1216 	000D
		MOVLB 	2H 			//1217 	1022
		SUBWR 	35H, 0H 		//1218 	1235
		BTSC 	3H, 0H 			//1219 	2803
		LJUMP 	245H 			//121A 	3A45
		MOVLB 	2H 			//121B 	1022
		LDR 	35H, 0H 			//121C 	1835
		MOVLP 	1AH 			//121D 	019A
		LCALL 	24AH 			//121E 	324A
		MOVLP 	10H 			//121F 	0190
		LDR 	2CH, 0H 			//1220 	182C
		MOVLB 	0H 			//1221 	1020
		STR 	41H 			//1222 	10C1
		MOVLB 	1H 			//1223 	1021
		LDR 	2DH, 0H 			//1224 	182D
		MOVLB 	0H 			//1225 	1020
		STR 	42H 			//1226 	10C2
		MOVLB 	1H 			//1227 	1021
		LDR 	2EH, 0H 			//1228 	182E
		MOVLB 	0H 			//1229 	1020
		STR 	43H 			//122A 	10C3
		MOVLB 	2H 			//122B 	1022
		LDR 	32H, 0H 			//122C 	1832
		MOVLB 	0H 			//122D 	1020
		STR 	44H 			//122E 	10C4
		MOVLB 	2H 			//122F 	1022
		LDR 	33H, 0H 			//1230 	1833
		MOVLB 	0H 			//1231 	1020
		STR 	45H 			//1232 	10C5
		MOVLB 	2H 			//1233 	1022
		LDR 	34H, 0H 			//1234 	1834
		MOVLB 	0H 			//1235 	1020
		STR 	46H 			//1236 	10C6
		MOVLP 	19H 			//1237 	0199
		LCALL 	15FH 			//1238 	315F
		MOVLP 	10H 			//1239 	0190
		LDR 	41H, 0H 			//123A 	1841
		MOVLB 	2H 			//123B 	1022
		STR 	32H 			//123C 	10B2
		MOVLB 	0H 			//123D 	1020
		LDR 	42H, 0H 			//123E 	1842
		MOVLB 	2H 			//123F 	1022
		STR 	33H 			//1240 	10B3
		MOVLB 	0H 			//1241 	1020
		LDR 	43H, 0H 			//1242 	1843
		MOVLB 	2H 			//1243 	1022
		STR 	34H 			//1244 	10B4
		MOVLB 	2H 			//1245 	1022
		LDR 	2FH, 0H 			//1246 	182F
		LCALL 	6D6H 			//1247 	36D6
		MOVLP 	10H 			//1248 	0190
		BTSS 	3H, 2H 			//1249 	2D03
		LJUMP 	24EH 			//124A 	3A4E
		LDWI 	AH 			//124B 	000A
		MOVLB 	2H 			//124C 	1022
		SUBWR 	2EH, 0H 		//124D 	122E
		BTSC 	3H, 0H 			//124E 	2803
		LJUMP 	26BH 			//124F 	3A6B
		MOVLB 	2H 			//1250 	1022
		LDR 	34H, 0H 			//1251 	1834
		IORWR 	33H, 0H 		//1252 	1433
		IORWR 	32H, 0H 		//1253 	1432
		BTSC 	3H, 2H 			//1254 	2903
		LJUMP 	2B0H 			//1255 	3AB0
		LCALL 	6E9H 			//1256 	36E9
		MOVLP 	10H 			//1257 	0190
		LCALL 	5A5H 			//1258 	35A5
		MOVLP 	10H 			//1259 	0190
		LDR 	37H, 0H 			//125A 	1837
		IORWR 	36H, 0H 		//125B 	1436
		IORWR 	35H, 0H 		//125C 	1435
		IORWR 	34H, 0H 		//125D 	1434
		BTSS 	3H, 2H 			//125E 	2D03
		LJUMP 	2B0H 			//125F 	3AB0
		MOVLB 	2H 			//1260 	1022
		LDR 	2FH, 0H 			//1261 	182F
		LCALL 	6D6H 			//1262 	36D6
		MOVLP 	10H 			//1263 	0190
		BTSS 	3H, 2H 			//1264 	2D03
		LJUMP 	269H 			//1265 	3A69
		LDWI 	2H 			//1266 	0002
		MOVLB 	2H 			//1267 	1022
		SUBWR 	2EH, 0H 		//1268 	122E
		BTSS 	3H, 0H 			//1269 	2C03
		LJUMP 	2B0H 			//126A 	3AB0
		MOVLB 	2H 			//126B 	1022
		LCALL 	6A5H 			//126C 	36A5
		MOVLP 	10H 			//126D 	0190
		LDWI 	70H 			//126E 	0070
		STR 	42H 			//126F 	10C2
		LDWI 	89H 			//1270 	0089
		STR 	43H 			//1271 	10C3
		LDWI 	40H 			//1272 	0040
		STR 	44H 			//1273 	10C4
		LCALL 	543H 			//1274 	3543
		MOVLP 	10H 			//1275 	0190
		BTSC 	3H, 0H 			//1276 	2803
		LJUMP 	27AH 			//1277 	3A7A
		LDWI 	F7H 			//1278 	00F7
		LJUMP 	27BH 			//1279 	3A7B
		LDWI 	F8H 			//127A 	00F8
		MOVLB 	2H 			//127B 	1022
		ADDWR 	2EH, 1H 		//127C 	17AE
		BTSS 	3H, 0H 			//127D 	2C03
		DECR 	2FH, 1H 		//127E 	13AF
		LDR 	2EH, 0H 			//127F 	182E
		MOVLP 	1AH 			//1280 	019A
		LCALL 	2D2H 			//1281 	32D2
		MOVLP 	10H 			//1282 	0190
		LCALL 	6DCH 			//1283 	36DC
		MOVLP 	10H 			//1284 	0190
		MOVLB 	0H 			//1285 	1020
		STR 	2DH 			//1286 	10AD
		MOVLB 	2H 			//1287 	1022
		LDR 	33H, 0H 			//1288 	1833
		MOVLB 	0H 			//1289 	1020
		STR 	2EH 			//128A 	10AE
		MOVLB 	2H 			//128B 	1022
		LDR 	34H, 0H 			//128C 	1834
		MOVLB 	0H 			//128D 	1020
		STR 	2FH 			//128E 	10AF
		MOVLB 	2H 			//128F 	1022
		LDR 	24H, 0H 			//1290 	1824
		MOVLB 	0H 			//1291 	1020
		STR 	30H 			//1292 	10B0
		MOVLB 	2H 			//1293 	1022
		LDR 	25H, 0H 			//1294 	1825
		MOVLB 	0H 			//1295 	1020
		STR 	31H 			//1296 	10B1
		MOVLB 	2H 			//1297 	1022
		LDR 	26H, 0H 			//1298 	1826
		MOVLB 	0H 			//1299 	1020
		STR 	32H 			//129A 	10B2
		LCALL 	791H 			//129B 	3791
		MOVLP 	10H 			//129C 	0190
		LDR 	30H, 0H 			//129D 	1830
		MOVLB 	2H 			//129E 	1022
		STR 	2BH 			//129F 	10AB
		MOVLB 	0H 			//12A0 	1020
		LDR 	2FH, 0H 			//12A1 	182F
		MOVLB 	2H 			//12A2 	1022
		STR 	2AH 			//12A3 	10AA
		MOVLB 	0H 			//12A4 	1020
		LDR 	2EH, 0H 			//12A5 	182E
		MOVLB 	2H 			//12A6 	1022
		STR 	29H 			//12A7 	10A9
		MOVLB 	0H 			//12A8 	1020
		LDR 	2DH, 0H 			//12A9 	182D
		MOVLB 	2H 			//12AA 	1022
		STR 	28H 			//12AB 	10A8
		CLRF 	32H 			//12AC 	11B2
		CLRF 	33H 			//12AD 	11B3
		CLRF 	34H 			//12AE 	11B4
		LJUMP 	2EBH 			//12AF 	3AEB
		MOVLB 	2H 			//12B0 	1022
		LCALL 	6E9H 			//12B1 	36E9
		MOVLP 	10H 			//12B2 	0190
		LCALL 	5A5H 			//12B3 	35A5
		MOVLP 	10H 			//12B4 	0190
		LCALL 	6C8H 			//12B5 	36C8
		MOVLB 	2H 			//12B6 	1022
		STR 	28H 			//12B7 	10A8
		LDR 	2BH, 0H 			//12B8 	182B
		MOVLB 	0H 			//12B9 	1020
		STR 	38H 			//12BA 	10B8
		MOVLB 	2H 			//12BB 	1022
		LDR 	2AH, 0H 			//12BC 	182A
		MOVLB 	0H 			//12BD 	1020
		STR 	37H 			//12BE 	10B7
		MOVLB 	2H 			//12BF 	1022
		LDR 	29H, 0H 			//12C0 	1829
		MOVLB 	0H 			//12C1 	1020
		STR 	36H 			//12C2 	10B6
		MOVLB 	2H 			//12C3 	1022
		LDR 	28H, 0H 			//12C4 	1828
		MOVLB 	0H 			//12C5 	1020
		STR 	35H 			//12C6 	10B5
		MOVLP 	19H 			//12C7 	0199
		LCALL 	142H 			//12C8 	3142
		MOVLP 	10H 			//12C9 	0190
		LDR 	35H, 0H 			//12CA 	1835
		STR 	4DH 			//12CB 	10CD
		LDR 	36H, 0H 			//12CC 	1836
		STR 	4EH 			//12CD 	10CE
		LDR 	37H, 0H 			//12CE 	1837
		STR 	4FH 			//12CF 	10CF
		MOVLB 	2H 			//12D0 	1022
		LDR 	32H, 0H 			//12D1 	1832
		MOVLB 	0H 			//12D2 	1020
		STR 	50H 			//12D3 	10D0
		MOVLB 	2H 			//12D4 	1022
		LDR 	33H, 0H 			//12D5 	1833
		MOVLB 	0H 			//12D6 	1020
		STR 	51H 			//12D7 	10D1
		MOVLB 	2H 			//12D8 	1022
		LDR 	34H, 0H 			//12D9 	1834
		MOVLB 	0H 			//12DA 	1020
		STR 	52H 			//12DB 	10D2
		LCALL 	611H 			//12DC 	3611
		MOVLP 	10H 			//12DD 	0190
		LDR 	4DH, 0H 			//12DE 	184D
		MOVLB 	2H 			//12DF 	1022
		STR 	32H 			//12E0 	10B2
		MOVLB 	0H 			//12E1 	1020
		LDR 	4EH, 0H 			//12E2 	184E
		MOVLB 	2H 			//12E3 	1022
		STR 	33H 			//12E4 	10B3
		MOVLB 	0H 			//12E5 	1020
		LDR 	4FH, 0H 			//12E6 	184F
		MOVLB 	2H 			//12E7 	1022
		STR 	34H 			//12E8 	10B4
		CLRF 	2EH 			//12E9 	11AE
		CLRF 	2FH 			//12EA 	11AF
		CLRF 	37H 			//12EB 	11B7
		INCR 	37H, 1H 		//12EC 	1AB7
		LCALL 	62DH 			//12ED 	362D
		MOVLP 	10H 			//12EE 	0190
		LCALL 	71FH 			//12EF 	371F
		MOVLP 	10H 			//12F0 	0190
		BTSS 	3H, 2H 			//12F1 	2D03
		LJUMP 	2FDH 			//12F2 	3AFD
		LCALL 	73EH 			//12F3 	373E
		MOVLP 	10H 			//12F4 	0190
		BTSS 	3H, 2H 			//12F5 	2D03
		LJUMP 	2FDH 			//12F6 	3AFD
		LCALL 	748H 			//12F7 	3748
		MOVLP 	10H 			//12F8 	0190
		BTSS 	3H, 2H 			//12F9 	2D03
		LJUMP 	2FDH 			//12FA 	3AFD
		LCALL 	743H 			//12FB 	3743
		MOVLP 	10H 			//12FC 	0190
		BTSS 	3H, 0H 			//12FD 	2C03
		LJUMP 	304H 			//12FE 	3B04
		LDWI 	AH 			//12FF 	000A
		INCR 	37H, 1H 		//1300 	1AB7
		XORWR 	37H, 0H 		//1301 	1637
		BTSS 	3H, 2H 			//1302 	2D03
		LJUMP 	2EDH 			//1303 	3AED
		LDR 	37H, 0H 			//1304 	1837
		LCALL 	6FCH 			//1305 	36FC
		MOVLP 	10H 			//1306 	0190
		LDR 	35H, 0H 			//1307 	1835
		MOVLB 	1H 			//1308 	1021
		ADDWR 	53H, 0H 		//1309 	1753
		STR 	55H 			//130A 	10D5
		MOVLB 	2H 			//130B 	1022
		LDR 	36H, 0H 			//130C 	1836
		MOVLB 	1H 			//130D 	1021
		ADDWFC 	54H, 0H 		//130E 	0D54
		STR 	56H 			//130F 	10D6
		MOVLB 	2H 			//1310 	1022
		LDR 	2EH, 0H 			//1311 	182E
		MOVLB 	1H 			//1312 	1021
		ADDWR 	55H, 0H 		//1313 	1755
		STR 	57H 			//1314 	10D7
		MOVLB 	2H 			//1315 	1022
		LDR 	2FH, 0H 			//1316 	182F
		MOVLB 	1H 			//1317 	1021
		ADDWFC 	56H, 0H 		//1318 	0D56
		STR 	58H 			//1319 	10D8
		LDR 	57H, 0H 			//131A 	1857
		MOVLB 	2H 			//131B 	1022
		SUBWR 	30H, 1H 		//131C 	12B0
		MOVLB 	1H 			//131D 	1021
		LDR 	58H, 0H 			//131E 	1858
		MOVLB 	2H 			//131F 	1022
		SUBWFB 	31H, 1H 		//1320 	0BB1
		LDR 	35H, 0H 			//1321 	1835
		IORWR 	36H, 0H 		//1322 	1436
		BTSC 	3H, 2H 			//1323 	2903
		LJUMP 	329H 			//1324 	3B29
		LDWI 	FFH 			//1325 	00FF
		ADDWR 	30H, 1H 		//1326 	17B0
		BTSS 	3H, 0H 			//1327 	2C03
		DECR 	31H, 1H 		//1328 	13B1
		LDR 	2CH, 0H 			//1329 	182C
		ANDWI 	3H 			//132A 	0903
		BTSC 	3H, 2H 			//132B 	2903
		LJUMP 	331H 			//132C 	3B31
		LDWI 	FFH 			//132D 	00FF
		ADDWR 	30H, 1H 		//132E 	17B0
		BTSS 	3H, 0H 			//132F 	2C03
		DECR 	31H, 1H 		//1330 	13B1
		BTSS 	2CH, 2H 		//1331 	2D2C
		LJUMP 	357H 			//1332 	3B57
		LDR 	2CH, 0H 			//1333 	182C
		ANDWI 	3H 			//1334 	0903
		BTSC 	3H, 2H 			//1335 	2903
		LJUMP 	33EH 			//1336 	3B3E
		LCALL 	687H 			//1337 	3687
		MOVLP 	10H 			//1338 	0190
		LDWI 	2DH 			//1339 	002D
		STR 	1H 			//133A 	1081
		INCR 	41H, 1H 		//133B 	1AC1
		BTSC 	3H, 2H 			//133C 	2903
		INCR 	42H, 1H 		//133D 	1AC2
		MOVLB 	2H 			//133E 	1022
		LDR 	31H, 0H 			//133F 	1831
		LCALL 	6D6H 			//1340 	36D6
		MOVLP 	10H 			//1341 	0190
		BTSS 	3H, 2H 			//1342 	2D03
		LJUMP 	347H 			//1343 	3B47
		LDWI 	1H 			//1344 	0001
		MOVLB 	2H 			//1345 	1022
		SUBWR 	30H, 0H 		//1346 	1230
		BTSS 	3H, 0H 			//1347 	2C03
		LJUMP 	37AH 			//1348 	3B7A
		MOVLB 	1H 			//1349 	1021
		LCALL 	67CH 			//134A 	367C
		MOVLP 	10H 			//134B 	0190
		ADDWR 	30H, 1H 		//134C 	17B0
		BTSS 	3H, 0H 			//134D 	2C03
		DECR 	31H, 1H 		//134E 	13B1
		LJUMP 	33EH 			//134F 	3B3E
		LCALL 	687H 			//1350 	3687
		MOVLP 	10H 			//1351 	0190
		LDWI 	20H 			//1352 	0020
		LCALL 	6B1H 			//1353 	36B1
		MOVLP 	10H 			//1354 	0190
		BTSS 	3H, 0H 			//1355 	2C03
		DECR 	31H, 1H 		//1356 	13B1
		LDR 	31H, 0H 			//1357 	1831
		LCALL 	6D6H 			//1358 	36D6
		MOVLP 	10H 			//1359 	0190
		BTSS 	3H, 2H 			//135A 	2D03
		LJUMP 	35FH 			//135B 	3B5F
		LDWI 	1H 			//135C 	0001
		MOVLB 	2H 			//135D 	1022
		SUBWR 	30H, 0H 		//135E 	1230
		BTSC 	3H, 0H 			//135F 	2803
		LJUMP 	350H 			//1360 	3B50
		MOVLB 	2H 			//1361 	1022
		LDR 	2CH, 0H 			//1362 	182C
		ANDWI 	3H 			//1363 	0903
		BTSC 	3H, 2H 			//1364 	2903
		LJUMP 	37AH 			//1365 	3B7A
		LCALL 	687H 			//1366 	3687
		MOVLP 	10H 			//1367 	0190
		LDWI 	2DH 			//1368 	002D
		LJUMP 	376H 			//1369 	3B76
		LCALL 	62DH 			//136A 	362D
		MOVLP 	10H 			//136B 	0190
		LCALL 	63DH 			//136C 	363D
		MOVLP 	10H 			//136D 	0190
		LCALL 	752H 			//136E 	3752
		MOVLP 	10H 			//136F 	0190
		LCALL 	656H 			//1370 	3656
		MOVLP 	10H 			//1371 	0190
		LCALL 	56FH 			//1372 	356F
		MOVLP 	10H 			//1373 	0190
		LCALL 	68DH 			//1374 	368D
		MOVLP 	10H 			//1375 	0190
		STR 	1H 			//1376 	1081
		INCR 	41H, 1H 		//1377 	1AC1
		BTSC 	3H, 2H 			//1378 	2903
		INCR 	42H, 1H 		//1379 	1AC2
		MOVLB 	2H 			//137A 	1022
		DECR 	37H, 1H 		//137B 	13B7
		INCRSZ 	37H, 0H 		//137C 	1F37
		LJUMP 	36AH 			//137D 	3B6A
		LDR 	2FH, 0H 			//137E 	182F
		LCALL 	6D6H 			//137F 	36D6
		MOVLP 	10H 			//1380 	0190
		BTSS 	3H, 2H 			//1381 	2D03
		LJUMP 	386H 			//1382 	3B86
		LDWI 	1H 			//1383 	0001
		MOVLB 	2H 			//1384 	1022
		SUBWR 	2EH, 0H 		//1385 	122E
		BTSS 	3H, 0H 			//1386 	2C03
		LJUMP 	38FH 			//1387 	3B8F
		MOVLB 	1H 			//1388 	1021
		LCALL 	67CH 			//1389 	367C
		MOVLP 	10H 			//138A 	0190
		ADDWR 	2EH, 1H 		//138B 	17AE
		BTSS 	3H, 0H 			//138C 	2C03
		DECR 	2FH, 1H 		//138D 	13AF
		LJUMP 	37EH 			//138E 	3B7E
		MOVLB 	2H 			//138F 	1022
		LDR 	36H, 0H 			//1390 	1836
		LCALL 	6D6H 			//1391 	36D6
		MOVLP 	10H 			//1392 	0190
		BTSS 	3H, 2H 			//1393 	2D03
		LJUMP 	398H 			//1394 	3B98
		LDWI 	9H 			//1395 	0009
		MOVLB 	2H 			//1396 	1022
		SUBWR 	35H, 0H 		//1397 	1235
		BTSS 	3H, 0H 			//1398 	2C03
		LJUMP 	39DH 			//1399 	3B9D
		LDWI 	8H 			//139A 	0008
		MOVLB 	2H 			//139B 	1022
		LJUMP 	39FH 			//139C 	3B9F
		MOVLB 	2H 			//139D 	1022
		LDR 	35H, 0H 			//139E 	1835
		STR 	37H 			//139F 	10B7
		LCALL 	6FCH 			//13A0 	36FC
		MOVLP 	10H 			//13A1 	0190
		SUBWR 	35H, 1H 		//13A2 	12B5
		MOVLB 	1H 			//13A3 	1021
		LDR 	54H, 0H 			//13A4 	1854
		MOVLB 	2H 			//13A5 	1022
		SUBWFB 	36H, 1H 		//13A6 	0BB6
		LDR 	37H, 0H 			//13A7 	1837
		BTSC 	3H, 2H 			//13A8 	2903
		LJUMP 	3B0H 			//13A9 	3BB0
		LCALL 	687H 			//13AA 	3687
		LDWI 	2EH 			//13AB 	002E
		STR 	1H 			//13AC 	1081
		INCR 	41H, 1H 		//13AD 	1AC1
		BTSC 	3H, 2H 			//13AE 	2903
		INCR 	42H, 1H 		//13AF 	1AC2
		MOVLB 	2H 			//13B0 	1022
		LDR 	37H, 0H 			//13B1 	1837
		MOVLP 	1AH 			//13B2 	019A
		LCALL 	2D2H 			//13B3 	32D2
		MOVLP 	10H 			//13B4 	0190
		LDR 	2CH, 0H 			//13B5 	182C
		MOVLB 	2H 			//13B6 	1022
		STR 	20H 			//13B7 	10A0
		MOVLB 	1H 			//13B8 	1021
		LDR 	2DH, 0H 			//13B9 	182D
		MOVLB 	2H 			//13BA 	1022
		STR 	21H 			//13BB 	10A1
		MOVLB 	1H 			//13BC 	1021
		LDR 	2EH, 0H 			//13BD 	182E
		MOVLB 	2H 			//13BE 	1022
		STR 	22H 			//13BF 	10A2
		LDR 	20H, 0H 			//13C0 	1820
		MOVLB 	1H 			//13C1 	1021
		STR 	23H 			//13C2 	10A3
		MOVLB 	2H 			//13C3 	1022
		LDR 	21H, 0H 			//13C4 	1821
		MOVLB 	1H 			//13C5 	1021
		STR 	24H 			//13C6 	10A4
		MOVLB 	2H 			//13C7 	1022
		LDR 	22H, 0H 			//13C8 	1822
		MOVLB 	1H 			//13C9 	1021
		STR 	25H 			//13CA 	10A5
		MOVLB 	2H 			//13CB 	1022
		LDR 	32H, 0H 			//13CC 	1832
		LCALL 	709H 			//13CD 	3709
		MOVLP 	1DH 			//13CE 	019D
		LCALL 	59CH 			//13CF 	359C
		MOVLP 	10H 			//13D0 	0190
		LCALL 	731H 			//13D1 	3731
		MOVLP 	10H 			//13D2 	0190
		LCALL 	5A5H 			//13D3 	35A5
		MOVLP 	10H 			//13D4 	0190
		LCALL 	6C8H 			//13D5 	36C8
		MOVLP 	10H 			//13D6 	0190
		LJUMP 	412H 			//13D7 	3C12
		LCALL 	62DH 			//13D8 	362D
		MOVLP 	10H 			//13D9 	0190
		LCALL 	63DH 			//13DA 	363D
		MOVLP 	10H 			//13DB 	0190
		LCALL 	752H 			//13DC 	3752
		MOVLP 	10H 			//13DD 	0190
		LCALL 	656H 			//13DE 	3656
		MOVLP 	10H 			//13DF 	0190
		LCALL 	56FH 			//13E0 	356F
		MOVLP 	10H 			//13E1 	0190
		LCALL 	68DH 			//13E2 	368D
		MOVLP 	10H 			//13E3 	0190
		STR 	1H 			//13E4 	1081
		INCR 	41H, 1H 		//13E5 	1AC1
		BTSC 	3H, 2H 			//13E6 	2903
		INCR 	42H, 1H 		//13E7 	1AC2
		MOVLB 	2H 			//13E8 	1022
		LCALL 	62DH 			//13E9 	362D
		MOVLP 	10H 			//13EA 	0190
		MOVLB 	0H 			//13EB 	1020
		STR 	3AH 			//13EC 	10BA
		MOVIW 	1H[0] 			//13ED 	0F01
		STR 	3BH 			//13EE 	10BB
		MOVIW 	2H[0] 			//13EF 	0F02
		STR 	3CH 			//13F0 	10BC
		MOVIW 	3H[0] 			//13F1 	0F03
		STR 	3DH 			//13F2 	10BD
		MOVLB 	2H 			//13F3 	1022
		LDR 	2BH, 0H 			//13F4 	182B
		MOVLB 	0H 			//13F5 	1020
		STR 	41H 			//13F6 	10C1
		MOVLB 	2H 			//13F7 	1022
		LDR 	2AH, 0H 			//13F8 	182A
		MOVLB 	0H 			//13F9 	1020
		STR 	40H 			//13FA 	10C0
		MOVLB 	2H 			//13FB 	1022
		LDR 	29H, 0H 			//13FC 	1829
		MOVLB 	0H 			//13FD 	1020
		STR 	3FH 			//13FE 	10BF
		MOVLB 	2H 			//13FF 	1022
		LDR 	28H, 0H 			//1400 	1828
		MOVLB 	0H 			//1401 	1020
		STR 	3EH 			//1402 	10BE
		LCALL 	56FH 			//1403 	356F
		MOVLP 	10H 			//1404 	0190
		LDR 	3DH, 0H 			//1405 	183D
		MOVLB 	2H 			//1406 	1022
		STR 	2BH 			//1407 	10AB
		MOVLB 	0H 			//1408 	1020
		LDR 	3CH, 0H 			//1409 	183C
		MOVLB 	2H 			//140A 	1022
		STR 	2AH 			//140B 	10AA
		MOVLB 	0H 			//140C 	1020
		LDR 	3BH, 0H 			//140D 	183B
		MOVLB 	2H 			//140E 	1022
		STR 	29H 			//140F 	10A9
		MOVLB 	0H 			//1410 	1020
		LDR 	3AH, 0H 			//1411 	183A
		MOVLB 	2H 			//1412 	1022
		STR 	28H 			//1413 	10A8
		DECR 	37H, 1H 		//1414 	13B7
		INCRSZ 	37H, 0H 		//1415 	1F37
		LJUMP 	3D8H 			//1416 	3BD8
		LDR 	35H, 0H 			//1417 	1835
		IORWR 	36H, 0H 		//1418 	1436
		BTSC 	3H, 2H 			//1419 	2903
		LJUMP 	77H 			//141A 	3877
		MOVLB 	1H 			//141B 	1021
		LCALL 	67CH 			//141C 	367C
		MOVLP 	10H 			//141D 	0190
		ADDWR 	35H, 1H 		//141E 	17B5
		BTSS 	3H, 0H 			//141F 	2C03
		DECR 	36H, 1H 		//1420 	13B6
		LJUMP 	417H 			//1421 	3C17
		MOVLB 	2H 			//1422 	1022
		LDR 	23H, 0H 			//1423 	1823
		STR 	6H 			//1424 	1086
		CLRF 	7H 			//1425 	1187
		LCALL 	738H 			//1426 	3738
		MOVLP 	10H 			//1427 	0190
		LDR 	53H, 0H 			//1428 	1853
		MOVLB 	2H 			//1429 	1022
		STR 	28H 			//142A 	10A8
		MOVLB 	1H 			//142B 	1021
		LDR 	54H, 0H 			//142C 	1854
		MOVLB 	2H 			//142D 	1022
		STR 	29H 			//142E 	10A9
		RLR 	9H, 1H 			//142F 	1D89
		SUBWFB 	9H, 1H 		//1430 	0B89
		COMR 	9H, 1H 			//1431 	1989
		STR 	2AH 			//1432 	10AA
		STR 	2BH 			//1433 	10AB
		INCR 	23H, 1H 		//1434 	1AA3
		INCR 	23H, 1H 		//1435 	1AA3
		BTSS 	2BH, 7H 		//1436 	2FAB
		LJUMP 	445H 			//1437 	3C45
		LDWI 	3H 			//1438 	0003
		IORWR 	2CH, 1H 		//1439 	14AC
		COMR 	28H, 1H 		//143A 	19A8
		COMR 	29H, 1H 		//143B 	19A9
		COMR 	2AH, 1H 		//143C 	19AA
		COMR 	2BH, 1H 		//143D 	19AB
		INCR 	28H, 1H 		//143E 	1AA8
		BTSC 	3H, 2H 			//143F 	2903
		INCR 	29H, 1H 		//1440 	1AA9
		BTSC 	3H, 2H 			//1441 	2903
		INCR 	2AH, 1H 		//1442 	1AAA
		BTSC 	3H, 2H 			//1443 	2903
		INCR 	2BH, 1H 		//1444 	1AAB
		LDR 	35H, 0H 			//1445 	1835
		IORWR 	36H, 0H 		//1446 	1436
		BTSS 	3H, 2H 			//1447 	2D03
		LJUMP 	451H 			//1448 	3C51
		LDR 	2BH, 0H 			//1449 	182B
		IORWR 	2AH, 0H 		//144A 	142A
		IORWR 	29H, 0H 		//144B 	1429
		IORWR 	28H, 0H 		//144C 	1428
		BTSC 	3H, 2H 			//144D 	2903
		INCR 	35H, 1H 		//144E 	1AB5
		BTSC 	3H, 2H 			//144F 	2903
		INCR 	36H, 1H 		//1450 	1AB6
		CLRF 	37H 			//1451 	11B7
		INCR 	37H, 1H 		//1452 	1AB7
		LCALL 	62DH 			//1453 	362D
		MOVLP 	10H 			//1454 	0190
		LCALL 	71FH 			//1455 	371F
		MOVLP 	10H 			//1456 	0190
		BTSS 	3H, 2H 			//1457 	2D03
		LJUMP 	463H 			//1458 	3C63
		LCALL 	73EH 			//1459 	373E
		MOVLP 	10H 			//145A 	0190
		BTSS 	3H, 2H 			//145B 	2D03
		LJUMP 	463H 			//145C 	3C63
		LCALL 	748H 			//145D 	3748
		MOVLP 	10H 			//145E 	0190
		BTSS 	3H, 2H 			//145F 	2D03
		LJUMP 	463H 			//1460 	3C63
		LCALL 	743H 			//1461 	3743
		MOVLP 	10H 			//1462 	0190
		BTSS 	3H, 0H 			//1463 	2C03
		LJUMP 	46AH 			//1464 	3C6A
		LDWI 	AH 			//1465 	000A
		INCR 	37H, 1H 		//1466 	1AB7
		XORWR 	37H, 0H 		//1467 	1637
		BTSS 	3H, 2H 			//1468 	2D03
		LJUMP 	453H 			//1469 	3C53
		LCALL 	714H 			//146A 	3714
		MOVLP 	10H 			//146B 	0190
		LDR 	36H, 0H 			//146C 	1836
		XORWI 	80H 			//146D 	0A80
		MOVLB 	1H 			//146E 	1021
		SUBWR 	55H, 0H 		//146F 	1255
		BTSS 	3H, 2H 			//1470 	2D03
		LJUMP 	476H 			//1471 	3C76
		MOVLB 	2H 			//1472 	1022
		LDR 	35H, 0H 			//1473 	1835
		MOVLB 	1H 			//1474 	1021
		SUBWR 	53H, 0H 		//1475 	1253
		BTSC 	3H, 0H 			//1476 	2803
		LJUMP 	47CH 			//1477 	3C7C
		MOVLB 	2H 			//1478 	1022
		LDR 	35H, 0H 			//1479 	1835
		STR 	37H 			//147A 	10B7
		LJUMP 	494H 			//147B 	3C94
		MOVLB 	2H 			//147C 	1022
		LDR 	37H, 0H 			//147D 	1837
		LCALL 	6FCH 			//147E 	36FC
		MOVLP 	10H 			//147F 	0190
		LDR 	36H, 0H 			//1480 	1836
		XORWI 	80H 			//1481 	0A80
		MOVLB 	1H 			//1482 	1021
		STR 	55H 			//1483 	10D5
		LDR 	54H, 0H 			//1484 	1854
		XORWI 	80H 			//1485 	0A80
		SUBWR 	55H, 0H 		//1486 	1255
		BTSS 	3H, 2H 			//1487 	2D03
		LJUMP 	48CH 			//1488 	3C8C
		LDR 	53H, 0H 			//1489 	1853
		MOVLB 	2H 			//148A 	1022
		SUBWR 	35H, 0H 		//148B 	1235
		BTSC 	3H, 0H 			//148C 	2803
		LJUMP 	494H 			//148D 	3C94
		MOVLB 	2H 			//148E 	1022
		LDR 	37H, 0H 			//148F 	1837
		STR 	35H 			//1490 	10B5
		CLRF 	36H 			//1491 	11B6
		BTSC 	35H, 7H 		//1492 	2BB5
		DECR 	36H, 1H 		//1493 	13B6
		MOVLB 	2H 			//1494 	1022
		LDR 	30H, 0H 			//1495 	1830
		IORWR 	31H, 0H 		//1496 	1431
		BTSC 	3H, 2H 			//1497 	2903
		LJUMP 	4A1H 			//1498 	3CA1
		LDR 	2CH, 0H 			//1499 	182C
		ANDWI 	3H 			//149A 	0903
		BTSC 	3H, 2H 			//149B 	2903
		LJUMP 	4A1H 			//149C 	3CA1
		LDWI 	FFH 			//149D 	00FF
		ADDWR 	30H, 1H 		//149E 	17B0
		BTSS 	3H, 0H 			//149F 	2C03
		DECR 	31H, 1H 		//14A0 	13B1
		BTSS 	2DH, 6H 		//14A1 	2F2D
		LJUMP 	4BCH 			//14A2 	3CBC
		LDR 	36H, 0H 			//14A3 	1836
		XORWI 	80H 			//14A4 	0A80
		MOVLB 	1H 			//14A5 	1021
		STR 	53H 			//14A6 	10D3
		MOVLB 	2H 			//14A7 	1022
		LDR 	31H, 0H 			//14A8 	1831
		XORWI 	80H 			//14A9 	0A80
		MOVLB 	1H 			//14AA 	1021
		SUBWR 	53H, 0H 		//14AB 	1253
		BTSS 	3H, 2H 			//14AC 	2D03
		LJUMP 	4B1H 			//14AD 	3CB1
		MOVLB 	2H 			//14AE 	1022
		LDR 	30H, 0H 			//14AF 	1830
		SUBWR 	35H, 0H 		//14B0 	1235
		BTSC 	3H, 0H 			//14B1 	2803
		LJUMP 	4B9H 			//14B2 	3CB9
		MOVLB 	2H 			//14B3 	1022
		LDR 	35H, 0H 			//14B4 	1835
		SUBWR 	30H, 1H 		//14B5 	12B0
		LDR 	36H, 0H 			//14B6 	1836
		SUBWFB 	31H, 1H 		//14B7 	0BB1
		LJUMP 	4BCH 			//14B8 	3CBC
		MOVLB 	2H 			//14B9 	1022
		CLRF 	30H 			//14BA 	11B0
		CLRF 	31H 			//14BB 	11B1
		LCALL 	714H 			//14BC 	3714
		MOVLP 	10H 			//14BD 	0190
		LDR 	31H, 0H 			//14BE 	1831
		XORWI 	80H 			//14BF 	0A80
		MOVLB 	1H 			//14C0 	1021
		SUBWR 	55H, 0H 		//14C1 	1255
		BTSS 	3H, 2H 			//14C2 	2D03
		LJUMP 	4C8H 			//14C3 	3CC8
		MOVLB 	2H 			//14C4 	1022
		LDR 	30H, 0H 			//14C5 	1830
		MOVLB 	1H 			//14C6 	1021
		SUBWR 	53H, 0H 		//14C7 	1253
		BTSC 	3H, 0H 			//14C8 	2803
		LJUMP 	4D4H 			//14C9 	3CD4
		MOVLB 	2H 			//14CA 	1022
		LDR 	37H, 0H 			//14CB 	1837
		LCALL 	6FCH 			//14CC 	36FC
		MOVLP 	10H 			//14CD 	0190
		SUBWR 	30H, 1H 		//14CE 	12B0
		MOVLB 	1H 			//14CF 	1021
		LDR 	54H, 0H 			//14D0 	1854
		MOVLB 	2H 			//14D1 	1022
		SUBWFB 	31H, 1H 		//14D2 	0BB1
		LJUMP 	4D7H 			//14D3 	3CD7
		MOVLB 	2H 			//14D4 	1022
		CLRF 	30H 			//14D5 	11B0
		CLRF 	31H 			//14D6 	11B1
		BTSS 	2CH, 2H 		//14D7 	2D2C
		LJUMP 	4F0H 			//14D8 	3CF0
		LDR 	2CH, 0H 			//14D9 	182C
		ANDWI 	3H 			//14DA 	0903
		BTSC 	3H, 2H 			//14DB 	2903
		LJUMP 	4E4H 			//14DC 	3CE4
		LCALL 	687H 			//14DD 	3687
		MOVLP 	10H 			//14DE 	0190
		LDWI 	2DH 			//14DF 	002D
		STR 	1H 			//14E0 	1081
		INCR 	41H, 1H 		//14E1 	1AC1
		BTSC 	3H, 2H 			//14E2 	2903
		INCR 	42H, 1H 		//14E3 	1AC2
		MOVLB 	2H 			//14E4 	1022
		LDR 	30H, 0H 			//14E5 	1830
		IORWR 	31H, 0H 		//14E6 	1431
		BTSC 	3H, 2H 			//14E7 	2903
		LJUMP 	50BH 			//14E8 	3D0B
		MOVLB 	1H 			//14E9 	1021
		LCALL 	67CH 			//14EA 	367C
		MOVLP 	10H 			//14EB 	0190
		ADDWR 	30H, 1H 		//14EC 	17B0
		BTSS 	3H, 0H 			//14ED 	2C03
		DECR 	31H, 1H 		//14EE 	13B1
		LJUMP 	4E5H 			//14EF 	3CE5
		LDR 	30H, 0H 			//14F0 	1830
		IORWR 	31H, 0H 		//14F1 	1431
		BTSC 	3H, 2H 			//14F2 	2903
		LJUMP 	4FFH 			//14F3 	3CFF
		LCALL 	687H 			//14F4 	3687
		MOVLP 	10H 			//14F5 	0190
		LDWI 	20H 			//14F6 	0020
		LCALL 	6B1H 			//14F7 	36B1
		MOVLP 	10H 			//14F8 	0190
		BTSS 	3H, 0H 			//14F9 	2C03
		DECR 	31H, 1H 		//14FA 	13B1
		LDR 	30H, 0H 			//14FB 	1830
		IORWR 	31H, 0H 		//14FC 	1431
		BTSS 	3H, 2H 			//14FD 	2D03
		LJUMP 	4F4H 			//14FE 	3CF4
		LDR 	2CH, 0H 			//14FF 	182C
		ANDWI 	3H 			//1500 	0903
		BTSC 	3H, 2H 			//1501 	2903
		LJUMP 	50BH 			//1502 	3D0B
		LCALL 	687H 			//1503 	3687
		MOVLP 	10H 			//1504 	0190
		LDWI 	2DH 			//1505 	002D
		STR 	1H 			//1506 	1081
		MOVLB 	1H 			//1507 	1021
		INCR 	41H, 1H 		//1508 	1AC1
		BTSC 	3H, 2H 			//1509 	2903
		INCR 	42H, 1H 		//150A 	1AC2
		LDWI 	FFH 			//150B 	00FF
		MOVLB 	2H 			//150C 	1022
		ADDWR 	35H, 1H 		//150D 	17B5
		BTSS 	3H, 0H 			//150E 	2C03
		DECR 	36H, 1H 		//150F 	13B6
		INCRSZ 	35H, 0H 		//1510 	1F35
		LJUMP 	515H 			//1511 	3D15
		INCR 	36H, 0H 		//1512 	1A36
		BTSC 	3H, 2H 			//1513 	2903
		LJUMP 	77H 			//1514 	3877
		LDWI 	AH 			//1515 	000A
		MOVLB 	0H 			//1516 	1020
		STR 	3AH 			//1517 	10BA
		CLRF 	3BH 			//1518 	11BB
		CLRF 	3CH 			//1519 	11BC
		CLRF 	3DH 			//151A 	11BD
		MOVLB 	2H 			//151B 	1022
		LDR 	36H, 0H 			//151C 	1836
		STR 	5H 			//151D 	1085
		LDR 	35H, 0H 			//151E 	1835
		STR 	4H 			//151F 	1084
		LDWI 	0H 			//1520 	0000
		LSLF 	4H, 1H 			//1521 	0584
		RLR 	5H, 1H 			//1522 	1D85
		LSLF 	4H, 1H 			//1523 	0584
		RLR 	5H, 1H 			//1524 	1D85
		ADDWR 	4H, 1H 		//1525 	1784
		LDWI 	A0H 			//1526 	00A0
		ADDWFC 	5H, 1H 		//1527 	0D85
		MOVIW 	0H[0] 			//1528 	0F00
		LCALL 	63DH 			//1529 	363D
		MOVLP 	10H 			//152A 	0190
		LCALL 	752H 			//152B 	3752
		MOVLP 	10H 			//152C 	0190
		LDR 	30H, 0H 			//152D 	1830
		STR 	41H 			//152E 	10C1
		LDR 	2FH, 0H 			//152F 	182F
		STR 	40H 			//1530 	10C0
		LDR 	2EH, 0H 			//1531 	182E
		STR 	3FH 			//1532 	10BF
		LDR 	2DH, 0H 			//1533 	182D
		STR 	3EH 			//1534 	10BE
		LCALL 	56FH 			//1535 	356F
		MOVLP 	10H 			//1536 	0190
		LDR 	3AH, 0H 			//1537 	183A
		ADDWI 	30H 			//1538 	0E30
		MOVLB 	2H 			//1539 	1022
		STR 	37H 			//153A 	10B7
		LCALL 	687H 			//153B 	3687
		MOVLP 	10H 			//153C 	0190
		MOVLB 	2H 			//153D 	1022
		LDR 	37H, 0H 			//153E 	1837
		LJUMP 	506H 			//153F 	3D06
		LCALL 	687H 			//1540 	3687
		CLRF 	1H 			//1541 	1181
		RET 					//1542 	1008
		BTSS 	41H, 7H 		//1543 	2FC1
		LJUMP 	552H 			//1544 	3D52
		LDR 	3FH, 0H 			//1545 	183F
		SUBWI 	0H 			//1546 	0C00
		STR 	3FH 			//1547 	10BF
		LDR 	40H, 0H 			//1548 	1840
		BTSS 	3H, 0H 			//1549 	2C03
		INCRSZ 	40H, 0H 		//154A 	1F40
		SUBWI 	0H 			//154B 	0C00
		STR 	40H 			//154C 	10C0
		LDR 	41H, 0H 			//154D 	1841
		BTSS 	3H, 0H 			//154E 	2C03
		INCRSZ 	41H, 0H 		//154F 	1F41
		SUBWI 	80H 			//1550 	0C80
		STR 	41H 			//1551 	10C1
		BTSS 	44H, 7H 		//1552 	2FC4
		LJUMP 	561H 			//1553 	3D61
		LDR 	42H, 0H 			//1554 	1842
		SUBWI 	0H 			//1555 	0C00
		STR 	42H 			//1556 	10C2
		LDR 	43H, 0H 			//1557 	1843
		BTSS 	3H, 0H 			//1558 	2C03
		INCRSZ 	43H, 0H 		//1559 	1F43
		SUBWI 	0H 			//155A 	0C00
		STR 	43H 			//155B 	10C3
		LDR 	44H, 0H 			//155C 	1844
		BTSS 	3H, 0H 			//155D 	2C03
		INCRSZ 	44H, 0H 		//155E 	1F44
		SUBWI 	80H 			//155F 	0C80
		STR 	44H 			//1560 	10C4
		LDWI 	80H 			//1561 	0080
		XORWR 	41H, 1H 		//1562 	16C1
		XORWR 	44H, 1H 		//1563 	16C4
		LDR 	44H, 0H 			//1564 	1844
		SUBWR 	41H, 0H 		//1565 	1241
		BTSS 	3H, 2H 			//1566 	2D03
		RET 					//1567 	1008
		LDR 	43H, 0H 			//1568 	1843
		SUBWR 	40H, 0H 		//1569 	1240
		BTSS 	3H, 2H 			//156A 	2D03
		RET 					//156B 	1008
		LDR 	42H, 0H 			//156C 	1842
		SUBWR 	3FH, 0H 		//156D 	123F
		RET 					//156E 	1008
		LDR 	3DH, 0H 			//156F 	183D
		IORWR 	3CH, 0H 		//1570 	143C
		IORWR 	3BH, 0H 		//1571 	143B
		IORWR 	3AH, 0H 		//1572 	143A
		BTSC 	3H, 2H 			//1573 	2903
		LJUMP 	59CH 			//1574 	3D9C
		CLRF 	42H 			//1575 	11C2
		INCR 	42H, 1H 		//1576 	1AC2
		BTSC 	3DH, 7H 		//1577 	2BBD
		LJUMP 	57EH 			//1578 	3D7E
		LSLF 	3AH, 1H 		//1579 	05BA
		RLR 	3BH, 1H 			//157A 	1DBB
		RLR 	3CH, 1H 			//157B 	1DBC
		RLR 	3DH, 1H 			//157C 	1DBD
		LJUMP 	576H 			//157D 	3D76
		LDR 	3DH, 0H 			//157E 	183D
		SUBWR 	41H, 0H 		//157F 	1241
		BTSS 	3H, 2H 			//1580 	2D03
		LJUMP 	58CH 			//1581 	3D8C
		LDR 	3CH, 0H 			//1582 	183C
		SUBWR 	40H, 0H 		//1583 	1240
		BTSS 	3H, 2H 			//1584 	2D03
		LJUMP 	58CH 			//1585 	3D8C
		LDR 	3BH, 0H 			//1586 	183B
		SUBWR 	3FH, 0H 		//1587 	123F
		BTSS 	3H, 2H 			//1588 	2D03
		LJUMP 	58CH 			//1589 	3D8C
		LDR 	3AH, 0H 			//158A 	183A
		SUBWR 	3EH, 0H 		//158B 	123E
		BTSS 	3H, 0H 			//158C 	2C03
		LJUMP 	596H 			//158D 	3D96
		LDR 	3AH, 0H 			//158E 	183A
		SUBWR 	3EH, 1H 		//158F 	12BE
		LDR 	3BH, 0H 			//1590 	183B
		SUBWFB 	3FH, 1H 		//1591 	0BBF
		LDR 	3CH, 0H 			//1592 	183C
		SUBWFB 	40H, 1H 		//1593 	0BC0
		LDR 	3DH, 0H 			//1594 	183D
		SUBWFB 	41H, 1H 		//1595 	0BC1
		LSRF 	3DH, 1H 		//1596 	06BD
		RRR 	3CH, 1H 			//1597 	1CBC
		RRR 	3BH, 1H 			//1598 	1CBB
		RRR 	3AH, 1H 			//1599 	1CBA
		DECRSZ 	42H, 1H 		//159A 	1BC2
		LJUMP 	57EH 			//159B 	3D7E
		LDR 	41H, 0H 			//159C 	1841
		STR 	3DH 			//159D 	10BD
		LDR 	40H, 0H 			//159E 	1840
		STR 	3CH 			//159F 	10BC
		LDR 	3FH, 0H 			//15A0 	183F
		STR 	3BH 			//15A1 	10BB
		LDR 	3EH, 0H 			//15A2 	183E
		STR 	3AH 			//15A3 	10BA
		RET 					//15A4 	1008
		LCALL 	72AH 			//15A5 	372A
		MOVLP 	10H 			//15A6 	0190
		BCR 	3H, 0H 			//15A7 	2003
		RLR 	39H, 0H 			//15A8 	1D39
		RLR 	3AH, 0H 			//15A9 	1D3A
		STR 	40H 			//15AA 	10C0
		LDR 	40H, 0H 			//15AB 	1840
		BTSS 	3H, 2H 			//15AC 	2D03
		LJUMP 	5B3H 			//15AD 	3DB3
		CLRF 	34H 			//15AE 	11B4
		CLRF 	35H 			//15AF 	11B5
		CLRF 	36H 			//15B0 	11B6
		CLRF 	37H 			//15B1 	11B7
		RET 					//15B2 	1008
		LCALL 	72AH 			//15B3 	372A
		MOVLP 	10H 			//15B4 	0190
		LDWI 	17H 			//15B5 	0017
		LSRF 	3AH, 1H 		//15B6 	06BA
		RRR 	39H, 1H 			//15B7 	1CB9
		RRR 	38H, 1H 			//15B8 	1CB8
		DECRSZ 	9H, 1H 		//15B9 	1B89
		LJUMP 	5B6H 			//15BA 	3DB6
		LDR 	38H, 0H 			//15BB 	1838
		STR 	3BH 			//15BC 	10BB
		BSR 	35H, 7H 			//15BD 	27B5
		CLRF 	36H 			//15BE 	11B6
		LDR 	34H, 0H 			//15BF 	1834
		STR 	3CH 			//15C0 	10BC
		LDR 	35H, 0H 			//15C1 	1835
		STR 	3DH 			//15C2 	10BD
		LDR 	36H, 0H 			//15C3 	1836
		STR 	3EH 			//15C4 	10BE
		LDWI 	8EH 			//15C5 	008E
		CLRF 	3FH 			//15C6 	11BF
		SUBWR 	40H, 1H 		//15C7 	12C0
		BTSS 	40H, 7H 		//15C8 	2FC0
		LJUMP 	5D6H 			//15C9 	3DD6
		LDR 	40H, 0H 			//15CA 	1840
		XORWI 	80H 			//15CB 	0A80
		ADDWI 	8FH 			//15CC 	0E8F
		BTSS 	3H, 0H 			//15CD 	2C03
		LJUMP 	5AEH 			//15CE 	3DAE
		LSRF 	3FH, 1H 		//15CF 	06BF
		RRR 	3EH, 1H 			//15D0 	1CBE
		RRR 	3DH, 1H 			//15D1 	1CBD
		RRR 	3CH, 1H 			//15D2 	1CBC
		INCRSZ 	40H, 1H 		//15D3 	1FC0
		LJUMP 	5CFH 			//15D4 	3DCF
		LJUMP 	5E3H 			//15D5 	3DE3
		LDWI 	18H 			//15D6 	0018
		SUBWR 	40H, 0H 		//15D7 	1240
		BTSC 	3H, 0H 			//15D8 	2803
		LJUMP 	5AEH 			//15D9 	3DAE
		LDR 	40H, 0H 			//15DA 	1840
		BTSC 	3H, 2H 			//15DB 	2903
		LJUMP 	5E3H 			//15DC 	3DE3
		LSLF 	3CH, 1H 		//15DD 	05BC
		RLR 	3DH, 1H 			//15DE 	1DBD
		RLR 	3EH, 1H 			//15DF 	1DBE
		RLR 	3FH, 1H 			//15E0 	1DBF
		DECR 	40H, 1H 		//15E1 	13C0
		LJUMP 	5DAH 			//15E2 	3DDA
		LDR 	3BH, 0H 			//15E3 	183B
		BTSC 	3H, 2H 			//15E4 	2903
		LJUMP 	5F1H 			//15E5 	3DF1
		COMR 	3CH, 1H 		//15E6 	19BC
		COMR 	3DH, 1H 		//15E7 	19BD
		COMR 	3EH, 1H 		//15E8 	19BE
		COMR 	3FH, 1H 		//15E9 	19BF
		INCR 	3CH, 1H 		//15EA 	1ABC
		BTSC 	3H, 2H 			//15EB 	2903
		INCR 	3DH, 1H 		//15EC 	1ABD
		BTSC 	3H, 2H 			//15ED 	2903
		INCR 	3EH, 1H 		//15EE 	1ABE
		BTSC 	3H, 2H 			//15EF 	2903
		INCR 	3FH, 1H 		//15F0 	1ABF
		LDR 	3FH, 0H 			//15F1 	183F
		STR 	37H 			//15F2 	10B7
		LDR 	3EH, 0H 			//15F3 	183E
		STR 	36H 			//15F4 	10B6
		LDR 	3DH, 0H 			//15F5 	183D
		STR 	35H 			//15F6 	10B5
		LDR 	3CH, 0H 			//15F7 	183C
		STR 	34H 			//15F8 	10B4
		RET 					//15F9 	1008
		MOVLB 	0H 			//15FA 	1020
		STR 	2EH 			//15FB 	10AE
		LDWI 	3AH 			//15FC 	003A
		CLRF 	2DH 			//15FD 	11AD
		SUBWR 	2EH, 0H 		//15FE 	122E
		BTSC 	3H, 0H 			//15FF 	2803
		LJUMP 	607H 			//1600 	3E07
		LDWI 	30H 			//1601 	0030
		SUBWR 	2EH, 0H 		//1602 	122E
		BTSS 	3H, 0H 			//1603 	2C03
		LJUMP 	607H 			//1604 	3E07
		CLRF 	2DH 			//1605 	11AD
		INCR 	2DH, 1H 		//1606 	1AAD
		RRR 	2DH, 0H 			//1607 	1C2D
		RET 					//1608 	1008
		LDR 	2FH, 0H 			//1609 	182F
		IORWR 	2EH, 0H 		//160A 	142E
		IORWR 	2DH, 0H 		//160B 	142D
		BTSC 	3H, 2H 			//160C 	2903
		RET 					//160D 	1008
		LDWI 	80H 			//160E 	0080
		XORWR 	2FH, 1H 		//160F 	16AF
		RET 					//1610 	1008
		LDR 	4FH, 0H 			//1611 	184F
		IORWR 	4EH, 0H 		//1612 	144E
		IORWR 	4DH, 0H 		//1613 	144D
		BTSC 	3H, 2H 			//1614 	2903
		LJUMP 	618H 			//1615 	3E18
		LDWI 	80H 			//1616 	0080
		XORWR 	4FH, 1H 		//1617 	16CF
		LDR 	50H, 0H 			//1618 	1850
		STR 	41H 			//1619 	10C1
		LDR 	51H, 0H 			//161A 	1851
		STR 	42H 			//161B 	10C2
		LDR 	52H, 0H 			//161C 	1852
		STR 	43H 			//161D 	10C3
		LDR 	4DH, 0H 			//161E 	184D
		STR 	44H 			//161F 	10C4
		LDR 	4EH, 0H 			//1620 	184E
		STR 	45H 			//1621 	10C5
		LDR 	4FH, 0H 			//1622 	184F
		STR 	46H 			//1623 	10C6
		MOVLP 	19H 			//1624 	0199
		LCALL 	15FH 			//1625 	315F
		LDR 	41H, 0H 			//1626 	1841
		STR 	4DH 			//1627 	10CD
		LDR 	42H, 0H 			//1628 	1842
		STR 	4EH 			//1629 	10CE
		LDR 	43H, 0H 			//162A 	1843
		STR 	4FH 			//162B 	10CF
		RET 					//162C 	1008
		LDR 	37H, 0H 			//162D 	1837
		MOVLB 	1H 			//162E 	1021
		STR 	53H 			//162F 	10D3
		LDWI 	0H 			//1630 	0000
		CLRF 	54H 			//1631 	11D4
		LSLF 	53H, 1H 		//1632 	05D3
		RLR 	54H, 1H 			//1633 	1DD4
		LSLF 	53H, 1H 		//1634 	05D3
		RLR 	54H, 1H 			//1635 	1DD4
		ADDWR 	53H, 0H 		//1636 	1753
		STR 	4H 			//1637 	1084
		LDWI 	A0H 			//1638 	00A0
		ADDWFC 	54H, 0H 		//1639 	0D54
		STR 	5H 			//163A 	1085
		MOVIW 	0H[0] 			//163B 	0F00
		RET 					//163C 	1008
		MOVLB 	0H 			//163D 	1020
		STR 	2DH 			//163E 	10AD
		MOVIW 	1H[0] 			//163F 	0F01
		STR 	2EH 			//1640 	10AE
		MOVIW 	2H[0] 			//1641 	0F02
		STR 	2FH 			//1642 	10AF
		MOVIW 	3H[0] 			//1643 	0F03
		STR 	30H 			//1644 	10B0
		MOVLB 	2H 			//1645 	1022
		LDR 	2BH, 0H 			//1646 	182B
		MOVLB 	0H 			//1647 	1020
		STR 	34H 			//1648 	10B4
		MOVLB 	2H 			//1649 	1022
		LDR 	2AH, 0H 			//164A 	182A
		MOVLB 	0H 			//164B 	1020
		STR 	33H 			//164C 	10B3
		MOVLB 	2H 			//164D 	1022
		LDR 	29H, 0H 			//164E 	1829
		MOVLB 	0H 			//164F 	1020
		STR 	32H 			//1650 	10B2
		MOVLB 	2H 			//1651 	1022
		LDR 	28H, 0H 			//1652 	1828
		MOVLB 	0H 			//1653 	1020
		STR 	31H 			//1654 	10B1
		RET 					//1655 	1008
		LDR 	30H, 0H 			//1656 	1830
		MOVLB 	2H 			//1657 	1022
		STR 	27H 			//1658 	10A7
		MOVLB 	0H 			//1659 	1020
		LDR 	2FH, 0H 			//165A 	182F
		MOVLB 	2H 			//165B 	1022
		STR 	26H 			//165C 	10A6
		MOVLB 	0H 			//165D 	1020
		LDR 	2EH, 0H 			//165E 	182E
		MOVLB 	2H 			//165F 	1022
		STR 	25H 			//1660 	10A5
		MOVLB 	0H 			//1661 	1020
		LDR 	2DH, 0H 			//1662 	182D
		MOVLB 	2H 			//1663 	1022
		STR 	24H 			//1664 	10A4
		LDWI 	AH 			//1665 	000A
		MOVLB 	0H 			//1666 	1020
		STR 	3AH 			//1667 	10BA
		CLRF 	3BH 			//1668 	11BB
		CLRF 	3CH 			//1669 	11BC
		CLRF 	3DH 			//166A 	11BD
		MOVLB 	2H 			//166B 	1022
		LDR 	27H, 0H 			//166C 	1827
		MOVLB 	0H 			//166D 	1020
		STR 	41H 			//166E 	10C1
		MOVLB 	2H 			//166F 	1022
		LDR 	26H, 0H 			//1670 	1826
		MOVLB 	0H 			//1671 	1020
		STR 	40H 			//1672 	10C0
		MOVLB 	2H 			//1673 	1022
		LDR 	25H, 0H 			//1674 	1825
		MOVLB 	0H 			//1675 	1020
		STR 	3FH 			//1676 	10BF
		MOVLB 	2H 			//1677 	1022
		LDR 	24H, 0H 			//1678 	1824
		MOVLB 	0H 			//1679 	1020
		STR 	3EH 			//167A 	10BE
		RET 					//167B 	1008
		LDR 	41H, 0H 			//167C 	1841
		STR 	6H 			//167D 	1086
		LDR 	42H, 0H 			//167E 	1842
		STR 	7H 			//167F 	1087
		LDWI 	30H 			//1680 	0030
		STR 	1H 			//1681 	1081
		INCR 	41H, 1H 		//1682 	1AC1
		BTSC 	3H, 2H 			//1683 	2903
		INCR 	42H, 1H 		//1684 	1AC2
		MOVLB 	2H 			//1685 	1022
		RETW 	FFH 			//1686 	04FF
		MOVLB 	1H 			//1687 	1021
		LDR 	41H, 0H 			//1688 	1841
		STR 	6H 			//1689 	1086
		LDR 	42H, 0H 			//168A 	1842
		STR 	7H 			//168B 	1087
		RET 					//168C 	1008
		LDR 	3DH, 0H 			//168D 	183D
		MOVLB 	2H 			//168E 	1022
		STR 	27H 			//168F 	10A7
		MOVLB 	0H 			//1690 	1020
		LDR 	3CH, 0H 			//1691 	183C
		MOVLB 	2H 			//1692 	1022
		STR 	26H 			//1693 	10A6
		MOVLB 	0H 			//1694 	1020
		LDR 	3BH, 0H 			//1695 	183B
		MOVLB 	2H 			//1696 	1022
		STR 	25H 			//1697 	10A5
		MOVLB 	0H 			//1698 	1020
		LDR 	3AH, 0H 			//1699 	183A
		MOVLB 	2H 			//169A 	1022
		STR 	24H 			//169B 	10A4
		ADDWI 	30H 			//169C 	0E30
		MOVLB 	1H 			//169D 	1021
		STR 	53H 			//169E 	10D3
		LDR 	41H, 0H 			//169F 	1841
		STR 	6H 			//16A0 	1086
		LDR 	42H, 0H 			//16A1 	1842
		STR 	7H 			//16A2 	1087
		LDR 	53H, 0H 			//16A3 	1853
		RET 					//16A4 	1008
		LDR 	24H, 0H 			//16A5 	1824
		MOVLB 	0H 			//16A6 	1020
		STR 	3FH 			//16A7 	10BF
		MOVLB 	2H 			//16A8 	1022
		LDR 	25H, 0H 			//16A9 	1825
		MOVLB 	0H 			//16AA 	1020
		STR 	40H 			//16AB 	10C0
		MOVLB 	2H 			//16AC 	1022
		LDR 	26H, 0H 			//16AD 	1826
		MOVLB 	0H 			//16AE 	1020
		STR 	41H 			//16AF 	10C1
		RET 					//16B0 	1008
		STR 	1H 			//16B1 	1081
		INCR 	41H, 1H 		//16B2 	1AC1
		BTSC 	3H, 2H 			//16B3 	2903
		INCR 	42H, 1H 		//16B4 	1AC2
		LDWI 	FFH 			//16B5 	00FF
		MOVLB 	2H 			//16B6 	1022
		ADDWR 	30H, 1H 		//16B7 	17B0
		RET 					//16B8 	1008
		MOVLB 	1H 			//16B9 	1021
		LDR 	44H, 0H 			//16BA 	1844
		STR 	54H 			//16BB 	10D4
		LDR 	43H, 0H 			//16BC 	1843
		STR 	53H 			//16BD 	10D3
		INCR 	43H, 1H 		//16BE 	1AC3
		BTSC 	3H, 2H 			//16BF 	2903
		INCR 	44H, 1H 		//16C0 	1AC4
		STR 	4H 			//16C1 	1084
		LDR 	54H, 0H 			//16C2 	1854
		STR 	5H 			//16C3 	1085
		LDR 	0H, 0H 			//16C4 	1800
		MOVLB 	2H 			//16C5 	1022
		STR 	37H 			//16C6 	10B7
		RET 					//16C7 	1008
		LDR 	37H, 0H 			//16C8 	1837
		MOVLB 	2H 			//16C9 	1022
		STR 	2BH 			//16CA 	10AB
		MOVLB 	1H 			//16CB 	1021
		LDR 	36H, 0H 			//16CC 	1836
		MOVLB 	2H 			//16CD 	1022
		STR 	2AH 			//16CE 	10AA
		MOVLB 	1H 			//16CF 	1021
		LDR 	35H, 0H 			//16D0 	1835
		MOVLB 	2H 			//16D1 	1022
		STR 	29H 			//16D2 	10A9
		MOVLB 	1H 			//16D3 	1021
		LDR 	34H, 0H 			//16D4 	1834
		RET 					//16D5 	1008
		XORWI 	80H 			//16D6 	0A80
		MOVLB 	1H 			//16D7 	1021
		STR 	53H 			//16D8 	10D3
		LDWI 	80H 			//16D9 	0080
		SUBWR 	53H, 0H 		//16DA 	1253
		RET 					//16DB 	1008
		LDR 	2CH, 0H 			//16DC 	182C
		MOVLB 	2H 			//16DD 	1022
		STR 	24H 			//16DE 	10A4
		MOVLB 	1H 			//16DF 	1021
		LDR 	2DH, 0H 			//16E0 	182D
		MOVLB 	2H 			//16E1 	1022
		STR 	25H 			//16E2 	10A5
		MOVLB 	1H 			//16E3 	1021
		LDR 	2EH, 0H 			//16E4 	182E
		MOVLB 	2H 			//16E5 	1022
		STR 	26H 			//16E6 	10A6
		LDR 	32H, 0H 			//16E7 	1832
		RET 					//16E8 	1008
		LDR 	32H, 0H 			//16E9 	1832
		MOVLB 	1H 			//16EA 	1021
		STR 	34H 			//16EB 	10B4
		MOVLB 	2H 			//16EC 	1022
		LDR 	33H, 0H 			//16ED 	1833
		MOVLB 	1H 			//16EE 	1021
		STR 	35H 			//16EF 	10B5
		MOVLB 	2H 			//16F0 	1022
		LDR 	34H, 0H 			//16F1 	1834
		MOVLB 	1H 			//16F2 	1021
		STR 	36H 			//16F3 	10B6
		RET 					//16F4 	1008
		MOVLB 	1H 			//16F5 	1021
		LDR 	43H, 0H 			//16F6 	1843
		STR 	4H 			//16F7 	1084
		LDR 	44H, 0H 			//16F8 	1844
		STR 	5H 			//16F9 	1085
		LDR 	0H, 0H 			//16FA 	1800
		RET 					//16FB 	1008
		MOVLB 	1H 			//16FC 	1021
		STR 	53H 			//16FD 	10D3
		CLRF 	54H 			//16FE 	11D4
		BTSC 	53H, 7H 		//16FF 	2BD3
		DECR 	54H, 1H 		//1700 	13D4
		MOVLB 	2H 			//1701 	1022
		RET 					//1702 	1008
		LDR 	43H, 0H 			//1703 	1843
		STR 	4H 			//1704 	1084
		LDR 	44H, 0H 			//1705 	1844
		STR 	5H 			//1706 	1085
		LDR 	0H, 0H 			//1707 	1800
		RET 					//1708 	1008
		MOVLB 	1H 			//1709 	1021
		STR 	20H 			//170A 	10A0
		MOVLB 	2H 			//170B 	1022
		LDR 	33H, 0H 			//170C 	1833
		MOVLB 	1H 			//170D 	1021
		STR 	21H 			//170E 	10A1
		MOVLB 	2H 			//170F 	1022
		LDR 	34H, 0H 			//1710 	1834
		MOVLB 	1H 			//1711 	1021
		STR 	22H 			//1712 	10A2
		RET 					//1713 	1008
		LDR 	37H, 0H 			//1714 	1837
		MOVLB 	1H 			//1715 	1021
		STR 	53H 			//1716 	10D3
		CLRF 	54H 			//1717 	11D4
		BTSC 	53H, 7H 		//1718 	2BD3
		DECR 	54H, 1H 		//1719 	13D4
		LDR 	54H, 0H 			//171A 	1854
		XORWI 	80H 			//171B 	0A80
		STR 	55H 			//171C 	10D5
		MOVLB 	2H 			//171D 	1022
		RET 					//171E 	1008
		STR 	55H 			//171F 	10D5
		MOVIW 	1H[0] 			//1720 	0F01
		STR 	56H 			//1721 	10D6
		MOVIW 	2H[0] 			//1722 	0F02
		STR 	57H 			//1723 	10D7
		MOVIW 	3H[0] 			//1724 	0F03
		STR 	58H 			//1725 	10D8
		LDR 	58H, 0H 			//1726 	1858
		MOVLB 	2H 			//1727 	1022
		SUBWR 	2BH, 0H 		//1728 	122B
		RET 					//1729 	1008
		LDR 	34H, 0H 			//172A 	1834
		STR 	38H 			//172B 	10B8
		LDR 	35H, 0H 			//172C 	1835
		STR 	39H 			//172D 	10B9
		LDR 	36H, 0H 			//172E 	1836
		STR 	3AH 			//172F 	10BA
		RET 					//1730 	1008
		LDR 	20H, 0H 			//1731 	1820
		STR 	34H 			//1732 	10B4
		LDR 	21H, 0H 			//1733 	1821
		STR 	35H 			//1734 	10B5
		LDR 	22H, 0H 			//1735 	1822
		STR 	36H 			//1736 	10B6
		RET 					//1737 	1008
		MOVIW 	0H[1] 			//1738 	0F40
		MOVLB 	1H 			//1739 	1021
		STR 	53H 			//173A 	10D3
		MOVIW 	1H[1] 			//173B 	0F41
		STR 	54H 			//173C 	10D4
		RET 					//173D 	1008
		MOVLB 	1H 			//173E 	1021
		LDR 	57H, 0H 			//173F 	1857
		MOVLB 	2H 			//1740 	1022
		SUBWR 	2AH, 0H 		//1741 	122A
		RET 					//1742 	1008
		MOVLB 	1H 			//1743 	1021
		LDR 	55H, 0H 			//1744 	1855
		MOVLB 	2H 			//1745 	1022
		SUBWR 	28H, 0H 		//1746 	1228
		RET 					//1747 	1008
		MOVLB 	1H 			//1748 	1021
		LDR 	56H, 0H 			//1749 	1856
		MOVLB 	2H 			//174A 	1022
		SUBWR 	29H, 0H 		//174B 	1229
		RET 					//174C 	1008
		STR 	41H 			//174D 	10C1
		CLRF 	42H 			//174E 	11C2
		CLRF 	43H 			//174F 	11C3
		CLRF 	44H 			//1750 	11C4
		RET 					//1751 	1008
		CLRF 	35H 			//1752 	11B5
		CLRF 	36H 			//1753 	11B6
		CLRF 	37H 			//1754 	11B7
		CLRF 	38H 			//1755 	11B8
		LDR 	30H, 0H 			//1756 	1830
		IORWR 	2FH, 0H 		//1757 	142F
		IORWR 	2EH, 0H 		//1758 	142E
		IORWR 	2DH, 0H 		//1759 	142D
		BTSC 	3H, 2H 			//175A 	2903
		LJUMP 	788H 			//175B 	3F88
		CLRF 	39H 			//175C 	11B9
		INCR 	39H, 1H 		//175D 	1AB9
		BTSC 	30H, 7H 		//175E 	2BB0
		LJUMP 	765H 			//175F 	3F65
		LSLF 	2DH, 1H 		//1760 	05AD
		RLR 	2EH, 1H 			//1761 	1DAE
		RLR 	2FH, 1H 			//1762 	1DAF
		RLR 	30H, 1H 			//1763 	1DB0
		LJUMP 	75DH 			//1764 	3F5D
		LSLF 	35H, 1H 		//1765 	05B5
		RLR 	36H, 1H 			//1766 	1DB6
		RLR 	37H, 1H 			//1767 	1DB7
		RLR 	38H, 1H 			//1768 	1DB8
		LDR 	30H, 0H 			//1769 	1830
		SUBWR 	34H, 0H 		//176A 	1234
		BTSS 	3H, 2H 			//176B 	2D03
		LJUMP 	777H 			//176C 	3F77
		LDR 	2FH, 0H 			//176D 	182F
		SUBWR 	33H, 0H 		//176E 	1233
		BTSS 	3H, 2H 			//176F 	2D03
		LJUMP 	777H 			//1770 	3F77
		LDR 	2EH, 0H 			//1771 	182E
		SUBWR 	32H, 0H 		//1772 	1232
		BTSS 	3H, 2H 			//1773 	2D03
		LJUMP 	777H 			//1774 	3F77
		LDR 	2DH, 0H 			//1775 	182D
		SUBWR 	31H, 0H 		//1776 	1231
		BTSS 	3H, 0H 			//1777 	2C03
		LJUMP 	782H 			//1778 	3F82
		LDR 	2DH, 0H 			//1779 	182D
		SUBWR 	31H, 1H 		//177A 	12B1
		LDR 	2EH, 0H 			//177B 	182E
		SUBWFB 	32H, 1H 		//177C 	0BB2
		LDR 	2FH, 0H 			//177D 	182F
		SUBWFB 	33H, 1H 		//177E 	0BB3
		LDR 	30H, 0H 			//177F 	1830
		SUBWFB 	34H, 1H 		//1780 	0BB4
		BSR 	35H, 0H 			//1781 	2435
		LSRF 	30H, 1H 		//1782 	06B0
		RRR 	2FH, 1H 			//1783 	1CAF
		RRR 	2EH, 1H 			//1784 	1CAE
		RRR 	2DH, 1H 			//1785 	1CAD
		DECRSZ 	39H, 1H 		//1786 	1BB9
		LJUMP 	765H 			//1787 	3F65
		LDR 	38H, 0H 			//1788 	1838
		STR 	30H 			//1789 	10B0
		LDR 	37H, 0H 			//178A 	1837
		STR 	2FH 			//178B 	10AF
		LDR 	36H, 0H 			//178C 	1836
		STR 	2EH 			//178D 	10AE
		LDR 	35H, 0H 			//178E 	1835
		STR 	2DH 			//178F 	10AD
		RET 					//1790 	1008
		LDR 	2DH, 0H 			//1791 	182D
		STR 	33H 			//1792 	10B3
		LDR 	2EH, 0H 			//1793 	182E
		STR 	34H 			//1794 	10B4
		LDR 	2FH, 0H 			//1795 	182F
		STR 	35H 			//1796 	10B5
		BCR 	3H, 0H 			//1797 	2003
		RLR 	34H, 0H 			//1798 	1D34
		RLR 	35H, 0H 			//1799 	1D35
		STR 	3BH 			//179A 	10BB
		LDR 	3BH, 0H 			//179B 	183B
		BTSS 	3H, 2H 			//179C 	2D03
		LJUMP 	7A3H 			//179D 	3FA3
		CLRF 	2DH 			//179E 	11AD
		CLRF 	2EH 			//179F 	11AE
		CLRF 	2FH 			//17A0 	11AF
		CLRF 	30H 			//17A1 	11B0
		RET 					//17A2 	1008
		LDR 	30H, 0H 			//17A3 	1830
		STR 	33H 			//17A4 	10B3
		LDR 	31H, 0H 			//17A5 	1831
		STR 	34H 			//17A6 	10B4
		LDR 	32H, 0H 			//17A7 	1832
		STR 	35H 			//17A8 	10B5
		BCR 	3H, 0H 			//17A9 	2003
		RLR 	34H, 0H 			//17AA 	1D34
		RLR 	35H, 0H 			//17AB 	1D35
		STR 	3AH 			//17AC 	10BA
		LDR 	3AH, 0H 			//17AD 	183A
		BTSC 	3H, 2H 			//17AE 	2903
		LJUMP 	79EH 			//17AF 	3F9E
		LDWI 	7FH 			//17B0 	007F
		BSR 	2EH, 7H 			//17B1 	27AE
		CLRF 	2FH 			//17B2 	11AF
		BSR 	31H, 7H 			//17B3 	27B1
		CLRF 	32H 			//17B4 	11B2
		CLRF 	36H 			//17B5 	11B6
		CLRF 	37H 			//17B6 	11B7
		CLRF 	38H 			//17B7 	11B8
		CLRF 	39H 			//17B8 	11B9
		SUBWR 	3BH, 1H 		//17B9 	12BB
		LDWI 	98H 			//17BA 	0098
		ADDWR 	3AH, 0H 		//17BB 	173A
		STR 	33H 			//17BC 	10B3
		SUBWR 	3BH, 1H 		//17BD 	12BB
		LDWI 	18H 			//17BE 	0018
		STR 	3AH 			//17BF 	10BA
		LSLF 	36H, 1H 		//17C0 	05B6
		RLR 	37H, 1H 			//17C1 	1DB7
		RLR 	38H, 1H 			//17C2 	1DB8
		RLR 	39H, 1H 			//17C3 	1DB9
		LDR 	32H, 0H 			//17C4 	1832
		SUBWR 	2FH, 0H 		//17C5 	122F
		BTSS 	3H, 2H 			//17C6 	2D03
		LJUMP 	7CEH 			//17C7 	3FCE
		LDR 	31H, 0H 			//17C8 	1831
		SUBWR 	2EH, 0H 		//17C9 	122E
		BTSS 	3H, 2H 			//17CA 	2D03
		LJUMP 	7CEH 			//17CB 	3FCE
		LDR 	30H, 0H 			//17CC 	1830
		SUBWR 	2DH, 0H 		//17CD 	122D
		BTSS 	3H, 0H 			//17CE 	2C03
		LJUMP 	7D7H 			//17CF 	3FD7
		LDR 	30H, 0H 			//17D0 	1830
		SUBWR 	2DH, 1H 		//17D1 	12AD
		LDR 	31H, 0H 			//17D2 	1831
		SUBWFB 	2EH, 1H 		//17D3 	0BAE
		LDR 	32H, 0H 			//17D4 	1832
		SUBWFB 	2FH, 1H 		//17D5 	0BAF
		BSR 	36H, 0H 			//17D6 	2436
		LSLF 	2DH, 1H 		//17D7 	05AD
		RLR 	2EH, 1H 			//17D8 	1DAE
		RLR 	2FH, 1H 			//17D9 	1DAF
		DECRSZ 	3AH, 1H 		//17DA 	1BBA
		LJUMP 	7C0H 			//17DB 	3FC0
		BTSS 	3BH, 7H 		//17DC 	2FBB
		LJUMP 	7EAH 			//17DD 	3FEA
		LDR 	3BH, 0H 			//17DE 	183B
		XORWI 	80H 			//17DF 	0A80
		ADDWI 	97H 			//17E0 	0E97
		BTSS 	3H, 0H 			//17E1 	2C03
		LJUMP 	79EH 			//17E2 	3F9E
		LSRF 	39H, 1H 		//17E3 	06B9
		RRR 	38H, 1H 			//17E4 	1CB8
		RRR 	37H, 1H 			//17E5 	1CB7
		RRR 	36H, 1H 			//17E6 	1CB6
		INCRSZ 	3BH, 1H 		//17E7 	1FBB
		LJUMP 	7E3H 			//17E8 	3FE3
		LJUMP 	7F7H 			//17E9 	3FF7
		LDWI 	18H 			//17EA 	0018
		SUBWR 	3BH, 0H 		//17EB 	123B
		BTSC 	3H, 0H 			//17EC 	2803
		LJUMP 	79EH 			//17ED 	3F9E
		LDR 	3BH, 0H 			//17EE 	183B
		BTSC 	3H, 2H 			//17EF 	2903
		LJUMP 	7F7H 			//17F0 	3FF7
		LSLF 	36H, 1H 		//17F1 	05B6
		RLR 	37H, 1H 			//17F2 	1DB7
		RLR 	38H, 1H 			//17F3 	1DB8
		RLR 	39H, 1H 			//17F4 	1DB9
		DECR 	3BH, 1H 		//17F5 	13BB
		LJUMP 	7EEH 			//17F6 	3FEE
		LDR 	39H, 0H 			//17F7 	1839
		STR 	30H 			//17F8 	10B0
		LDR 	38H, 0H 			//17F9 	1838
		STR 	2FH 			//17FA 	10AF
		LDR 	37H, 0H 			//17FB 	1837
		ORG		17FCH
		STR 	2EH 			//17FC 	10AE
		LDR 	36H, 0H 			//17FD 	1836
		STR 	2DH 			//17FE 	10AD
		RET 					//17FF 	1008
		ORG		1932H
		LDR 	35H, 0H 			//1932 	1835
		STR 	2DH 			//1933 	10AD
		LDR 	36H, 0H 			//1934 	1836
		STR 	2EH 			//1935 	10AE
		LDWI 	8EH 			//1936 	008E
		CLRF 	2FH 			//1937 	11AF
		STR 	30H 			//1938 	10B0
		CLRF 	31H 			//1939 	11B1
		LCALL 	60AH 			//193A 	360A
		LDR 	2DH, 0H 			//193B 	182D
		STR 	35H 			//193C 	10B5
		LDR 	2EH, 0H 			//193D 	182E
		STR 	36H 			//193E 	10B6
		LDR 	2FH, 0H 			//193F 	182F
		STR 	37H 			//1940 	10B7
		RET 					//1941 	1008
		LDWI 	8EH 			//1942 	008E
		STR 	39H 			//1943 	10B9
		LDWI 	FFH 			//1944 	00FF
		ANDWR 	38H, 0H 		//1945 	1538
		BTSC 	3H, 2H 			//1946 	2903
		LJUMP 	14EH 			//1947 	394E
		LSRF 	38H, 1H 		//1948 	06B8
		RRR 	37H, 1H 			//1949 	1CB7
		RRR 	36H, 1H 			//194A 	1CB6
		RRR 	35H, 1H 			//194B 	1CB5
		INCR 	39H, 1H 		//194C 	1AB9
		LJUMP 	144H 			//194D 	3944
		LDR 	35H, 0H 			//194E 	1835
		STR 	2DH 			//194F 	10AD
		LDR 	36H, 0H 			//1950 	1836
		STR 	2EH 			//1951 	10AE
		LDR 	37H, 0H 			//1952 	1837
		STR 	2FH 			//1953 	10AF
		LDR 	39H, 0H 			//1954 	1839
		STR 	30H 			//1955 	10B0
		CLRF 	31H 			//1956 	11B1
		LCALL 	60AH 			//1957 	360A
		LDR 	2DH, 0H 			//1958 	182D
		STR 	35H 			//1959 	10B5
		LDR 	2EH, 0H 			//195A 	182E
		STR 	36H 			//195B 	10B6
		LDR 	2FH, 0H 			//195C 	182F
		STR 	37H 			//195D 	10B7
		RET 					//195E 	1008
		LDR 	41H, 0H 			//195F 	1841
		STR 	47H 			//1960 	10C7
		LDR 	42H, 0H 			//1961 	1842
		STR 	48H 			//1962 	10C8
		LDR 	43H, 0H 			//1963 	1843
		STR 	49H 			//1964 	10C9
		BCR 	3H, 0H 			//1965 	2003
		RLR 	48H, 0H 			//1966 	1D48
		RLR 	49H, 0H 			//1967 	1D49
		STR 	4CH 			//1968 	10CC
		LDR 	44H, 0H 			//1969 	1844
		STR 	47H 			//196A 	10C7
		LDR 	45H, 0H 			//196B 	1845
		STR 	48H 			//196C 	10C8
		LDR 	46H, 0H 			//196D 	1846
		STR 	49H 			//196E 	10C9
		BCR 	3H, 0H 			//196F 	2003
		RLR 	48H, 0H 			//1970 	1D48
		RLR 	49H, 0H 			//1971 	1D49
		STR 	4BH 			//1972 	10CB
		LDR 	4CH, 0H 			//1973 	184C
		BTSC 	3H, 2H 			//1974 	2903
		LJUMP 	182H 			//1975 	3982
		LDR 	4BH, 0H 			//1976 	184B
		SUBWR 	4CH, 0H 		//1977 	124C
		LDR 	4BH, 0H 			//1978 	184B
		BTSC 	3H, 0H 			//1979 	2803
		LJUMP 	18AH 			//197A 	398A
		STR 	47H 			//197B 	10C7
		LDR 	4CH, 0H 			//197C 	184C
		SUBWR 	47H, 1H 		//197D 	12C7
		LDWI 	19H 			//197E 	0019
		SUBWR 	47H, 0H 		//197F 	1247
		BTSS 	3H, 0H 			//1980 	2C03
		LJUMP 	189H 			//1981 	3989
		LDR 	44H, 0H 			//1982 	1844
		STR 	41H 			//1983 	10C1
		LDR 	45H, 0H 			//1984 	1845
		STR 	42H 			//1985 	10C2
		LDR 	46H, 0H 			//1986 	1846
		STR 	43H 			//1987 	10C3
		RET 					//1988 	1008
		LDR 	4BH, 0H 			//1989 	184B
		BTSC 	3H, 2H 			//198A 	2903
		RET 					//198B 	1008
		LDR 	4CH, 0H 			//198C 	184C
		SUBWR 	4BH, 0H 		//198D 	124B
		BTSC 	3H, 0H 			//198E 	2803
		LJUMP 	198H 			//198F 	3998
		LDR 	4CH, 0H 			//1990 	184C
		STR 	47H 			//1991 	10C7
		LDR 	4BH, 0H 			//1992 	184B
		SUBWR 	47H, 1H 		//1993 	12C7
		LDWI 	19H 			//1994 	0019
		SUBWR 	47H, 0H 		//1995 	1247
		BTSC 	3H, 0H 			//1996 	2803
		RET 					//1997 	1008
		LDWI 	6H 			//1998 	0006
		STR 	4AH 			//1999 	10CA
		BTSC 	43H, 7H 		//199A 	2BC3
		BSR 	4AH, 7H 			//199B 	27CA
		BTSC 	46H, 7H 		//199C 	2BC6
		BSR 	4AH, 6H 			//199D 	274A
		BSR 	42H, 7H 			//199E 	27C2
		CLRF 	43H 			//199F 	11C3
		BSR 	45H, 7H 			//19A0 	27C5
		CLRF 	46H 			//19A1 	11C6
		LDR 	4BH, 0H 			//19A2 	184B
		SUBWR 	4CH, 0H 		//19A3 	124C
		BTSC 	3H, 0H 			//19A4 	2803
		LJUMP 	1BDH 			//19A5 	39BD
		LSLF 	44H, 1H 		//19A6 	05C4
		RLR 	45H, 1H 			//19A7 	1DC5
		RLR 	46H, 1H 			//19A8 	1DC6
		DECR 	4BH, 1H 		//19A9 	13CB
		LDR 	4BH, 0H 			//19AA 	184B
		XORWR 	4CH, 0H 		//19AB 	164C
		BTSC 	3H, 2H 			//19AC 	2903
		LJUMP 	1B8H 			//19AD 	39B8
		DECR 	4AH, 1H 		//19AE 	13CA
		LDR 	4AH, 0H 			//19AF 	184A
		ANDWI 	7H 			//19B0 	0907
		BTSC 	3H, 2H 			//19B1 	2903
		LJUMP 	1B8H 			//19B2 	39B8
		LJUMP 	1A6H 			//19B3 	39A6
		LSRF 	43H, 1H 		//19B4 	06C3
		RRR 	42H, 1H 			//19B5 	1CC2
		RRR 	41H, 1H 			//19B6 	1CC1
		INCR 	4CH, 1H 		//19B7 	1ACC
		LDR 	4CH, 0H 			//19B8 	184C
		XORWR 	4BH, 0H 		//19B9 	164B
		BTSC 	3H, 2H 			//19BA 	2903
		LJUMP 	1D7H 			//19BB 	39D7
		LJUMP 	1B4H 			//19BC 	39B4
		LDR 	4CH, 0H 			//19BD 	184C
		SUBWR 	4BH, 0H 		//19BE 	124B
		BTSC 	3H, 0H 			//19BF 	2803
		LJUMP 	1D7H 			//19C0 	39D7
		LSLF 	41H, 1H 		//19C1 	05C1
		RLR 	42H, 1H 			//19C2 	1DC2
		RLR 	43H, 1H 			//19C3 	1DC3
		DECR 	4CH, 1H 		//19C4 	13CC
		LDR 	4BH, 0H 			//19C5 	184B
		XORWR 	4CH, 0H 		//19C6 	164C
		BTSC 	3H, 2H 			//19C7 	2903
		LJUMP 	1D3H 			//19C8 	39D3
		DECR 	4AH, 1H 		//19C9 	13CA
		LDR 	4AH, 0H 			//19CA 	184A
		ANDWI 	7H 			//19CB 	0907
		BTSC 	3H, 2H 			//19CC 	2903
		LJUMP 	1D3H 			//19CD 	39D3
		LJUMP 	1C1H 			//19CE 	39C1
		LSRF 	46H, 1H 		//19CF 	06C6
		RRR 	45H, 1H 			//19D0 	1CC5
		RRR 	44H, 1H 			//19D1 	1CC4
		INCR 	4BH, 1H 		//19D2 	1ACB
		LDR 	4CH, 0H 			//19D3 	184C
		XORWR 	4BH, 0H 		//19D4 	164B
		BTSS 	3H, 2H 			//19D5 	2D03
		LJUMP 	1CFH 			//19D6 	39CF
		BTSS 	4AH, 7H 		//19D7 	2FCA
		LJUMP 	1E2H 			//19D8 	39E2
		LDWI 	FFH 			//19D9 	00FF
		XORWR 	41H, 1H 		//19DA 	16C1
		XORWR 	42H, 1H 		//19DB 	16C2
		XORWR 	43H, 1H 		//19DC 	16C3
		INCR 	41H, 1H 		//19DD 	1AC1
		BTSC 	3H, 2H 			//19DE 	2903
		INCR 	42H, 1H 		//19DF 	1AC2
		BTSC 	3H, 2H 			//19E0 	2903
		INCR 	43H, 1H 		//19E1 	1AC3
		BTSS 	4AH, 6H 		//19E2 	2F4A
		LJUMP 	1EAH 			//19E3 	39EA
		LCALL 	7E3H 			//19E4 	37E3
		MOVLP 	19H 			//19E5 	0199
		BTSC 	3H, 2H 			//19E6 	2903
		INCR 	45H, 1H 		//19E7 	1AC5
		BTSC 	3H, 2H 			//19E8 	2903
		INCR 	46H, 1H 		//19E9 	1AC6
		CLRF 	4AH 			//19EA 	11CA
		LDR 	41H, 0H 			//19EB 	1841
		ADDWR 	44H, 1H 		//19EC 	17C4
		LDR 	42H, 0H 			//19ED 	1842
		ADDWFC 	45H, 1H 		//19EE 	0DC5
		LDR 	43H, 0H 			//19EF 	1843
		ADDWFC 	46H, 1H 		//19F0 	0DC6
		BTSS 	46H, 7H 		//19F1 	2FC6
		LJUMP 	1FBH 			//19F2 	39FB
		LCALL 	7E3H 			//19F3 	37E3
		MOVLP 	19H 			//19F4 	0199
		BTSC 	3H, 2H 			//19F5 	2903
		INCR 	45H, 1H 		//19F6 	1AC5
		BTSC 	3H, 2H 			//19F7 	2903
		INCR 	46H, 1H 		//19F8 	1AC6
		CLRF 	4AH 			//19F9 	11CA
		INCR 	4AH, 1H 		//19FA 	1ACA
		LDR 	44H, 0H 			//19FB 	1844
		STR 	2DH 			//19FC 	10AD
		LDR 	45H, 0H 			//19FD 	1845
		STR 	2EH 			//19FE 	10AE
		LDR 	46H, 0H 			//19FF 	1846
		STR 	2FH 			//1A00 	10AF
		LDR 	4CH, 0H 			//1A01 	184C
		STR 	30H 			//1A02 	10B0
		LDR 	4AH, 0H 			//1A03 	184A
		STR 	31H 			//1A04 	10B1
		LCALL 	60AH 			//1A05 	360A
		LDR 	2DH, 0H 			//1A06 	182D
		STR 	41H 			//1A07 	10C1
		LDR 	2EH, 0H 			//1A08 	182E
		STR 	42H 			//1A09 	10C2
		LDR 	2FH, 0H 			//1A0A 	182F
		STR 	43H 			//1A0B 	10C3
		RET 					//1A0C 	1008

		//;NFB.C: 477: for(int i=0;i<len;i++)
		CLRF 	4FH 			//1A0D 	11CF
		CLRF 	50H 			//1A0E 	11D0
		LDR 	50H, 0H 			//1A0F 	1850
		XORWI 	80H 			//1A10 	0A80
		STR 	4EH 			//1A11 	10CE
		LDR 	4DH, 0H 			//1A12 	184D
		XORWI 	80H 			//1A13 	0A80
		SUBWR 	4EH, 0H 		//1A14 	124E
		BTSS 	3H, 2H 			//1A15 	2D03
		LJUMP 	219H 			//1A16 	3A19
		LDR 	4CH, 0H 			//1A17 	184C
		SUBWR 	4FH, 0H 		//1A18 	124F
		BTSC 	3H, 0H 			//1A19 	2803
		RET 					//1A1A 	1008

		//;NFB.C: 478: {
		//;NFB.C: 479: UR1DATAL=tbuf[i];
		MOVLB 	1H 			//1A1B 	1021
		LDR 	4AH, 0H 			//1A1C 	184A
		ADDWR 	4FH, 0H 		//1A1D 	174F
		STR 	4H 			//1A1E 	1084
		LDR 	4BH, 0H 			//1A1F 	184B
		ADDWFC 	50H, 0H 		//1A20 	0D50
		STR 	5H 			//1A21 	1085
		LDR 	0H, 0H 			//1A22 	1800
		MOVLB 	9H 			//1A23 	1029
		STR 	CH 			//1A24 	108C

		//;NFB.C: 480: DelayMs(1);
		MOVLB 	1H 			//1A25 	1021
		CLRF 	45H 			//1A26 	11C5
		INCR 	45H, 1H 		//1A27 	1AC5
		CLRF 	46H 			//1A28 	11C6
		LCALL 	230H 			//1A29 	3230
		MOVLP 	19H 			//1A2A 	0199
		MOVLB 	1H 			//1A2B 	1021
		INCR 	4FH, 1H 		//1A2C 	1ACF
		BTSC 	3H, 2H 			//1A2D 	2903
		INCR 	50H, 1H 		//1A2E 	1AD0
		LJUMP 	20FH 			//1A2F 	3A0F

		//;NFB.C: 209: for(int a=0;a<Time;a++)
		CLRF 	48H 			//1A30 	11C8
		CLRF 	49H 			//1A31 	11C9
		LDR 	49H, 0H 			//1A32 	1849
		XORWI 	80H 			//1A33 	0A80
		STR 	47H 			//1A34 	10C7
		LDR 	46H, 0H 			//1A35 	1846
		XORWI 	80H 			//1A36 	0A80
		SUBWR 	47H, 0H 		//1A37 	1247
		BTSS 	3H, 2H 			//1A38 	2D03
		LJUMP 	23CH 			//1A39 	3A3C
		LDR 	45H, 0H 			//1A3A 	1845
		SUBWR 	48H, 0H 		//1A3B 	1248
		BTSC 	3H, 0H 			//1A3C 	2803
		RET 					//1A3D 	1008

		//;NFB.C: 210: {
		//;NFB.C: 211: DelayUs(1000);
		LDWI 	E8H 			//1A3E 	00E8
		MOVLB 	1H 			//1A3F 	1021
		STR 	41H 			//1A40 	10C1
		LDWI 	3H 			//1A41 	0003
		STR 	42H 			//1A42 	10C2
		LCALL 	661H 			//1A43 	3661
		MOVLP 	19H 			//1A44 	0199
		MOVLB 	1H 			//1A45 	1021
		INCR 	48H, 1H 		//1A46 	1AC8
		BTSC 	3H, 2H 			//1A47 	2903
		INCR 	49H, 1H 		//1A48 	1AC9
		LJUMP 	232H 			//1A49 	3A32
		MOVLB 	1H 			//1A4A 	1021
		STR 	36H 			//1A4B 	10B6
		LDWI 	6EH 			//1A4C 	006E
		SUBWR 	36H, 0H 		//1A4D 	1236
		BTSS 	3H, 0H 			//1A4E 	2C03
		LJUMP 	297H 			//1A4F 	3A97
		LDWI 	AH 			//1A50 	000A
		MOVLB 	0H 			//1A51 	1020
		STR 	32H 			//1A52 	10B2
		LDWI 	64H 			//1A53 	0064
		STR 	2DH 			//1A54 	10AD
		MOVLB 	1H 			//1A55 	1021
		LDR 	36H, 0H 			//1A56 	1836
		LCALL 	454H 			//1A57 	3454
		MOVLP 	19H 			//1A58 	0199
		LCALL 	43BH 			//1A59 	343B
		MOVLP 	19H 			//1A5A 	0199
		LCALL 	774H 			//1A5B 	3774
		MOVLP 	19H 			//1A5C 	0199
		LCALL 	3ADH 			//1A5D 	33AD
		MOVLP 	19H 			//1A5E 	0199
		LCALL 	72BH 			//1A5F 	372B
		MOVLP 	19H 			//1A60 	0199
		LCALL 	712H 			//1A61 	3712
		MOVLP 	19H 			//1A62 	0199
		LDWI 	64H 			//1A63 	0064
		LCALL 	7F2H 			//1A64 	37F2
		MOVLP 	19H 			//1A65 	0199
		LCALL 	43BH 			//1A66 	343B
		MOVLP 	19H 			//1A67 	0199
		LCALL 	774H 			//1A68 	3774
		MOVLP 	19H 			//1A69 	0199
		LCALL 	3ADH 			//1A6A 	33AD
		MOVLP 	19H 			//1A6B 	0199
		LCALL 	75EH 			//1A6C 	375E
		MOVLP 	19H 			//1A6D 	0199
		LCALL 	722H 			//1A6E 	3722
		MOVLP 	19H 			//1A6F 	0199
		LCALL 	59CH 			//1A70 	359C
		MOVLP 	19H 			//1A71 	0199
		LCALL 	7C9H 			//1A72 	37C9
		MOVLP 	19H 			//1A73 	0199
		LCALL 	7D7H 			//1A74 	37D7
		MOVLP 	19H 			//1A75 	0199
		LCALL 	454H 			//1A76 	3454
		MOVLP 	19H 			//1A77 	0199
		LCALL 	774H 			//1A78 	3774
		MOVLP 	19H 			//1A79 	0199
		LCALL 	3ADH 			//1A7A 	33AD
		MOVLP 	19H 			//1A7B 	0199
		LCALL 	71BH 			//1A7C 	371B
		MOVLP 	19H 			//1A7D 	0199
		LCALL 	712H 			//1A7E 	3712
		MOVLP 	19H 			//1A7F 	0199
		LCALL 	7BBH 			//1A80 	37BB
		MOVLP 	19H 			//1A81 	0199
		LCALL 	59CH 			//1A82 	359C
		MOVLP 	19H 			//1A83 	0199
		LDR 	20H, 0H 			//1A84 	1820
		STR 	30H 			//1A85 	10B0
		LDR 	21H, 0H 			//1A86 	1821
		STR 	31H 			//1A87 	10B1
		LDR 	22H, 0H 			//1A88 	1822
		STR 	32H 			//1A89 	10B2
		LDWI 	3FH 			//1A8A 	003F
		CLRF 	20H 			//1A8B 	11A0
		CLRF 	21H 			//1A8C 	11A1
		STR 	22H 			//1A8D 	10A2
		LDR 	30H, 0H 			//1A8E 	1830
		STR 	23H 			//1A8F 	10A3
		LDR 	31H, 0H 			//1A90 	1831
		STR 	24H 			//1A91 	10A4
		LDR 	32H, 0H 			//1A92 	1832
		STR 	25H 			//1A93 	10A5
		LCALL 	59CH 			//1A94 	359C
		MOVLP 	19H 			//1A95 	0199
		LJUMP 	795H 			//1A96 	3F95
		LDWI 	BH 			//1A97 	000B
		SUBWR 	36H, 0H 		//1A98 	1236
		BTSS 	3H, 0H 			//1A99 	2C03
		LJUMP 	2C1H 			//1A9A 	3AC1
		LCALL 	7D7H 			//1A9B 	37D7
		MOVLP 	19H 			//1A9C 	0199
		LCALL 	454H 			//1A9D 	3454
		MOVLP 	19H 			//1A9E 	0199
		LCALL 	774H 			//1A9F 	3774
		MOVLP 	19H 			//1AA0 	0199
		LCALL 	3ADH 			//1AA1 	33AD
		MOVLP 	19H 			//1AA2 	0199
		LCALL 	71BH 			//1AA3 	371B
		MOVLP 	19H 			//1AA4 	0199
		LCALL 	712H 			//1AA5 	3712
		MOVLP 	19H 			//1AA6 	0199
		LDWI 	AH 			//1AA7 	000A
		LCALL 	7F2H 			//1AA8 	37F2
		MOVLP 	19H 			//1AA9 	0199
		LCALL 	43BH 			//1AAA 	343B
		MOVLP 	19H 			//1AAB 	0199
		LCALL 	774H 			//1AAC 	3774
		MOVLP 	19H 			//1AAD 	0199
		LCALL 	3ADH 			//1AAE 	33AD
		MOVLP 	19H 			//1AAF 	0199
		LCALL 	72BH 			//1AB0 	372B
		MOVLP 	19H 			//1AB1 	0199
		LCALL 	722H 			//1AB2 	3722
		MOVLP 	19H 			//1AB3 	0199
		LCALL 	59CH 			//1AB4 	359C
		MOVLP 	19H 			//1AB5 	0199
		LCALL 	7C9H 			//1AB6 	37C9
		MOVLP 	19H 			//1AB7 	0199
		LDWI 	3FH 			//1AB8 	003F
		CLRF 	20H 			//1AB9 	11A0
		CLRF 	21H 			//1ABA 	11A1
		STR 	22H 			//1ABB 	10A2
		LCALL 	7BBH 			//1ABC 	37BB
		MOVLP 	19H 			//1ABD 	0199
		LCALL 	59CH 			//1ABE 	359C
		MOVLP 	19H 			//1ABF 	0199
		LJUMP 	795H 			//1AC0 	3F95
		LDWI 	3FH 			//1AC1 	003F
		CLRF 	20H 			//1AC2 	11A0
		CLRF 	21H 			//1AC3 	11A1
		STR 	22H 			//1AC4 	10A2
		LDR 	36H, 0H 			//1AC5 	1836
		MOVLB 	0H 			//1AC6 	1020
		LCALL 	774H 			//1AC7 	3774
		MOVLP 	19H 			//1AC8 	0199
		LCALL 	3ADH 			//1AC9 	33AD
		MOVLP 	19H 			//1ACA 	0199
		LCALL 	71BH 			//1ACB 	371B
		MOVLP 	19H 			//1ACC 	0199
		LCALL 	722H 			//1ACD 	3722
		MOVLP 	19H 			//1ACE 	0199
		LCALL 	59CH 			//1ACF 	359C
		MOVLP 	19H 			//1AD0 	0199
		LJUMP 	795H 			//1AD1 	3F95
		MOVLB 	1H 			//1AD2 	1021
		STR 	33H 			//1AD3 	10B3
		BTSS 	33H, 7H 		//1AD4 	2FB3
		LJUMP 	340H 			//1AD5 	3B40
		COMR 	33H, 1H 		//1AD6 	19B3
		INCR 	33H, 1H 		//1AD7 	1AB3
		LDR 	33H, 0H 			//1AD8 	1833
		XORWI 	80H 			//1AD9 	0A80
		ADDWI 	12H 			//1ADA 	0E12
		BTSS 	3H, 0H 			//1ADB 	2C03
		LJUMP 	315H 			//1ADC 	3B15
		LCALL 	77AH 			//1ADD 	377A
		MOVLP 	19H 			//1ADE 	0199
		LCALL 	7ACH 			//1ADF 	37AC
		MOVLP 	19H 			//1AE0 	0199
		LCALL 	402H 			//1AE1 	3402
		MOVLP 	19H 			//1AE2 	0199
		LCALL 	7EDH 			//1AE3 	37ED
		MOVLP 	19H 			//1AE4 	0199
		LCALL 	3C2H 			//1AE5 	33C2
		MOVLP 	19H 			//1AE6 	0199
		LCALL 	732H 			//1AE7 	3732
		MOVLP 	19H 			//1AE8 	0199
		LCALL 	3ADH 			//1AE9 	33AD
		MOVLP 	19H 			//1AEA 	0199
		LCALL 	72BH 			//1AEB 	372B
		MOVLP 	19H 			//1AEC 	0199
		LCALL 	712H 			//1AED 	3712
		MOVLP 	19H 			//1AEE 	0199
		LDWI 	64H 			//1AEF 	0064
		MOVLB 	0H 			//1AF0 	1020
		STR 	33H 			//1AF1 	10B3
		LCALL 	782H 			//1AF2 	3782
		MOVLP 	19H 			//1AF3 	0199
		BTSC 	35H, 7H 		//1AF4 	2BB5
		DECR 	36H, 1H 		//1AF5 	13B6
		LCALL 	3C2H 			//1AF6 	33C2
		MOVLP 	19H 			//1AF7 	0199
		LCALL 	732H 			//1AF8 	3732
		MOVLP 	19H 			//1AF9 	0199
		LCALL 	3ADH 			//1AFA 	33AD
		MOVLP 	19H 			//1AFB 	0199
		LCALL 	75EH 			//1AFC 	375E
		MOVLP 	19H 			//1AFD 	0199
		LCALL 	722H 			//1AFE 	3722
		MOVLP 	19H 			//1AFF 	0199
		LCALL 	59CH 			//1B00 	359C
		MOVLP 	19H 			//1B01 	0199
		LCALL 	756H 			//1B02 	3756
		MOVLP 	19H 			//1B03 	0199
		LCALL 	746H 			//1B04 	3746
		MOVLP 	19H 			//1B05 	0199
		LCALL 	402H 			//1B06 	3402
		MOVLP 	19H 			//1B07 	0199
		LCALL 	76CH 			//1B08 	376C
		MOVLP 	19H 			//1B09 	0199
		LCALL 	3ADH 			//1B0A 	33AD
		MOVLP 	19H 			//1B0B 	0199
		LCALL 	71BH 			//1B0C 	371B
		MOVLP 	19H 			//1B0D 	0199
		LCALL 	712H 			//1B0E 	3712
		MOVLP 	19H 			//1B0F 	0199
		LCALL 	7B4H 			//1B10 	37B4
		MOVLP 	19H 			//1B11 	0199
		LCALL 	59CH 			//1B12 	359C
		MOVLP 	19H 			//1B13 	0199
		LJUMP 	765H 			//1B14 	3F65
		LCALL 	7FBH 			//1B15 	37FB
		MOVLP 	19H 			//1B16 	0199
		BTSS 	3H, 0H 			//1B17 	2C03
		LJUMP 	338H 			//1B18 	3B38
		LCALL 	746H 			//1B19 	3746
		MOVLP 	19H 			//1B1A 	0199
		LCALL 	402H 			//1B1B 	3402
		MOVLP 	19H 			//1B1C 	0199
		LCALL 	76CH 			//1B1D 	376C
		MOVLP 	19H 			//1B1E 	0199
		LCALL 	3ADH 			//1B1F 	33AD
		MOVLP 	19H 			//1B20 	0199
		LCALL 	71BH 			//1B21 	371B
		MOVLP 	19H 			//1B22 	0199
		LCALL 	712H 			//1B23 	3712
		MOVLP 	19H 			//1B24 	0199
		LCALL 	77AH 			//1B25 	377A
		MOVLP 	19H 			//1B26 	0199
		STR 	35H 			//1B27 	10B5
		CLRF 	36H 			//1B28 	11B6
		BTSC 	35H, 7H 		//1B29 	2BB5
		DECR 	36H, 1H 		//1B2A 	13B6
		LCALL 	3C2H 			//1B2B 	33C2
		MOVLP 	19H 			//1B2C 	0199
		LCALL 	732H 			//1B2D 	3732
		MOVLP 	19H 			//1B2E 	0199
		LCALL 	3ADH 			//1B2F 	33AD
		MOVLP 	19H 			//1B30 	0199
		LCALL 	72BH 			//1B31 	372B
		MOVLP 	19H 			//1B32 	0199
		LCALL 	722H 			//1B33 	3722
		MOVLP 	19H 			//1B34 	0199
		LCALL 	59CH 			//1B35 	359C
		MOVLP 	19H 			//1B36 	0199
		LJUMP 	765H 			//1B37 	3F65
		MOVLB 	0H 			//1B38 	1020
		LCALL 	774H 			//1B39 	3774
		MOVLP 	19H 			//1B3A 	0199
		LCALL 	3ADH 			//1B3B 	33AD
		MOVLP 	19H 			//1B3C 	0199
		LCALL 	71BH 			//1B3D 	371B
		MOVLP 	19H 			//1B3E 	0199
		LJUMP 	7A3H 			//1B3F 	3FA3
		LDR 	33H, 0H 			//1B40 	1833
		XORWI 	80H 			//1B41 	0A80
		ADDWI 	12H 			//1B42 	0E12
		BTSS 	3H, 0H 			//1B43 	2C03
		LJUMP 	382H 			//1B44 	3B82
		LCALL 	77AH 			//1B45 	377A
		MOVLP 	19H 			//1B46 	0199
		LCALL 	7ACH 			//1B47 	37AC
		MOVLP 	19H 			//1B48 	0199
		LCALL 	402H 			//1B49 	3402
		MOVLP 	19H 			//1B4A 	0199
		LCALL 	7EDH 			//1B4B 	37ED
		MOVLP 	19H 			//1B4C 	0199
		LCALL 	3C2H 			//1B4D 	33C2
		MOVLP 	19H 			//1B4E 	0199
		LCALL 	732H 			//1B4F 	3732
		MOVLP 	19H 			//1B50 	0199
		LCALL 	3ADH 			//1B51 	33AD
		MOVLP 	19H 			//1B52 	0199
		LCALL 	79CH 			//1B53 	379C
		MOVLP 	19H 			//1B54 	0199
		LCALL 	712H 			//1B55 	3712
		MOVLP 	19H 			//1B56 	0199
		LDWI 	64H 			//1B57 	0064
		MOVLB 	0H 			//1B58 	1020
		STR 	33H 			//1B59 	10B3
		LCALL 	782H 			//1B5A 	3782
		MOVLP 	19H 			//1B5B 	0199
		BTSC 	35H, 7H 		//1B5C 	2BB5
		DECR 	36H, 1H 		//1B5D 	13B6
		LCALL 	3C2H 			//1B5E 	33C2
		MOVLP 	19H 			//1B5F 	0199
		LCALL 	732H 			//1B60 	3732
		MOVLP 	19H 			//1B61 	0199
		LCALL 	3ADH 			//1B62 	33AD
		MOVLP 	19H 			//1B63 	0199
		LDR 	3CH, 0H 			//1B64 	183C
		STR 	5H 			//1B65 	1085
		LDR 	3BH, 0H 			//1B66 	183B
		STR 	4H 			//1B67 	1084
		LDWI 	89H 			//1B68 	0089
		ADDWR 	4H, 1H 		//1B69 	1784
		LDWI 	A0H 			//1B6A 	00A0
		LCALL 	722H 			//1B6B 	3722
		MOVLP 	19H 			//1B6C 	0199
		LCALL 	59CH 			//1B6D 	359C
		MOVLP 	19H 			//1B6E 	0199
		LCALL 	756H 			//1B6F 	3756
		MOVLP 	19H 			//1B70 	0199
		LCALL 	746H 			//1B71 	3746
		MOVLP 	19H 			//1B72 	0199
		LCALL 	402H 			//1B73 	3402
		MOVLP 	19H 			//1B74 	0199
		LCALL 	76CH 			//1B75 	376C
		MOVLP 	19H 			//1B76 	0199
		LCALL 	3ADH 			//1B77 	33AD
		MOVLP 	19H 			//1B78 	0199
		LCALL 	74FH 			//1B79 	374F
		MOVLP 	19H 			//1B7A 	0199
		LCALL 	712H 			//1B7B 	3712
		MOVLP 	19H 			//1B7C 	0199
		LCALL 	7B4H 			//1B7D 	37B4
		MOVLP 	19H 			//1B7E 	0199
		LCALL 	59CH 			//1B7F 	359C
		MOVLP 	19H 			//1B80 	0199
		LJUMP 	765H 			//1B81 	3F65
		LCALL 	7FBH 			//1B82 	37FB
		MOVLP 	19H 			//1B83 	0199
		BTSS 	3H, 0H 			//1B84 	2C03
		LJUMP 	3A5H 			//1B85 	3BA5
		LCALL 	746H 			//1B86 	3746
		MOVLP 	19H 			//1B87 	0199
		LCALL 	402H 			//1B88 	3402
		MOVLP 	19H 			//1B89 	0199
		LCALL 	76CH 			//1B8A 	376C
		MOVLP 	19H 			//1B8B 	0199
		LCALL 	3ADH 			//1B8C 	33AD
		MOVLP 	19H 			//1B8D 	0199
		LCALL 	74FH 			//1B8E 	374F
		MOVLP 	19H 			//1B8F 	0199
		LCALL 	712H 			//1B90 	3712
		MOVLP 	19H 			//1B91 	0199
		LCALL 	77AH 			//1B92 	377A
		MOVLP 	19H 			//1B93 	0199
		STR 	35H 			//1B94 	10B5
		CLRF 	36H 			//1B95 	11B6
		BTSC 	35H, 7H 		//1B96 	2BB5
		DECR 	36H, 1H 		//1B97 	13B6
		LCALL 	3C2H 			//1B98 	33C2
		MOVLP 	19H 			//1B99 	0199
		LCALL 	732H 			//1B9A 	3732
		MOVLP 	19H 			//1B9B 	0199
		LCALL 	3ADH 			//1B9C 	33AD
		MOVLP 	19H 			//1B9D 	0199
		LCALL 	79CH 			//1B9E 	379C
		MOVLP 	19H 			//1B9F 	0199
		LCALL 	722H 			//1BA0 	3722
		MOVLP 	19H 			//1BA1 	0199
		LCALL 	59CH 			//1BA2 	359C
		MOVLP 	19H 			//1BA3 	0199
		LJUMP 	765H 			//1BA4 	3F65
		MOVLB 	0H 			//1BA5 	1020
		LCALL 	774H 			//1BA6 	3774
		MOVLP 	19H 			//1BA7 	0199
		LCALL 	3ADH 			//1BA8 	33AD
		MOVLP 	19H 			//1BA9 	0199
		LCALL 	74FH 			//1BAA 	374F
		MOVLP 	19H 			//1BAB 	0199
		LJUMP 	7A3H 			//1BAC 	3FA3
		CLRF 	3FH 			//1BAD 	11BF
		CLRF 	40H 			//1BAE 	11C0
		BTSS 	3BH, 0H 		//1BAF 	2C3B
		LJUMP 	3B5H 			//1BB0 	3BB5
		LDR 	3DH, 0H 			//1BB1 	183D
		ADDWR 	3FH, 1H 		//1BB2 	17BF
		LDR 	3EH, 0H 			//1BB3 	183E
		ADDWFC 	40H, 1H 		//1BB4 	0DC0
		LSLF 	3DH, 1H 		//1BB5 	05BD
		RLR 	3EH, 1H 			//1BB6 	1DBE
		LSRF 	3CH, 1H 		//1BB7 	06BC
		RRR 	3BH, 1H 			//1BB8 	1CBB
		LDR 	3BH, 0H 			//1BB9 	183B
		IORWR 	3CH, 0H 		//1BBA 	143C
		BTSS 	3H, 2H 			//1BBB 	2D03
		LJUMP 	3AFH 			//1BBC 	3BAF
		LDR 	40H, 0H 			//1BBD 	1840
		STR 	3CH 			//1BBE 	10BC
		LDR 	3FH, 0H 			//1BBF 	183F
		STR 	3BH 			//1BC0 	10BB
		RET 					//1BC1 	1008
		CLRF 	38H 			//1BC2 	11B8
		BTSS 	34H, 7H 		//1BC3 	2FB4
		LJUMP 	3CCH 			//1BC4 	3BCC
		COMR 	33H, 1H 		//1BC5 	19B3
		COMR 	34H, 1H 		//1BC6 	19B4
		INCR 	33H, 1H 		//1BC7 	1AB3
		BTSC 	3H, 2H 			//1BC8 	2903
		INCR 	34H, 1H 		//1BC9 	1AB4
		CLRF 	38H 			//1BCA 	11B8
		INCR 	38H, 1H 		//1BCB 	1AB8
		BTSS 	36H, 7H 		//1BCC 	2FB6
		LJUMP 	3D5H 			//1BCD 	3BD5
		COMR 	35H, 1H 		//1BCE 	19B5
		COMR 	36H, 1H 		//1BCF 	19B6
		INCR 	35H, 1H 		//1BD0 	1AB5
		BTSC 	3H, 2H 			//1BD1 	2903
		INCR 	36H, 1H 		//1BD2 	1AB6
		LDWI 	1H 			//1BD3 	0001
		XORWR 	38H, 1H 		//1BD4 	16B8
		CLRF 	39H 			//1BD5 	11B9
		CLRF 	3AH 			//1BD6 	11BA
		LDR 	33H, 0H 			//1BD7 	1833
		IORWR 	34H, 0H 		//1BD8 	1434
		BTSC 	3H, 2H 			//1BD9 	2903
		LJUMP 	3F5H 			//1BDA 	3BF5
		CLRF 	37H 			//1BDB 	11B7
		INCR 	37H, 1H 		//1BDC 	1AB7
		BTSC 	34H, 7H 		//1BDD 	2BB4
		LJUMP 	3E2H 			//1BDE 	3BE2
		LSLF 	33H, 1H 		//1BDF 	05B3
		RLR 	34H, 1H 			//1BE0 	1DB4
		LJUMP 	3DCH 			//1BE1 	3BDC
		LSLF 	39H, 1H 		//1BE2 	05B9
		RLR 	3AH, 1H 			//1BE3 	1DBA
		LDR 	34H, 0H 			//1BE4 	1834
		SUBWR 	36H, 0H 		//1BE5 	1236
		BTSS 	3H, 2H 			//1BE6 	2D03
		LJUMP 	3EAH 			//1BE7 	3BEA
		LDR 	33H, 0H 			//1BE8 	1833
		SUBWR 	35H, 0H 		//1BE9 	1235
		BTSS 	3H, 0H 			//1BEA 	2C03
		LJUMP 	3F1H 			//1BEB 	3BF1
		LDR 	33H, 0H 			//1BEC 	1833
		SUBWR 	35H, 1H 		//1BED 	12B5
		LDR 	34H, 0H 			//1BEE 	1834
		SUBWFB 	36H, 1H 		//1BEF 	0BB6
		BSR 	39H, 0H 			//1BF0 	2439
		LSRF 	34H, 1H 		//1BF1 	06B4
		RRR 	33H, 1H 			//1BF2 	1CB3
		DECRSZ 	37H, 1H 		//1BF3 	1BB7
		LJUMP 	3E2H 			//1BF4 	3BE2
		LDR 	38H, 0H 			//1BF5 	1838
		BTSC 	3H, 2H 			//1BF6 	2903
		LJUMP 	3FDH 			//1BF7 	3BFD
		COMR 	39H, 1H 		//1BF8 	19B9
		COMR 	3AH, 1H 		//1BF9 	19BA
		INCR 	39H, 1H 		//1BFA 	1AB9
		BTSC 	3H, 2H 			//1BFB 	2903
		INCR 	3AH, 1H 		//1BFC 	1ABA
		LDR 	3AH, 0H 			//1BFD 	183A
		STR 	34H 			//1BFE 	10B4
		LDR 	39H, 0H 			//1BFF 	1839
		STR 	33H 			//1C00 	10B3
		RET 					//1C01 	1008
		CLRF 	32H 			//1C02 	11B2
		BTSS 	30H, 7H 		//1C03 	2FB0
		LJUMP 	40CH 			//1C04 	3C0C
		COMR 	2FH, 1H 		//1C05 	19AF
		COMR 	30H, 1H 		//1C06 	19B0
		INCR 	2FH, 1H 		//1C07 	1AAF
		BTSC 	3H, 2H 			//1C08 	2903
		INCR 	30H, 1H 		//1C09 	1AB0
		CLRF 	32H 			//1C0A 	11B2
		INCR 	32H, 1H 		//1C0B 	1AB2
		BTSS 	2EH, 7H 		//1C0C 	2FAE
		LJUMP 	413H 			//1C0D 	3C13
		COMR 	2DH, 1H 		//1C0E 	19AD
		COMR 	2EH, 1H 		//1C0F 	19AE
		INCR 	2DH, 1H 		//1C10 	1AAD
		BTSC 	3H, 2H 			//1C11 	2903
		INCR 	2EH, 1H 		//1C12 	1AAE
		LDR 	2DH, 0H 			//1C13 	182D
		IORWR 	2EH, 0H 		//1C14 	142E
		BTSC 	3H, 2H 			//1C15 	2903
		LJUMP 	42EH 			//1C16 	3C2E
		CLRF 	31H 			//1C17 	11B1
		INCR 	31H, 1H 		//1C18 	1AB1
		BTSC 	2EH, 7H 		//1C19 	2BAE
		LJUMP 	41EH 			//1C1A 	3C1E
		LSLF 	2DH, 1H 		//1C1B 	05AD
		RLR 	2EH, 1H 			//1C1C 	1DAE
		LJUMP 	418H 			//1C1D 	3C18
		LDR 	2EH, 0H 			//1C1E 	182E
		SUBWR 	30H, 0H 		//1C1F 	1230
		BTSS 	3H, 2H 			//1C20 	2D03
		LJUMP 	424H 			//1C21 	3C24
		LDR 	2DH, 0H 			//1C22 	182D
		SUBWR 	2FH, 0H 		//1C23 	122F
		BTSS 	3H, 0H 			//1C24 	2C03
		LJUMP 	42AH 			//1C25 	3C2A
		LDR 	2DH, 0H 			//1C26 	182D
		SUBWR 	2FH, 1H 		//1C27 	12AF
		LDR 	2EH, 0H 			//1C28 	182E
		SUBWFB 	30H, 1H 		//1C29 	0BB0
		LSRF 	2EH, 1H 		//1C2A 	06AE
		RRR 	2DH, 1H 			//1C2B 	1CAD
		DECRSZ 	31H, 1H 		//1C2C 	1BB1
		LJUMP 	41EH 			//1C2D 	3C1E
		LDR 	32H, 0H 			//1C2E 	1832
		BTSC 	3H, 2H 			//1C2F 	2903
		LJUMP 	436H 			//1C30 	3C36
		COMR 	2FH, 1H 		//1C31 	19AF
		COMR 	30H, 1H 		//1C32 	19B0
		INCR 	2FH, 1H 		//1C33 	1AAF
		BTSC 	3H, 2H 			//1C34 	2903
		INCR 	30H, 1H 		//1C35 	1AB0
		LDR 	30H, 0H 			//1C36 	1830
		STR 	2EH 			//1C37 	10AE
		LDR 	2FH, 0H 			//1C38 	182F
		STR 	2DH 			//1C39 	10AD
		RET 					//1C3A 	1008
		MOVLB 	0H 			//1C3B 	1020
		STR 	33H 			//1C3C 	10B3
		CLRF 	35H 			//1C3D 	11B5
		LDR 	32H, 0H 			//1C3E 	1832
		BTSC 	3H, 2H 			//1C3F 	2903
		LJUMP 	452H 			//1C40 	3C52
		CLRF 	34H 			//1C41 	11B4
		INCR 	34H, 1H 		//1C42 	1AB4
		BTSC 	32H, 7H 		//1C43 	2BB2
		LJUMP 	447H 			//1C44 	3C47
		LSLF 	32H, 1H 		//1C45 	05B2
		LJUMP 	442H 			//1C46 	3C42
		LSLF 	35H, 1H 		//1C47 	05B5
		LDR 	32H, 0H 			//1C48 	1832
		SUBWR 	33H, 0H 		//1C49 	1233
		BTSS 	3H, 0H 			//1C4A 	2C03
		LJUMP 	44FH 			//1C4B 	3C4F
		LDR 	32H, 0H 			//1C4C 	1832
		SUBWR 	33H, 1H 		//1C4D 	12B3
		BSR 	35H, 0H 			//1C4E 	2435
		LSRF 	32H, 1H 		//1C4F 	06B2
		DECRSZ 	34H, 1H 		//1C50 	1BB4
		LJUMP 	447H 			//1C51 	3C47
		LDR 	35H, 0H 			//1C52 	1835
		RET 					//1C53 	1008
		MOVLB 	0H 			//1C54 	1020
		STR 	2FH 			//1C55 	10AF
		LDWI 	8H 			//1C56 	0008
		STR 	30H 			//1C57 	10B0
		CLRF 	31H 			//1C58 	11B1
		LDR 	2FH, 0H 			//1C59 	182F
		STR 	2EH 			//1C5A 	10AE
		LDWI 	7H 			//1C5B 	0007
		LSRF 	2EH, 1H 		//1C5C 	06AE
		DECRSZ 	9H, 1H 		//1C5D 	1B89
		LJUMP 	45CH 			//1C5E 	3C5C
		LSLF 	31H, 0H 		//1C5F 	0531
		IORWR 	2EH, 0H 		//1C60 	142E
		STR 	31H 			//1C61 	10B1
		LSLF 	2FH, 1H 		//1C62 	05AF
		LDR 	2DH, 0H 			//1C63 	182D
		SUBWR 	31H, 0H 		//1C64 	1231
		BTSS 	3H, 0H 			//1C65 	2C03
		LJUMP 	469H 			//1C66 	3C69
		LDR 	2DH, 0H 			//1C67 	182D
		SUBWR 	31H, 1H 		//1C68 	12B1
		DECRSZ 	30H, 1H 		//1C69 	1BB0
		LJUMP 	459H 			//1C6A 	3C59
		LDR 	31H, 0H 			//1C6B 	1831
		RET 					//1C6C 	1008

		//;NFB.C: 497: unsigned char EEReadData=EEPROMread(0x00);
		LDWI 	0H 			//1C6D 	0000
		LCALL 	4F4H 			//1C6E 	34F4
		MOVLP 	19H 			//1C6F 	0199
		STR 	41H 			//1C70 	10C1

		//;NFB.C: 498: if(EEReadData != 0x45){
		XORWI 	45H 			//1C71 	0A45
		BTSC 	3H, 2H 			//1C72 	2903
		LJUMP 	4AEH 			//1C73 	3CAE

		//;NFB.C: 499: EEPROMwrite(0x00,0x45);
		LDWI 	45H 			//1C74 	0045
		STR 	2DH 			//1C75 	10AD
		LDWI 	0H 			//1C76 	0000
		LCALL 	50CH 			//1C77 	350C
		MOVLP 	19H 			//1C78 	0199

		//;NFB.C: 500: EEPROMwrite(0x01,0x14);
		LDWI 	14H 			//1C79 	0014
		MOVLB 	0H 			//1C7A 	1020
		STR 	2DH 			//1C7B 	10AD
		LDWI 	1H 			//1C7C 	0001
		LCALL 	50CH 			//1C7D 	350C
		MOVLP 	19H 			//1C7E 	0199

		//;NFB.C: 501: EEPROMwrite(0x02,0x36);
		LDWI 	36H 			//1C7F 	0036
		MOVLB 	0H 			//1C80 	1020
		STR 	2DH 			//1C81 	10AD
		LDWI 	2H 			//1C82 	0002
		LCALL 	50CH 			//1C83 	350C
		MOVLP 	19H 			//1C84 	0199

		//;NFB.C: 502: EEPROMwrite(0x03,0x01);
		MOVLB 	0H 			//1C85 	1020
		LDWI 	3H 			//1C86 	0003
		CLRF 	2DH 			//1C87 	11AD
		INCR 	2DH, 1H 		//1C88 	1AAD
		LCALL 	50CH 			//1C89 	350C
		MOVLP 	19H 			//1C8A 	0199

		//;NFB.C: 503: EEPROMwrite(0x04,0x40);
		LDWI 	40H 			//1C8B 	0040
		MOVLB 	0H 			//1C8C 	1020
		STR 	2DH 			//1C8D 	10AD
		LDWI 	4H 			//1C8E 	0004
		LCALL 	50CH 			//1C8F 	350C
		MOVLP 	19H 			//1C90 	0199

		//;NFB.C: 504: EEPROMwrite(0x05,0x01);
		MOVLB 	0H 			//1C91 	1020
		LDWI 	5H 			//1C92 	0005
		CLRF 	2DH 			//1C93 	11AD
		INCR 	2DH, 1H 		//1C94 	1AAD
		LCALL 	50CH 			//1C95 	350C
		MOVLP 	19H 			//1C96 	0199

		//;NFB.C: 505: EEPROMwrite(0x06,0x27);
		LDWI 	27H 			//1C97 	0027
		MOVLB 	0H 			//1C98 	1020
		STR 	2DH 			//1C99 	10AD
		LDWI 	6H 			//1C9A 	0006
		LCALL 	50CH 			//1C9B 	350C
		MOVLP 	19H 			//1C9C 	0199

		//;NFB.C: 506: EEPROMwrite(0x07,0x01);
		MOVLB 	0H 			//1C9D 	1020
		LDWI 	7H 			//1C9E 	0007
		CLRF 	2DH 			//1C9F 	11AD
		INCR 	2DH, 1H 		//1CA0 	1AAD
		LCALL 	50CH 			//1CA1 	350C
		MOVLP 	19H 			//1CA2 	0199

		//;NFB.C: 507: EEPROMwrite(0x08,0x0F);
		LDWI 	FH 			//1CA3 	000F
		MOVLB 	0H 			//1CA4 	1020
		STR 	2DH 			//1CA5 	10AD
		LDWI 	8H 			//1CA6 	0008
		LCALL 	50CH 			//1CA7 	350C
		MOVLP 	19H 			//1CA8 	0199

		//;NFB.C: 508: EEPROMwrite(0x09,0x05);
		LDWI 	5H 			//1CA9 	0005
		MOVLB 	0H 			//1CAA 	1020
		STR 	2DH 			//1CAB 	10AD
		LDWI 	9H 			//1CAC 	0009
		LJUMP 	50CH 			//1CAD 	3D0C

		//;NFB.C: 509: } else{
		//;NFB.C: 510: t1 = EEPROMread(0x01);
		LDWI 	1H 			//1CAE 	0001
		LCALL 	4F4H 			//1CAF 	34F4
		MOVLP 	19H 			//1CB0 	0199
		MOVLB 	3H 			//1CB1 	1023
		STR 	6CH 			//1CB2 	10EC
		LDWI 	2H 			//1CB3 	0002
		CLRF 	6DH 			//1CB4 	11ED

		//;NFB.C: 511: t2 = (EEPROMread(0x03)<<8) + EEPROMread(0x02);
		LCALL 	4F4H 			//1CB5 	34F4
		MOVLP 	19H 			//1CB6 	0199
		STR 	3FH 			//1CB7 	10BF
		LDWI 	3H 			//1CB8 	0003
		LCALL 	4F4H 			//1CB9 	34F4
		MOVLP 	19H 			//1CBA 	0199
		MOVLB 	4H 			//1CBB 	1024
		STR 	43H 			//1CBC 	10C3
		MOVLB 	0H 			//1CBD 	1020
		LDR 	3FH, 0H 			//1CBE 	183F
		MOVLB 	4H 			//1CBF 	1024
		STR 	42H 			//1CC0 	10C2

		//;NFB.C: 512: T1 = (EEPROMread(0x05)<<8) + EEPROMread(0x04);
		LDWI 	4H 			//1CC1 	0004
		LCALL 	4F4H 			//1CC2 	34F4
		MOVLP 	19H 			//1CC3 	0199
		STR 	3FH 			//1CC4 	10BF
		LDWI 	5H 			//1CC5 	0005
		LCALL 	4F4H 			//1CC6 	34F4
		MOVLP 	19H 			//1CC7 	0199
		LCALL 	7DDH 			//1CC8 	37DD
		MOVLP 	19H 			//1CC9 	0199
		LCALL 	581H 			//1CCA 	3581
		MOVLP 	19H 			//1CCB 	0199
		LDR 	3BH, 0H 			//1CCC 	183B
		STR 	5BH 			//1CCD 	10DB
		LDR 	3CH, 0H 			//1CCE 	183C
		STR 	5CH 			//1CCF 	10DC
		LDR 	3DH, 0H 			//1CD0 	183D
		STR 	5DH 			//1CD1 	10DD

		//;NFB.C: 513: T2 = (EEPROMread(0x07)<<8) + EEPROMread(0x06);
		LDWI 	6H 			//1CD2 	0006
		LCALL 	4F4H 			//1CD3 	34F4
		MOVLP 	19H 			//1CD4 	0199
		STR 	3FH 			//1CD5 	10BF
		LDWI 	7H 			//1CD6 	0007
		LCALL 	4F4H 			//1CD7 	34F4
		MOVLP 	19H 			//1CD8 	0199
		LCALL 	7DDH 			//1CD9 	37DD
		MOVLP 	19H 			//1CDA 	0199
		LCALL 	581H 			//1CDB 	3581
		MOVLP 	19H 			//1CDC 	0199
		LDR 	3BH, 0H 			//1CDD 	183B
		MOVLB 	4H 			//1CDE 	1024
		STR 	20H 			//1CDF 	10A0
		MOVLB 	0H 			//1CE0 	1020
		LDR 	3CH, 0H 			//1CE1 	183C
		MOVLB 	4H 			//1CE2 	1024
		STR 	21H 			//1CE3 	10A1
		MOVLB 	0H 			//1CE4 	1020
		LDR 	3DH, 0H 			//1CE5 	183D
		MOVLB 	4H 			//1CE6 	1024
		STR 	22H 			//1CE7 	10A2

		//;NFB.C: 514: puffno = EEPROMread(0x08);
		LDWI 	8H 			//1CE8 	0008
		LCALL 	4F4H 			//1CE9 	34F4
		MOVLP 	19H 			//1CEA 	0199
		MOVLB 	4H 			//1CEB 	1024
		STR 	40H 			//1CEC 	10C0
		LDWI 	9H 			//1CED 	0009
		CLRF 	41H 			//1CEE 	11C1

		//;NFB.C: 515: Ptarget = EEPROMread(0x09);
		LCALL 	4F4H 			//1CEF 	34F4
		MOVLB 	4H 			//1CF0 	1024
		STR 	3EH 			//1CF1 	10BE
		CLRF 	3FH 			//1CF2 	11BF
		RET 					//1CF3 	1008
		MOVLB 	0H 			//1CF4 	1020
		STR 	2DH 			//1CF5 	10AD

		//;NFB.C: 398: unsigned char ReEEPROMread;
		//;NFB.C: 399: while(GIE)
		BTSS 	BH, 7H 			//1CF6 	2F8B
		LJUMP 	4FCH 			//1CF7 	3CFC

		//;NFB.C: 400: {
		//;NFB.C: 401: GIE = 0;
		BCR 	BH, 7H 			//1CF8 	238B

		//;NFB.C: 402: __nop();
		NOP 					//1CF9 	1000

		//;NFB.C: 403: __nop();
		NOP 					//1CFA 	1000
		LJUMP 	4F6H 			//1CFB 	3CF6

		//;NFB.C: 404: }
		//;NFB.C: 405: EEADRL=EEAddr;
		MOVLB 	0H 			//1CFC 	1020
		LDR 	2DH, 0H 			//1CFD 	182D
		MOVLB 	3H 			//1CFE 	1023
		STR 	11H 			//1CFF 	1091

		//;NFB.C: 407: CFGS=0;
		BCR 	15H, 6H 			//1D00 	2315

		//;NFB.C: 408: EEPGD=0;
		BCR 	15H, 7H 			//1D01 	2395

		//;NFB.C: 409: RD=1;
		BSR 	15H, 0H 			//1D02 	2415

		//;NFB.C: 410: __nop();
		NOP 					//1D03 	1000

		//;NFB.C: 411: __nop();
		NOP 					//1D04 	1000

		//;NFB.C: 412: __nop();
		NOP 					//1D05 	1000

		//;NFB.C: 413: __nop();
		NOP 					//1D06 	1000

		//;NFB.C: 414: ReEEPROMread=EEDATL;
		MOVLB 	3H 			//1D07 	1023
		LDR 	13H, 0H 			//1D08 	1813
		MOVLB 	0H 			//1D09 	1020
		STR 	2EH 			//1D0A 	10AE

		//;NFB.C: 416: return ReEEPROMread;
		RET 					//1D0B 	1008
		STR 	2EH 			//1D0C 	10AE

		//;NFB.C: 448: while(GIE)
		BTSS 	BH, 7H 			//1D0D 	2F8B
		LJUMP 	513H 			//1D0E 	3D13

		//;NFB.C: 449: {
		//;NFB.C: 450: GIE = 0;
		BCR 	BH, 7H 			//1D0F 	238B

		//;NFB.C: 451: __nop();
		NOP 					//1D10 	1000

		//;NFB.C: 452: __nop();
		NOP 					//1D11 	1000
		LJUMP 	50DH 			//1D12 	3D0D

		//;NFB.C: 453: }
		//;NFB.C: 454: EEADRL=EEAddr;
		MOVLB 	0H 			//1D13 	1020
		LDR 	2EH, 0H 			//1D14 	182E
		MOVLB 	3H 			//1D15 	1023
		STR 	11H 			//1D16 	1091

		//;NFB.C: 455: EEDATL=Data;
		MOVLB 	0H 			//1D17 	1020
		LDR 	2DH, 0H 			//1D18 	182D
		MOVLB 	3H 			//1D19 	1023
		STR 	13H 			//1D1A 	1093

		//;NFB.C: 457: CFGS=0;
		BCR 	15H, 6H 			//1D1B 	2315

		//;NFB.C: 458: EEPGD=0;
		BCR 	15H, 7H 			//1D1C 	2395

		//;NFB.C: 459: WREN=1;
		BSR 	15H, 2H 			//1D1D 	2515

		//;NFB.C: 460: EEIF=0;
		BCR 	BH, 2H 			//1D1E 	210B

		//;NFB.C: 462: Unlock_Flash();
		LCALL 	708H 			//1D1F 	3708
		MOVLP 	19H 			//1D20 	0199

		//;NFB.C: 463: __nop();
		NOP 					//1D21 	1000

		//;NFB.C: 464: __nop();
		NOP 					//1D22 	1000

		//;NFB.C: 465: __nop();
		NOP 					//1D23 	1000

		//;NFB.C: 466: __nop();
		NOP 					//1D24 	1000

		//;NFB.C: 468: while(WR);
		MOVLB 	3H 			//1D25 	1023
		BTSC 	15H, 1H 		//1D26 	2895
		LJUMP 	525H 			//1D27 	3D25

		//;NFB.C: 469: WREN=0;
		BCR 	15H, 2H 			//1D28 	2115

		//;NFB.C: 470: GIE=1;
		BSR 	BH, 7H 			//1D29 	278B
		RET 					//1D2A 	1008

		//;NFB.C: 557: int Vdd = GET_ADC_DATA(2);
		LDWI 	2H 			//1D2B 	0002
		LCALL 	648H 			//1D2C 	3648
		LDR 	46H, 0H 			//1D2D 	1846
		STR 	4AH 			//1D2E 	10CA
		LDR 	45H, 0H 			//1D2F 	1845
		STR 	49H 			//1D30 	10C9

		//;NFB.C: 558: float bat = (float)Vdd*2/4096;
		MOVLP 	DH 			//1D31 	018D
		LCALL 	5D8H 			//1D32 	35D8
		MOVLP 	19H 			//1D33 	0199
		LDR 	4AH, 0H 			//1D34 	184A
		MOVLB 	0H 			//1D35 	1020
		STR 	3CH 			//1D36 	10BC
		MOVLB 	1H 			//1D37 	1021
		LDR 	49H, 0H 			//1D38 	1849
		MOVLB 	0H 			//1D39 	1020
		STR 	3BH 			//1D3A 	10BB
		LCALL 	581H 			//1D3B 	3581
		MOVLP 	19H 			//1D3C 	0199
		LCALL 	789H 			//1D3D 	3789
		MOVLP 	19H 			//1D3E 	0199
		LCALL 	59CH 			//1D3F 	359C
		MOVLP 	EH 			//1D40 	018E
		LCALL 	6FAH 			//1D41 	36FA
		MOVLP 	19H 			//1D42 	0199
		LCALL 	69EH 			//1D43 	369E
		MOVLP 	19H 			//1D44 	0199
		LDR 	2CH, 0H 			//1D45 	182C
		STR 	4BH 			//1D46 	10CB
		LDR 	2DH, 0H 			//1D47 	182D
		STR 	4CH 			//1D48 	10CC
		LDR 	2EH, 0H 			//1D49 	182E
		STR 	4DH 			//1D4A 	10CD

		//;NFB.C: 559: if(bat>=1.95){
		LCALL 	73AH 			//1D4B 	373A
		LDWI 	9AH 			//1D4C 	009A
		STR 	42H 			//1D4D 	10C2
		LDWI 	F9H 			//1D4E 	00F9
		STR 	43H 			//1D4F 	10C3
		LDWI 	3FH 			//1D50 	003F
		STR 	44H 			//1D51 	10C4
		MOVLP 	15H 			//1D52 	0195
		LCALL 	543H 			//1D53 	3543
		MOVLP 	19H 			//1D54 	0199
		BTSS 	3H, 0H 			//1D55 	2C03
		LJUMP 	55BH 			//1D56 	3D5B

		//;NFB.C: 560: PB3 = 0;
		BCR 	DH, 3H 			//1D57 	218D

		//;NFB.C: 561: PB2 = 0;
		BCR 	DH, 2H 			//1D58 	210D

		//;NFB.C: 562: PA1 = 0;
		BCR 	CH, 1H 			//1D59 	208C

		//;NFB.C: 563: } else if(bat>=1.80){
		RET 					//1D5A 	1008
		MOVLB 	1H 			//1D5B 	1021
		LCALL 	73AH 			//1D5C 	373A
		LDWI 	66H 			//1D5D 	0066
		STR 	42H 			//1D5E 	10C2
		LDWI 	E6H 			//1D5F 	00E6
		STR 	43H 			//1D60 	10C3
		LDWI 	3FH 			//1D61 	003F
		STR 	44H 			//1D62 	10C4
		MOVLP 	15H 			//1D63 	0195
		LCALL 	543H 			//1D64 	3543
		MOVLP 	19H 			//1D65 	0199
		BTSS 	3H, 0H 			//1D66 	2C03
		LJUMP 	56CH 			//1D67 	3D6C

		//;NFB.C: 564: PB3 = 1;
		BSR 	DH, 3H 			//1D68 	258D

		//;NFB.C: 565: PB2 = 0;
		BCR 	DH, 2H 			//1D69 	210D

		//;NFB.C: 566: PA1 = 0;
		BCR 	CH, 1H 			//1D6A 	208C

		//;NFB.C: 567: } else if(bat>=1.65){
		RET 					//1D6B 	1008
		MOVLB 	1H 			//1D6C 	1021
		LCALL 	73AH 			//1D6D 	373A
		LDWI 	33H 			//1D6E 	0033
		STR 	42H 			//1D6F 	10C2
		LDWI 	D3H 			//1D70 	00D3
		STR 	43H 			//1D71 	10C3
		LDWI 	3FH 			//1D72 	003F
		STR 	44H 			//1D73 	10C4
		MOVLP 	15H 			//1D74 	0195
		LCALL 	543H 			//1D75 	3543
		MOVLP 	19H 			//1D76 	0199
		BTSS 	3H, 0H 			//1D77 	2C03
		LJUMP 	57DH 			//1D78 	3D7D

		//;NFB.C: 568: PB3 = 1;
		BSR 	DH, 3H 			//1D79 	258D

		//;NFB.C: 569: PB2 = 1;
		BSR 	DH, 2H 			//1D7A 	250D

		//;NFB.C: 570: PA1 = 0;
		BCR 	CH, 1H 			//1D7B 	208C

		//;NFB.C: 571: } else{
		RET 					//1D7C 	1008

		//;NFB.C: 572: PB3 = 1;
		BSR 	DH, 3H 			//1D7D 	258D

		//;NFB.C: 573: PB2 = 1;
		BSR 	DH, 2H 			//1D7E 	250D

		//;NFB.C: 574: PA1 = 1;
		BSR 	CH, 1H 			//1D7F 	248C
		RET 					//1D80 	1008
		CLRF 	3EH 			//1D81 	11BE
		BTSS 	3CH, 7H 		//1D82 	2FBC
		LJUMP 	58BH 			//1D83 	3D8B
		COMR 	3BH, 1H 		//1D84 	19BB
		COMR 	3CH, 1H 		//1D85 	19BC
		INCR 	3BH, 1H 		//1D86 	1ABB
		BTSC 	3H, 2H 			//1D87 	2903
		INCR 	3CH, 1H 		//1D88 	1ABC
		CLRF 	3EH 			//1D89 	11BE
		INCR 	3EH, 1H 		//1D8A 	1ABE
		LDR 	3BH, 0H 			//1D8B 	183B
		STR 	2DH 			//1D8C 	10AD
		LDR 	3CH, 0H 			//1D8D 	183C
		STR 	2EH 			//1D8E 	10AE
		LDWI 	8EH 			//1D8F 	008E
		CLRF 	2FH 			//1D90 	11AF
		STR 	30H 			//1D91 	10B0
		LDR 	3EH, 0H 			//1D92 	183E
		STR 	31H 			//1D93 	10B1
		LCALL 	60AH 			//1D94 	360A
		LDR 	2DH, 0H 			//1D95 	182D
		STR 	3BH 			//1D96 	10BB
		LDR 	2EH, 0H 			//1D97 	182E
		STR 	3CH 			//1D98 	10BC
		LDR 	2FH, 0H 			//1D99 	182F
		STR 	3DH 			//1D9A 	10BD
		RET 					//1D9B 	1008
		LDR 	20H, 0H 			//1D9C 	1820
		MOVLB 	0H 			//1D9D 	1020
		STR 	53H 			//1D9E 	10D3
		MOVLB 	1H 			//1D9F 	1021
		LDR 	21H, 0H 			//1DA0 	1821
		MOVLB 	0H 			//1DA1 	1020
		STR 	54H 			//1DA2 	10D4
		MOVLB 	1H 			//1DA3 	1021
		LDR 	22H, 0H 			//1DA4 	1822
		LCALL 	7D0H 			//1DA5 	37D0
		MOVLP 	19H 			//1DA6 	0199
		STR 	26H 			//1DA7 	10A6
		LDR 	26H, 0H 			//1DA8 	1826
		BTSS 	3H, 2H 			//1DA9 	2D03
		LJUMP 	5ACH 			//1DAA 	3DAC
		LJUMP 	7E9H 			//1DAB 	3FE9
		LDR 	23H, 0H 			//1DAC 	1823
		MOVLB 	0H 			//1DAD 	1020
		STR 	53H 			//1DAE 	10D3
		MOVLB 	1H 			//1DAF 	1021
		LDR 	24H, 0H 			//1DB0 	1824
		MOVLB 	0H 			//1DB1 	1020
		STR 	54H 			//1DB2 	10D4
		MOVLB 	1H 			//1DB3 	1021
		LDR 	25H, 0H 			//1DB4 	1825
		LCALL 	7D0H 			//1DB5 	37D0
		MOVLP 	19H 			//1DB6 	0199
		STR 	2BH 			//1DB7 	10AB
		LDR 	2BH, 0H 			//1DB8 	182B
		BTSS 	3H, 2H 			//1DB9 	2D03
		LJUMP 	5BCH 			//1DBA 	3DBC
		LJUMP 	7E9H 			//1DBB 	3FE9
		LDR 	2BH, 0H 			//1DBC 	182B
		ADDWI 	7BH 			//1DBD 	0E7B
		ADDWR 	26H, 1H 		//1DBE 	17A6
		LDR 	22H, 0H 			//1DBF 	1822
		STR 	2BH 			//1DC0 	10AB
		LDR 	25H, 0H 			//1DC1 	1825
		XORWR 	2BH, 1H 		//1DC2 	16AB
		LDWI 	80H 			//1DC3 	0080
		ANDWR 	2BH, 1H 		//1DC4 	15AB
		LDWI 	FFH 			//1DC5 	00FF
		BSR 	21H, 7H 			//1DC6 	27A1
		BSR 	24H, 7H 			//1DC7 	27A4
		ANDWR 	23H, 1H 		//1DC8 	15A3
		ANDWR 	24H, 1H 		//1DC9 	15A4
		LDWI 	7H 			//1DCA 	0007
		CLRF 	25H 			//1DCB 	11A5
		CLRF 	27H 			//1DCC 	11A7
		CLRF 	28H 			//1DCD 	11A8
		CLRF 	29H 			//1DCE 	11A9
		STR 	2AH 			//1DCF 	10AA
		BTSS 	20H, 0H 		//1DD0 	2C20
		LJUMP 	5D4H 			//1DD1 	3DD4
		LCALL 	7C2H 			//1DD2 	37C2
		MOVLP 	19H 			//1DD3 	0199
		LSRF 	22H, 1H 		//1DD4 	06A2
		RRR 	21H, 1H 			//1DD5 	1CA1
		RRR 	20H, 1H 			//1DD6 	1CA0
		LSLF 	23H, 1H 		//1DD7 	05A3
		RLR 	24H, 1H 			//1DD8 	1DA4
		RLR 	25H, 1H 			//1DD9 	1DA5
		DECRSZ 	2AH, 1H 		//1DDA 	1BAA
		LJUMP 	5D0H 			//1DDB 	3DD0
		LDWI 	9H 			//1DDC 	0009
		STR 	2AH 			//1DDD 	10AA
		BTSS 	20H, 0H 		//1DDE 	2C20
		LJUMP 	5E2H 			//1DDF 	3DE2
		LCALL 	7C2H 			//1DE0 	37C2
		MOVLP 	19H 			//1DE1 	0199
		LSRF 	22H, 1H 		//1DE2 	06A2
		RRR 	21H, 1H 			//1DE3 	1CA1
		RRR 	20H, 1H 			//1DE4 	1CA0
		LSRF 	29H, 1H 		//1DE5 	06A9
		RRR 	28H, 1H 			//1DE6 	1CA8
		RRR 	27H, 1H 			//1DE7 	1CA7
		DECRSZ 	2AH, 1H 		//1DE8 	1BAA
		LJUMP 	5DEH 			//1DE9 	3DDE
		LDR 	27H, 0H 			//1DEA 	1827
		MOVLB 	0H 			//1DEB 	1020
		STR 	2DH 			//1DEC 	10AD
		MOVLB 	1H 			//1DED 	1021
		LDR 	28H, 0H 			//1DEE 	1828
		MOVLB 	0H 			//1DEF 	1020
		STR 	2EH 			//1DF0 	10AE
		MOVLB 	1H 			//1DF1 	1021
		LDR 	29H, 0H 			//1DF2 	1829
		MOVLB 	0H 			//1DF3 	1020
		STR 	2FH 			//1DF4 	10AF
		MOVLB 	1H 			//1DF5 	1021
		LDR 	26H, 0H 			//1DF6 	1826
		MOVLB 	0H 			//1DF7 	1020
		STR 	30H 			//1DF8 	10B0
		MOVLB 	1H 			//1DF9 	1021
		LDR 	2BH, 0H 			//1DFA 	182B
		MOVLB 	0H 			//1DFB 	1020
		STR 	31H 			//1DFC 	10B1
		LCALL 	60AH 			//1DFD 	360A
		LDR 	2DH, 0H 			//1DFE 	182D
		MOVLB 	1H 			//1DFF 	1021
		STR 	20H 			//1E00 	10A0
		MOVLB 	0H 			//1E01 	1020
		LDR 	2EH, 0H 			//1E02 	182E
		MOVLB 	1H 			//1E03 	1021
		STR 	21H 			//1E04 	10A1
		MOVLB 	0H 			//1E05 	1020
		LDR 	2FH, 0H 			//1E06 	182F
		MOVLB 	1H 			//1E07 	1021
		STR 	22H 			//1E08 	10A2
		RET 					//1E09 	1008
		LDR 	30H, 0H 			//1E0A 	1830
		BTSC 	3H, 2H 			//1E0B 	2903
		LJUMP 	612H 			//1E0C 	3E12
		LDR 	2FH, 0H 			//1E0D 	182F
		IORWR 	2EH, 0H 		//1E0E 	142E
		IORWR 	2DH, 0H 		//1E0F 	142D
		BTSS 	3H, 2H 			//1E10 	2D03
		LJUMP 	61AH 			//1E11 	3E1A
		CLRF 	2DH 			//1E12 	11AD
		CLRF 	2EH 			//1E13 	11AE
		CLRF 	2FH 			//1E14 	11AF
		RET 					//1E15 	1008
		INCR 	30H, 1H 		//1E16 	1AB0
		LSRF 	2FH, 1H 		//1E17 	06AF
		RRR 	2EH, 1H 			//1E18 	1CAE
		RRR 	2DH, 1H 			//1E19 	1CAD
		LDWI 	FEH 			//1E1A 	00FE
		ANDWR 	2FH, 0H 		//1E1B 	152F
		BTSC 	3H, 2H 			//1E1C 	2903
		LJUMP 	628H 			//1E1D 	3E28
		LJUMP 	616H 			//1E1E 	3E16
		INCR 	30H, 1H 		//1E1F 	1AB0
		INCR 	2DH, 1H 		//1E20 	1AAD
		BTSC 	3H, 2H 			//1E21 	2903
		INCR 	2EH, 1H 		//1E22 	1AAE
		BTSC 	3H, 2H 			//1E23 	2903
		INCR 	2FH, 1H 		//1E24 	1AAF
		LSRF 	2FH, 1H 		//1E25 	06AF
		RRR 	2EH, 1H 			//1E26 	1CAE
		RRR 	2DH, 1H 			//1E27 	1CAD
		LDWI 	FFH 			//1E28 	00FF
		ANDWR 	2FH, 0H 		//1E29 	152F
		BTSC 	3H, 2H 			//1E2A 	2903
		LJUMP 	635H 			//1E2B 	3E35
		LJUMP 	61FH 			//1E2C 	3E1F
		LDWI 	2H 			//1E2D 	0002
		SUBWR 	30H, 0H 		//1E2E 	1230
		BTSS 	3H, 0H 			//1E2F 	2C03
		LJUMP 	637H 			//1E30 	3E37
		DECR 	30H, 1H 		//1E31 	13B0
		LSLF 	2DH, 1H 		//1E32 	05AD
		RLR 	2EH, 1H 			//1E33 	1DAE
		RLR 	2FH, 1H 			//1E34 	1DAF
		BTSS 	2EH, 7H 		//1E35 	2FAE
		LJUMP 	62DH 			//1E36 	3E2D
		BTSS 	30H, 0H 		//1E37 	2C30
		BCR 	2EH, 7H 			//1E38 	23AE
		LSRF 	30H, 1H 		//1E39 	06B0
		LDR 	30H, 0H 			//1E3A 	1830
		STR 	34H 			//1E3B 	10B4
		CLRF 	33H 			//1E3C 	11B3
		CLRF 	32H 			//1E3D 	11B2
		LDR 	32H, 0H 			//1E3E 	1832
		IORWR 	2DH, 1H 		//1E3F 	14AD
		LDR 	33H, 0H 			//1E40 	1833
		IORWR 	2EH, 1H 		//1E41 	14AE
		LDR 	34H, 0H 			//1E42 	1834
		IORWR 	2FH, 1H 		//1E43 	14AF
		LDR 	31H, 0H 			//1E44 	1831
		BTSS 	3H, 2H 			//1E45 	2D03
		BSR 	2FH, 7H 			//1E46 	27AF
		RET 					//1E47 	1008
		MOVLB 	1H 			//1E48 	1021
		STR 	48H 			//1E49 	10C8

		//;NFB.C: 367: ADCON0&=0B00001111;
		LDWI 	FH 			//1E4A 	000F
		ANDWR 	1DH, 1H 		//1E4B 	159D

		//;NFB.C: 368: ADCON0|=adcChannel<<4;
		SWAPR 	48H, 0H 		//1E4C 	1E48
		ANDWI 	F0H 			//1E4D 	09F0
		IORWR 	1DH, 1H 		//1E4E 	149D

		//;NFB.C: 369: DelayUs(100);
		LDWI 	64H 			//1E4F 	0064
		STR 	41H 			//1E50 	10C1
		CLRF 	42H 			//1E51 	11C2
		LCALL 	661H 			//1E52 	3661
		MOVLP 	19H 			//1E53 	0199

		//;NFB.C: 370: GO=1;
		MOVLB 	1H 			//1E54 	1021
		BSR 	1DH, 1H 			//1E55 	249D

		//;NFB.C: 371: __nop();
		NOP 					//1E56 	1000

		//;NFB.C: 372: __nop();
		NOP 					//1E57 	1000

		//;NFB.C: 373: while(GO);
		MOVLB 	1H 			//1E58 	1021
		BTSC 	1DH, 1H 		//1E59 	289D
		LJUMP 	658H 			//1E5A 	3E58

		//;NFB.C: 375: return (unsigned int)(ADRESH<<8|ADRESL);
		LDR 	1CH, 0H 			//1E5B 	181C
		STR 	46H 			//1E5C 	10C6
		CLRF 	45H 			//1E5D 	11C5
		LDR 	1BH, 0H 			//1E5E 	181B
		IORWR 	45H, 1H 		//1E5F 	14C5
		RET 					//1E60 	1008

		//;NFB.C: 195: Time = (int)(Time/2*0.8);
		LDR 	42H, 0H 			//1E61 	1842
		MOVLB 	0H 			//1E62 	1020
		STR 	36H 			//1E63 	10B6
		MOVLB 	1H 			//1E64 	1021
		LDR 	41H, 0H 			//1E65 	1841
		MOVLB 	0H 			//1E66 	1020
		STR 	35H 			//1E67 	10B5
		LDWI 	2H 			//1E68 	0002
		STR 	33H 			//1E69 	10B3
		CLRF 	34H 			//1E6A 	11B4
		LCALL 	3C2H 			//1E6B 	33C2
		MOVLP 	19H 			//1E6C 	0199
		LDR 	34H, 0H 			//1E6D 	1834
		STR 	3CH 			//1E6E 	10BC
		LDR 	33H, 0H 			//1E6F 	1833
		STR 	3BH 			//1E70 	10BB
		LCALL 	581H 			//1E71 	3581
		MOVLP 	19H 			//1E72 	0199
		LCALL 	789H 			//1E73 	3789
		MOVLP 	19H 			//1E74 	0199
		LDWI 	CDH 			//1E75 	00CD
		STR 	20H 			//1E76 	10A0
		LDWI 	4CH 			//1E77 	004C
		STR 	21H 			//1E78 	10A1
		LDWI 	3FH 			//1E79 	003F
		STR 	22H 			//1E7A 	10A2
		LCALL 	59CH 			//1E7B 	359C
		MOVLP 	17H 			//1E7C 	0197
		LCALL 	731H 			//1E7D 	3731
		MOVLP 	19H 			//1E7E 	0199
		MOVLP 	15H 			//1E7F 	0195
		LCALL 	5A5H 			//1E80 	35A5
		MOVLP 	19H 			//1E81 	0199
		LDR 	35H, 0H 			//1E82 	1835
		STR 	42H 			//1E83 	10C2
		LDR 	34H, 0H 			//1E84 	1834
		STR 	41H 			//1E85 	10C1

		//;NFB.C: 196: for(int a=0;a<Time;a++)
		CLRF 	43H 			//1E86 	11C3
		CLRF 	44H 			//1E87 	11C4
		LDR 	44H, 0H 			//1E88 	1844
		XORWI 	80H 			//1E89 	0A80
		MOVLB 	0H 			//1E8A 	1020
		STR 	56H 			//1E8B 	10D6
		MOVLB 	1H 			//1E8C 	1021
		LDR 	42H, 0H 			//1E8D 	1842
		XORWI 	80H 			//1E8E 	0A80
		MOVLB 	0H 			//1E8F 	1020
		SUBWR 	56H, 0H 		//1E90 	1256
		BTSS 	3H, 2H 			//1E91 	2D03
		LJUMP 	696H 			//1E92 	3E96
		MOVLB 	1H 			//1E93 	1021
		LDR 	41H, 0H 			//1E94 	1841
		SUBWR 	43H, 0H 		//1E95 	1243
		BTSC 	3H, 0H 			//1E96 	2803
		RET 					//1E97 	1008

		//;NFB.C: 197: {
		//;NFB.C: 198: __nop();
		NOP 					//1E98 	1000
		MOVLB 	1H 			//1E99 	1021
		INCR 	43H, 1H 		//1E9A 	1AC3
		BTSC 	3H, 2H 			//1E9B 	2903
		INCR 	44H, 1H 		//1E9C 	1AC4
		LJUMP 	688H 			//1E9D 	3E88
		LDR 	2FH, 0H 			//1E9E 	182F
		STR 	32H 			//1E9F 	10B2
		LDR 	30H, 0H 			//1EA0 	1830
		STR 	33H 			//1EA1 	10B3
		LDR 	31H, 0H 			//1EA2 	1831
		STR 	34H 			//1EA3 	10B4
		BCR 	3H, 0H 			//1EA4 	2003
		RLR 	33H, 0H 			//1EA5 	1D33
		RLR 	34H, 0H 			//1EA6 	1D34
		STR 	39H 			//1EA7 	10B9
		LDR 	39H, 0H 			//1EA8 	1839
		BTSS 	3H, 2H 			//1EA9 	2D03
		LJUMP 	6ACH 			//1EAA 	3EAC
		LJUMP 	7F7H 			//1EAB 	3FF7
		LDR 	2CH, 0H 			//1EAC 	182C
		STR 	32H 			//1EAD 	10B2
		LDR 	2DH, 0H 			//1EAE 	182D
		STR 	33H 			//1EAF 	10B3
		LDR 	2EH, 0H 			//1EB0 	182E
		STR 	34H 			//1EB1 	10B4
		BCR 	3H, 0H 			//1EB2 	2003
		RLR 	33H, 0H 			//1EB3 	1D33
		RLR 	34H, 0H 			//1EB4 	1D34
		STR 	3AH 			//1EB5 	10BA
		LDR 	3AH, 0H 			//1EB6 	183A
		BTSS 	3H, 2H 			//1EB7 	2D03
		LJUMP 	6BAH 			//1EB8 	3EBA
		LJUMP 	7F7H 			//1EB9 	3FF7
		LDWI 	89H 			//1EBA 	0089
		CLRF 	36H 			//1EBB 	11B6
		CLRF 	37H 			//1EBC 	11B7
		CLRF 	38H 			//1EBD 	11B8
		ADDWR 	3AH, 0H 		//1EBE 	173A
		STR 	32H 			//1EBF 	10B2
		SUBWR 	39H, 1H 		//1EC0 	12B9
		LDR 	31H, 0H 			//1EC1 	1831
		STR 	3AH 			//1EC2 	10BA
		LDR 	2EH, 0H 			//1EC3 	182E
		XORWR 	3AH, 1H 		//1EC4 	16BA
		LDWI 	80H 			//1EC5 	0080
		ANDWR 	3AH, 1H 		//1EC6 	15BA
		LDWI 	18H 			//1EC7 	0018
		BSR 	30H, 7H 			//1EC8 	27B0
		CLRF 	31H 			//1EC9 	11B1
		BSR 	2DH, 7H 			//1ECA 	27AD
		CLRF 	2EH 			//1ECB 	11AE
		STR 	35H 			//1ECC 	10B5
		LSLF 	36H, 1H 		//1ECD 	05B6
		RLR 	37H, 1H 			//1ECE 	1DB7
		RLR 	38H, 1H 			//1ECF 	1DB8
		LDR 	2EH, 0H 			//1ED0 	182E
		SUBWR 	31H, 0H 		//1ED1 	1231
		BTSS 	3H, 2H 			//1ED2 	2D03
		LJUMP 	6DAH 			//1ED3 	3EDA
		LDR 	2DH, 0H 			//1ED4 	182D
		SUBWR 	30H, 0H 		//1ED5 	1230
		BTSS 	3H, 2H 			//1ED6 	2D03
		LJUMP 	6DAH 			//1ED7 	3EDA
		LDR 	2CH, 0H 			//1ED8 	182C
		SUBWR 	2FH, 0H 		//1ED9 	122F
		BTSS 	3H, 0H 			//1EDA 	2C03
		LJUMP 	6E3H 			//1EDB 	3EE3
		LDR 	2CH, 0H 			//1EDC 	182C
		SUBWR 	2FH, 1H 		//1EDD 	12AF
		LDR 	2DH, 0H 			//1EDE 	182D
		SUBWFB 	30H, 1H 		//1EDF 	0BB0
		LDR 	2EH, 0H 			//1EE0 	182E
		SUBWFB 	31H, 1H 		//1EE1 	0BB1
		BSR 	36H, 0H 			//1EE2 	2436
		LSLF 	2FH, 1H 		//1EE3 	05AF
		RLR 	30H, 1H 			//1EE4 	1DB0
		RLR 	31H, 1H 			//1EE5 	1DB1
		DECRSZ 	35H, 1H 		//1EE6 	1BB5
		LJUMP 	6CDH 			//1EE7 	3ECD
		LDR 	36H, 0H 			//1EE8 	1836
		MOVLB 	0H 			//1EE9 	1020
		STR 	2DH 			//1EEA 	10AD
		MOVLB 	1H 			//1EEB 	1021
		LDR 	37H, 0H 			//1EEC 	1837
		MOVLB 	0H 			//1EED 	1020
		STR 	2EH 			//1EEE 	10AE
		MOVLB 	1H 			//1EEF 	1021
		LDR 	38H, 0H 			//1EF0 	1838
		MOVLB 	0H 			//1EF1 	1020
		STR 	2FH 			//1EF2 	10AF
		MOVLB 	1H 			//1EF3 	1021
		LDR 	39H, 0H 			//1EF4 	1839
		MOVLB 	0H 			//1EF5 	1020
		STR 	30H 			//1EF6 	10B0
		MOVLB 	1H 			//1EF7 	1021
		LDR 	3AH, 0H 			//1EF8 	183A
		MOVLB 	0H 			//1EF9 	1020
		STR 	31H 			//1EFA 	10B1
		LCALL 	60AH 			//1EFB 	360A
		LDR 	2DH, 0H 			//1EFC 	182D
		MOVLB 	1H 			//1EFD 	1021
		STR 	2CH 			//1EFE 	10AC
		MOVLB 	0H 			//1EFF 	1020
		LDR 	2EH, 0H 			//1F00 	182E
		MOVLB 	1H 			//1F01 	1021
		STR 	2DH 			//1F02 	10AD
		MOVLB 	0H 			//1F03 	1020
		LDR 	2FH, 0H 			//1F04 	182F
		MOVLB 	1H 			//1F05 	1021
		STR 	2EH 			//1F06 	10AE
		RET 					//1F07 	1008
		LDWI 	3H 			//1F08 	0003
		STR 	8H 			//1F09 	1088
		LDWI 	55H 			//1F0A 	0055
		STR 	16H 			//1F0B 	1096
		LDWI 	AAH 			//1F0C 	00AA
		STR 	16H 			//1F0D 	1096
		BSR 	15H, 1H 			//1F0E 	2495
		NOP 					//1F0F 	1000
		NOP 					//1F10 	1000
		RET 					//1F11 	1008
		ADDWFC 	5H, 1H 		//1F12 	0D85
		MOVIW 	0H[0] 			//1F13 	0F00
		MOVLB 	1H 			//1F14 	1021
		STR 	20H 			//1F15 	10A0
		MOVIW 	1H[0] 			//1F16 	0F01
		STR 	21H 			//1F17 	10A1
		MOVIW 	2H[0] 			//1F18 	0F02
		STR 	22H 			//1F19 	10A2
		RET 					//1F1A 	1008
		LDR 	3CH, 0H 			//1F1B 	183C
		STR 	5H 			//1F1C 	1085
		LDR 	3BH, 0H 			//1F1D 	183B
		STR 	4H 			//1F1E 	1084
		LDWI 	7AH 			//1F1F 	007A
		ADDWR 	4H, 1H 		//1F20 	1784
		RETW 	A0H 			//1F21 	04A0
		ADDWFC 	5H, 1H 		//1F22 	0D85
		MOVIW 	0H[0] 			//1F23 	0F00
		MOVLB 	1H 			//1F24 	1021
		STR 	23H 			//1F25 	10A3
		MOVIW 	1H[0] 			//1F26 	0F01
		STR 	24H 			//1F27 	10A4
		MOVIW 	2H[0] 			//1F28 	0F02
		STR 	25H 			//1F29 	10A5
		RET 					//1F2A 	1008
		LDR 	3CH, 0H 			//1F2B 	183C
		STR 	5H 			//1F2C 	1085
		LDR 	3BH, 0H 			//1F2D 	183B
		STR 	4H 			//1F2E 	1084
		LDWI 	95H 			//1F2F 	0095
		ADDWR 	4H, 1H 		//1F30 	1784
		RETW 	A0H 			//1F31 	04A0
		LDR 	34H, 0H 			//1F32 	1834
		STR 	3CH 			//1F33 	10BC
		LDR 	33H, 0H 			//1F34 	1833
		STR 	3BH 			//1F35 	10BB
		LDWI 	3H 			//1F36 	0003
		STR 	3DH 			//1F37 	10BD
		CLRF 	3EH 			//1F38 	11BE
		RET 					//1F39 	1008
		LDR 	4BH, 0H 			//1F3A 	184B
		MOVLB 	0H 			//1F3B 	1020
		STR 	3FH 			//1F3C 	10BF
		MOVLB 	1H 			//1F3D 	1021
		LDR 	4CH, 0H 			//1F3E 	184C
		MOVLB 	0H 			//1F3F 	1020
		STR 	40H 			//1F40 	10C0
		MOVLB 	1H 			//1F41 	1021
		LDR 	4DH, 0H 			//1F42 	184D
		MOVLB 	0H 			//1F43 	1020
		STR 	41H 			//1F44 	10C1
		RET 					//1F45 	1008
		MOVLB 	0H 			//1F46 	1020
		STR 	2FH 			//1F47 	10AF
		CLRF 	30H 			//1F48 	11B0
		BTSC 	2FH, 7H 		//1F49 	2BAF
		DECR 	30H, 1H 		//1F4A 	13B0
		LDWI 	AH 			//1F4B 	000A
		STR 	2DH 			//1F4C 	10AD
		CLRF 	2EH 			//1F4D 	11AE
		RET 					//1F4E 	1008
		LDR 	3CH, 0H 			//1F4F 	183C
		STR 	5H 			//1F50 	1085
		LDR 	3BH, 0H 			//1F51 	183B
		STR 	4H 			//1F52 	1084
		LDWI 	53H 			//1F53 	0053
		ADDWR 	4H, 1H 		//1F54 	1784
		RETW 	A0H 			//1F55 	04A0
		LDR 	20H, 0H 			//1F56 	1820
		STR 	30H 			//1F57 	10B0
		LDR 	21H, 0H 			//1F58 	1821
		STR 	31H 			//1F59 	10B1
		LDR 	22H, 0H 			//1F5A 	1822
		STR 	32H 			//1F5B 	10B2
		LDR 	33H, 0H 			//1F5C 	1833
		RET 					//1F5D 	1008
		LDR 	3CH, 0H 			//1F5E 	183C
		STR 	5H 			//1F5F 	1085
		LDR 	3BH, 0H 			//1F60 	183B
		STR 	4H 			//1F61 	1084
		LDWI 	B0H 			//1F62 	00B0
		ADDWR 	4H, 1H 		//1F63 	1784
		RETW 	A0H 			//1F64 	04A0
		LDR 	20H, 0H 			//1F65 	1820
		STR 	2CH 			//1F66 	10AC
		LDR 	21H, 0H 			//1F67 	1821
		STR 	2DH 			//1F68 	10AD
		LDR 	22H, 0H 			//1F69 	1822
		STR 	2EH 			//1F6A 	10AE
		RET 					//1F6B 	1008
		LDR 	2EH, 0H 			//1F6C 	182E
		STR 	3CH 			//1F6D 	10BC
		LDR 	2DH, 0H 			//1F6E 	182D
		STR 	3BH 			//1F6F 	10BB
		LDWI 	3H 			//1F70 	0003
		STR 	3DH 			//1F71 	10BD
		CLRF 	3EH 			//1F72 	11BE
		RET 					//1F73 	1008
		STR 	3BH 			//1F74 	10BB
		LDWI 	3H 			//1F75 	0003
		CLRF 	3CH 			//1F76 	11BC
		STR 	3DH 			//1F77 	10BD
		CLRF 	3EH 			//1F78 	11BE
		RET 					//1F79 	1008
		LDWI 	AH 			//1F7A 	000A
		MOVLB 	0H 			//1F7B 	1020
		STR 	33H 			//1F7C 	10B3
		CLRF 	34H 			//1F7D 	11B4
		MOVLB 	1H 			//1F7E 	1021
		LDR 	33H, 0H 			//1F7F 	1833
		MOVLB 	0H 			//1F80 	1020
		RET 					//1F81 	1008
		CLRF 	34H 			//1F82 	11B4
		MOVLB 	1H 			//1F83 	1021
		LDR 	33H, 0H 			//1F84 	1833
		MOVLB 	0H 			//1F85 	1020
		STR 	35H 			//1F86 	10B5
		CLRF 	36H 			//1F87 	11B6
		RET 					//1F88 	1008
		LDR 	3BH, 0H 			//1F89 	183B
		MOVLB 	1H 			//1F8A 	1021
		STR 	23H 			//1F8B 	10A3
		MOVLB 	0H 			//1F8C 	1020
		LDR 	3CH, 0H 			//1F8D 	183C
		MOVLB 	1H 			//1F8E 	1021
		STR 	24H 			//1F8F 	10A4
		MOVLB 	0H 			//1F90 	1020
		LDR 	3DH, 0H 			//1F91 	183D
		MOVLB 	1H 			//1F92 	1021
		STR 	25H 			//1F93 	10A5
		RET 					//1F94 	1008
		LDR 	20H, 0H 			//1F95 	1820
		STR 	2CH 			//1F96 	10AC
		LDR 	21H, 0H 			//1F97 	1821
		STR 	2DH 			//1F98 	10AD
		LDR 	22H, 0H 			//1F99 	1822
		STR 	2EH 			//1F9A 	10AE
		RET 					//1F9B 	1008
		LDR 	3CH, 0H 			//1F9C 	183C
		STR 	5H 			//1F9D 	1085
		LDR 	3BH, 0H 			//1F9E 	183B
		STR 	4H 			//1F9F 	1084
		LDWI 	6EH 			//1FA0 	006E
		ADDWR 	4H, 1H 		//1FA1 	1784
		RETW 	A0H 			//1FA2 	04A0
		ADDWFC 	5H, 1H 		//1FA3 	0D85
		MOVIW 	0H[0] 			//1FA4 	0F00
		MOVLB 	1H 			//1FA5 	1021
		STR 	2CH 			//1FA6 	10AC
		MOVIW 	1H[0] 			//1FA7 	0F01
		STR 	2DH 			//1FA8 	10AD
		MOVIW 	2H[0] 			//1FA9 	0F02
		STR 	2EH 			//1FAA 	10AE
		RET 					//1FAB 	1008
		STR 	2FH 			//1FAC 	10AF
		CLRF 	30H 			//1FAD 	11B0
		BTSC 	2FH, 7H 		//1FAE 	2BAF
		DECR 	30H, 1H 		//1FAF 	13B0
		LDWI 	64H 			//1FB0 	0064
		STR 	2DH 			//1FB1 	10AD
		CLRF 	2EH 			//1FB2 	11AE
		RET 					//1FB3 	1008
		LDR 	30H, 0H 			//1FB4 	1830
		STR 	23H 			//1FB5 	10A3
		LDR 	31H, 0H 			//1FB6 	1831
		STR 	24H 			//1FB7 	10A4
		LDR 	32H, 0H 			//1FB8 	1832
		STR 	25H 			//1FB9 	10A5
		RET 					//1FBA 	1008
		LDR 	33H, 0H 			//1FBB 	1833
		STR 	23H 			//1FBC 	10A3
		LDR 	34H, 0H 			//1FBD 	1834
		STR 	24H 			//1FBE 	10A4
		LDR 	35H, 0H 			//1FBF 	1835
		STR 	25H 			//1FC0 	10A5
		RET 					//1FC1 	1008
		LDR 	23H, 0H 			//1FC2 	1823
		ADDWR 	27H, 1H 		//1FC3 	17A7
		LDR 	24H, 0H 			//1FC4 	1824
		ADDWFC 	28H, 1H 		//1FC5 	0DA8
		LDR 	25H, 0H 			//1FC6 	1825
		ADDWFC 	29H, 1H 		//1FC7 	0DA9
		RET 					//1FC8 	1008
		LDR 	20H, 0H 			//1FC9 	1820
		STR 	33H 			//1FCA 	10B3
		LDR 	21H, 0H 			//1FCB 	1821
		STR 	34H 			//1FCC 	10B4
		LDR 	22H, 0H 			//1FCD 	1822
		STR 	35H 			//1FCE 	10B5
		RET 					//1FCF 	1008
		MOVLB 	0H 			//1FD0 	1020
		STR 	55H 			//1FD1 	10D5
		BCR 	3H, 0H 			//1FD2 	2003
		RLR 	54H, 0H 			//1FD3 	1D54
		RLR 	55H, 0H 			//1FD4 	1D55
		MOVLB 	1H 			//1FD5 	1021
		RET 					//1FD6 	1008
		LDWI 	AH 			//1FD7 	000A
		MOVLB 	0H 			//1FD8 	1020
		STR 	2DH 			//1FD9 	10AD
		MOVLB 	1H 			//1FDA 	1021
		LDR 	36H, 0H 			//1FDB 	1836
		RET 					//1FDC 	1008
		STR 	40H 			//1FDD 	10C0
		LDR 	3FH, 0H 			//1FDE 	183F
		STR 	3BH 			//1FDF 	10BB
		LDR 	40H, 0H 			//1FE0 	1840
		STR 	3CH 			//1FE1 	10BC
		RET 					//1FE2 	1008
		LDWI 	FFH 			//1FE3 	00FF
		XORWR 	44H, 1H 		//1FE4 	16C4
		XORWR 	45H, 1H 		//1FE5 	16C5
		XORWR 	46H, 1H 		//1FE6 	16C6
		INCR 	44H, 1H 		//1FE7 	1AC4
		RET 					//1FE8 	1008
		CLRF 	20H 			//1FE9 	11A0
		CLRF 	21H 			//1FEA 	11A1
		CLRF 	22H 			//1FEB 	11A2
		RET 					//1FEC 	1008
		LDR 	2EH, 0H 			//1FED 	182E
		STR 	36H 			//1FEE 	10B6
		LDR 	2DH, 0H 			//1FEF 	182D
		STR 	35H 			//1FF0 	10B5
		RET 					//1FF1 	1008
		MOVLB 	0H 			//1FF2 	1020
		STR 	32H 			//1FF3 	10B2
		MOVLB 	1H 			//1FF4 	1021
		LDR 	36H, 0H 			//1FF5 	1836
		RET 					//1FF6 	1008
		CLRF 	2CH 			//1FF7 	11AC
		CLRF 	2DH 			//1FF8 	11AD
		CLRF 	2EH 			//1FF9 	11AE
		RET 					//1FFA 	1008
		LDR 	33H, 0H 			//1FFB 	1833
		XORWI 	80H 			//1FFC 	0A80
		ADDWI 	75H 			//1FFD 	0E75
		LDR 	33H, 0H 			//1FFE 	1833
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
		RETW 	64H 			//202F 	0464
		RETW 	20H 			//2030 	0420
		RETW 	56H 			//2031 	0456
		RETW 	3AH 			//2032 	043A
		RETW 	25H 			//2033 	0425
		RETW 	30H 			//2034 	0430
		RETW 	2EH 			//2035 	042E
		RETW 	34H 			//2036 	0434
		RETW 	66H 			//2037 	0466
		RETW 	2CH 			//2038 	042C
		RETW 	49H 			//2039 	0449
		RETW 	3AH 			//203A 	043A
		RETW 	25H 			//203B 	0425
		RETW 	30H 			//203C 	0430
		RETW 	2EH 			//203D 	042E
		RETW 	34H 			//203E 	0434
		RETW 	66H 			//203F 	0466
		RETW 	2CH 			//2040 	042C
		RETW 	52H 			//2041 	0452
		RETW 	3AH 			//2042 	043A
		RETW 	25H 			//2043 	0425
		RETW 	30H 			//2044 	0430
		RETW 	2EH 			//2045 	042E
		RETW 	34H 			//2046 	0434
		RETW 	66H 			//2047 	0466
		RETW 	2CH 			//2048 	042C
		RETW 	54H 			//2049 	0454
		RETW 	3AH 			//204A 	043A
		RETW 	25H 			//204B 	0425
		RETW 	30H 			//204C 	0430
		RETW 	2EH 			//204D 	042E
		RETW 	34H 			//204E 	0434
		RETW 	66H 			//204F 	0466
		RETW 	DH 			//2050 	040D
		RETW 	AH 			//2051 	040A
		RETW 	0H 			//2052 	0400
		RETW 	0H 			//2053 	0400
		RETW 	80H 			//2054 	0480
		RETW 	3FH 			//2055 	043F
		RETW 	0H 			//2056 	0400
		RETW 	20H 			//2057 	0420
		RETW 	41H 			//2058 	0441
		RETW 	0H 			//2059 	0400
		RETW 	C8H 			//205A 	04C8
		RETW 	42H 			//205B 	0442
		RETW 	0H 			//205C 	0400
		RETW 	7AH 			//205D 	047A
		RETW 	44H 			//205E 	0444
		RETW 	40H 			//205F 	0440
		RETW 	1CH 			//2060 	041C
		RETW 	46H 			//2061 	0446
		RETW 	50H 			//2062 	0450
		RETW 	C3H 			//2063 	04C3
		RETW 	47H 			//2064 	0447
		RETW 	24H 			//2065 	0424
		RETW 	74H 			//2066 	0474
		RETW 	49H 			//2067 	0449
		RETW 	97H 			//2068 	0497
		RETW 	18H 			//2069 	0418
		RETW 	4BH 			//206A 	044B
		RETW 	BCH 			//206B 	04BC
		RETW 	BEH 			//206C 	04BE
		RETW 	4CH 			//206D 	044C
		RETW 	6BH 			//206E 	046B
		RETW 	6EH 			//206F 	046E
		RETW 	4EH 			//2070 	044E
		RETW 	3H 			//2071 	0403
		RETW 	15H 			//2072 	0415
		RETW 	50H 			//2073 	0450
		RETW 	79H 			//2074 	0479
		RETW 	ADH 			//2075 	04AD
		RETW 	60H 			//2076 	0460
		RETW 	F3H 			//2077 	04F3
		RETW 	49H 			//2078 	0449
		RETW 	71H 			//2079 	0471
		RETW 	0H 			//207A 	0400
		RETW 	80H 			//207B 	0480
		RETW 	3FH 			//207C 	043F
		RETW 	CDH 			//207D 	04CD
		RETW 	CCH 			//207E 	04CC
		RETW 	3DH 			//207F 	043D
		RETW 	D7H 			//2080 	04D7
		RETW 	23H 			//2081 	0423
		RETW 	3CH 			//2082 	043C
		RETW 	12H 			//2083 	0412
		RETW 	83H 			//2084 	0483
		RETW 	3AH 			//2085 	043A
		RETW 	B7H 			//2086 	04B7
		RETW 	D1H 			//2087 	04D1
		RETW 	38H 			//2088 	0438
		RETW 	C6H 			//2089 	04C6
		RETW 	27H 			//208A 	0427
		RETW 	37H 			//208B 	0437
		RETW 	38H 			//208C 	0438
		RETW 	86H 			//208D 	0486
		RETW 	35H 			//208E 	0435
		RETW 	C0H 			//208F 	04C0
		RETW 	D6H 			//2090 	04D6
		RETW 	33H 			//2091 	0433
		RETW 	CCH 			//2092 	04CC
		RETW 	2BH 			//2093 	042B
		RETW 	32H 			//2094 	0432
		RETW 	70H 			//2095 	0470
		RETW 	89H 			//2096 	0489
		RETW 	30H 			//2097 	0430
		RETW 	E7H 			//2098 	04E7
		RETW 	DBH 			//2099 	04DB
		RETW 	2EH 			//209A 	042E
		RETW 	E5H 			//209B 	04E5
		RETW 	3CH 			//209C 	043C
		RETW 	1EH 			//209D 	041E
		RETW 	42H 			//209E 	0442
		RETW 	A2H 			//209F 	04A2
		RETW 	DH 			//20A0 	040D
		RETW 	56H 			//20A1 	0456
		RETW 	3AH 			//20A2 	043A
		RETW 	25H 			//20A3 	0425
		RETW 	30H 			//20A4 	0430
		RETW 	2EH 			//20A5 	042E
		RETW 	32H 			//20A6 	0432
		RETW 	66H 			//20A7 	0466
		RETW 	2CH 			//20A8 	042C
		RETW 	49H 			//20A9 	0449
		RETW 	3AH 			//20AA 	043A
		RETW 	25H 			//20AB 	0425
		RETW 	30H 			//20AC 	0430
		RETW 	2EH 			//20AD 	042E
		RETW 	32H 			//20AE 	0432
		RETW 	66H 			//20AF 	0466
		RETW 	2CH 			//20B0 	042C
		RETW 	52H 			//20B1 	0452
		RETW 	3AH 			//20B2 	043A
		RETW 	25H 			//20B3 	0425
		RETW 	30H 			//20B4 	0430
		RETW 	2EH 			//20B5 	042E
		RETW 	32H 			//20B6 	0432
		RETW 	66H 			//20B7 	0466
		RETW 	2CH 			//20B8 	042C
		RETW 	54H 			//20B9 	0454
		RETW 	3AH 			//20BA 	043A
		RETW 	25H 			//20BB 	0425
		RETW 	30H 			//20BC 	0430
		RETW 	2EH 			//20BD 	042E
		RETW 	32H 			//20BE 	0432
		RETW 	66H 			//20BF 	0466
		RETW 	DH 			//20C0 	040D
		RETW 	AH 			//20C1 	040A
		RETW 	0H 			//20C2 	0400
		RETW 	25H 			//20C3 	0425
		RETW 	64H 			//20C4 	0464
		RETW 	2CH 			//20C5 	042C
		RETW 	25H 			//20C6 	0425
		RETW 	64H 			//20C7 	0464
		RETW 	2CH 			//20C8 	042C
		RETW 	25H 			//20C9 	0425
		RETW 	30H 			//20CA 	0430
		RETW 	2EH 			//20CB 	042E
		RETW 	30H 			//20CC 	0430
		RETW 	66H 			//20CD 	0466
		RETW 	2CH 			//20CE 	042C
		RETW 	25H 			//20CF 	0425
		RETW 	30H 			//20D0 	0430
		RETW 	2EH 			//20D1 	042E
		RETW 	30H 			//20D2 	0430
		RETW 	66H 			//20D3 	0466
		RETW 	2CH 			//20D4 	042C
		RETW 	25H 			//20D5 	0425
		RETW 	64H 			//20D6 	0464
		RETW 	2CH 			//20D7 	042C
		RETW 	25H 			//20D8 	0425
		RETW 	64H 			//20D9 	0464
		RETW 	DH 			//20DA 	040D
		RETW 	AH 			//20DB 	040A
		RETW 	0H 			//20DC 	0400
		RETW 	44H 			//20DD 	0444
		RETW 	25H 			//20DE 	0425
		RETW 	64H 			//20DF 	0464
		RETW 	2CH 			//20E0 	042C
		RETW 	25H 			//20E1 	0425
		RETW 	30H 			//20E2 	0430
		RETW 	2EH 			//20E3 	042E
		RETW 	31H 			//20E4 	0431
		RETW 	66H 			//20E5 	0466
		RETW 	DH 			//20E6 	040D
		RETW 	AH 			//20E7 	040A
		RETW 	0H 			//20E8 	0400
		RETW 	54H 			//20E9 	0454
		RETW 	3AH 			//20EA 	043A
		RETW 	25H 			//20EB 	0425
		RETW 	30H 			//20EC 	0430
		RETW 	2EH 			//20ED 	042E
		RETW 	31H 			//20EE 	0431
		RETW 	66H 			//20EF 	0466
		RETW 	DH 			//20F0 	040D
		RETW 	AH 			//20F1 	040A
		RETW 	0H 			//20F2 	0400
		RETW 	54H 			//20F3 	0454
		RETW 	25H 			//20F4 	0425
		RETW 	30H 			//20F5 	0430
		RETW 	2EH 			//20F6 	042E
		RETW 	31H 			//20F7 	0431
		RETW 	66H 			//20F8 	0466
		RETW 	DH 			//20F9 	040D
		RETW 	AH 			//20FA 	040A
		RETW 	0H 			//20FB 	0400
		RETW 	53H 			//20FC 	0453
		RETW 	54H 			//20FD 	0454
		RETW 	41H 			//20FE 	0441
		RETW 	52H 			//20FF 	0452
		RETW 	54H 			//2100 	0454
		RETW 	DH 			//2101 	040D
		RETW 	AH 			//2102 	040A
		RETW 	0H 			//2103 	0400
		RETW 	48H 			//2104 	0448
		RETW 	30H 			//2105 	0430
		RETW 	DH 			//2106 	040D
		RETW 	AH 			//2107 	040A
		RETW 	0H 			//2108 	0400
		RETW 	50H 			//2109 	0450
		RETW 	30H 			//210A 	0430
		RETW 	DH 			//210B 	040D
		RETW 	AH 			//210C 	040A
		RETW 	0H 			//210D 	0400
		RETW 	53H 			//210E 	0453
		RETW 	30H 			//210F 	0430
		RETW 	DH 			//2110 	040D
		RETW 	AH 			//2111 	040A
		RETW 	0H 			//2112 	0400
		RETW 	54H 			//2113 	0454
		RETW 	30H 			//2114 	0430
		RETW 	DH 			//2115 	040D
		RETW 	AH 			//2116 	040A
		RETW 	0H 			//2117 	0400
		RETW 	48H 			//2118 	0448
		RETW 	31H 			//2119 	0431
		RETW 	DH 			//211A 	040D
		RETW 	AH 			//211B 	040A
		RETW 	0H 			//211C 	0400
		RETW 	50H 			//211D 	0450
		RETW 	31H 			//211E 	0431
		RETW 	DH 			//211F 	040D
		RETW 	AH 			//2120 	040A
		RETW 	0H 			//2121 	0400
		RETW 	53H 			//2122 	0453
		RETW 	31H 			//2123 	0431
		RETW 	DH 			//2124 	040D
		RETW 	AH 			//2125 	040A
		RETW 	0H 			//2126 	0400
		RETW 	72H 			//2127 	0472
		RETW 	64H 			//2128 	0464
		RETW 	2DH 			//2129 	042D
		RETW 	0H 			//212A 	0400
		RETW 	54H 			//212B 	0454
		RETW 	31H 			//212C 	0431
		RETW 	3AH 			//212D 	043A
		RETW 	0H 			//212E 	0400
		RETW 	74H 			//212F 	0474
		RETW 	31H 			//2130 	0431
		RETW 	3AH 			//2131 	043A
		RETW 	0H 			//2132 	0400
		RETW 	54H 			//2133 	0454
		RETW 	32H 			//2134 	0432
		RETW 	3AH 			//2135 	043A
		RETW 	0H 			//2136 	0400
		RETW 	74H 			//2137 	0474
		RETW 	32H 			//2138 	0432
		RETW 	3AH 			//2139 	043A
		RETW 	0H 			//213A 	0400
		RETW 	70H 			//213B 	0470
		RETW 	66H 			//213C 	0466
		RETW 	3AH 			//213D 	043A
		RETW 	0H 			//213E 	0400
		RETW 	70H 			//213F 	0470
		RETW 	74H 			//2140 	0474
		RETW 	3AH 			//2141 	043A
		ORG		2142H
		RETW 	0H 			//2142 	0400
			END
