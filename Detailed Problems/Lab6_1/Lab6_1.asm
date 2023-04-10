
_display:

;Lab6_1.c,5 :: 		void display(char p, char c)
;Lab6_1.c,7 :: 		PORTA &= 0b11110000;
	IN         R16, PORTA+0
	ANDI       R16, 240
	OUT        PORTA+0, R16
;Lab6_1.c,8 :: 		PORTC &= 0b00000000;
	IN         R16, PORTC+0
	ANDI       R16, 0
	OUT        PORTC+0, R16
;Lab6_1.c,10 :: 		switch(c){
	JMP        L_display0
;Lab6_1.c,11 :: 		case 0: PORTC|=0b00111111; break;
L_display2:
	IN         R16, PORTC+0
	ORI        R16, 63
	OUT        PORTC+0, R16
	JMP        L_display1
;Lab6_1.c,12 :: 		case 1: PORTC|=0b00000110; break;
L_display3:
	IN         R16, PORTC+0
	ORI        R16, 6
	OUT        PORTC+0, R16
	JMP        L_display1
;Lab6_1.c,13 :: 		case 2: PORTC|=0b01011011; break;
L_display4:
	IN         R16, PORTC+0
	ORI        R16, 91
	OUT        PORTC+0, R16
	JMP        L_display1
;Lab6_1.c,14 :: 		case 3: PORTC|=0b01001111; break;
L_display5:
	IN         R16, PORTC+0
	ORI        R16, 79
	OUT        PORTC+0, R16
	JMP        L_display1
;Lab6_1.c,15 :: 		case 4: PORTC|=0b01100110; break;
L_display6:
	IN         R16, PORTC+0
	ORI        R16, 102
	OUT        PORTC+0, R16
	JMP        L_display1
;Lab6_1.c,16 :: 		case 5: PORTC|=0b01101101; break;
L_display7:
	IN         R16, PORTC+0
	ORI        R16, 109
	OUT        PORTC+0, R16
	JMP        L_display1
;Lab6_1.c,17 :: 		case 6: PORTC|=0b01111101; break;
L_display8:
	IN         R16, PORTC+0
	ORI        R16, 125
	OUT        PORTC+0, R16
	JMP        L_display1
;Lab6_1.c,18 :: 		case 7: PORTC|=0b00000111; break;
L_display9:
	IN         R16, PORTC+0
	ORI        R16, 7
	OUT        PORTC+0, R16
	JMP        L_display1
;Lab6_1.c,19 :: 		case 8: PORTC|=0b01111111; break;
L_display10:
	IN         R16, PORTC+0
	ORI        R16, 127
	OUT        PORTC+0, R16
	JMP        L_display1
;Lab6_1.c,20 :: 		case 9: PORTC|=0b01101111; break;
L_display11:
	IN         R16, PORTC+0
	ORI        R16, 111
	OUT        PORTC+0, R16
	JMP        L_display1
;Lab6_1.c,21 :: 		}
L_display0:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L__display32
	JMP        L_display2
L__display32:
	LDI        R27, 1
	CP         R3, R27
	BRNE       L__display33
	JMP        L_display3
L__display33:
	LDI        R27, 2
	CP         R3, R27
	BRNE       L__display34
	JMP        L_display4
L__display34:
	LDI        R27, 3
	CP         R3, R27
	BRNE       L__display35
	JMP        L_display5
L__display35:
	LDI        R27, 4
	CP         R3, R27
	BRNE       L__display36
	JMP        L_display6
L__display36:
	LDI        R27, 5
	CP         R3, R27
	BRNE       L__display37
	JMP        L_display7
L__display37:
	LDI        R27, 6
	CP         R3, R27
	BRNE       L__display38
	JMP        L_display8
L__display38:
	LDI        R27, 7
	CP         R3, R27
	BRNE       L__display39
	JMP        L_display9
L__display39:
	LDI        R27, 8
	CP         R3, R27
	BRNE       L__display40
	JMP        L_display10
L__display40:
	LDI        R27, 9
	CP         R3, R27
	BRNE       L__display41
	JMP        L_display11
