;===========================================================
/* �ļ�����ASM_64F0Ax_IR_Send.ASM
* ���ܣ�   FT64F0Ax_IR_Send������ʾ
*  IC��    FT64F0A5     TSSOP20
* �ڲ���   16M/4T	                              
* ˵����   ���������º󣬷����Լ�����Ҫ���͵ĺ����룬�������ɿ�ʱ���������룬
*          �˳�������������Ϊ 0x55��0xaa��0x01��0xfe
*
*                FT64F0A5  TSSOP20
*              -------------------
* NC----------|1(PA5)   	(PA4)20|-----------NC     
* NC----------|2(PA6)   	(PA3)19|-----------NC 
* NC----------|3(PA7)   	(PA2)18|-----------NC
* NC----------|4(PC0)   	(PA1)17|-----------NC
* key---------|5(PC1)		(PA0)16|-----------NC	
* NC----------|6(PB7)		(PB0)15|-----------NC
* GND---------|7(GND)		(PB1)14|-----------NC
* NC----------|8(PB6)		(PB2)13|-----------NC
* VDD---------|9(VDD)		(PB3)12|------ir_data
* NC----------|10(PB5)		(PB4)11|-----------NC
*				-------------------
*/ 
;===========================================================
#INCLUDE  <FT64F0AX.INC>;
;===========================================================
;RAM DEFINE
;===========================================================
	TEMP				EQU		0X40
	TEMP1				EQU		0X41
	TEMP2				EQU		0X42
    W_TMP				EQU		0X43
	S_TMP				EQU		0X44
	READPIN				EQU		0X45
    IRDATTEMP   		EQU		0X46
    buff				EQU		0X47
    #define				f_key	buff,1   
    key_short_count     EQU		0X48
    count				EQU		0X49
    countbyte			EQU		0X4A
    f_2ms				EQU	    0X4B
;===========================================================
;CONSTANT	DEFINE	
;===========================================================
	INTCON_DEF			EQU		B'01000000'			;ʹ�������ж�
	OSCCON_DEF			EQU		B'01110001'			;16MHz,1:1

	WPUA_DEF			EQU		B'00000000'			;�������Ŀ��أ�0-�أ�1-��		
	WPUB_DEF			EQU		B'00000000'		
	WPUC_DEF			EQU		B'00000000'	

	WPDA_DEF			EQU		B'00000000'			;�������Ŀ��أ�0-�أ�1-��
	WPDB_DEF			EQU		B'00000000'
	WPDC_DEF			EQU		B'00000000'			

	TRISA_DEF			EQU		B'00000000'			;����������ã�0-�����1-����
	TRISB_DEF			EQU		B'00000000'			;PB3-OUT	
	TRISC_DEF			EQU		B'00000000'

	PSRC0_DEF			EQU		B'11111111'			;Դ�����������
	PSRC1_DEF			EQU		B'11111111'
	PSRC2_DEF			EQU		B'00001111'

	PSINK0_DEF			EQU		B'11111111'			;������������
	PSINK1_DEF			EQU		B'11111111'
	PSINK2_DEF			EQU		B'00000011'

	ANSELA_DEF			EQU		B'00000000'			;���ö�Ӧ��IOΪ����IO
    
	PCKEN_DEF			EQU		B'00000010'			;ʹ��Timer1ʱ��ģ��
    CKOCON_DEF			EQU		B'00100000'			;Timer1��Ƶʱ��ռ�ձȵ���λ4ns�ӳ�
    TCKSRC_DEF			EQU		B'00000001'			;Timer1ʱ��ԴΪHIRC
    
    TIM1CR1_DEF  		EQU		B'10000101'			;�����Զ�װ�أ�ʹ�ܼ����������ض������ϼ���
		
    TIM1IER_DEF			EQU		B'00000001'			;��������ж�
    
    TIM1ARRH_DEF		EQU		0x80				;�Զ�װ�����ڸ�8λ80H
    TIM1ARRL_DEF		EQU		0x83				;�Զ�װ�����ڵ�8λ83H
    
	EPS0_DEF			EQU		B'00000000'			;�ⲿ�жϹܽ�ѡ��ΪPA3
    EPS1_DEF			EQU		B'00000000'
    ITYPE0_DEF			EQU		B'11000000'			;�жϴ�������Ϊ˫����
    ITYPE1_DEF			EQU		B'00000000'
    EPIE0_DEF			EQU		B'00001000'			;�����ⲿ�ж�3
;===========================================================
;USER	DEFINE
;===========================================================
#DEFINE		ir_data		PORTB,3
#DEFINE		key			PORTA,5
#DEFINE		IOCA3		3
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
    BANKSEL 	buff
    BTSS		f_2ms,0
    LJUMP		MAIN
    BANKSEL 	buff
    BCR			f_2ms,0
    LCALL		scanky_key
    LJUMP		MAIN
