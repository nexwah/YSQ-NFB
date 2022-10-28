//===========================================================
/* �ļ�����ASM_64F0Ax_IR_Receive.ASM
* ���ܣ�   FT64F0Ax_IR_Receive������ʾ
*  IC��    FT64F0A5     TSSOP20
* �ڲ���   16M/4T	                             
* ˵����   ���պ��ⷢ�͹��������Ի����ֽڣ������Լ�����Ҫ�ıȶԣ�ȷ����ȷ��
*          ִ���������
*
*                FT64F0A5  TSSOP20
*              -------------------
* NC----------|1(PA5)   	(PA4)20|-----------NC     
* NC----------|2(PA6)   	(PA3)19|-----------NC 
* NC----------|3(PA7)   	(PA2)18|-----------NC
* NC----------|4(PC0)   	(PA1)17|-----------NC
* NC----------|5(PC1)		(PA0)16|-----------NC	
* NC----------|6(PB7)		(PB0)15|-----------NC
* GND---------|7(GND)		(PB1)14|-----------NC
* NC----------|8(PB6)		(PB2)13|-----------NC
* VDD---------|9(VDD)		(PB3)12|--------ir_rx
* NC----------|10(PB5)		(PB4)11|-----------NC
*				-------------------
*/ 
//===========================================================
#INCLUDE  <FT64F0AX.INC>;
;===========================================================
;RAM DEFINE
;===========================================================
    TEMP            EQU     0X40
	W_TMP			EQU		0X43
	S_TMP			EQU		0X44

    ir_counttemp	EQU		0X47
    buff			EQU		0X48
    #define		f_finish	buff,0
    #define		f_receive	buff,1   
    ir_count		EQU		0X49
    countbyte		EQU		0X4A
    IRDATE0			EQU		0X4B
    IRDATE1			EQU		0X4C
    IRDATE2			EQU		0X4D
    IRDATE3			EQU		0X4E  
;===========================================================
;CONSTANT	DEFINE	
;===========================================================
	INTCON_DEF  	EQU		B'01000000'			;ʹ�������ж�
	OSCCON_DEF  	EQU		B'01110001'			;16MHz,1:1

	WPUA_DEF		EQU		B'00000000'			;�������Ŀ��أ�0-�أ�1-��		
	WPUB_DEF		EQU		B'00000000'		
	WPUC_DEF		EQU		B'00000000'	

	WPDA_DEF		EQU		B'00000000'			;�������Ŀ��أ�0-�أ�1-��
	WPDB_DEF		EQU		B'00000000'
	WPDC_DEF		EQU		B'00000000'

	TRISA_DEF		EQU		B'00000000'			;����������ã�0-�����1-����
	TRISB_DEF		EQU		B'00000000'	        ;PB3-OUT
	TRISC_DEF		EQU		B'00000000'

	PSRC0_DEF		EQU		B'11111111'			;Դ�����������
	PSRC1_DEF		EQU		B'11111111'
	PSRC2_DEF		EQU		B'00001111'

	PSINK0_DEF		EQU		B'11111111'			;������������
	PSINK1_DEF		EQU		B'11111111'
	PSINK2_DEF		EQU		B'00000011'

	ANSELA_DEF		EQU		B'00000000'			;���ö�Ӧ��IOΪ����IO
    
	PCKEN_DEF		EQU		B'00000010'			;ʹ��Timer1ʱ��ģ��
    CKOCON_DEF		EQU		B'00100000'			;Timer1��Ƶʱ��ռ�ձȵ���λ4ns�ӳ�
    TCKSRC_DEF		EQU		B'00000001'			;Timer1ʱ��ԴΪHIRC
    
    TIM1CR1_DEF 	EQU		B'10000101'			;�����Զ�װ�أ�ʹ�ܼ����������ض������ϼ���
    
    TIM1IER_DEF		EQU		B'00000001'			;��������ж�
    
    TIM1ARRH_DEF	EQU		0x10				;�Զ�װ�����ڸ�8λ10H
    TIM1ARRL_DEF	EQU		0x0C				;�Զ�װ�����ڵ�8λ0CH
;===========================================================
;USER	DEFINE
;===========================================================
#DEFINE		ir_rx			PORTB,3
;===========================================================
;PROGRAM	START
;===========================================================
	ORG			0x0000			
	LJUMP		RESTART			
	ORG			0x0004			
	STR			W_TMP			
	SWAPR		STATUS,W		
	STR			S_TMP
	LJUMP		INT_PROGRAM