L__display41:
L_display1:
;Lab6_1.c,22 :: 		switch(p){
	JMP        L_display12
;Lab6_1.c,23 :: 		case 4: PORTA|=0b00000001; break;
L_display14:
	IN         R16, PORTA+0
	ORI        R16, 1
	OUT        PORTA+0, R16
	JMP        L_display13
;Lab6_1.c,24 :: 		case 3: PORTA|=0b00000010; break;
L_display15:
	IN         R27, PORTA+0
	SBR        R27, 2
	OUT        PORTA+0, R27
	JMP        L_display13
;Lab6_1.c,25 :: 		case 2: PORTA|=0b00000100; break;
L_display16:
	IN         R16, PORTA+0
	ORI        R16, 4
	OUT        PORTA+0, R16
	JMP        L_display13
;Lab6_1.c,26 :: 		case 1: PORTA|=0b00001000; break;
L_display17:
	IN         R16, PORTA+0
	ORI        R16, 8
	OUT        PORTA+0, R16
	JMP        L_display13
;Lab6_1.c,27 :: 		}
L_display12:
	LDI        R27, 4
	CP         R2, R27
	BRNE       L__display42
	JMP        L_display14
L__display42:
	LDI        R27, 3
	CP         R2, R27
	BRNE       L__display43
	JMP        L_display15
L__display43:
	LDI        R27, 2
	CP         R2, R27
	BRNE       L__display44
	JMP        L_display16
L__display44:
	LDI        R27, 1
	CP         R2, R27
	BRNE       L__display45
	JMP        L_display17
L__display45:
L_display13:
;Lab6_1.c,29 :: 		}
L_end_display:
	RET
; end of _display

_init_adc:

;Lab6_1.c,31 :: 		void init_adc()
;Lab6_1.c,33 :: 		ADMUX = 0b01000000;
	LDI        R27, 64
	OUT        ADMUX+0, R27
;Lab6_1.c,34 :: 		ADCSRA= 0b10000111;
	LDI        R27, 135
	OUT        ADCSRA+0, R27
;Lab6_1.c,35 :: 		}
L_end_init_adc:
	RET
; end of _init_adc

_readADC:

;Lab6_1.c,37 :: 		int readADC(char ch)
;Lab6_1.c,39 :: 		ADMUX &= 0b11100000;
	IN         R16, ADMUX+0
	ANDI       R16, 224
	OUT        ADMUX+0, R16
;Lab6_1.c,40 :: 		ADMUX |= ch;
	OR         R16, R2
	OUT        ADMUX+0, R16
;Lab6_1.c,41 :: 		ADCSRA|=(1<<6);
	IN         R27, ADCSRA+0
	SBR        R27, 64
	OUT        ADCSRA+0, R27
;Lab6_1.c,42 :: 		while(ADCSRA&(1<<6));
L_readADC18:
	IN         R16, ADCSRA+0
	SBRS       R16, 6
	JMP        L_readADC19
	JMP        L_readADC18
L_readADC19:
;Lab6_1.c,43 :: 		adc_l = ADCL;
	IN         R16, ADCL+0
	STS        _adc_l+0, R16
	LDI        R27, 0
	STS        _adc_l+1, R27
;Lab6_1.c,44 :: 		adc_h = ADCH;
	IN         R16, ADCH+0
	STS        _adc_h+0, R16
	LDI        R27, 0
	STS        _adc_h+1, R27
;Lab6_1.c,45 :: 		return (adc_h << 8) | adc_l;
	LDS        R16, _adc_h+0
	LDS        R17, _adc_h+1
	MOV        R19, R16
	CLR        R18
	LDS        R16, _adc_l+0
	LDS        R17, _adc_l+1
	OR         R16, R18
	OR         R17, R19
;Lab6_1.c,46 :: 		}
L_end_readADC:
	RET
; end of _readADC

_init_timer:

;Lab6_1.c,49 :: 		void init_timer()
;Lab6_1.c,51 :: 		TCCR0 = 0b00001011;
	LDI        R27, 11
	OUT        TCCR0+0, R27
;Lab6_1.c,52 :: 		TCNT0 = 0;
	LDI        R27, 0
	OUT        TCNT0+0, R27
;Lab6_1.c,53 :: 		OCR0  = 124;
	LDI        R27, 124
	OUT        OCR0+0, R27
