//Deviec:FT64F0AX
//-----------------------Variable---------------------------------
		_adcData		EQU		7CH
		_theVoltage		EQU		24H
//		___lmul@product		EQU		78H
//		___lmul@multiplier		EQU		70H
//		___lmul@multiplicand		EQU		74H
//		GET_ADC_DATA@adcChannel		EQU		75H
//		GET_ADC_DATA@adcChannel		EQU		C00000H
//		DelayUs@Time		EQU		70H
//		DelayUs@a		EQU		71H
//		DelayUs@Time		EQU		C00000H
//-----------------------Variable END---------------------------------
		ORG		0000H
		MOVLP 	0H 			//0000 	0180
		LJUMP 	2H 			//0001 	3802
		MOVLP 	7H 			//0002 	0187
		LJUMP 	74FH 			//0003 	3F4F
		ORG		074FH
		MOVLB 	0H 			//074F 	1020
		LJUMP 	751H 			//0750 	3F51

		//;TEST_FT64F0AX_ADC.C: 166: POWER_INITIAL();
		LCALL 	7B6H 			//0751 	37B6
		MOVLP 	7H 			//0752 	0187

		//;TEST_FT64F0AX_ADC.C: 167: ADC_INITIAL();
		LCALL 	785H 			//0753 	3785
		MOVLP 	7H 			//0754 	0187

		//;TEST_FT64F0AX_ADC.C: 169: while(1)
		//;TEST_FT64F0AX_ADC.C: 170: {
		//;TEST_FT64F0AX_ADC.C: 171: adcData=GET_ADC_DATA(0);
		LDWI 	0H 			//0755 	0000
		LCALL 	796H 			//0756 	3796
		ORG		0757H
		MOVLP 	7H 			//0757 	0187
		LDR 	73H, 0H 			//0758 	1873
		STR 	7DH 			//0759 	10FD
		LDR 	72H, 0H 			//075A 	1872
		STR 	7CH 			//075B 	10FC

		//;TEST_FT64F0AX_ADC.C: 172: theVoltage=(unsigned long)adcData*2*1000/4096;
		LDR 	7CH, 0H 			//075C 	187C
		STR 	70H 			//075D 	10F0
		LDR 	7DH, 0H 			//075E 	187D
		ORG		075FH
		STR 	71H 			//075F 	10F1
		LDWI 	3H 			//0760 	0003
		CLRF 	72H 			//0761 	11F2
		CLRF 	73H 			//0762 	11F3
		LSLF 	70H, 1H 		//0763 	05F0
		RLR 	71H, 1H 			//0764 	1DF1
		RLR 	72H, 1H 			//0765 	1DF2
		RLR 	73H, 1H 			//0766 	1DF3
		ORG		0767H
		CLRF 	77H 			//0767 	11F7
		CLRF 	76H 			//0768 	11F6
		STR 	75H 			//0769 	10F5
		LDWI 	E8H 			//076A 	00E8
		STR 	74H 			//076B 	10F4
		LCALL 	7DBH 			//076C 	37DB
		MOVLP 	7H 			//076D 	0187
		LDR 	70H, 0H 			//076E 	1870
		ORG		076FH
		MOVLB 	0H 			//076F 	1020
		STR 	20H 			//0770 	10A0
		LDR 	71H, 0H 			//0771 	1871
		STR 	21H 			//0772 	10A1
		LDR 	72H, 0H 			//0773 	1872
		STR 	22H 			//0774 	10A2
		LDR 	73H, 0H 			//0775 	1873
		STR 	23H 			//0776 	10A3
		ORG		0777H
		LDWI 	CH 			//0777 	000C
		LSRF 	23H, 1H 		//0778 	06A3
		RRR 	22H, 1H 			//0779 	1CA2
		RRR 	21H, 1H 			//077A 	1CA1
		RRR 	20H, 1H 			//077B 	1CA0
		DECRSZ 	9H, 1H 		//077C 	1B89
		LJUMP 	778H 			//077D 	3F78
		LDR 	21H, 0H 			//077E 	1821
		ORG		077FH
		STR 	25H 			//077F 	10A5
		LDR 	20H, 0H 			//0780 	1820
		STR 	24H 			//0781 	10A4

		//;TEST_FT64F0AX_ADC.C: 173: __nop();
		NOP 					//0782 	1000

		//;TEST_FT64F0AX_ADC.C: 174: __nop();
		NOP 					//0783 	1000
		LJUMP 	755H 			//0784 	3F55

		//;TEST_FT64F0AX_ADC.C: 82: ANSELA=0B00000001;
		LDWI 	1H 			//0785 	0001
		STR 	17H 			//0786 	1097
		ORG		0787H

		//;TEST_FT64F0AX_ADC.C: 83: ADCON1=0B11100100;
		LDWI 	E4H 			//0787 	00E4
		MOVLB 	1H 			//0788 	1021
		STR 	1EH 			//0789 	109E

		//;TEST_FT64F0AX_ADC.C: 84: ADCON0=0B00000000;
		CLRF 	1DH 			//078A 	119D

		//;TEST_FT64F0AX_ADC.C: 85: ADCON2=0B01000000;
		LDWI 	40H 			//078B 	0040
		STR 	1FH 			//078C 	109F

		//;TEST_FT64F0AX_ADC.C: 86: ADCON3=0B00000000;
		MOVLB 	8H 			//078D 	1028
		CLRF 	1AH 			//078E 	119A
		ORG		078FH

		//;TEST_FT64F0AX_ADC.C: 87: ADDLY=0B00000000;
		MOVLB 	0H 			//078F 	1020
		CLRF 	1FH 			//0790 	119F

		//;TEST_FT64F0AX_ADC.C: 88: ADCMPH=0B00000000;
		MOVLB 	8H 			//0791 	1028
		CLRF 	1BH 			//0792 	119B

		//;TEST_FT64F0AX_ADC.C: 89: ADON=1;
		MOVLB 	1H 			//0793 	1021
		BSR 	1DH, 0H 			//0794 	241D
		RET 					//0795 	1008
		STR 	75H 			//0796 	10F5
		ORG		0797H

		//;TEST_FT64F0AX_ADC.C: 147: ADCON0&=0B00001111;
		LDWI 	FH 			//0797 	000F
		MOVLB 	1H 			//0798 	1021
		ANDWR 	1DH, 1H 		//0799 	159D

		//;TEST_FT64F0AX_ADC.C: 148: ADCON0|=adcChannel<<4;
		SWAPR 	75H, 0H 		//079A 	1E75
		ANDWI 	F0H 			//079B 	09F0
		IORWR 	1DH, 1H 		//079C 	149D

		//;TEST_FT64F0AX_ADC.C: 149: DelayUs(40);
		LDWI 	28H 			//079D 	0028
		LCALL 	7ADH 			//079E 	37AD
		ORG		079FH
		MOVLP 	7H 			//079F 	0187

		//;TEST_FT64F0AX_ADC.C: 150: GO=1;
		MOVLB 	1H 			//07A0 	1021
		BSR 	1DH, 1H 			//07A1 	249D

		//;TEST_FT64F0AX_ADC.C: 151: __nop();
		NOP 					//07A2 	1000

		//;TEST_FT64F0AX_ADC.C: 152: __nop();
		NOP 					//07A3 	1000

		//;TEST_FT64F0AX_ADC.C: 153: while(GO);
		MOVLB 	1H 			//07A4 	1021
		BTSC 	1DH, 1H 		//07A5 	289D
		LJUMP 	7A4H 			//07A6 	3FA4
		ORG		07A7H

		//;TEST_FT64F0AX_ADC.C: 155: return (unsigned int)(ADRESH<<8|ADRESL);
		LDR 	1CH, 0H 			//07A7 	181C
		STR 	73H 			//07A8 	10F3
		CLRF 	72H 			//07A9 	11F2
		LDR 	1BH, 0H 			//07AA 	181B
		IORWR 	72H, 1H 		//07AB 	14F2
		RET 					//07AC 	1008
		STR 	70H 			//07AD 	10F0

		//;TEST_FT64F0AX_ADC.C: 99: unsigned char a;
		//;TEST_FT64F0AX_ADC.C: 100: for(a=0;a<Time;a++)
		CLRF 	71H 			//07AE 	11F1
		ORG		07AFH
		LDR 	70H, 0H 			//07AF 	1870
		SUBWR 	71H, 0H 		//07B0 	1271
		BTSC 	3H, 0H 			//07B1 	2803
		RET 					//07B2 	1008

		//;TEST_FT64F0AX_ADC.C: 101: {
		//;TEST_FT64F0AX_ADC.C: 102: __nop();
		NOP 					//07B3 	1000
		INCR 	71H, 1H 		//07B4 	1AF1
		LJUMP 	7AFH 			//07B5 	3FAF

		//;TEST_FT64F0AX_ADC.C: 42: OSCCON=0B01110001;
		LDWI 	71H 			//07B6 	0071
		ORG		07B7H
		MOVLB 	1H 			//07B7 	1021
		STR 	19H 			//07B8 	1099

		//;TEST_FT64F0AX_ADC.C: 44: PCKEN|=0B00000001;
		BSR 	1AH, 0H 			//07B9 	241A

		//;TEST_FT64F0AX_ADC.C: 46: INTCON=0;
		CLRF 	BH 			//07BA 	118B

		//;TEST_FT64F0AX_ADC.C: 48: PORTA=0B00000000;
		MOVLB 	0H 			//07BB 	1020
		CLRF 	CH 			//07BC 	118C

		//;TEST_FT64F0AX_ADC.C: 49: PORTB=0B00000000;
		CLRF 	DH 			//07BD 	118D

		//;TEST_FT64F0AX_ADC.C: 50: PORTC=0B00000000;
		CLRF 	EH 			//07BE 	118E
		ORG		07BFH

		//;TEST_FT64F0AX_ADC.C: 52: WPUA=0B00000000;
		MOVLB 	3H 			//07BF 	1023
		CLRF 	CH 			//07C0 	118C

		//;TEST_FT64F0AX_ADC.C: 53: WPUB=0B00000000;
		CLRF 	DH 			//07C1 	118D

		//;TEST_FT64F0AX_ADC.C: 54: WPUC=0B00000000;
		CLRF 	EH 			//07C2 	118E

		//;TEST_FT64F0AX_ADC.C: 56: WPDA=0B00000000;
		MOVLB 	4H 			//07C3 	1024
		CLRF 	CH 			//07C4 	118C

		//;TEST_FT64F0AX_ADC.C: 57: WPDB=0B00000000;
		CLRF 	DH 			//07C5 	118D

		//;TEST_FT64F0AX_ADC.C: 58: WPDC=0B00000000;
		CLRF 	EH 			//07C6 	118E
		ORG		07C7H

		//;TEST_FT64F0AX_ADC.C: 60: TRISA=0B11111111;
		LDWI 	FFH 			//07C7 	00FF
		MOVLB 	1H 			//07C8 	1021
		STR 	CH 			//07C9 	108C

		//;TEST_FT64F0AX_ADC.C: 61: TRISB=0B11111111;
		STR 	DH 			//07CA 	108D

		//;TEST_FT64F0AX_ADC.C: 62: TRISC=0B00000011;
		LDWI 	3H 			//07CB 	0003
		STR 	EH 			//07CC 	108E

		//;TEST_FT64F0AX_ADC.C: 64: PSRC0=0B11111111;
		LDWI 	FFH 			//07CD 	00FF
		MOVLB 	2H 			//07CE 	1022
		ORG		07CFH
		STR 	1AH 			//07CF 	109A

		//;TEST_FT64F0AX_ADC.C: 65: PSRC1=0B11111111;
		STR 	1BH 			//07D0 	109B

		//;TEST_FT64F0AX_ADC.C: 66: PSRC2=0B00001111;
		LDWI 	FH 			//07D1 	000F
		STR 	1CH 			//07D2 	109C

		//;TEST_FT64F0AX_ADC.C: 68: PSINK0=0B11111111;
		LDWI 	FFH 			//07D3 	00FF
		MOVLB 	3H 			//07D4 	1023
		STR 	1AH 			//07D5 	109A

		//;TEST_FT64F0AX_ADC.C: 69: PSINK1=0B11111111;
		STR 	1BH 			//07D6 	109B
		ORG		07D7H

		//;TEST_FT64F0AX_ADC.C: 70: PSINK2=0B00000011;
		LDWI 	3H 			//07D7 	0003
		STR 	1CH 			//07D8 	109C

		//;TEST_FT64F0AX_ADC.C: 72: ANSELA=0B00000000;
		CLRF 	17H 			//07D9 	1197
		RET 					//07DA 	1008
		CLRF 	78H 			//07DB 	11F8
		CLRF 	79H 			//07DC 	11F9
		CLRF 	7AH 			//07DD 	11FA
		CLRF 	7BH 			//07DE 	11FB
		ORG		07DFH
		BTSS 	70H, 0H 		//07DF 	2C70
		LJUMP 	7E9H 			//07E0 	3FE9
		LDR 	74H, 0H 			//07E1 	1874
		ADDWR 	78H, 1H 		//07E2 	17F8
		LDR 	75H, 0H 			//07E3 	1875
		ADDWFC 	79H, 1H 		//07E4 	0DF9
		LDR 	76H, 0H 			//07E5 	1876
		ADDWFC 	7AH, 1H 		//07E6 	0DFA
		ORG		07E7H
		LDR 	77H, 0H 			//07E7 	1877
		ADDWFC 	7BH, 1H 		//07E8 	0DFB
		LSLF 	74H, 1H 		//07E9 	05F4
		RLR 	75H, 1H 			//07EA 	1DF5
		RLR 	76H, 1H 			//07EB 	1DF6
		RLR 	77H, 1H 			//07EC 	1DF7
		LSRF 	73H, 1H 		//07ED 	06F3
		RRR 	72H, 1H 			//07EE 	1CF2
		ORG		07EFH
		RRR 	71H, 1H 			//07EF 	1CF1
		RRR 	70H, 1H 			//07F0 	1CF0
		LDR 	73H, 0H 			//07F1 	1873
		IORWR 	72H, 0H 		//07F2 	1472
		IORWR 	71H, 0H 		//07F3 	1471
		IORWR 	70H, 0H 		//07F4 	1470
		BTSS 	3H, 2H 			//07F5 	2D03
		LJUMP 	7DFH 			//07F6 	3FDF
		ORG		07F7H
		LDR 	7BH, 0H 			//07F7 	187B
		STR 	73H 			//07F8 	10F3
		LDR 	7AH, 0H 			//07F9 	187A
		STR 	72H 			//07FA 	10F2
		LDR 	79H, 0H 			//07FB 	1879
		STR 	71H 			//07FC 	10F1
		LDR 	78H, 0H 			//07FD 	1878
		STR 	70H 			//07FE 	10F0
		ORG		07FFH
		RET 					//07FF 	1008
			END