;===========================================================
;SYSTEM	START
;===========================================================
RESTART:
	BANKSEL 	PORTA
    LCALL		INITIAL
	LCALL		TIMER1_INITIAL

	BANKSEL 	INTCON
    BSR			INTCON,GIE			;ʹ��ȫ���ж�
    BANKSEL 	TIM1IER
    BSR			TIM1IER,T1UIE		;����TIM1�ж�    
MAIN:
	CLRWDT
    LCALL		scanky_ir
    LCALL		ir_data_compare
    LJUMP		MAIN
;===========================================================
;�жϴ������
;===========================================================
INT_PROGRAM:
	BANKSEL 	TIM1SR1
    BTSC		TIM1SR1,T1UIF
    LJUMP		TIM1Interrupt
    LJUMP		INT_RET

TIM1Interrupt:
	BANKSEL 	TIM1SR1
    BSR			TIM1SR1,T1UIF
    
    BANKSEL 	ir_count
    INCR		ir_count,1
    LJUMP		INT_RET
    
INT_RET:
	SWAPR		S_TMP,0
	STR			STATUS			
	SWAPR		W_TMP,1
	SWAPR		W_TMP,0			
	RETI						
;===========================================================
;SYSTEM	INITIAL
;===========================================================
INITIAL:
	BANKSEL 	OSCCON
    LDWI		OSCCON_DEF
    STR			OSCCON
    
	BANKSEL 	INTCON
    LDWI		INTCON_DEF
    STR			INTCON
    
	BANKSEL 	PORTA
    LDWI		0X00
    STR			PORTA
    STR			PORTB
    STR			PORTC
    
	BANKSEL 	TRISA
    LDWI		TRISA_DEF
    STR			TRISA
    LDWI		TRISB_DEF
    STR			TRISB
    LDWI		TRISC_DEF
    STR			TRISC
    
	BANKSEL 	WPUA
    LDWI		WPUA_DEF
    STR			WPUA
    LDWI		WPUB_DEF
    STR			WPUB
    LDWI		WPUC_DEF
    STR			WPUC
    
	BANKSEL 	WPDA
    LDWI		WPDA_DEF
    STR			WPDA
    LDWI		WPDB_DEF
    STR			WPDB
    LDWI		WPDC_DEF
    STR			WPDC
    
	BANKSEL 	PSRC0
    LDWI		PSRC0_DEF
    STR			PSRC0
    LDWI		PSRC1_DEF
    STR			PSRC1
    LDWI		PSRC2_DEF
    STR			PSRC2
    
	BANKSEL 	PSINK0
    LDWI		PSINK0_DEF
    STR			PSINK0
    LDWI		PSINK1_DEF
    STR			PSINK1
    LDWI		PSINK2_DEF
    STR			PSINK2
    
	BANKSEL 	ANSELA
    LDWI		ANSELA_DEF
    STR			ANSELA
;***************Clear  SRAM******************
	BANKSEL 	PORTA
    LDWI		0X00
    STR			FSR0H		
 CLEAR_RAM_BANK0:
	LDWI		20H
    STR			FSR0L
CLEAR_RAM_BANK0_LOOP:
	CLRR		INDF0
    INCR		FSR0L,F
    LDWI		80H
    XORWR		FSR0L,W
    BTSS		STATUS,Z
    LJUMP		CLEAR_RAM_BANK0_LOOP   
CLEAR_RAM_BANK1:
	LDWI		0A0H
    STR			FSR0L
CLEAR_RAM_BANK1_LOOP:
	CLRR		INDF0
    INCR		FSR0L,F
    LDWI		00H
    XORWR		FSR0L,W
    BTSS		STATUS,Z
    LJUMP		CLEAR_RAM_BANK1_LOOP
    INCR		FSR0H,F
CLEAR_RAM_LOOP:
    LDWI		10
    SUBWR		FSR0H,W
    BTSS		STATUS,0
    LJUMP		CLEAR_RAM_BANK0
    RET  
;===========================================================
;��������TIMER1_INITIAL
;���ܣ�	 TIMER1��ʼ��������TIMER1��ʱʱ��256us
;===========================================================
TIMER1_INITIAL:
    BANKSEL 	PCKEN
    LDWI		PCKEN_DEF
    STR			PCKEN
    BANKSEL 	CKOCON
    LDWI		CKOCON_DEF
    STR			CKOCON
    
	BANKSEL 	TCKSRC
    LDWI		TCKSRC_DEF
    STR			TCKSRC
    
    BANKSEL 	TIM1CR1
    LDWI		TIM1CR1_DEF
    STR			TIM1CR1
    LDWI		TIM1IER_DEF
    STR			TIM1IER
    
    BANKSEL 	TIM1ARRH
    LDWI		TIM1ARRH_DEF
    STR			TIM1ARRH
    LDWI		TIM1ARRL_DEF
    STR			TIM1ARRL
    
    RET