;Lab6_1.c,54 :: 		TIMSK|= 0b00000010;  //activeaza intreruperea de Output Compare Match (comparare la iesire)
	IN         R27, TIMSK+0
	SBR        R27, 2
	OUT        TIMSK+0, R27
;Lab6_1.c,55 :: 		}
L_end_init_timer:
	RET
; end of _init_timer

_init_PWM:

;Lab6_1.c,58 :: 		void init_PWM(){
;Lab6_1.c,59 :: 		DDRD |=1<<7;        //PD7 - output
	IN         R27, DDRD+0
	SBR        R27, 128
	OUT        DDRD+0, R27
;Lab6_1.c,60 :: 		TCCR2 = 0b01101111;
	LDI        R27, 111
	OUT        TCCR2+0, R27
;Lab6_1.c,61 :: 		OCR2 = 128;                 //factor de umplere 50%
	LDI        R27, 128
	OUT        OCR2+0, R27
;Lab6_1.c,62 :: 		}
L_end_init_PWM:
	RET
; end of _init_PWM

_ISR_Timer0:
	PUSH       R30
	PUSH       R31
	PUSH       R27
	IN         R27, SREG+0
	PUSH       R27

;Lab6_1.c,65 :: 		void ISR_Timer0() iv IVT_ADDR_TIMER0_COMP ics ICS_AUTO {
;Lab6_1.c,67 :: 		poz++;
	PUSH       R2
	PUSH       R3
	LDS        R16, _poz+0
	LDS        R17, _poz+1
	SUBI       R16, 255
	SBCI       R17, 255
	STS        _poz+0, R16
	STS        _poz+1, R17
;Lab6_1.c,68 :: 		switch(poz){
	JMP        L_ISR_Timer020
;Lab6_1.c,69 :: 		case 1: display(1,value%10);break;
L_ISR_Timer022:
	LDI        R20, 10
	LDI        R21, 0
	LDS        R16, _value+0
	LDS        R17, _value+1
	CALL       _Div_16x16_S+0
	MOVW       R16, R24
	MOV        R3, R16
	LDI        R27, 1
	MOV        R2, R27
	CALL       _display+0
	JMP        L_ISR_Timer021
;Lab6_1.c,70 :: 		case 2: display(2,(value/10)%10);break;
L_ISR_Timer023:
	LDI        R20, 10
	LDI        R21, 0
	LDS        R16, _value+0
	LDS        R17, _value+1
	CALL       _Div_16x16_S+0
	MOVW       R16, R22
	LDI        R20, 10
	LDI        R21, 0
	CALL       _Div_16x16_S+0
	MOVW       R16, R24
	MOV        R3, R16
	LDI        R27, 2
	MOV        R2, R27
	CALL       _display+0
	JMP        L_ISR_Timer021
;Lab6_1.c,71 :: 		case 3: display(3,(value/100)%10);break;
L_ISR_Timer024:
	LDI        R20, 100
	LDI        R21, 0
	LDS        R16, _value+0
	LDS        R17, _value+1
	CALL       _Div_16x16_S+0
	MOVW       R16, R22
	LDI        R20, 10
	LDI        R21, 0
	CALL       _Div_16x16_S+0
	MOVW       R16, R24
	MOV        R3, R16
	LDI        R27, 3
	MOV        R2, R27
	CALL       _display+0
	JMP        L_ISR_Timer021
;Lab6_1.c,72 :: 		case 4: display(4,(value/1000)%10); poz=0;break;
L_ISR_Timer025:
	LDI        R20, 232
	LDI        R21, 3
	LDS        R16, _value+0
	LDS        R17, _value+1
	CALL       _Div_16x16_S+0
	MOVW       R16, R22
	LDI        R20, 10
	LDI        R21, 0
	CALL       _Div_16x16_S+0
	MOVW       R16, R24
	MOV        R3, R16
	LDI        R27, 4
	MOV        R2, R27
	CALL       _display+0
	LDI        R27, 0
	STS        _poz+0, R27
	STS        _poz+1, R27
	JMP        L_ISR_Timer021
;Lab6_1.c,73 :: 		}
L_ISR_Timer020:
	LDS        R16, _poz+0
	LDS        R17, _poz+1
	CPI        R17, 0
	BRNE       L__ISR_Timer051
	CPI        R16, 1
L__ISR_Timer051:
	BRNE       L__ISR_Timer052
	JMP        L_ISR_Timer022
L__ISR_Timer052:
	LDS        R16, _poz+0
	LDS        R17, _poz+1
	CPI        R17, 0
	BRNE       L__ISR_Timer053
	CPI        R16, 2
L__ISR_Timer053:
	BRNE       L__ISR_Timer054
	JMP        L_ISR_Timer023
L__ISR_Timer054:
	LDS        R16, _poz+0
	LDS        R17, _poz+1
	CPI        R17, 0
	BRNE       L__ISR_Timer055
	CPI        R16, 3
L__ISR_Timer055:
	BRNE       L__ISR_Timer056
	JMP        L_ISR_Timer024
L__ISR_Timer056:
	LDS        R16, _poz+0
	LDS        R17, _poz+1
	CPI        R17, 0
	BRNE       L__ISR_Timer057
	CPI        R16, 4
L__ISR_Timer057:
	BRNE       L__ISR_Timer058
	JMP        L_ISR_Timer025
L__ISR_Timer058:
L_ISR_Timer021:
;Lab6_1.c,75 :: 		if (ms==100){
	LDS        R16, _ms+0
	LDS        R17, _ms+1
	CPI        R17, 0
	BRNE       L__ISR_Timer059
	CPI        R16, 100
L__ISR_Timer059:
	BREQ       L__ISR_Timer060
	JMP        L_ISR_Timer026
L__ISR_Timer060:
;Lab6_1.c,76 :: 		value = (readADC(6)/4);
	LDI        R27, 6
	MOV        R2, R27
	CALL       _readADC+0
	LDI        R20, 4
	LDI        R21, 0
	CALL       _Div_16x16_S+0
	MOVW       R16, R22
	STS        _value+0, R16
	STS        _value+1, R17
;Lab6_1.c,77 :: 		OCR2 = value;
	OUT        OCR2+0, R16
;Lab6_1.c,78 :: 		ms=0;
	LDI        R27, 0
	STS        _ms+0, R27
	STS        _ms+1, R27
;Lab6_1.c,79 :: 		}
	JMP        L_ISR_Timer027
L_ISR_Timer026:
;Lab6_1.c,80 :: 		else ms++;
	LDS        R16, _ms+0
	LDS        R17, _ms+1
	SUBI       R16, 255
	SBCI       R17, 255
	STS        _ms+0, R16
	STS        _ms+1, R17
L_ISR_Timer027:
;Lab6_1.c,81 :: 		}
L_end_ISR_Timer0:
	POP        R3
	POP        R2
	POP        R27
	OUT        SREG+0, R27
	POP        R27
	POP        R31
	POP        R30
	RETI
