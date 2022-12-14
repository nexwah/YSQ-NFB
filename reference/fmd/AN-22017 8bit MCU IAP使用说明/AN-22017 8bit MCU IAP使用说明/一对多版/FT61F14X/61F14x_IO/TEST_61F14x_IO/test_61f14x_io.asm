//Deviec:FT61F14X
//-----------------------Variable---------------------------------
//		DelayMs@Time		EQU		74H
//		DelayMs@b		EQU		76H
//		DelayMs@a		EQU		75H
//		DelayMs@Time		EQU		C00000H
//		DelayUs@Time		EQU		72H
//		DelayUs@a		EQU		73H
//		DelayUs@Time		EQU		C00000H
//-----------------------Variable END---------------------------------
		ORG		0000H
		NOP 					//0400 	1000
		MOVLP 	4H 			//0401 	0184
		LJUMP 	41FH 			//0402 	3C1F
		ORG		0404H
		BSR 	7EH, 0H 			//0404 	247E
		MOVLP 	4H 			//0405 	0184
		NOP 					//0406 	1000
		NOP 					//0407 	1000
		NOP 					//0408 	1000
		NOP 					//0409 	1000
		NOP 					//040A 	1000
		NOP 					//040B 	1000
		ORG		040CH
		NOP 					//040C 	1000
		NOP 					//040D 	1000
		NOP 					//040E 	1000
		NOP 					//040F 	1000
		NOP 					//0410 	1000
		NOP 					//0411 	1000
		NOP 					//0412 	1000
		NOP 					//0413 	1000
		ORG		0414H
		NOP 					//0414 	1000
		NOP 					//0415 	1000
		NOP 					//0416 	1000
		NOP 					//0417 	1000
		NOP 					//0418 	1000
		NOP 					//0419 	1000
		NOP 					//041A 	1000

		//;TEST_61F14x_IO.C: 64: user_isr();
		MOVLP 	4H 			//041B 	0184
		ORG		041CH
		LCALL 	48BH 			//041C 	348B
		BCR 	7EH, 0H 			//041D 	207E
		RETI 					//041E 	1009
		MOVLP 	4H 			//041F 	0184
		LJUMP 	421H 			//0420 	3C21
		BCR 	7EH, 0H 			//0421 	207E
		MOVLB 	0H 			//0422 	1020
		LJUMP 	424H 			//0423 	3C24
		ORG		0424H

		//;TEST_61F14x_IO.C: 169: POWER_INITIAL();
		LCALL 	466H 			//0424 	3466
		MOVLP 	4H 			//0425 	0184

		//;TEST_61F14x_IO.C: 171: {
		//;TEST_61F14x_IO.C: 172: RB5 = 1;
		MOVLB 	0H 			//0426 	1020
		BSR 	DH, 5H 			//0427 	268D

		//;TEST_61F14x_IO.C: 173: DelayMs(10);
		LDWI 	AH 			//0428 	000A
		LCALL 	44CH 			//0429 	344C
		MOVLP 	4H 			//042A 	0184

		//;TEST_61F14x_IO.C: 174: DelayMs(10);
		LDWI 	AH 			//042B 	000A
		ORG		042CH
		LCALL 	44CH 			//042C 	344C
		MOVLP 	4H 			//042D 	0184

		//;TEST_61F14x_IO.C: 175: DelayMs(10);
		LDWI 	AH 			//042E 	000A
		LCALL 	44CH 			//042F 	344C
		MOVLP 	4H 			//0430 	0184

		//;TEST_61F14x_IO.C: 176: DelayMs(10);
		LDWI 	AH 			//0431 	000A
		LCALL 	44CH 			//0432 	344C
		MOVLP 	4H 			//0433 	0184
		ORG		0434H

		//;TEST_61F14x_IO.C: 177: DelayMs(10);
		LDWI 	AH 			//0434 	000A
		LCALL 	44CH 			//0435 	344C
		MOVLP 	4H 			//0436 	0184

		//;TEST_61F14x_IO.C: 178: DelayMs(10);
		LDWI 	AH 			//0437 	000A
		LCALL 	44CH 			//0438 	344C
		MOVLP 	4H 			//0439 	0184

		//;TEST_61F14x_IO.C: 179: RB5 = 0;
		MOVLB 	0H 			//043A 	1020
		BCR 	DH, 5H 			//043B 	228D
		ORG		043CH

		//;TEST_61F14x_IO.C: 180: DelayMs(10);
		LDWI 	AH 			//043C 	000A
		LCALL 	44CH 			//043D 	344C
		MOVLP 	4H 			//043E 	0184

		//;TEST_61F14x_IO.C: 181: DelayMs(10);
		LDWI 	AH 			//043F 	000A
		LCALL 	44CH 			//0440 	344C
		MOVLP 	4H 			//0441 	0184

		//;TEST_61F14x_IO.C: 182: DelayMs(10);
		LDWI 	AH 			//0442 	000A
		LCALL 	44CH 			//0443 	344C
		ORG		0444H
		MOVLP 	4H 			//0444 	0184

		//;TEST_61F14x_IO.C: 183: DelayMs(10);
		LDWI 	AH 			//0445 	000A
		LCALL 	44CH 			//0446 	344C
		MOVLP 	4H 			//0447 	0184

		//;TEST_61F14x_IO.C: 184: DelayMs(10);
		LDWI 	AH 			//0448 	000A
		LCALL 	44CH 			//0449 	344C
		MOVLP 	4H 			//044A 	0184
		LJUMP 	426H 			//044B 	3C26
		ORG		044CH
		STR 	74H 			//044C 	10F4

		//;TEST_61F14x_IO.C: 135: unsigned char a,b;
		//;TEST_61F14x_IO.C: 136: for(a=0;a<Time;a++)
		CLRF 	75H 			//044D 	11F5
		LDR 	74H, 0H 			//044E 	1874
		SUBWR 	75H, 0H 		//044F 	1275
		BTSC 	3H, 0H 			//0450 	2803
		RET 					//0451 	1008

		//;TEST_61F14x_IO.C: 137: {
		//;TEST_61F14x_IO.C: 138: for(b=0;b<5;b++)
		CLRF 	76H 			//0452 	11F6

		//;TEST_61F14x_IO.C: 139: {
		//;TEST_61F14x_IO.C: 140: DelayUs(197);
		LDWI 	C5H 			//0453 	00C5
		ORG		0454H
		LCALL 	45DH 			//0454 	345D
		MOVLP 	4H 			//0455 	0184
		LDWI 	5H 			//0456 	0005
		INCR 	76H, 1H 		//0457 	1AF6
		SUBWR 	76H, 0H 		//0458 	1276
		BTSS 	3H, 0H 			//0459 	2C03
		LJUMP 	453H 			//045A 	3C53
		INCR 	75H, 1H 		//045B 	1AF5
		ORG		045CH
		LJUMP 	44EH 			//045C 	3C4E
		STR 	72H 			//045D 	10F2

		//;TEST_61F14x_IO.C: 121: unsigned char a;
		//;TEST_61F14x_IO.C: 122: for(a=0;a<Time;a++)
		CLRF 	73H 			//045E 	11F3
		LDR 	72H, 0H 			//045F 	1872
		SUBWR 	73H, 0H 		//0460 	1273
		BTSC 	3H, 0H 			//0461 	2803
		RET 					//0462 	1008

		//;TEST_61F14x_IO.C: 123: {
		//;TEST_61F14x_IO.C: 124: __nop();
		NOP 					//0463 	1000
		ORG		0464H
		INCR 	73H, 1H 		//0464 	1AF3
		LJUMP 	45FH 			//0465 	3C5F

		//;TEST_61F14x_IO.C: 78: OSCCON = 0B01110001;
		LDWI 	71H 			//0466 	0071
		MOVLB 	1H 			//0467 	1021
		STR 	19H 			//0468 	1099

		//;TEST_61F14x_IO.C: 83: PORTA = 0B00000000;
		MOVLB 	0H 			//0469 	1020
		CLRF 	CH 			//046A 	118C

		//;TEST_61F14x_IO.C: 84: TRISA = 0B11111111;
		LDWI 	FFH 			//046B 	00FF
		ORG		046CH
		MOVLB 	1H 			//046C 	1021
		STR 	CH 			//046D 	108C

		//;TEST_61F14x_IO.C: 85: PORTB = 0B00000000;
		MOVLB 	0H 			//046E 	1020
		CLRF 	DH 			//046F 	118D

		//;TEST_61F14x_IO.C: 86: TRISB = 0B11010111;
		LDWI 	D7H 			//0470 	00D7
		MOVLB 	1H 			//0471 	1021
		STR 	DH 			//0472 	108D

		//;TEST_61F14x_IO.C: 87: PORTC = 0B00000000;
		MOVLB 	0H 			//0473 	1020
		ORG		0474H
		CLRF 	EH 			//0474 	118E

		//;TEST_61F14x_IO.C: 88: TRISC = 0B11111111;
		LDWI 	FFH 			//0475 	00FF
		MOVLB 	1H 			//0476 	1021
		STR 	EH 			//0477 	108E

		//;TEST_61F14x_IO.C: 90: WPUA = 0B00000000;
		MOVLB 	3H 			//0478 	1023
		CLRF 	CH 			//0479 	118C

		//;TEST_61F14x_IO.C: 91: WPUB = 0B00000000;
		CLRF 	DH 			//047A 	118D

		//;TEST_61F14x_IO.C: 92: WPUC = 0B00001000;
		LDWI 	8H 			//047B 	0008
		ORG		047CH
		STR 	EH 			//047C 	108E

		//;TEST_61F14x_IO.C: 94: WPDA = 0B00000000;
		MOVLB 	4H 			//047D 	1024
		CLRF 	CH 			//047E 	118C

		//;TEST_61F14x_IO.C: 95: WPDB = 0B00000000;
		CLRF 	DH 			//047F 	118D

		//;TEST_61F14x_IO.C: 96: WPDC = 0B00000000;
		CLRF 	EH 			//0480 	118E

		//;TEST_61F14x_IO.C: 98: PSRC0 = 0B11111111;
		LDWI 	FFH 			//0481 	00FF
		MOVLB 	2H 			//0482 	1022
		STR 	1AH 			//0483 	109A
		ORG		0484H

		//;TEST_61F14x_IO.C: 102: PSRC1 = 0B11111111;
		STR 	1BH 			//0484 	109B

		//;TEST_61F14x_IO.C: 106: PSINK0 = 0B11111111;
		MOVLB 	3H 			//0485 	1023
		STR 	1AH 			//0486 	109A

		//;TEST_61F14x_IO.C: 107: PSINK1 = 0B11111111;
		STR 	1BH 			//0487 	109B

		//;TEST_61F14x_IO.C: 108: PSINK2 = 0B11111111;
		STR 	1CH 			//0488 	109C

		//;TEST_61F14x_IO.C: 110: ANSELA = 0B00000000;
		CLRF 	17H 			//0489 	1197
		RET 					//048A 	1008
		RET 					//048B 	1008
			END
