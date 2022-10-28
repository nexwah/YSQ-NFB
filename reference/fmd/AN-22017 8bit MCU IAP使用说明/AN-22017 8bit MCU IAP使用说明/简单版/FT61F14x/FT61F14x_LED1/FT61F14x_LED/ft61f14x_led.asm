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
		NOP 					//0200 	1000
		MOVLP 	2H 			//0201 	0182
		LJUMP 	21FH 			//0202 	3A1F
		ORG		0204H
		BSR 	7EH, 0H 			//0204 	247E
		MOVLP 	2H 			//0205 	0182
		NOP 					//0206 	1000
		NOP 					//0207 	1000
		NOP 					//0208 	1000
		NOP 					//0209 	1000
		NOP 					//020A 	1000
		NOP 					//020B 	1000
		ORG		020CH
		NOP 					//020C 	1000
		NOP 					//020D 	1000
		NOP 					//020E 	1000
		NOP 					//020F 	1000
		NOP 					//0210 	1000
		NOP 					//0211 	1000
		NOP 					//0212 	1000
		NOP 					//0213 	1000
		ORG		0214H
		NOP 					//0214 	1000
		NOP 					//0215 	1000
		NOP 					//0216 	1000
		NOP 					//0217 	1000
		NOP 					//0218 	1000
		NOP 					//0219 	1000
		NOP 					//021A 	1000

		//;FT61F14x_LED.C: 64: user_isr();
		MOVLP 	2H 			//021B 	0182
		ORG		021CH
		LCALL 	2ECH 			//021C 	32EC
		BCR 	7EH, 0H 			//021D 	207E
		RETI 					//021E 	1009
		MOVLP 	2H 			//021F 	0182
		LJUMP 	221H 			//0220 	3A21
		BCR 	7EH, 0H 			//0221 	207E
		MOVLB 	0H 			//0222 	1020
		LJUMP 	224H 			//0223 	3A24
		ORG		0224H

		//;FT61F14x_LED.C: 169: POWER_INITIAL();
		LCALL 	2C7H 			//0224 	32C7
		MOVLP 	2H 			//0225 	0182

		//;FT61F14x_LED.C: 171: DelayMs(5);
		LDWI 	5H 			//0226 	0005
		LCALL 	2ADH 			//0227 	32AD
		MOVLP 	2H 			//0228 	0182

		//;FT61F14x_LED.C: 175: {
		//;FT61F14x_LED.C: 176: RB5=0;
		MOVLB 	0H 			//0229 	1020
		BCR 	DH, 5H 			//022A 	228D

		//;FT61F14x_LED.C: 177: DelayMs(200);
		LDWI 	C8H 			//022B 	00C8
		ORG		022CH
		LCALL 	2ADH 			//022C 	32AD
		MOVLP 	2H 			//022D 	0182

		//;FT61F14x_LED.C: 178: DelayMs(200);
		LDWI 	C8H 			//022E 	00C8
		LCALL 	2ADH 			//022F 	32AD
		MOVLP 	2H 			//0230 	0182

		//;FT61F14x_LED.C: 179: DelayMs(200);
		LDWI 	C8H 			//0231 	00C8
		LCALL 	2ADH 			//0232 	32AD
		MOVLP 	2H 			//0233 	0182
		ORG		0234H

		//;FT61F14x_LED.C: 180: DelayMs(200);
		LDWI 	C8H 			//0234 	00C8
		LCALL 	2ADH 			//0235 	32AD
		MOVLP 	2H 			//0236 	0182

		//;FT61F14x_LED.C: 181: RB5=1;
		MOVLB 	0H 			//0237 	1020
		BSR 	DH, 5H 			//0238 	268D

		//;FT61F14x_LED.C: 182: DelayMs(200);
		LDWI 	C8H 			//0239 	00C8
		LCALL 	2ADH 			//023A 	32AD
		MOVLP 	2H 			//023B 	0182
		ORG		023CH

		//;FT61F14x_LED.C: 184: RB3=0;
		MOVLB 	0H 			//023C 	1020
		BCR 	DH, 3H 			//023D 	218D

		//;FT61F14x_LED.C: 185: DelayMs(200);
		LDWI 	C8H 			//023E 	00C8
		LCALL 	2ADH 			//023F 	32AD
		MOVLP 	2H 			//0240 	0182

		//;FT61F14x_LED.C: 186: DelayMs(200);
		LDWI 	C8H 			//0241 	00C8
		LCALL 	2ADH 			//0242 	32AD
		MOVLP 	2H 			//0243 	0182
		ORG		0244H

		//;FT61F14x_LED.C: 187: DelayMs(200);
		LDWI 	C8H 			//0244 	00C8
		LCALL 	2ADH 			//0245 	32AD
		MOVLP 	2H 			//0246 	0182

		//;FT61F14x_LED.C: 188: DelayMs(200);
		LDWI 	C8H 			//0247 	00C8
		LCALL 	2ADH 			//0248 	32AD
		MOVLP 	2H 			//0249 	0182

		//;FT61F14x_LED.C: 189: RB3=1;
		MOVLB 	0H 			//024A 	1020
		BSR 	DH, 3H 			//024B 	258D
		ORG		024CH

		//;FT61F14x_LED.C: 190: DelayMs(200);
		LDWI 	C8H 			//024C 	00C8
		LCALL 	2ADH 			//024D 	32AD
		MOVLP 	2H 			//024E 	0182

		//;FT61F14x_LED.C: 193: RB2=0;
		MOVLB 	0H 			//024F 	1020
		BCR 	DH, 2H 			//0250 	210D

		//;FT61F14x_LED.C: 194: DelayMs(200);
		LDWI 	C8H 			//0251 	00C8
		LCALL 	2ADH 			//0252 	32AD
		MOVLP 	2H 			//0253 	0182
		ORG		0254H

		//;FT61F14x_LED.C: 195: DelayMs(200);
		LDWI 	C8H 			//0254 	00C8
		LCALL 	2ADH 			//0255 	32AD
		MOVLP 	2H 			//0256 	0182

		//;FT61F14x_LED.C: 196: DelayMs(200);
		LDWI 	C8H 			//0257 	00C8
		LCALL 	2ADH 			//0258 	32AD
		MOVLP 	2H 			//0259 	0182

		//;FT61F14x_LED.C: 197: DelayMs(200);
		LDWI 	C8H 			//025A 	00C8
		LCALL 	2ADH 			//025B 	32AD
		ORG		025CH
		MOVLP 	2H 			//025C 	0182

		//;FT61F14x_LED.C: 198: RB2=1;
		MOVLB 	0H 			//025D 	1020
		BSR 	DH, 2H 			//025E 	250D

		//;FT61F14x_LED.C: 199: DelayMs(200);
		LDWI 	C8H 			//025F 	00C8
		LCALL 	2ADH 			//0260 	32AD
		MOVLP 	2H 			//0261 	0182

		//;FT61F14x_LED.C: 202: RB1=0;
		MOVLB 	0H 			//0262 	1020
		BCR 	DH, 1H 			//0263 	208D
		ORG		0264H

		//;FT61F14x_LED.C: 203: DelayMs(200);
		LDWI 	C8H 			//0264 	00C8
		LCALL 	2ADH 			//0265 	32AD
		MOVLP 	2H 			//0266 	0182

		//;FT61F14x_LED.C: 204: DelayMs(200);
		LDWI 	C8H 			//0267 	00C8
		LCALL 	2ADH 			//0268 	32AD
		MOVLP 	2H 			//0269 	0182

		//;FT61F14x_LED.C: 205: DelayMs(200);
		LDWI 	C8H 			//026A 	00C8
		LCALL 	2ADH 			//026B 	32AD
		ORG		026CH
		MOVLP 	2H 			//026C 	0182

		//;FT61F14x_LED.C: 206: DelayMs(200);
		LDWI 	C8H 			//026D 	00C8
		LCALL 	2ADH 			//026E 	32AD
		MOVLP 	2H 			//026F 	0182

		//;FT61F14x_LED.C: 207: RB1=1;
		MOVLB 	0H 			//0270 	1020
		BSR 	DH, 1H 			//0271 	248D

		//;FT61F14x_LED.C: 208: DelayMs(200);
		LDWI 	C8H 			//0272 	00C8
		LCALL 	2ADH 			//0273 	32AD
		ORG		0274H
		MOVLP 	2H 			//0274 	0182

		//;FT61F14x_LED.C: 211: RB0=0;
		MOVLB 	0H 			//0275 	1020
		BCR 	DH, 0H 			//0276 	200D

		//;FT61F14x_LED.C: 212: DelayMs(200);
		LDWI 	C8H 			//0277 	00C8
		LCALL 	2ADH 			//0278 	32AD
		MOVLP 	2H 			//0279 	0182

		//;FT61F14x_LED.C: 213: DelayMs(200);
		LDWI 	C8H 			//027A 	00C8
		LCALL 	2ADH 			//027B 	32AD
		ORG		027CH
		MOVLP 	2H 			//027C 	0182

		//;FT61F14x_LED.C: 214: DelayMs(200);
		LDWI 	C8H 			//027D 	00C8
		LCALL 	2ADH 			//027E 	32AD
		MOVLP 	2H 			//027F 	0182

		//;FT61F14x_LED.C: 215: DelayMs(200);
		LDWI 	C8H 			//0280 	00C8
		LCALL 	2ADH 			//0281 	32AD
		MOVLP 	2H 			//0282 	0182

		//;FT61F14x_LED.C: 216: RB0=1;
		MOVLB 	0H 			//0283 	1020
		ORG		0284H
		BSR 	DH, 0H 			//0284 	240D

		//;FT61F14x_LED.C: 217: DelayMs(200);
		LDWI 	C8H 			//0285 	00C8
		LCALL 	2ADH 			//0286 	32AD
		MOVLP 	2H 			//0287 	0182

		//;FT61F14x_LED.C: 221: RA6=0;
		MOVLB 	0H 			//0288 	1020
		BCR 	CH, 6H 			//0289 	230C

		//;FT61F14x_LED.C: 222: DelayMs(200);
		LDWI 	C8H 			//028A 	00C8
		LCALL 	2ADH 			//028B 	32AD
		ORG		028CH
		MOVLP 	2H 			//028C 	0182

		//;FT61F14x_LED.C: 223: DelayMs(200);
		LDWI 	C8H 			//028D 	00C8
		LCALL 	2ADH 			//028E 	32AD
		MOVLP 	2H 			//028F 	0182

		//;FT61F14x_LED.C: 224: DelayMs(200);
		LDWI 	C8H 			//0290 	00C8
		LCALL 	2ADH 			//0291 	32AD
		MOVLP 	2H 			//0292 	0182

		//;FT61F14x_LED.C: 225: DelayMs(200);
		LDWI 	C8H 			//0293 	00C8
		ORG		0294H
		LCALL 	2ADH 			//0294 	32AD
		MOVLP 	2H 			//0295 	0182

		//;FT61F14x_LED.C: 226: RA6=1;
		MOVLB 	0H 			//0296 	1020
		BSR 	CH, 6H 			//0297 	270C

		//;FT61F14x_LED.C: 227: DelayMs(200);
		LDWI 	C8H 			//0298 	00C8
		LCALL 	2ADH 			//0299 	32AD
		MOVLP 	2H 			//029A 	0182

		//;FT61F14x_LED.C: 229: RA7=0;
		MOVLB 	0H 			//029B 	1020
		ORG		029CH
		BCR 	CH, 7H 			//029C 	238C

		//;FT61F14x_LED.C: 230: DelayMs(200);
		LDWI 	C8H 			//029D 	00C8
		LCALL 	2ADH 			//029E 	32AD
		MOVLP 	2H 			//029F 	0182

		//;FT61F14x_LED.C: 231: DelayMs(200);
		LDWI 	C8H 			//02A0 	00C8
		LCALL 	2ADH 			//02A1 	32AD
		MOVLP 	2H 			//02A2 	0182

		//;FT61F14x_LED.C: 232: DelayMs(200);
		LDWI 	C8H 			//02A3 	00C8
		ORG		02A4H
		LCALL 	2ADH 			//02A4 	32AD
		MOVLP 	2H 			//02A5 	0182

		//;FT61F14x_LED.C: 233: DelayMs(200);
		LDWI 	C8H 			//02A6 	00C8
		LCALL 	2ADH 			//02A7 	32AD
		MOVLP 	2H 			//02A8 	0182

		//;FT61F14x_LED.C: 234: RA7=1;
		MOVLB 	0H 			//02A9 	1020
		BSR 	CH, 7H 			//02AA 	278C

		//;FT61F14x_LED.C: 235: DelayMs(200);
		LDWI 	C8H 			//02AB 	00C8
		ORG		02ACH
		LJUMP 	227H 			//02AC 	3A27
		STR 	74H 			//02AD 	10F4

		//;FT61F14x_LED.C: 149: unsigned char a,b;
		//;FT61F14x_LED.C: 150: for(a=0;a<Time;a++)
		CLRF 	75H 			//02AE 	11F5
		LDR 	74H, 0H 			//02AF 	1874
		SUBWR 	75H, 0H 		//02B0 	1275
		BTSC 	3H, 0H 			//02B1 	2803
		RET 					//02B2 	1008

		//;FT61F14x_LED.C: 151: {
		//;FT61F14x_LED.C: 152: for(b=0;b<5;b++)
		CLRF 	76H 			//02B3 	11F6
		ORG		02B4H

		//;FT61F14x_LED.C: 153: {
		//;FT61F14x_LED.C: 154: DelayUs(197);
		LDWI 	C5H 			//02B4 	00C5
		LCALL 	2BEH 			//02B5 	32BE
		MOVLP 	2H 			//02B6 	0182
		LDWI 	5H 			//02B7 	0005
		INCR 	76H, 1H 		//02B8 	1AF6
		SUBWR 	76H, 0H 		//02B9 	1276
		BTSS 	3H, 0H 			//02BA 	2C03
		LJUMP 	2B4H 			//02BB 	3AB4
		ORG		02BCH
		INCR 	75H, 1H 		//02BC 	1AF5
		LJUMP 	2AFH 			//02BD 	3AAF
		STR 	72H 			//02BE 	10F2

		//;FT61F14x_LED.C: 135: unsigned char a;
		//;FT61F14x_LED.C: 136: for(a=0;a<Time;a++)
		CLRF 	73H 			//02BF 	11F3
		LDR 	72H, 0H 			//02C0 	1872
		SUBWR 	73H, 0H 		//02C1 	1273
		BTSC 	3H, 0H 			//02C2 	2803
		RET 					//02C3 	1008
		ORG		02C4H

		//;FT61F14x_LED.C: 137: {
		//;FT61F14x_LED.C: 138: __nop();
		NOP 					//02C4 	1000
		INCR 	73H, 1H 		//02C5 	1AF3
		LJUMP 	2C0H 			//02C6 	3AC0

		//;FT61F14x_LED.C: 84: OSCCON = 0B01110001;
		LDWI 	71H 			//02C7 	0071
		MOVLB 	1H 			//02C8 	1021
		STR 	19H 			//02C9 	1099

		//;FT61F14x_LED.C: 93: PORTA = 0B11111111;
		LDWI 	FFH 			//02CA 	00FF
		MOVLB 	0H 			//02CB 	1020
		ORG		02CCH
		STR 	CH 			//02CC 	108C

		//;FT61F14x_LED.C: 94: TRISA = 0B00000100;
		LDWI 	4H 			//02CD 	0004
		MOVLB 	1H 			//02CE 	1021
		STR 	CH 			//02CF 	108C

		//;FT61F14x_LED.C: 95: PORTB = 0B10111111;
		LDWI 	BFH 			//02D0 	00BF
		MOVLB 	0H 			//02D1 	1020
		STR 	DH 			//02D2 	108D

		//;FT61F14x_LED.C: 96: TRISB = 0B00000000;
		MOVLB 	1H 			//02D3 	1021
		ORG		02D4H
		CLRF 	DH 			//02D4 	118D

		//;FT61F14x_LED.C: 97: PORTC = 0B00000011;
		LDWI 	3H 			//02D5 	0003
		MOVLB 	0H 			//02D6 	1020
		STR 	EH 			//02D7 	108E

		//;FT61F14x_LED.C: 98: TRISC = 0B00000011;
		MOVLB 	1H 			//02D8 	1021
		STR 	EH 			//02D9 	108E

		//;FT61F14x_LED.C: 101: WPUA = 0B00000000;
		MOVLB 	3H 			//02DA 	1023
		CLRF 	CH 			//02DB 	118C
		ORG		02DCH

		//;FT61F14x_LED.C: 102: WPUB = 0B00000000;
		CLRF 	DH 			//02DC 	118D

		//;FT61F14x_LED.C: 103: WPUC = 0B00000000;
		CLRF 	EH 			//02DD 	118E

		//;FT61F14x_LED.C: 106: WPDA = 0B00000000;
		MOVLB 	4H 			//02DE 	1024
		CLRF 	CH 			//02DF 	118C

		//;FT61F14x_LED.C: 107: WPDB = 0B00000000;
		CLRF 	DH 			//02E0 	118D

		//;FT61F14x_LED.C: 108: WPDC = 0B00000000;
		CLRF 	EH 			//02E1 	118E

		//;FT61F14x_LED.C: 111: PSRC0 = 0B11111111;
		LDWI 	FFH 			//02E2 	00FF
		MOVLB 	2H 			//02E3 	1022
		ORG		02E4H
		STR 	1AH 			//02E4 	109A

		//;FT61F14x_LED.C: 112: PSRC1 = 0B11111111;
		STR 	1BH 			//02E5 	109B

		//;FT61F14x_LED.C: 115: PSINK0 = 0B11111111;
		MOVLB 	3H 			//02E6 	1023
		STR 	1AH 			//02E7 	109A

		//;FT61F14x_LED.C: 116: PSINK1 = 0B11111111;
		STR 	1BH 			//02E8 	109B

		//;FT61F14x_LED.C: 117: PSINK2 = 0B11111111;
		STR 	1CH 			//02E9 	109C

		//;FT61F14x_LED.C: 120: ANSELA = 0B00000000;
		CLRF 	17H 			//02EA 	1197
		RET 					//02EB 	1008
		ORG		02ECH

		//;FT61F14x_LED.C: 68: unsigned char temp;
		//;FT61F14x_LED.C: 69: if(uart_rxnef==1)
		MOVLB 	0H 			//02EC 	1020
		BTSS 	20H, 3H 		//02ED 	2DA0
		RET 					//02EE 	1008

		//;FT61F14x_LED.C: 70: {
		//;FT61F14x_LED.C: 71: uart_rxnef = 0;
		BCR 	20H, 3H 			//02EF 	21A0

		//;FT61F14x_LED.C: 72: temp=iap_recdata;
		LDR 	22H, 0H 			//02F0 	1822
		RET 					//02F1 	1008
			END