; end of _ISR_Timer0

_main:
	LDI        R27, 255
	OUT        SPL+0, R27
	LDI        R27, 0
	OUT        SPL+1, R27

;Lab6_1.c,83 :: 		void main(){
;Lab6_1.c,84 :: 		DDRA = 0b00001111;  //seteaza pinii de iesire
	LDI        R27, 15
	OUT        DDRA+0, R27
;Lab6_1.c,85 :: 		DDRC = 0b01111111;
	LDI        R27, 127
	OUT        DDRC+0, R27
;Lab6_1.c,87 :: 		init_adc();
	CALL       _init_adc+0
;Lab6_1.c,88 :: 		init_timer();
	CALL       _init_timer+0
;Lab6_1.c,89 :: 		init_PWM();
	CALL       _init_PWM+0
;Lab6_1.c,90 :: 		SREG |= 1<<7;            //set enable interrupt - activeaza intreruperile
	IN         R27, SREG+0
	SBR        R27, 128
	OUT        SREG+0, R27
;Lab6_1.c,92 :: 		for(;;){
L_main28:
;Lab6_1.c,93 :: 		}
	JMP        L_main28
;Lab6_1.c,94 :: 		}
L_end_main:
L__main_end_loop:
	JMP        L__main_end_loop
; end of _main
