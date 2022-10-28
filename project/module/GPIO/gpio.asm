//Deviec:FT64F0AX
//-----------------------Variable---------------------------------
//		DelayMs@Time		EQU		72H
//		DelayMs@b		EQU		74H
//		DelayMs@a		EQU		73H
//		DelayMs@Time		EQU		72H
//		DelayMs@Time		EQU		72H
//		DelayUs@Time		EQU		70H
//		DelayUs@a		EQU		71H
//		DelayUs@Time		EQU		70H
//		DelayUs@Time		EQU		70H
//-----------------------Variable END---------------------------------
		ORG		0000H
		ORG		0000H
		MOVLP 	0H 			//0000 	0180
		LJUMP 	2H 			//0001 	3802
		MOVLP 	7H 			//0002 	0187
		LJUMP 	7A8H 			//0003 	3FA8
		ORG		07A8H
		MOVLB 	0H 			//07A8 	1020
		LJUMP 	7AAH 			//07A9 	3FAA

		//;GPIO.C: 109: POWER_INITIAL();
		LCALL 	7DAH 			//07AA 	37DA
		MOVLP 	7H 			//07AB 	0187
		LJUMP 	7B5H 			//07AC 	3FB5

		//;GPIO.C: 113: PA1=0;
		BCR 	CH, 1H 			//07AD 	208C

		//;GPIO.C: 114: PB2=0;
		BCR 	DH, 2H 			//07AE 	210D

		//;GPIO.C: 115: PB3=0;
		BCR 	DH, 3H 			//07AF 	218D

		//;GPIO.C: 116: PC1=0;
		BCR 	EH, 1H 			//07B0 	208E

		//;GPIO.C: 117: PB7=0;
		BCR 	DH, 7H 			//07B1 	238D

		//;GPIO.C: 118: DelayMs(100);
		LDWI 	64H 			//07B2 	0064
		LCALL 	7C0H 			//07B3 	37C0
		MOVLP 	7H 			//07B4 	0187

		//;GPIO.C: 119: } else if(PB4 == 0){
		//;GPIO.C: 111: {
		//;GPIO.C: 112: if(PB4 == 1){
		MOVLB 	0H 			//07B5 	1020
		BTSC 	DH, 4H 			//07B6 	2A0D
		LJUMP 	7ADH 			//07B7 	3FAD
		BTSC 	DH, 4H 			//07B8 	2A0D
		LJUMP 	7B5H 			//07B9 	3FB5

		//;GPIO.C: 120: PA1=1;
		BSR 	CH, 1H 			//07BA 	248C

		//;GPIO.C: 121: PB2=1;
		BSR 	DH, 2H 			//07BB 	250D

		//;GPIO.C: 122: PB3=1;
		BSR 	DH, 3H 			//07BC 	258D

		//;GPIO.C: 123: PC1=1;
		BSR 	EH, 1H 			//07BD 	248E

		//;GPIO.C: 124: PB7=1;
		BSR 	DH, 7H 			//07BE 	278D
		LJUMP 	7B2H 			//07BF 	3FB2

		//;GPIO.C: 125: DelayMs(100);
		STR 	72H 			//07C0 	10F2

		//;GPIO.C: 92: unsigned char a,b;
		//;GPIO.C: 93: for(a=0;a<Time;a++)
		CLRF 	73H 			//07C1 	11F3
		LDR 	72H, 0H 			//07C2 	1872
		SUBWR 	73H, 0H 		//07C3 	1273
		BTSC 	3H, 0H 			//07C4 	2803
		RET 					//07C5 	1008

		//;GPIO.C: 94: {
		//;GPIO.C: 95: for(b=0;b<5;b++)
		CLRF 	74H 			//07C6 	11F4

		//;GPIO.C: 96: {
		//;GPIO.C: 97: DelayUs(197);
		LDWI 	C5H 			//07C7 	00C5
		LCALL 	7D1H 			//07C8 	37D1
		MOVLP 	7H 			//07C9 	0187
		LDWI 	5H 			//07CA 	0005
		INCR 	74H, 1H 		//07CB 	1AF4
		SUBWR 	74H, 0H 		//07CC 	1274
		BTSS 	3H, 0H 			//07CD 	2C03
		LJUMP 	7C7H 			//07CE 	3FC7
		INCR 	73H, 1H 		//07CF 	1AF3
		LJUMP 	7C2H 			//07D0 	3FC2
		STR 	70H 			//07D1 	10F0

		//;GPIO.C: 78: unsigned char a;
		//;GPIO.C: 79: for(a=0;a<Time;a++)
		CLRF 	71H 			//07D2 	11F1
		LDR 	70H, 0H 			//07D3 	1870
		SUBWR 	71H, 0H 		//07D4 	1271
		BTSC 	3H, 0H 			//07D5 	2803
		RET 					//07D6 	1008

		//;GPIO.C: 80: {
		//;GPIO.C: 81: __nop();
		NOP 					//07D7 	1000
		INCR 	71H, 1H 		//07D8 	1AF1
		LJUMP 	7D3H 			//07D9 	3FD3

		//;GPIO.C: 41: OSCCON=0B01110001;
		LDWI 	71H 			//07DA 	0071
		MOVLB 	1H 			//07DB 	1021
		STR 	19H 			//07DC 	1099

		//;GPIO.C: 42: INTCON=0;
		CLRF 	BH 			//07DD 	118B

		//;GPIO.C: 44: PORTA=0B00000000;
		MOVLB 	0H 			//07DE 	1020
		CLRF 	CH 			//07DF 	118C

		//;GPIO.C: 45: PORTB=0B00000000;
		CLRF 	DH 			//07E0 	118D

		//;GPIO.C: 46: PORTC=0B00000000;
		CLRF 	EH 			//07E1 	118E

		//;GPIO.C: 48: TRISA=0B11111101;
		LDWI 	FDH 			//07E2 	00FD
		MOVLB 	1H 			//07E3 	1021
		STR 	CH 			//07E4 	108C

		//;GPIO.C: 49: TRISB=0B01110011;
		LDWI 	73H 			//07E5 	0073
		STR 	DH 			//07E6 	108D

		//;GPIO.C: 50: TRISC=0B00000001;
		LDWI 	1H 			//07E7 	0001
		STR 	EH 			//07E8 	108E

		//;GPIO.C: 52: WPUA=0B00000000;
		MOVLB 	3H 			//07E9 	1023
		CLRF 	CH 			//07EA 	118C

		//;GPIO.C: 53: WPUB=0B00010000;
		LDWI 	10H 			//07EB 	0010
		STR 	DH 			//07EC 	108D

		//;GPIO.C: 54: WPUC=0B00000000;
		CLRF 	EH 			//07ED 	118E

		//;GPIO.C: 56: WPDA=0B00000000;
		MOVLB 	4H 			//07EE 	1024
		CLRF 	CH 			//07EF 	118C

		//;GPIO.C: 57: WPDB=0B00000000;
		CLRF 	DH 			//07F0 	118D

		//;GPIO.C: 58: WPDC=0B00000000;
		CLRF 	EH 			//07F1 	118E

		//;GPIO.C: 60: PSRC0=0B11111111;
		LDWI 	FFH 			//07F2 	00FF
		MOVLB 	2H 			//07F3 	1022
		STR 	1AH 			//07F4 	109A

		//;GPIO.C: 61: PSRC1=0B11111111;
		STR 	1BH 			//07F5 	109B

		//;GPIO.C: 62: PSRC2=0B00001111;
		LDWI 	FH 			//07F6 	000F
		STR 	1CH 			//07F7 	109C

		//;GPIO.C: 64: PSINK0=0B11111111;
		LDWI 	FFH 			//07F8 	00FF
		MOVLB 	3H 			//07F9 	1023
		STR 	1AH 			//07FA 	109A

		//;GPIO.C: 65: PSINK1=0B11111111;
		STR 	1BH 			//07FB 	109B

		//;GPIO.C: 66: PSINK2=0B00000011;
		LDWI 	3H 			//07FC 	0003
		STR 	1CH 			//07FD 	109C

		//;GPIO.C: 68: ANSELA=0B00000000;
		CLRF 	17H 			//07FE 	1197
		RET 					//07FF 	1008
			END