;===========================================================
;����:  scanky_ir
;���ܣ�	�ɼ�����������յ�������
;===========================================================
scanky_ir:
	BANKSEL 	PORTB
    BTSC		ir_rx
    RET
    CLRR		ir_count
    BSR			f_finish
    
scanky_ir_one:
	CLRWDT
    LDWI		0X27
    SUBWR		ir_count,0
    BTSC		STATUS,0
    LJUMP		scanky_ir_wrong
    BTSS		ir_rx
    LJUMP		scanky_ir_one
    
    LDR			ir_count,0
    STR			ir_counttemp				;�ж�����ʱ���9ms�ĵ͵�ƽ
    CLRR		ir_count
    LDWI		0X20
    SUBWR		ir_counttemp,0
    BTSS		STATUS,0
    LJUMP		scanky_ir_wrong
    LDWI		0X27
    SUBWR		ir_counttemp,0
    BTSC		STATUS,0
    LJUMP		scanky_ir_wrong
    
scanky_ir_two:
	CLRWDT
    LDWI		0X13
    SUBWR		ir_count,0
    BTSC		STATUS,0
    LJUMP		scanky_ir_wrong
    BTSC		ir_rx
    LJUMP		scanky_ir_two
    
	LDR			ir_count,0
    STR			ir_counttemp				;�ж�����ʱ���4.5ms�ĸߵ�ƽ
    CLRR		ir_count
    LDWI		0X0F
    SUBWR		ir_counttemp,0
    BTSS		STATUS,0
    LJUMP		scanky_ir_wrong
    LDWI		0X13
    SUBWR		ir_counttemp,0
    BTSC		STATUS,0
    LJUMP		scanky_ir_wrong
    
    CLRR		IRDATE0
    CLRR		IRDATE1
    CLRR		IRDATE2
    CLRR		IRDATE3
    BCR			f_receive
    LDWI		0X21
    STR			countbyte
    
scanky_ir_thr:
	CLRWDT
    LDWI		0X05
    SUBWR		ir_count,0
    BTSC		STATUS,0
    LJUMP		scanky_ir_wrong
    BTSS		ir_rx
    LJUMP		scanky_ir_thr
    
    LDR			ir_count,0
    STR			ir_counttemp
    CLRR		ir_count
    LDWI		0X05
    SUBWR		ir_counttemp,0
    BTSC		STATUS,0
    LJUMP		scanky_ir_wrong
    
scanky_ir_fou:
	CLRWDT
    LDWI		0X08
    SUBWR		ir_count,0
    BTSC		STATUS,0
    LJUMP		scanky_ir_wrong
    BTSC		ir_rx
    LJUMP		scanky_ir_fou
    
    DECRSZ  	countbyte,1
    LJUMP		$+2
    LJUMP		scanky_ir_receive_end
    
	BCR			STATUS,0
    RRR			IRDATE3,1
    RRR			IRDATE2,1
    RRR			IRDATE1,1
    RRR			IRDATE0,1
    LDR			ir_count,0
    STR			ir_counttemp
    CLRR		ir_count
    LDWI		0X05
    SUBWR		ir_counttemp,0
    BTSS		STATUS,0
    LJUMP		scanky_ir_thr
    BSR			IRDATE3,7
    LJUMP		scanky_ir_thr
    
scanky_ir_wrong:
	BCR			f_receive
    BCR			f_finish
    RET
    
scanky_ir_receive_end:
	BSR			f_receive
    BCR			f_finish
    RET	
;===========================================================
;��������sir_data_compare
;���ܣ�	 �Ƚϲɼ���������
;===========================================================
ir_data_compare:
	BTSS		f_receive
    RET
    BCR			f_receive
    
	LDWI		0X00
    XORWR		IRDATE0,0
    BTSS		STATUS,2
    RET
    
	LDWI		0XFF
    XORWR		IRDATE1,0
    BTSS		STATUS,2
    RET
    
	LDWI		0X0A
    XORWR		IRDATE2,0
    BTSS		STATUS,2
    RET
    
	LDWI		0XF5
    XORWR		IRDATE3,0
    BTSS		STATUS,2
    RET
    NOP
    LDWI		0XFF
    STR			TEMP
    RET

	END							
    