;===========================================================
;INT_PROGRAM
;===========================================================
INT_PROGRAM:
	BANKSEL 	TIM1SR1
    BTSC		TIM1SR1,T1UIF
    LJUMP		TIM1Interrupt
    BANKSEL 	EPIF0
    BTSC		EPIF0,IOCA3
    LJUMP		GPIOInterrupt
    LJUMP		INT_RET

TIM1Interrupt:
	BANKSEL 	TIM1SR1
    BSR			TIM1SR1,T1UIF
    
    BANKSEL 	f_2ms
    BSR			f_2ms,0
    LJUMP		INT_RET

GPIOInterrupt:
	BANKSEL 	PORTA
    LDR			PORTA,W
    BANKSEL 	READPIN
    STR			READPIN
    BANKSEL 	EPIF0
    LDWI    	0X00
    STR     	EPIF0
    LDWI    	0X00
    STR	        EPIE0
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
;***************Clear  SRAM********************
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
;���ܣ�	 TIMER1��ʼ��������TIMER1��ʱʱ��2.056ms
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
;��������PA_INT_INITIAL
;���ܣ�	 PA�ڵ�ƽ�仯�жϳ�ʼ��
;===========================================================
PA_INT_INITIAL:
    BANKSEL 	TRISA
    BSR			TRISA,3
    
	BANKSEL 	PORTA
    LDR			PORTA,W
    BANKSEL 	READPIN
    STR			READPIN
    
	BANKSEL 	EPIE0
    BSR			EPIE0,IOCA3
    BSR			EPIF0,IOCA3
    
	BANKSEL 	EPS0
    LDWI		EPS0_DEF
    STR			EPS0
    LDWI		EPS1_DEF
    STR			EPS1
    
	BANKSEL 	ITYPE0
    LDWI		ITYPE0_DEF
    STR			ITYPE0
    LDWI		ITYPE1_DEF
    STR			ITYPE1
    
	BANKSEL 	EPIE0
    LDWI		EPIE0_DEF
    STR			EPIE0
    
    RET
;==========================================================================
;DELAY_8US 16MHz/4T
;==========================================================================   
DELAY_8US:
    LDWI      	0x08
    STR       	TEMP

DELAY_8USLOOP:
    CLRWDT
    DECRSZ      TEMP,F
    LJUMP       DELAY_8USLOOP
    RET 
;==========================================================================
;DELAY_18US 16MHz/4T
;==========================================================================   
DELAY_18US:
    LDWI      	0x11
    STR       	TEMP

DELAY_18USLOOP:
    CLRWDT
    DECRSZ      TEMP,F
    LJUMP       DELAY_18USLOOP
    RET
;===========================================================
;��������IR_Start
;���ܣ�	 ���ⷢ�͵�������9ms����4.5msֹͣ
;===========================================================
IR_Start:
    CLRR		count   
IR_Start_working:
    LDWI		0XA2							;9ms�ߵ�ƽ
    SUBWR		count,0
    BTSC		STATUS,0
    LJUMP		IR_Start_no_work
	INCR		count,1
    BSR			ir_data
    LCALL		DELAY_8US
    BCR			ir_data
    LCALL		DELAY_18US
    BSR			ir_data
    LCALL		DELAY_8US
    BCR			ir_data
    LCALL		DELAY_18US
    LJUMP		IR_Start_working
IR_Start_no_work:
	CLRR		count
IR_Start_LOOP:
	LDWI		0X50							;4.5ms�͵�ƽ
    SUBWR		count,0
    BTSC		STATUS,0
    RET	
    INCR		count,1
    BCR			ir_data
    LCALL		DELAY_8US
    BCR			ir_data
    LCALL		DELAY_18US
    BCR			ir_data
    LCALL		DELAY_8US
    BCR			ir_data
    LCALL		DELAY_18US
    LJUMP		IR_Start_LOOP
;===========================================================
;��������IR_Stop
;���ܣ�	 ���ⷢ�͵�������9ms����2.25msֹͣ
;===========================================================
IR_Stop:
    CLRR		count   
IR_Stop_working:
    LDWI		0XA2							;9ms�ߵ�ƽ
    SUBWR		count,0
    BTSC		STATUS,0
    LJUMP		IR_Stop_no_work
	INCR		count,1
    BSR			ir_data
    LCALL		DELAY_8US
    BCR			ir_data
    LCALL		DELAY_18US
    BSR			ir_data
    LCALL		DELAY_8US
    BCR			ir_data
    LCALL		DELAY_18US
    LJUMP		IR_Stop_working
