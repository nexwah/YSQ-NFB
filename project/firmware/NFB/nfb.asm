//Deviec:FT64F0AX
//-----------------------Variable---------------------------------
		_command		EQU		263H
		_HTVP_		EQU		1ECH
		_HTVN_		EQU		1EAH
		_HTVI_		EQU		1E8H
		_HTVP		EQU		248H
		_HTVN		EQU		245H
		_HTVI		EQU		242H
		_I		EQU		23FH
		_V		EQU		23CH
		_R		EQU		239H
		_T		EQU		1E3H
		_diffT		EQU		1E0H
		_PowerOn		EQU		1E6H
		_BTNpressed		EQU		61H
		_BTNtimer		EQU		261H
		_HTOn		EQU		25FH
		_HTtimer		EQU		25DH
		_SmokeOn		EQU		25BH
		_Smoketimer		EQU		259H
		_PuffOn		EQU		5FH
		_ReadFlag		EQU		257H
		_BTNcnt		EQU		22CH
		_HTcnt		EQU		228H
		_HTtimecnt		EQU		1DCH
		_Smokecnt		EQU		224H
		_Smoketimecnt		EQU		1D8H
		_Puffcnt		EQU		220H
		_timeleft		EQU		255H
		_timeleft1		EQU		253H
		_timeleft2		EQU		251H
		_timeleft3		EQU		24FH
		_Toffset		EQU		236H
		_m		EQU		233H
		_Tm		EQU		230H
		_n		EQU		24DH
		_timenow		EQU		24BH
		_t1		EQU		1EEH
		_t2		EQU		5DH
		_T1		EQU		56H
		_T2		EQU		26DH
		_valc		EQU		2A0H
		_puffno		EQU		5BH
		_Ptarget		EQU		59H
//		main@msg_3674		EQU		1B4H
//		main@i_3673		EQU		1D3H
//		main@i_3672		EQU		1D1H
//		main@i_3671		EQU		1CFH
//		main@i_3663		EQU		1CDH
//		main@i_3662		EQU		1CBH
//		main@i		EQU		E3H
//		main@msg_3677		EQU		1BEH
//		main@pf		EQU		E1H
//		main@msg_3666		EQU		1AAH
//		main@msg		EQU		1A0H
//		main@msg_3681		EQU		320H
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
//		send@i		EQU		D0H
//		send@tbuf		EQU		CBH
//		send@len		EQU		CDH
//		DelayMs@a		EQU		C9H
//		DelayMs@Time		EQU		C6H
//		___lwtoft@c		EQU		35H
//		BatteryLevel@bat		EQU		CCH
//		BatteryLevel@Vdd		EQU		CAH
//		___ftge@ff1		EQU		3FH
//		___ftge@ff2		EQU		42H
//		___ftdiv@f3		EQU		B6H
//		___ftdiv@sign		EQU		BAH
//		___ftdiv@exp		EQU		B9H
//		___ftdiv@cntr		EQU		B5H
//		___ftdiv@f2		EQU		ACH
//		___ftdiv@f1		EQU		AFH
//		GET_ADC_DATA@adcChannel		EQU		C9H
//		GET_ADC_DATA@adcChannel		EQU		C9H
//		GET_ADC_DATA@adcChannel		EQU		C9H
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
		LJUMP 	188H 			//0001 	3988
		ORG		0004H
		BSR 	7EH, 0H 			//0004 	247E
		MOVLP 	0H 			//0005 	0180

		//;NFB.C: 77: if(UR1RXNE&&UR1RXNEF)
		MOVLB 	9H 			//0006 	1029
		BTSC 	EH, 0H 			//0007 	280E
		BTSS 	12H, 0H 		//0008 	2C12
		LJUMP 	105H 			//0009 	3905

		//;NFB.C: 78: {
		//;NFB.C: 79: command[n] = UR1DATAL;
		MOVLB 	4H 			//000A 	1024
		LDR 	4DH, 0H 			//000B 	184D
		ADDWI 	63H 			//000C 	0E63
		STR 	6H 			//000D 	1086
		LDWI 	2H 			//000E 	0002
		STR 	7H 			//000F 	1087
		MOVLB 	9H 			//0010 	1029
		LDR 	CH, 0H 			//0011 	180C
		STR 	1H 			//0012 	1081

		//;NFB.C: 80: n++;
		MOVLB 	4H 			//0013 	1024
		INCR 	4DH, 1H 		//0014 	1ACD
		BTSC 	3H, 2H 			//0015 	2903
		INCR 	4EH, 1H 		//0016 	1ACE

		//;NFB.C: 81: if(strstr(command,"\r\n")){
		LDWI 	6H 			//0017 	0006
		STR 	7BH 			//0018 	10FB
		LDWI 	A1H 			//0019 	00A1
		STR 	7CH 			//001A 	10FC
		LDWI 	63H 			//001B 	0063
		MOVLP 	10H 			//001C 	0190
		LCALL 	35H 			//001D 	3035
		MOVLP 	0H 			//001E 	0180
		XORWI 	0H 			//001F 	0A00
		BTSC 	3H, 2H 			//0020 	2903
		LJUMP 	105H 			//0021 	3905

		//;NFB.C: 82: int len = strlen(command)-5;
		LDWI 	63H 			//0022 	0063
		STR 	70H 			//0023 	10F0
		LDWI 	2H 			//0024 	0002
		STR 	71H 			//0025 	10F1
		MOVLP 	10H 			//0026 	0190
		LCALL 	A2H 			//0027 	30A2
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

		//;NFB.C: 83: for(int i=0;i<len;i++){
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

		//;NFB.C: 84: valc[i] += command[i+3];
		MOVLB 	0H 			//0040 	1020
		LDR 	2BH, 0H 			//0041 	182B
		ADDWI 	A0H 			//0042 	0EA0
		STR 	6H 			//0043 	1086
		LDWI 	2H 			//0044 	0002
		STR 	7H 			//0045 	1087
		LDR 	2BH, 0H 			//0046 	182B
		ADDWI 	66H 			//0047 	0E66
		STR 	4H 			//0048 	1084
		LDWI 	2H 			//0049 	0002
		STR 	5H 			//004A 	1085
		LDR 	0H, 0H 			//004B 	1800
		ADDWR 	1H, 1H 		//004C 	1781
		INCR 	2BH, 1H 		//004D 	1AAB
		BTSC 	3H, 2H 			//004E 	2903
		INCR 	2CH, 1H 		//004F 	1AAC
		LJUMP 	34H 			//0050 	3834

		//;NFB.C: 85: }
		//;NFB.C: 86: if(strstr(command,"t1:")){
		LDWI 	2FH 			//0051 	002F
		STR 	7BH 			//0052 	10FB
		LDWI 	A1H 			//0053 	00A1
		STR 	7CH 			//0054 	10FC
		LDWI 	63H 			//0055 	0063
		MOVLP 	10H 			//0056 	0190
		LCALL 	35H 			//0057 	3035
		MOVLP 	0H 			//0058 	0180
		XORWI 	0H 			//0059 	0A00
		BTSC 	3H, 2H 			//005A 	2903
		LJUMP 	66H 			//005B 	3866

		//;NFB.C: 87: t1 = charArrayToInt(valc);
		LDWI 	A0H 			//005C 	00A0
		MOVLP 	10H 			//005D 	0190
		LCALL 	BEH 			//005E 	30BE
		MOVLP 	0H 			//005F 	0180
		LDR 	77H, 0H 			//0060 	1877
		MOVLB 	3H 			//0061 	1023
		STR 	6FH 			//0062 	10EF
		LDR 	76H, 0H 			//0063 	1876
		STR 	6EH 			//0064 	10EE

		//;NFB.C: 88: } else if(strstr(command,"t2:")){
		LJUMP 	F0H 			//0065 	38F0
		LDWI 	37H 			//0066 	0037
		STR 	7BH 			//0067 	10FB
		LDWI 	A1H 			//0068 	00A1
		STR 	7CH 			//0069 	10FC
		LDWI 	63H 			//006A 	0063
		MOVLP 	10H 			//006B 	0190
		LCALL 	35H 			//006C 	3035
		MOVLP 	0H 			//006D 	0180
		XORWI 	0H 			//006E 	0A00
		BTSC 	3H, 2H 			//006F 	2903
		LJUMP 	7AH 			//0070 	387A

		//;NFB.C: 89: t2 = charArrayToInt(valc);
		LDWI 	A0H 			//0071 	00A0
		MOVLP 	10H 			//0072 	0190
		LCALL 	BEH 			//0073 	30BE
		MOVLP 	0H 			//0074 	0180
		LDR 	77H, 0H 			//0075 	1877
		STR 	5EH 			//0076 	10DE
		LDR 	76H, 0H 			//0077 	1876
		STR 	5DH 			//0078 	10DD

		//;NFB.C: 90: } else if(strstr(command,"pf:")){
		LJUMP 	F0H 			//0079 	38F0
		LDWI 	3BH 			//007A 	003B
		STR 	7BH 			//007B 	10FB
		LDWI 	A1H 			//007C 	00A1
		STR 	7CH 			//007D 	10FC
		LDWI 	63H 			//007E 	0063
		MOVLP 	10H 			//007F 	0190
		LCALL 	35H 			//0080 	3035
		MOVLP 	0H 			//0081 	0180
		XORWI 	0H 			//0082 	0A00
		BTSC 	3H, 2H 			//0083 	2903
		LJUMP 	8EH 			//0084 	388E

		//;NFB.C: 91: puffno = charArrayToInt(valc);
		LDWI 	A0H 			//0085 	00A0
		MOVLP 	10H 			//0086 	0190
		LCALL 	BEH 			//0087 	30BE
		MOVLP 	0H 			//0088 	0180
		LDR 	77H, 0H 			//0089 	1877
		STR 	5CH 			//008A 	10DC
		LDR 	76H, 0H 			//008B 	1876
		STR 	5BH 			//008C 	10DB

		//;NFB.C: 92: } else if(strstr(command,"T1:")){
		LJUMP 	F0H 			//008D 	38F0
		LDWI 	2BH 			//008E 	002B
		STR 	7BH 			//008F 	10FB
		LDWI 	A1H 			//0090 	00A1
		STR 	7CH 			//0091 	10FC
		LDWI 	63H 			//0092 	0063
		MOVLP 	10H 			//0093 	0190
		LCALL 	35H 			//0094 	3035
		MOVLP 	0H 			//0095 	0180
		XORWI 	0H 			//0096 	0A00
		BTSC 	3H, 2H 			//0097 	2903
		LJUMP 	ABH 			//0098 	38AB

		//;NFB.C: 93: T1 = (float)charArrayToInt(valc);
		LDWI 	A0H 			//0099 	00A0
		MOVLP 	10H 			//009A 	0190
		LCALL 	BEH 			//009B 	30BE
		MOVLP 	0H 			//009C 	0180
		LDR 	77H, 0H 			//009D 	1877
		STR 	26H 			//009E 	10A6
		LDR 	76H, 0H 			//009F 	1876
		STR 	25H 			//00A0 	10A5
		MOVLP 	8H 			//00A1 	0188
		LCALL 	21H 			//00A2 	3021
		MOVLP 	0H 			//00A3 	0180
		LDR 	25H, 0H 			//00A4 	1825
		STR 	56H 			//00A5 	10D6
		LDR 	26H, 0H 			//00A6 	1826
		STR 	57H 			//00A7 	10D7
		LDR 	27H, 0H 			//00A8 	1827
		STR 	58H 			//00A9 	10D8

		//;NFB.C: 94: } else if(strstr(command,"T2:")){
		LJUMP 	F0H 			//00AA 	38F0
		LDWI 	33H 			//00AB 	0033
		STR 	7BH 			//00AC 	10FB
		LDWI 	A1H 			//00AD 	00A1
		STR 	7CH 			//00AE 	10FC
		LDWI 	63H 			//00AF 	0063
		MOVLP 	10H 			//00B0 	0190
		LCALL 	35H 			//00B1 	3035
		MOVLP 	0H 			//00B2 	0180
		XORWI 	0H 			//00B3 	0A00
		BTSC 	3H, 2H 			//00B4 	2903
		LJUMP 	CDH 			//00B5 	38CD

		//;NFB.C: 95: T2 = (float)charArrayToInt(valc);
		LDWI 	A0H 			//00B6 	00A0
		MOVLP 	10H 			//00B7 	0190
		LCALL 	BEH 			//00B8 	30BE
		MOVLP 	0H 			//00B9 	0180
		LDR 	77H, 0H 			//00BA 	1877
		STR 	26H 			//00BB 	10A6
		LDR 	76H, 0H 			//00BC 	1876
		STR 	25H 			//00BD 	10A5
		MOVLP 	8H 			//00BE 	0188
		LCALL 	21H 			//00BF 	3021
		MOVLP 	0H 			//00C0 	0180
		LDR 	25H, 0H 			//00C1 	1825
		MOVLB 	4H 			//00C2 	1024
		STR 	6DH 			//00C3 	10ED
		MOVLB 	0H 			//00C4 	1020
		LDR 	26H, 0H 			//00C5 	1826
		MOVLB 	4H 			//00C6 	1024
		STR 	6EH 			//00C7 	10EE
		MOVLB 	0H 			//00C8 	1020
		LDR 	27H, 0H 			//00C9 	1827
		MOVLB 	4H 			//00CA 	1024
		STR 	6FH 			//00CB 	10EF

		//;NFB.C: 96: } else if(strstr(command,"pt:")){
		LJUMP 	F0H 			//00CC 	38F0
		LDWI 	3FH 			//00CD 	003F
		STR 	7BH 			//00CE 	10FB
		LDWI 	A1H 			//00CF 	00A1
		STR 	7CH 			//00D0 	10FC
		LDWI 	63H 			//00D1 	0063
		MOVLP 	10H 			//00D2 	0190
		LCALL 	35H 			//00D3 	3035
		MOVLP 	0H 			//00D4 	0180
		XORWI 	0H 			//00D5 	0A00
		BTSC 	3H, 2H 			//00D6 	2903
		LJUMP 	E1H 			//00D7 	38E1

		//;NFB.C: 97: Ptarget = charArrayToInt(valc);
		LDWI 	A0H 			//00D8 	00A0
		MOVLP 	10H 			//00D9 	0190
		LCALL 	BEH 			//00DA 	30BE
		MOVLP 	0H 			//00DB 	0180
		LDR 	77H, 0H 			//00DC 	1877
		STR 	5AH 			//00DD 	10DA
		LDR 	76H, 0H 			//00DE 	1876
		STR 	59H 			//00DF 	10D9

		//;NFB.C: 98: } else if(strstr(command,"rd-")){
		LJUMP 	F0H 			//00E0 	38F0
		LDWI 	27H 			//00E1 	0027
		STR 	7BH 			//00E2 	10FB
		LDWI 	A1H 			//00E3 	00A1
		STR 	7CH 			//00E4 	10FC
		LDWI 	63H 			//00E5 	0063
		MOVLP 	10H 			//00E6 	0190
		LCALL 	35H 			//00E7 	3035
		MOVLP 	0H 			//00E8 	0180
		XORWI 	0H 			//00E9 	0A00
		BTSC 	3H, 2H 			//00EA 	2903
		LJUMP 	F0H 			//00EB 	38F0

		//;NFB.C: 99: ReadFlag = 1;
		MOVLB 	4H 			//00EC 	1024
		CLRF 	57H 			//00ED 	11D7
		INCR 	57H, 1H 		//00EE 	1AD7
		CLRF 	58H 			//00EF 	11D8

		//;NFB.C: 100: }
		//;NFB.C: 101: n = 0;
		MOVLB 	4H 			//00F0 	1024
		LDWI 	AH 			//00F1 	000A
		CLRF 	4DH 			//00F2 	11CD
		CLRF 	4EH 			//00F3 	11CE
		CLRF 	70H 			//00F4 	11F0
		CLRF 	71H 			//00F5 	11F1
		STR 	72H 			//00F6 	10F2
		LDWI 	63H 			//00F7 	0063
		CLRF 	73H 			//00F8 	11F3
		MOVLP 	10H 			//00F9 	0190
		LCALL 	FH 			//00FA 	300F
		MOVLP 	0H 			//00FB 	0180
		LDWI 	AH 			//00FC 	000A

		//;NFB.C: 103: memset(valc,0,10);
		CLRF 	70H 			//00FD 	11F0
		CLRF 	71H 			//00FE 	11F1
		STR 	72H 			//00FF 	10F2
		LDWI 	A0H 			//0100 	00A0
		CLRF 	73H 			//0101 	11F3
		MOVLP 	10H 			//0102 	0190
		LCALL 	FH 			//0103 	300F
		MOVLP 	0H 			//0104 	0180

		//;NFB.C: 104: }
		//;NFB.C: 105: }
		//;NFB.C: 106: if(EPIF0&0X10)
		MOVLB 	0H 			//0105 	1020
		BTSS 	14H, 4H 		//0106 	2E14
		LJUMP 	112H 			//0107 	3912

		//;NFB.C: 107: {
		//;NFB.C: 108: EPIF0=0X10;
		LDWI 	10H 			//0108 	0010
		STR 	14H 			//0109 	1094

		//;NFB.C: 109: BTNpressed = 1;
		CLRF 	61H 			//010A 	11E1
		INCR 	61H, 1H 		//010B 	1AE1
		CLRF 	62H 			//010C 	11E2

		//;NFB.C: 110: BTNcnt = 0;
		MOVLB 	4H 			//010D 	1024
		CLRF 	2CH 			//010E 	11AC
		CLRF 	2DH 			//010F 	11AD
		CLRF 	2EH 			//0110 	11AE
		CLRF 	2FH 			//0111 	11AF

		//;NFB.C: 111: }
		//;NFB.C: 112: if(T2UIE&&T2UIF)
		MOVLB 	6H 			//0112 	1026
		BTSC 	DH, 0H 			//0113 	280D
		BTSS 	EH, 0H 			//0114 	2C0E
		LJUMP 	186H 			//0115 	3986

		//;NFB.C: 113: {
		//;NFB.C: 114: T2UIF=1;
		BSR 	EH, 0H 			//0116 	240E

		//;NFB.C: 115: if(BTNpressed){
		MOVLB 	0H 			//0117 	1020
		LDR 	61H, 0H 			//0118 	1861
		IORWR 	62H, 0H 		//0119 	1462
		BTSC 	3H, 2H 			//011A 	2903
		LJUMP 	139H 			//011B 	3939

		//;NFB.C: 116: BTNcnt++;
		LDWI 	1H 			//011C 	0001
		MOVLB 	4H 			//011D 	1024
		ADDWR 	2CH, 1H 		//011E 	17AC
		LDWI 	0H 			//011F 	0000
		ADDWFC 	2DH, 1H 		//0120 	0DAD
		ADDWFC 	2EH, 1H 		//0121 	0DAE
		ADDWFC 	2FH, 1H 		//0122 	0DAF

		//;NFB.C: 117: if(PB4){
		MOVLB 	0H 			//0123 	1020
		BTSC 	DH, 4H 			//0124 	2A0D
		LJUMP 	136H 			//0125 	3936

		//;NFB.C: 119: } else if(BTNcnt>=1500){
		MOVLB 	4H 			//0126 	1024
		LDR 	2FH, 0H 			//0127 	182F
		BTSS 	3H, 2H 			//0128 	2D03
		LJUMP 	133H 			//0129 	3933
		LDR 	2EH, 0H 			//012A 	182E
		BTSS 	3H, 2H 			//012B 	2D03
		LJUMP 	133H 			//012C 	3933
		LDWI 	DCH 			//012D 	00DC
		SUBWR 	2CH, 0H 		//012E 	122C
		LDWI 	5H 			//012F 	0005
		SUBWFB 	2DH, 0H 		//0130 	0B2D
		BTSS 	3H, 0H 			//0131 	2C03
		LJUMP 	139H 			//0132 	3939

		//;NFB.C: 120: BTNtimer = 1;
		CLRF 	61H 			//0133 	11E1
		INCR 	61H, 1H 		//0134 	1AE1
		CLRF 	62H 			//0135 	11E2

		//;NFB.C: 118: BTNpressed = 0;
		MOVLB 	0H 			//0136 	1020
		CLRF 	61H 			//0137 	11E1
		CLRF 	62H 			//0138 	11E2

		//;NFB.C: 122: }
		//;NFB.C: 123: }
		//;NFB.C: 124: if(HTOn){
		MOVLB 	4H 			//0139 	1024
		LDR 	5FH, 0H 			//013A 	185F
		IORWR 	60H, 0H 		//013B 	1460
		BTSC 	3H, 2H 			//013C 	2903
		LJUMP 	160H 			//013D 	3960

		//;NFB.C: 125: HTcnt++;
		LDWI 	1H 			//013E 	0001
		ADDWR 	28H, 1H 		//013F 	17A8
		LDWI 	0H 			//0140 	0000
		ADDWFC 	29H, 1H 		//0141 	0DA9
		ADDWFC 	2AH, 1H 		//0142 	0DAA
		ADDWFC 	2BH, 1H 		//0143 	0DAB

		//;NFB.C: 126: if(HTcnt>=50){
		LDR 	2BH, 0H 			//0144 	182B
		BTSS 	3H, 2H 			//0145 	2D03
		LJUMP 	151H 			//0146 	3951
		LDR 	2AH, 0H 			//0147 	182A
		BTSS 	3H, 2H 			//0148 	2D03
		LJUMP 	151H 			//0149 	3951
		LDR 	29H, 0H 			//014A 	1829
		BTSS 	3H, 2H 			//014B 	2D03
		LJUMP 	151H 			//014C 	3951
		LDWI 	32H 			//014D 	0032
		SUBWR 	28H, 0H 		//014E 	1228
		BTSS 	3H, 0H 			//014F 	2C03
		LJUMP 	160H 			//0150 	3960
		LDWI 	1H 			//0151 	0001

		//;NFB.C: 127: HTtimer = 1;
		CLRF 	5DH 			//0152 	11DD
		INCR 	5DH, 1H 		//0153 	1ADD
		CLRF 	5EH 			//0154 	11DE

		//;NFB.C: 128: HTtimecnt++;
		MOVLB 	3H 			//0155 	1023
		ADDWR 	5CH, 1H 		//0156 	17DC
		LDWI 	0H 			//0157 	0000
		ADDWFC 	5DH, 1H 		//0158 	0DDD
		ADDWFC 	5EH, 1H 		//0159 	0DDE
		ADDWFC 	5FH, 1H 		//015A 	0DDF

		//;NFB.C: 129: HTcnt = 0;
		MOVLB 	4H 			//015B 	1024
		CLRF 	28H 			//015C 	11A8
		CLRF 	29H 			//015D 	11A9
		CLRF 	2AH 			//015E 	11AA
		CLRF 	2BH 			//015F 	11AB

		//;NFB.C: 130: }
		//;NFB.C: 131: }
		//;NFB.C: 132: if(SmokeOn){
		LDR 	5BH, 0H 			//0160 	185B
		IORWR 	5CH, 0H 		//0161 	145C
		BTSC 	3H, 2H 			//0162 	2903
		LJUMP 	186H 			//0163 	3986

		//;NFB.C: 133: Smokecnt++;
		LDWI 	1H 			//0164 	0001
		ADDWR 	24H, 1H 		//0165 	17A4
		LDWI 	0H 			//0166 	0000
		ADDWFC 	25H, 1H 		//0167 	0DA5
		ADDWFC 	26H, 1H 		//0168 	0DA6
		ADDWFC 	27H, 1H 		//0169 	0DA7

		//;NFB.C: 134: if(Smokecnt>=10){
		LDR 	27H, 0H 			//016A 	1827
		BTSS 	3H, 2H 			//016B 	2D03
		LJUMP 	177H 			//016C 	3977
		LDR 	26H, 0H 			//016D 	1826
		BTSS 	3H, 2H 			//016E 	2D03
		LJUMP 	177H 			//016F 	3977
		LDR 	25H, 0H 			//0170 	1825
		BTSS 	3H, 2H 			//0171 	2D03
		LJUMP 	177H 			//0172 	3977
		LDWI 	AH 			//0173 	000A
		SUBWR 	24H, 0H 		//0174 	1224
		BTSS 	3H, 0H 			//0175 	2C03
		LJUMP 	186H 			//0176 	3986
		LDWI 	1H 			//0177 	0001

		//;NFB.C: 135: Smoketimer = 1;
		CLRF 	59H 			//0178 	11D9
		INCR 	59H, 1H 		//0179 	1AD9
		CLRF 	5AH 			//017A 	11DA

		//;NFB.C: 136: Smoketimecnt++;
		MOVLB 	3H 			//017B 	1023
		ADDWR 	58H, 1H 		//017C 	17D8
		LDWI 	0H 			//017D 	0000
		ADDWFC 	59H, 1H 		//017E 	0DD9
		ADDWFC 	5AH, 1H 		//017F 	0DDA
		ADDWFC 	5BH, 1H 		//0180 	0DDB

		//;NFB.C: 137: Smokecnt = 0;
		MOVLB 	4H 			//0181 	1024
		CLRF 	24H 			//0182 	11A4
		CLRF 	25H 			//0183 	11A5
		CLRF 	26H 			//0184 	11A6
		CLRF 	27H 			//0185 	11A7
		BCR 	7EH, 0H 			//0186 	207E
		RETI 					//0187 	1009
		MOVLP 	1H 			//0188 	0181
		LJUMP 	18AH 			//0189 	398A
		LDWI 	E6H 			//018A 	00E6
		CLRF 	56H 			//018B 	11D6
		STR 	57H 			//018C 	10D7
		LDWI 	43H 			//018D 	0043
		STR 	58H 			//018E 	10D8
		LDWI 	5H 			//018F 	0005
		STR 	59H 			//0190 	10D9
		LDWI 	FH 			//0191 	000F
		CLRF 	5AH 			//0192 	11DA
		STR 	5BH 			//0193 	10DB
		LDWI 	36H 			//0194 	0036
		CLRF 	5CH 			//0195 	11DC
		STR 	5DH 			//0196 	10DD
		LDWI 	1H 			//0197 	0001
		STR 	5EH 			//0198 	10DE
		MOVLB 	3H 			//0199 	1023
		LDWI 	1BH 			//019A 	001B
		STR 	6EH 			//019B 	10EE
		CLRF 	6FH 			//019C 	11EF
		MOVLB 	4H 			//019D 	1024
		LDWI 	80H 			//019E 	0080
		STR 	6DH 			//019F 	10ED
		LDWI 	DEH 			//01A0 	00DE
		STR 	6EH 			//01A1 	10EE
		LDWI 	43H 			//01A2 	0043
		STR 	6FH 			//01A3 	10EF
		MOVLB 	0H 			//01A4 	1020
		LDWI 	D8H 			//01A5 	00D8
		CLRF 	5FH 			//01A6 	11DF
		CLRF 	60H 			//01A7 	11E0
		CLRF 	61H 			//01A8 	11E1
		CLRF 	62H 			//01A9 	11E2
		STR 	4H 			//01AA 	1084
		LDWI 	1H 			//01AB 	0001
		STR 	5H 			//01AC 	1085
		LDWI 	16H 			//01AD 	0016
		MOVLP 	1DH 			//01AE 	019D
		LCALL 	57CH 			//01AF 	357C
		MOVLP 	1H 			//01B0 	0181
		LDWI 	20H 			//01B1 	0020
		STR 	4H 			//01B2 	1084
		LDWI 	2H 			//01B3 	0002
		STR 	5H 			//01B4 	1085
		LDWI 	4DH 			//01B5 	004D
		MOVLP 	1DH 			//01B6 	019D
		LCALL 	57CH 			//01B7 	357C
		MOVLP 	1H 			//01B8 	0181
		LDWI 	A0H 			//01B9 	00A0
		STR 	4H 			//01BA 	1084
		LDWI 	2H 			//01BB 	0002
		STR 	5H 			//01BC 	1085
		LDWI 	AH 			//01BD 	000A
		MOVLP 	1DH 			//01BE 	019D
		LCALL 	57CH 			//01BF 	357C
		BCR 	7EH, 0H 			//01C0 	207E
		MOVLB 	0H 			//01C1 	1020
		MOVLP 	1EH 			//01C2 	019E
		LJUMP 	6D6H 			//01C3 	3ED6
		LDR 	35H, 0H 			//01C4 	1835
		STR 	2DH 			//01C5 	10AD
		LDR 	36H, 0H 			//01C6 	1836
		STR 	2EH 			//01C7 	10AE
		LDWI 	8EH 			//01C8 	008E
		CLRF 	2FH 			//01C9 	11AF
		STR 	30H 			//01CA 	10B0
		CLRF 	31H 			//01CB 	11B1
		LCALL 	5E5H 			//01CC 	35E5
		LDR 	2DH, 0H 			//01CD 	182D
		STR 	35H 			//01CE 	10B5
		LDR 	2EH, 0H 			//01CF 	182E
		STR 	36H 			//01D0 	10B6
		LDR 	2FH, 0H 			//01D1 	182F
		STR 	37H 			//01D2 	10B7
		RET 					//01D3 	1008
		LDWI 	8EH 			//01D4 	008E
		STR 	39H 			//01D5 	10B9
		LDWI 	FFH 			//01D6 	00FF
		ANDWR 	38H, 0H 		//01D7 	1538
		BTSC 	3H, 2H 			//01D8 	2903
		LJUMP 	1E0H 			//01D9 	39E0
		LSRF 	38H, 1H 		//01DA 	06B8
		RRR 	37H, 1H 			//01DB 	1CB7
		RRR 	36H, 1H 			//01DC 	1CB6
		RRR 	35H, 1H 			//01DD 	1CB5
		INCR 	39H, 1H 		//01DE 	1AB9
		LJUMP 	1D6H 			//01DF 	39D6
		LDR 	35H, 0H 			//01E0 	1835
		STR 	2DH 			//01E1 	10AD
		LDR 	36H, 0H 			//01E2 	1836
		STR 	2EH 			//01E3 	10AE
		LDR 	37H, 0H 			//01E4 	1837
		STR 	2FH 			//01E5 	10AF
		LDR 	39H, 0H 			//01E6 	1839
		STR 	30H 			//01E7 	10B0
		CLRF 	31H 			//01E8 	11B1
		LCALL 	5E5H 			//01E9 	35E5
		LDR 	2DH, 0H 			//01EA 	182D
		STR 	35H 			//01EB 	10B5
		LDR 	2EH, 0H 			//01EC 	182E
		STR 	36H 			//01ED 	10B6
		LDR 	2FH, 0H 			//01EE 	182F
		STR 	37H 			//01EF 	10B7
		RET 					//01F0 	1008
		LDR 	41H, 0H 			//01F1 	1841
		STR 	47H 			//01F2 	10C7
		LDR 	42H, 0H 			//01F3 	1842
		STR 	48H 			//01F4 	10C8
		LDR 	43H, 0H 			//01F5 	1843
		STR 	49H 			//01F6 	10C9
		BCR 	3H, 0H 			//01F7 	2003
		RLR 	48H, 0H 			//01F8 	1D48
		RLR 	49H, 0H 			//01F9 	1D49
		STR 	4CH 			//01FA 	10CC
		LDR 	44H, 0H 			//01FB 	1844
		STR 	47H 			//01FC 	10C7
		LDR 	45H, 0H 			//01FD 	1845
		STR 	48H 			//01FE 	10C8
		LDR 	46H, 0H 			//01FF 	1846
		STR 	49H 			//0200 	10C9
		BCR 	3H, 0H 			//0201 	2003
		RLR 	48H, 0H 			//0202 	1D48
		RLR 	49H, 0H 			//0203 	1D49
		STR 	4BH 			//0204 	10CB
		LDR 	4CH, 0H 			//0205 	184C
		BTSC 	3H, 2H 			//0206 	2903
		LJUMP 	214H 			//0207 	3A14
		LDR 	4BH, 0H 			//0208 	184B
		SUBWR 	4CH, 0H 		//0209 	124C
		LDR 	4BH, 0H 			//020A 	184B
		BTSC 	3H, 0H 			//020B 	2803
		LJUMP 	21CH 			//020C 	3A1C
		STR 	47H 			//020D 	10C7
		LDR 	4CH, 0H 			//020E 	184C
		SUBWR 	47H, 1H 		//020F 	12C7
		LDWI 	19H 			//0210 	0019
		SUBWR 	47H, 0H 		//0211 	1247
		BTSS 	3H, 0H 			//0212 	2C03
		LJUMP 	21BH 			//0213 	3A1B
		LDR 	44H, 0H 			//0214 	1844
		STR 	41H 			//0215 	10C1
		LDR 	45H, 0H 			//0216 	1845
		STR 	42H 			//0217 	10C2
		LDR 	46H, 0H 			//0218 	1846
		STR 	43H 			//0219 	10C3
		RET 					//021A 	1008
		LDR 	4BH, 0H 			//021B 	184B
		BTSC 	3H, 2H 			//021C 	2903
		RET 					//021D 	1008
		LDR 	4CH, 0H 			//021E 	184C
		SUBWR 	4BH, 0H 		//021F 	124B
		BTSC 	3H, 0H 			//0220 	2803
		LJUMP 	22AH 			//0221 	3A2A
		LDR 	4CH, 0H 			//0222 	184C
		STR 	47H 			//0223 	10C7
		LDR 	4BH, 0H 			//0224 	184B
		SUBWR 	47H, 1H 		//0225 	12C7
		LDWI 	19H 			//0226 	0019
		SUBWR 	47H, 0H 		//0227 	1247
		BTSC 	3H, 0H 			//0228 	2803
		RET 					//0229 	1008
		LDWI 	6H 			//022A 	0006
		STR 	4AH 			//022B 	10CA
		BTSC 	43H, 7H 		//022C 	2BC3
		BSR 	4AH, 7H 			//022D 	27CA
		BTSC 	46H, 7H 		//022E 	2BC6
		BSR 	4AH, 6H 			//022F 	274A
		BSR 	42H, 7H 			//0230 	27C2
		CLRF 	43H 			//0231 	11C3
		BSR 	45H, 7H 			//0232 	27C5
		CLRF 	46H 			//0233 	11C6
		LDR 	4BH, 0H 			//0234 	184B
		SUBWR 	4CH, 0H 		//0235 	124C
		BTSC 	3H, 0H 			//0236 	2803
		LJUMP 	24FH 			//0237 	3A4F
		LSLF 	44H, 1H 		//0238 	05C4
		RLR 	45H, 1H 			//0239 	1DC5
		RLR 	46H, 1H 			//023A 	1DC6
		DECR 	4BH, 1H 		//023B 	13CB
		LDR 	4BH, 0H 			//023C 	184B
		XORWR 	4CH, 0H 		//023D 	164C
		BTSC 	3H, 2H 			//023E 	2903
		LJUMP 	24AH 			//023F 	3A4A
		DECR 	4AH, 1H 		//0240 	13CA
		LDR 	4AH, 0H 			//0241 	184A
		ANDWI 	7H 			//0242 	0907
		BTSC 	3H, 2H 			//0243 	2903
		LJUMP 	24AH 			//0244 	3A4A
		LJUMP 	238H 			//0245 	3A38
		LSRF 	43H, 1H 		//0246 	06C3
		RRR 	42H, 1H 			//0247 	1CC2
		RRR 	41H, 1H 			//0248 	1CC1
		INCR 	4CH, 1H 		//0249 	1ACC
		LDR 	4CH, 0H 			//024A 	184C
		XORWR 	4BH, 0H 		//024B 	164B
		BTSC 	3H, 2H 			//024C 	2903
		LJUMP 	269H 			//024D 	3A69
		LJUMP 	246H 			//024E 	3A46
		LDR 	4CH, 0H 			//024F 	184C
		SUBWR 	4BH, 0H 		//0250 	124B
		BTSC 	3H, 0H 			//0251 	2803
		LJUMP 	269H 			//0252 	3A69
		LSLF 	41H, 1H 		//0253 	05C1
		RLR 	42H, 1H 			//0254 	1DC2
		RLR 	43H, 1H 			//0255 	1DC3
		DECR 	4CH, 1H 		//0256 	13CC
		LDR 	4BH, 0H 			//0257 	184B
		XORWR 	4CH, 0H 		//0258 	164C
		BTSC 	3H, 2H 			//0259 	2903
		LJUMP 	265H 			//025A 	3A65
		DECR 	4AH, 1H 		//025B 	13CA
		LDR 	4AH, 0H 			//025C 	184A
		ANDWI 	7H 			//025D 	0907
		BTSC 	3H, 2H 			//025E 	2903
		LJUMP 	265H 			//025F 	3A65
		LJUMP 	253H 			//0260 	3A53
		LSRF 	46H, 1H 		//0261 	06C6
		RRR 	45H, 1H 			//0262 	1CC5
		RRR 	44H, 1H 			//0263 	1CC4
		INCR 	4BH, 1H 		//0264 	1ACB
		LDR 	4CH, 0H 			//0265 	184C
		XORWR 	4BH, 0H 		//0266 	164B
		BTSS 	3H, 2H 			//0267 	2D03
		LJUMP 	261H 			//0268 	3A61
		BTSS 	4AH, 7H 		//0269 	2FCA
		LJUMP 	274H 			//026A 	3A74
		LDWI 	FFH 			//026B 	00FF
		XORWR 	41H, 1H 		//026C 	16C1
		XORWR 	42H, 1H 		//026D 	16C2
		XORWR 	43H, 1H 		//026E 	16C3
		INCR 	41H, 1H 		//026F 	1AC1
		BTSC 	3H, 2H 			//0270 	2903
		INCR 	42H, 1H 		//0271 	1AC2
		BTSC 	3H, 2H 			//0272 	2903
		INCR 	43H, 1H 		//0273 	1AC3
		BTSS 	4AH, 6H 		//0274 	2F4A
		LJUMP 	27CH 			//0275 	3A7C
		LCALL 	7B0H 			//0276 	37B0
		MOVLP 	1H 			//0277 	0181
		BTSC 	3H, 2H 			//0278 	2903
		INCR 	45H, 1H 		//0279 	1AC5
		BTSC 	3H, 2H 			//027A 	2903
		INCR 	46H, 1H 		//027B 	1AC6
		CLRF 	4AH 			//027C 	11CA
		LDR 	41H, 0H 			//027D 	1841
		ADDWR 	44H, 1H 		//027E 	17C4
		LDR 	42H, 0H 			//027F 	1842
		ADDWFC 	45H, 1H 		//0280 	0DC5
		LDR 	43H, 0H 			//0281 	1843
		ADDWFC 	46H, 1H 		//0282 	0DC6
		BTSS 	46H, 7H 		//0283 	2FC6
		LJUMP 	28DH 			//0284 	3A8D
		LCALL 	7B0H 			//0285 	37B0
		MOVLP 	1H 			//0286 	0181
		BTSC 	3H, 2H 			//0287 	2903
		INCR 	45H, 1H 		//0288 	1AC5
		BTSC 	3H, 2H 			//0289 	2903
		INCR 	46H, 1H 		//028A 	1AC6
		CLRF 	4AH 			//028B 	11CA
		INCR 	4AH, 1H 		//028C 	1ACA
		LDR 	44H, 0H 			//028D 	1844
		STR 	2DH 			//028E 	10AD
		LDR 	45H, 0H 			//028F 	1845
		STR 	2EH 			//0290 	10AE
		LDR 	46H, 0H 			//0291 	1846
		STR 	2FH 			//0292 	10AF
		LDR 	4CH, 0H 			//0293 	184C
		STR 	30H 			//0294 	10B0
		LDR 	4AH, 0H 			//0295 	184A
		STR 	31H 			//0296 	10B1
		LCALL 	5E5H 			//0297 	35E5
		LDR 	2DH, 0H 			//0298 	182D
		STR 	41H 			//0299 	10C1
		LDR 	2EH, 0H 			//029A 	182E
		STR 	42H 			//029B 	10C2
		LDR 	2FH, 0H 			//029C 	182F
		STR 	43H 			//029D 	10C3
		RET 					//029E 	1008
		MOVLB 	1H 			//029F 	1021
		STR 	36H 			//02A0 	10B6
		LDWI 	6EH 			//02A1 	006E
		SUBWR 	36H, 0H 		//02A2 	1236
		BTSS 	3H, 0H 			//02A3 	2C03
		LJUMP 	2ECH 			//02A4 	3AEC
		LDWI 	AH 			//02A5 	000A
		MOVLB 	0H 			//02A6 	1020
		STR 	32H 			//02A7 	10B2
		LDWI 	64H 			//02A8 	0064
		STR 	2DH 			//02A9 	10AD
		MOVLB 	1H 			//02AA 	1021
		LDR 	36H, 0H 			//02AB 	1836
		LCALL 	4A9H 			//02AC 	34A9
		MOVLP 	1H 			//02AD 	0181
		LCALL 	490H 			//02AE 	3490
		MOVLP 	1H 			//02AF 	0181
		LCALL 	731H 			//02B0 	3731
		MOVLP 	1H 			//02B1 	0181
		LCALL 	402H 			//02B2 	3402
		MOVLP 	1H 			//02B3 	0181
		LCALL 	6F7H 			//02B4 	36F7
		MOVLP 	1H 			//02B5 	0181
		LCALL 	6DEH 			//02B6 	36DE
		MOVLP 	1H 			//02B7 	0181
		LDWI 	64H 			//02B8 	0064
		LCALL 	7BBH 			//02B9 	37BB
		MOVLP 	1H 			//02BA 	0181
		LCALL 	490H 			//02BB 	3490
		MOVLP 	1H 			//02BC 	0181
		LCALL 	731H 			//02BD 	3731
		MOVLP 	1H 			//02BE 	0181
		LCALL 	402H 			//02BF 	3402
		MOVLP 	1H 			//02C0 	0181
		LCALL 	72AH 			//02C1 	372A
		MOVLP 	1H 			//02C2 	0181
		LCALL 	6EEH 			//02C3 	36EE
		MOVLP 	1H 			//02C4 	0181
		LCALL 	577H 			//02C5 	3577
		MOVLP 	1H 			//02C6 	0181
		LCALL 	79CH 			//02C7 	379C
		MOVLP 	1H 			//02C8 	0181
		LCALL 	7AAH 			//02C9 	37AA
		MOVLP 	1H 			//02CA 	0181
		LCALL 	4A9H 			//02CB 	34A9
		MOVLP 	1H 			//02CC 	0181
		LCALL 	731H 			//02CD 	3731
		MOVLP 	1H 			//02CE 	0181
		LCALL 	402H 			//02CF 	3402
		MOVLP 	1H 			//02D0 	0181
		LCALL 	6E7H 			//02D1 	36E7
		MOVLP 	1H 			//02D2 	0181
		LCALL 	6DEH 			//02D3 	36DE
		MOVLP 	1H 			//02D4 	0181
		LCALL 	780H 			//02D5 	3780
		MOVLP 	1H 			//02D6 	0181
		LCALL 	577H 			//02D7 	3577
		MOVLP 	1H 			//02D8 	0181
		LDR 	20H, 0H 			//02D9 	1820
		STR 	30H 			//02DA 	10B0
		LDR 	21H, 0H 			//02DB 	1821
		STR 	31H 			//02DC 	10B1
		LDR 	22H, 0H 			//02DD 	1822
		STR 	32H 			//02DE 	10B2
		LDWI 	3FH 			//02DF 	003F
		CLRF 	20H 			//02E0 	11A0
		CLRF 	21H 			//02E1 	11A1
		STR 	22H 			//02E2 	10A2
		LDR 	30H, 0H 			//02E3 	1830
		STR 	23H 			//02E4 	10A3
		LDR 	31H, 0H 			//02E5 	1831
		STR 	24H 			//02E6 	10A4
		LDR 	32H, 0H 			//02E7 	1832
		STR 	25H 			//02E8 	10A5
		LCALL 	577H 			//02E9 	3577
		MOVLP 	1H 			//02EA 	0181
		LJUMP 	761H 			//02EB 	3F61
		LDWI 	BH 			//02EC 	000B
		SUBWR 	36H, 0H 		//02ED 	1236
		BTSS 	3H, 0H 			//02EE 	2C03
		LJUMP 	316H 			//02EF 	3B16
		LCALL 	7AAH 			//02F0 	37AA
		MOVLP 	1H 			//02F1 	0181
		LCALL 	4A9H 			//02F2 	34A9
		MOVLP 	1H 			//02F3 	0181
		LCALL 	731H 			//02F4 	3731
		MOVLP 	1H 			//02F5 	0181
		LCALL 	402H 			//02F6 	3402
		MOVLP 	1H 			//02F7 	0181
		LCALL 	6E7H 			//02F8 	36E7
		MOVLP 	1H 			//02F9 	0181
		LCALL 	6DEH 			//02FA 	36DE
		MOVLP 	1H 			//02FB 	0181
		LDWI 	AH 			//02FC 	000A
		LCALL 	7BBH 			//02FD 	37BB
		MOVLP 	1H 			//02FE 	0181
		LCALL 	490H 			//02FF 	3490
		MOVLP 	1H 			//0300 	0181
		LCALL 	731H 			//0301 	3731
		MOVLP 	1H 			//0302 	0181
		LCALL 	402H 			//0303 	3402
		MOVLP 	1H 			//0304 	0181
		LCALL 	6F7H 			//0305 	36F7
		MOVLP 	1H 			//0306 	0181
		LCALL 	6EEH 			//0307 	36EE
		MOVLP 	1H 			//0308 	0181
		LCALL 	577H 			//0309 	3577
		MOVLP 	1H 			//030A 	0181
		LCALL 	79CH 			//030B 	379C
		MOVLP 	1H 			//030C 	0181
		LDWI 	3FH 			//030D 	003F
		CLRF 	20H 			//030E 	11A0
		CLRF 	21H 			//030F 	11A1
		STR 	22H 			//0310 	10A2
		LCALL 	780H 			//0311 	3780
		MOVLP 	1H 			//0312 	0181
		LCALL 	577H 			//0313 	3577
		MOVLP 	1H 			//0314 	0181
		LJUMP 	761H 			//0315 	3F61
		LDWI 	3FH 			//0316 	003F
		CLRF 	20H 			//0317 	11A0
		CLRF 	21H 			//0318 	11A1
		STR 	22H 			//0319 	10A2
		LDR 	36H, 0H 			//031A 	1836
		MOVLB 	0H 			//031B 	1020
		LCALL 	731H 			//031C 	3731
		MOVLP 	1H 			//031D 	0181
		LCALL 	402H 			//031E 	3402
		MOVLP 	1H 			//031F 	0181
		LCALL 	6E7H 			//0320 	36E7
		MOVLP 	1H 			//0321 	0181
		LCALL 	6EEH 			//0322 	36EE
		MOVLP 	1H 			//0323 	0181
		LCALL 	577H 			//0324 	3577
		MOVLP 	1H 			//0325 	0181
		LJUMP 	761H 			//0326 	3F61
		MOVLB 	1H 			//0327 	1021
		STR 	33H 			//0328 	10B3
		BTSS 	33H, 7H 		//0329 	2FB3
		LJUMP 	395H 			//032A 	3B95
		COMR 	33H, 1H 		//032B 	19B3
		INCR 	33H, 1H 		//032C 	1AB3
		LDR 	33H, 0H 			//032D 	1833
		XORWI 	80H 			//032E 	0A80
		ADDWI 	12H 			//032F 	0E12
		BTSS 	3H, 0H 			//0330 	2C03
		LJUMP 	36AH 			//0331 	3B6A
		LCALL 	737H 			//0332 	3737
		MOVLP 	1H 			//0333 	0181
		LCALL 	778H 			//0334 	3778
		MOVLP 	1H 			//0335 	0181
		LCALL 	457H 			//0336 	3457
		MOVLP 	1H 			//0337 	0181
		LCALL 	7B6H 			//0338 	37B6
		MOVLP 	1H 			//0339 	0181
		LCALL 	417H 			//033A 	3417
		MOVLP 	1H 			//033B 	0181
		LCALL 	6FEH 			//033C 	36FE
		MOVLP 	1H 			//033D 	0181
		LCALL 	402H 			//033E 	3402
		MOVLP 	1H 			//033F 	0181
		LCALL 	6F7H 			//0340 	36F7
		MOVLP 	1H 			//0341 	0181
		LCALL 	6DEH 			//0342 	36DE
		MOVLP 	1H 			//0343 	0181
		LDWI 	64H 			//0344 	0064
		MOVLB 	0H 			//0345 	1020
		STR 	33H 			//0346 	10B3
		LCALL 	74EH 			//0347 	374E
		MOVLP 	1H 			//0348 	0181
		BTSC 	35H, 7H 		//0349 	2BB5
		DECR 	36H, 1H 		//034A 	13B6
		LCALL 	417H 			//034B 	3417
		MOVLP 	1H 			//034C 	0181
		LCALL 	6FEH 			//034D 	36FE
		MOVLP 	1H 			//034E 	0181
		LCALL 	402H 			//034F 	3402
		MOVLP 	1H 			//0350 	0181
		LCALL 	72AH 			//0351 	372A
		MOVLP 	1H 			//0352 	0181
		LCALL 	6EEH 			//0353 	36EE
		MOVLP 	1H 			//0354 	0181
		LCALL 	577H 			//0355 	3577
		MOVLP 	1H 			//0356 	0181
		LCALL 	722H 			//0357 	3722
		MOVLP 	1H 			//0358 	0181
		LCALL 	712H 			//0359 	3712
		MOVLP 	1H 			//035A 	0181
		LCALL 	457H 			//035B 	3457
		MOVLP 	1H 			//035C 	0181
		LCALL 	746H 			//035D 	3746
		MOVLP 	1H 			//035E 	0181
		LCALL 	402H 			//035F 	3402
		MOVLP 	1H 			//0360 	0181
		LCALL 	6E7H 			//0361 	36E7
		MOVLP 	1H 			//0362 	0181
		LCALL 	6DEH 			//0363 	36DE
		MOVLP 	1H 			//0364 	0181
		LCALL 	795H 			//0365 	3795
		MOVLP 	1H 			//0366 	0181
		LCALL 	577H 			//0367 	3577
		MOVLP 	1H 			//0368 	0181
		LJUMP 	73FH 			//0369 	3F3F
		LCALL 	7C4H 			//036A 	37C4
		MOVLP 	1H 			//036B 	0181
		BTSS 	3H, 0H 			//036C 	2C03
		LJUMP 	38DH 			//036D 	3B8D
		LCALL 	712H 			//036E 	3712
		MOVLP 	1H 			//036F 	0181
		LCALL 	457H 			//0370 	3457
		MOVLP 	1H 			//0371 	0181
		LCALL 	746H 			//0372 	3746
		MOVLP 	1H 			//0373 	0181
		LCALL 	402H 			//0374 	3402
		MOVLP 	1H 			//0375 	0181
		LCALL 	6E7H 			//0376 	36E7
		MOVLP 	1H 			//0377 	0181
		LCALL 	6DEH 			//0378 	36DE
		MOVLP 	1H 			//0379 	0181
		LCALL 	737H 			//037A 	3737
		MOVLP 	1H 			//037B 	0181
		STR 	35H 			//037C 	10B5
		CLRF 	36H 			//037D 	11B6
		BTSC 	35H, 7H 		//037E 	2BB5
		DECR 	36H, 1H 		//037F 	13B6
		LCALL 	417H 			//0380 	3417
		MOVLP 	1H 			//0381 	0181
		LCALL 	6FEH 			//0382 	36FE
		MOVLP 	1H 			//0383 	0181
		LCALL 	402H 			//0384 	3402
		MOVLP 	1H 			//0385 	0181
		LCALL 	6F7H 			//0386 	36F7
		MOVLP 	1H 			//0387 	0181
		LCALL 	6EEH 			//0388 	36EE
		MOVLP 	1H 			//0389 	0181
		LCALL 	577H 			//038A 	3577
		MOVLP 	1H 			//038B 	0181
		LJUMP 	73FH 			//038C 	3F3F
		MOVLB 	0H 			//038D 	1020
		LCALL 	731H 			//038E 	3731
		MOVLP 	1H 			//038F 	0181
		LCALL 	402H 			//0390 	3402
		MOVLP 	1H 			//0391 	0181
		LCALL 	6E7H 			//0392 	36E7
		MOVLP 	1H 			//0393 	0181
		LJUMP 	76FH 			//0394 	3F6F
		LDR 	33H, 0H 			//0395 	1833
		XORWI 	80H 			//0396 	0A80
		ADDWI 	12H 			//0397 	0E12
		BTSS 	3H, 0H 			//0398 	2C03
		LJUMP 	3D7H 			//0399 	3BD7
		LCALL 	737H 			//039A 	3737
		MOVLP 	1H 			//039B 	0181
		LCALL 	778H 			//039C 	3778
		MOVLP 	1H 			//039D 	0181
		LCALL 	457H 			//039E 	3457
		MOVLP 	1H 			//039F 	0181
		LCALL 	7B6H 			//03A0 	37B6
		MOVLP 	1H 			//03A1 	0181
		LCALL 	417H 			//03A2 	3417
		MOVLP 	1H 			//03A3 	0181
		LCALL 	6FEH 			//03A4 	36FE
		MOVLP 	1H 			//03A5 	0181
		LCALL 	402H 			//03A6 	3402
		MOVLP 	1H 			//03A7 	0181
		LCALL 	768H 			//03A8 	3768
		MOVLP 	1H 			//03A9 	0181
		LCALL 	6DEH 			//03AA 	36DE
		MOVLP 	1H 			//03AB 	0181
		LDWI 	64H 			//03AC 	0064
		MOVLB 	0H 			//03AD 	1020
		STR 	33H 			//03AE 	10B3
		LCALL 	74EH 			//03AF 	374E
		MOVLP 	1H 			//03B0 	0181
		BTSC 	35H, 7H 		//03B1 	2BB5
		DECR 	36H, 1H 		//03B2 	13B6
		LCALL 	417H 			//03B3 	3417
		MOVLP 	1H 			//03B4 	0181
		LCALL 	6FEH 			//03B5 	36FE
		MOVLP 	1H 			//03B6 	0181
		LCALL 	402H 			//03B7 	3402
		MOVLP 	1H 			//03B8 	0181
		LDR 	3CH, 0H 			//03B9 	183C
		STR 	5H 			//03BA 	1085
		LDR 	3BH, 0H 			//03BB 	183B
		STR 	4H 			//03BC 	1084
		LDWI 	89H 			//03BD 	0089
		ADDWR 	4H, 1H 		//03BE 	1784
		LDWI 	A0H 			//03BF 	00A0
		LCALL 	6EEH 			//03C0 	36EE
		MOVLP 	1H 			//03C1 	0181
		LCALL 	577H 			//03C2 	3577
		MOVLP 	1H 			//03C3 	0181
		LCALL 	722H 			//03C4 	3722
		MOVLP 	1H 			//03C5 	0181
		LCALL 	712H 			//03C6 	3712
		MOVLP 	1H 			//03C7 	0181
		LCALL 	457H 			//03C8 	3457
		MOVLP 	1H 			//03C9 	0181
		LCALL 	746H 			//03CA 	3746
		MOVLP 	1H 			//03CB 	0181
		LCALL 	402H 			//03CC 	3402
		MOVLP 	1H 			//03CD 	0181
		LCALL 	71BH 			//03CE 	371B
		MOVLP 	1H 			//03CF 	0181
		LCALL 	6DEH 			//03D0 	36DE
		MOVLP 	1H 			//03D1 	0181
		LCALL 	795H 			//03D2 	3795
		MOVLP 	1H 			//03D3 	0181
		LCALL 	577H 			//03D4 	3577
		MOVLP 	1H 			//03D5 	0181
		LJUMP 	73FH 			//03D6 	3F3F
		LCALL 	7C4H 			//03D7 	37C4
		MOVLP 	1H 			//03D8 	0181
		BTSS 	3H, 0H 			//03D9 	2C03
		LJUMP 	3FAH 			//03DA 	3BFA
		LCALL 	712H 			//03DB 	3712
		MOVLP 	1H 			//03DC 	0181
		LCALL 	457H 			//03DD 	3457
		MOVLP 	1H 			//03DE 	0181
		LCALL 	746H 			//03DF 	3746
		MOVLP 	1H 			//03E0 	0181
		LCALL 	402H 			//03E1 	3402
		MOVLP 	1H 			//03E2 	0181
		LCALL 	71BH 			//03E3 	371B
		MOVLP 	1H 			//03E4 	0181
		LCALL 	6DEH 			//03E5 	36DE
		MOVLP 	1H 			//03E6 	0181
		LCALL 	737H 			//03E7 	3737
		MOVLP 	1H 			//03E8 	0181
		STR 	35H 			//03E9 	10B5
		CLRF 	36H 			//03EA 	11B6
		BTSC 	35H, 7H 		//03EB 	2BB5
		DECR 	36H, 1H 		//03EC 	13B6
		LCALL 	417H 			//03ED 	3417
		MOVLP 	1H 			//03EE 	0181
		LCALL 	6FEH 			//03EF 	36FE
		MOVLP 	1H 			//03F0 	0181
		LCALL 	402H 			//03F1 	3402
		MOVLP 	1H 			//03F2 	0181
		LCALL 	768H 			//03F3 	3768
		MOVLP 	1H 			//03F4 	0181
		LCALL 	6EEH 			//03F5 	36EE
		MOVLP 	1H 			//03F6 	0181
		LCALL 	577H 			//03F7 	3577
		MOVLP 	1H 			//03F8 	0181
		LJUMP 	73FH 			//03F9 	3F3F
		MOVLB 	0H 			//03FA 	1020
		LCALL 	731H 			//03FB 	3731
		MOVLP 	1H 			//03FC 	0181
		LCALL 	402H 			//03FD 	3402
		MOVLP 	1H 			//03FE 	0181
		LCALL 	71BH 			//03FF 	371B
		MOVLP 	1H 			//0400 	0181
		LJUMP 	76FH 			//0401 	3F6F
		CLRF 	3FH 			//0402 	11BF
		CLRF 	40H 			//0403 	11C0
		BTSS 	3BH, 0H 		//0404 	2C3B
		LJUMP 	40AH 			//0405 	3C0A
		LDR 	3DH, 0H 			//0406 	183D
		ADDWR 	3FH, 1H 		//0407 	17BF
		LDR 	3EH, 0H 			//0408 	183E
		ADDWFC 	40H, 1H 		//0409 	0DC0
		LSLF 	3DH, 1H 		//040A 	05BD
		RLR 	3EH, 1H 			//040B 	1DBE
		LSRF 	3CH, 1H 		//040C 	06BC
		RRR 	3BH, 1H 			//040D 	1CBB
		LDR 	3BH, 0H 			//040E 	183B
		IORWR 	3CH, 0H 		//040F 	143C
		BTSS 	3H, 2H 			//0410 	2D03
		LJUMP 	404H 			//0411 	3C04
		LDR 	40H, 0H 			//0412 	1840
		STR 	3CH 			//0413 	10BC
		LDR 	3FH, 0H 			//0414 	183F
		STR 	3BH 			//0415 	10BB
		RET 					//0416 	1008
		CLRF 	38H 			//0417 	11B8
		BTSS 	34H, 7H 		//0418 	2FB4
		LJUMP 	421H 			//0419 	3C21
		COMR 	33H, 1H 		//041A 	19B3
		COMR 	34H, 1H 		//041B 	19B4
		INCR 	33H, 1H 		//041C 	1AB3
		BTSC 	3H, 2H 			//041D 	2903
		INCR 	34H, 1H 		//041E 	1AB4
		CLRF 	38H 			//041F 	11B8
		INCR 	38H, 1H 		//0420 	1AB8
		BTSS 	36H, 7H 		//0421 	2FB6
		LJUMP 	42AH 			//0422 	3C2A
		COMR 	35H, 1H 		//0423 	19B5
		COMR 	36H, 1H 		//0424 	19B6
		INCR 	35H, 1H 		//0425 	1AB5
		BTSC 	3H, 2H 			//0426 	2903
		INCR 	36H, 1H 		//0427 	1AB6
		LDWI 	1H 			//0428 	0001
		XORWR 	38H, 1H 		//0429 	16B8
		CLRF 	39H 			//042A 	11B9
		CLRF 	3AH 			//042B 	11BA
		LDR 	33H, 0H 			//042C 	1833
		IORWR 	34H, 0H 		//042D 	1434
		BTSC 	3H, 2H 			//042E 	2903
		LJUMP 	44AH 			//042F 	3C4A
		CLRF 	37H 			//0430 	11B7
		INCR 	37H, 1H 		//0431 	1AB7
		BTSC 	34H, 7H 		//0432 	2BB4
		LJUMP 	437H 			//0433 	3C37
		LSLF 	33H, 1H 		//0434 	05B3
		RLR 	34H, 1H 			//0435 	1DB4
		LJUMP 	431H 			//0436 	3C31
		LSLF 	39H, 1H 		//0437 	05B9
		RLR 	3AH, 1H 			//0438 	1DBA
		LDR 	34H, 0H 			//0439 	1834
		SUBWR 	36H, 0H 		//043A 	1236
		BTSS 	3H, 2H 			//043B 	2D03
		LJUMP 	43FH 			//043C 	3C3F
		LDR 	33H, 0H 			//043D 	1833
		SUBWR 	35H, 0H 		//043E 	1235
		BTSS 	3H, 0H 			//043F 	2C03
		LJUMP 	446H 			//0440 	3C46
		LDR 	33H, 0H 			//0441 	1833
		SUBWR 	35H, 1H 		//0442 	12B5
		LDR 	34H, 0H 			//0443 	1834
		SUBWFB 	36H, 1H 		//0444 	0BB6
		BSR 	39H, 0H 			//0445 	2439
		LSRF 	34H, 1H 		//0446 	06B4
		RRR 	33H, 1H 			//0447 	1CB3
		DECRSZ 	37H, 1H 		//0448 	1BB7
		LJUMP 	437H 			//0449 	3C37
		LDR 	38H, 0H 			//044A 	1838
		BTSC 	3H, 2H 			//044B 	2903
		LJUMP 	452H 			//044C 	3C52
		COMR 	39H, 1H 		//044D 	19B9
		COMR 	3AH, 1H 		//044E 	19BA
		INCR 	39H, 1H 		//044F 	1AB9
		BTSC 	3H, 2H 			//0450 	2903
		INCR 	3AH, 1H 		//0451 	1ABA
		LDR 	3AH, 0H 			//0452 	183A
		STR 	34H 			//0453 	10B4
		LDR 	39H, 0H 			//0454 	1839
		STR 	33H 			//0455 	10B3
		RET 					//0456 	1008
		CLRF 	32H 			//0457 	11B2
		BTSS 	30H, 7H 		//0458 	2FB0
		LJUMP 	461H 			//0459 	3C61
		COMR 	2FH, 1H 		//045A 	19AF
		COMR 	30H, 1H 		//045B 	19B0
		INCR 	2FH, 1H 		//045C 	1AAF
		BTSC 	3H, 2H 			//045D 	2903
		INCR 	30H, 1H 		//045E 	1AB0
		CLRF 	32H 			//045F 	11B2
		INCR 	32H, 1H 		//0460 	1AB2
		BTSS 	2EH, 7H 		//0461 	2FAE
		LJUMP 	468H 			//0462 	3C68
		COMR 	2DH, 1H 		//0463 	19AD
		COMR 	2EH, 1H 		//0464 	19AE
		INCR 	2DH, 1H 		//0465 	1AAD
		BTSC 	3H, 2H 			//0466 	2903
		INCR 	2EH, 1H 		//0467 	1AAE
		LDR 	2DH, 0H 			//0468 	182D
		IORWR 	2EH, 0H 		//0469 	142E
		BTSC 	3H, 2H 			//046A 	2903
		LJUMP 	483H 			//046B 	3C83
		CLRF 	31H 			//046C 	11B1
		INCR 	31H, 1H 		//046D 	1AB1
		BTSC 	2EH, 7H 		//046E 	2BAE
		LJUMP 	473H 			//046F 	3C73
		LSLF 	2DH, 1H 		//0470 	05AD
		RLR 	2EH, 1H 			//0471 	1DAE
		LJUMP 	46DH 			//0472 	3C6D
		LDR 	2EH, 0H 			//0473 	182E
		SUBWR 	30H, 0H 		//0474 	1230
		BTSS 	3H, 2H 			//0475 	2D03
		LJUMP 	479H 			//0476 	3C79
		LDR 	2DH, 0H 			//0477 	182D
		SUBWR 	2FH, 0H 		//0478 	122F
		BTSS 	3H, 0H 			//0479 	2C03
		LJUMP 	47FH 			//047A 	3C7F
		LDR 	2DH, 0H 			//047B 	182D
		SUBWR 	2FH, 1H 		//047C 	12AF
		LDR 	2EH, 0H 			//047D 	182E
		SUBWFB 	30H, 1H 		//047E 	0BB0
		LSRF 	2EH, 1H 		//047F 	06AE
		RRR 	2DH, 1H 			//0480 	1CAD
		DECRSZ 	31H, 1H 		//0481 	1BB1
		LJUMP 	473H 			//0482 	3C73
		LDR 	32H, 0H 			//0483 	1832
		BTSC 	3H, 2H 			//0484 	2903
		LJUMP 	48BH 			//0485 	3C8B
		COMR 	2FH, 1H 		//0486 	19AF
		COMR 	30H, 1H 		//0487 	19B0
		INCR 	2FH, 1H 		//0488 	1AAF
		BTSC 	3H, 2H 			//0489 	2903
		INCR 	30H, 1H 		//048A 	1AB0
		LDR 	30H, 0H 			//048B 	1830
		STR 	2EH 			//048C 	10AE
		LDR 	2FH, 0H 			//048D 	182F
		STR 	2DH 			//048E 	10AD
		RET 					//048F 	1008
		MOVLB 	0H 			//0490 	1020
		STR 	33H 			//0491 	10B3
		CLRF 	35H 			//0492 	11B5
		LDR 	32H, 0H 			//0493 	1832
		BTSC 	3H, 2H 			//0494 	2903
		LJUMP 	4A7H 			//0495 	3CA7
		CLRF 	34H 			//0496 	11B4
		INCR 	34H, 1H 		//0497 	1AB4
		BTSC 	32H, 7H 		//0498 	2BB2
		LJUMP 	49CH 			//0499 	3C9C
		LSLF 	32H, 1H 		//049A 	05B2
		LJUMP 	497H 			//049B 	3C97
		LSLF 	35H, 1H 		//049C 	05B5
		LDR 	32H, 0H 			//049D 	1832
		SUBWR 	33H, 0H 		//049E 	1233
		BTSS 	3H, 0H 			//049F 	2C03
		LJUMP 	4A4H 			//04A0 	3CA4
		LDR 	32H, 0H 			//04A1 	1832
		SUBWR 	33H, 1H 		//04A2 	12B3
		BSR 	35H, 0H 			//04A3 	2435
		LSRF 	32H, 1H 		//04A4 	06B2
		DECRSZ 	34H, 1H 		//04A5 	1BB4
		LJUMP 	49CH 			//04A6 	3C9C
		LDR 	35H, 0H 			//04A7 	1835
		RET 					//04A8 	1008
		MOVLB 	0H 			//04A9 	1020
		STR 	2FH 			//04AA 	10AF
		LDWI 	8H 			//04AB 	0008
		STR 	30H 			//04AC 	10B0
		CLRF 	31H 			//04AD 	11B1
		LDR 	2FH, 0H 			//04AE 	182F
		STR 	2EH 			//04AF 	10AE
		LDWI 	7H 			//04B0 	0007
		LSRF 	2EH, 1H 		//04B1 	06AE
		DECRSZ 	9H, 1H 		//04B2 	1B89
		LJUMP 	4B1H 			//04B3 	3CB1
		LSLF 	31H, 0H 		//04B4 	0531
		IORWR 	2EH, 0H 		//04B5 	142E
		STR 	31H 			//04B6 	10B1
		LSLF 	2FH, 1H 		//04B7 	05AF
		LDR 	2DH, 0H 			//04B8 	182D
		SUBWR 	31H, 0H 		//04B9 	1231
		BTSS 	3H, 0H 			//04BA 	2C03
		LJUMP 	4BEH 			//04BB 	3CBE
		LDR 	2DH, 0H 			//04BC 	182D
		SUBWR 	31H, 1H 		//04BD 	12B1
		DECRSZ 	30H, 1H 		//04BE 	1BB0
		LJUMP 	4AEH 			//04BF 	3CAE
		LDR 	31H, 0H 			//04C0 	1831
		RET 					//04C1 	1008

		//;NFB.C: 385: for(int i=0;i<len;i++)
		CLRF 	50H 			//04C2 	11D0
		CLRF 	51H 			//04C3 	11D1
		LDR 	51H, 0H 			//04C4 	1851
		XORWI 	80H 			//04C5 	0A80
		STR 	4FH 			//04C6 	10CF
		LDR 	4EH, 0H 			//04C7 	184E
		XORWI 	80H 			//04C8 	0A80
		SUBWR 	4FH, 0H 		//04C9 	124F
		BTSS 	3H, 2H 			//04CA 	2D03
		LJUMP 	4CEH 			//04CB 	3CCE
		LDR 	4DH, 0H 			//04CC 	184D
		SUBWR 	50H, 0H 		//04CD 	1250
		BTSC 	3H, 0H 			//04CE 	2803
		RET 					//04CF 	1008

		//;NFB.C: 386: {
		//;NFB.C: 387: UR1DATAL=tbuf[i];
		MOVLB 	1H 			//04D0 	1021
		LDR 	4BH, 0H 			//04D1 	184B
		ADDWR 	50H, 0H 		//04D2 	1750
		STR 	4H 			//04D3 	1084
		LDR 	4CH, 0H 			//04D4 	184C
		ADDWFC 	51H, 0H 		//04D5 	0D51
		STR 	5H 			//04D6 	1085
		LDR 	0H, 0H 			//04D7 	1800
		MOVLB 	9H 			//04D8 	1029
		STR 	CH 			//04D9 	108C

		//;NFB.C: 388: DelayMs(1);
		MOVLB 	1H 			//04DA 	1021
		CLRF 	46H 			//04DB 	11C6
		INCR 	46H, 1H 		//04DC 	1AC6
		CLRF 	47H 			//04DD 	11C7
		LCALL 	4E5H 			//04DE 	34E5
		MOVLP 	1H 			//04DF 	0181
		MOVLB 	1H 			//04E0 	1021
		INCR 	50H, 1H 		//04E1 	1AD0
		BTSC 	3H, 2H 			//04E2 	2903
		INCR 	51H, 1H 		//04E3 	1AD1
		LJUMP 	4C4H 			//04E4 	3CC4

		//;NFB.C: 202: for(int a=0;a<Time;a++)
		CLRF 	49H 			//04E5 	11C9
		CLRF 	4AH 			//04E6 	11CA
		LDR 	4AH, 0H 			//04E7 	184A
		XORWI 	80H 			//04E8 	0A80
		STR 	48H 			//04E9 	10C8
		LDR 	47H, 0H 			//04EA 	1847
		XORWI 	80H 			//04EB 	0A80
		SUBWR 	48H, 0H 		//04EC 	1248
		BTSS 	3H, 2H 			//04ED 	2D03
		LJUMP 	4F1H 			//04EE 	3CF1
		LDR 	46H, 0H 			//04EF 	1846
		SUBWR 	49H, 0H 		//04F0 	1249
		BTSC 	3H, 0H 			//04F1 	2803
		RET 					//04F2 	1008

		//;NFB.C: 203: {
		//;NFB.C: 204: DelayUs(1000);
		LDWI 	E8H 			//04F3 	00E8
		MOVLB 	1H 			//04F4 	1021
		STR 	41H 			//04F5 	10C1
		LDWI 	3H 			//04F6 	0003
		STR 	42H 			//04F7 	10C2
		LCALL 	63CH 			//04F8 	363C
		MOVLP 	1H 			//04F9 	0181
		MOVLB 	1H 			//04FA 	1021
		INCR 	49H, 1H 		//04FB 	1AC9
		BTSC 	3H, 2H 			//04FC 	2903
		INCR 	4AH, 1H 		//04FD 	1ACA
		LJUMP 	4E7H 			//04FE 	3CE7

		//;NFB.C: 441: int Vdd = GET_ADC_DATA(2);
		LDWI 	2H 			//04FF 	0002
		LCALL 	623H 			//0500 	3623
		MOVLP 	1H 			//0501 	0181
		LDR 	47H, 0H 			//0502 	1847
		STR 	4BH 			//0503 	10CB
		LDR 	46H, 0H 			//0504 	1846
		STR 	4AH 			//0505 	10CA

		//;NFB.C: 442: float bat = (float)Vdd*2/4096;
		LDWI 	80H 			//0506 	0080
		CLRF 	2CH 			//0507 	11AC
		STR 	2DH 			//0508 	10AD
		LDWI 	45H 			//0509 	0045
		STR 	2EH 			//050A 	10AE
		LDWI 	40H 			//050B 	0040
		CLRF 	20H 			//050C 	11A0
		CLRF 	21H 			//050D 	11A1
		STR 	22H 			//050E 	10A2
		LDR 	4BH, 0H 			//050F 	184B
		MOVLB 	0H 			//0510 	1020
		STR 	3CH 			//0511 	10BC
		MOVLB 	1H 			//0512 	1021
		LDR 	4AH, 0H 			//0513 	184A
		MOVLB 	0H 			//0514 	1020
		STR 	3BH 			//0515 	10BB
		LCALL 	55CH 			//0516 	355C
		MOVLP 	1H 			//0517 	0181
		LCALL 	755H 			//0518 	3755
		MOVLP 	1H 			//0519 	0181
		LCALL 	577H 			//051A 	3577
		MOVLP 	17H 			//051B 	0197
		LCALL 	773H 			//051C 	3773
		MOVLP 	1H 			//051D 	0181
		LCALL 	674H 			//051E 	3674
		MOVLP 	1H 			//051F 	0181
		LDR 	2CH, 0H 			//0520 	182C
		STR 	4CH 			//0521 	10CC
		LDR 	2DH, 0H 			//0522 	182D
		STR 	4DH 			//0523 	10CD
		LDR 	2EH, 0H 			//0524 	182E
		STR 	4EH 			//0525 	10CE

		//;NFB.C: 443: if(bat>=1.95){
		LCALL 	706H 			//0526 	3706
		LDWI 	9AH 			//0527 	009A
		STR 	42H 			//0528 	10C2
		LDWI 	F9H 			//0529 	00F9
		STR 	43H 			//052A 	10C3
		LDWI 	3FH 			//052B 	003F
		STR 	44H 			//052C 	10C4
		MOVLP 	DH 			//052D 	018D
		LCALL 	549H 			//052E 	3549
		MOVLP 	1H 			//052F 	0181
		BTSS 	3H, 0H 			//0530 	2C03
		LJUMP 	536H 			//0531 	3D36

		//;NFB.C: 444: PB3 = 0;
		BCR 	DH, 3H 			//0532 	218D

		//;NFB.C: 445: PB2 = 0;
		BCR 	DH, 2H 			//0533 	210D

		//;NFB.C: 446: PA1 = 0;
		BCR 	CH, 1H 			//0534 	208C

		//;NFB.C: 447: } else if(bat>=1.80){
		RET 					//0535 	1008
		MOVLB 	1H 			//0536 	1021
		LCALL 	706H 			//0537 	3706
		LDWI 	66H 			//0538 	0066
		STR 	42H 			//0539 	10C2
		LDWI 	E6H 			//053A 	00E6
		STR 	43H 			//053B 	10C3
		LDWI 	3FH 			//053C 	003F
		STR 	44H 			//053D 	10C4
		MOVLP 	DH 			//053E 	018D
		LCALL 	549H 			//053F 	3549
		MOVLP 	1H 			//0540 	0181
		BTSS 	3H, 0H 			//0541 	2C03
		LJUMP 	547H 			//0542 	3D47

		//;NFB.C: 448: PB3 = 1;
		BSR 	DH, 3H 			//0543 	258D

		//;NFB.C: 449: PB2 = 0;
		BCR 	DH, 2H 			//0544 	210D

		//;NFB.C: 450: PA1 = 0;
		BCR 	CH, 1H 			//0545 	208C

		//;NFB.C: 451: } else if(bat>=1.65){
		RET 					//0546 	1008
		MOVLB 	1H 			//0547 	1021
		LCALL 	706H 			//0548 	3706
		LDWI 	33H 			//0549 	0033
		STR 	42H 			//054A 	10C2
		LDWI 	D3H 			//054B 	00D3
		STR 	43H 			//054C 	10C3
		LDWI 	3FH 			//054D 	003F
		STR 	44H 			//054E 	10C4
		MOVLP 	DH 			//054F 	018D
		LCALL 	549H 			//0550 	3549
		MOVLP 	1H 			//0551 	0181
		BTSS 	3H, 0H 			//0552 	2C03
		LJUMP 	558H 			//0553 	3D58

		//;NFB.C: 452: PB3 = 1;
		BSR 	DH, 3H 			//0554 	258D

		//;NFB.C: 453: PB2 = 1;
		BSR 	DH, 2H 			//0555 	250D

		//;NFB.C: 454: PA1 = 0;
		BCR 	CH, 1H 			//0556 	208C

		//;NFB.C: 455: } else{
		RET 					//0557 	1008

		//;NFB.C: 456: PB3 = 1;
		BSR 	DH, 3H 			//0558 	258D

		//;NFB.C: 457: PB2 = 1;
		BSR 	DH, 2H 			//0559 	250D

		//;NFB.C: 458: PA1 = 1;
		BSR 	CH, 1H 			//055A 	248C
		RET 					//055B 	1008
		CLRF 	3EH 			//055C 	11BE
		BTSS 	3CH, 7H 		//055D 	2FBC
		LJUMP 	566H 			//055E 	3D66
		COMR 	3BH, 1H 		//055F 	19BB
		COMR 	3CH, 1H 		//0560 	19BC
		INCR 	3BH, 1H 		//0561 	1ABB
		BTSC 	3H, 2H 			//0562 	2903
		INCR 	3CH, 1H 		//0563 	1ABC
		CLRF 	3EH 			//0564 	11BE
		INCR 	3EH, 1H 		//0565 	1ABE
		LDR 	3BH, 0H 			//0566 	183B
		STR 	2DH 			//0567 	10AD
		LDR 	3CH, 0H 			//0568 	183C
		STR 	2EH 			//0569 	10AE
		LDWI 	8EH 			//056A 	008E
		CLRF 	2FH 			//056B 	11AF
		STR 	30H 			//056C 	10B0
		LDR 	3EH, 0H 			//056D 	183E
		STR 	31H 			//056E 	10B1
		LCALL 	5E5H 			//056F 	35E5
		LDR 	2DH, 0H 			//0570 	182D
		STR 	3BH 			//0571 	10BB
		LDR 	2EH, 0H 			//0572 	182E
		STR 	3CH 			//0573 	10BC
		LDR 	2FH, 0H 			//0574 	182F
		STR 	3DH 			//0575 	10BD
		RET 					//0576 	1008
		LDR 	20H, 0H 			//0577 	1820
		MOVLB 	0H 			//0578 	1020
		STR 	53H 			//0579 	10D3
		MOVLB 	1H 			//057A 	1021
		LDR 	21H, 0H 			//057B 	1821
		MOVLB 	0H 			//057C 	1020
		STR 	54H 			//057D 	10D4
		MOVLB 	1H 			//057E 	1021
		LDR 	22H, 0H 			//057F 	1822
		LCALL 	7A3H 			//0580 	37A3
		MOVLP 	1H 			//0581 	0181
		STR 	26H 			//0582 	10A6
		LDR 	26H, 0H 			//0583 	1826
		BTSS 	3H, 2H 			//0584 	2D03
		LJUMP 	587H 			//0585 	3D87
		LJUMP 	7C9H 			//0586 	3FC9
		LDR 	23H, 0H 			//0587 	1823
		MOVLB 	0H 			//0588 	1020
		STR 	53H 			//0589 	10D3
		MOVLB 	1H 			//058A 	1021
		LDR 	24H, 0H 			//058B 	1824
		MOVLB 	0H 			//058C 	1020
		STR 	54H 			//058D 	10D4
		MOVLB 	1H 			//058E 	1021
		LDR 	25H, 0H 			//058F 	1825
		LCALL 	7A3H 			//0590 	37A3
		MOVLP 	1H 			//0591 	0181
		STR 	2BH 			//0592 	10AB
		LDR 	2BH, 0H 			//0593 	182B
		BTSS 	3H, 2H 			//0594 	2D03
		LJUMP 	597H 			//0595 	3D97
		LJUMP 	7C9H 			//0596 	3FC9
		LDR 	2BH, 0H 			//0597 	182B
		ADDWI 	7BH 			//0598 	0E7B
		ADDWR 	26H, 1H 		//0599 	17A6
		LDR 	22H, 0H 			//059A 	1822
		STR 	2BH 			//059B 	10AB
		LDR 	25H, 0H 			//059C 	1825
		XORWR 	2BH, 1H 		//059D 	16AB
		LDWI 	80H 			//059E 	0080
		ANDWR 	2BH, 1H 		//059F 	15AB
		LDWI 	FFH 			//05A0 	00FF
		BSR 	21H, 7H 			//05A1 	27A1
		BSR 	24H, 7H 			//05A2 	27A4
		ANDWR 	23H, 1H 		//05A3 	15A3
		ANDWR 	24H, 1H 		//05A4 	15A4
		LDWI 	7H 			//05A5 	0007
		CLRF 	25H 			//05A6 	11A5
		CLRF 	27H 			//05A7 	11A7
		CLRF 	28H 			//05A8 	11A8
		CLRF 	29H 			//05A9 	11A9
		STR 	2AH 			//05AA 	10AA
		BTSS 	20H, 0H 		//05AB 	2C20
		LJUMP 	5AFH 			//05AC 	3DAF
		LCALL 	78EH 			//05AD 	378E
		MOVLP 	1H 			//05AE 	0181
		LSRF 	22H, 1H 		//05AF 	06A2
		RRR 	21H, 1H 			//05B0 	1CA1
		RRR 	20H, 1H 			//05B1 	1CA0
		LSLF 	23H, 1H 		//05B2 	05A3
		RLR 	24H, 1H 			//05B3 	1DA4
		RLR 	25H, 1H 			//05B4 	1DA5
		DECRSZ 	2AH, 1H 		//05B5 	1BAA
		LJUMP 	5ABH 			//05B6 	3DAB
		LDWI 	9H 			//05B7 	0009
		STR 	2AH 			//05B8 	10AA
		BTSS 	20H, 0H 		//05B9 	2C20
		LJUMP 	5BDH 			//05BA 	3DBD
		LCALL 	78EH 			//05BB 	378E
		MOVLP 	1H 			//05BC 	0181
		LSRF 	22H, 1H 		//05BD 	06A2
		RRR 	21H, 1H 			//05BE 	1CA1
		RRR 	20H, 1H 			//05BF 	1CA0
		LSRF 	29H, 1H 		//05C0 	06A9
		RRR 	28H, 1H 			//05C1 	1CA8
		RRR 	27H, 1H 			//05C2 	1CA7
		DECRSZ 	2AH, 1H 		//05C3 	1BAA
		LJUMP 	5B9H 			//05C4 	3DB9
		LDR 	27H, 0H 			//05C5 	1827
		MOVLB 	0H 			//05C6 	1020
		STR 	2DH 			//05C7 	10AD
		MOVLB 	1H 			//05C8 	1021
		LDR 	28H, 0H 			//05C9 	1828
		MOVLB 	0H 			//05CA 	1020
		STR 	2EH 			//05CB 	10AE
		MOVLB 	1H 			//05CC 	1021
		LDR 	29H, 0H 			//05CD 	1829
		MOVLB 	0H 			//05CE 	1020
		STR 	2FH 			//05CF 	10AF
		MOVLB 	1H 			//05D0 	1021
		LDR 	26H, 0H 			//05D1 	1826
		MOVLB 	0H 			//05D2 	1020
		STR 	30H 			//05D3 	10B0
		MOVLB 	1H 			//05D4 	1021
		LDR 	2BH, 0H 			//05D5 	182B
		MOVLB 	0H 			//05D6 	1020
		STR 	31H 			//05D7 	10B1
		LCALL 	5E5H 			//05D8 	35E5
		LDR 	2DH, 0H 			//05D9 	182D
		MOVLB 	1H 			//05DA 	1021
		STR 	20H 			//05DB 	10A0
		MOVLB 	0H 			//05DC 	1020
		LDR 	2EH, 0H 			//05DD 	182E
		MOVLB 	1H 			//05DE 	1021
		STR 	21H 			//05DF 	10A1
		MOVLB 	0H 			//05E0 	1020
		LDR 	2FH, 0H 			//05E1 	182F
		MOVLB 	1H 			//05E2 	1021
		STR 	22H 			//05E3 	10A2
		RET 					//05E4 	1008
		LDR 	30H, 0H 			//05E5 	1830
		BTSC 	3H, 2H 			//05E6 	2903
		LJUMP 	5EDH 			//05E7 	3DED
		LDR 	2FH, 0H 			//05E8 	182F
		IORWR 	2EH, 0H 		//05E9 	142E
		IORWR 	2DH, 0H 		//05EA 	142D
		BTSS 	3H, 2H 			//05EB 	2D03
		LJUMP 	5F5H 			//05EC 	3DF5
		CLRF 	2DH 			//05ED 	11AD
		CLRF 	2EH 			//05EE 	11AE
		CLRF 	2FH 			//05EF 	11AF
		RET 					//05F0 	1008
		INCR 	30H, 1H 		//05F1 	1AB0
		LSRF 	2FH, 1H 		//05F2 	06AF
		RRR 	2EH, 1H 			//05F3 	1CAE
		RRR 	2DH, 1H 			//05F4 	1CAD
		LDWI 	FEH 			//05F5 	00FE
		ANDWR 	2FH, 0H 		//05F6 	152F
		BTSC 	3H, 2H 			//05F7 	2903
		LJUMP 	603H 			//05F8 	3E03
		LJUMP 	5F1H 			//05F9 	3DF1
		INCR 	30H, 1H 		//05FA 	1AB0
		INCR 	2DH, 1H 		//05FB 	1AAD
		BTSC 	3H, 2H 			//05FC 	2903
		INCR 	2EH, 1H 		//05FD 	1AAE
		BTSC 	3H, 2H 			//05FE 	2903
		INCR 	2FH, 1H 		//05FF 	1AAF
		LSRF 	2FH, 1H 		//0600 	06AF
		RRR 	2EH, 1H 			//0601 	1CAE
		RRR 	2DH, 1H 			//0602 	1CAD
		LDWI 	FFH 			//0603 	00FF
		ANDWR 	2FH, 0H 		//0604 	152F
		BTSC 	3H, 2H 			//0605 	2903
		LJUMP 	610H 			//0606 	3E10
		LJUMP 	5FAH 			//0607 	3DFA
		LDWI 	2H 			//0608 	0002
		SUBWR 	30H, 0H 		//0609 	1230
		BTSS 	3H, 0H 			//060A 	2C03
		LJUMP 	612H 			//060B 	3E12
		DECR 	30H, 1H 		//060C 	13B0
		LSLF 	2DH, 1H 		//060D 	05AD
		RLR 	2EH, 1H 			//060E 	1DAE
		RLR 	2FH, 1H 			//060F 	1DAF
		BTSS 	2EH, 7H 		//0610 	2FAE
		LJUMP 	608H 			//0611 	3E08
		BTSS 	30H, 0H 		//0612 	2C30
		BCR 	2EH, 7H 			//0613 	23AE
		LSRF 	30H, 1H 		//0614 	06B0
		LDR 	30H, 0H 			//0615 	1830
		STR 	34H 			//0616 	10B4
		CLRF 	33H 			//0617 	11B3
		CLRF 	32H 			//0618 	11B2
		LDR 	32H, 0H 			//0619 	1832
		IORWR 	2DH, 1H 		//061A 	14AD
		LDR 	33H, 0H 			//061B 	1833
		IORWR 	2EH, 1H 		//061C 	14AE
		LDR 	34H, 0H 			//061D 	1834
		IORWR 	2FH, 1H 		//061E 	14AF
		LDR 	31H, 0H 			//061F 	1831
		BTSS 	3H, 2H 			//0620 	2D03
		BSR 	2FH, 7H 			//0621 	27AF
		RET 					//0622 	1008
		MOVLB 	1H 			//0623 	1021
		STR 	49H 			//0624 	10C9

		//;NFB.C: 360: ADCON0&=0B00001111;
		LDWI 	FH 			//0625 	000F
		ANDWR 	1DH, 1H 		//0626 	159D

		//;NFB.C: 361: ADCON0|=adcChannel<<4;
		SWAPR 	49H, 0H 		//0627 	1E49
		ANDWI 	F0H 			//0628 	09F0
		IORWR 	1DH, 1H 		//0629 	149D

		//;NFB.C: 362: DelayUs(100);
		LDWI 	64H 			//062A 	0064
		STR 	41H 			//062B 	10C1
		CLRF 	42H 			//062C 	11C2
		LCALL 	63CH 			//062D 	363C
		MOVLP 	1H 			//062E 	0181

		//;NFB.C: 363: GO=1;
		MOVLB 	1H 			//062F 	1021
		BSR 	1DH, 1H 			//0630 	249D

		//;NFB.C: 364: __nop();
		NOP 					//0631 	1000

		//;NFB.C: 365: __nop();
		NOP 					//0632 	1000

		//;NFB.C: 366: while(GO);
		MOVLB 	1H 			//0633 	1021
		BTSC 	1DH, 1H 		//0634 	289D
		LJUMP 	633H 			//0635 	3E33

		//;NFB.C: 368: return (unsigned int)(ADRESH<<8|ADRESL);
		LDR 	1CH, 0H 			//0636 	181C
		STR 	47H 			//0637 	10C7
		CLRF 	46H 			//0638 	11C6
		LDR 	1BH, 0H 			//0639 	181B
		IORWR 	46H, 1H 		//063A 	14C6
		RET 					//063B 	1008

		//;NFB.C: 188: Time = (int)(Time/2*0.8);
		LDR 	42H, 0H 			//063C 	1842
		MOVLB 	0H 			//063D 	1020
		STR 	36H 			//063E 	10B6
		MOVLB 	1H 			//063F 	1021
		LDR 	41H, 0H 			//0640 	1841
		MOVLB 	0H 			//0641 	1020
		STR 	35H 			//0642 	10B5
		LDWI 	2H 			//0643 	0002
		STR 	33H 			//0644 	10B3
		CLRF 	34H 			//0645 	11B4
		LCALL 	417H 			//0646 	3417
		MOVLP 	1H 			//0647 	0181
		LDR 	34H, 0H 			//0648 	1834
		STR 	3CH 			//0649 	10BC
		LDR 	33H, 0H 			//064A 	1833
		STR 	3BH 			//064B 	10BB
		LCALL 	55CH 			//064C 	355C
		MOVLP 	1H 			//064D 	0181
		LCALL 	755H 			//064E 	3755
		MOVLP 	1H 			//064F 	0181
		LDWI 	CDH 			//0650 	00CD
		STR 	20H 			//0651 	10A0
		LDWI 	4CH 			//0652 	004C
		STR 	21H 			//0653 	10A1
		LDWI 	3FH 			//0654 	003F
		STR 	22H 			//0655 	10A2
		LCALL 	577H 			//0656 	3577
		MOVLP 	1H 			//0657 	0181
		LCALL 	787H 			//0658 	3787
		MOVLP 	DH 			//0659 	018D
		LCALL 	5ABH 			//065A 	35AB
		MOVLP 	1H 			//065B 	0181
		LDR 	35H, 0H 			//065C 	1835
		STR 	42H 			//065D 	10C2
		LDR 	34H, 0H 			//065E 	1834
		STR 	41H 			//065F 	10C1

		//;NFB.C: 189: for(int a=0;a<Time;a++)
		CLRF 	44H 			//0660 	11C4
		CLRF 	45H 			//0661 	11C5
		LDR 	45H, 0H 			//0662 	1845
		XORWI 	80H 			//0663 	0A80
		STR 	43H 			//0664 	10C3
		LDR 	42H, 0H 			//0665 	1842
		XORWI 	80H 			//0666 	0A80
		SUBWR 	43H, 0H 		//0667 	1243
		BTSS 	3H, 2H 			//0668 	2D03
		LJUMP 	66CH 			//0669 	3E6C
		LDR 	41H, 0H 			//066A 	1841
		SUBWR 	44H, 0H 		//066B 	1244
		BTSC 	3H, 0H 			//066C 	2803
		RET 					//066D 	1008

		//;NFB.C: 190: {
		//;NFB.C: 191: __nop();
		NOP 					//066E 	1000
		MOVLB 	1H 			//066F 	1021
		INCR 	44H, 1H 		//0670 	1AC4
		BTSC 	3H, 2H 			//0671 	2903
		INCR 	45H, 1H 		//0672 	1AC5
		LJUMP 	662H 			//0673 	3E62
		LDR 	2FH, 0H 			//0674 	182F
		STR 	32H 			//0675 	10B2
		LDR 	30H, 0H 			//0676 	1830
		STR 	33H 			//0677 	10B3
		LDR 	31H, 0H 			//0678 	1831
		STR 	34H 			//0679 	10B4
		BCR 	3H, 0H 			//067A 	2003
		RLR 	33H, 0H 			//067B 	1D33
		RLR 	34H, 0H 			//067C 	1D34
		STR 	39H 			//067D 	10B9
		LDR 	39H, 0H 			//067E 	1839
		BTSS 	3H, 2H 			//067F 	2D03
		LJUMP 	682H 			//0680 	3E82
		LJUMP 	7C0H 			//0681 	3FC0
		LDR 	2CH, 0H 			//0682 	182C
		STR 	32H 			//0683 	10B2
		LDR 	2DH, 0H 			//0684 	182D
		STR 	33H 			//0685 	10B3
		LDR 	2EH, 0H 			//0686 	182E
		STR 	34H 			//0687 	10B4
		BCR 	3H, 0H 			//0688 	2003
		RLR 	33H, 0H 			//0689 	1D33
		RLR 	34H, 0H 			//068A 	1D34
		STR 	3AH 			//068B 	10BA
		LDR 	3AH, 0H 			//068C 	183A
		BTSS 	3H, 2H 			//068D 	2D03
		LJUMP 	690H 			//068E 	3E90
		LJUMP 	7C0H 			//068F 	3FC0
		LDWI 	89H 			//0690 	0089
		CLRF 	36H 			//0691 	11B6
		CLRF 	37H 			//0692 	11B7
		CLRF 	38H 			//0693 	11B8
		ADDWR 	3AH, 0H 		//0694 	173A
		STR 	32H 			//0695 	10B2
		SUBWR 	39H, 1H 		//0696 	12B9
		LDR 	31H, 0H 			//0697 	1831
		STR 	3AH 			//0698 	10BA
		LDR 	2EH, 0H 			//0699 	182E
		XORWR 	3AH, 1H 		//069A 	16BA
		LDWI 	80H 			//069B 	0080
		ANDWR 	3AH, 1H 		//069C 	15BA
		LDWI 	18H 			//069D 	0018
		BSR 	30H, 7H 			//069E 	27B0
		CLRF 	31H 			//069F 	11B1
		BSR 	2DH, 7H 			//06A0 	27AD
		CLRF 	2EH 			//06A1 	11AE
		STR 	35H 			//06A2 	10B5
		LSLF 	36H, 1H 		//06A3 	05B6
		RLR 	37H, 1H 			//06A4 	1DB7
		RLR 	38H, 1H 			//06A5 	1DB8
		LDR 	2EH, 0H 			//06A6 	182E
		SUBWR 	31H, 0H 		//06A7 	1231
		BTSS 	3H, 2H 			//06A8 	2D03
		LJUMP 	6B0H 			//06A9 	3EB0
		LDR 	2DH, 0H 			//06AA 	182D
		SUBWR 	30H, 0H 		//06AB 	1230
		BTSS 	3H, 2H 			//06AC 	2D03
		LJUMP 	6B0H 			//06AD 	3EB0
		LDR 	2CH, 0H 			//06AE 	182C
		SUBWR 	2FH, 0H 		//06AF 	122F
		BTSS 	3H, 0H 			//06B0 	2C03
		LJUMP 	6B9H 			//06B1 	3EB9
		LDR 	2CH, 0H 			//06B2 	182C
		SUBWR 	2FH, 1H 		//06B3 	12AF
		LDR 	2DH, 0H 			//06B4 	182D
		SUBWFB 	30H, 1H 		//06B5 	0BB0
		LDR 	2EH, 0H 			//06B6 	182E
		SUBWFB 	31H, 1H 		//06B7 	0BB1
		BSR 	36H, 0H 			//06B8 	2436
		LSLF 	2FH, 1H 		//06B9 	05AF
		RLR 	30H, 1H 			//06BA 	1DB0
		RLR 	31H, 1H 			//06BB 	1DB1
		DECRSZ 	35H, 1H 		//06BC 	1BB5
		LJUMP 	6A3H 			//06BD 	3EA3
		LDR 	36H, 0H 			//06BE 	1836
		MOVLB 	0H 			//06BF 	1020
		STR 	2DH 			//06C0 	10AD
		MOVLB 	1H 			//06C1 	1021
		LDR 	37H, 0H 			//06C2 	1837
		MOVLB 	0H 			//06C3 	1020
		STR 	2EH 			//06C4 	10AE
		MOVLB 	1H 			//06C5 	1021
		LDR 	38H, 0H 			//06C6 	1838
		MOVLB 	0H 			//06C7 	1020
		STR 	2FH 			//06C8 	10AF
		MOVLB 	1H 			//06C9 	1021
		LDR 	39H, 0H 			//06CA 	1839
		MOVLB 	0H 			//06CB 	1020
		STR 	30H 			//06CC 	10B0
		MOVLB 	1H 			//06CD 	1021
		LDR 	3AH, 0H 			//06CE 	183A
		MOVLB 	0H 			//06CF 	1020
		STR 	31H 			//06D0 	10B1
		LCALL 	5E5H 			//06D1 	35E5
		LDR 	2DH, 0H 			//06D2 	182D
		MOVLB 	1H 			//06D3 	1021
		STR 	2CH 			//06D4 	10AC
		MOVLB 	0H 			//06D5 	1020
		LDR 	2EH, 0H 			//06D6 	182E
		MOVLB 	1H 			//06D7 	1021
		STR 	2DH 			//06D8 	10AD
		MOVLB 	0H 			//06D9 	1020
		LDR 	2FH, 0H 			//06DA 	182F
		MOVLB 	1H 			//06DB 	1021
		STR 	2EH 			//06DC 	10AE
		RET 					//06DD 	1008
		ADDWFC 	5H, 1H 		//06DE 	0D85
		MOVIW 	0H[0] 			//06DF 	0F00
		MOVLB 	1H 			//06E0 	1021
		STR 	20H 			//06E1 	10A0
		MOVIW 	1H[0] 			//06E2 	0F01
		STR 	21H 			//06E3 	10A1
		MOVIW 	2H[0] 			//06E4 	0F02
		STR 	22H 			//06E5 	10A2
		RET 					//06E6 	1008
		LDR 	3CH, 0H 			//06E7 	183C
		STR 	5H 			//06E8 	1085
		LDR 	3BH, 0H 			//06E9 	183B
		STR 	4H 			//06EA 	1084
		LDWI 	7AH 			//06EB 	007A
		ADDWR 	4H, 1H 		//06EC 	1784
		RETW 	A0H 			//06ED 	04A0
		ADDWFC 	5H, 1H 		//06EE 	0D85
		MOVIW 	0H[0] 			//06EF 	0F00
		MOVLB 	1H 			//06F0 	1021
		STR 	23H 			//06F1 	10A3
		MOVIW 	1H[0] 			//06F2 	0F01
		STR 	24H 			//06F3 	10A4
		MOVIW 	2H[0] 			//06F4 	0F02
		STR 	25H 			//06F5 	10A5
		RET 					//06F6 	1008
		LDR 	3CH, 0H 			//06F7 	183C
		STR 	5H 			//06F8 	1085
		LDR 	3BH, 0H 			//06F9 	183B
		STR 	4H 			//06FA 	1084
		LDWI 	95H 			//06FB 	0095
		ADDWR 	4H, 1H 		//06FC 	1784
		RETW 	A0H 			//06FD 	04A0
		LDR 	34H, 0H 			//06FE 	1834
		STR 	3CH 			//06FF 	10BC
		LDR 	33H, 0H 			//0700 	1833
		STR 	3BH 			//0701 	10BB
		LDWI 	3H 			//0702 	0003
		STR 	3DH 			//0703 	10BD
		CLRF 	3EH 			//0704 	11BE
		RET 					//0705 	1008
		LDR 	4CH, 0H 			//0706 	184C
		MOVLB 	0H 			//0707 	1020
		STR 	3FH 			//0708 	10BF
		MOVLB 	1H 			//0709 	1021
		LDR 	4DH, 0H 			//070A 	184D
		MOVLB 	0H 			//070B 	1020
		STR 	40H 			//070C 	10C0
		MOVLB 	1H 			//070D 	1021
		LDR 	4EH, 0H 			//070E 	184E
		MOVLB 	0H 			//070F 	1020
		STR 	41H 			//0710 	10C1
		RET 					//0711 	1008
		MOVLB 	0H 			//0712 	1020
		STR 	2FH 			//0713 	10AF
		CLRF 	30H 			//0714 	11B0
		BTSC 	2FH, 7H 		//0715 	2BAF
		DECR 	30H, 1H 		//0716 	13B0
		LDWI 	AH 			//0717 	000A
		STR 	2DH 			//0718 	10AD
		CLRF 	2EH 			//0719 	11AE
		RET 					//071A 	1008
		LDR 	3CH, 0H 			//071B 	183C
		STR 	5H 			//071C 	1085
		LDR 	3BH, 0H 			//071D 	183B
		STR 	4H 			//071E 	1084
		LDWI 	53H 			//071F 	0053
		ADDWR 	4H, 1H 		//0720 	1784
		RETW 	A0H 			//0721 	04A0
		LDR 	20H, 0H 			//0722 	1820
		STR 	30H 			//0723 	10B0
		LDR 	21H, 0H 			//0724 	1821
		STR 	31H 			//0725 	10B1
		LDR 	22H, 0H 			//0726 	1822
		STR 	32H 			//0727 	10B2
		LDR 	33H, 0H 			//0728 	1833
		RET 					//0729 	1008
		LDR 	3CH, 0H 			//072A 	183C
		STR 	5H 			//072B 	1085
		LDR 	3BH, 0H 			//072C 	183B
		STR 	4H 			//072D 	1084
		LDWI 	B0H 			//072E 	00B0
		ADDWR 	4H, 1H 		//072F 	1784
		RETW 	A0H 			//0730 	04A0
		STR 	3BH 			//0731 	10BB
		LDWI 	3H 			//0732 	0003
		CLRF 	3CH 			//0733 	11BC
		STR 	3DH 			//0734 	10BD
		CLRF 	3EH 			//0735 	11BE
		RET 					//0736 	1008
		LDWI 	AH 			//0737 	000A
		MOVLB 	0H 			//0738 	1020
		STR 	33H 			//0739 	10B3
		CLRF 	34H 			//073A 	11B4
		MOVLB 	1H 			//073B 	1021
		LDR 	33H, 0H 			//073C 	1833
		MOVLB 	0H 			//073D 	1020
		RET 					//073E 	1008
		LDR 	20H, 0H 			//073F 	1820
		STR 	2CH 			//0740 	10AC
		LDR 	21H, 0H 			//0741 	1821
		STR 	2DH 			//0742 	10AD
		LDR 	22H, 0H 			//0743 	1822
		STR 	2EH 			//0744 	10AE
		RET 					//0745 	1008
		LDR 	2EH, 0H 			//0746 	182E
		STR 	3CH 			//0747 	10BC
		LDR 	2DH, 0H 			//0748 	182D
		STR 	3BH 			//0749 	10BB
		LDWI 	3H 			//074A 	0003
		STR 	3DH 			//074B 	10BD
		CLRF 	3EH 			//074C 	11BE
		RET 					//074D 	1008
		CLRF 	34H 			//074E 	11B4
		MOVLB 	1H 			//074F 	1021
		LDR 	33H, 0H 			//0750 	1833
		MOVLB 	0H 			//0751 	1020
		STR 	35H 			//0752 	10B5
		CLRF 	36H 			//0753 	11B6
		RET 					//0754 	1008
		LDR 	3BH, 0H 			//0755 	183B
		MOVLB 	1H 			//0756 	1021
		STR 	23H 			//0757 	10A3
		MOVLB 	0H 			//0758 	1020
		LDR 	3CH, 0H 			//0759 	183C
		MOVLB 	1H 			//075A 	1021
		STR 	24H 			//075B 	10A4
		MOVLB 	0H 			//075C 	1020
		LDR 	3DH, 0H 			//075D 	183D
		MOVLB 	1H 			//075E 	1021
		STR 	25H 			//075F 	10A5
		RET 					//0760 	1008
		LDR 	20H, 0H 			//0761 	1820
		STR 	2CH 			//0762 	10AC
		LDR 	21H, 0H 			//0763 	1821
		STR 	2DH 			//0764 	10AD
		LDR 	22H, 0H 			//0765 	1822
		STR 	2EH 			//0766 	10AE
		RET 					//0767 	1008
		LDR 	3CH, 0H 			//0768 	183C
		STR 	5H 			//0769 	1085
		LDR 	3BH, 0H 			//076A 	183B
		STR 	4H 			//076B 	1084
		LDWI 	6EH 			//076C 	006E
		ADDWR 	4H, 1H 		//076D 	1784
		RETW 	A0H 			//076E 	04A0
		ADDWFC 	5H, 1H 		//076F 	0D85
		MOVIW 	0H[0] 			//0770 	0F00
		MOVLB 	1H 			//0771 	1021
		STR 	2CH 			//0772 	10AC
		MOVIW 	1H[0] 			//0773 	0F01
		STR 	2DH 			//0774 	10AD
		MOVIW 	2H[0] 			//0775 	0F02
		STR 	2EH 			//0776 	10AE
		RET 					//0777 	1008
		STR 	2FH 			//0778 	10AF
		CLRF 	30H 			//0779 	11B0
		BTSC 	2FH, 7H 		//077A 	2BAF
		DECR 	30H, 1H 		//077B 	13B0
		LDWI 	64H 			//077C 	0064
		STR 	2DH 			//077D 	10AD
		CLRF 	2EH 			//077E 	11AE
		RET 					//077F 	1008
		LDR 	33H, 0H 			//0780 	1833
		STR 	23H 			//0781 	10A3
		LDR 	34H, 0H 			//0782 	1834
		STR 	24H 			//0783 	10A4
		LDR 	35H, 0H 			//0784 	1835
		STR 	25H 			//0785 	10A5
		RET 					//0786 	1008
		LDR 	20H, 0H 			//0787 	1820
		STR 	34H 			//0788 	10B4
		LDR 	21H, 0H 			//0789 	1821
		STR 	35H 			//078A 	10B5
		LDR 	22H, 0H 			//078B 	1822
		STR 	36H 			//078C 	10B6
		RET 					//078D 	1008
		LDR 	23H, 0H 			//078E 	1823
		ADDWR 	27H, 1H 		//078F 	17A7
		LDR 	24H, 0H 			//0790 	1824
		ADDWFC 	28H, 1H 		//0791 	0DA8
		LDR 	25H, 0H 			//0792 	1825
		ADDWFC 	29H, 1H 		//0793 	0DA9
		RET 					//0794 	1008
		LDR 	30H, 0H 			//0795 	1830
		STR 	23H 			//0796 	10A3
		LDR 	31H, 0H 			//0797 	1831
		STR 	24H 			//0798 	10A4
		LDR 	32H, 0H 			//0799 	1832
		STR 	25H 			//079A 	10A5
		RET 					//079B 	1008
		LDR 	20H, 0H 			//079C 	1820
		STR 	33H 			//079D 	10B3
		LDR 	21H, 0H 			//079E 	1821
		STR 	34H 			//079F 	10B4
		LDR 	22H, 0H 			//07A0 	1822
		STR 	35H 			//07A1 	10B5
		RET 					//07A2 	1008
		MOVLB 	0H 			//07A3 	1020
		STR 	55H 			//07A4 	10D5
		BCR 	3H, 0H 			//07A5 	2003
		RLR 	54H, 0H 			//07A6 	1D54
		RLR 	55H, 0H 			//07A7 	1D55
		MOVLB 	1H 			//07A8 	1021
		RET 					//07A9 	1008
		LDWI 	AH 			//07AA 	000A
		MOVLB 	0H 			//07AB 	1020
		STR 	2DH 			//07AC 	10AD
		MOVLB 	1H 			//07AD 	1021
		LDR 	36H, 0H 			//07AE 	1836
		RET 					//07AF 	1008
		LDWI 	FFH 			//07B0 	00FF
		XORWR 	44H, 1H 		//07B1 	16C4
		XORWR 	45H, 1H 		//07B2 	16C5
		XORWR 	46H, 1H 		//07B3 	16C6
		INCR 	44H, 1H 		//07B4 	1AC4
		RET 					//07B5 	1008
		LDR 	2EH, 0H 			//07B6 	182E
		STR 	36H 			//07B7 	10B6
		LDR 	2DH, 0H 			//07B8 	182D
		STR 	35H 			//07B9 	10B5
		RET 					//07BA 	1008
		MOVLB 	0H 			//07BB 	1020
		STR 	32H 			//07BC 	10B2
		MOVLB 	1H 			//07BD 	1021
		LDR 	36H, 0H 			//07BE 	1836
		RET 					//07BF 	1008
		CLRF 	2CH 			//07C0 	11AC
		CLRF 	2DH 			//07C1 	11AD
		CLRF 	2EH 			//07C2 	11AE
		RET 					//07C3 	1008
		LDR 	33H, 0H 			//07C4 	1833
		XORWI 	80H 			//07C5 	0A80
		ADDWI 	75H 			//07C6 	0E75
		LDR 	33H, 0H 			//07C7 	1833
		RET 					//07C8 	1008
		CLRF 	20H 			//07C9 	11A0
		CLRF 	21H 			//07CA 	11A1
		CLRF 	22H 			//07CB 	11A2
		RET 					//07CC 	1008

		//;NFB.C: 150: OSCCON=0B01110001;
		LDWI 	71H 			//07CD 	0071
		MOVLB 	1H 			//07CE 	1021
		STR 	19H 			//07CF 	1099

		//;NFB.C: 152: INTCON=0;
		CLRF 	BH 			//07D0 	118B

		//;NFB.C: 154: PORTA=0B00000000;
		MOVLB 	0H 			//07D1 	1020
		CLRF 	CH 			//07D2 	118C

		//;NFB.C: 155: PORTB=0B00000000;
		CLRF 	DH 			//07D3 	118D

		//;NFB.C: 156: PORTC=0B00000000;
		CLRF 	EH 			//07D4 	118E

		//;NFB.C: 158: WPUA=0B00000000;
		MOVLB 	3H 			//07D5 	1023
		CLRF 	CH 			//07D6 	118C

		//;NFB.C: 159: WPUB=0B00010000;
		LDWI 	10H 			//07D7 	0010
		STR 	DH 			//07D8 	108D

		//;NFB.C: 160: WPUC=0B00000000;
		CLRF 	EH 			//07D9 	118E

		//;NFB.C: 162: WPDA=0B00000000;
		MOVLB 	4H 			//07DA 	1024
		CLRF 	CH 			//07DB 	118C

		//;NFB.C: 163: WPDB=0B00000000;
		CLRF 	DH 			//07DC 	118D

		//;NFB.C: 164: WPDC=0B00000000;
		CLRF 	EH 			//07DD 	118E

		//;NFB.C: 166: TRISA=0B11111100;
		LDWI 	FCH 			//07DE 	00FC
		MOVLB 	1H 			//07DF 	1021
		STR 	CH 			//07E0 	108C

		//;NFB.C: 167: TRISB=0B00110010;
		LDWI 	32H 			//07E1 	0032
		STR 	DH 			//07E2 	108D

		//;NFB.C: 168: TRISC=0B00000001;
		LDWI 	1H 			//07E3 	0001
		STR 	EH 			//07E4 	108E

		//;NFB.C: 170: PSRC0=0B11111111;
		LDWI 	FFH 			//07E5 	00FF
		MOVLB 	2H 			//07E6 	1022
		STR 	1AH 			//07E7 	109A

		//;NFB.C: 171: PSRC1=0B11111111;
		STR 	1BH 			//07E8 	109B

		//;NFB.C: 172: PSRC2=0B00001111;
		LDWI 	FH 			//07E9 	000F
		STR 	1CH 			//07EA 	109C

		//;NFB.C: 174: PSINK0=0B11111111;
		LDWI 	FFH 			//07EB 	00FF
		MOVLB 	3H 			//07EC 	1023
		STR 	1AH 			//07ED 	109A

		//;NFB.C: 175: PSINK1=0B11111111;
		STR 	1BH 			//07EE 	109B

		//;NFB.C: 176: PSINK2=0B00000011;
		LDWI 	3H 			//07EF 	0003
		STR 	1CH 			//07F0 	109C

		//;NFB.C: 178: ANSELA=0B00000000;
		CLRF 	17H 			//07F1 	1197
		RET 					//07F2 	1008

		//;NFB.C: 235: EPS0=0B00000000;
		MOVLB 	2H 			//07F3 	1022
		CLRF 	18H 			//07F4 	1198

		//;NFB.C: 236: EPS1=0B00000001;
		LDWI 	1H 			//07F5 	0001
		STR 	19H 			//07F6 	1099

		//;NFB.C: 237: ITYPE0=0B00000000;
		CLRF 	1EH 			//07F7 	119E

		//;NFB.C: 238: ITYPE1=0B00000010;
		LDWI 	2H 			//07F8 	0002
		STR 	1FH 			//07F9 	109F

		//;NFB.C: 239: EPIE0=0B00010000;
		LDWI 	10H 			//07FA 	0010
		MOVLB 	1H 			//07FB 	1021
		STR 	14H 			//07FC 	1094

		//;NFB.C: 240: INTCON=0B11000000;
		LDWI 	C0H 			//07FD 	00C0
		STR 	BH 			//07FE 	108B
		RET 					//07FF 	1008

		//;NFB.C: 394: PA0=0;
		MOVLB 	0H 			//0800 	1020
		BCR 	CH, 0H 			//0801 	200C

		//;NFB.C: 395: PB0=0;
		//;NFB.C: 396: PA1=1;
		//;NFB.C: 397: PB2=1;
		//;NFB.C: 398: PB3=1;
		//;NFB.C: 399: PC1=1;
		//;NFB.C: 400: PB7=1;
		LCALL 	4H 			//0802 	3004
		RET 					//0803 	1008
		BCR 	DH, 0H 			//0804 	200D
		BSR 	CH, 1H 			//0805 	248C
		BSR 	DH, 2H 			//0806 	250D
		BSR 	DH, 3H 			//0807 	258D
		BSR 	EH, 1H 			//0808 	248E
		BSR 	DH, 7H 			//0809 	278D
		RET 					//080A 	1008
		LDR 	2EH, 0H 			//080B 	182E
		STR 	31H 			//080C 	10B1
		LDR 	2DH, 0H 			//080D 	182D
		STR 	30H 			//080E 	10B0
		LDR 	30H, 0H 			//080F 	1830
		STR 	4H 			//0810 	1084
		LDR 	31H, 0H 			//0811 	1831
		STR 	5H 			//0812 	1085
		MOVIW 	FSR0++ 		//0813 	1012
		BTSC 	3H, 2H 			//0814 	2903
		LJUMP 	1AH 			//0815 	381A
		INCR 	30H, 1H 		//0816 	1AB0
		BTSC 	3H, 2H 			//0817 	2903
		INCR 	31H, 1H 		//0818 	1AB1
		LJUMP 	FH 			//0819 	380F
		LDR 	2DH, 0H 			//081A 	182D
		SUBWR 	30H, 0H 		//081B 	1230
		STR 	2DH 			//081C 	10AD
		LDR 	2EH, 0H 			//081D 	182E
		SUBWFB 	31H, 0H 		//081E 	0B31
		STR 	2EH 			//081F 	10AE
		RET 					//0820 	1008
		CLRF 	7DH 			//0821 	11FD
		BTSS 	26H, 7H 		//0822 	2FA6
		LJUMP 	2BH 			//0823 	382B
		COMR 	25H, 1H 		//0824 	19A5
		COMR 	26H, 1H 		//0825 	19A6
		INCR 	25H, 1H 		//0826 	1AA5
		BTSC 	3H, 2H 			//0827 	2903
		INCR 	26H, 1H 		//0828 	1AA6
		CLRF 	7DH 			//0829 	11FD
		INCR 	7DH, 1H 		//082A 	1AFD
		LDR 	25H, 0H 			//082B 	1825
		STR 	70H 			//082C 	10F0
		LDR 	26H, 0H 			//082D 	1826
		STR 	71H 			//082E 	10F1
		LDWI 	8EH 			//082F 	008E
		CLRF 	72H 			//0830 	11F2
		STR 	73H 			//0831 	10F3
		LDR 	7DH, 0H 			//0832 	187D
		STR 	74H 			//0833 	10F4
		LCALL 	3CH 			//0834 	303C
		LDR 	70H, 0H 			//0835 	1870
		STR 	25H 			//0836 	10A5
		LDR 	71H, 0H 			//0837 	1871
		STR 	26H 			//0838 	10A6
		LDR 	72H, 0H 			//0839 	1872
		STR 	27H 			//083A 	10A7
		RET 					//083B 	1008
		LDR 	73H, 0H 			//083C 	1873
		BTSC 	3H, 2H 			//083D 	2903
		LJUMP 	44H 			//083E 	3844
		LDR 	72H, 0H 			//083F 	1872
		IORWR 	71H, 0H 		//0840 	1471
		IORWR 	70H, 0H 		//0841 	1470
		BTSS 	3H, 2H 			//0842 	2D03
		LJUMP 	4CH 			//0843 	384C
		CLRF 	70H 			//0844 	11F0
		CLRF 	71H 			//0845 	11F1
		CLRF 	72H 			//0846 	11F2
		RET 					//0847 	1008
		INCR 	73H, 1H 		//0848 	1AF3
		LSRF 	72H, 1H 		//0849 	06F2
		RRR 	71H, 1H 			//084A 	1CF1
		RRR 	70H, 1H 			//084B 	1CF0
		LDWI 	FEH 			//084C 	00FE
		ANDWR 	72H, 0H 		//084D 	1572
		BTSC 	3H, 2H 			//084E 	2903
		LJUMP 	5AH 			//084F 	385A
		LJUMP 	48H 			//0850 	3848
		INCR 	73H, 1H 		//0851 	1AF3
		INCR 	70H, 1H 		//0852 	1AF0
		BTSC 	3H, 2H 			//0853 	2903
		INCR 	71H, 1H 		//0854 	1AF1
		BTSC 	3H, 2H 			//0855 	2903
		INCR 	72H, 1H 		//0856 	1AF2
		LSRF 	72H, 1H 		//0857 	06F2
		RRR 	71H, 1H 			//0858 	1CF1
		RRR 	70H, 1H 			//0859 	1CF0
		LDWI 	FFH 			//085A 	00FF
		ANDWR 	72H, 0H 		//085B 	1572
		BTSC 	3H, 2H 			//085C 	2903
		LJUMP 	67H 			//085D 	3867
		LJUMP 	51H 			//085E 	3851
		LDWI 	2H 			//085F 	0002
		SUBWR 	73H, 0H 		//0860 	1273
		BTSS 	3H, 0H 			//0861 	2C03
		LJUMP 	69H 			//0862 	3869
		DECR 	73H, 1H 		//0863 	13F3
		LSLF 	70H, 1H 		//0864 	05F0
		RLR 	71H, 1H 			//0865 	1DF1
		RLR 	72H, 1H 			//0866 	1DF2
		BTSS 	71H, 7H 		//0867 	2FF1
		LJUMP 	5FH 			//0868 	385F
		BTSS 	73H, 0H 		//0869 	2C73
		BCR 	71H, 7H 			//086A 	23F1
		LSRF 	73H, 1H 		//086B 	06F3
		LDR 	73H, 0H 			//086C 	1873
		STR 	77H 			//086D 	10F7
		CLRF 	76H 			//086E 	11F6
		CLRF 	75H 			//086F 	11F5
		LDR 	75H, 0H 			//0870 	1875
		IORWR 	70H, 1H 		//0871 	14F0
		LDR 	76H, 0H 			//0872 	1876
		IORWR 	71H, 1H 		//0873 	14F1
		LDR 	77H, 0H 			//0874 	1877
		IORWR 	72H, 1H 		//0875 	14F2
		LDR 	74H, 0H 			//0876 	1874
		BTSS 	3H, 2H 			//0877 	2D03
		BSR 	72H, 7H 			//0878 	27F2
		RET 					//0879 	1008
		LDWI 	C5H 			//087A 	00C5
		MOVLB 	2H 			//087B 	1022
		STR 	23H 			//087C 	10A3
		LCALL 	6BFH 			//087D 	36BF
		MOVLP 	8H 			//087E 	0188
		LDR 	37H, 0H 			//087F 	1837
		BTSC 	3H, 2H 			//0880 	2903
		LJUMP 	546H 			//0881 	3D46
		LDWI 	25H 			//0882 	0025
		XORWR 	37H, 0H 		//0883 	1637
		BTSC 	3H, 2H 			//0884 	2903
		LJUMP 	90H 			//0885 	3890
		LCALL 	6A5H 			//0886 	36A5
		MOVLP 	8H 			//0887 	0188
		MOVLB 	2H 			//0888 	1022
		LDR 	37H, 0H 			//0889 	1837
		STR 	1H 			//088A 	1081
		MOVLB 	1H 			//088B 	1021
		INCR 	41H, 1H 		//088C 	1AC1
		BTSC 	3H, 2H 			//088D 	2903
		INCR 	42H, 1H 		//088E 	1AC2
		LJUMP 	7DH 			//088F 	387D
		CLRF 	30H 			//0890 	11B0
		CLRF 	31H 			//0891 	11B1
		CLRF 	2CH 			//0892 	11AC
		CLRF 	2DH 			//0893 	11AD
		LJUMP 	9BH 			//0894 	389B
		MOVLB 	2H 			//0895 	1022
		BSR 	2CH, 2H 			//0896 	252C
		MOVLB 	1H 			//0897 	1021
		INCR 	43H, 1H 		//0898 	1AC3
		BTSC 	3H, 2H 			//0899 	2903
		INCR 	44H, 1H 		//089A 	1AC4
		LCALL 	6FBH 			//089B 	36FB
		MOVLP 	8H 			//089C 	0188
		XORWI 	30H 			//089D 	0A30
		BTSC 	3H, 2H 			//089E 	2903
		LJUMP 	95H 			//089F 	3895
		LJUMP 	A1H 			//08A0 	38A1
		LCALL 	709H 			//08A1 	3709
		MOVLP 	8H 			//08A2 	0188
		LCALL 	600H 			//08A3 	3600
		MOVLP 	8H 			//08A4 	0188
		BTSS 	3H, 0H 			//08A5 	2C03
		LJUMP 	D9H 			//08A6 	38D9
		MOVLB 	2H 			//08A7 	1022
		CLRF 	30H 			//08A8 	11B0
		CLRF 	31H 			//08A9 	11B1
		LDWI 	AH 			//08AA 	000A
		MOVLB 	0H 			//08AB 	1020
		STR 	3BH 			//08AC 	10BB
		CLRF 	3CH 			//08AD 	11BC
		MOVLB 	2H 			//08AE 	1022
		LDR 	31H, 0H 			//08AF 	1831
		MOVLB 	0H 			//08B0 	1020
		STR 	3EH 			//08B1 	10BE
		MOVLB 	2H 			//08B2 	1022
		LDR 	30H, 0H 			//08B3 	1830
		MOVLB 	0H 			//08B4 	1020
		STR 	3DH 			//08B5 	10BD
		MOVLP 	4H 			//08B6 	0184
		LCALL 	402H 			//08B7 	3402
		MOVLP 	8H 			//08B8 	0188
		LDR 	3CH, 0H 			//08B9 	183C
		MOVLB 	2H 			//08BA 	1022
		STR 	31H 			//08BB 	10B1
		MOVLB 	0H 			//08BC 	1020
		LDR 	3BH, 0H 			//08BD 	183B
		MOVLB 	2H 			//08BE 	1022
		STR 	30H 			//08BF 	10B0
		LCALL 	6FBH 			//08C0 	36FB
		MOVLP 	8H 			//08C1 	0188
		ADDWI 	D0H 			//08C2 	0ED0
		STR 	53H 			//08C3 	10D3
		LDWI 	FFH 			//08C4 	00FF
		BTSC 	3H, 0H 			//08C5 	2803
		LDWI 	0H 			//08C6 	0000
		STR 	54H 			//08C7 	10D4
		LDR 	53H, 0H 			//08C8 	1853
		MOVLB 	2H 			//08C9 	1022
		ADDWR 	30H, 1H 		//08CA 	17B0
		MOVLB 	1H 			//08CB 	1021
		LDR 	54H, 0H 			//08CC 	1854
		MOVLB 	2H 			//08CD 	1022
		ADDWFC 	31H, 1H 		//08CE 	0DB1
		MOVLB 	1H 			//08CF 	1021
		INCR 	43H, 1H 		//08D0 	1AC3
		BTSC 	3H, 2H 			//08D1 	2903
		INCR 	44H, 1H 		//08D2 	1AC4
		LCALL 	709H 			//08D3 	3709
		MOVLP 	8H 			//08D4 	0188
		LCALL 	600H 			//08D5 	3600
		MOVLP 	8H 			//08D6 	0188
		BTSC 	3H, 0H 			//08D7 	2803
		LJUMP 	AAH 			//08D8 	38AA
		MOVLB 	1H 			//08D9 	1021
		LDR 	43H, 0H 			//08DA 	1843
		STR 	4H 			//08DB 	1084
		LDR 	44H, 0H 			//08DC 	1844
		STR 	5H 			//08DD 	1085
		MOVIW 	FSR0++ 		//08DE 	1012
		XORWI 	2EH 			//08DF 	0A2E
		BTSS 	3H, 2H 			//08E0 	2D03
		LJUMP 	11BH 			//08E1 	391B
		MOVLB 	2H 			//08E2 	1022
		BSR 	2DH, 6H 			//08E3 	272D
		MOVLB 	1H 			//08E4 	1021
		INCR 	43H, 1H 		//08E5 	1AC3
		BTSC 	3H, 2H 			//08E6 	2903
		INCR 	44H, 1H 		//08E7 	1AC4
		MOVLB 	2H 			//08E8 	1022
		CLRF 	35H 			//08E9 	11B5
		CLRF 	36H 			//08EA 	11B6
		LCALL 	6FBH 			//08EB 	36FB
		MOVLP 	8H 			//08EC 	0188
		LCALL 	600H 			//08ED 	3600
		MOVLP 	8H 			//08EE 	0188
		BTSS 	3H, 0H 			//08EF 	2C03
		LJUMP 	122H 			//08F0 	3922
		LCALL 	6FBH 			//08F1 	36FB
		STR 	53H 			//08F2 	10D3
		CLRF 	54H 			//08F3 	11D4
		MOVLB 	2H 			//08F4 	1022
		LDR 	36H, 0H 			//08F5 	1836
		MOVLB 	0H 			//08F6 	1020
		STR 	3CH 			//08F7 	10BC
		MOVLB 	2H 			//08F8 	1022
		LDR 	35H, 0H 			//08F9 	1835
		MOVLB 	0H 			//08FA 	1020
		STR 	3BH 			//08FB 	10BB
		LDWI 	AH 			//08FC 	000A
		STR 	3DH 			//08FD 	10BD
		CLRF 	3EH 			//08FE 	11BE
		MOVLP 	4H 			//08FF 	0184
		LCALL 	402H 			//0900 	3402
		MOVLP 	8H 			//0901 	0188
		MOVLB 	1H 			//0902 	1021
		LDR 	53H, 0H 			//0903 	1853
		MOVLB 	0H 			//0904 	1020
		ADDWR 	3BH, 0H 		//0905 	173B
		MOVLB 	1H 			//0906 	1021
		STR 	55H 			//0907 	10D5
		LDR 	54H, 0H 			//0908 	1854
		MOVLB 	0H 			//0909 	1020
		ADDWFC 	3CH, 0H 		//090A 	0D3C
		MOVLB 	1H 			//090B 	1021
		STR 	56H 			//090C 	10D6
		LDR 	55H, 0H 			//090D 	1855
		ADDWI 	D0H 			//090E 	0ED0
		MOVLB 	2H 			//090F 	1022
		STR 	35H 			//0910 	10B5
		LDWI 	FFH 			//0911 	00FF
		MOVLB 	1H 			//0912 	1021
		ADDWFC 	56H, 0H 		//0913 	0D56
		MOVLB 	2H 			//0914 	1022
		STR 	36H 			//0915 	10B6
		MOVLB 	1H 			//0916 	1021
		INCR 	43H, 1H 		//0917 	1AC3
		BTSC 	3H, 2H 			//0918 	2903
		INCR 	44H, 1H 		//0919 	1AC4
		LJUMP 	EBH 			//091A 	38EB
		MOVLB 	2H 			//091B 	1022
		CLRF 	35H 			//091C 	11B5
		CLRF 	36H 			//091D 	11B6
		BSR 	2DH, 4H 			//091E 	262D
		LJUMP 	122H 			//091F 	3922
		BSR 	2DH, 2H 			//0920 	252D
		LJUMP 	131H 			//0921 	3931
		LCALL 	6BFH 			//0922 	36BF
		MOVLP 	8H 			//0923 	0188
		XORWI 	0H 			//0924 	0A00
		BTSC 	3H, 2H 			//0925 	2903
		LJUMP 	546H 			//0926 	3D46
		XORWI 	64H 			//0927 	0A64
		BTSC 	3H, 2H 			//0928 	2903
		LJUMP 	131H 			//0929 	3931
		XORWI 	2H 			//092A 	0A02
		BTSC 	3H, 2H 			//092B 	2903
		LJUMP 	120H 			//092C 	3920
		XORWI 	FH 			//092D 	0A0F
		BTSC 	3H, 2H 			//092E 	2903
		LJUMP 	131H 			//092F 	3931
		LJUMP 	7DH 			//0930 	387D
		MOVLB 	1H 			//0931 	1021
		LDWI 	7H 			//0932 	0007
		CLRF 	53H 			//0933 	11D3
		MOVLB 	2H 			//0934 	1022
		ANDWR 	2DH, 0H 		//0935 	152D
		MOVLB 	1H 			//0936 	1021
		STR 	54H 			//0937 	10D4
		LDR 	53H, 0H 			//0938 	1853
		IORWR 	54H, 0H 		//0939 	1454
		BTSC 	3H, 2H 			//093A 	2903
		LJUMP 	428H 			//093B 	3C28
		MOVLB 	2H 			//093C 	1022
		BTSS 	2DH, 4H 		//093D 	2E2D
		LJUMP 	142H 			//093E 	3942
		LDWI 	6H 			//093F 	0006
		STR 	35H 			//0940 	10B5
		CLRF 	36H 			//0941 	11B6
		LDR 	23H, 0H 			//0942 	1823
		STR 	6H 			//0943 	1086
		CLRF 	7H 			//0944 	1187
		MOVIW 	0H[1] 			//0945 	0F40
		STR 	32H 			//0946 	10B2
		MOVIW 	1H[1] 			//0947 	0F41
		STR 	33H 			//0948 	10B3
		MOVIW 	2H[1] 			//0949 	0F42
		STR 	34H 			//094A 	10B4
		LDWI 	3H 			//094B 	0003
		ADDWR 	23H, 1H 		//094C 	17A3
		LDR 	32H, 0H 			//094D 	1832
		MOVLB 	0H 			//094E 	1020
		STR 	3FH 			//094F 	10BF
		MOVLB 	2H 			//0950 	1022
		LDR 	33H, 0H 			//0951 	1833
		MOVLB 	0H 			//0952 	1020
		STR 	40H 			//0953 	10C0
		MOVLB 	2H 			//0954 	1022
		LDR 	34H, 0H 			//0955 	1834
		LCALL 	737H 			//0956 	3737
		MOVLP 	8H 			//0957 	0188
		LCALL 	549H 			//0958 	3549
		MOVLP 	8H 			//0959 	0188
		BTSC 	3H, 0H 			//095A 	2803
		LJUMP 	177H 			//095B 	3977
		MOVLB 	2H 			//095C 	1022
		LDR 	32H, 0H 			//095D 	1832
		MOVLB 	0H 			//095E 	1020
		STR 	2DH 			//095F 	10AD
		MOVLB 	2H 			//0960 	1022
		LDR 	33H, 0H 			//0961 	1833
		MOVLB 	0H 			//0962 	1020
		STR 	2EH 			//0963 	10AE
		MOVLB 	2H 			//0964 	1022
		LDR 	34H, 0H 			//0965 	1834
		MOVLB 	0H 			//0966 	1020
		STR 	2FH 			//0967 	10AF
		LCALL 	60FH 			//0968 	360F
		MOVLP 	8H 			//0969 	0188
		LDR 	2DH, 0H 			//096A 	182D
		MOVLB 	2H 			//096B 	1022
		STR 	32H 			//096C 	10B2
		MOVLB 	0H 			//096D 	1020
		LDR 	2EH, 0H 			//096E 	182E
		MOVLB 	2H 			//096F 	1022
		STR 	33H 			//0970 	10B3
		MOVLB 	0H 			//0971 	1020
		LDR 	2FH, 0H 			//0972 	182F
		MOVLB 	2H 			//0973 	1022
		STR 	34H 			//0974 	10B4
		LDWI 	3H 			//0975 	0003
		IORWR 	2CH, 1H 		//0976 	14AC
		MOVLB 	2H 			//0977 	1022
		CLRF 	2EH 			//0978 	11AE
		CLRF 	2FH 			//0979 	11AF
		LDR 	34H, 0H 			//097A 	1834
		IORWR 	33H, 0H 		//097B 	1433
		IORWR 	32H, 0H 		//097C 	1432
		BTSC 	3H, 2H 			//097D 	2903
		LJUMP 	215H 			//097E 	3A15
		LDWI 	32H 			//097F 	0032
		STR 	6H 			//0980 	1086
		LDWI 	1H 			//0981 	0001
		STR 	7H 			//0982 	1087
		LCALL 	73DH 			//0983 	373D
		MOVLP 	8H 			//0984 	0188
		MOVIW 	2H[1] 			//0985 	0F42
		STR 	55H 			//0986 	10D5
		MOVIW 	3H[1] 			//0987 	0F43
		STR 	56H 			//0988 	10D6
		LDWI 	FH 			//0989 	000F
		LSRF 	56H, 1H 		//098A 	06D6
		RRR 	55H, 1H 			//098B 	1CD5
		RRR 	54H, 1H 			//098C 	1CD4
		RRR 	53H, 1H 			//098D 	1CD3
		DECRSZ 	9H, 1H 		//098E 	1B89
		LJUMP 	18AH 			//098F 	398A
		LDR 	54H, 0H 			//0990 	1854
		MOVLB 	2H 			//0991 	1022
		STR 	2FH 			//0992 	10AF
		MOVLB 	1H 			//0993 	1021
		LDR 	53H, 0H 			//0994 	1853
		MOVLB 	2H 			//0995 	1022
		STR 	2EH 			//0996 	10AE
		LDWI 	82H 			//0997 	0082
		CLRF 	2FH 			//0998 	11AF
		ADDWR 	2EH, 1H 		//0999 	17AE
		BTSS 	3H, 0H 			//099A 	2C03
		DECR 	2FH, 1H 		//099B 	13AF
		LDWI 	FFH 			//099C 	00FF
		ADDWR 	2EH, 1H 		//099D 	17AE
		BTSS 	3H, 0H 			//099E 	2C03
		DECR 	2FH, 1H 		//099F 	13AF
		LDWI 	3H 			//09A0 	0003
		MOVLB 	0H 			//09A1 	1020
		STR 	3BH 			//09A2 	10BB
		CLRF 	3CH 			//09A3 	11BC
		MOVLB 	2H 			//09A4 	1022
		LDR 	2FH, 0H 			//09A5 	182F
		MOVLB 	0H 			//09A6 	1020
		STR 	3EH 			//09A7 	10BE
		MOVLB 	2H 			//09A8 	1022
		LDR 	2EH, 0H 			//09A9 	182E
		MOVLB 	0H 			//09AA 	1020
		STR 	3DH 			//09AB 	10BD
		MOVLP 	4H 			//09AC 	0184
		LCALL 	402H 			//09AD 	3402
		MOVLP 	8H 			//09AE 	0188
		LDR 	3CH, 0H 			//09AF 	183C
		MOVLB 	2H 			//09B0 	1022
		STR 	2FH 			//09B1 	10AF
		MOVLB 	0H 			//09B2 	1020
		LDR 	3BH, 0H 			//09B3 	183B
		MOVLB 	2H 			//09B4 	1022
		STR 	2EH 			//09B5 	10AE
		LDWI 	AH 			//09B6 	000A
		MOVLB 	0H 			//09B7 	1020
		STR 	33H 			//09B8 	10B3
		CLRF 	34H 			//09B9 	11B4
		MOVLB 	2H 			//09BA 	1022
		LDR 	2FH, 0H 			//09BB 	182F
		MOVLB 	0H 			//09BC 	1020
		STR 	36H 			//09BD 	10B6
		MOVLB 	2H 			//09BE 	1022
		LDR 	2EH, 0H 			//09BF 	182E
		MOVLB 	0H 			//09C0 	1020
		STR 	35H 			//09C1 	10B5
		MOVLP 	4H 			//09C2 	0184
		LCALL 	417H 			//09C3 	3417
		MOVLP 	8H 			//09C4 	0188
		LDR 	34H, 0H 			//09C5 	1834
		MOVLB 	2H 			//09C6 	1022
		STR 	2FH 			//09C7 	10AF
		MOVLB 	0H 			//09C8 	1020
		LDR 	33H, 0H 			//09C9 	1833
		MOVLB 	2H 			//09CA 	1022
		STR 	2EH 			//09CB 	10AE
		BTSS 	2FH, 7H 		//09CC 	2FAF
		LJUMP 	1D2H 			//09CD 	39D2
		LDWI 	FFH 			//09CE 	00FF
		ADDWR 	2EH, 1H 		//09CF 	17AE
		BTSS 	3H, 0H 			//09D0 	2C03
		DECR 	2FH, 1H 		//09D1 	13AF
		DECR 	2EH, 0H 		//09D2 	132E
		XORWI 	FFH 			//09D3 	0AFF
		MOVLP 	3H 			//09D4 	0183
		LCALL 	327H 			//09D5 	3327
		MOVLP 	8H 			//09D6 	0188
		LCALL 	6E2H 			//09D7 	36E2
		MOVLP 	8H 			//09D8 	0188
		LCALL 	725H 			//09D9 	3725
		MOVLB 	2H 			//09DA 	1022
		LDR 	24H, 0H 			//09DB 	1824
		MOVLB 	1H 			//09DC 	1021
		STR 	23H 			//09DD 	10A3
		MOVLB 	2H 			//09DE 	1022
		LDR 	25H, 0H 			//09DF 	1825
		MOVLB 	1H 			//09E0 	1021
		STR 	24H 			//09E1 	10A4
		MOVLB 	2H 			//09E2 	1022
		LDR 	26H, 0H 			//09E3 	1826
		MOVLB 	1H 			//09E4 	1021
		STR 	25H 			//09E5 	10A5
		MOVLP 	5H 			//09E6 	0185
		LCALL 	577H 			//09E7 	3577
		MOVLP 	8H 			//09E8 	0188
		LDR 	20H, 0H 			//09E9 	1820
		MOVLB 	2H 			//09EA 	1022
		STR 	24H 			//09EB 	10A4
		MOVLB 	1H 			//09EC 	1021
		LDR 	21H, 0H 			//09ED 	1821
		MOVLB 	2H 			//09EE 	1022
		STR 	25H 			//09EF 	10A5
		MOVLB 	1H 			//09F0 	1021
		LDR 	22H, 0H 			//09F1 	1822
		MOVLB 	2H 			//09F2 	1022
		STR 	26H 			//09F3 	10A6
		LCALL 	6ABH 			//09F4 	36AB
		MOVLP 	8H 			//09F5 	0188
		LDWI 	80H 			//09F6 	0080
		CLRF 	42H 			//09F7 	11C2
		STR 	43H 			//09F8 	10C3
		LDWI 	3FH 			//09F9 	003F
		STR 	44H 			//09FA 	10C4
		LCALL 	549H 			//09FB 	3549
		MOVLP 	8H 			//09FC 	0188
		BTSC 	3H, 0H 			//09FD 	2803
		LJUMP 	205H 			//09FE 	3A05
		LDWI 	FFH 			//09FF 	00FF
		MOVLB 	2H 			//0A00 	1022
		ADDWR 	2EH, 1H 		//0A01 	17AE
		BTSS 	3H, 0H 			//0A02 	2C03
		DECR 	2FH, 1H 		//0A03 	13AF
		LJUMP 	215H 			//0A04 	3A15
		MOVLB 	2H 			//0A05 	1022
		LCALL 	6ABH 			//0A06 	36AB
		MOVLP 	8H 			//0A07 	0188
		LDWI 	20H 			//0A08 	0020
		CLRF 	42H 			//0A09 	11C2
		STR 	43H 			//0A0A 	10C3
		LDWI 	41H 			//0A0B 	0041
		STR 	44H 			//0A0C 	10C4
		LCALL 	549H 			//0A0D 	3549
		MOVLP 	8H 			//0A0E 	0188
		BTSS 	3H, 0H 			//0A0F 	2C03
		LJUMP 	215H 			//0A10 	3A15
		MOVLB 	2H 			//0A11 	1022
		INCR 	2EH, 1H 		//0A12 	1AAE
		BTSC 	3H, 2H 			//0A13 	2903
		INCR 	2FH, 1H 		//0A14 	1AAF
		MOVLB 	2H 			//0A15 	1022
		LDR 	36H, 0H 			//0A16 	1836
		LCALL 	6DCH 			//0A17 	36DC
		MOVLP 	8H 			//0A18 	0188
		BTSS 	3H, 2H 			//0A19 	2D03
		LJUMP 	21EH 			//0A1A 	3A1E
		LDWI 	DH 			//0A1B 	000D
		MOVLB 	2H 			//0A1C 	1022
		SUBWR 	35H, 0H 		//0A1D 	1235
		BTSC 	3H, 0H 			//0A1E 	2803
		LJUMP 	24AH 			//0A1F 	3A4A
		MOVLB 	2H 			//0A20 	1022
		LDR 	35H, 0H 			//0A21 	1835
		MOVLP 	2H 			//0A22 	0182
		LCALL 	29FH 			//0A23 	329F
		MOVLP 	8H 			//0A24 	0188
		LDR 	2CH, 0H 			//0A25 	182C
		MOVLB 	0H 			//0A26 	1020
		STR 	41H 			//0A27 	10C1
		MOVLB 	1H 			//0A28 	1021
		LDR 	2DH, 0H 			//0A29 	182D
		MOVLB 	0H 			//0A2A 	1020
		STR 	42H 			//0A2B 	10C2
		MOVLB 	1H 			//0A2C 	1021
		LDR 	2EH, 0H 			//0A2D 	182E
		MOVLB 	0H 			//0A2E 	1020
		STR 	43H 			//0A2F 	10C3
		MOVLB 	2H 			//0A30 	1022
		LDR 	32H, 0H 			//0A31 	1832
		MOVLB 	0H 			//0A32 	1020
		STR 	44H 			//0A33 	10C4
		MOVLB 	2H 			//0A34 	1022
		LDR 	33H, 0H 			//0A35 	1833
		MOVLB 	0H 			//0A36 	1020
		STR 	45H 			//0A37 	10C5
		MOVLB 	2H 			//0A38 	1022
		LDR 	34H, 0H 			//0A39 	1834
		MOVLB 	0H 			//0A3A 	1020
		STR 	46H 			//0A3B 	10C6
		MOVLP 	1H 			//0A3C 	0181
		LCALL 	1F1H 			//0A3D 	31F1
		MOVLP 	8H 			//0A3E 	0188
		LDR 	41H, 0H 			//0A3F 	1841
		MOVLB 	2H 			//0A40 	1022
		STR 	32H 			//0A41 	10B2
		MOVLB 	0H 			//0A42 	1020
		LDR 	42H, 0H 			//0A43 	1842
		MOVLB 	2H 			//0A44 	1022
		STR 	33H 			//0A45 	10B3
		MOVLB 	0H 			//0A46 	1020
		LDR 	43H, 0H 			//0A47 	1843
		MOVLB 	2H 			//0A48 	1022
		STR 	34H 			//0A49 	10B4
		MOVLB 	2H 			//0A4A 	1022
		LDR 	2FH, 0H 			//0A4B 	182F
		LCALL 	6DCH 			//0A4C 	36DC
		MOVLP 	8H 			//0A4D 	0188
		BTSS 	3H, 2H 			//0A4E 	2D03
		LJUMP 	253H 			//0A4F 	3A53
		LDWI 	AH 			//0A50 	000A
		MOVLB 	2H 			//0A51 	1022
		SUBWR 	2EH, 0H 		//0A52 	122E
		BTSC 	3H, 0H 			//0A53 	2803
		LJUMP 	270H 			//0A54 	3A70
		MOVLB 	2H 			//0A55 	1022
		LDR 	34H, 0H 			//0A56 	1834
		IORWR 	33H, 0H 		//0A57 	1433
		IORWR 	32H, 0H 		//0A58 	1432
		BTSC 	3H, 2H 			//0A59 	2903
		LJUMP 	2B5H 			//0A5A 	3AB5
		LCALL 	6EFH 			//0A5B 	36EF
		MOVLP 	8H 			//0A5C 	0188
		LCALL 	5ABH 			//0A5D 	35AB
		MOVLP 	8H 			//0A5E 	0188
		LDR 	37H, 0H 			//0A5F 	1837
		IORWR 	36H, 0H 		//0A60 	1436
		IORWR 	35H, 0H 		//0A61 	1435
		IORWR 	34H, 0H 		//0A62 	1434
		BTSS 	3H, 2H 			//0A63 	2D03
		LJUMP 	2B5H 			//0A64 	3AB5
		MOVLB 	2H 			//0A65 	1022
		LDR 	2FH, 0H 			//0A66 	182F
		LCALL 	6DCH 			//0A67 	36DC
		MOVLP 	8H 			//0A68 	0188
		BTSS 	3H, 2H 			//0A69 	2D03
		LJUMP 	26EH 			//0A6A 	3A6E
		LDWI 	2H 			//0A6B 	0002
		MOVLB 	2H 			//0A6C 	1022
		SUBWR 	2EH, 0H 		//0A6D 	122E
		BTSS 	3H, 0H 			//0A6E 	2C03
		LJUMP 	2B5H 			//0A6F 	3AB5
		MOVLB 	2H 			//0A70 	1022
		LCALL 	6ABH 			//0A71 	36AB
		MOVLP 	8H 			//0A72 	0188
		LDWI 	70H 			//0A73 	0070
		STR 	42H 			//0A74 	10C2
		LDWI 	89H 			//0A75 	0089
		STR 	43H 			//0A76 	10C3
		LDWI 	40H 			//0A77 	0040
		STR 	44H 			//0A78 	10C4
		LCALL 	549H 			//0A79 	3549
		MOVLP 	8H 			//0A7A 	0188
		BTSC 	3H, 0H 			//0A7B 	2803
		LJUMP 	27FH 			//0A7C 	3A7F
		LDWI 	F7H 			//0A7D 	00F7
		LJUMP 	280H 			//0A7E 	3A80
		LDWI 	F8H 			//0A7F 	00F8
		MOVLB 	2H 			//0A80 	1022
		ADDWR 	2EH, 1H 		//0A81 	17AE
		BTSS 	3H, 0H 			//0A82 	2C03
		DECR 	2FH, 1H 		//0A83 	13AF
		LDR 	2EH, 0H 			//0A84 	182E
		MOVLP 	3H 			//0A85 	0183
		LCALL 	327H 			//0A86 	3327
		MOVLP 	8H 			//0A87 	0188
		LCALL 	6E2H 			//0A88 	36E2
		MOVLP 	8H 			//0A89 	0188
		MOVLB 	0H 			//0A8A 	1020
		STR 	2DH 			//0A8B 	10AD
		MOVLB 	2H 			//0A8C 	1022
		LDR 	33H, 0H 			//0A8D 	1833
		MOVLB 	0H 			//0A8E 	1020
		STR 	2EH 			//0A8F 	10AE
		MOVLB 	2H 			//0A90 	1022
		LDR 	34H, 0H 			//0A91 	1834
		MOVLB 	0H 			//0A92 	1020
		STR 	2FH 			//0A93 	10AF
		MOVLB 	2H 			//0A94 	1022
		LDR 	24H, 0H 			//0A95 	1824
		MOVLB 	0H 			//0A96 	1020
		STR 	30H 			//0A97 	10B0
		MOVLB 	2H 			//0A98 	1022
		LDR 	25H, 0H 			//0A99 	1825
		MOVLB 	0H 			//0A9A 	1020
		STR 	31H 			//0A9B 	10B1
		MOVLB 	2H 			//0A9C 	1022
		LDR 	26H, 0H 			//0A9D 	1826
		MOVLB 	0H 			//0A9E 	1020
		STR 	32H 			//0A9F 	10B2
		LCALL 	791H 			//0AA0 	3791
		MOVLP 	8H 			//0AA1 	0188
		LDR 	30H, 0H 			//0AA2 	1830
		MOVLB 	2H 			//0AA3 	1022
		STR 	2BH 			//0AA4 	10AB
		MOVLB 	0H 			//0AA5 	1020
		LDR 	2FH, 0H 			//0AA6 	182F
		MOVLB 	2H 			//0AA7 	1022
		STR 	2AH 			//0AA8 	10AA
		MOVLB 	0H 			//0AA9 	1020
		LDR 	2EH, 0H 			//0AAA 	182E
		MOVLB 	2H 			//0AAB 	1022
		STR 	29H 			//0AAC 	10A9
		MOVLB 	0H 			//0AAD 	1020
		LDR 	2DH, 0H 			//0AAE 	182D
		MOVLB 	2H 			//0AAF 	1022
		STR 	28H 			//0AB0 	10A8
		CLRF 	32H 			//0AB1 	11B2
		CLRF 	33H 			//0AB2 	11B3
		CLRF 	34H 			//0AB3 	11B4
		LJUMP 	2F0H 			//0AB4 	3AF0
		MOVLB 	2H 			//0AB5 	1022
		LCALL 	6EFH 			//0AB6 	36EF
		MOVLP 	8H 			//0AB7 	0188
		LCALL 	5ABH 			//0AB8 	35AB
		MOVLP 	8H 			//0AB9 	0188
		LCALL 	6CEH 			//0ABA 	36CE
		MOVLB 	2H 			//0ABB 	1022
		STR 	28H 			//0ABC 	10A8
		LDR 	2BH, 0H 			//0ABD 	182B
		MOVLB 	0H 			//0ABE 	1020
		STR 	38H 			//0ABF 	10B8
		MOVLB 	2H 			//0AC0 	1022
		LDR 	2AH, 0H 			//0AC1 	182A
		MOVLB 	0H 			//0AC2 	1020
		STR 	37H 			//0AC3 	10B7
		MOVLB 	2H 			//0AC4 	1022
		LDR 	29H, 0H 			//0AC5 	1829
		MOVLB 	0H 			//0AC6 	1020
		STR 	36H 			//0AC7 	10B6
		MOVLB 	2H 			//0AC8 	1022
		LDR 	28H, 0H 			//0AC9 	1828
		MOVLB 	0H 			//0ACA 	1020
		STR 	35H 			//0ACB 	10B5
		MOVLP 	1H 			//0ACC 	0181
		LCALL 	1D4H 			//0ACD 	31D4
		MOVLP 	8H 			//0ACE 	0188
		LDR 	35H, 0H 			//0ACF 	1835
		STR 	4DH 			//0AD0 	10CD
		LDR 	36H, 0H 			//0AD1 	1836
		STR 	4EH 			//0AD2 	10CE
		LDR 	37H, 0H 			//0AD3 	1837
		STR 	4FH 			//0AD4 	10CF
		MOVLB 	2H 			//0AD5 	1022
		LDR 	32H, 0H 			//0AD6 	1832
		MOVLB 	0H 			//0AD7 	1020
		STR 	50H 			//0AD8 	10D0
		MOVLB 	2H 			//0AD9 	1022
		LDR 	33H, 0H 			//0ADA 	1833
		MOVLB 	0H 			//0ADB 	1020
		STR 	51H 			//0ADC 	10D1
		MOVLB 	2H 			//0ADD 	1022
		LDR 	34H, 0H 			//0ADE 	1834
		MOVLB 	0H 			//0ADF 	1020
		STR 	52H 			//0AE0 	10D2
		LCALL 	617H 			//0AE1 	3617
		MOVLP 	8H 			//0AE2 	0188
		LDR 	4DH, 0H 			//0AE3 	184D
		MOVLB 	2H 			//0AE4 	1022
		STR 	32H 			//0AE5 	10B2
		MOVLB 	0H 			//0AE6 	1020
		LDR 	4EH, 0H 			//0AE7 	184E
		MOVLB 	2H 			//0AE8 	1022
		STR 	33H 			//0AE9 	10B3
		MOVLB 	0H 			//0AEA 	1020
		LDR 	4FH, 0H 			//0AEB 	184F
		MOVLB 	2H 			//0AEC 	1022
		STR 	34H 			//0AED 	10B4
		CLRF 	2EH 			//0AEE 	11AE
		CLRF 	2FH 			//0AEF 	11AF
		CLRF 	37H 			//0AF0 	11B7
		INCR 	37H, 1H 		//0AF1 	1AB7
		LCALL 	633H 			//0AF2 	3633
		MOVLP 	8H 			//0AF3 	0188
		LCALL 	71AH 			//0AF4 	371A
		MOVLP 	8H 			//0AF5 	0188
		BTSS 	3H, 2H 			//0AF6 	2D03
		LJUMP 	302H 			//0AF7 	3B02
		LCALL 	748H 			//0AF8 	3748
		MOVLP 	8H 			//0AF9 	0188
		BTSS 	3H, 2H 			//0AFA 	2D03
		LJUMP 	302H 			//0AFB 	3B02
		LCALL 	743H 			//0AFC 	3743
		MOVLP 	8H 			//0AFD 	0188
		BTSS 	3H, 2H 			//0AFE 	2D03
		LJUMP 	302H 			//0AFF 	3B02
		LCALL 	74DH 			//0B00 	374D
		MOVLP 	8H 			//0B01 	0188
		BTSS 	3H, 0H 			//0B02 	2C03
		LJUMP 	309H 			//0B03 	3B09
		LDWI 	AH 			//0B04 	000A
		INCR 	37H, 1H 		//0B05 	1AB7
		XORWR 	37H, 0H 		//0B06 	1637
		BTSS 	3H, 2H 			//0B07 	2D03
		LJUMP 	2F2H 			//0B08 	3AF2
		LDR 	37H, 0H 			//0B09 	1837
		LCALL 	702H 			//0B0A 	3702
		MOVLP 	8H 			//0B0B 	0188
		LDR 	35H, 0H 			//0B0C 	1835
		MOVLB 	1H 			//0B0D 	1021
		ADDWR 	53H, 0H 		//0B0E 	1753
		STR 	55H 			//0B0F 	10D5
		MOVLB 	2H 			//0B10 	1022
		LDR 	36H, 0H 			//0B11 	1836
		MOVLB 	1H 			//0B12 	1021
		ADDWFC 	54H, 0H 		//0B13 	0D54
		STR 	56H 			//0B14 	10D6
		MOVLB 	2H 			//0B15 	1022
		LDR 	2EH, 0H 			//0B16 	182E
		MOVLB 	1H 			//0B17 	1021
		ADDWR 	55H, 0H 		//0B18 	1755
		STR 	57H 			//0B19 	10D7
		MOVLB 	2H 			//0B1A 	1022
		LDR 	2FH, 0H 			//0B1B 	182F
		MOVLB 	1H 			//0B1C 	1021
		ADDWFC 	56H, 0H 		//0B1D 	0D56
		STR 	58H 			//0B1E 	10D8
		LDR 	57H, 0H 			//0B1F 	1857
		MOVLB 	2H 			//0B20 	1022
		SUBWR 	30H, 1H 		//0B21 	12B0
		MOVLB 	1H 			//0B22 	1021
		LDR 	58H, 0H 			//0B23 	1858
		MOVLB 	2H 			//0B24 	1022
		SUBWFB 	31H, 1H 		//0B25 	0BB1
		LDR 	35H, 0H 			//0B26 	1835
		IORWR 	36H, 0H 		//0B27 	1436
		BTSC 	3H, 2H 			//0B28 	2903
		LJUMP 	32EH 			//0B29 	3B2E
		LDWI 	FFH 			//0B2A 	00FF
		ADDWR 	30H, 1H 		//0B2B 	17B0
		BTSS 	3H, 0H 			//0B2C 	2C03
		DECR 	31H, 1H 		//0B2D 	13B1
		LDR 	2CH, 0H 			//0B2E 	182C
		ANDWI 	3H 			//0B2F 	0903
		BTSC 	3H, 2H 			//0B30 	2903
		LJUMP 	336H 			//0B31 	3B36
		LDWI 	FFH 			//0B32 	00FF
		ADDWR 	30H, 1H 		//0B33 	17B0
		BTSS 	3H, 0H 			//0B34 	2C03
		DECR 	31H, 1H 		//0B35 	13B1
		BTSS 	2CH, 2H 		//0B36 	2D2C
		LJUMP 	35CH 			//0B37 	3B5C
		LDR 	2CH, 0H 			//0B38 	182C
		ANDWI 	3H 			//0B39 	0903
		BTSC 	3H, 2H 			//0B3A 	2903
		LJUMP 	343H 			//0B3B 	3B43
		LCALL 	6A5H 			//0B3C 	36A5
		MOVLP 	8H 			//0B3D 	0188
		LDWI 	2DH 			//0B3E 	002D
		STR 	1H 			//0B3F 	1081
		INCR 	41H, 1H 		//0B40 	1AC1
		BTSC 	3H, 2H 			//0B41 	2903
		INCR 	42H, 1H 		//0B42 	1AC2
		MOVLB 	2H 			//0B43 	1022
		LDR 	31H, 0H 			//0B44 	1831
		LCALL 	6DCH 			//0B45 	36DC
		MOVLP 	8H 			//0B46 	0188
		BTSS 	3H, 2H 			//0B47 	2D03
		LJUMP 	34CH 			//0B48 	3B4C
		LDWI 	1H 			//0B49 	0001
		MOVLB 	2H 			//0B4A 	1022
		SUBWR 	30H, 0H 		//0B4B 	1230
		BTSS 	3H, 0H 			//0B4C 	2C03
		LJUMP 	37FH 			//0B4D 	3B7F
		MOVLB 	1H 			//0B4E 	1021
		LCALL 	682H 			//0B4F 	3682
		MOVLP 	8H 			//0B50 	0188
		ADDWR 	30H, 1H 		//0B51 	17B0
		BTSS 	3H, 0H 			//0B52 	2C03
		DECR 	31H, 1H 		//0B53 	13B1
		LJUMP 	343H 			//0B54 	3B43
		LCALL 	6A5H 			//0B55 	36A5
		MOVLP 	8H 			//0B56 	0188
		LDWI 	20H 			//0B57 	0020
		LCALL 	6B7H 			//0B58 	36B7
		MOVLP 	8H 			//0B59 	0188
		BTSS 	3H, 0H 			//0B5A 	2C03
		DECR 	31H, 1H 		//0B5B 	13B1
		LDR 	31H, 0H 			//0B5C 	1831
		LCALL 	6DCH 			//0B5D 	36DC
		MOVLP 	8H 			//0B5E 	0188
		BTSS 	3H, 2H 			//0B5F 	2D03
		LJUMP 	364H 			//0B60 	3B64
		LDWI 	1H 			//0B61 	0001
		MOVLB 	2H 			//0B62 	1022
		SUBWR 	30H, 0H 		//0B63 	1230
		BTSC 	3H, 0H 			//0B64 	2803
		LJUMP 	355H 			//0B65 	3B55
		MOVLB 	2H 			//0B66 	1022
		LDR 	2CH, 0H 			//0B67 	182C
		ANDWI 	3H 			//0B68 	0903
		BTSC 	3H, 2H 			//0B69 	2903
		LJUMP 	37FH 			//0B6A 	3B7F
		LCALL 	6A5H 			//0B6B 	36A5
		MOVLP 	8H 			//0B6C 	0188
		LDWI 	2DH 			//0B6D 	002D
		LJUMP 	37BH 			//0B6E 	3B7B
		LCALL 	633H 			//0B6F 	3633
		MOVLP 	8H 			//0B70 	0188
		LCALL 	643H 			//0B71 	3643
		MOVLP 	8H 			//0B72 	0188
		LCALL 	752H 			//0B73 	3752
		MOVLP 	8H 			//0B74 	0188
		LCALL 	65CH 			//0B75 	365C
		MOVLP 	8H 			//0B76 	0188
		LCALL 	575H 			//0B77 	3575
		MOVLP 	8H 			//0B78 	0188
		LCALL 	68DH 			//0B79 	368D
		MOVLP 	8H 			//0B7A 	0188
		STR 	1H 			//0B7B 	1081
		INCR 	41H, 1H 		//0B7C 	1AC1
		BTSC 	3H, 2H 			//0B7D 	2903
		INCR 	42H, 1H 		//0B7E 	1AC2
		MOVLB 	2H 			//0B7F 	1022
		DECR 	37H, 1H 		//0B80 	13B7
		INCRSZ 	37H, 0H 		//0B81 	1F37
		LJUMP 	36FH 			//0B82 	3B6F
		LDR 	2FH, 0H 			//0B83 	182F
		LCALL 	6DCH 			//0B84 	36DC
		MOVLP 	8H 			//0B85 	0188
		BTSS 	3H, 2H 			//0B86 	2D03
		LJUMP 	38BH 			//0B87 	3B8B
		LDWI 	1H 			//0B88 	0001
		MOVLB 	2H 			//0B89 	1022
		SUBWR 	2EH, 0H 		//0B8A 	122E
		BTSS 	3H, 0H 			//0B8B 	2C03
		LJUMP 	394H 			//0B8C 	3B94
		MOVLB 	1H 			//0B8D 	1021
		LCALL 	682H 			//0B8E 	3682
		MOVLP 	8H 			//0B8F 	0188
		ADDWR 	2EH, 1H 		//0B90 	17AE
		BTSS 	3H, 0H 			//0B91 	2C03
		DECR 	2FH, 1H 		//0B92 	13AF
		LJUMP 	383H 			//0B93 	3B83
		MOVLB 	2H 			//0B94 	1022
		LDR 	36H, 0H 			//0B95 	1836
		LCALL 	6DCH 			//0B96 	36DC
		MOVLP 	8H 			//0B97 	0188
		BTSS 	3H, 2H 			//0B98 	2D03
		LJUMP 	39DH 			//0B99 	3B9D
		LDWI 	9H 			//0B9A 	0009
		MOVLB 	2H 			//0B9B 	1022
		SUBWR 	35H, 0H 		//0B9C 	1235
		BTSS 	3H, 0H 			//0B9D 	2C03
		LJUMP 	3A2H 			//0B9E 	3BA2
		LDWI 	8H 			//0B9F 	0008
		MOVLB 	2H 			//0BA0 	1022
		LJUMP 	3A4H 			//0BA1 	3BA4
		MOVLB 	2H 			//0BA2 	1022
		LDR 	35H, 0H 			//0BA3 	1835
		STR 	37H 			//0BA4 	10B7
		LCALL 	702H 			//0BA5 	3702
		MOVLP 	8H 			//0BA6 	0188
		SUBWR 	35H, 1H 		//0BA7 	12B5
		MOVLB 	1H 			//0BA8 	1021
		LDR 	54H, 0H 			//0BA9 	1854
		MOVLB 	2H 			//0BAA 	1022
		SUBWFB 	36H, 1H 		//0BAB 	0BB6
		LDR 	37H, 0H 			//0BAC 	1837
		BTSC 	3H, 2H 			//0BAD 	2903
		LJUMP 	3B5H 			//0BAE 	3BB5
		LCALL 	6A5H 			//0BAF 	36A5
		LDWI 	2EH 			//0BB0 	002E
		STR 	1H 			//0BB1 	1081
		INCR 	41H, 1H 		//0BB2 	1AC1
		BTSC 	3H, 2H 			//0BB3 	2903
		INCR 	42H, 1H 		//0BB4 	1AC2
		MOVLB 	2H 			//0BB5 	1022
		LDR 	37H, 0H 			//0BB6 	1837
		MOVLP 	3H 			//0BB7 	0183
		LCALL 	327H 			//0BB8 	3327
		MOVLP 	8H 			//0BB9 	0188
		LDR 	2CH, 0H 			//0BBA 	182C
		MOVLB 	2H 			//0BBB 	1022
		STR 	20H 			//0BBC 	10A0
		MOVLB 	1H 			//0BBD 	1021
		LDR 	2DH, 0H 			//0BBE 	182D
		MOVLB 	2H 			//0BBF 	1022
		STR 	21H 			//0BC0 	10A1
		MOVLB 	1H 			//0BC1 	1021
		LDR 	2EH, 0H 			//0BC2 	182E
		MOVLB 	2H 			//0BC3 	1022
		STR 	22H 			//0BC4 	10A2
		LDR 	20H, 0H 			//0BC5 	1820
		MOVLB 	1H 			//0BC6 	1021
		STR 	23H 			//0BC7 	10A3
		MOVLB 	2H 			//0BC8 	1022
		LDR 	21H, 0H 			//0BC9 	1821
		MOVLB 	1H 			//0BCA 	1021
		STR 	24H 			//0BCB 	10A4
		MOVLB 	2H 			//0BCC 	1022
		LDR 	22H, 0H 			//0BCD 	1822
		MOVLB 	1H 			//0BCE 	1021
		STR 	25H 			//0BCF 	10A5
		MOVLB 	2H 			//0BD0 	1022
		LDR 	32H, 0H 			//0BD1 	1832
		LCALL 	725H 			//0BD2 	3725
		MOVLP 	5H 			//0BD3 	0185
		LCALL 	577H 			//0BD4 	3577
		MOVLP 	8H 			//0BD5 	0188
		MOVLP 	7H 			//0BD6 	0187
		LCALL 	787H 			//0BD7 	3787
		MOVLP 	8H 			//0BD8 	0188
		LCALL 	5ABH 			//0BD9 	35AB
		MOVLP 	8H 			//0BDA 	0188
		LCALL 	6CEH 			//0BDB 	36CE
		MOVLP 	8H 			//0BDC 	0188
		LJUMP 	418H 			//0BDD 	3C18
		LCALL 	633H 			//0BDE 	3633
		MOVLP 	8H 			//0BDF 	0188
		LCALL 	643H 			//0BE0 	3643
		MOVLP 	8H 			//0BE1 	0188
		LCALL 	752H 			//0BE2 	3752
		MOVLP 	8H 			//0BE3 	0188
		LCALL 	65CH 			//0BE4 	365C
		MOVLP 	8H 			//0BE5 	0188
		LCALL 	575H 			//0BE6 	3575
		MOVLP 	8H 			//0BE7 	0188
		LCALL 	68DH 			//0BE8 	368D
		MOVLP 	8H 			//0BE9 	0188
		STR 	1H 			//0BEA 	1081
		INCR 	41H, 1H 		//0BEB 	1AC1
		BTSC 	3H, 2H 			//0BEC 	2903
		INCR 	42H, 1H 		//0BED 	1AC2
		MOVLB 	2H 			//0BEE 	1022
		LCALL 	633H 			//0BEF 	3633
		MOVLP 	8H 			//0BF0 	0188
		MOVLB 	0H 			//0BF1 	1020
		STR 	3AH 			//0BF2 	10BA
		MOVIW 	1H[0] 			//0BF3 	0F01
		STR 	3BH 			//0BF4 	10BB
		MOVIW 	2H[0] 			//0BF5 	0F02
		STR 	3CH 			//0BF6 	10BC
		MOVIW 	3H[0] 			//0BF7 	0F03
		STR 	3DH 			//0BF8 	10BD
		MOVLB 	2H 			//0BF9 	1022
		LDR 	2BH, 0H 			//0BFA 	182B
		MOVLB 	0H 			//0BFB 	1020
		STR 	41H 			//0BFC 	10C1
		MOVLB 	2H 			//0BFD 	1022
		LDR 	2AH, 0H 			//0BFE 	182A
		MOVLB 	0H 			//0BFF 	1020
		STR 	40H 			//0C00 	10C0
		MOVLB 	2H 			//0C01 	1022
		LDR 	29H, 0H 			//0C02 	1829
		MOVLB 	0H 			//0C03 	1020
		STR 	3FH 			//0C04 	10BF
		MOVLB 	2H 			//0C05 	1022
		LDR 	28H, 0H 			//0C06 	1828
		MOVLB 	0H 			//0C07 	1020
		STR 	3EH 			//0C08 	10BE
		LCALL 	575H 			//0C09 	3575
		MOVLP 	8H 			//0C0A 	0188
		LDR 	3DH, 0H 			//0C0B 	183D
		MOVLB 	2H 			//0C0C 	1022
		STR 	2BH 			//0C0D 	10AB
		MOVLB 	0H 			//0C0E 	1020
		LDR 	3CH, 0H 			//0C0F 	183C
		MOVLB 	2H 			//0C10 	1022
		STR 	2AH 			//0C11 	10AA
		MOVLB 	0H 			//0C12 	1020
		LDR 	3BH, 0H 			//0C13 	183B
		MOVLB 	2H 			//0C14 	1022
		STR 	29H 			//0C15 	10A9
		MOVLB 	0H 			//0C16 	1020
		LDR 	3AH, 0H 			//0C17 	183A
		MOVLB 	2H 			//0C18 	1022
		STR 	28H 			//0C19 	10A8
		DECR 	37H, 1H 		//0C1A 	13B7
		INCRSZ 	37H, 0H 		//0C1B 	1F37
		LJUMP 	3DEH 			//0C1C 	3BDE
		LDR 	35H, 0H 			//0C1D 	1835
		IORWR 	36H, 0H 		//0C1E 	1436
		BTSC 	3H, 2H 			//0C1F 	2903
		LJUMP 	7DH 			//0C20 	387D
		MOVLB 	1H 			//0C21 	1021
		LCALL 	682H 			//0C22 	3682
		MOVLP 	8H 			//0C23 	0188
		ADDWR 	35H, 1H 		//0C24 	17B5
		BTSS 	3H, 0H 			//0C25 	2C03
		DECR 	36H, 1H 		//0C26 	13B6
		LJUMP 	41DH 			//0C27 	3C1D
		MOVLB 	2H 			//0C28 	1022
		LDR 	23H, 0H 			//0C29 	1823
		STR 	6H 			//0C2A 	1086
		CLRF 	7H 			//0C2B 	1187
		LCALL 	73DH 			//0C2C 	373D
		MOVLP 	8H 			//0C2D 	0188
		LDR 	53H, 0H 			//0C2E 	1853
		MOVLB 	2H 			//0C2F 	1022
		STR 	28H 			//0C30 	10A8
		MOVLB 	1H 			//0C31 	1021
		LDR 	54H, 0H 			//0C32 	1854
		MOVLB 	2H 			//0C33 	1022
		STR 	29H 			//0C34 	10A9
		RLR 	9H, 1H 			//0C35 	1D89
		SUBWFB 	9H, 1H 		//0C36 	0B89
		COMR 	9H, 1H 			//0C37 	1989
		STR 	2AH 			//0C38 	10AA
		STR 	2BH 			//0C39 	10AB
		INCR 	23H, 1H 		//0C3A 	1AA3
		INCR 	23H, 1H 		//0C3B 	1AA3
		BTSS 	2BH, 7H 		//0C3C 	2FAB
		LJUMP 	44BH 			//0C3D 	3C4B
		LDWI 	3H 			//0C3E 	0003
		IORWR 	2CH, 1H 		//0C3F 	14AC
		COMR 	28H, 1H 		//0C40 	19A8
		COMR 	29H, 1H 		//0C41 	19A9
		COMR 	2AH, 1H 		//0C42 	19AA
		COMR 	2BH, 1H 		//0C43 	19AB
		INCR 	28H, 1H 		//0C44 	1AA8
		BTSC 	3H, 2H 			//0C45 	2903
		INCR 	29H, 1H 		//0C46 	1AA9
		BTSC 	3H, 2H 			//0C47 	2903
		INCR 	2AH, 1H 		//0C48 	1AAA
		BTSC 	3H, 2H 			//0C49 	2903
		INCR 	2BH, 1H 		//0C4A 	1AAB
		LDR 	35H, 0H 			//0C4B 	1835
		IORWR 	36H, 0H 		//0C4C 	1436
		BTSS 	3H, 2H 			//0C4D 	2D03
		LJUMP 	457H 			//0C4E 	3C57
		LDR 	2BH, 0H 			//0C4F 	182B
		IORWR 	2AH, 0H 		//0C50 	142A
		IORWR 	29H, 0H 		//0C51 	1429
		IORWR 	28H, 0H 		//0C52 	1428
		BTSC 	3H, 2H 			//0C53 	2903
		INCR 	35H, 1H 		//0C54 	1AB5
		BTSC 	3H, 2H 			//0C55 	2903
		INCR 	36H, 1H 		//0C56 	1AB6
		CLRF 	37H 			//0C57 	11B7
		INCR 	37H, 1H 		//0C58 	1AB7
		LCALL 	633H 			//0C59 	3633
		MOVLP 	8H 			//0C5A 	0188
		LCALL 	71AH 			//0C5B 	371A
		MOVLP 	8H 			//0C5C 	0188
		BTSS 	3H, 2H 			//0C5D 	2D03
		LJUMP 	469H 			//0C5E 	3C69
		LCALL 	748H 			//0C5F 	3748
		MOVLP 	8H 			//0C60 	0188
		BTSS 	3H, 2H 			//0C61 	2D03
		LJUMP 	469H 			//0C62 	3C69
		LCALL 	743H 			//0C63 	3743
		MOVLP 	8H 			//0C64 	0188
		BTSS 	3H, 2H 			//0C65 	2D03
		LJUMP 	469H 			//0C66 	3C69
		LCALL 	74DH 			//0C67 	374D
		MOVLP 	8H 			//0C68 	0188
		BTSS 	3H, 0H 			//0C69 	2C03
		LJUMP 	470H 			//0C6A 	3C70
		LDWI 	AH 			//0C6B 	000A
		INCR 	37H, 1H 		//0C6C 	1AB7
		XORWR 	37H, 0H 		//0C6D 	1637
		BTSS 	3H, 2H 			//0C6E 	2D03
		LJUMP 	459H 			//0C6F 	3C59
		LCALL 	70FH 			//0C70 	370F
		MOVLP 	8H 			//0C71 	0188
		LDR 	36H, 0H 			//0C72 	1836
		XORWI 	80H 			//0C73 	0A80
		MOVLB 	1H 			//0C74 	1021
		SUBWR 	55H, 0H 		//0C75 	1255
		BTSS 	3H, 2H 			//0C76 	2D03
		LJUMP 	47CH 			//0C77 	3C7C
		MOVLB 	2H 			//0C78 	1022
		LDR 	35H, 0H 			//0C79 	1835
		MOVLB 	1H 			//0C7A 	1021
		SUBWR 	53H, 0H 		//0C7B 	1253
		BTSC 	3H, 0H 			//0C7C 	2803
		LJUMP 	482H 			//0C7D 	3C82
		MOVLB 	2H 			//0C7E 	1022
		LDR 	35H, 0H 			//0C7F 	1835
		STR 	37H 			//0C80 	10B7
		LJUMP 	49AH 			//0C81 	3C9A
		MOVLB 	2H 			//0C82 	1022
		LDR 	37H, 0H 			//0C83 	1837
		LCALL 	702H 			//0C84 	3702
		MOVLP 	8H 			//0C85 	0188
		LDR 	36H, 0H 			//0C86 	1836
		XORWI 	80H 			//0C87 	0A80
		MOVLB 	1H 			//0C88 	1021
		STR 	55H 			//0C89 	10D5
		LDR 	54H, 0H 			//0C8A 	1854
		XORWI 	80H 			//0C8B 	0A80
		SUBWR 	55H, 0H 		//0C8C 	1255
		BTSS 	3H, 2H 			//0C8D 	2D03
		LJUMP 	492H 			//0C8E 	3C92
		LDR 	53H, 0H 			//0C8F 	1853
		MOVLB 	2H 			//0C90 	1022
		SUBWR 	35H, 0H 		//0C91 	1235
		BTSC 	3H, 0H 			//0C92 	2803
		LJUMP 	49AH 			//0C93 	3C9A
		MOVLB 	2H 			//0C94 	1022
		LDR 	37H, 0H 			//0C95 	1837
		STR 	35H 			//0C96 	10B5
		CLRF 	36H 			//0C97 	11B6
		BTSC 	35H, 7H 		//0C98 	2BB5
		DECR 	36H, 1H 		//0C99 	13B6
		MOVLB 	2H 			//0C9A 	1022
		LDR 	30H, 0H 			//0C9B 	1830
		IORWR 	31H, 0H 		//0C9C 	1431
		BTSC 	3H, 2H 			//0C9D 	2903
		LJUMP 	4A7H 			//0C9E 	3CA7
		LDR 	2CH, 0H 			//0C9F 	182C
		ANDWI 	3H 			//0CA0 	0903
		BTSC 	3H, 2H 			//0CA1 	2903
		LJUMP 	4A7H 			//0CA2 	3CA7
		LDWI 	FFH 			//0CA3 	00FF
		ADDWR 	30H, 1H 		//0CA4 	17B0
		BTSS 	3H, 0H 			//0CA5 	2C03
		DECR 	31H, 1H 		//0CA6 	13B1
		BTSS 	2DH, 6H 		//0CA7 	2F2D
		LJUMP 	4C2H 			//0CA8 	3CC2
		LDR 	36H, 0H 			//0CA9 	1836
		XORWI 	80H 			//0CAA 	0A80
		MOVLB 	1H 			//0CAB 	1021
		STR 	53H 			//0CAC 	10D3
		MOVLB 	2H 			//0CAD 	1022
		LDR 	31H, 0H 			//0CAE 	1831
		XORWI 	80H 			//0CAF 	0A80
		MOVLB 	1H 			//0CB0 	1021
		SUBWR 	53H, 0H 		//0CB1 	1253
		BTSS 	3H, 2H 			//0CB2 	2D03
		LJUMP 	4B7H 			//0CB3 	3CB7
		MOVLB 	2H 			//0CB4 	1022
		LDR 	30H, 0H 			//0CB5 	1830
		SUBWR 	35H, 0H 		//0CB6 	1235
		BTSC 	3H, 0H 			//0CB7 	2803
		LJUMP 	4BFH 			//0CB8 	3CBF
		MOVLB 	2H 			//0CB9 	1022
		LDR 	35H, 0H 			//0CBA 	1835
		SUBWR 	30H, 1H 		//0CBB 	12B0
		LDR 	36H, 0H 			//0CBC 	1836
		SUBWFB 	31H, 1H 		//0CBD 	0BB1
		LJUMP 	4C2H 			//0CBE 	3CC2
		MOVLB 	2H 			//0CBF 	1022
		CLRF 	30H 			//0CC0 	11B0
		CLRF 	31H 			//0CC1 	11B1
		LCALL 	70FH 			//0CC2 	370F
		MOVLP 	8H 			//0CC3 	0188
		LDR 	31H, 0H 			//0CC4 	1831
		XORWI 	80H 			//0CC5 	0A80
		MOVLB 	1H 			//0CC6 	1021
		SUBWR 	55H, 0H 		//0CC7 	1255
		BTSS 	3H, 2H 			//0CC8 	2D03
		LJUMP 	4CEH 			//0CC9 	3CCE
		MOVLB 	2H 			//0CCA 	1022
		LDR 	30H, 0H 			//0CCB 	1830
		MOVLB 	1H 			//0CCC 	1021
		SUBWR 	53H, 0H 		//0CCD 	1253
		BTSC 	3H, 0H 			//0CCE 	2803
		LJUMP 	4DAH 			//0CCF 	3CDA
		MOVLB 	2H 			//0CD0 	1022
		LDR 	37H, 0H 			//0CD1 	1837
		LCALL 	702H 			//0CD2 	3702
		MOVLP 	8H 			//0CD3 	0188
		SUBWR 	30H, 1H 		//0CD4 	12B0
		MOVLB 	1H 			//0CD5 	1021
		LDR 	54H, 0H 			//0CD6 	1854
		MOVLB 	2H 			//0CD7 	1022
		SUBWFB 	31H, 1H 		//0CD8 	0BB1
		LJUMP 	4DDH 			//0CD9 	3CDD
		MOVLB 	2H 			//0CDA 	1022
		CLRF 	30H 			//0CDB 	11B0
		CLRF 	31H 			//0CDC 	11B1
		BTSS 	2CH, 2H 		//0CDD 	2D2C
		LJUMP 	4F6H 			//0CDE 	3CF6
		LDR 	2CH, 0H 			//0CDF 	182C
		ANDWI 	3H 			//0CE0 	0903
		BTSC 	3H, 2H 			//0CE1 	2903
		LJUMP 	4EAH 			//0CE2 	3CEA
		LCALL 	6A5H 			//0CE3 	36A5
		MOVLP 	8H 			//0CE4 	0188
		LDWI 	2DH 			//0CE5 	002D
		STR 	1H 			//0CE6 	1081
		INCR 	41H, 1H 		//0CE7 	1AC1
		BTSC 	3H, 2H 			//0CE8 	2903
		INCR 	42H, 1H 		//0CE9 	1AC2
		MOVLB 	2H 			//0CEA 	1022
		LDR 	30H, 0H 			//0CEB 	1830
		IORWR 	31H, 0H 		//0CEC 	1431
		BTSC 	3H, 2H 			//0CED 	2903
		LJUMP 	511H 			//0CEE 	3D11
		MOVLB 	1H 			//0CEF 	1021
		LCALL 	682H 			//0CF0 	3682
		MOVLP 	8H 			//0CF1 	0188
		ADDWR 	30H, 1H 		//0CF2 	17B0
		BTSS 	3H, 0H 			//0CF3 	2C03
		DECR 	31H, 1H 		//0CF4 	13B1
		LJUMP 	4EBH 			//0CF5 	3CEB
		LDR 	30H, 0H 			//0CF6 	1830
		IORWR 	31H, 0H 		//0CF7 	1431
		BTSC 	3H, 2H 			//0CF8 	2903
		LJUMP 	505H 			//0CF9 	3D05
		LCALL 	6A5H 			//0CFA 	36A5
		MOVLP 	8H 			//0CFB 	0188
		LDWI 	20H 			//0CFC 	0020
		LCALL 	6B7H 			//0CFD 	36B7
		MOVLP 	8H 			//0CFE 	0188
		BTSS 	3H, 0H 			//0CFF 	2C03
		DECR 	31H, 1H 		//0D00 	13B1
		LDR 	30H, 0H 			//0D01 	1830
		IORWR 	31H, 0H 		//0D02 	1431
		BTSS 	3H, 2H 			//0D03 	2D03
		LJUMP 	4FAH 			//0D04 	3CFA
		LDR 	2CH, 0H 			//0D05 	182C
		ANDWI 	3H 			//0D06 	0903
		BTSC 	3H, 2H 			//0D07 	2903
		LJUMP 	511H 			//0D08 	3D11
		LCALL 	6A5H 			//0D09 	36A5
		MOVLP 	8H 			//0D0A 	0188
		LDWI 	2DH 			//0D0B 	002D
		STR 	1H 			//0D0C 	1081
		MOVLB 	1H 			//0D0D 	1021
		INCR 	41H, 1H 		//0D0E 	1AC1
		BTSC 	3H, 2H 			//0D0F 	2903
		INCR 	42H, 1H 		//0D10 	1AC2
		LDWI 	FFH 			//0D11 	00FF
		MOVLB 	2H 			//0D12 	1022
		ADDWR 	35H, 1H 		//0D13 	17B5
		BTSS 	3H, 0H 			//0D14 	2C03
		DECR 	36H, 1H 		//0D15 	13B6
		INCRSZ 	35H, 0H 		//0D16 	1F35
		LJUMP 	51BH 			//0D17 	3D1B
		INCR 	36H, 0H 		//0D18 	1A36
		BTSC 	3H, 2H 			//0D19 	2903
		LJUMP 	7DH 			//0D1A 	387D
		LDWI 	AH 			//0D1B 	000A
		MOVLB 	0H 			//0D1C 	1020
		STR 	3AH 			//0D1D 	10BA
		CLRF 	3BH 			//0D1E 	11BB
		CLRF 	3CH 			//0D1F 	11BC
		CLRF 	3DH 			//0D20 	11BD
		MOVLB 	2H 			//0D21 	1022
		LDR 	36H, 0H 			//0D22 	1836
		STR 	5H 			//0D23 	1085
		LDR 	35H, 0H 			//0D24 	1835
		STR 	4H 			//0D25 	1084
		LDWI 	0H 			//0D26 	0000
		LSLF 	4H, 1H 			//0D27 	0584
		RLR 	5H, 1H 			//0D28 	1D85
		LSLF 	4H, 1H 			//0D29 	0584
		RLR 	5H, 1H 			//0D2A 	1D85
		ADDWR 	4H, 1H 		//0D2B 	1784
		LDWI 	A0H 			//0D2C 	00A0
		ADDWFC 	5H, 1H 		//0D2D 	0D85
		MOVIW 	0H[0] 			//0D2E 	0F00
		LCALL 	643H 			//0D2F 	3643
		MOVLP 	8H 			//0D30 	0188
		LCALL 	752H 			//0D31 	3752
		MOVLP 	8H 			//0D32 	0188
		LDR 	30H, 0H 			//0D33 	1830
		STR 	41H 			//0D34 	10C1
		LDR 	2FH, 0H 			//0D35 	182F
		STR 	40H 			//0D36 	10C0
		LDR 	2EH, 0H 			//0D37 	182E
		STR 	3FH 			//0D38 	10BF
		LDR 	2DH, 0H 			//0D39 	182D
		STR 	3EH 			//0D3A 	10BE
		LCALL 	575H 			//0D3B 	3575
		MOVLP 	8H 			//0D3C 	0188
		LDR 	3AH, 0H 			//0D3D 	183A
		ADDWI 	30H 			//0D3E 	0E30
		MOVLB 	2H 			//0D3F 	1022
		STR 	37H 			//0D40 	10B7
		LCALL 	6A5H 			//0D41 	36A5
		MOVLP 	8H 			//0D42 	0188
		MOVLB 	2H 			//0D43 	1022
		LDR 	37H, 0H 			//0D44 	1837
		LJUMP 	50CH 			//0D45 	3D0C
		LCALL 	6A5H 			//0D46 	36A5
		CLRF 	1H 			//0D47 	1181
		RET 					//0D48 	1008
		BTSS 	41H, 7H 		//0D49 	2FC1
		LJUMP 	558H 			//0D4A 	3D58
		LDR 	3FH, 0H 			//0D4B 	183F
		SUBWI 	0H 			//0D4C 	0C00
		STR 	3FH 			//0D4D 	10BF
		LDR 	40H, 0H 			//0D4E 	1840
		BTSS 	3H, 0H 			//0D4F 	2C03
		INCRSZ 	40H, 0H 		//0D50 	1F40
		SUBWI 	0H 			//0D51 	0C00
		STR 	40H 			//0D52 	10C0
		LDR 	41H, 0H 			//0D53 	1841
		BTSS 	3H, 0H 			//0D54 	2C03
		INCRSZ 	41H, 0H 		//0D55 	1F41
		SUBWI 	80H 			//0D56 	0C80
		STR 	41H 			//0D57 	10C1
		BTSS 	44H, 7H 		//0D58 	2FC4
		LJUMP 	567H 			//0D59 	3D67
		LDR 	42H, 0H 			//0D5A 	1842
		SUBWI 	0H 			//0D5B 	0C00
		STR 	42H 			//0D5C 	10C2
		LDR 	43H, 0H 			//0D5D 	1843
		BTSS 	3H, 0H 			//0D5E 	2C03
		INCRSZ 	43H, 0H 		//0D5F 	1F43
		SUBWI 	0H 			//0D60 	0C00
		STR 	43H 			//0D61 	10C3
		LDR 	44H, 0H 			//0D62 	1844
		BTSS 	3H, 0H 			//0D63 	2C03
		INCRSZ 	44H, 0H 		//0D64 	1F44
		SUBWI 	80H 			//0D65 	0C80
		STR 	44H 			//0D66 	10C4
		LDWI 	80H 			//0D67 	0080
		XORWR 	41H, 1H 		//0D68 	16C1
		XORWR 	44H, 1H 		//0D69 	16C4
		LDR 	44H, 0H 			//0D6A 	1844
		SUBWR 	41H, 0H 		//0D6B 	1241
		BTSS 	3H, 2H 			//0D6C 	2D03
		RET 					//0D6D 	1008
		LDR 	43H, 0H 			//0D6E 	1843
		SUBWR 	40H, 0H 		//0D6F 	1240
		BTSS 	3H, 2H 			//0D70 	2D03
		RET 					//0D71 	1008
		LDR 	42H, 0H 			//0D72 	1842
		SUBWR 	3FH, 0H 		//0D73 	123F
		RET 					//0D74 	1008
		LDR 	3DH, 0H 			//0D75 	183D
		IORWR 	3CH, 0H 		//0D76 	143C
		IORWR 	3BH, 0H 		//0D77 	143B
		IORWR 	3AH, 0H 		//0D78 	143A
		BTSC 	3H, 2H 			//0D79 	2903
		LJUMP 	5A2H 			//0D7A 	3DA2
		CLRF 	42H 			//0D7B 	11C2
		INCR 	42H, 1H 		//0D7C 	1AC2
		BTSC 	3DH, 7H 		//0D7D 	2BBD
		LJUMP 	584H 			//0D7E 	3D84
		LSLF 	3AH, 1H 		//0D7F 	05BA
		RLR 	3BH, 1H 			//0D80 	1DBB
		RLR 	3CH, 1H 			//0D81 	1DBC
		RLR 	3DH, 1H 			//0D82 	1DBD
		LJUMP 	57CH 			//0D83 	3D7C
		LDR 	3DH, 0H 			//0D84 	183D
		SUBWR 	41H, 0H 		//0D85 	1241
		BTSS 	3H, 2H 			//0D86 	2D03
		LJUMP 	592H 			//0D87 	3D92
		LDR 	3CH, 0H 			//0D88 	183C
		SUBWR 	40H, 0H 		//0D89 	1240
		BTSS 	3H, 2H 			//0D8A 	2D03
		LJUMP 	592H 			//0D8B 	3D92
		LDR 	3BH, 0H 			//0D8C 	183B
		SUBWR 	3FH, 0H 		//0D8D 	123F
		BTSS 	3H, 2H 			//0D8E 	2D03
		LJUMP 	592H 			//0D8F 	3D92
		LDR 	3AH, 0H 			//0D90 	183A
		SUBWR 	3EH, 0H 		//0D91 	123E
		BTSS 	3H, 0H 			//0D92 	2C03
		LJUMP 	59CH 			//0D93 	3D9C
		LDR 	3AH, 0H 			//0D94 	183A
		SUBWR 	3EH, 1H 		//0D95 	12BE
		LDR 	3BH, 0H 			//0D96 	183B
		SUBWFB 	3FH, 1H 		//0D97 	0BBF
		LDR 	3CH, 0H 			//0D98 	183C
		SUBWFB 	40H, 1H 		//0D99 	0BC0
		LDR 	3DH, 0H 			//0D9A 	183D
		SUBWFB 	41H, 1H 		//0D9B 	0BC1
		LSRF 	3DH, 1H 		//0D9C 	06BD
		RRR 	3CH, 1H 			//0D9D 	1CBC
		RRR 	3BH, 1H 			//0D9E 	1CBB
		RRR 	3AH, 1H 			//0D9F 	1CBA
		DECRSZ 	42H, 1H 		//0DA0 	1BC2
		LJUMP 	584H 			//0DA1 	3D84
		LDR 	41H, 0H 			//0DA2 	1841
		STR 	3DH 			//0DA3 	10BD
		LDR 	40H, 0H 			//0DA4 	1840
		STR 	3CH 			//0DA5 	10BC
		LDR 	3FH, 0H 			//0DA6 	183F
		STR 	3BH 			//0DA7 	10BB
		LDR 	3EH, 0H 			//0DA8 	183E
		STR 	3AH 			//0DA9 	10BA
		RET 					//0DAA 	1008
		LCALL 	730H 			//0DAB 	3730
		MOVLP 	8H 			//0DAC 	0188
		BCR 	3H, 0H 			//0DAD 	2003
		RLR 	39H, 0H 			//0DAE 	1D39
		RLR 	3AH, 0H 			//0DAF 	1D3A
		STR 	40H 			//0DB0 	10C0
		LDR 	40H, 0H 			//0DB1 	1840
		BTSS 	3H, 2H 			//0DB2 	2D03
		LJUMP 	5B9H 			//0DB3 	3DB9
		CLRF 	34H 			//0DB4 	11B4
		CLRF 	35H 			//0DB5 	11B5
		CLRF 	36H 			//0DB6 	11B6
		CLRF 	37H 			//0DB7 	11B7
		RET 					//0DB8 	1008
		LCALL 	730H 			//0DB9 	3730
		MOVLP 	8H 			//0DBA 	0188
		LDWI 	17H 			//0DBB 	0017
		LSRF 	3AH, 1H 		//0DBC 	06BA
		RRR 	39H, 1H 			//0DBD 	1CB9
		RRR 	38H, 1H 			//0DBE 	1CB8
		DECRSZ 	9H, 1H 		//0DBF 	1B89
		LJUMP 	5BCH 			//0DC0 	3DBC
		LDR 	38H, 0H 			//0DC1 	1838
		STR 	3BH 			//0DC2 	10BB
		BSR 	35H, 7H 			//0DC3 	27B5
		CLRF 	36H 			//0DC4 	11B6
		LDR 	34H, 0H 			//0DC5 	1834
		STR 	3CH 			//0DC6 	10BC
		LDR 	35H, 0H 			//0DC7 	1835
		STR 	3DH 			//0DC8 	10BD
		LDR 	36H, 0H 			//0DC9 	1836
		STR 	3EH 			//0DCA 	10BE
		LDWI 	8EH 			//0DCB 	008E
		CLRF 	3FH 			//0DCC 	11BF
		SUBWR 	40H, 1H 		//0DCD 	12C0
		BTSS 	40H, 7H 		//0DCE 	2FC0
		LJUMP 	5DCH 			//0DCF 	3DDC
		LDR 	40H, 0H 			//0DD0 	1840
		XORWI 	80H 			//0DD1 	0A80
		ADDWI 	8FH 			//0DD2 	0E8F
		BTSS 	3H, 0H 			//0DD3 	2C03
		LJUMP 	5B4H 			//0DD4 	3DB4
		LSRF 	3FH, 1H 		//0DD5 	06BF
		RRR 	3EH, 1H 			//0DD6 	1CBE
		RRR 	3DH, 1H 			//0DD7 	1CBD
		RRR 	3CH, 1H 			//0DD8 	1CBC
		INCRSZ 	40H, 1H 		//0DD9 	1FC0
		LJUMP 	5D5H 			//0DDA 	3DD5
		LJUMP 	5E9H 			//0DDB 	3DE9
		LDWI 	18H 			//0DDC 	0018
		SUBWR 	40H, 0H 		//0DDD 	1240
		BTSC 	3H, 0H 			//0DDE 	2803
		LJUMP 	5B4H 			//0DDF 	3DB4
		LDR 	40H, 0H 			//0DE0 	1840
		BTSC 	3H, 2H 			//0DE1 	2903
		LJUMP 	5E9H 			//0DE2 	3DE9
		LSLF 	3CH, 1H 		//0DE3 	05BC
		RLR 	3DH, 1H 			//0DE4 	1DBD
		RLR 	3EH, 1H 			//0DE5 	1DBE
		RLR 	3FH, 1H 			//0DE6 	1DBF
		DECR 	40H, 1H 		//0DE7 	13C0
		LJUMP 	5E0H 			//0DE8 	3DE0
		LDR 	3BH, 0H 			//0DE9 	183B
		BTSC 	3H, 2H 			//0DEA 	2903
		LJUMP 	5F7H 			//0DEB 	3DF7
		COMR 	3CH, 1H 		//0DEC 	19BC
		COMR 	3DH, 1H 		//0DED 	19BD
		COMR 	3EH, 1H 		//0DEE 	19BE
		COMR 	3FH, 1H 		//0DEF 	19BF
		INCR 	3CH, 1H 		//0DF0 	1ABC
		BTSC 	3H, 2H 			//0DF1 	2903
		INCR 	3DH, 1H 		//0DF2 	1ABD
		BTSC 	3H, 2H 			//0DF3 	2903
		INCR 	3EH, 1H 		//0DF4 	1ABE
		BTSC 	3H, 2H 			//0DF5 	2903
		INCR 	3FH, 1H 		//0DF6 	1ABF
		LDR 	3FH, 0H 			//0DF7 	183F
		STR 	37H 			//0DF8 	10B7
		LDR 	3EH, 0H 			//0DF9 	183E
		STR 	36H 			//0DFA 	10B6
		LDR 	3DH, 0H 			//0DFB 	183D
		STR 	35H 			//0DFC 	10B5
		LDR 	3CH, 0H 			//0DFD 	183C
		STR 	34H 			//0DFE 	10B4
		RET 					//0DFF 	1008
		MOVLB 	0H 			//0E00 	1020
		STR 	2EH 			//0E01 	10AE
		LDWI 	3AH 			//0E02 	003A
		CLRF 	2DH 			//0E03 	11AD
		SUBWR 	2EH, 0H 		//0E04 	122E
		BTSC 	3H, 0H 			//0E05 	2803
		LJUMP 	60DH 			//0E06 	3E0D
		LDWI 	30H 			//0E07 	0030
		SUBWR 	2EH, 0H 		//0E08 	122E
		BTSS 	3H, 0H 			//0E09 	2C03
		LJUMP 	60DH 			//0E0A 	3E0D
		CLRF 	2DH 			//0E0B 	11AD
		INCR 	2DH, 1H 		//0E0C 	1AAD
		RRR 	2DH, 0H 			//0E0D 	1C2D
		RET 					//0E0E 	1008
		LDR 	2FH, 0H 			//0E0F 	182F
		IORWR 	2EH, 0H 		//0E10 	142E
		IORWR 	2DH, 0H 		//0E11 	142D
		BTSC 	3H, 2H 			//0E12 	2903
		RET 					//0E13 	1008
		LDWI 	80H 			//0E14 	0080
		XORWR 	2FH, 1H 		//0E15 	16AF
		RET 					//0E16 	1008
		LDR 	4FH, 0H 			//0E17 	184F
		IORWR 	4EH, 0H 		//0E18 	144E
		IORWR 	4DH, 0H 		//0E19 	144D
		BTSC 	3H, 2H 			//0E1A 	2903
		LJUMP 	61EH 			//0E1B 	3E1E
		LDWI 	80H 			//0E1C 	0080
		XORWR 	4FH, 1H 		//0E1D 	16CF
		LDR 	50H, 0H 			//0E1E 	1850
		STR 	41H 			//0E1F 	10C1
		LDR 	51H, 0H 			//0E20 	1851
		STR 	42H 			//0E21 	10C2
		LDR 	52H, 0H 			//0E22 	1852
		STR 	43H 			//0E23 	10C3
		LDR 	4DH, 0H 			//0E24 	184D
		STR 	44H 			//0E25 	10C4
		LDR 	4EH, 0H 			//0E26 	184E
		STR 	45H 			//0E27 	10C5
		LDR 	4FH, 0H 			//0E28 	184F
		STR 	46H 			//0E29 	10C6
		MOVLP 	1H 			//0E2A 	0181
		LCALL 	1F1H 			//0E2B 	31F1
		LDR 	41H, 0H 			//0E2C 	1841
		STR 	4DH 			//0E2D 	10CD
		LDR 	42H, 0H 			//0E2E 	1842
		STR 	4EH 			//0E2F 	10CE
		LDR 	43H, 0H 			//0E30 	1843
		STR 	4FH 			//0E31 	10CF
		RET 					//0E32 	1008
		LDR 	37H, 0H 			//0E33 	1837
		MOVLB 	1H 			//0E34 	1021
		STR 	53H 			//0E35 	10D3
		LDWI 	0H 			//0E36 	0000
		CLRF 	54H 			//0E37 	11D4
		LSLF 	53H, 1H 		//0E38 	05D3
		RLR 	54H, 1H 			//0E39 	1DD4
		LSLF 	53H, 1H 		//0E3A 	05D3
		RLR 	54H, 1H 			//0E3B 	1DD4
		ADDWR 	53H, 0H 		//0E3C 	1753
		STR 	4H 			//0E3D 	1084
		LDWI 	A0H 			//0E3E 	00A0
		ADDWFC 	54H, 0H 		//0E3F 	0D54
		STR 	5H 			//0E40 	1085
		MOVIW 	0H[0] 			//0E41 	0F00
		RET 					//0E42 	1008
		MOVLB 	0H 			//0E43 	1020
		STR 	2DH 			//0E44 	10AD
		MOVIW 	1H[0] 			//0E45 	0F01
		STR 	2EH 			//0E46 	10AE
		MOVIW 	2H[0] 			//0E47 	0F02
		STR 	2FH 			//0E48 	10AF
		MOVIW 	3H[0] 			//0E49 	0F03
		STR 	30H 			//0E4A 	10B0
		MOVLB 	2H 			//0E4B 	1022
		LDR 	2BH, 0H 			//0E4C 	182B
		MOVLB 	0H 			//0E4D 	1020
		STR 	34H 			//0E4E 	10B4
		MOVLB 	2H 			//0E4F 	1022
		LDR 	2AH, 0H 			//0E50 	182A
		MOVLB 	0H 			//0E51 	1020
		STR 	33H 			//0E52 	10B3
		MOVLB 	2H 			//0E53 	1022
		LDR 	29H, 0H 			//0E54 	1829
		MOVLB 	0H 			//0E55 	1020
		STR 	32H 			//0E56 	10B2
		MOVLB 	2H 			//0E57 	1022
		LDR 	28H, 0H 			//0E58 	1828
		MOVLB 	0H 			//0E59 	1020
		STR 	31H 			//0E5A 	10B1
		RET 					//0E5B 	1008
		LDR 	30H, 0H 			//0E5C 	1830
		MOVLB 	2H 			//0E5D 	1022
		STR 	27H 			//0E5E 	10A7
		MOVLB 	0H 			//0E5F 	1020
		LDR 	2FH, 0H 			//0E60 	182F
		MOVLB 	2H 			//0E61 	1022
		STR 	26H 			//0E62 	10A6
		MOVLB 	0H 			//0E63 	1020
		LDR 	2EH, 0H 			//0E64 	182E
		MOVLB 	2H 			//0E65 	1022
		STR 	25H 			//0E66 	10A5
		MOVLB 	0H 			//0E67 	1020
		LDR 	2DH, 0H 			//0E68 	182D
		MOVLB 	2H 			//0E69 	1022
		STR 	24H 			//0E6A 	10A4
		LDWI 	AH 			//0E6B 	000A
		MOVLB 	0H 			//0E6C 	1020
		STR 	3AH 			//0E6D 	10BA
		CLRF 	3BH 			//0E6E 	11BB
		CLRF 	3CH 			//0E6F 	11BC
		CLRF 	3DH 			//0E70 	11BD
		MOVLB 	2H 			//0E71 	1022
		LDR 	27H, 0H 			//0E72 	1827
		MOVLB 	0H 			//0E73 	1020
		STR 	41H 			//0E74 	10C1
		MOVLB 	2H 			//0E75 	1022
		LDR 	26H, 0H 			//0E76 	1826
		MOVLB 	0H 			//0E77 	1020
		STR 	40H 			//0E78 	10C0
		MOVLB 	2H 			//0E79 	1022
		LDR 	25H, 0H 			//0E7A 	1825
		MOVLB 	0H 			//0E7B 	1020
		STR 	3FH 			//0E7C 	10BF
		MOVLB 	2H 			//0E7D 	1022
		LDR 	24H, 0H 			//0E7E 	1824
		MOVLB 	0H 			//0E7F 	1020
		STR 	3EH 			//0E80 	10BE
		RET 					//0E81 	1008
		LDR 	41H, 0H 			//0E82 	1841
		STR 	6H 			//0E83 	1086
		LDR 	42H, 0H 			//0E84 	1842
		STR 	7H 			//0E85 	1087
		LDWI 	30H 			//0E86 	0030
		STR 	1H 			//0E87 	1081
		INCR 	41H, 1H 		//0E88 	1AC1
		BTSC 	3H, 2H 			//0E89 	2903
		INCR 	42H, 1H 		//0E8A 	1AC2
		MOVLB 	2H 			//0E8B 	1022
		RETW 	FFH 			//0E8C 	04FF
		LDR 	3DH, 0H 			//0E8D 	183D
		MOVLB 	2H 			//0E8E 	1022
		STR 	27H 			//0E8F 	10A7
		MOVLB 	0H 			//0E90 	1020
		LDR 	3CH, 0H 			//0E91 	183C
		MOVLB 	2H 			//0E92 	1022
		STR 	26H 			//0E93 	10A6
		MOVLB 	0H 			//0E94 	1020
		LDR 	3BH, 0H 			//0E95 	183B
		MOVLB 	2H 			//0E96 	1022
		STR 	25H 			//0E97 	10A5
		MOVLB 	0H 			//0E98 	1020
		LDR 	3AH, 0H 			//0E99 	183A
		MOVLB 	2H 			//0E9A 	1022
		STR 	24H 			//0E9B 	10A4
		ADDWI 	30H 			//0E9C 	0E30
		MOVLB 	1H 			//0E9D 	1021
		STR 	53H 			//0E9E 	10D3
		LDR 	41H, 0H 			//0E9F 	1841
		STR 	6H 			//0EA0 	1086
		LDR 	42H, 0H 			//0EA1 	1842
		STR 	7H 			//0EA2 	1087
		LDR 	53H, 0H 			//0EA3 	1853
		RET 					//0EA4 	1008
		MOVLB 	1H 			//0EA5 	1021
		LDR 	41H, 0H 			//0EA6 	1841
		STR 	6H 			//0EA7 	1086
		LDR 	42H, 0H 			//0EA8 	1842
		STR 	7H 			//0EA9 	1087
		RET 					//0EAA 	1008
		LDR 	24H, 0H 			//0EAB 	1824
		MOVLB 	0H 			//0EAC 	1020
		STR 	3FH 			//0EAD 	10BF
		MOVLB 	2H 			//0EAE 	1022
		LDR 	25H, 0H 			//0EAF 	1825
		MOVLB 	0H 			//0EB0 	1020
		STR 	40H 			//0EB1 	10C0
		MOVLB 	2H 			//0EB2 	1022
		LDR 	26H, 0H 			//0EB3 	1826
		MOVLB 	0H 			//0EB4 	1020
		STR 	41H 			//0EB5 	10C1
		RET 					//0EB6 	1008
		STR 	1H 			//0EB7 	1081
		INCR 	41H, 1H 		//0EB8 	1AC1
		BTSC 	3H, 2H 			//0EB9 	2903
		INCR 	42H, 1H 		//0EBA 	1AC2
		LDWI 	FFH 			//0EBB 	00FF
		MOVLB 	2H 			//0EBC 	1022
		ADDWR 	30H, 1H 		//0EBD 	17B0
		RET 					//0EBE 	1008
		MOVLB 	1H 			//0EBF 	1021
		LDR 	44H, 0H 			//0EC0 	1844
		STR 	54H 			//0EC1 	10D4
		LDR 	43H, 0H 			//0EC2 	1843
		STR 	53H 			//0EC3 	10D3
		INCR 	43H, 1H 		//0EC4 	1AC3
		BTSC 	3H, 2H 			//0EC5 	2903
		INCR 	44H, 1H 		//0EC6 	1AC4
		STR 	4H 			//0EC7 	1084
		LDR 	54H, 0H 			//0EC8 	1854
		STR 	5H 			//0EC9 	1085
		LDR 	0H, 0H 			//0ECA 	1800
		MOVLB 	2H 			//0ECB 	1022
		STR 	37H 			//0ECC 	10B7
		RET 					//0ECD 	1008
		LDR 	37H, 0H 			//0ECE 	1837
		MOVLB 	2H 			//0ECF 	1022
		STR 	2BH 			//0ED0 	10AB
		MOVLB 	1H 			//0ED1 	1021
		LDR 	36H, 0H 			//0ED2 	1836
		MOVLB 	2H 			//0ED3 	1022
		STR 	2AH 			//0ED4 	10AA
		MOVLB 	1H 			//0ED5 	1021
		LDR 	35H, 0H 			//0ED6 	1835
		MOVLB 	2H 			//0ED7 	1022
		STR 	29H 			//0ED8 	10A9
		MOVLB 	1H 			//0ED9 	1021
		LDR 	34H, 0H 			//0EDA 	1834
		RET 					//0EDB 	1008
		XORWI 	80H 			//0EDC 	0A80
		MOVLB 	1H 			//0EDD 	1021
		STR 	53H 			//0EDE 	10D3
		LDWI 	80H 			//0EDF 	0080
		SUBWR 	53H, 0H 		//0EE0 	1253
		RET 					//0EE1 	1008
		LDR 	2CH, 0H 			//0EE2 	182C
		MOVLB 	2H 			//0EE3 	1022
		STR 	24H 			//0EE4 	10A4
		MOVLB 	1H 			//0EE5 	1021
		LDR 	2DH, 0H 			//0EE6 	182D
		MOVLB 	2H 			//0EE7 	1022
		STR 	25H 			//0EE8 	10A5
		MOVLB 	1H 			//0EE9 	1021
		LDR 	2EH, 0H 			//0EEA 	182E
		MOVLB 	2H 			//0EEB 	1022
		STR 	26H 			//0EEC 	10A6
		LDR 	32H, 0H 			//0EED 	1832
		RET 					//0EEE 	1008
		LDR 	32H, 0H 			//0EEF 	1832
		MOVLB 	1H 			//0EF0 	1021
		STR 	34H 			//0EF1 	10B4
		MOVLB 	2H 			//0EF2 	1022
		LDR 	33H, 0H 			//0EF3 	1833
		MOVLB 	1H 			//0EF4 	1021
		STR 	35H 			//0EF5 	10B5
		MOVLB 	2H 			//0EF6 	1022
		LDR 	34H, 0H 			//0EF7 	1834
		MOVLB 	1H 			//0EF8 	1021
		STR 	36H 			//0EF9 	10B6
		RET 					//0EFA 	1008
		MOVLB 	1H 			//0EFB 	1021
		LDR 	43H, 0H 			//0EFC 	1843
		STR 	4H 			//0EFD 	1084
		LDR 	44H, 0H 			//0EFE 	1844
		STR 	5H 			//0EFF 	1085
		LDR 	0H, 0H 			//0F00 	1800
		RET 					//0F01 	1008
		MOVLB 	1H 			//0F02 	1021
		STR 	53H 			//0F03 	10D3
		CLRF 	54H 			//0F04 	11D4
		BTSC 	53H, 7H 		//0F05 	2BD3
		DECR 	54H, 1H 		//0F06 	13D4
		MOVLB 	2H 			//0F07 	1022
		RET 					//0F08 	1008
		LDR 	43H, 0H 			//0F09 	1843
		STR 	4H 			//0F0A 	1084
		LDR 	44H, 0H 			//0F0B 	1844
		STR 	5H 			//0F0C 	1085
		LDR 	0H, 0H 			//0F0D 	1800
		RET 					//0F0E 	1008
		LDR 	37H, 0H 			//0F0F 	1837
		MOVLB 	1H 			//0F10 	1021
		STR 	53H 			//0F11 	10D3
		CLRF 	54H 			//0F12 	11D4
		BTSC 	53H, 7H 		//0F13 	2BD3
		DECR 	54H, 1H 		//0F14 	13D4
		LDR 	54H, 0H 			//0F15 	1854
		XORWI 	80H 			//0F16 	0A80
		STR 	55H 			//0F17 	10D5
		MOVLB 	2H 			//0F18 	1022
		RET 					//0F19 	1008
		STR 	55H 			//0F1A 	10D5
		MOVIW 	1H[0] 			//0F1B 	0F01
		STR 	56H 			//0F1C 	10D6
		MOVIW 	2H[0] 			//0F1D 	0F02
		STR 	57H 			//0F1E 	10D7
		MOVIW 	3H[0] 			//0F1F 	0F03
		STR 	58H 			//0F20 	10D8
		LDR 	58H, 0H 			//0F21 	1858
		MOVLB 	2H 			//0F22 	1022
		SUBWR 	2BH, 0H 		//0F23 	122B
		RET 					//0F24 	1008
		MOVLB 	1H 			//0F25 	1021
		STR 	20H 			//0F26 	10A0
		MOVLB 	2H 			//0F27 	1022
		LDR 	33H, 0H 			//0F28 	1833
		MOVLB 	1H 			//0F29 	1021
		STR 	21H 			//0F2A 	10A1
		MOVLB 	2H 			//0F2B 	1022
		LDR 	34H, 0H 			//0F2C 	1834
		MOVLB 	1H 			//0F2D 	1021
		STR 	22H 			//0F2E 	10A2
		RET 					//0F2F 	1008
		LDR 	34H, 0H 			//0F30 	1834
		STR 	38H 			//0F31 	10B8
		LDR 	35H, 0H 			//0F32 	1835
		STR 	39H 			//0F33 	10B9
		LDR 	36H, 0H 			//0F34 	1836
		STR 	3AH 			//0F35 	10BA
		RET 					//0F36 	1008
		MOVLB 	0H 			//0F37 	1020
		STR 	41H 			//0F38 	10C1
		CLRF 	42H 			//0F39 	11C2
		CLRF 	43H 			//0F3A 	11C3
		CLRF 	44H 			//0F3B 	11C4
		RET 					//0F3C 	1008
		MOVIW 	0H[1] 			//0F3D 	0F40
		MOVLB 	1H 			//0F3E 	1021
		STR 	53H 			//0F3F 	10D3
		MOVIW 	1H[1] 			//0F40 	0F41
		STR 	54H 			//0F41 	10D4
		RET 					//0F42 	1008
		MOVLB 	1H 			//0F43 	1021
		LDR 	56H, 0H 			//0F44 	1856
		MOVLB 	2H 			//0F45 	1022
		SUBWR 	29H, 0H 		//0F46 	1229
		RET 					//0F47 	1008
		MOVLB 	1H 			//0F48 	1021
		LDR 	57H, 0H 			//0F49 	1857
		MOVLB 	2H 			//0F4A 	1022
		SUBWR 	2AH, 0H 		//0F4B 	122A
		RET 					//0F4C 	1008
		MOVLB 	1H 			//0F4D 	1021
		LDR 	55H, 0H 			//0F4E 	1855
		MOVLB 	2H 			//0F4F 	1022
		SUBWR 	28H, 0H 		//0F50 	1228
		RET 					//0F51 	1008
		CLRF 	35H 			//0F52 	11B5
		CLRF 	36H 			//0F53 	11B6
		CLRF 	37H 			//0F54 	11B7
		CLRF 	38H 			//0F55 	11B8
		LDR 	30H, 0H 			//0F56 	1830
		IORWR 	2FH, 0H 		//0F57 	142F
		IORWR 	2EH, 0H 		//0F58 	142E
		IORWR 	2DH, 0H 		//0F59 	142D
		BTSC 	3H, 2H 			//0F5A 	2903
		LJUMP 	788H 			//0F5B 	3F88
		CLRF 	39H 			//0F5C 	11B9
		INCR 	39H, 1H 		//0F5D 	1AB9
		BTSC 	30H, 7H 		//0F5E 	2BB0
		LJUMP 	765H 			//0F5F 	3F65
		LSLF 	2DH, 1H 		//0F60 	05AD
		RLR 	2EH, 1H 			//0F61 	1DAE
		RLR 	2FH, 1H 			//0F62 	1DAF
		RLR 	30H, 1H 			//0F63 	1DB0
		LJUMP 	75DH 			//0F64 	3F5D
		LSLF 	35H, 1H 		//0F65 	05B5
		RLR 	36H, 1H 			//0F66 	1DB6
		RLR 	37H, 1H 			//0F67 	1DB7
		RLR 	38H, 1H 			//0F68 	1DB8
		LDR 	30H, 0H 			//0F69 	1830
		SUBWR 	34H, 0H 		//0F6A 	1234
		BTSS 	3H, 2H 			//0F6B 	2D03
		LJUMP 	777H 			//0F6C 	3F77
		LDR 	2FH, 0H 			//0F6D 	182F
		SUBWR 	33H, 0H 		//0F6E 	1233
		BTSS 	3H, 2H 			//0F6F 	2D03
		LJUMP 	777H 			//0F70 	3F77
		LDR 	2EH, 0H 			//0F71 	182E
		SUBWR 	32H, 0H 		//0F72 	1232
		BTSS 	3H, 2H 			//0F73 	2D03
		LJUMP 	777H 			//0F74 	3F77
		LDR 	2DH, 0H 			//0F75 	182D
		SUBWR 	31H, 0H 		//0F76 	1231
		BTSS 	3H, 0H 			//0F77 	2C03
		LJUMP 	782H 			//0F78 	3F82
		LDR 	2DH, 0H 			//0F79 	182D
		SUBWR 	31H, 1H 		//0F7A 	12B1
		LDR 	2EH, 0H 			//0F7B 	182E
		SUBWFB 	32H, 1H 		//0F7C 	0BB2
		LDR 	2FH, 0H 			//0F7D 	182F
		SUBWFB 	33H, 1H 		//0F7E 	0BB3
		LDR 	30H, 0H 			//0F7F 	1830
		SUBWFB 	34H, 1H 		//0F80 	0BB4
		BSR 	35H, 0H 			//0F81 	2435
		LSRF 	30H, 1H 		//0F82 	06B0
		RRR 	2FH, 1H 			//0F83 	1CAF
		RRR 	2EH, 1H 			//0F84 	1CAE
		RRR 	2DH, 1H 			//0F85 	1CAD
		DECRSZ 	39H, 1H 		//0F86 	1BB9
		LJUMP 	765H 			//0F87 	3F65
		LDR 	38H, 0H 			//0F88 	1838
		STR 	30H 			//0F89 	10B0
		LDR 	37H, 0H 			//0F8A 	1837
		STR 	2FH 			//0F8B 	10AF
		LDR 	36H, 0H 			//0F8C 	1836
		STR 	2EH 			//0F8D 	10AE
		LDR 	35H, 0H 			//0F8E 	1835
		STR 	2DH 			//0F8F 	10AD
		RET 					//0F90 	1008
		LDR 	2DH, 0H 			//0F91 	182D
		STR 	33H 			//0F92 	10B3
		LDR 	2EH, 0H 			//0F93 	182E
		STR 	34H 			//0F94 	10B4
		LDR 	2FH, 0H 			//0F95 	182F
		STR 	35H 			//0F96 	10B5
		BCR 	3H, 0H 			//0F97 	2003
		RLR 	34H, 0H 			//0F98 	1D34
		RLR 	35H, 0H 			//0F99 	1D35
		STR 	3BH 			//0F9A 	10BB
		LDR 	3BH, 0H 			//0F9B 	183B
		BTSS 	3H, 2H 			//0F9C 	2D03
		LJUMP 	7A3H 			//0F9D 	3FA3
		CLRF 	2DH 			//0F9E 	11AD
		CLRF 	2EH 			//0F9F 	11AE
		CLRF 	2FH 			//0FA0 	11AF
		CLRF 	30H 			//0FA1 	11B0
		RET 					//0FA2 	1008
		LDR 	30H, 0H 			//0FA3 	1830
		STR 	33H 			//0FA4 	10B3
		LDR 	31H, 0H 			//0FA5 	1831
		STR 	34H 			//0FA6 	10B4
		LDR 	32H, 0H 			//0FA7 	1832
		STR 	35H 			//0FA8 	10B5
		BCR 	3H, 0H 			//0FA9 	2003
		RLR 	34H, 0H 			//0FAA 	1D34
		RLR 	35H, 0H 			//0FAB 	1D35
		STR 	3AH 			//0FAC 	10BA
		LDR 	3AH, 0H 			//0FAD 	183A
		BTSC 	3H, 2H 			//0FAE 	2903
		LJUMP 	79EH 			//0FAF 	3F9E
		LDWI 	7FH 			//0FB0 	007F
		BSR 	2EH, 7H 			//0FB1 	27AE
		CLRF 	2FH 			//0FB2 	11AF
		BSR 	31H, 7H 			//0FB3 	27B1
		CLRF 	32H 			//0FB4 	11B2
		CLRF 	36H 			//0FB5 	11B6
		CLRF 	37H 			//0FB6 	11B7
		CLRF 	38H 			//0FB7 	11B8
		CLRF 	39H 			//0FB8 	11B9
		SUBWR 	3BH, 1H 		//0FB9 	12BB
		LDWI 	98H 			//0FBA 	0098
		ADDWR 	3AH, 0H 		//0FBB 	173A
		STR 	33H 			//0FBC 	10B3
		SUBWR 	3BH, 1H 		//0FBD 	12BB
		LDWI 	18H 			//0FBE 	0018
		STR 	3AH 			//0FBF 	10BA
		LSLF 	36H, 1H 		//0FC0 	05B6
		RLR 	37H, 1H 			//0FC1 	1DB7
		RLR 	38H, 1H 			//0FC2 	1DB8
		RLR 	39H, 1H 			//0FC3 	1DB9
		LDR 	32H, 0H 			//0FC4 	1832
		SUBWR 	2FH, 0H 		//0FC5 	122F
		BTSS 	3H, 2H 			//0FC6 	2D03
		LJUMP 	7CEH 			//0FC7 	3FCE
		LDR 	31H, 0H 			//0FC8 	1831
		SUBWR 	2EH, 0H 		//0FC9 	122E
		BTSS 	3H, 2H 			//0FCA 	2D03
		LJUMP 	7CEH 			//0FCB 	3FCE
		LDR 	30H, 0H 			//0FCC 	1830
		SUBWR 	2DH, 0H 		//0FCD 	122D
		BTSS 	3H, 0H 			//0FCE 	2C03
		LJUMP 	7D7H 			//0FCF 	3FD7
		LDR 	30H, 0H 			//0FD0 	1830
		SUBWR 	2DH, 1H 		//0FD1 	12AD
		LDR 	31H, 0H 			//0FD2 	1831
		SUBWFB 	2EH, 1H 		//0FD3 	0BAE
		LDR 	32H, 0H 			//0FD4 	1832
		SUBWFB 	2FH, 1H 		//0FD5 	0BAF
		BSR 	36H, 0H 			//0FD6 	2436
		LSLF 	2DH, 1H 		//0FD7 	05AD
		RLR 	2EH, 1H 			//0FD8 	1DAE
		RLR 	2FH, 1H 			//0FD9 	1DAF
		DECRSZ 	3AH, 1H 		//0FDA 	1BBA
		LJUMP 	7C0H 			//0FDB 	3FC0
		BTSS 	3BH, 7H 		//0FDC 	2FBB
		LJUMP 	7EAH 			//0FDD 	3FEA
		LDR 	3BH, 0H 			//0FDE 	183B
		XORWI 	80H 			//0FDF 	0A80
		ADDWI 	97H 			//0FE0 	0E97
		BTSS 	3H, 0H 			//0FE1 	2C03
		LJUMP 	79EH 			//0FE2 	3F9E
		LSRF 	39H, 1H 		//0FE3 	06B9
		RRR 	38H, 1H 			//0FE4 	1CB8
		RRR 	37H, 1H 			//0FE5 	1CB7
		RRR 	36H, 1H 			//0FE6 	1CB6
		INCRSZ 	3BH, 1H 		//0FE7 	1FBB
		LJUMP 	7E3H 			//0FE8 	3FE3
		LJUMP 	7F7H 			//0FE9 	3FF7
		LDWI 	18H 			//0FEA 	0018
		SUBWR 	3BH, 0H 		//0FEB 	123B
		BTSC 	3H, 0H 			//0FEC 	2803
		LJUMP 	79EH 			//0FED 	3F9E
		LDR 	3BH, 0H 			//0FEE 	183B
		BTSC 	3H, 2H 			//0FEF 	2903
		LJUMP 	7F7H 			//0FF0 	3FF7
		LSLF 	36H, 1H 		//0FF1 	05B6
		RLR 	37H, 1H 			//0FF2 	1DB7
		RLR 	38H, 1H 			//0FF3 	1DB8
		RLR 	39H, 1H 			//0FF4 	1DB9
		DECR 	3BH, 1H 		//0FF5 	13BB
		LJUMP 	7EEH 			//0FF6 	3FEE
		LDR 	39H, 0H 			//0FF7 	1839
		STR 	30H 			//0FF8 	10B0
		LDR 	38H, 0H 			//0FF9 	1838
		STR 	2FH 			//0FFA 	10AF
		LDR 	37H, 0H 			//0FFB 	1837
		STR 	2EH 			//0FFC 	10AE
		LDR 	36H, 0H 			//0FFD 	1836
		STR 	2DH 			//0FFE 	10AD
		RET 					//0FFF 	1008

		//;NFB.C: 306: PCKEN|=0B00000100;
		MOVLB 	1H 			//1000 	1021
		BSR 	1AH, 2H 			//1001 	251A

		//;NFB.C: 307: CKOCON=0B00100000;
		LDWI 	20H 			//1002 	0020
		STR 	15H 			//1003 	1095

		//;NFB.C: 308: TCKSRC=0B00000000;
		MOVLB 	6H 			//1004 	1026
		CLRF 	1FH 			//1005 	119F

		//;NFB.C: 310: TIM2CR1=0B10000101;
		LDWI 	85H 			//1006 	0085
		STR 	CH 			//1007 	108C

		//;NFB.C: 312: TIM2IER=0B00000001;
		LDWI 	1H 			//1008 	0001
		STR 	DH 			//1009 	108D

		//;NFB.C: 314: TIM2ARRH=0x3e;
		LDWI 	3EH 			//100A 	003E
		STR 	19H 			//100B 	1099

		//;NFB.C: 315: TIM2ARRL=0x80;
		LDWI 	80H 			//100C 	0080
		STR 	1AH 			//100D 	109A
		RET 					//100E 	1008
		STR 	75H 			//100F 	10F5
		STR 	74H 			//1010 	10F4
		LDWI 	1H 			//1011 	0001
		SUBWR 	72H, 1H 		//1012 	12F2
		LDWI 	0H 			//1013 	0000
		SUBWFB 	73H, 1H 		//1014 	0BF3
		INCRSZ 	72H, 0H 		//1015 	1F72
		LJUMP 	1AH 			//1016 	381A
		INCR 	73H, 0H 		//1017 	1A73
		BTSC 	3H, 2H 			//1018 	2903
		RET 					//1019 	1008
		LDR 	74H, 0H 			//101A 	1874
		STR 	6H 			//101B 	1086
		LDWI 	2H 			//101C 	0002
		STR 	7H 			//101D 	1087
		LDR 	70H, 0H 			//101E 	1870
		STR 	1H 			//101F 	1081
		INCR 	74H, 1H 		//1020 	1AF4
		LJUMP 	11H 			//1021 	3811

		//;NFB.C: 326: PCKEN|=0B00000001;
		BSR 	1AH, 0H 			//1022 	241A

		//;NFB.C: 328: ANSELA|=0B00001111;
		LDWI 	FH 			//1023 	000F
		MOVLB 	3H 			//1024 	1023
		IORWR 	17H, 1H 		//1025 	1497

		//;NFB.C: 332: ADCON0=0B00000000;
		MOVLB 	1H 			//1026 	1021
		CLRF 	1DH 			//1027 	119D

		//;NFB.C: 338: ADCON1=0B11100100;
		LDWI 	E4H 			//1028 	00E4
		STR 	1EH 			//1029 	109E

		//;NFB.C: 344: ADCON2=0B01000000;
		LDWI 	40H 			//102A 	0040
		STR 	1FH 			//102B 	109F

		//;NFB.C: 347: ADCON3=0B00000000;
		MOVLB 	8H 			//102C 	1028
		CLRF 	1AH 			//102D 	119A

		//;NFB.C: 348: ADDLY=0B00000000;
		MOVLB 	0H 			//102E 	1020
		CLRF 	1FH 			//102F 	119F

		//;NFB.C: 349: ADCMPH=0B00000000;
		MOVLB 	8H 			//1030 	1028
		CLRF 	1BH 			//1031 	119B

		//;NFB.C: 350: ADON=1;
		MOVLB 	1H 			//1032 	1021
		BSR 	1DH, 0H 			//1033 	241D
		RET 					//1034 	1008
		STR 	7DH 			//1035 	10FD
		LDR 	7DH, 0H 			//1036 	187D
		BTSC 	3H, 2H 			//1037 	2903
		RETW 	0H 			//1038 	0400
		LDR 	7DH, 0H 			//1039 	187D
		STR 	6H 			//103A 	1086
		LDWI 	2H 			//103B 	0002
		STR 	7H 			//103C 	1087
		LDR 	1H, 0H 			//103D 	1801
		BTSC 	3H, 2H 			//103E 	2903
		RETW 	0H 			//103F 	0400
		LDR 	7CH, 0H 			//1040 	187C
		STR 	76H 			//1041 	10F6
		LDR 	7BH, 0H 			//1042 	187B
		STR 	75H 			//1043 	10F5
		LDR 	7CH, 0H 			//1044 	187C
		STR 	71H 			//1045 	10F1
		LDR 	7BH, 0H 			//1046 	187B
		STR 	70H 			//1047 	10F0
		LCALL 	A2H 			//1048 	30A2
		MOVLP 	10H 			//1049 	0190
		LDR 	71H, 0H 			//104A 	1871
		STR 	78H 			//104B 	10F8
		LDR 	70H, 0H 			//104C 	1870
		STR 	77H 			//104D 	10F7
		LDR 	7DH, 0H 			//104E 	187D
		LCALL 	77H 			//104F 	3077
		MOVLP 	10H 			//1050 	0190
		LDR 	75H, 0H 			//1051 	1875
		IORWR 	76H, 0H 		//1052 	1476
		BTSS 	3H, 2H 			//1053 	2D03
		LJUMP 	57H 			//1054 	3857
		LDR 	7DH, 0H 			//1055 	187D
		RET 					//1056 	1008
		LDR 	7BH, 0H 			//1057 	187B
		STR 	4H 			//1058 	1084
		LDR 	7CH, 0H 			//1059 	187C
		STR 	5H 			//105A 	1085
		LDR 	0H, 0H 			//105B 	1800
		STR 	70H 			//105C 	10F0
		CLRF 	71H 			//105D 	11F1
		LDR 	7DH, 0H 			//105E 	187D
		ADDWI 	1H 			//105F 	0E01
		LCALL 	63H 			//1060 	3063
		MOVLP 	10H 			//1061 	0190
		LJUMP 	35H 			//1062 	3835
		STR 	72H 			//1063 	10F2
		LDR 	72H, 0H 			//1064 	1872
		STR 	6H 			//1065 	1086
		LDWI 	2H 			//1066 	0002
		STR 	7H 			//1067 	1087
		LDR 	1H, 0H 			//1068 	1801
		XORWR 	70H, 0H 		//1069 	1670
		BTSS 	3H, 2H 			//106A 	2D03
		LJUMP 	6EH 			//106B 	386E
		LDR 	72H, 0H 			//106C 	1872
		RET 					//106D 	1008
		LDR 	72H, 0H 			//106E 	1872
		STR 	6H 			//106F 	1086
		LDWI 	2H 			//1070 	0002
		STR 	7H 			//1071 	1087
		INCR 	72H, 1H 		//1072 	1AF2
		LDR 	1H, 0H 			//1073 	1801
		BTSC 	3H, 2H 			//1074 	2903
		RETW 	0H 			//1075 	0400
		LJUMP 	64H 			//1076 	3864
		STR 	7AH 			//1077 	10FA
		LDWI 	1H 			//1078 	0001
		SUBWR 	77H, 1H 		//1079 	12F7
		LDWI 	0H 			//107A 	0000
		SUBWFB 	78H, 1H 		//107B 	0BF8
		INCRSZ 	77H, 0H 		//107C 	1F77
		LJUMP 	81H 			//107D 	3881
		INCR 	78H, 0H 		//107E 	1A78
		BTSC 	3H, 2H 			//107F 	2903
		LJUMP 	9FH 			//1080 	389F
		LDR 	7AH, 0H 			//1081 	187A
		LCALL 	105H 			//1082 	3105
		MOVLP 	10H 			//1083 	0190
		BTSC 	3H, 2H 			//1084 	2903
		LJUMP 	8FH 			//1085 	388F
		LCALL 	B8H 			//1086 	30B8
		MOVLP 	10H 			//1087 	0190
		STR 	79H 			//1088 	10F9
		LDR 	7AH, 0H 			//1089 	187A
		STR 	6H 			//108A 	1086
		LDR 	1H, 0H 			//108B 	1801
		XORWR 	79H, 0H 		//108C 	1679
		BTSC 	3H, 2H 			//108D 	2903
		LJUMP 	9AH 			//108E 	389A
		LDR 	7AH, 0H 			//108F 	187A
		STR 	6H 			//1090 	1086
		LDWI 	2H 			//1091 	0002
		STR 	7H 			//1092 	1087
		LCALL 	B8H 			//1093 	30B8
		SUBWR 	1H, 0H 		//1094 	1201
		STR 	75H 			//1095 	10F5
		CLRF 	76H 			//1096 	11F6
		BTSS 	3H, 0H 			//1097 	2C03
		DECR 	76H, 1H 		//1098 	13F6
		RET 					//1099 	1008
		INCR 	7AH, 1H 		//109A 	1AFA
		INCR 	75H, 1H 		//109B 	1AF5
		BTSC 	3H, 2H 			//109C 	2903
		INCR 	76H, 1H 		//109D 	1AF6
		LJUMP 	78H 			//109E 	3878
		CLRF 	75H 			//109F 	11F5
		CLRF 	76H 			//10A0 	11F6
		RET 					//10A1 	1008
		LDR 	71H, 0H 			//10A2 	1871
		STR 	74H 			//10A3 	10F4
		LDR 	70H, 0H 			//10A4 	1870
		STR 	73H 			//10A5 	10F3
		LDR 	73H, 0H 			//10A6 	1873
		STR 	4H 			//10A7 	1084
		LDR 	74H, 0H 			//10A8 	1874
		STR 	5H 			//10A9 	1085
		MOVIW 	FSR0++ 		//10AA 	1012
		BTSC 	3H, 2H 			//10AB 	2903
		LJUMP 	B1H 			//10AC 	38B1
		INCR 	73H, 1H 		//10AD 	1AF3
		BTSC 	3H, 2H 			//10AE 	2903
		INCR 	74H, 1H 		//10AF 	1AF4
		LJUMP 	A6H 			//10B0 	38A6
		LDR 	70H, 0H 			//10B1 	1870
		SUBWR 	73H, 0H 		//10B2 	1273
		STR 	70H 			//10B3 	10F0
		LDR 	71H, 0H 			//10B4 	1871
		SUBWFB 	74H, 0H 		//10B5 	0B74
		STR 	71H 			//10B6 	10F1
		RET 					//10B7 	1008
		LDR 	75H, 0H 			//10B8 	1875
		STR 	4H 			//10B9 	1084
		LDR 	76H, 0H 			//10BA 	1876
		STR 	5H 			//10BB 	1085
		LDR 	0H, 0H 			//10BC 	1800
		RET 					//10BD 	1008
		MOVLB 	0H 			//10BE 	1020
		STR 	24H 			//10BF 	10A4

		//;NFB.C: 67: int res = 0;
		CLRF 	20H 			//10C0 	11A0
		CLRF 	21H 			//10C1 	11A1

		//;NFB.C: 68: for (int i = 0; arr[i] != '\0'; ++i){
		CLRF 	22H 			//10C2 	11A2
		CLRF 	23H 			//10C3 	11A3
		LDR 	22H, 0H 			//10C4 	1822
		ADDWR 	24H, 0H 		//10C5 	1724
		STR 	78H 			//10C6 	10F8
		LCALL 	105H 			//10C7 	3105
		MOVLP 	10H 			//10C8 	0190
		BTSC 	3H, 2H 			//10C9 	2903
		LJUMP 	EBH 			//10CA 	38EB

		//;NFB.C: 69: res = (res * 10) + (arr[i] - '0');
		LDR 	22H, 0H 			//10CB 	1822
		ADDWR 	24H, 0H 		//10CC 	1724
		STR 	78H 			//10CD 	10F8
		STR 	6H 			//10CE 	1086
		LDR 	1H, 0H 			//10CF 	1801
		STR 	79H 			//10D0 	10F9
		CLRF 	7AH 			//10D1 	11FA
		LDR 	21H, 0H 			//10D2 	1821
		STR 	71H 			//10D3 	10F1
		LDR 	20H, 0H 			//10D4 	1820
		STR 	70H 			//10D5 	10F0
		LDWI 	AH 			//10D6 	000A
		STR 	72H 			//10D7 	10F2
		CLRF 	73H 			//10D8 	11F3
		LCALL 	F0H 			//10D9 	30F0
		MOVLP 	10H 			//10DA 	0190
		LDR 	79H, 0H 			//10DB 	1879
		ADDWR 	70H, 0H 		//10DC 	1770
		STR 	7BH 			//10DD 	10FB
		LDR 	7AH, 0H 			//10DE 	187A
		ADDWFC 	71H, 0H 		//10DF 	0D71
		STR 	7CH 			//10E0 	10FC
		LDR 	7BH, 0H 			//10E1 	187B
		ADDWI 	D0H 			//10E2 	0ED0
		STR 	20H 			//10E3 	10A0
		LDWI 	FFH 			//10E4 	00FF
		ADDWFC 	7CH, 0H 		//10E5 	0D7C
		STR 	21H 			//10E6 	10A1
		INCR 	22H, 1H 		//10E7 	1AA2
		BTSC 	3H, 2H 			//10E8 	2903
		INCR 	23H, 1H 		//10E9 	1AA3
		LJUMP 	C4H 			//10EA 	38C4

		//;NFB.C: 70: }
		//;NFB.C: 71: return res;
		LDR 	21H, 0H 			//10EB 	1821
		STR 	77H 			//10EC 	10F7
		LDR 	20H, 0H 			//10ED 	1820
		STR 	76H 			//10EE 	10F6
		RET 					//10EF 	1008
		CLRF 	74H 			//10F0 	11F4
		CLRF 	75H 			//10F1 	11F5
		BTSS 	70H, 0H 		//10F2 	2C70
		LJUMP 	F8H 			//10F3 	38F8
		LDR 	72H, 0H 			//10F4 	1872
		ADDWR 	74H, 1H 		//10F5 	17F4
		LDR 	73H, 0H 			//10F6 	1873
		ADDWFC 	75H, 1H 		//10F7 	0DF5
		LSLF 	72H, 1H 		//10F8 	05F2
		RLR 	73H, 1H 			//10F9 	1DF3
		LSRF 	71H, 1H 		//10FA 	06F1
		RRR 	70H, 1H 			//10FB 	1CF0
		LDR 	70H, 0H 			//10FC 	1870
		IORWR 	71H, 0H 		//10FD 	1471
		BTSS 	3H, 2H 			//10FE 	2D03
		LJUMP 	F2H 			//10FF 	38F2
		LDR 	75H, 0H 			//1100 	1875
		STR 	71H 			//1101 	10F1
		LDR 	74H, 0H 			//1102 	1874
		STR 	70H 			//1103 	10F0
		RET 					//1104 	1008
		STR 	6H 			//1105 	1086
		LDWI 	2H 			//1106 	0002
		STR 	7H 			//1107 	1087
		LDR 	1H, 0H 			//1108 	1801
		RET 					//1109 	1008

		//;NFB.C: 571: }
		//;NFB.C: 572: HTVP = (float)HTVP_*2/4096;
		LCALL 	614H 			//110A 	3614
		MOVLP 	1DH 			//110B 	019D
		LCALL 	5A4H 			//110C 	35A4
		MOVLP 	11H 			//110D 	0191
		MOVLP 	1H 			//110E 	0181
		LCALL 	1C4H 			//110F 	31C4
		MOVLP 	11H 			//1110 	0191
		LCALL 	620H 			//1111 	3620
		MOVLP 	5H 			//1112 	0185
		LCALL 	577H 			//1113 	3577
		MOVLP 	11H 			//1114 	0191
		LCALL 	773H 			//1115 	3773
		MOVLP 	6H 			//1116 	0186
		LCALL 	674H 			//1117 	3674
		MOVLP 	11H 			//1118 	0191
		LCALL 	717H 			//1119 	3717
		MOVLP 	11H 			//111A 	0191

		//;NFB.C: 573: HTVN = (float)HTVN_*2/4096;
		LCALL 	614H 			//111B 	3614
		MOVLP 	1DH 			//111C 	019D
		LCALL 	5C4H 			//111D 	35C4
		MOVLP 	11H 			//111E 	0191
		MOVLP 	1H 			//111F 	0181
		LCALL 	1C4H 			//1120 	31C4
		MOVLP 	11H 			//1121 	0191
		LCALL 	620H 			//1122 	3620
		MOVLP 	5H 			//1123 	0185
		LCALL 	577H 			//1124 	3577
		MOVLP 	11H 			//1125 	0191
		LCALL 	773H 			//1126 	3773
		MOVLP 	6H 			//1127 	0186
		LCALL 	674H 			//1128 	3674
		MOVLP 	11H 			//1129 	0191
		LCALL 	70BH 			//112A 	370B
		MOVLP 	11H 			//112B 	0191

		//;NFB.C: 574: HTVI = (float)HTVI_*2/4096;
		LCALL 	614H 			//112C 	3614
		MOVLP 	1DH 			//112D 	019D
		LCALL 	5B4H 			//112E 	35B4
		MOVLP 	11H 			//112F 	0191
		MOVLP 	1H 			//1130 	0181
		LCALL 	1C4H 			//1131 	31C4
		MOVLP 	11H 			//1132 	0191
		LCALL 	620H 			//1133 	3620
		MOVLP 	5H 			//1134 	0185
		LCALL 	577H 			//1135 	3577
		MOVLP 	11H 			//1136 	0191
		LCALL 	773H 			//1137 	3773
		MOVLP 	6H 			//1138 	0186
		LCALL 	674H 			//1139 	3674
		MOVLP 	11H 			//113A 	0191

		//;NFB.C: 575: I = HTVI/0.01/39;
		LCALL 	6DCH 			//113B 	36DC
		MOVLP 	6H 			//113C 	0186
		LCALL 	674H 			//113D 	3674
		MOVLP 	11H 			//113E 	0191

		//;NFB.C: 575: I = HTVI/0.01/39;
		LCALL 	6FBH 			//113F 	36FB
		MOVLP 	11H 			//1140 	0191
		LCALL 	6CEH 			//1141 	36CE
		MOVLP 	6H 			//1142 	0186
		LCALL 	674H 			//1143 	3674
		MOVLP 	11H 			//1144 	0191

		//;NFB.C: 576: V = (HTVP-HTVN)*2;
		LCALL 	62CH 			//1145 	362C
		MOVLP 	EH 			//1146 	018E
		LCALL 	617H 			//1147 	3617
		MOVLP 	11H 			//1148 	0191
		LCALL 	7C2H 			//1149 	37C2
		MOVLP 	5H 			//114A 	0185
		LCALL 	577H 			//114B 	3577
		MOVLP 	11H 			//114C 	0191

		//;NFB.C: 577: R = V/I;
		LCALL 	69FH 			//114D 	369F
		MOVLP 	6H 			//114E 	0186
		LCALL 	674H 			//114F 	3674
		MOVLP 	11H 			//1150 	0191

		//;NFB.C: 578: T = (((R/R0)-1)/0.0026)+25;
		LCALL 	655H 			//1151 	3655
		MOVLP 	6H 			//1152 	0186
		LCALL 	674H 			//1153 	3674
		MOVLP 	11H 			//1154 	0191
		LCALL 	730H 			//1155 	3730
		MOVLP 	1H 			//1156 	0181
		LCALL 	1F1H 			//1157 	31F1
		MOVLP 	11H 			//1158 	0191

		//;NFB.C: 578: T = (((R/R0)-1)/0.0026)+25;
		LCALL 	67AH 			//1159 	367A
		MOVLP 	6H 			//115A 	0186
		LCALL 	674H 			//115B 	3674
		MOVLP 	11H 			//115C 	0191
		LCALL 	730H 			//115D 	3730
		MOVLP 	1H 			//115E 	0181
		LCALL 	1F1H 			//115F 	31F1
		MOVLP 	11H 			//1160 	0191
		LCALL 	7CEH 			//1161 	37CE
		MOVLP 	11H 			//1162 	0191

		//;NFB.C: 579: }
		//;NFB.C: 580: if(HTtimecnt>=timeleft){
		MOVLB 	4H 			//1163 	1024
		LDR 	55H, 0H 			//1164 	1855
		MOVLB 	1H 			//1165 	1021
		STR 	59H 			//1166 	10D9
		MOVLB 	4H 			//1167 	1024
		LDR 	56H, 0H 			//1168 	1856
		LCALL 	73CH 			//1169 	373C
		MOVLP 	11H 			//116A 	0191
		SUBWR 	5FH, 0H 		//116B 	125F
		BTSS 	3H, 2H 			//116C 	2D03
		LJUMP 	17BH 			//116D 	397B
		MOVLP 	1EH 			//116E 	019E
		LCALL 	60EH 			//116F 	360E
		MOVLP 	11H 			//1170 	0191
		BTSS 	3H, 2H 			//1171 	2D03
		LJUMP 	17BH 			//1172 	397B
		MOVLP 	1EH 			//1173 	019E
		LCALL 	613H 			//1174 	3613
		MOVLP 	11H 			//1175 	0191
		BTSS 	3H, 2H 			//1176 	2D03
		LJUMP 	17BH 			//1177 	397B
		MOVLP 	1EH 			//1178 	019E
		LCALL 	618H 			//1179 	3618
		MOVLP 	11H 			//117A 	0191
		BTSS 	3H, 0H 			//117B 	2C03
		LJUMP 	19FH 			//117C 	399F

		//;NFB.C: 581: PC1 = ~PC1;
		LDWI 	2H 			//117D 	0002
		MOVLB 	0H 			//117E 	1020
		XORWR 	EH, 1H 		//117F 	168E

		//;NFB.C: 582: char msg[10];
		//;NFB.C: 583: sprintf(msg,"T:%0.1f\r\n",T);
		LDWI 	A0H 			//1180 	00A0
		MOVLB 	1H 			//1181 	1021
		STR 	41H 			//1182 	10C1
		LDWI 	1H 			//1183 	0001
		LCALL 	79DH 			//1184 	379D
		MOVLP 	11H 			//1185 	0191
		LCALL 	75EH 			//1186 	375E
		MOVLP 	8H 			//1187 	0188
		LCALL 	7AH 			//1188 	307A
		MOVLP 	11H 			//1189 	0191

		//;NFB.C: 584: send(msg,strlen(msg));
		LDWI 	A0H 			//118A 	00A0
		STR 	4BH 			//118B 	10CB
		LDWI 	1H 			//118C 	0001
		STR 	4CH 			//118D 	10CC
		LDWI 	A0H 			//118E 	00A0
		MOVLB 	0H 			//118F 	1020
		STR 	2DH 			//1190 	10AD
		LDWI 	1H 			//1191 	0001
		STR 	2EH 			//1192 	10AE
		MOVLP 	8H 			//1193 	0188
		LCALL 	BH 			//1194 	300B
		MOVLP 	11H 			//1195 	0191
		LCALL 	795H 			//1196 	3795
		MOVLP 	4H 			//1197 	0184
		LCALL 	4C2H 			//1198 	34C2
		MOVLP 	11H 			//1199 	0191

		//;NFB.C: 585: timeleft += 20;
		LDWI 	14H 			//119A 	0014
		MOVLB 	4H 			//119B 	1024
		ADDWR 	55H, 1H 		//119C 	17D5
		BTSC 	3H, 0H 			//119D 	2803
		INCR 	56H, 1H 		//119E 	1AD6

		//;NFB.C: 586: }
		//;NFB.C: 587: if(t1>=30){
		MOVLB 	3H 			//119F 	1023
		LDR 	6FH, 0H 			//11A0 	186F
		LCALL 	7AFH 			//11A1 	37AF
		MOVLP 	11H 			//11A2 	0191
		BTSS 	3H, 2H 			//11A3 	2D03
		LJUMP 	1A8H 			//11A4 	39A8
		LDWI 	1EH 			//11A5 	001E
		MOVLB 	3H 			//11A6 	1023
		SUBWR 	6EH, 0H 		//11A7 	126E
		BTSS 	3H, 0H 			//11A8 	2C03
		LJUMP 	255H 			//11A9 	3A55

		//;NFB.C: 588: if(HTtimecnt==20){
		LDWI 	14H 			//11AA 	0014
		MOVLP 	1DH 			//11AB 	019D
		LCALL 	5F9H 			//11AC 	35F9
		MOVLP 	11H 			//11AD 	0191
		BTSS 	3H, 2H 			//11AE 	2D03
		LJUMP 	1C9H 			//11AF 	39C9

		//;NFB.C: 589: Toffset = T;
		//;NFB.C: 590: Tm = T1-T;
		LCALL 	723H 			//11B0 	3723
		MOVLP 	11H 			//11B1 	0191
		LCALL 	6C2H 			//11B2 	36C2
		MOVLP 	1DH 			//11B3 	019D
		LCALL 	5DAH 			//11B4 	35DA
		MOVLP 	11H 			//11B5 	0191
		MOVLP 	EH 			//11B6 	018E
		LCALL 	617H 			//11B7 	3617
		MOVLP 	11H 			//11B8 	0191

		//;NFB.C: 591: m = Tm/(t1-1);
		LCALL 	7A1H 			//11B9 	37A1
		ADDWI 	FFH 			//11BA 	0EFF
		MOVLB 	0H 			//11BB 	1020
		STR 	3BH 			//11BC 	10BB
		MOVLP 	1DH 			//11BD 	019D
		LCALL 	5E1H 			//11BE 	35E1
		MOVLP 	11H 			//11BF 	0191
		MOVLP 	5H 			//11C0 	0185
		LCALL 	55CH 			//11C1 	355C
		MOVLP 	11H 			//11C2 	0191
		LCALL 	746H 			//11C3 	3746
		MOVLP 	6H 			//11C4 	0186
		LCALL 	674H 			//11C5 	3674
		MOVLP 	11H 			//11C6 	0191
		LCALL 	7E1H 			//11C7 	37E1
		MOVLP 	11H 			//11C8 	0191

		//;NFB.C: 592: }
		//;NFB.C: 593: if(HTtimecnt>20){
		MOVLB 	3H 			//11C9 	1023
		LDR 	5FH, 0H 			//11CA 	185F
		BTSS 	3H, 2H 			//11CB 	2D03
		LJUMP 	1D7H 			//11CC 	39D7
		LDR 	5EH, 0H 			//11CD 	185E
		BTSS 	3H, 2H 			//11CE 	2D03
		LJUMP 	1D7H 			//11CF 	39D7
		LDR 	5DH, 0H 			//11D0 	185D
		BTSS 	3H, 2H 			//11D1 	2D03
		LJUMP 	1D7H 			//11D2 	39D7
		LDWI 	15H 			//11D3 	0015
		SUBWR 	5CH, 0H 		//11D4 	125C
		BTSS 	3H, 0H 			//11D5 	2C03
		LJUMP 	294H 			//11D6 	3A94

		//;NFB.C: 594: diffT = ((m*(HTtimecnt-20)/20)+Toffset)-T;
		LCALL 	6C2H 			//11D7 	36C2
		MOVLP 	11H 			//11D8 	0191
		LCALL 	782H 			//11D9 	3782
		LDWI 	ECH 			//11DA 	00EC
		MOVLB 	3H 			//11DB 	1023
		ADDWR 	5CH, 0H 		//11DC 	175C
		MOVLB 	0H 			//11DD 	1020
		STR 	35H 			//11DE 	10B5
		LDWI 	FFH 			//11DF 	00FF
		MOVLB 	3H 			//11E0 	1023
		ADDWFC 	5DH, 0H 		//11E1 	0D5D
		MOVLB 	0H 			//11E2 	1020
		STR 	36H 			//11E3 	10B6
		LDWI 	FFH 			//11E4 	00FF
		MOVLB 	3H 			//11E5 	1023
		ADDWFC 	5EH, 0H 		//11E6 	0D5E
		MOVLB 	0H 			//11E7 	1020
		STR 	37H 			//11E8 	10B7
		LDWI 	FFH 			//11E9 	00FF
		MOVLB 	3H 			//11EA 	1023
		ADDWFC 	5FH, 0H 		//11EB 	0D5F
		MOVLB 	0H 			//11EC 	1020
		STR 	38H 			//11ED 	10B8
		MOVLP 	1H 			//11EE 	0181
		LCALL 	1D4H 			//11EF 	31D4
		MOVLP 	11H 			//11F0 	0191
		LDR 	35H, 0H 			//11F1 	1835
		MOVLB 	1H 			//11F2 	1021
		STR 	23H 			//11F3 	10A3
		MOVLB 	0H 			//11F4 	1020
		LDR 	36H, 0H 			//11F5 	1836
		MOVLB 	1H 			//11F6 	1021
		STR 	24H 			//11F7 	10A4
		MOVLB 	0H 			//11F8 	1020
		LDR 	37H, 0H 			//11F9 	1837
		MOVLB 	1H 			//11FA 	1021
		STR 	25H 			//11FB 	10A5
		MOVLP 	5H 			//11FC 	0185
		LCALL 	577H 			//11FD 	3577
		MOVLP 	11H 			//11FE 	0191
		LCALL 	773H 			//11FF 	3773
		MOVLP 	6H 			//1200 	0186
		LCALL 	674H 			//1201 	3674
		MOVLP 	11H 			//1202 	0191
		LDR 	2CH, 0H 			//1203 	182C
		MOVLB 	0H 			//1204 	1020
		STR 	50H 			//1205 	10D0
		MOVLB 	1H 			//1206 	1021
		LDR 	2DH, 0H 			//1207 	182D
		MOVLB 	0H 			//1208 	1020
		STR 	51H 			//1209 	10D1
		MOVLB 	1H 			//120A 	1021
		LDR 	2EH, 0H 			//120B 	182E
		MOVLB 	0H 			//120C 	1020
		STR 	52H 			//120D 	10D2
		MOVLP 	EH 			//120E 	018E
		LCALL 	617H 			//120F 	3617
		MOVLP 	11H 			//1210 	0191
		LDR 	4DH, 0H 			//1211 	184D
		MOVLB 	3H 			//1212 	1023
		STR 	48H 			//1213 	10C8
		MOVLB 	0H 			//1214 	1020
		LDR 	4EH, 0H 			//1215 	184E
		MOVLB 	3H 			//1216 	1023
		STR 	49H 			//1217 	10C9
		MOVLB 	0H 			//1218 	1020
		LDR 	4FH, 0H 			//1219 	184F
		MOVLB 	3H 			//121A 	1023
		STR 	4AH 			//121B 	10CA

		//;NFB.C: 594: diffT = ((m*(HTtimecnt-20)/20)+Toffset)-T;
		MOVLB 	4H 			//121C 	1024
		LDR 	36H, 0H 			//121D 	1836
		MOVLB 	0H 			//121E 	1020
		STR 	41H 			//121F 	10C1
		MOVLB 	4H 			//1220 	1024
		LDR 	37H, 0H 			//1221 	1837
		MOVLB 	0H 			//1222 	1020
		STR 	42H 			//1223 	10C2
		MOVLB 	4H 			//1224 	1024
		LDR 	38H, 0H 			//1225 	1838
		MOVLB 	0H 			//1226 	1020
		STR 	43H 			//1227 	10C3
		MOVLB 	3H 			//1228 	1023
		LDR 	48H, 0H 			//1229 	1848
		MOVLB 	0H 			//122A 	1020
		STR 	44H 			//122B 	10C4
		MOVLB 	3H 			//122C 	1023
		LDR 	49H, 0H 			//122D 	1849
		MOVLB 	0H 			//122E 	1020
		STR 	45H 			//122F 	10C5
		MOVLB 	3H 			//1230 	1023
		LDR 	4AH, 0H 			//1231 	184A
		MOVLB 	0H 			//1232 	1020
		STR 	46H 			//1233 	10C6
		MOVLP 	1H 			//1234 	0181
		LCALL 	1F1H 			//1235 	31F1
		MOVLP 	11H 			//1236 	0191
		LDR 	41H, 0H 			//1237 	1841
		MOVLB 	3H 			//1238 	1023
		STR 	60H 			//1239 	10E0
		MOVLB 	0H 			//123A 	1020
		LDR 	42H, 0H 			//123B 	1842
		MOVLB 	3H 			//123C 	1023
		STR 	61H 			//123D 	10E1
		MOVLB 	0H 			//123E 	1020
		LDR 	43H, 0H 			//123F 	1843
		MOVLB 	3H 			//1240 	1023
		STR 	62H 			//1241 	10E2

		//;NFB.C: 595: if(diffT>=0){
		LDR 	60H, 0H 			//1242 	1860
		MOVLB 	0H 			//1243 	1020
		STR 	3FH 			//1244 	10BF
		MOVLB 	3H 			//1245 	1023
		LDR 	61H, 0H 			//1246 	1861
		MOVLB 	0H 			//1247 	1020
		STR 	40H 			//1248 	10C0
		MOVLB 	3H 			//1249 	1023
		LDR 	62H, 0H 			//124A 	1862
		MOVLP 	FH 			//124B 	018F
		LCALL 	737H 			//124C 	3737
		MOVLP 	11H 			//124D 	0191
		MOVLP 	DH 			//124E 	018D
		LCALL 	549H 			//124F 	3549
		MOVLP 	11H 			//1250 	0191
		BTSC 	3H, 0H 			//1251 	2803
		LJUMP 	293H 			//1252 	3A93

		//;NFB.C: 598: PA0 = 0;
		//;NFB.C: 597: } else{
		BCR 	CH, 0H 			//1253 	200C
		LJUMP 	294H 			//1254 	3A94
		MOVLB 	3H 			//1255 	1023
		LDR 	6FH, 0H 			//1256 	186F
		LCALL 	7AFH 			//1257 	37AF
		MOVLP 	11H 			//1258 	0191
		BTSS 	3H, 2H 			//1259 	2D03
		LJUMP 	25EH 			//125A 	3A5E
		LDWI 	14H 			//125B 	0014
		MOVLB 	3H 			//125C 	1023
		SUBWR 	6EH, 0H 		//125D 	126E
		BTSS 	3H, 0H 			//125E 	2C03
		LJUMP 	294H 			//125F 	3A94

		//;NFB.C: 602: if(HTtimecnt==200){
		LDWI 	C8H 			//1260 	00C8
		MOVLP 	1DH 			//1261 	019D
		LCALL 	5F9H 			//1262 	35F9
		MOVLP 	11H 			//1263 	0191
		BTSS 	3H, 2H 			//1264 	2D03
		LJUMP 	27FH 			//1265 	3A7F

		//;NFB.C: 603: Toffset = T;
		//;NFB.C: 604: Tm = T1-T;
		LCALL 	723H 			//1266 	3723
		MOVLP 	11H 			//1267 	0191
		LCALL 	6C2H 			//1268 	36C2
		MOVLP 	1DH 			//1269 	019D
		LCALL 	5DAH 			//126A 	35DA
		MOVLP 	11H 			//126B 	0191
		MOVLP 	EH 			//126C 	018E
		LCALL 	617H 			//126D 	3617
		MOVLP 	11H 			//126E 	0191

		//;NFB.C: 605: m = Tm/(t1-10);
		LCALL 	7A1H 			//126F 	37A1
		ADDWI 	F6H 			//1270 	0EF6
		MOVLB 	0H 			//1271 	1020
		STR 	3BH 			//1272 	10BB
		MOVLP 	1DH 			//1273 	019D
		LCALL 	5E1H 			//1274 	35E1
		MOVLP 	11H 			//1275 	0191
		MOVLP 	5H 			//1276 	0185
		LCALL 	55CH 			//1277 	355C
		MOVLP 	11H 			//1278 	0191
		LCALL 	746H 			//1279 	3746
		MOVLP 	6H 			//127A 	0186
		LCALL 	674H 			//127B 	3674
		MOVLP 	11H 			//127C 	0191
		LCALL 	7E1H 			//127D 	37E1
		MOVLP 	11H 			//127E 	0191

		//;NFB.C: 606: }
		//;NFB.C: 607: if(HTtimecnt>200){
		MOVLB 	3H 			//127F 	1023
		LDR 	5FH, 0H 			//1280 	185F
		BTSS 	3H, 2H 			//1281 	2D03
		LJUMP 	28DH 			//1282 	3A8D
		LDR 	5EH, 0H 			//1283 	185E
		BTSS 	3H, 2H 			//1284 	2D03
		LJUMP 	28DH 			//1285 	3A8D
		LDR 	5DH, 0H 			//1286 	185D
		BTSS 	3H, 2H 			//1287 	2D03
		LJUMP 	28DH 			//1288 	3A8D
		LDWI 	C9H 			//1289 	00C9
		SUBWR 	5CH, 0H 		//128A 	125C
		BTSS 	3H, 0H 			//128B 	2C03
		LJUMP 	294H 			//128C 	3A94

		//;NFB.C: 608: diffT = ((m*(HTtimecnt-200)/20)+Toffset)-T;
		LCALL 	6C2H 			//128D 	36C2
		MOVLP 	11H 			//128E 	0191
		LCALL 	782H 			//128F 	3782
		MOVLP 	11H 			//1290 	0191
		LDWI 	38H 			//1291 	0038
		LJUMP 	1DBH 			//1292 	39DB

		//;NFB.C: 609: if(diffT>=0){
		//;NFB.C: 608: diffT = ((m*(HTtimecnt-200)/20)+Toffset)-T;
		//;NFB.C: 596: PA0 = 1;
		BSR 	CH, 0H 			//1293 	240C

		//;NFB.C: 613: }
		//;NFB.C: 614: }
		//;NFB.C: 615: }
		//;NFB.C: 616: if(HTtimecnt>=timeleft1){
		MOVLB 	4H 			//1294 	1024
		LDR 	53H, 0H 			//1295 	1853
		MOVLB 	1H 			//1296 	1021
		STR 	59H 			//1297 	10D9
		MOVLB 	4H 			//1298 	1024
		LDR 	54H, 0H 			//1299 	1854
		LCALL 	73CH 			//129A 	373C
		MOVLP 	11H 			//129B 	0191
		SUBWR 	5FH, 0H 		//129C 	125F
		BTSS 	3H, 2H 			//129D 	2D03
		LJUMP 	2ACH 			//129E 	3AAC
		MOVLP 	1EH 			//129F 	019E
		LCALL 	60EH 			//12A0 	360E
		MOVLP 	11H 			//12A1 	0191
		BTSS 	3H, 2H 			//12A2 	2D03
		LJUMP 	2ACH 			//12A3 	3AAC
		MOVLP 	1EH 			//12A4 	019E
		LCALL 	613H 			//12A5 	3613
		MOVLP 	11H 			//12A6 	0191
		BTSS 	3H, 2H 			//12A7 	2D03
		LJUMP 	2ACH 			//12A8 	3AAC
		MOVLP 	1EH 			//12A9 	019E
		LCALL 	618H 			//12AA 	3618
		MOVLP 	11H 			//12AB 	0191
		BTSS 	3H, 0H 			//12AC 	2C03
		LJUMP 	2B5H 			//12AD 	3AB5

		//;NFB.C: 617: PA0 = 1;
		MOVLB 	0H 			//12AE 	1020
		BSR 	CH, 0H 			//12AF 	240C

		//;NFB.C: 618: timeleft1 += 10;
		LDWI 	AH 			//12B0 	000A
		MOVLB 	4H 			//12B1 	1024
		ADDWR 	53H, 1H 		//12B2 	17D3
		BTSC 	3H, 0H 			//12B3 	2803
		INCR 	54H, 1H 		//12B4 	1AD4

		//;NFB.C: 619: }
		//;NFB.C: 620: if(HTtimecnt>((t1*20)+9) || T>=T1){
		MOVLB 	3H 			//12B5 	1023
		LDR 	6FH, 0H 			//12B6 	186F
		MOVLB 	0H 			//12B7 	1020
		STR 	3CH 			//12B8 	10BC
		MOVLB 	3H 			//12B9 	1023
		LDR 	6EH, 0H 			//12BA 	186E
		MOVLB 	0H 			//12BB 	1020
		STR 	3BH 			//12BC 	10BB
		LDWI 	14H 			//12BD 	0014
		STR 	3DH 			//12BE 	10BD
		CLRF 	3EH 			//12BF 	11BE
		MOVLP 	4H 			//12C0 	0184
		LCALL 	402H 			//12C1 	3402
		MOVLP 	11H 			//12C2 	0191
		LDR 	3BH, 0H 			//12C3 	183B
		ADDWI 	9H 			//12C4 	0E09
		MOVLB 	1H 			//12C5 	1021
		STR 	59H 			//12C6 	10D9
		LDWI 	0H 			//12C7 	0000
		MOVLB 	0H 			//12C8 	1020
		ADDWFC 	3CH, 0H 		//12C9 	0D3C
		MOVLB 	1H 			//12CA 	1021
		STR 	5AH 			//12CB 	10DA
		LDR 	59H, 0H 			//12CC 	1859
		STR 	5BH 			//12CD 	10DB
		LDR 	5AH, 0H 			//12CE 	185A
		STR 	5CH 			//12CF 	10DC
		LDWI 	0H 			//12D0 	0000
		BTSC 	5CH, 7H 		//12D1 	2BDC
		LDWI 	FFH 			//12D2 	00FF
		STR 	5DH 			//12D3 	10DD
		STR 	5EH 			//12D4 	10DE
		MOVLB 	3H 			//12D5 	1023
		LDR 	5FH, 0H 			//12D6 	185F
		MOVLB 	1H 			//12D7 	1021
		SUBWR 	5EH, 0H 		//12D8 	125E
		BTSS 	3H, 2H 			//12D9 	2D03
		LJUMP 	2EBH 			//12DA 	3AEB
		MOVLB 	3H 			//12DB 	1023
		LDR 	5EH, 0H 			//12DC 	185E
		MOVLB 	1H 			//12DD 	1021
		SUBWR 	5DH, 0H 		//12DE 	125D
		BTSS 	3H, 2H 			//12DF 	2D03
		LJUMP 	2EBH 			//12E0 	3AEB
		MOVLB 	3H 			//12E1 	1023
		LDR 	5DH, 0H 			//12E2 	185D
		MOVLB 	1H 			//12E3 	1021
		SUBWR 	5CH, 0H 		//12E4 	125C
		BTSS 	3H, 2H 			//12E5 	2D03
		LJUMP 	2EBH 			//12E6 	3AEB
		MOVLB 	3H 			//12E7 	1023
		LDR 	5CH, 0H 			//12E8 	185C
		MOVLB 	1H 			//12E9 	1021
		SUBWR 	5BH, 0H 		//12EA 	125B
		BTSS 	3H, 0H 			//12EB 	2C03
		LJUMP 	304H 			//12EC 	3B04
		MOVLB 	3H 			//12ED 	1023
		LDR 	63H, 0H 			//12EE 	1863
		MOVLB 	0H 			//12EF 	1020
		STR 	3FH 			//12F0 	10BF
		MOVLB 	3H 			//12F1 	1023
		LDR 	64H, 0H 			//12F2 	1864
		MOVLB 	0H 			//12F3 	1020
		STR 	40H 			//12F4 	10C0
		MOVLB 	3H 			//12F5 	1023
		LDR 	65H, 0H 			//12F6 	1865
		MOVLB 	0H 			//12F7 	1020
		STR 	41H 			//12F8 	10C1
		LDR 	56H, 0H 			//12F9 	1856
		STR 	42H 			//12FA 	10C2
		LDR 	57H, 0H 			//12FB 	1857
		STR 	43H 			//12FC 	10C3
		LDR 	58H, 0H 			//12FD 	1858
		STR 	44H 			//12FE 	10C4
		MOVLP 	DH 			//12FF 	018D
		LCALL 	549H 			//1300 	3549
		MOVLP 	11H 			//1301 	0191
		BTSS 	3H, 0H 			//1302 	2C03
		LJUMP 	361H 			//1303 	3B61

		//;NFB.C: 621: char msg[10];
		//;NFB.C: 622: sprintf(msg,"T%0.1f\r\n",T);
		LDWI 	AAH 			//1304 	00AA
		MOVLB 	1H 			//1305 	1021
		STR 	41H 			//1306 	10C1
		LDWI 	1H 			//1307 	0001
		STR 	42H 			//1308 	10C2
		LDWI 	F3H 			//1309 	00F3
		STR 	43H 			//130A 	10C3
		LDWI 	A0H 			//130B 	00A0
		LCALL 	75EH 			//130C 	375E
		MOVLP 	8H 			//130D 	0188
		LCALL 	7AH 			//130E 	307A
		MOVLP 	11H 			//130F 	0191

		//;NFB.C: 623: send(msg,strlen(msg));
		LDWI 	AAH 			//1310 	00AA
		STR 	4BH 			//1311 	10CB
		LDWI 	1H 			//1312 	0001
		STR 	4CH 			//1313 	10CC
		LDWI 	AAH 			//1314 	00AA
		MOVLB 	0H 			//1315 	1020
		STR 	2DH 			//1316 	10AD
		LDWI 	1H 			//1317 	0001
		STR 	2EH 			//1318 	10AE
		MOVLP 	8H 			//1319 	0188
		LCALL 	BH 			//131A 	300B
		MOVLP 	11H 			//131B 	0191
		LCALL 	795H 			//131C 	3795
		MOVLP 	4H 			//131D 	0184
		LCALL 	4C2H 			//131E 	34C2
		MOVLP 	11H 			//131F 	0191

		//;NFB.C: 624: send((char*)"T0\r\n",4);
		LCALL 	7F2H 			//1320 	37F2
		MOVLP 	11H 			//1321 	0191
		LCALL 	7EDH 			//1322 	37ED
		MOVLP 	4H 			//1323 	0184
		LCALL 	4C2H 			//1324 	34C2
		MOVLP 	11H 			//1325 	0191

		//;NFB.C: 625: send((char*)"H0\r\n",4);
		LCALL 	7FAH 			//1326 	37FA
		MOVLP 	11H 			//1327 	0191
		LCALL 	7EDH 			//1328 	37ED
		MOVLP 	4H 			//1329 	0184
		LCALL 	4C2H 			//132A 	34C2
		MOVLP 	11H 			//132B 	0191

		//;NFB.C: 626: PA0 = 0;
		MOVLB 	0H 			//132C 	1020
		BCR 	CH, 0H 			//132D 	200C

		//;NFB.C: 627: HTOn = 0;
		//;NFB.C: 628: HTtimer = 0;
		//;NFB.C: 629: PB0 = 1;
		MOVLP 	1DH 			//132E 	019D
		LCALL 	5D3H 			//132F 	35D3
		MOVLP 	11H 			//1330 	0191

		//;NFB.C: 630: DelayMs(500);
		LCALL 	7DAH 			//1331 	37DA
		MOVLP 	4H 			//1332 	0184
		LCALL 	4E5H 			//1333 	34E5
		MOVLP 	11H 			//1334 	0191

		//;NFB.C: 631: PB0 = 0;
		MOVLB 	0H 			//1335 	1020
		BCR 	DH, 0H 			//1336 	200D

		//;NFB.C: 632: DelayMs(500);
		LDWI 	F4H 			//1337 	00F4
		MOVLB 	1H 			//1338 	1021
		STR 	46H 			//1339 	10C6
		LDWI 	1H 			//133A 	0001
		STR 	47H 			//133B 	10C7
		MOVLP 	4H 			//133C 	0184
		LCALL 	4E5H 			//133D 	34E5
		MOVLP 	11H 			//133E 	0191

		//;NFB.C: 633: send((char*)"S1\r\n",4);
		LDWI 	22H 			//133F 	0022
		MOVLB 	1H 			//1340 	1021
		STR 	4BH 			//1341 	10CB
		LDWI 	A1H 			//1342 	00A1
		LCALL 	7EDH 			//1343 	37ED
		MOVLP 	4H 			//1344 	0184
		LCALL 	4C2H 			//1345 	34C2
		MOVLP 	11H 			//1346 	0191

		//;NFB.C: 634: PC1 = 0;
		MOVLB 	0H 			//1347 	1020
		BCR 	EH, 1H 			//1348 	208E

		//;NFB.C: 635: PB3 = 1;
		BSR 	DH, 3H 			//1349 	258D

		//;NFB.C: 636: PB2 = 1;
		BSR 	DH, 2H 			//134A 	250D

		//;NFB.C: 637: PA1 = 1;
		BSR 	CH, 1H 			//134B 	248C

		//;NFB.C: 638: timeleft2 = 100;
		LDWI 	64H 			//134C 	0064
		MOVLB 	4H 			//134D 	1024
		STR 	51H 			//134E 	10D1
		LDWI 	9H 			//134F 	0009
		CLRF 	52H 			//1350 	11D2

		//;NFB.C: 639: timeleft3 = 9;
		STR 	4FH 			//1351 	10CF
		CLRF 	50H 			//1352 	11D0

		//;NFB.C: 640: SmokeOn = 1;
		CLRF 	5BH 			//1353 	11DB
		INCR 	5BH, 1H 		//1354 	1ADB
		CLRF 	5CH 			//1355 	11DC

		//;NFB.C: 641: Puffcnt = 0;
		CLRF 	20H 			//1356 	11A0
		CLRF 	21H 			//1357 	11A1
		CLRF 	22H 			//1358 	11A2
		CLRF 	23H 			//1359 	11A3

		//;NFB.C: 642: Smoketimecnt = 0;
		MOVLB 	3H 			//135A 	1023
		CLRF 	58H 			//135B 	11D8
		CLRF 	59H 			//135C 	11D9
		CLRF 	5AH 			//135D 	11DA
		CLRF 	5BH 			//135E 	11DB

		//;NFB.C: 643: PA0 = 1;
		MOVLB 	0H 			//135F 	1020
		BSR 	CH, 0H 			//1360 	240C

		//;NFB.C: 644: }
		//;NFB.C: 645: }
		//;NFB.C: 646: if(Smoketimer){
		MOVLB 	4H 			//1361 	1024
		LDR 	59H, 0H 			//1362 	1859
		IORWR 	5AH, 0H 		//1363 	145A
		BTSC 	3H, 2H 			//1364 	2903
		LJUMP 	5BAH 			//1365 	3DBA

		//;NFB.C: 647: Smoketimer = 0;
		CLRF 	59H 			//1366 	11D9
		CLRF 	5AH 			//1367 	11DA

		//;NFB.C: 648: if(PA0){
		MOVLB 	0H 			//1368 	1020
		BTSS 	CH, 0H 			//1369 	2C0C
		LJUMP 	436H 			//136A 	3C36

		//;NFB.C: 649: HTVP_ = GET_ADC_DATA(2);
		LDWI 	2H 			//136B 	0002
		MOVLP 	6H 			//136C 	0186
		LCALL 	623H 			//136D 	3623
		MOVLP 	11H 			//136E 	0191
		MOVLP 	1DH 			//136F 	019D
		LCALL 	5ACH 			//1370 	35AC
		MOVLP 	11H 			//1371 	0191

		//;NFB.C: 650: for(int i=0;i<4;i++){
		CLRF 	4FH 			//1372 	11CF
		CLRF 	50H 			//1373 	11D0
		LDR 	50H, 0H 			//1374 	1850
		LCALL 	7AFH 			//1375 	37AF
		MOVLP 	11H 			//1376 	0191
		BTSS 	3H, 2H 			//1377 	2D03
		LJUMP 	37CH 			//1378 	3B7C
		LDWI 	4H 			//1379 	0004
		MOVLB 	3H 			//137A 	1023
		SUBWR 	4FH, 0H 		//137B 	124F
		BTSC 	3H, 0H 			//137C 	2803
		LJUMP 	391H 			//137D 	3B91

		//;NFB.C: 651: HTVP_ = (HTVP_+GET_ADC_DATA(2))/2;
		LDWI 	2H 			//137E 	0002
		MOVLP 	6H 			//137F 	0186
		LCALL 	623H 			//1380 	3623
		MOVLP 	11H 			//1381 	0191
		MOVLB 	3H 			//1382 	1023
		LDR 	6CH, 0H 			//1383 	186C
		MOVLB 	1H 			//1384 	1021
		ADDWR 	46H, 0H 		//1385 	1746
		STR 	59H 			//1386 	10D9
		MOVLB 	3H 			//1387 	1023
		LDR 	6DH, 0H 			//1388 	186D
		LCALL 	77AH 			//1389 	377A
		MOVLP 	1DH 			//138A 	019D
		LCALL 	5F3H 			//138B 	35F3
		MOVLP 	11H 			//138C 	0191
		INCR 	4FH, 1H 		//138D 	1ACF
		BTSC 	3H, 2H 			//138E 	2903
		INCR 	50H, 1H 		//138F 	1AD0
		LJUMP 	374H 			//1390 	3B74

		//;NFB.C: 652: }
		//;NFB.C: 653: HTVN_ = GET_ADC_DATA(1);
		LDWI 	1H 			//1391 	0001
		MOVLP 	6H 			//1392 	0186
		LCALL 	623H 			//1393 	3623
		MOVLP 	11H 			//1394 	0191
		MOVLP 	1DH 			//1395 	019D
		LCALL 	5BCH 			//1396 	35BC
		MOVLP 	11H 			//1397 	0191

		//;NFB.C: 654: for(int i=0;i<4;i++){
		CLRF 	51H 			//1398 	11D1
		CLRF 	52H 			//1399 	11D2
		LDR 	52H, 0H 			//139A 	1852
		LCALL 	7AFH 			//139B 	37AF
		MOVLP 	11H 			//139C 	0191
		BTSS 	3H, 2H 			//139D 	2D03
		LJUMP 	3A2H 			//139E 	3BA2
		LDWI 	4H 			//139F 	0004
		MOVLB 	3H 			//13A0 	1023
		SUBWR 	51H, 0H 		//13A1 	1251
		BTSC 	3H, 0H 			//13A2 	2803
		LJUMP 	3B7H 			//13A3 	3BB7

		//;NFB.C: 655: HTVN_ = (HTVN_+GET_ADC_DATA(1))/2;
		LDWI 	1H 			//13A4 	0001
		MOVLP 	6H 			//13A5 	0186
		LCALL 	623H 			//13A6 	3623
		MOVLP 	11H 			//13A7 	0191
		MOVLB 	3H 			//13A8 	1023
		LDR 	6AH, 0H 			//13A9 	186A
		MOVLB 	1H 			//13AA 	1021
		ADDWR 	46H, 0H 		//13AB 	1746
		STR 	59H 			//13AC 	10D9
		MOVLB 	3H 			//13AD 	1023
		LDR 	6BH, 0H 			//13AE 	186B
		LCALL 	77AH 			//13AF 	377A
		MOVLP 	1DH 			//13B0 	019D
		LCALL 	5E7H 			//13B1 	35E7
		MOVLP 	11H 			//13B2 	0191
		INCR 	51H, 1H 		//13B3 	1AD1
		BTSC 	3H, 2H 			//13B4 	2903
		INCR 	52H, 1H 		//13B5 	1AD2
		LJUMP 	39AH 			//13B6 	3B9A

		//;NFB.C: 656: }
		//;NFB.C: 657: HTVI_ = GET_ADC_DATA(4);
		LDWI 	4H 			//13B7 	0004
		MOVLP 	6H 			//13B8 	0186
		LCALL 	623H 			//13B9 	3623
		MOVLP 	11H 			//13BA 	0191
		MOVLP 	1DH 			//13BB 	019D
		LCALL 	59CH 			//13BC 	359C
		MOVLP 	11H 			//13BD 	0191

		//;NFB.C: 658: for(int i=0;i<4;i++){
		CLRF 	53H 			//13BE 	11D3
		CLRF 	54H 			//13BF 	11D4
		LDR 	54H, 0H 			//13C0 	1854
		LCALL 	7AFH 			//13C1 	37AF
		MOVLP 	11H 			//13C2 	0191
		BTSS 	3H, 2H 			//13C3 	2D03
		LJUMP 	3C8H 			//13C4 	3BC8
		LDWI 	4H 			//13C5 	0004
		MOVLB 	3H 			//13C6 	1023
		SUBWR 	53H, 0H 		//13C7 	1253
		BTSC 	3H, 0H 			//13C8 	2803
		LJUMP 	3DDH 			//13C9 	3BDD

		//;NFB.C: 659: HTVI_ = (HTVI_+GET_ADC_DATA(4))/2;
		LDWI 	4H 			//13CA 	0004
		MOVLP 	6H 			//13CB 	0186
		LCALL 	623H 			//13CC 	3623
		MOVLP 	11H 			//13CD 	0191
		MOVLB 	3H 			//13CE 	1023
		LDR 	68H, 0H 			//13CF 	1868
		MOVLB 	1H 			//13D0 	1021
		ADDWR 	46H, 0H 		//13D1 	1746
		STR 	59H 			//13D2 	10D9
		MOVLB 	3H 			//13D3 	1023
		LDR 	69H, 0H 			//13D4 	1869
		LCALL 	77AH 			//13D5 	377A
		MOVLP 	1DH 			//13D6 	019D
		LCALL 	5EDH 			//13D7 	35ED
		MOVLP 	11H 			//13D8 	0191
		INCR 	53H, 1H 		//13D9 	1AD3
		BTSC 	3H, 2H 			//13DA 	2903
		INCR 	54H, 1H 		//13DB 	1AD4
		LJUMP 	3C0H 			//13DC 	3BC0

		//;NFB.C: 660: }
		//;NFB.C: 661: HTVP = (float)HTVP_*2/4096;
		LCALL 	614H 			//13DD 	3614
		MOVLP 	1DH 			//13DE 	019D
		LCALL 	5A4H 			//13DF 	35A4
		MOVLP 	11H 			//13E0 	0191
		MOVLP 	1H 			//13E1 	0181
		LCALL 	1C4H 			//13E2 	31C4
		MOVLP 	11H 			//13E3 	0191
		LCALL 	620H 			//13E4 	3620
		MOVLP 	5H 			//13E5 	0185
		LCALL 	577H 			//13E6 	3577
		MOVLP 	11H 			//13E7 	0191
		LCALL 	773H 			//13E8 	3773
		MOVLP 	6H 			//13E9 	0186
		LCALL 	674H 			//13EA 	3674
		MOVLP 	11H 			//13EB 	0191
		LCALL 	717H 			//13EC 	3717
		MOVLP 	11H 			//13ED 	0191

		//;NFB.C: 662: HTVN = (float)HTVN_*2/4096;
		LCALL 	614H 			//13EE 	3614
		MOVLP 	1DH 			//13EF 	019D
		LCALL 	5C4H 			//13F0 	35C4
		MOVLP 	11H 			//13F1 	0191
		MOVLP 	1H 			//13F2 	0181
		LCALL 	1C4H 			//13F3 	31C4
		MOVLP 	11H 			//13F4 	0191
		LCALL 	620H 			//13F5 	3620
		MOVLP 	5H 			//13F6 	0185
		LCALL 	577H 			//13F7 	3577
		MOVLP 	11H 			//13F8 	0191
		LCALL 	773H 			//13F9 	3773
		MOVLP 	6H 			//13FA 	0186
		LCALL 	674H 			//13FB 	3674
		MOVLP 	11H 			//13FC 	0191
		LCALL 	70BH 			//13FD 	370B
		MOVLP 	11H 			//13FE 	0191

		//;NFB.C: 663: HTVI = (float)HTVI_*2/4096;
		LCALL 	614H 			//13FF 	3614
		MOVLP 	1DH 			//1400 	019D
		LCALL 	5B4H 			//1401 	35B4
		MOVLP 	11H 			//1402 	0191
		MOVLP 	1H 			//1403 	0181
		LCALL 	1C4H 			//1404 	31C4
		MOVLP 	11H 			//1405 	0191
		LCALL 	620H 			//1406 	3620
		MOVLP 	5H 			//1407 	0185
		LCALL 	577H 			//1408 	3577
		MOVLP 	11H 			//1409 	0191
		LCALL 	773H 			//140A 	3773
		MOVLP 	6H 			//140B 	0186
		LCALL 	674H 			//140C 	3674
		MOVLP 	11H 			//140D 	0191

		//;NFB.C: 664: I = HTVI/0.01/39;
		LCALL 	6DCH 			//140E 	36DC
		MOVLP 	6H 			//140F 	0186
		LCALL 	674H 			//1410 	3674
		MOVLP 	11H 			//1411 	0191

		//;NFB.C: 664: I = HTVI/0.01/39;
		LCALL 	6FBH 			//1412 	36FB
		MOVLP 	11H 			//1413 	0191
		LCALL 	6CEH 			//1414 	36CE
		MOVLP 	6H 			//1415 	0186
		LCALL 	674H 			//1416 	3674
		MOVLP 	11H 			//1417 	0191

		//;NFB.C: 665: V = (HTVP-HTVN)*2;
		LCALL 	62CH 			//1418 	362C
		MOVLP 	EH 			//1419 	018E
		LCALL 	617H 			//141A 	3617
		MOVLP 	11H 			//141B 	0191
		LCALL 	7C2H 			//141C 	37C2
		MOVLP 	5H 			//141D 	0185
		LCALL 	577H 			//141E 	3577
		MOVLP 	11H 			//141F 	0191

		//;NFB.C: 666: R = V/I;
		LCALL 	69FH 			//1420 	369F
		MOVLP 	6H 			//1421 	0186
		LCALL 	674H 			//1422 	3674
		MOVLP 	11H 			//1423 	0191

		//;NFB.C: 667: T = (((R/R0)-1)/0.0026)+25;
		LCALL 	655H 			//1424 	3655
		MOVLP 	6H 			//1425 	0186
		LCALL 	674H 			//1426 	3674
		MOVLP 	11H 			//1427 	0191
		LCALL 	730H 			//1428 	3730
		MOVLP 	1H 			//1429 	0181
		LCALL 	1F1H 			//142A 	31F1
		MOVLP 	11H 			//142B 	0191

		//;NFB.C: 667: T = (((R/R0)-1)/0.0026)+25;
		LCALL 	67AH 			//142C 	367A
		MOVLP 	6H 			//142D 	0186
		LCALL 	674H 			//142E 	3674
		MOVLP 	11H 			//142F 	0191
		LCALL 	730H 			//1430 	3730
		MOVLP 	1H 			//1431 	0181
		LCALL 	1F1H 			//1432 	31F1
		MOVLP 	11H 			//1433 	0191
		LCALL 	7CEH 			//1434 	37CE
		MOVLP 	11H 			//1435 	0191

		//;NFB.C: 668: }
		//;NFB.C: 669: if(Smoketimecnt>=timeleft2){
		MOVLB 	4H 			//1436 	1024
		LDR 	51H, 0H 			//1437 	1851
		MOVLB 	1H 			//1438 	1021
		STR 	59H 			//1439 	10D9
		MOVLB 	4H 			//143A 	1024
		LDR 	52H, 0H 			//143B 	1852
		LCALL 	73CH 			//143C 	373C
		MOVLP 	11H 			//143D 	0191
		SUBWR 	5BH, 0H 		//143E 	125B
		BTSS 	3H, 2H 			//143F 	2D03
		LJUMP 	44EH 			//1440 	3C4E
		MOVLP 	1EH 			//1441 	019E
		LCALL 	604H 			//1442 	3604
		MOVLP 	11H 			//1443 	0191
		BTSS 	3H, 2H 			//1444 	2D03
		LJUMP 	44EH 			//1445 	3C4E
		MOVLP 	1DH 			//1446 	019D
		LCALL 	5FFH 			//1447 	35FF
		MOVLP 	11H 			//1448 	0191
		BTSS 	3H, 2H 			//1449 	2D03
		LJUMP 	44EH 			//144A 	3C4E
		MOVLP 	1EH 			//144B 	019E
		LCALL 	609H 			//144C 	3609
		MOVLP 	11H 			//144D 	0191
		BTSS 	3H, 0H 			//144E 	2C03
		LJUMP 	472H 			//144F 	3C72

		//;NFB.C: 670: if(PA0){
		MOVLB 	0H 			//1450 	1020
		BTSS 	CH, 0H 			//1451 	2C0C
		LJUMP 	472H 			//1452 	3C72

		//;NFB.C: 671: char msg[10];
		//;NFB.C: 672: sprintf(msg,"T:%0.1f\r\n",T);
		LDWI 	B4H 			//1453 	00B4
		MOVLB 	1H 			//1454 	1021
		STR 	41H 			//1455 	10C1
		LDWI 	1H 			//1456 	0001
		LCALL 	79DH 			//1457 	379D
		MOVLP 	11H 			//1458 	0191
		LCALL 	75EH 			//1459 	375E
		MOVLP 	8H 			//145A 	0188
		LCALL 	7AH 			//145B 	307A
		MOVLP 	11H 			//145C 	0191

		//;NFB.C: 673: send(msg,strlen(msg));
		LDWI 	B4H 			//145D 	00B4
		STR 	4BH 			//145E 	10CB
		LDWI 	1H 			//145F 	0001
		STR 	4CH 			//1460 	10CC
		LDWI 	B4H 			//1461 	00B4
		MOVLB 	0H 			//1462 	1020
		STR 	2DH 			//1463 	10AD
		LDWI 	1H 			//1464 	0001
		STR 	2EH 			//1465 	10AE
		MOVLP 	8H 			//1466 	0188
		LCALL 	BH 			//1467 	300B
		MOVLP 	11H 			//1468 	0191
		LCALL 	795H 			//1469 	3795
		MOVLP 	4H 			//146A 	0184
		LCALL 	4C2H 			//146B 	34C2
		MOVLP 	11H 			//146C 	0191

		//;NFB.C: 674: timeleft2 += 100;
		LDWI 	64H 			//146D 	0064
		MOVLB 	4H 			//146E 	1024
		ADDWR 	51H, 1H 		//146F 	17D1
		BTSC 	3H, 0H 			//1470 	2803
		INCR 	52H, 1H 		//1471 	1AD2

		//;NFB.C: 675: }
		//;NFB.C: 676: }
		//;NFB.C: 677: diffT = T2-T;
		MOVLB 	3H 			//1472 	1023
		LCALL 	6C2H 			//1473 	36C2
		MOVLB 	4H 			//1474 	1024
		LDR 	6DH, 0H 			//1475 	186D
		MOVLB 	0H 			//1476 	1020
		STR 	50H 			//1477 	10D0
		MOVLB 	4H 			//1478 	1024
		LDR 	6EH, 0H 			//1479 	186E
		MOVLB 	0H 			//147A 	1020
		STR 	51H 			//147B 	10D1
		MOVLB 	4H 			//147C 	1024
		LDR 	6FH, 0H 			//147D 	186F
		MOVLB 	0H 			//147E 	1020
		STR 	52H 			//147F 	10D2
		MOVLP 	EH 			//1480 	018E
		LCALL 	617H 			//1481 	3617
		MOVLP 	11H 			//1482 	0191
		LDR 	4DH, 0H 			//1483 	184D
		MOVLB 	3H 			//1484 	1023
		STR 	60H 			//1485 	10E0
		MOVLB 	0H 			//1486 	1020
		LDR 	4EH, 0H 			//1487 	184E
		MOVLB 	3H 			//1488 	1023
		STR 	61H 			//1489 	10E1
		MOVLB 	0H 			//148A 	1020
		LDR 	4FH, 0H 			//148B 	184F
		MOVLB 	3H 			//148C 	1023
		STR 	62H 			//148D 	10E2

		//;NFB.C: 678: if(diffT>0){
		MOVLB 	0H 			//148E 	1020
		CLRF 	3FH 			//148F 	11BF
		CLRF 	40H 			//1490 	11C0
		CLRF 	41H 			//1491 	11C1
		LCALL 	7B5H 			//1492 	37B5
		MOVLP 	DH 			//1493 	018D
		LCALL 	549H 			//1494 	3549
		MOVLP 	11H 			//1495 	0191
		BTSC 	3H, 0H 			//1496 	2803
		LJUMP 	49AH 			//1497 	3C9A

		//;NFB.C: 679: PA0 = 1;
		BSR 	CH, 0H 			//1498 	240C

		//;NFB.C: 680: } else{
		LJUMP 	49BH 			//1499 	3C9B

		//;NFB.C: 681: PA0 = 0;
		BCR 	CH, 0H 			//149A 	200C

		//;NFB.C: 682: }
		//;NFB.C: 683: if(Smoketimecnt>=timeleft3){
		MOVLB 	4H 			//149B 	1024
		LDR 	4FH, 0H 			//149C 	184F
		MOVLB 	1H 			//149D 	1021
		STR 	59H 			//149E 	10D9
		MOVLB 	4H 			//149F 	1024
		LDR 	50H, 0H 			//14A0 	1850
		LCALL 	73CH 			//14A1 	373C
		MOVLP 	11H 			//14A2 	0191
		SUBWR 	5BH, 0H 		//14A3 	125B
		BTSS 	3H, 2H 			//14A4 	2D03
		LJUMP 	4B3H 			//14A5 	3CB3
		MOVLP 	1EH 			//14A6 	019E
		LCALL 	604H 			//14A7 	3604
		MOVLP 	11H 			//14A8 	0191
		BTSS 	3H, 2H 			//14A9 	2D03
		LJUMP 	4B3H 			//14AA 	3CB3
		MOVLP 	1DH 			//14AB 	019D
		LCALL 	5FFH 			//14AC 	35FF
		MOVLP 	11H 			//14AD 	0191
		BTSS 	3H, 2H 			//14AE 	2D03
		LJUMP 	4B3H 			//14AF 	3CB3
		MOVLP 	1EH 			//14B0 	019E
		LCALL 	609H 			//14B1 	3609
		MOVLP 	11H 			//14B2 	0191
		BTSS 	3H, 0H 			//14B3 	2C03
		LJUMP 	4BCH 			//14B4 	3CBC

		//;NFB.C: 684: PA0 = 1;
		MOVLB 	0H 			//14B5 	1020
		BSR 	CH, 0H 			//14B6 	240C

		//;NFB.C: 685: timeleft3 += 10;
		LDWI 	AH 			//14B7 	000A
		MOVLB 	4H 			//14B8 	1024
		ADDWR 	4FH, 1H 		//14B9 	17CF
		BTSC 	3H, 0H 			//14BA 	2803
		INCR 	50H, 1H 		//14BB 	1AD0

		//;NFB.C: 686: }
		//;NFB.C: 687: if(diffT>Ptarget && !PuffOn && Smoketimecnt>200){
		MOVLB 	0H 			//14BC 	1020
		LDR 	5AH, 0H 			//14BD 	185A
		STR 	3CH 			//14BE 	10BC
		LDR 	59H, 0H 			//14BF 	1859
		STR 	3BH 			//14C0 	10BB
		MOVLP 	5H 			//14C1 	0185
		LCALL 	55CH 			//14C2 	355C
		MOVLP 	11H 			//14C3 	0191
		LDR 	3BH, 0H 			//14C4 	183B
		STR 	3FH 			//14C5 	10BF
		LDR 	3CH, 0H 			//14C6 	183C
		STR 	40H 			//14C7 	10C0
		LDR 	3DH, 0H 			//14C8 	183D
		STR 	41H 			//14C9 	10C1
		LCALL 	7B5H 			//14CA 	37B5
		MOVLP 	DH 			//14CB 	018D
		LCALL 	549H 			//14CC 	3549
		MOVLP 	11H 			//14CD 	0191
		BTSC 	3H, 0H 			//14CE 	2803
		LJUMP 	527H 			//14CF 	3D27
		LDR 	5FH, 0H 			//14D0 	185F
		IORWR 	60H, 0H 		//14D1 	1460
		BTSS 	3H, 2H 			//14D2 	2D03
		LJUMP 	527H 			//14D3 	3D27
		MOVLB 	3H 			//14D4 	1023
		LDR 	5BH, 0H 			//14D5 	185B
		BTSS 	3H, 2H 			//14D6 	2D03
		LJUMP 	4E2H 			//14D7 	3CE2
		LDR 	5AH, 0H 			//14D8 	185A
		BTSS 	3H, 2H 			//14D9 	2D03
		LJUMP 	4E2H 			//14DA 	3CE2
		LDR 	59H, 0H 			//14DB 	1859
		BTSS 	3H, 2H 			//14DC 	2D03
		LJUMP 	4E2H 			//14DD 	3CE2
		LDWI 	C9H 			//14DE 	00C9
		SUBWR 	58H, 0H 		//14DF 	1258
		BTSS 	3H, 0H 			//14E0 	2C03
		LJUMP 	527H 			//14E1 	3D27

		//;NFB.C: 688: Puffcnt++;
		LDWI 	1H 			//14E2 	0001
		MOVLB 	4H 			//14E3 	1024
		ADDWR 	20H, 1H 		//14E4 	17A0
		LDWI 	0H 			//14E5 	0000
		ADDWFC 	21H, 1H 		//14E6 	0DA1
		ADDWFC 	22H, 1H 		//14E7 	0DA2
		ADDWFC 	23H, 1H 		//14E8 	0DA3

		//;NFB.C: 689: int pf = Puffcnt;
		LDR 	21H, 0H 			//14E9 	1821
		MOVLB 	1H 			//14EA 	1021
		STR 	62H 			//14EB 	10E2
		MOVLB 	4H 			//14EC 	1024
		LDR 	20H, 0H 			//14ED 	1820
		MOVLB 	1H 			//14EE 	1021
		STR 	61H 			//14EF 	10E1

		//;NFB.C: 690: char msg[10];
		//;NFB.C: 691: sprintf(msg,"D%d,%0.1f\r\n",pf,diffT);
		LDWI 	BEH 			//14F0 	00BE
		STR 	41H 			//14F1 	10C1
		LDWI 	1H 			//14F2 	0001
		STR 	42H 			//14F3 	10C2
		LDWI 	DDH 			//14F4 	00DD
		STR 	43H 			//14F5 	10C3
		LDWI 	A0H 			//14F6 	00A0
		STR 	44H 			//14F7 	10C4
		LDR 	62H, 0H 			//14F8 	1862
		STR 	46H 			//14F9 	10C6
		LDR 	61H, 0H 			//14FA 	1861
		STR 	45H 			//14FB 	10C5
		MOVLB 	3H 			//14FC 	1023
		LDR 	60H, 0H 			//14FD 	1860
		MOVLB 	1H 			//14FE 	1021
		STR 	47H 			//14FF 	10C7
		MOVLB 	3H 			//1500 	1023
		LDR 	61H, 0H 			//1501 	1861
		MOVLB 	1H 			//1502 	1021
		STR 	48H 			//1503 	10C8
		MOVLB 	3H 			//1504 	1023
		LDR 	62H, 0H 			//1505 	1862
		MOVLB 	1H 			//1506 	1021
		STR 	49H 			//1507 	10C9
		MOVLP 	8H 			//1508 	0188
		LCALL 	7AH 			//1509 	307A
		MOVLP 	11H 			//150A 	0191

		//;NFB.C: 692: send(msg,strlen(msg));
		LDWI 	BEH 			//150B 	00BE
		STR 	4BH 			//150C 	10CB
		LDWI 	1H 			//150D 	0001
		STR 	4CH 			//150E 	10CC
		LDWI 	BEH 			//150F 	00BE
		MOVLB 	0H 			//1510 	1020
		STR 	2DH 			//1511 	10AD
		LDWI 	1H 			//1512 	0001
		STR 	2EH 			//1513 	10AE
		MOVLP 	8H 			//1514 	0188
		LCALL 	BH 			//1515 	300B
		MOVLP 	11H 			//1516 	0191
		LCALL 	795H 			//1517 	3795
		MOVLP 	4H 			//1518 	0184
		LCALL 	4C2H 			//1519 	34C2
		MOVLP 	11H 			//151A 	0191

		//;NFB.C: 693: PuffOn = 1;
		MOVLB 	0H 			//151B 	1020
		CLRF 	5FH 			//151C 	11DF
		INCR 	5FH, 1H 		//151D 	1ADF
		CLRF 	60H 			//151E 	11E0

		//;NFB.C: 694: timenow = Smoketimecnt;
		MOVLB 	3H 			//151F 	1023
		LDR 	59H, 0H 			//1520 	1859
		MOVLB 	4H 			//1521 	1024
		STR 	4CH 			//1522 	10CC
		MOVLB 	3H 			//1523 	1023
		LDR 	58H, 0H 			//1524 	1858
		MOVLB 	4H 			//1525 	1024
		STR 	4BH 			//1526 	10CB

		//;NFB.C: 695: }
		//;NFB.C: 696: if(PuffOn){
		MOVLB 	0H 			//1527 	1020
		LDR 	5FH, 0H 			//1528 	185F
		IORWR 	60H, 0H 		//1529 	1460
		BTSC 	3H, 2H 			//152A 	2903
		LJUMP 	55DH 			//152B 	3D5D

		//;NFB.C: 697: if(Smoketimecnt-timenow>=200){
		MOVLB 	4H 			//152C 	1024
		LDR 	4BH, 0H 			//152D 	184B
		MOVLB 	1H 			//152E 	1021
		STR 	59H 			//152F 	10D9
		MOVLB 	4H 			//1530 	1024
		LDR 	4CH, 0H 			//1531 	184C
		MOVLB 	1H 			//1532 	1021
		LCALL 	76CH 			//1533 	376C
		MOVLP 	11H 			//1534 	0191
		MOVLB 	3H 			//1535 	1023
		LDR 	58H, 0H 			//1536 	1858
		MOVLB 	1H 			//1537 	1021
		STR 	5DH 			//1538 	10DD
		MOVLB 	3H 			//1539 	1023
		LDR 	59H, 0H 			//153A 	1859
		MOVLB 	1H 			//153B 	1021
		STR 	5EH 			//153C 	10DE
		MOVLB 	3H 			//153D 	1023
		LDR 	5AH, 0H 			//153E 	185A
		MOVLB 	1H 			//153F 	1021
		STR 	5FH 			//1540 	10DF
		MOVLB 	3H 			//1541 	1023
		LDR 	5BH, 0H 			//1542 	185B
		MOVLB 	1H 			//1543 	1021
		STR 	60H 			//1544 	10E0
		LDR 	59H, 0H 			//1545 	1859
		SUBWR 	5DH, 1H 		//1546 	12DD
		LDR 	5AH, 0H 			//1547 	185A
		SUBWFB 	5EH, 1H 		//1548 	0BDE
		LDR 	5BH, 0H 			//1549 	185B
		SUBWFB 	5FH, 1H 		//154A 	0BDF
		LDR 	5CH, 0H 			//154B 	185C
		SUBWFB 	60H, 1H 		//154C 	0BE0
		LDR 	60H, 0H 			//154D 	1860
		BTSS 	3H, 2H 			//154E 	2D03
		LJUMP 	55AH 			//154F 	3D5A
		LDR 	5FH, 0H 			//1550 	185F
		BTSS 	3H, 2H 			//1551 	2D03
		LJUMP 	55AH 			//1552 	3D5A
		LDR 	5EH, 0H 			//1553 	185E
		BTSS 	3H, 2H 			//1554 	2D03
		LJUMP 	55AH 			//1555 	3D5A
		LDWI 	C8H 			//1556 	00C8
		SUBWR 	5DH, 0H 		//1557 	125D
		BTSS 	3H, 0H 			//1558 	2C03
		LJUMP 	55DH 			//1559 	3D5D

		//;NFB.C: 698: PuffOn = 0;
		MOVLB 	0H 			//155A 	1020
		CLRF 	5FH 			//155B 	11DF
		CLRF 	60H 			//155C 	11E0

		//;NFB.C: 699: }
		//;NFB.C: 700: }
		//;NFB.C: 701: if(Smoketimecnt>=(t2*100) || Puffcnt>=puffno){
		MOVLB 	0H 			//155D 	1020
		LDR 	5EH, 0H 			//155E 	185E
		STR 	3CH 			//155F 	10BC
		LDR 	5DH, 0H 			//1560 	185D
		STR 	3BH 			//1561 	10BB
		LDWI 	64H 			//1562 	0064
		STR 	3DH 			//1563 	10BD
		CLRF 	3EH 			//1564 	11BE
		MOVLP 	4H 			//1565 	0184
		LCALL 	402H 			//1566 	3402
		MOVLP 	11H 			//1567 	0191
		LDR 	3BH, 0H 			//1568 	183B
		MOVLB 	1H 			//1569 	1021
		STR 	59H 			//156A 	10D9
		MOVLB 	0H 			//156B 	1020
		LDR 	3CH, 0H 			//156C 	183C
		LCALL 	73CH 			//156D 	373C
		MOVLP 	11H 			//156E 	0191
		SUBWR 	5BH, 0H 		//156F 	125B
		BTSS 	3H, 2H 			//1570 	2D03
		LJUMP 	57FH 			//1571 	3D7F
		MOVLP 	1EH 			//1572 	019E
		LCALL 	604H 			//1573 	3604
		MOVLP 	11H 			//1574 	0191
		BTSS 	3H, 2H 			//1575 	2D03
		LJUMP 	57FH 			//1576 	3D7F
		MOVLP 	1DH 			//1577 	019D
		LCALL 	5FFH 			//1578 	35FF
		MOVLP 	11H 			//1579 	0191
		BTSS 	3H, 2H 			//157A 	2D03
		LJUMP 	57FH 			//157B 	3D7F
		MOVLP 	1EH 			//157C 	019E
		LCALL 	609H 			//157D 	3609
		MOVLP 	11H 			//157E 	0191
		BTSC 	3H, 0H 			//157F 	2803
		LJUMP 	5A1H 			//1580 	3DA1
		MOVLB 	0H 			//1581 	1020
		LDR 	5BH, 0H 			//1582 	185B
		MOVLB 	1H 			//1583 	1021
		STR 	59H 			//1584 	10D9
		MOVLB 	0H 			//1585 	1020
		LDR 	5CH, 0H 			//1586 	185C
		MOVLB 	1H 			//1587 	1021
		LCALL 	76CH 			//1588 	376C
		MOVLP 	11H 			//1589 	0191
		LDR 	5CH, 0H 			//158A 	185C
		MOVLB 	4H 			//158B 	1024
		SUBWR 	23H, 0H 		//158C 	1223
		BTSS 	3H, 2H 			//158D 	2D03
		LJUMP 	59FH 			//158E 	3D9F
		MOVLB 	1H 			//158F 	1021
		LDR 	5BH, 0H 			//1590 	185B
		MOVLB 	4H 			//1591 	1024
		SUBWR 	22H, 0H 		//1592 	1222
		BTSS 	3H, 2H 			//1593 	2D03
		LJUMP 	59FH 			//1594 	3D9F
		MOVLB 	1H 			//1595 	1021
		LDR 	5AH, 0H 			//1596 	185A
		MOVLB 	4H 			//1597 	1024
		SUBWR 	21H, 0H 		//1598 	1221
		BTSS 	3H, 2H 			//1599 	2D03
		LJUMP 	59FH 			//159A 	3D9F
		MOVLB 	1H 			//159B 	1021
		LDR 	59H, 0H 			//159C 	1859
		MOVLB 	4H 			//159D 	1024
		SUBWR 	20H, 0H 		//159E 	1220
		BTSS 	3H, 0H 			//159F 	2C03
		LJUMP 	5BAH 			//15A0 	3DBA

		//;NFB.C: 702: send((char*)"T0\r\n",4);
		LCALL 	7F2H 			//15A1 	37F2
		MOVLP 	11H 			//15A2 	0191
		LCALL 	7EDH 			//15A3 	37ED
		MOVLP 	4H 			//15A4 	0184
		LCALL 	4C2H 			//15A5 	34C2
		MOVLP 	11H 			//15A6 	0191

		//;NFB.C: 703: send((char*)"S0\r\n",4);
		LCALL 	7F6H 			//15A7 	37F6
		MOVLP 	11H 			//15A8 	0191
		LCALL 	7EDH 			//15A9 	37ED
		MOVLP 	4H 			//15AA 	0184
		LCALL 	4C2H 			//15AB 	34C2
		MOVLP 	11H 			//15AC 	0191

		//;NFB.C: 704: PA0 = 0;
		MOVLB 	0H 			//15AD 	1020
		BCR 	CH, 0H 			//15AE 	200C

		//;NFB.C: 705: SmokeOn = 0;
		//;NFB.C: 706: Smoketimer = 0;
		//;NFB.C: 707: PuffOn = 0;
		MOVLP 	1DH 			//15AF 	019D
		LCALL 	5CCH 			//15B0 	35CC
		MOVLP 	11H 			//15B1 	0191
		CLRF 	5FH 			//15B2 	11DF
		CLRF 	60H 			//15B3 	11E0

		//;NFB.C: 708: PB0 = 1;
		//;NFB.C: 709: DelayMs(500);
		LCALL 	7DAH 			//15B4 	37DA
		MOVLP 	4H 			//15B5 	0184
		LCALL 	4E5H 			//15B6 	34E5
		MOVLP 	11H 			//15B7 	0191

		//;NFB.C: 710: PB0 = 0;
		MOVLB 	0H 			//15B8 	1020
		BCR 	DH, 0H 			//15B9 	200D

		//;NFB.C: 711: }
		//;NFB.C: 712: }
		//;NFB.C: 713: if(ReadFlag){
		MOVLB 	4H 			//15BA 	1024
		LDR 	57H, 0H 			//15BB 	1857
		IORWR 	58H, 0H 		//15BC 	1458
		BTSC 	3H, 2H 			//15BD 	2903
		LJUMP 	7FEH 			//15BE 	3FFE
		LDWI 	20H 			//15BF 	0020

		//;NFB.C: 714: ReadFlag = 0;
		CLRF 	57H 			//15C0 	11D7
		CLRF 	58H 			//15C1 	11D8

		//;NFB.C: 715: char msg[80];
		//;NFB.C: 716: sprintf(msg,"%d,%d,%0.0f,%0.0f,%d,%d\r\n",t1,t2,T1,T2,puffno,Ptarget);
		MOVLB 	1H 			//15C2 	1021
		STR 	41H 			//15C3 	10C1
		LDWI 	3H 			//15C4 	0003
		STR 	42H 			//15C5 	10C2
		LDWI 	C3H 			//15C6 	00C3
		STR 	43H 			//15C7 	10C3
		LDWI 	A0H 			//15C8 	00A0
		STR 	44H 			//15C9 	10C4
		MOVLB 	3H 			//15CA 	1023
		LDR 	6FH, 0H 			//15CB 	186F
		MOVLB 	1H 			//15CC 	1021
		STR 	46H 			//15CD 	10C6
		MOVLB 	3H 			//15CE 	1023
		LDR 	6EH, 0H 			//15CF 	186E
		MOVLB 	1H 			//15D0 	1021
		STR 	45H 			//15D1 	10C5
		MOVLB 	0H 			//15D2 	1020
		LDR 	5EH, 0H 			//15D3 	185E
		MOVLB 	1H 			//15D4 	1021
		STR 	48H 			//15D5 	10C8
		MOVLB 	0H 			//15D6 	1020
		LDR 	5DH, 0H 			//15D7 	185D
		MOVLB 	1H 			//15D8 	1021
		STR 	47H 			//15D9 	10C7
		MOVLB 	0H 			//15DA 	1020
		LDR 	56H, 0H 			//15DB 	1856
		MOVLB 	1H 			//15DC 	1021
		STR 	49H 			//15DD 	10C9
		MOVLB 	0H 			//15DE 	1020
		LDR 	57H, 0H 			//15DF 	1857
		MOVLB 	1H 			//15E0 	1021
		STR 	4AH 			//15E1 	10CA
		MOVLB 	0H 			//15E2 	1020
		LDR 	58H, 0H 			//15E3 	1858
		MOVLB 	1H 			//15E4 	1021
		STR 	4BH 			//15E5 	10CB
		MOVLB 	4H 			//15E6 	1024
		LDR 	6DH, 0H 			//15E7 	186D
		MOVLB 	1H 			//15E8 	1021
		STR 	4CH 			//15E9 	10CC
		MOVLB 	4H 			//15EA 	1024
		LDR 	6EH, 0H 			//15EB 	186E
		MOVLB 	1H 			//15EC 	1021
		STR 	4DH 			//15ED 	10CD
		MOVLB 	4H 			//15EE 	1024
		LDR 	6FH, 0H 			//15EF 	186F
		MOVLB 	1H 			//15F0 	1021
		STR 	4EH 			//15F1 	10CE
		MOVLB 	0H 			//15F2 	1020
		LDR 	5CH, 0H 			//15F3 	185C
		MOVLB 	1H 			//15F4 	1021
		STR 	50H 			//15F5 	10D0
		MOVLB 	0H 			//15F6 	1020
		LDR 	5BH, 0H 			//15F7 	185B
		MOVLB 	1H 			//15F8 	1021
		STR 	4FH 			//15F9 	10CF
		MOVLB 	0H 			//15FA 	1020
		LDR 	5AH, 0H 			//15FB 	185A
		MOVLB 	1H 			//15FC 	1021
		STR 	52H 			//15FD 	10D2
		MOVLB 	0H 			//15FE 	1020
		LDR 	59H, 0H 			//15FF 	1859
		MOVLB 	1H 			//1600 	1021
		STR 	51H 			//1601 	10D1
		MOVLP 	8H 			//1602 	0188
		LCALL 	7AH 			//1603 	307A
		MOVLP 	11H 			//1604 	0191

		//;NFB.C: 717: send(msg,strlen(msg));
		LDWI 	20H 			//1605 	0020
		STR 	4BH 			//1606 	10CB
		LDWI 	3H 			//1607 	0003
		STR 	4CH 			//1608 	10CC
		LDWI 	20H 			//1609 	0020
		MOVLB 	0H 			//160A 	1020
		STR 	2DH 			//160B 	10AD
		LDWI 	3H 			//160C 	0003
		STR 	2EH 			//160D 	10AE
		MOVLP 	8H 			//160E 	0188
		LCALL 	BH 			//160F 	300B
		MOVLP 	11H 			//1610 	0191
		LCALL 	795H 			//1611 	3795
		MOVLP 	1EH 			//1612 	019E
		LJUMP 	6F3H 			//1613 	3EF3
		MOVLB 	1H 			//1614 	1021
		LDWI 	80H 			//1615 	0080
		CLRF 	2CH 			//1616 	11AC
		STR 	2DH 			//1617 	10AD
		LDWI 	45H 			//1618 	0045
		STR 	2EH 			//1619 	10AE
		LDWI 	40H 			//161A 	0040
		CLRF 	20H 			//161B 	11A0
		CLRF 	21H 			//161C 	11A1
		STR 	22H 			//161D 	10A2
		MOVLB 	3H 			//161E 	1023
		RET 					//161F 	1008
		LDR 	35H, 0H 			//1620 	1835
		MOVLB 	1H 			//1621 	1021
		STR 	23H 			//1622 	10A3
		MOVLB 	0H 			//1623 	1020
		LDR 	36H, 0H 			//1624 	1836
		MOVLB 	1H 			//1625 	1021
		STR 	24H 			//1626 	10A4
		MOVLB 	0H 			//1627 	1020
		LDR 	37H, 0H 			//1628 	1837
		MOVLB 	1H 			//1629 	1021
		STR 	25H 			//162A 	10A5
		RET 					//162B 	1008
		LDR 	2CH, 0H 			//162C 	182C
		MOVLB 	4H 			//162D 	1024
		STR 	3FH 			//162E 	10BF
		MOVLB 	1H 			//162F 	1021
		LDR 	2DH, 0H 			//1630 	182D
		MOVLB 	4H 			//1631 	1024
		STR 	40H 			//1632 	10C0
		MOVLB 	1H 			//1633 	1021
		LDR 	2EH, 0H 			//1634 	182E
		MOVLB 	4H 			//1635 	1024
		STR 	41H 			//1636 	10C1
		MOVLB 	1H 			//1637 	1021
		LDWI 	40H 			//1638 	0040
		CLRF 	20H 			//1639 	11A0
		CLRF 	21H 			//163A 	11A1
		STR 	22H 			//163B 	10A2
		MOVLB 	4H 			//163C 	1024
		LDR 	45H, 0H 			//163D 	1845
		MOVLB 	0H 			//163E 	1020
		STR 	4DH 			//163F 	10CD
		MOVLB 	4H 			//1640 	1024
		LDR 	46H, 0H 			//1641 	1846
		MOVLB 	0H 			//1642 	1020
		STR 	4EH 			//1643 	10CE
		MOVLB 	4H 			//1644 	1024
		LDR 	47H, 0H 			//1645 	1847
		MOVLB 	0H 			//1646 	1020
		STR 	4FH 			//1647 	10CF
		MOVLB 	4H 			//1648 	1024
		LDR 	48H, 0H 			//1649 	1848
		MOVLB 	0H 			//164A 	1020
		STR 	50H 			//164B 	10D0
		MOVLB 	4H 			//164C 	1024
		LDR 	49H, 0H 			//164D 	1849
		MOVLB 	0H 			//164E 	1020
		STR 	51H 			//164F 	10D1
		MOVLB 	4H 			//1650 	1024
		LDR 	4AH, 0H 			//1651 	184A
		MOVLB 	0H 			//1652 	1020
		STR 	52H 			//1653 	10D2
		RET 					//1654 	1008
		LDR 	2CH, 0H 			//1655 	182C
		MOVLB 	4H 			//1656 	1024
		STR 	39H 			//1657 	10B9
		MOVLB 	1H 			//1658 	1021
		LDR 	2DH, 0H 			//1659 	182D
		MOVLB 	4H 			//165A 	1024
		STR 	3AH 			//165B 	10BA
		MOVLB 	1H 			//165C 	1021
		LDR 	2EH, 0H 			//165D 	182E
		MOVLB 	4H 			//165E 	1024
		STR 	3BH 			//165F 	10BB
		MOVLB 	0H 			//1660 	1020
		LDWI 	80H 			//1661 	0080
		CLRF 	41H 			//1662 	11C1
		STR 	42H 			//1663 	10C2
		LDWI 	BFH 			//1664 	00BF
		STR 	43H 			//1665 	10C3
		LDWI 	66H 			//1666 	0066
		MOVLB 	1H 			//1667 	1021
		STR 	2CH 			//1668 	10AC
		LDWI 	26H 			//1669 	0026
		STR 	2DH 			//166A 	10AD
		LDWI 	3FH 			//166B 	003F
		STR 	2EH 			//166C 	10AE
		MOVLB 	4H 			//166D 	1024
		LDR 	39H, 0H 			//166E 	1839
		MOVLB 	1H 			//166F 	1021
		STR 	2FH 			//1670 	10AF
		MOVLB 	4H 			//1671 	1024
		LDR 	3AH, 0H 			//1672 	183A
		MOVLB 	1H 			//1673 	1021
		STR 	30H 			//1674 	10B0
		MOVLB 	4H 			//1675 	1024
		LDR 	3BH, 0H 			//1676 	183B
		MOVLB 	1H 			//1677 	1021
		STR 	31H 			//1678 	10B1
		RET 					//1679 	1008
		LDR 	41H, 0H 			//167A 	1841
		MOVLB 	3H 			//167B 	1023
		STR 	55H 			//167C 	10D5
		MOVLB 	0H 			//167D 	1020
		LDR 	42H, 0H 			//167E 	1842
		MOVLB 	3H 			//167F 	1023
		STR 	56H 			//1680 	10D6
		MOVLB 	0H 			//1681 	1020
		LDR 	43H, 0H 			//1682 	1843
		MOVLB 	3H 			//1683 	1023
		STR 	57H 			//1684 	10D7
		MOVLB 	0H 			//1685 	1020
		LDWI 	C8H 			//1686 	00C8
		CLRF 	41H 			//1687 	11C1
		STR 	42H 			//1688 	10C2
		LDWI 	41H 			//1689 	0041
		STR 	43H 			//168A 	10C3
		LDWI 	65H 			//168B 	0065
		MOVLB 	1H 			//168C 	1021
		STR 	2CH 			//168D 	10AC
		LDWI 	2AH 			//168E 	002A
		STR 	2DH 			//168F 	10AD
		LDWI 	3BH 			//1690 	003B
		STR 	2EH 			//1691 	10AE
		MOVLB 	3H 			//1692 	1023
		LDR 	55H, 0H 			//1693 	1855
		MOVLB 	1H 			//1694 	1021
		STR 	2FH 			//1695 	10AF
		MOVLB 	3H 			//1696 	1023
		LDR 	56H, 0H 			//1697 	1856
		MOVLB 	1H 			//1698 	1021
		STR 	30H 			//1699 	10B0
		MOVLB 	3H 			//169A 	1023
		LDR 	57H, 0H 			//169B 	1857
		MOVLB 	1H 			//169C 	1021
		STR 	31H 			//169D 	10B1
		RET 					//169E 	1008
		LDR 	20H, 0H 			//169F 	1820
		MOVLB 	4H 			//16A0 	1024
		STR 	3CH 			//16A1 	10BC
		MOVLB 	1H 			//16A2 	1021
		LDR 	21H, 0H 			//16A3 	1821
		MOVLB 	4H 			//16A4 	1024
		STR 	3DH 			//16A5 	10BD
		MOVLB 	1H 			//16A6 	1021
		LDR 	22H, 0H 			//16A7 	1822
		MOVLB 	4H 			//16A8 	1024
		STR 	3EH 			//16A9 	10BE
		LDR 	3FH, 0H 			//16AA 	183F
		MOVLB 	1H 			//16AB 	1021
		STR 	2CH 			//16AC 	10AC
		MOVLB 	4H 			//16AD 	1024
		LDR 	40H, 0H 			//16AE 	1840
		MOVLB 	1H 			//16AF 	1021
		STR 	2DH 			//16B0 	10AD
		MOVLB 	4H 			//16B1 	1024
		LDR 	41H, 0H 			//16B2 	1841
		MOVLB 	1H 			//16B3 	1021
		STR 	2EH 			//16B4 	10AE
		MOVLB 	4H 			//16B5 	1024
		LDR 	3CH, 0H 			//16B6 	183C
		MOVLB 	1H 			//16B7 	1021
		STR 	2FH 			//16B8 	10AF
		MOVLB 	4H 			//16B9 	1024
		LDR 	3DH, 0H 			//16BA 	183D
		MOVLB 	1H 			//16BB 	1021
		STR 	30H 			//16BC 	10B0
		MOVLB 	4H 			//16BD 	1024
		LDR 	3EH, 0H 			//16BE 	183E
		MOVLB 	1H 			//16BF 	1021
		STR 	31H 			//16C0 	10B1
		RET 					//16C1 	1008
		LDR 	63H, 0H 			//16C2 	1863
		MOVLB 	0H 			//16C3 	1020
		STR 	4DH 			//16C4 	10CD
		MOVLB 	3H 			//16C5 	1023
		LDR 	64H, 0H 			//16C6 	1864
		MOVLB 	0H 			//16C7 	1020
		STR 	4EH 			//16C8 	10CE
		MOVLB 	3H 			//16C9 	1023
		LDR 	65H, 0H 			//16CA 	1865
		MOVLB 	0H 			//16CB 	1020
		STR 	4FH 			//16CC 	10CF
		RET 					//16CD 	1008
		STR 	2EH 			//16CE 	10AE
		MOVLB 	3H 			//16CF 	1023
		LDR 	55H, 0H 			//16D0 	1855
		MOVLB 	1H 			//16D1 	1021
		STR 	2FH 			//16D2 	10AF
		MOVLB 	3H 			//16D3 	1023
		LDR 	56H, 0H 			//16D4 	1856
		MOVLB 	1H 			//16D5 	1021
		STR 	30H 			//16D6 	10B0
		MOVLB 	3H 			//16D7 	1023
		LDR 	57H, 0H 			//16D8 	1857
		MOVLB 	1H 			//16D9 	1021
		STR 	31H 			//16DA 	10B1
		RET 					//16DB 	1008
		LDR 	2CH, 0H 			//16DC 	182C
		MOVLB 	4H 			//16DD 	1024
		STR 	42H 			//16DE 	10C2
		MOVLB 	1H 			//16DF 	1021
		LDR 	2DH, 0H 			//16E0 	182D
		MOVLB 	4H 			//16E1 	1024
		STR 	43H 			//16E2 	10C3
		MOVLB 	1H 			//16E3 	1021
		LDR 	2EH, 0H 			//16E4 	182E
		MOVLB 	4H 			//16E5 	1024
		STR 	44H 			//16E6 	10C4
		LDWI 	D7H 			//16E7 	00D7
		MOVLB 	1H 			//16E8 	1021
		STR 	2CH 			//16E9 	10AC
		LDWI 	23H 			//16EA 	0023
		STR 	2DH 			//16EB 	10AD
		LDWI 	3CH 			//16EC 	003C
		STR 	2EH 			//16ED 	10AE
		MOVLB 	4H 			//16EE 	1024
		LDR 	42H, 0H 			//16EF 	1842
		MOVLB 	1H 			//16F0 	1021
		STR 	2FH 			//16F1 	10AF
		MOVLB 	4H 			//16F2 	1024
		LDR 	43H, 0H 			//16F3 	1843
		MOVLB 	1H 			//16F4 	1021
		STR 	30H 			//16F5 	10B0
		MOVLB 	4H 			//16F6 	1024
		LDR 	44H, 0H 			//16F7 	1844
		MOVLB 	1H 			//16F8 	1021
		STR 	31H 			//16F9 	10B1
		RET 					//16FA 	1008
		LDR 	2CH, 0H 			//16FB 	182C
		MOVLB 	3H 			//16FC 	1023
		STR 	55H 			//16FD 	10D5
		MOVLB 	1H 			//16FE 	1021
		LDR 	2DH, 0H 			//16FF 	182D
		MOVLB 	3H 			//1700 	1023
		STR 	56H 			//1701 	10D6
		MOVLB 	1H 			//1702 	1021
		LDR 	2EH, 0H 			//1703 	182E
		MOVLB 	3H 			//1704 	1023
		STR 	57H 			//1705 	10D7
		MOVLB 	1H 			//1706 	1021
		LDWI 	1CH 			//1707 	001C
		CLRF 	2CH 			//1708 	11AC
		STR 	2DH 			//1709 	10AD
		RETW 	42H 			//170A 	0442
		LDR 	2CH, 0H 			//170B 	182C
		MOVLB 	4H 			//170C 	1024
		STR 	45H 			//170D 	10C5
		MOVLB 	1H 			//170E 	1021
		LDR 	2DH, 0H 			//170F 	182D
		MOVLB 	4H 			//1710 	1024
		STR 	46H 			//1711 	10C6
		MOVLB 	1H 			//1712 	1021
		LDR 	2EH, 0H 			//1713 	182E
		MOVLB 	4H 			//1714 	1024
		STR 	47H 			//1715 	10C7
		RET 					//1716 	1008
		LDR 	2CH, 0H 			//1717 	182C
		MOVLB 	4H 			//1718 	1024
		STR 	48H 			//1719 	10C8
		MOVLB 	1H 			//171A 	1021
		LDR 	2DH, 0H 			//171B 	182D
		MOVLB 	4H 			//171C 	1024
		STR 	49H 			//171D 	10C9
		MOVLB 	1H 			//171E 	1021
		LDR 	2EH, 0H 			//171F 	182E
		MOVLB 	4H 			//1720 	1024
		STR 	4AH 			//1721 	10CA
		RET 					//1722 	1008
		LDR 	63H, 0H 			//1723 	1863
		MOVLB 	4H 			//1724 	1024
		STR 	36H 			//1725 	10B6
		MOVLB 	3H 			//1726 	1023
		LDR 	64H, 0H 			//1727 	1864
		MOVLB 	4H 			//1728 	1024
		STR 	37H 			//1729 	10B7
		MOVLB 	3H 			//172A 	1023
		LDR 	65H, 0H 			//172B 	1865
		MOVLB 	4H 			//172C 	1024
		STR 	38H 			//172D 	10B8
		MOVLB 	3H 			//172E 	1023
		RET 					//172F 	1008
		LDR 	2CH, 0H 			//1730 	182C
		MOVLB 	0H 			//1731 	1020
		STR 	44H 			//1732 	10C4
		MOVLB 	1H 			//1733 	1021
		LDR 	2DH, 0H 			//1734 	182D
		MOVLB 	0H 			//1735 	1020
		STR 	45H 			//1736 	10C5
		MOVLB 	1H 			//1737 	1021
		LDR 	2EH, 0H 			//1738 	182E
		MOVLB 	0H 			//1739 	1020
		STR 	46H 			//173A 	10C6
		RET 					//173B 	1008
		MOVLB 	1H 			//173C 	1021
		STR 	5AH 			//173D 	10DA
		LDWI 	0H 			//173E 	0000
		BTSC 	5AH, 7H 		//173F 	2BDA
		LDWI 	FFH 			//1740 	00FF
		STR 	5BH 			//1741 	10DB
		STR 	5CH 			//1742 	10DC
		LDR 	5CH, 0H 			//1743 	185C
		MOVLB 	3H 			//1744 	1023
		RET 					//1745 	1008
		LDR 	3BH, 0H 			//1746 	183B
		MOVLB 	1H 			//1747 	1021
		STR 	2CH 			//1748 	10AC
		MOVLB 	0H 			//1749 	1020
		LDR 	3CH, 0H 			//174A 	183C
		MOVLB 	1H 			//174B 	1021
		STR 	2DH 			//174C 	10AD
		MOVLB 	0H 			//174D 	1020
		LDR 	3DH, 0H 			//174E 	183D
		MOVLB 	1H 			//174F 	1021
		STR 	2EH 			//1750 	10AE
		MOVLB 	4H 			//1751 	1024
		LDR 	30H, 0H 			//1752 	1830
		MOVLB 	1H 			//1753 	1021
		STR 	2FH 			//1754 	10AF
		MOVLB 	4H 			//1755 	1024
		LDR 	31H, 0H 			//1756 	1831
		MOVLB 	1H 			//1757 	1021
		STR 	30H 			//1758 	10B0
		MOVLB 	4H 			//1759 	1024
		LDR 	32H, 0H 			//175A 	1832
		MOVLB 	1H 			//175B 	1021
		STR 	31H 			//175C 	10B1
		RET 					//175D 	1008
		STR 	44H 			//175E 	10C4
		MOVLB 	3H 			//175F 	1023
		LDR 	63H, 0H 			//1760 	1863
		MOVLB 	1H 			//1761 	1021
		STR 	45H 			//1762 	10C5
		MOVLB 	3H 			//1763 	1023
		LDR 	64H, 0H 			//1764 	1864
		MOVLB 	1H 			//1765 	1021
		STR 	46H 			//1766 	10C6
		MOVLB 	3H 			//1767 	1023
		LDR 	65H, 0H 			//1768 	1865
		MOVLB 	1H 			//1769 	1021
		STR 	47H 			//176A 	10C7
		RET 					//176B 	1008
		STR 	5AH 			//176C 	10DA
		LDWI 	0H 			//176D 	0000
		BTSC 	5AH, 7H 		//176E 	2BDA
		LDWI 	FFH 			//176F 	00FF
		STR 	5BH 			//1770 	10DB
		STR 	5CH 			//1771 	10DC
		RET 					//1772 	1008
		LDR 	20H, 0H 			//1773 	1820
		STR 	2FH 			//1774 	10AF
		LDR 	21H, 0H 			//1775 	1821
		STR 	30H 			//1776 	10B0
		LDR 	22H, 0H 			//1777 	1822
		STR 	31H 			//1778 	10B1
		RET 					//1779 	1008
		MOVLB 	1H 			//177A 	1021
		ADDWFC 	47H, 0H 		//177B 	0D47
		STR 	5AH 			//177C 	10DA
		LSRF 	5AH, 1H 		//177D 	06DA
		RRR 	59H, 1H 			//177E 	1CD9
		LDR 	59H, 0H 			//177F 	1859
		MOVLB 	3H 			//1780 	1023
		RET 					//1781 	1008
		MOVLB 	1H 			//1782 	1021
		LDWI 	A0H 			//1783 	00A0
		CLRF 	2CH 			//1784 	11AC
		STR 	2DH 			//1785 	10AD
		LDWI 	41H 			//1786 	0041
		STR 	2EH 			//1787 	10AE
		MOVLB 	4H 			//1788 	1024
		LDR 	33H, 0H 			//1789 	1833
		MOVLB 	1H 			//178A 	1021
		STR 	20H 			//178B 	10A0
		MOVLB 	4H 			//178C 	1024
		LDR 	34H, 0H 			//178D 	1834
		MOVLB 	1H 			//178E 	1021
		STR 	21H 			//178F 	10A1
		MOVLB 	4H 			//1790 	1024
		LDR 	35H, 0H 			//1791 	1835
		MOVLB 	1H 			//1792 	1021
		STR 	22H 			//1793 	10A2
		RET 					//1794 	1008
		LDR 	2EH, 0H 			//1795 	182E
		MOVLB 	1H 			//1796 	1021
		STR 	4EH 			//1797 	10CE
		MOVLB 	0H 			//1798 	1020
		LDR 	2DH, 0H 			//1799 	182D
		MOVLB 	1H 			//179A 	1021
		STR 	4DH 			//179B 	10CD
		RET 					//179C 	1008
		STR 	42H 			//179D 	10C2
		LDWI 	E9H 			//179E 	00E9
		STR 	43H 			//179F 	10C3
		RETW 	A0H 			//17A0 	04A0
		LDR 	4DH, 0H 			//17A1 	184D
		MOVLB 	4H 			//17A2 	1024
		STR 	30H 			//17A3 	10B0
		MOVLB 	0H 			//17A4 	1020
		LDR 	4EH, 0H 			//17A5 	184E
		MOVLB 	4H 			//17A6 	1024
		STR 	31H 			//17A7 	10B1
		MOVLB 	0H 			//17A8 	1020
		LDR 	4FH, 0H 			//17A9 	184F
		MOVLB 	4H 			//17AA 	1024
		STR 	32H 			//17AB 	10B2
		MOVLB 	3H 			//17AC 	1023
		LDR 	6EH, 0H 			//17AD 	186E
		RET 					//17AE 	1008
		XORWI 	80H 			//17AF 	0A80
		MOVLB 	1H 			//17B0 	1021
		STR 	59H 			//17B1 	10D9
		LDWI 	80H 			//17B2 	0080
		SUBWR 	59H, 0H 		//17B3 	1259
		RET 					//17B4 	1008
		MOVLB 	3H 			//17B5 	1023
		LDR 	60H, 0H 			//17B6 	1860
		MOVLB 	0H 			//17B7 	1020
		STR 	42H 			//17B8 	10C2
		MOVLB 	3H 			//17B9 	1023
		LDR 	61H, 0H 			//17BA 	1861
		MOVLB 	0H 			//17BB 	1020
		STR 	43H 			//17BC 	10C3
		MOVLB 	3H 			//17BD 	1023
		LDR 	62H, 0H 			//17BE 	1862
		MOVLB 	0H 			//17BF 	1020
		STR 	44H 			//17C0 	10C4
		RET 					//17C1 	1008
		LDR 	4DH, 0H 			//17C2 	184D
		MOVLB 	1H 			//17C3 	1021
		STR 	23H 			//17C4 	10A3
		MOVLB 	0H 			//17C5 	1020
		LDR 	4EH, 0H 			//17C6 	184E
		MOVLB 	1H 			//17C7 	1021
		STR 	24H 			//17C8 	10A4
		MOVLB 	0H 			//17C9 	1020
		LDR 	4FH, 0H 			//17CA 	184F
		MOVLB 	1H 			//17CB 	1021
		STR 	25H 			//17CC 	10A5
		RET 					//17CD 	1008
		LDR 	41H, 0H 			//17CE 	1841
		MOVLB 	3H 			//17CF 	1023
		STR 	63H 			//17D0 	10E3
		MOVLB 	0H 			//17D1 	1020
		LDR 	42H, 0H 			//17D2 	1842
		MOVLB 	3H 			//17D3 	1023
		STR 	64H 			//17D4 	10E4
		MOVLB 	0H 			//17D5 	1020
		LDR 	43H, 0H 			//17D6 	1843
		MOVLB 	3H 			//17D7 	1023
		STR 	65H 			//17D8 	10E5
		RET 					//17D9 	1008
		BSR 	DH, 0H 			//17DA 	240D
		LDWI 	F4H 			//17DB 	00F4
		MOVLB 	1H 			//17DC 	1021
		STR 	46H 			//17DD 	10C6
		LDWI 	1H 			//17DE 	0001
		STR 	47H 			//17DF 	10C7
		RET 					//17E0 	1008
		LDR 	2CH, 0H 			//17E1 	182C
		MOVLB 	4H 			//17E2 	1024
		STR 	33H 			//17E3 	10B3
		MOVLB 	1H 			//17E4 	1021
		LDR 	2DH, 0H 			//17E5 	182D
		MOVLB 	4H 			//17E6 	1024
		STR 	34H 			//17E7 	10B4
		MOVLB 	1H 			//17E8 	1021
		LDR 	2EH, 0H 			//17E9 	182E
		MOVLB 	4H 			//17EA 	1024
		STR 	35H 			//17EB 	10B5
		RET 					//17EC 	1008
		STR 	4CH 			//17ED 	10CC
		LDWI 	4H 			//17EE 	0004
		STR 	4DH 			//17EF 	10CD
		CLRF 	4EH 			//17F0 	11CE
		RET 					//17F1 	1008
		LDWI 	13H 			//17F2 	0013
		MOVLB 	1H 			//17F3 	1021
		STR 	4BH 			//17F4 	10CB
		RETW 	A1H 			//17F5 	04A1
		LDWI 	EH 			//17F6 	000E
		MOVLB 	1H 			//17F7 	1021
		STR 	4BH 			//17F8 	10CB
		RETW 	A1H 			//17F9 	04A1
		LDWI 	4H 			//17FA 	0004
		MOVLB 	1H 			//17FB 	1021
		ORG		17FCH
		STR 	4BH 			//17FC 	10CB
		RETW 	A1H 			//17FD 	04A1
		MOVLP 	1EH 			//17FE 	019E
		LJUMP 	6F6H 			//17FF 	3EF6
		ORG		1D7CH
		CLRWDT 			//1D7C 	1064
		CLRF 	0H 			//1D7D 	1180
		ADDFSR 	0H, 1H 		//1D7E 	0101
		DECRSZ 	9H, 1H 		//1D7F 	1B89
		LJUMP 	57DH 			//1D80 	3D7D
		RETW 	0H 			//1D81 	0400

		//;NFB.C: 378: OP0CR0 = 0B00111011;
		LDWI 	3BH 			//1D82 	003B
		MOVLB 	1FH 			//1D83 	103F
		STR 	FH 			//1D84 	108F

		//;NFB.C: 379: OP0CFG = 0B00010001;
		LDWI 	11H 			//1D85 	0011
		STR 	11H 			//1D86 	1091

		//;NFB.C: 380: AN4SELB = 1;
		MOVLB 	8H 			//1D87 	1028
		BSR 	1AH, 2H 			//1D88 	251A
		RET 					//1D89 	1008

		//;NFB.C: 215: AFP0 = 0B01000000;
		LDWI 	40H 			//1D8A 	0040
		STR 	1EH 			//1D8B 	109E

		//;NFB.C: 216: AFP1 = 0B01000000;
		STR 	1FH 			//1D8C 	109F

		//;NFB.C: 217: PCKEN|=0B00100000;
		MOVLB 	1H 			//1D8D 	1021
		BSR 	1AH, 5H 			//1D8E 	269A

		//;NFB.C: 218: UR1IER=0B00000001;
		LDWI 	1H 			//1D8F 	0001
		MOVLB 	9H 			//1D90 	1029
		STR 	EH 			//1D91 	108E

		//;NFB.C: 219: UR1LCR=0B00000001;
		STR 	FH 			//1D92 	108F

		//;NFB.C: 220: UR1MCR=0B00011000;
		LDWI 	18H 			//1D93 	0018
		STR 	11H 			//1D94 	1091

		//;NFB.C: 222: UR1DLL=104;
		LDWI 	68H 			//1D95 	0068
		STR 	14H 			//1D96 	1094

		//;NFB.C: 223: UR1DLH=0;
		CLRF 	15H 			//1D97 	1195

		//;NFB.C: 224: UR1TCF=1;
		BSR 	1CH, 0H 			//1D98 	241C

		//;NFB.C: 225: INTCON=0B11000000;
		LDWI 	C0H 			//1D99 	00C0
		STR 	BH 			//1D9A 	108B
		RET 					//1D9B 	1008
		LDR 	47H, 0H 			//1D9C 	1847
		MOVLB 	3H 			//1D9D 	1023
		STR 	69H 			//1D9E 	10E9
		MOVLB 	1H 			//1D9F 	1021
		LDR 	46H, 0H 			//1DA0 	1846
		MOVLB 	3H 			//1DA1 	1023
		STR 	68H 			//1DA2 	10E8
		RET 					//1DA3 	1008
		LDR 	6DH, 0H 			//1DA4 	186D
		MOVLB 	0H 			//1DA5 	1020
		STR 	36H 			//1DA6 	10B6
		MOVLB 	3H 			//1DA7 	1023
		LDR 	6CH, 0H 			//1DA8 	186C
		MOVLB 	0H 			//1DA9 	1020
		STR 	35H 			//1DAA 	10B5
		RET 					//1DAB 	1008
		LDR 	47H, 0H 			//1DAC 	1847
		MOVLB 	3H 			//1DAD 	1023
		STR 	6DH 			//1DAE 	10ED
		MOVLB 	1H 			//1DAF 	1021
		LDR 	46H, 0H 			//1DB0 	1846
		MOVLB 	3H 			//1DB1 	1023
		STR 	6CH 			//1DB2 	10EC
		RET 					//1DB3 	1008
		LDR 	69H, 0H 			//1DB4 	1869
		MOVLB 	0H 			//1DB5 	1020
		STR 	36H 			//1DB6 	10B6
		MOVLB 	3H 			//1DB7 	1023
		LDR 	68H, 0H 			//1DB8 	1868
		MOVLB 	0H 			//1DB9 	1020
		STR 	35H 			//1DBA 	10B5
		RET 					//1DBB 	1008
		LDR 	47H, 0H 			//1DBC 	1847
		MOVLB 	3H 			//1DBD 	1023
		STR 	6BH 			//1DBE 	10EB
		MOVLB 	1H 			//1DBF 	1021
		LDR 	46H, 0H 			//1DC0 	1846
		MOVLB 	3H 			//1DC1 	1023
		STR 	6AH 			//1DC2 	10EA
		RET 					//1DC3 	1008
		LDR 	6BH, 0H 			//1DC4 	186B
		MOVLB 	0H 			//1DC5 	1020
		STR 	36H 			//1DC6 	10B6
		MOVLB 	3H 			//1DC7 	1023
		LDR 	6AH, 0H 			//1DC8 	186A
		MOVLB 	0H 			//1DC9 	1020
		STR 	35H 			//1DCA 	10B5
		RET 					//1DCB 	1008
		MOVLB 	4H 			//1DCC 	1024
		CLRF 	5BH 			//1DCD 	11DB
		CLRF 	5CH 			//1DCE 	11DC
		CLRF 	59H 			//1DCF 	11D9
		CLRF 	5AH 			//1DD0 	11DA
		MOVLB 	0H 			//1DD1 	1020
		RET 					//1DD2 	1008
		MOVLB 	4H 			//1DD3 	1024
		CLRF 	5FH 			//1DD4 	11DF
		CLRF 	60H 			//1DD5 	11E0
		CLRF 	5DH 			//1DD6 	11DD
		CLRF 	5EH 			//1DD7 	11DE
		MOVLB 	0H 			//1DD8 	1020
		RET 					//1DD9 	1008
		LDR 	56H, 0H 			//1DDA 	1856
		STR 	50H 			//1DDB 	10D0
		LDR 	57H, 0H 			//1DDC 	1857
		STR 	51H 			//1DDD 	10D1
		LDR 	58H, 0H 			//1DDE 	1858
		STR 	52H 			//1DDF 	10D2
		RET 					//1DE0 	1008
		LDWI 	FFH 			//1DE1 	00FF
		MOVLB 	3H 			//1DE2 	1023
		ADDWFC 	6FH, 0H 		//1DE3 	0D6F
		MOVLB 	0H 			//1DE4 	1020
		STR 	3CH 			//1DE5 	10BC
		RET 					//1DE6 	1008
		STR 	6AH 			//1DE7 	10EA
		MOVLB 	1H 			//1DE8 	1021
		LDR 	5AH, 0H 			//1DE9 	185A
		MOVLB 	3H 			//1DEA 	1023
		STR 	6BH 			//1DEB 	10EB
		RET 					//1DEC 	1008
		STR 	68H 			//1DED 	10E8
		MOVLB 	1H 			//1DEE 	1021
		LDR 	5AH, 0H 			//1DEF 	185A
		MOVLB 	3H 			//1DF0 	1023
		STR 	69H 			//1DF1 	10E9
		RET 					//1DF2 	1008
		STR 	6CH 			//1DF3 	10EC
		MOVLB 	1H 			//1DF4 	1021
		LDR 	5AH, 0H 			//1DF5 	185A
		MOVLB 	3H 			//1DF6 	1023
		STR 	6DH 			//1DF7 	10ED
		RET 					//1DF8 	1008
		MOVLB 	3H 			//1DF9 	1023
		XORWR 	5CH, 0H 		//1DFA 	165C
		IORWR 	5DH, 0H 		//1DFB 	145D
		IORWR 	5EH, 0H 		//1DFC 	145E
		IORWR 	5FH, 0H 		//1DFD 	145F
		RET 					//1DFE 	1008
		MOVLB 	1H 			//1DFF 	1021
		LDR 	5AH, 0H 			//1E00 	185A
		MOVLB 	3H 			//1E01 	1023
		SUBWR 	59H, 0H 		//1E02 	1259
		RET 					//1E03 	1008
		MOVLB 	1H 			//1E04 	1021
		LDR 	5BH, 0H 			//1E05 	185B
		MOVLB 	3H 			//1E06 	1023
		SUBWR 	5AH, 0H 		//1E07 	125A
		RET 					//1E08 	1008
		MOVLB 	1H 			//1E09 	1021
		LDR 	59H, 0H 			//1E0A 	1859
		MOVLB 	3H 			//1E0B 	1023
		SUBWR 	58H, 0H 		//1E0C 	1258
		RET 					//1E0D 	1008
		MOVLB 	1H 			//1E0E 	1021
		LDR 	5BH, 0H 			//1E0F 	185B
		MOVLB 	3H 			//1E10 	1023
		SUBWR 	5EH, 0H 		//1E11 	125E
		RET 					//1E12 	1008
		MOVLB 	1H 			//1E13 	1021
		LDR 	5AH, 0H 			//1E14 	185A
		MOVLB 	3H 			//1E15 	1023
		SUBWR 	5DH, 0H 		//1E16 	125D
		RET 					//1E17 	1008
		MOVLB 	1H 			//1E18 	1021
		LDR 	59H, 0H 			//1E19 	1859
		MOVLB 	3H 			//1E1A 	1023
		SUBWR 	5CH, 0H 		//1E1B 	125C
		RET 					//1E1C 	1008
		LDWI 	2DH 			//1E1D 	002D
		STR 	6H 			//1E1E 	1086
		CLRF 	7H 			//1E1F 	1187
		MOVIW 	0H[1] 			//1E20 	0F40
		MOVLB 	0H 			//1E21 	1020
		STR 	33H 			//1E22 	10B3
		MOVIW 	1H[1] 			//1E23 	0F41
		STR 	34H 			//1E24 	10B4
		MOVIW 	2H[1] 			//1E25 	0F42
		STR 	35H 			//1E26 	10B5
		MOVIW 	3H[1] 			//1E27 	0F43
		STR 	36H 			//1E28 	10B6
		BCR 	3H, 0H 			//1E29 	2003
		RLR 	35H, 0H 			//1E2A 	1D35
		RLR 	36H, 0H 			//1E2B 	1D36
		STR 	40H 			//1E2C 	10C0
		LDR 	40H, 0H 			//1E2D 	1840
		BTSS 	3H, 2H 			//1E2E 	2D03
		LJUMP 	635H 			//1E2F 	3E35
		CLRF 	2DH 			//1E30 	11AD
		CLRF 	2EH 			//1E31 	11AE
		CLRF 	2FH 			//1E32 	11AF
		CLRF 	30H 			//1E33 	11B0
		RET 					//1E34 	1008
		LDWI 	30H 			//1E35 	0030
		LCALL 	6C5H 			//1E36 	36C5
		MOVLP 	1EH 			//1E37 	019E
		BCR 	3H, 0H 			//1E38 	2003
		RLR 	35H, 0H 			//1E39 	1D35
		RLR 	36H, 0H 			//1E3A 	1D36
		STR 	3FH 			//1E3B 	10BF
		LDR 	3FH, 0H 			//1E3C 	183F
		BTSC 	3H, 2H 			//1E3D 	2903
		LJUMP 	630H 			//1E3E 	3E30
		LDWI 	2DH 			//1E3F 	002D
		STR 	6H 			//1E40 	1086
		LDWI 	80H 			//1E41 	0080
		ADDFSR 	1H, 1H 		//1E42 	0141
		ADDFSR 	1H, 1H 		//1E43 	0141
		IORWR 	1H, 1H 		//1E44 	1481
		LDWI 	2DH 			//1E45 	002D
		ADDFSR 	1H, 1H 		//1E46 	0141
		STR 	6H 			//1E47 	1086
		LDWI 	30H 			//1E48 	0030
		LCALL 	6D0H 			//1E49 	36D0
		MOVLP 	1EH 			//1E4A 	019E
		STR 	6H 			//1E4B 	1086
		LDWI 	80H 			//1E4C 	0080
		CLRF 	7H 			//1E4D 	1187
		ADDFSR 	1H, 1H 		//1E4E 	0141
		ADDFSR 	1H, 1H 		//1E4F 	0141
		IORWR 	1H, 1H 		//1E50 	1481
		LDWI 	30H 			//1E51 	0030
		ADDFSR 	1H, 1H 		//1E52 	0141
		STR 	6H 			//1E53 	1086
		LDWI 	7FH 			//1E54 	007F
		LCALL 	6D0H 			//1E55 	36D0
		MOVLP 	1EH 			//1E56 	019E
		CLRF 	3BH 			//1E57 	11BB
		CLRF 	3CH 			//1E58 	11BC
		CLRF 	3DH 			//1E59 	11BD
		CLRF 	3EH 			//1E5A 	11BE
		SUBWR 	40H, 1H 		//1E5B 	12C0
		LDWI 	A0H 			//1E5C 	00A0
		ADDWR 	3FH, 0H 		//1E5D 	173F
		STR 	33H 			//1E5E 	10B3
		SUBWR 	40H, 1H 		//1E5F 	12C0
		LDWI 	20H 			//1E60 	0020
		STR 	3FH 			//1E61 	10BF
		LDWI 	30H 			//1E62 	0030
		LSLF 	3BH, 1H 		//1E63 	05BB
		RLR 	3CH, 1H 			//1E64 	1DBC
		RLR 	3DH, 1H 			//1E65 	1DBD
		RLR 	3EH, 1H 			//1E66 	1DBE
		LCALL 	6C5H 			//1E67 	36C5
		MOVLP 	1EH 			//1E68 	019E
		LDWI 	2DH 			//1E69 	002D
		STR 	6H 			//1E6A 	1086
		MOVIW 	0H[1] 			//1E6B 	0F40
		STR 	37H 			//1E6C 	10B7
		MOVIW 	1H[1] 			//1E6D 	0F41
		STR 	38H 			//1E6E 	10B8
		MOVIW 	2H[1] 			//1E6F 	0F42
		STR 	39H 			//1E70 	10B9
		MOVIW 	3H[1] 			//1E71 	0F43
		STR 	3AH 			//1E72 	10BA
		LDR 	36H, 0H 			//1E73 	1836
		SUBWR 	3AH, 0H 		//1E74 	123A
		BTSS 	3H, 2H 			//1E75 	2D03
		LJUMP 	681H 			//1E76 	3E81
		LDR 	35H, 0H 			//1E77 	1835
		SUBWR 	39H, 0H 		//1E78 	1239
		BTSS 	3H, 2H 			//1E79 	2D03
		LJUMP 	681H 			//1E7A 	3E81
		LDR 	34H, 0H 			//1E7B 	1834
		SUBWR 	38H, 0H 		//1E7C 	1238
		BTSS 	3H, 2H 			//1E7D 	2D03
		LJUMP 	681H 			//1E7E 	3E81
		LDR 	33H, 0H 			//1E7F 	1833
		SUBWR 	37H, 0H 		//1E80 	1237
		BTSS 	3H, 0H 			//1E81 	2C03
		LJUMP 	695H 			//1E82 	3E95
		LDWI 	30H 			//1E83 	0030
		LCALL 	6C5H 			//1E84 	36C5
		MOVLP 	1EH 			//1E85 	019E
		LDWI 	2DH 			//1E86 	002D
		STR 	6H 			//1E87 	1086
		LDR 	33H, 0H 			//1E88 	1833
		SUBWR 	1H, 1H 		//1E89 	1281
		ADDFSR 	1H, 1H 		//1E8A 	0141
		LDR 	34H, 0H 			//1E8B 	1834
		SUBWFB 	1H, 1H 		//1E8C 	0B81
		ADDFSR 	1H, 1H 		//1E8D 	0141
		LDR 	35H, 0H 			//1E8E 	1835
		SUBWFB 	1H, 1H 		//1E8F 	0B81
		ADDFSR 	1H, 1H 		//1E90 	0141
		LDR 	36H, 0H 			//1E91 	1836
		SUBWFB 	1H, 1H 		//1E92 	0B81
		ADDFSR 	1H, 3DH 		//1E93 	017D
		BSR 	3BH, 0H 			//1E94 	243B
		LDWI 	2DH 			//1E95 	002D
		STR 	6H 			//1E96 	1086
		CLRF 	7H 			//1E97 	1187
		LSLF 	1H, 1H 			//1E98 	0581
		ADDFSR 	1H, 1H 		//1E99 	0141
		RLR 	1H, 1H 			//1E9A 	1D81
		ADDFSR 	1H, 1H 		//1E9B 	0141
		RLR 	1H, 1H 			//1E9C 	1D81
		ADDFSR 	1H, 1H 		//1E9D 	0141
		RLR 	1H, 1H 			//1E9E 	1D81
		DECRSZ 	3FH, 1H 		//1E9F 	1BBF
		LJUMP 	662H 			//1EA0 	3E62
		BTSS 	40H, 7H 		//1EA1 	2FC0
		LJUMP 	6AFH 			//1EA2 	3EAF
		LDR 	40H, 0H 			//1EA3 	1840
		XORWI 	80H 			//1EA4 	0A80
		ADDWI 	9FH 			//1EA5 	0E9F
		BTSS 	3H, 0H 			//1EA6 	2C03
		LJUMP 	630H 			//1EA7 	3E30
		LSRF 	3EH, 1H 		//1EA8 	06BE
		RRR 	3DH, 1H 			//1EA9 	1CBD
		RRR 	3CH, 1H 			//1EAA 	1CBC
		RRR 	3BH, 1H 			//1EAB 	1CBB
		INCRSZ 	40H, 1H 		//1EAC 	1FC0
		LJUMP 	6A8H 			//1EAD 	3EA8
		LJUMP 	6BCH 			//1EAE 	3EBC
		LDWI 	20H 			//1EAF 	0020
		SUBWR 	40H, 0H 		//1EB0 	1240
		BTSC 	3H, 0H 			//1EB1 	2803
		LJUMP 	630H 			//1EB2 	3E30
		LDR 	40H, 0H 			//1EB3 	1840
		BTSC 	3H, 2H 			//1EB4 	2903
		LJUMP 	6BCH 			//1EB5 	3EBC
		LSLF 	3BH, 1H 		//1EB6 	05BB
		RLR 	3CH, 1H 			//1EB7 	1DBC
		RLR 	3DH, 1H 			//1EB8 	1DBD
		RLR 	3EH, 1H 			//1EB9 	1DBE
		DECR 	40H, 1H 		//1EBA 	13C0
		LJUMP 	6B3H 			//1EBB 	3EB3
		LDR 	3EH, 0H 			//1EBC 	183E
		STR 	30H 			//1EBD 	10B0
		LDR 	3DH, 0H 			//1EBE 	183D
		STR 	2FH 			//1EBF 	10AF
		LDR 	3CH, 0H 			//1EC0 	183C
		STR 	2EH 			//1EC1 	10AE
		LDR 	3BH, 0H 			//1EC2 	183B
		STR 	2DH 			//1EC3 	10AD
		RET 					//1EC4 	1008
		STR 	6H 			//1EC5 	1086
		CLRF 	7H 			//1EC6 	1187
		MOVIW 	0H[1] 			//1EC7 	0F40
		STR 	33H 			//1EC8 	10B3
		MOVIW 	1H[1] 			//1EC9 	0F41
		STR 	34H 			//1ECA 	10B4
		MOVIW 	2H[1] 			//1ECB 	0F42
		STR 	35H 			//1ECC 	10B5
		MOVIW 	3H[1] 			//1ECD 	0F43
		STR 	36H 			//1ECE 	10B6
		RET 					//1ECF 	1008
		CLRF 	7H 			//1ED0 	1187
		ADDFSR 	1H, 1H 		//1ED1 	0141
		ADDFSR 	1H, 1H 		//1ED2 	0141
		ADDFSR 	1H, 1H 		//1ED3 	0141
		CLRF 	1H 			//1ED4 	1181
		RET 					//1ED5 	1008

		//;NFB.C: 507: POWER_INITIAL();
		MOVLP 	7H 			//1ED6 	0187
		LCALL 	7CDH 			//1ED7 	37CD
		MOVLP 	1EH 			//1ED8 	019E

		//;NFB.C: 508: UART_INITIAL();
		MOVLP 	1DH 			//1ED9 	019D
		LCALL 	58AH 			//1EDA 	358A
		MOVLP 	1EH 			//1EDB 	019E

		//;NFB.C: 509: IO_INT_INITIAL();
		MOVLP 	7H 			//1EDC 	0187
		LCALL 	7F3H 			//1EDD 	37F3
		MOVLP 	1EH 			//1EDE 	019E

		//;NFB.C: 510: ADC_INITIAL();
		MOVLP 	10H 			//1EDF 	0190
		LCALL 	22H 			//1EE0 	3022
		MOVLP 	1EH 			//1EE1 	019E

		//;NFB.C: 511: OP0_INITIAL();
		MOVLP 	1DH 			//1EE2 	019D
		LCALL 	582H 			//1EE3 	3582
		MOVLP 	1EH 			//1EE4 	019E

		//;NFB.C: 512: TIM2_INITIAL();
		MOVLP 	10H 			//1EE5 	0190
		LCALL 	0H 			//1EE6 	3000
		MOVLP 	1EH 			//1EE7 	019E

		//;NFB.C: 513: reset();
		MOVLP 	8H 			//1EE8 	0188
		LCALL 	0H 			//1EE9 	3000
		MOVLP 	1EH 			//1EEA 	019E

		//;NFB.C: 514: send((char*)"START\r\n",7);
		LDWI 	FCH 			//1EEB 	00FC
		MOVLB 	1H 			//1EEC 	1021
		STR 	4BH 			//1EED 	10CB
		LDWI 	A0H 			//1EEE 	00A0
		STR 	4CH 			//1EEF 	10CC
		LDWI 	7H 			//1EF0 	0007
		STR 	4DH 			//1EF1 	10CD
		CLRF 	4EH 			//1EF2 	11CE
		MOVLP 	4H 			//1EF3 	0184
		LCALL 	4C2H 			//1EF4 	34C2
		MOVLP 	1EH 			//1EF5 	019E

		//;NFB.C: 517: {
		//;NFB.C: 519: if(BTNtimer){
		MOVLB 	4H 			//1EF6 	1024
		LDR 	61H, 0H 			//1EF7 	1861
		IORWR 	62H, 0H 		//1EF8 	1462
		BTSC 	3H, 2H 			//1EF9 	2903
		LJUMP 	778H 			//1EFA 	3F78
		LDWI 	1H 			//1EFB 	0001

		//;NFB.C: 520: BTNtimer=0;
		CLRF 	61H 			//1EFC 	11E1
		CLRF 	62H 			//1EFD 	11E2

		//;NFB.C: 521: PowerOn = 1 - PowerOn;
		MOVLB 	1H 			//1EFE 	1021
		STR 	59H 			//1EFF 	10D9
		MOVLB 	3H 			//1F00 	1023
		LDR 	66H, 0H 			//1F01 	1866
		MOVLB 	1H 			//1F02 	1021
		SUBWR 	59H, 0H 		//1F03 	1259
		MOVLB 	3H 			//1F04 	1023
		STR 	66H 			//1F05 	10E6
		COMR 	67H, 0H 		//1F06 	1967
		BTSC 	3H, 0H 			//1F07 	2803
		INCR 	9H, 1H 			//1F08 	1A89
		STR 	67H 			//1F09 	10E7

		//;NFB.C: 522: if(PowerOn){
		LDR 	66H, 0H 			//1F0A 	1866
		IORWR 	67H, 0H 		//1F0B 	1467
		BTSC 	3H, 2H 			//1F0C 	2903
		LJUMP 	747H 			//1F0D 	3F47

		//;NFB.C: 523: send((char*)"P1\r\n",4);
		LDWI 	1DH 			//1F0E 	001D
		MOVLB 	1H 			//1F0F 	1021
		STR 	4BH 			//1F10 	10CB
		LDWI 	A1H 			//1F11 	00A1
		MOVLP 	17H 			//1F12 	0197
		LCALL 	7EDH 			//1F13 	37ED
		MOVLP 	1EH 			//1F14 	019E
		MOVLP 	4H 			//1F15 	0184
		LCALL 	4C2H 			//1F16 	34C2
		MOVLP 	1EH 			//1F17 	019E

		//;NFB.C: 524: PC1 = 0;
		MOVLB 	0H 			//1F18 	1020
		BCR 	EH, 1H 			//1F19 	208E

		//;NFB.C: 525: PB0 = 1;
		//;NFB.C: 526: DelayMs(500);
		MOVLP 	17H 			//1F1A 	0197
		LCALL 	7DAH 			//1F1B 	37DA
		MOVLP 	1EH 			//1F1C 	019E
		MOVLP 	4H 			//1F1D 	0184
		LCALL 	4E5H 			//1F1E 	34E5
		MOVLP 	1EH 			//1F1F 	019E

		//;NFB.C: 527: PB0 = 0;
		MOVLB 	0H 			//1F20 	1020
		BCR 	DH, 0H 			//1F21 	200D

		//;NFB.C: 528: BatteryLevel();
		MOVLP 	4H 			//1F22 	0184
		LCALL 	4FFH 			//1F23 	34FF
		MOVLP 	1EH 			//1F24 	019E

		//;NFB.C: 529: timeleft = 20;
		LDWI 	14H 			//1F25 	0014
		MOVLB 	4H 			//1F26 	1024
		STR 	55H 			//1F27 	10D5
		LDWI 	9H 			//1F28 	0009
		CLRF 	56H 			//1F29 	11D6

		//;NFB.C: 530: timeleft1 = 9;
		STR 	53H 			//1F2A 	10D3
		LDWI 	18H 			//1F2B 	0018
		CLRF 	54H 			//1F2C 	11D4

		//;NFB.C: 531: send((char*)"H1\r\n",4);
		MOVLB 	1H 			//1F2D 	1021
		STR 	4BH 			//1F2E 	10CB
		LDWI 	A1H 			//1F2F 	00A1
		MOVLP 	17H 			//1F30 	0197
		LCALL 	7EDH 			//1F31 	37ED
		MOVLP 	1EH 			//1F32 	019E
		MOVLP 	4H 			//1F33 	0184
		LCALL 	4C2H 			//1F34 	34C2
		MOVLP 	1EH 			//1F35 	019E

		//;NFB.C: 532: HTOn = 1;
		MOVLB 	4H 			//1F36 	1024
		CLRF 	5FH 			//1F37 	11DF
		INCR 	5FH, 1H 		//1F38 	1ADF
		CLRF 	60H 			//1F39 	11E0

		//;NFB.C: 533: PA0 = 1;
		MOVLB 	0H 			//1F3A 	1020
		BSR 	CH, 0H 			//1F3B 	240C

		//;NFB.C: 534: HTcnt = 0;
		MOVLB 	4H 			//1F3C 	1024
		CLRF 	28H 			//1F3D 	11A8
		CLRF 	29H 			//1F3E 	11A9
		CLRF 	2AH 			//1F3F 	11AA
		CLRF 	2BH 			//1F40 	11AB

		//;NFB.C: 535: HTtimecnt = 0;
		MOVLB 	3H 			//1F41 	1023
		CLRF 	5CH 			//1F42 	11DC
		CLRF 	5DH 			//1F43 	11DD
		CLRF 	5EH 			//1F44 	11DE
		CLRF 	5FH 			//1F45 	11DF

		//;NFB.C: 536: } else{
		LJUMP 	778H 			//1F46 	3F78

		//;NFB.C: 537: send((char*)"H0\r\n",4);
		MOVLP 	17H 			//1F47 	0197
		LCALL 	7FAH 			//1F48 	37FA
		MOVLP 	1EH 			//1F49 	019E
		MOVLP 	17H 			//1F4A 	0197
		LCALL 	7EDH 			//1F4B 	37ED
		MOVLP 	1EH 			//1F4C 	019E
		MOVLP 	4H 			//1F4D 	0184
		LCALL 	4C2H 			//1F4E 	34C2
		MOVLP 	1EH 			//1F4F 	019E

		//;NFB.C: 538: HTOn = 0;
		//;NFB.C: 539: HTtimer = 0;
		//;NFB.C: 540: PA0 = 0;
		MOVLP 	1DH 			//1F50 	019D
		LCALL 	5D3H 			//1F51 	35D3
		MOVLP 	1EH 			//1F52 	019E
		BCR 	CH, 0H 			//1F53 	200C

		//;NFB.C: 541: send((char*)"S0\r\n",4);
		MOVLP 	17H 			//1F54 	0197
		LCALL 	7F6H 			//1F55 	37F6
		MOVLP 	1EH 			//1F56 	019E
		MOVLP 	17H 			//1F57 	0197
		LCALL 	7EDH 			//1F58 	37ED
		MOVLP 	1EH 			//1F59 	019E
		MOVLP 	4H 			//1F5A 	0184
		LCALL 	4C2H 			//1F5B 	34C2
		MOVLP 	1EH 			//1F5C 	019E

		//;NFB.C: 542: SmokeOn = 0;
		//;NFB.C: 543: Smoketimer = 0;
		//;NFB.C: 544: PuffOn = 0;
		MOVLP 	1DH 			//1F5D 	019D
		LCALL 	5CCH 			//1F5E 	35CC
		MOVLP 	1EH 			//1F5F 	019E
		LDWI 	9H 			//1F60 	0009
		CLRF 	5FH 			//1F61 	11DF
		CLRF 	60H 			//1F62 	11E0

		//;NFB.C: 545: send((char*)"P0\r\n",4);
		MOVLB 	1H 			//1F63 	1021
		STR 	4BH 			//1F64 	10CB
		LDWI 	A1H 			//1F65 	00A1
		MOVLP 	17H 			//1F66 	0197
		LCALL 	7EDH 			//1F67 	37ED
		MOVLP 	1EH 			//1F68 	019E
		MOVLP 	4H 			//1F69 	0184
		LCALL 	4C2H 			//1F6A 	34C2
		MOVLP 	1EH 			//1F6B 	019E

		//;NFB.C: 546: PC1=1;
		MOVLB 	0H 			//1F6C 	1020
		BSR 	EH, 1H 			//1F6D 	248E

		//;NFB.C: 547: PB0 = 1;
		//;NFB.C: 548: DelayMs(500);
		MOVLP 	17H 			//1F6E 	0197
		LCALL 	7DAH 			//1F6F 	37DA
		MOVLP 	1EH 			//1F70 	019E
		MOVLP 	4H 			//1F71 	0184
		LCALL 	4E5H 			//1F72 	34E5
		MOVLP 	1EH 			//1F73 	019E

		//;NFB.C: 549: PB0 = 0;
		MOVLB 	0H 			//1F74 	1020

		//;NFB.C: 550: PA1=1;
		//;NFB.C: 551: PB2=1;
		//;NFB.C: 552: PB3=1;
		//;NFB.C: 553: PC1=1;
		//;NFB.C: 554: PB7=1;
		MOVLP 	8H 			//1F75 	0188
		LCALL 	4H 			//1F76 	3004
		MOVLP 	1EH 			//1F77 	019E

		//;NFB.C: 555: }
		//;NFB.C: 556: }
		//;NFB.C: 557: if(HTtimer){
		MOVLB 	4H 			//1F78 	1024
		LDR 	5DH, 0H 			//1F79 	185D
		IORWR 	5EH, 0H 		//1F7A 	145E
		MOVLP 	13H 			//1F7B 	0193
		BTSC 	3H, 2H 			//1F7C 	2903
		LJUMP 	361H 			//1F7D 	3B61

		//;NFB.C: 558: HTtimer = 0;
		CLRF 	5DH 			//1F7E 	11DD
		CLRF 	5EH 			//1F7F 	11DE

		//;NFB.C: 559: if(PA0){
		MOVLB 	0H 			//1F80 	1020
		BTSS 	CH, 0H 			//1F81 	2C0C
		LJUMP 	163H 			//1F82 	3963

		//;NFB.C: 560: HTVP_ = GET_ADC_DATA(2);
		LDWI 	2H 			//1F83 	0002
		MOVLP 	6H 			//1F84 	0186
		LCALL 	623H 			//1F85 	3623
		MOVLP 	1EH 			//1F86 	019E
		MOVLP 	1DH 			//1F87 	019D
		LCALL 	5ACH 			//1F88 	35AC
		MOVLP 	1EH 			//1F89 	019E

		//;NFB.C: 561: for(int i=0;i<4;i++){
		MOVLB 	1H 			//1F8A 	1021
		CLRF 	63H 			//1F8B 	11E3
		CLRF 	64H 			//1F8C 	11E4

		//;NFB.C: 562: HTVP_ = (HTVP_+GET_ADC_DATA(2))/2;
		LDWI 	2H 			//1F8D 	0002
		MOVLP 	6H 			//1F8E 	0186
		LCALL 	623H 			//1F8F 	3623
		MOVLP 	1EH 			//1F90 	019E
		MOVLB 	3H 			//1F91 	1023
		LDR 	6CH, 0H 			//1F92 	186C
		MOVLB 	1H 			//1F93 	1021
		ADDWR 	46H, 0H 		//1F94 	1746
		STR 	59H 			//1F95 	10D9
		MOVLB 	3H 			//1F96 	1023
		LDR 	6DH, 0H 			//1F97 	186D
		MOVLP 	17H 			//1F98 	0197
		LCALL 	77AH 			//1F99 	377A
		MOVLP 	1EH 			//1F9A 	019E
		MOVLP 	1DH 			//1F9B 	019D
		LCALL 	5F3H 			//1F9C 	35F3
		MOVLP 	1EH 			//1F9D 	019E
		MOVLB 	1H 			//1F9E 	1021
		INCR 	63H, 1H 		//1F9F 	1AE3
		BTSC 	3H, 2H 			//1FA0 	2903
		INCR 	64H, 1H 		//1FA1 	1AE4
		LDR 	64H, 0H 			//1FA2 	1864
		XORWI 	80H 			//1FA3 	0A80
		STR 	59H 			//1FA4 	10D9
		LDWI 	80H 			//1FA5 	0080
		SUBWR 	59H, 0H 		//1FA6 	1259
		BTSS 	3H, 2H 			//1FA7 	2D03
		LJUMP 	7ABH 			//1FA8 	3FAB
		LDWI 	4H 			//1FA9 	0004
		SUBWR 	63H, 0H 		//1FAA 	1263
		BTSS 	3H, 0H 			//1FAB 	2C03
		LJUMP 	78DH 			//1FAC 	3F8D

		//;NFB.C: 563: }
		//;NFB.C: 564: HTVN_ = GET_ADC_DATA(1);
		LDWI 	1H 			//1FAD 	0001
		MOVLP 	6H 			//1FAE 	0186
		LCALL 	623H 			//1FAF 	3623
		MOVLP 	1EH 			//1FB0 	019E
		MOVLP 	1DH 			//1FB1 	019D
		LCALL 	5BCH 			//1FB2 	35BC
		MOVLP 	1EH 			//1FB3 	019E

		//;NFB.C: 565: for(int i=0;i<4;i++){
		CLRF 	4BH 			//1FB4 	11CB
		CLRF 	4CH 			//1FB5 	11CC
		LDR 	4CH, 0H 			//1FB6 	184C
		MOVLP 	17H 			//1FB7 	0197
		LCALL 	7AFH 			//1FB8 	37AF
		MOVLP 	1EH 			//1FB9 	019E
		BTSS 	3H, 2H 			//1FBA 	2D03
		LJUMP 	7BFH 			//1FBB 	3FBF
		LDWI 	4H 			//1FBC 	0004
		MOVLB 	3H 			//1FBD 	1023
		SUBWR 	4BH, 0H 		//1FBE 	124B
		BTSC 	3H, 0H 			//1FBF 	2803
		LJUMP 	7D6H 			//1FC0 	3FD6

		//;NFB.C: 566: HTVN_ = (HTVN_+GET_ADC_DATA(1))/2;
		LDWI 	1H 			//1FC1 	0001
		MOVLP 	6H 			//1FC2 	0186
		LCALL 	623H 			//1FC3 	3623
		MOVLP 	1EH 			//1FC4 	019E
		MOVLB 	3H 			//1FC5 	1023
		LDR 	6AH, 0H 			//1FC6 	186A
		MOVLB 	1H 			//1FC7 	1021
		ADDWR 	46H, 0H 		//1FC8 	1746
		STR 	59H 			//1FC9 	10D9
		MOVLB 	3H 			//1FCA 	1023
		LDR 	6BH, 0H 			//1FCB 	186B
		MOVLP 	17H 			//1FCC 	0197
		LCALL 	77AH 			//1FCD 	377A
		MOVLP 	1EH 			//1FCE 	019E
		MOVLP 	1DH 			//1FCF 	019D
		LCALL 	5E7H 			//1FD0 	35E7
		MOVLP 	1EH 			//1FD1 	019E
		INCR 	4BH, 1H 		//1FD2 	1ACB
		BTSC 	3H, 2H 			//1FD3 	2903
		INCR 	4CH, 1H 		//1FD4 	1ACC
		LJUMP 	7B6H 			//1FD5 	3FB6

		//;NFB.C: 567: }
		//;NFB.C: 568: HTVI_ = GET_ADC_DATA(4);
		LDWI 	4H 			//1FD6 	0004
		MOVLP 	6H 			//1FD7 	0186
		LCALL 	623H 			//1FD8 	3623
		MOVLP 	1EH 			//1FD9 	019E
		MOVLP 	1DH 			//1FDA 	019D
		LCALL 	59CH 			//1FDB 	359C
		MOVLP 	1EH 			//1FDC 	019E

		//;NFB.C: 569: for(int i=0;i<4;i++){
		CLRF 	4DH 			//1FDD 	11CD
		CLRF 	4EH 			//1FDE 	11CE
		LDR 	4EH, 0H 			//1FDF 	184E
		MOVLP 	17H 			//1FE0 	0197
		LCALL 	7AFH 			//1FE1 	37AF
		MOVLP 	1EH 			//1FE2 	019E
		BTSS 	3H, 2H 			//1FE3 	2D03
		LJUMP 	7E8H 			//1FE4 	3FE8
		LDWI 	4H 			//1FE5 	0004
		MOVLB 	3H 			//1FE6 	1023
		SUBWR 	4DH, 0H 		//1FE7 	124D
		MOVLP 	11H 			//1FE8 	0191
		BTSC 	3H, 0H 			//1FE9 	2803
		LJUMP 	10AH 			//1FEA 	390A

		//;NFB.C: 570: HTVI_ = (HTVI_+GET_ADC_DATA(4))/2;
		LDWI 	4H 			//1FEB 	0004
		MOVLP 	6H 			//1FEC 	0186
		LCALL 	623H 			//1FED 	3623
		MOVLP 	1EH 			//1FEE 	019E
		MOVLB 	3H 			//1FEF 	1023
		LDR 	68H, 0H 			//1FF0 	1868
		MOVLB 	1H 			//1FF1 	1021
		ADDWR 	46H, 0H 		//1FF2 	1746
		STR 	59H 			//1FF3 	10D9
		MOVLB 	3H 			//1FF4 	1023
		LDR 	69H, 0H 			//1FF5 	1869
		MOVLP 	17H 			//1FF6 	0197
		LCALL 	77AH 			//1FF7 	377A
		MOVLP 	1EH 			//1FF8 	019E
		MOVLP 	1DH 			//1FF9 	019D
		LCALL 	5EDH 			//1FFA 	35ED
		MOVLP 	1EH 			//1FFB 	019E
		INCR 	4DH, 1H 		//1FFC 	1ACD
		BTSC 	3H, 2H 			//1FFD 	2903
		INCR 	4EH, 1H 		//1FFE 	1ACE
		LJUMP 	7DFH 			//1FFF 	3FDF
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
		ORG		213CH
		RETW 	66H 			//213C 	0466
		RETW 	3AH 			//213D 	043A
		RETW 	0H 			//213E 	0400
		RETW 	70H 			//213F 	0470
		RETW 	74H 			//2140 	0474
		RETW 	3AH 			//2141 	043A
		RETW 	0H 			//2142 	0400
			END