IR_Stop_no_work:
	CLRR		count
IR_Stop_LOOP:
	LDWI		0X28							;2.25ms�͵�ƽ
    SUBWR		count,0
    BTSC		STATUS,0
    RET	
    INCR		count,1
    BCR			ir_data
    LCALL		DELAY_8US
    BCR			ir_data
    LCALL		DELAY_18US
    BCR			ir_data
    LCALL		DELAY_8US
    BCR			ir_data
    LCALL		DELAY_18US
    LJUMP		IR_Stop_LOOP
;===========================================================
;��������IR_Send_Byte
;���ܣ�	 ���ⷢ��һ���ֽ�
;===========================================================
IR_Send_Byte:
	CLRR		countbyte
IR_Send_Byte_LOOP:
	LDWI		0X08
    SUBWR		countbyte,0
    BTSC		STATUS,0
    RET
	INCR		countbyte,1
    BTSS		IRDATTEMP,0
    LJUMP		$+3
    LCALL		IR_Send_data1
    LJUMP		$+2
    LCALL		IR_Send_data0
    
	BCR			STATUS,0
    RRR			IRDATTEMP,1
    LJUMP		IR_Send_Byte_LOOP
;===========================================================
;��������IR_Send_data0
;���ܣ�	  ���ⷢ������0
;===========================================================
IR_Send_data0:
	CLRR		count
IR_Send_data0_working:  
	LDWI		0X11							;0.56ms�ߵ�ƽ
    SUBWR		count,0
    BTSC		STATUS,0
    LJUMP		IR_Send_data0_no_work
    INCR		count,1
    BSR			ir_data
    LCALL		DELAY_8US
    BCR			ir_data
    LCALL		DELAY_18US
    LJUMP		IR_Send_data0_working
IR_Send_data0_no_work:
	CLRR		count
IR_Send_data0_LOOP: 
	LDWI		0X11							;0.56ms�͵�ƽ
    SUBWR		count,0
    BTSC		STATUS,0
    RET
    INCR		count,1
    BCR			ir_data
    LCALL		DELAY_8US
    BCR			ir_data
    LCALL		DELAY_18US
    LJUMP		IR_Send_data0_LOOP	
;===========================================================
;��������IR_Send_data1
;���ܣ�	 ���ⷢ������1
;===========================================================
IR_Send_data1:
	CLRR		count
IR_Send_data1_working:  
	LDWI		0X11							;0.56ms�ߵ�ƽ
    SUBWR		count,0
    BTSC		STATUS,0
    LJUMP		IR_Send_data1_no_work
    INCR		count,1
    BSR			ir_data
    LCALL		DELAY_8US
    BCR			ir_data
    LCALL		DELAY_18US
    LJUMP		IR_Send_data1_working
IR_Send_data1_no_work:
	CLRR		count
IR_Send_data1_LOOP: 
	LDWI		0X37							;1.69ms�͵�ƽ
    SUBWR		count,0
    BTSC		STATUS,0
    RET
    INCR		count,1
    BCR			ir_data
    LCALL		DELAY_8US
    BCR			ir_data
    LCALL		DELAY_18US
    LJUMP		IR_Send_data1_LOOP
;===========================================================
;��������scanky_key
;���ܣ�	 ����������ʱ��������Ҫ���͵ĺ������֣���������������
;===========================================================
scanky_key:
	BTSS		key
    LJUMP		scanky_key_down
    LJUMP		scanky_key_up
scanky_key_down:
	BTSC		f_key
    LJUMP		scanky_key_long
    INCR		key_short_count,1
    LDWI		0X0A
    SUBWR		key_short_count,0
    BTSS		STATUS,0
    RET
    CLRR		key_short_count   
	BSR			f_key 
	LCALL		IR_Start
    LDWI		0X55
    STR			IRDATTEMP
    LCALL		IR_Send_Byte
    LDWI		0XAA
    STR			IRDATTEMP
    LCALL		IR_Send_Byte
    LDWI		0X01
    STR			IRDATTEMP
    LCALL		IR_Send_Byte
    LDWI		0XFE
    STR			IRDATTEMP
    LCALL		IR_Send_Byte
    LCALL		IR_Send_data0		
    RET
scanky_key_long:
	LCALL		IR_Stop
	RET
scanky_key_up:
	CLRR		key_short_count
    BCR			f_key
    RET
;===========================================================
;��������sleep_mode
;���ܣ�	 �޲�������˯��
;===========================================================
sleep_mode:
	BTSS		key
    RET
    BTSC		f_key
    RET
    
	LCALL		PA_INT_INITIAL
    SLEEP
    NOP
    RET

	END							
    