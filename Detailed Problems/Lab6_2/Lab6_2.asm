
_display:

;Lab6_2.c,7 :: 		void display(char p, char c)
;Lab6_2.c,9 :: 		PORTA &= 0b11110000;
	IN         R16, PORTA+0
	ANDI       R16, 240
	OUT        PORTA+0, R16
;Lab6_2.c,10 :: 		PORTC &= 0b00000000;
	IN         R16, PORTC+0
	ANDI       R16, 0
	OUT        PORTC+0, R16
;Lab6_2.c,12 :: 		switch(c){
	JMP        L_display0
;Lab6_2.c,13 :: 		case 0: PORTC|=0b00111111; break;
L_display2:
	IN         R16, PORTC+0
	ORI        R16, 63
	OUT        PORTC+0, R16
	JMP        L_display1
;Lab6_2.c,14 :: 		case 1: PORTC|=0b00000110; break;
L_display3:
	IN         R16, PORTC+0
	ORI        R16, 6
	OUT        PORTC+0, R16
	JMP        L_display1
;Lab6_2.c,15 :: 		case 2: PORTC|=0b01011011; break;
L_display4:
	IN         R16, PORTC+0
	ORI        R16, 91
	OUT        PORTC+0, R16
	JMP        L_display1
;Lab6_2.c,16 :: 		case 3: PORTC|=0b01001111; break;
L_display5:
	IN         R16, PORTC+0
	ORI        R16, 79
	OUT        PORTC+0, R16
	JMP        L_display1
;Lab6_2.c,17 :: 		case 4: PORTC|=0b01100110; break;
L_display6:
	IN         R16, PORTC+0
	ORI        R16, 102
	OUT        PORTC+0, R16
	JMP        L_display1
;Lab6_2.c,18 :: 		case 5: PORTC|=0b01101101; break;
L_display7:
	IN         R16, PORTC+0
	ORI        R16, 109
	OUT        PORTC+0, R16
	JMP        L_display1
;Lab6_2.c,19 :: 		case 6: PORTC|=0b01111101; break;
L_display8:
	IN         R16, PORTC+0
	ORI        R16, 125
	OUT        PORTC+0, R16
	JMP        L_display1
;Lab6_2.c,20 :: 		case 7: PORTC|=0b00000111; break;
L_display9:
	IN         R16, PORTC+0
	ORI        R16, 7
	OUT        PORTC+0, R16
	JMP        L_display1
;Lab6_2.c,21 :: 		case 8: PORTC|=0b01111111; break;
L_display10:
	IN         R16, PORTC+0
	ORI        R16, 127
	OUT        PORTC+0, R16
	JMP        L_display1
;Lab6_2.c,22 :: 		case 9: PORTC|=0b01101111; break;
L_display11:
	IN         R16, PORTC+0
	ORI        R16, 111
	OUT        PORTC+0, R16
	JMP        L_display1
;Lab6_2.c,23 :: 		}
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
;Lab6_2.c,24 :: 		switch(p){
	JMP        L_display12
;Lab6_2.c,25 :: 		case 1: PORTA|=0b00000001; break;
L_display14:
	IN         R16, PORTA+0
	ORI        R16, 1
	OUT        PORTA+0, R16
	JMP        L_display13
;Lab6_2.c,26 :: 		case 2: PORTA|=0b00000010; break;
L_display15:
	IN         R27, PORTA+0
	SBR        R27, 2
	OUT        PORTA+0, R27
	JMP        L_display13
;Lab6_2.c,27 :: 		case 3: PORTA|=0b00000100; break;
L_display16:
	IN         R16, PORTA+0
	ORI        R16, 4
	OUT        PORTA+0, R16
	JMP        L_display13
;Lab6_2.c,28 :: 		case 4: PORTA|=0b00001000; break;
L_display17:
	IN         R16, PORTA+0
	ORI        R16, 8
	OUT        PORTA+0, R16
	JMP        L_display13
;Lab6_2.c,29 :: 		}
L_display12:
	LDI        R27, 1
	CP         R2, R27
	BRNE       L__display42
	JMP        L_display14
L__display42:
	LDI        R27, 2
	CP         R2, R27
	BRNE       L__display43
	JMP        L_display15
L__display43:
	LDI        R27, 3
	CP         R2, R27
	BRNE       L__display44
	JMP        L_display16
L__display44:
	LDI        R27, 4
	CP         R2, R27
	BRNE       L__display45
	JMP        L_display17
L__display45:
L_display13:
;Lab6_2.c,31 :: 		}
L_end_display:
	RET
; end of _display

_init_adc:

;Lab6_2.c,33 :: 		void init_adc()
;Lab6_2.c,35 :: 		ADMUX = 0b01000000;
	LDI        R27, 64
	OUT        ADMUX+0, R27
;Lab6_2.c,36 :: 		ADCSRA= 0b10000111;
	LDI        R27, 135
	OUT        ADCSRA+0, R27
;Lab6_2.c,37 :: 		}
L_end_init_adc:
	RET
; end of _init_adc

_adc:

;Lab6_2.c,39 :: 		int adc(char ch)
;Lab6_2.c,41 :: 		ADMUX &= 0b11100000;
	IN         R16, ADMUX+0
	ANDI       R16, 224
	OUT        ADMUX+0, R16
;Lab6_2.c,42 :: 		ADMUX |= ch;
	OR         R16, R2
	OUT        ADMUX+0, R16
;Lab6_2.c,43 :: 		ADCSRA|=(1<<6);
	IN         R27, ADCSRA+0
	SBR        R27, 64
	OUT        ADCSRA+0, R27
;Lab6_2.c,44 :: 		while(ADCSRA&(1<<6));
L_adc18:
	IN         R16, ADCSRA+0
	SBRS       R16, 6
	JMP        L_adc19
	JMP        L_adc18
L_adc19:
;Lab6_2.c,45 :: 		l = ADCL;
	IN         R16, ADCL+0
	STS        _l+0, R16
	LDI        R27, 0
	STS        _l+1, R27
;Lab6_2.c,46 :: 		h = ADCH;
	IN         R16, ADCH+0
	STS        _h+0, R16
	LDI        R27, 0
	STS        _h+1, R27
;Lab6_2.c,47 :: 		return h << 8 | l;
	LDS        R16, _h+0
	LDS        R17, _h+1
	MOV        R19, R16
	CLR        R18
	LDS        R16, _l+0
	LDS        R17, _l+1
	OR         R16, R18
	OR         R17, R19
;Lab6_2.c,48 :: 		}
L_end_adc:
	RET
; end of _adc

_init_timer:

;Lab6_2.c,51 :: 		void init_timer()
;Lab6_2.c,53 :: 		TCCR0 = 0b00001011;
	LDI        R27, 11
	OUT        TCCR0+0, R27
;Lab6_2.c,54 :: 		TCNT0 = 0;
	LDI        R27, 0
	OUT        TCNT0+0, R27
;Lab6_2.c,55 :: 		OCR0  = 125;
	LDI        R27, 125
	OUT        OCR0+0, R27
;Lab6_2.c,56 :: 		TIMSK|= 0b00000010;  //activeaza intreruperea de Output Compare Match (comparare la iesire)
	IN         R27, TIMSK+0
	SBR        R27, 2
	OUT        TIMSK+0, R27
;Lab6_2.c,57 :: 		}
L_end_init_timer:
	RET
; end of _init_timer

_ISR_Timer0:
	PUSH       R30
	PUSH       R31
	PUSH       R27
	IN         R27, SREG+0
	PUSH       R27
	PUSH       R28
	PUSH       R29
	IN         R28, SPL+0
	IN         R29, SPL+1
	SBIW       R28, 8
	OUT        SPL+0, R28
	OUT        SPL+1, R29
	ADIW       R28, 1

;Lab6_2.c,61 :: 		void ISR_Timer0() iv IVT_ADDR_TIMER0_COMP ics ICS_AUTO {
;Lab6_2.c,63 :: 		poz++;
	PUSH       R2
	PUSH       R3
	LDS        R16, _poz+0
	LDS        R17, _poz+1
	SUBI       R16, 255
	SBCI       R17, 255
	STS        _poz+0, R16
	STS        _poz+1, R17
;Lab6_2.c,64 :: 		switch(poz)
	JMP        L_ISR_Timer020
;Lab6_2.c,66 :: 		case 1: display(1,value%10);break;
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
;Lab6_2.c,67 :: 		case 2: display(2,(value/10)%10);break;
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
;Lab6_2.c,68 :: 		case 3: display(3,(value/100)%10);break;
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
;Lab6_2.c,69 :: 		case 4: display(4,(value/1000)%10); poz=0;break;
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
;Lab6_2.c,70 :: 		}
L_ISR_Timer020:
	LDS        R16, _poz+0
	LDS        R17, _poz+1
	CPI        R17, 0
	BRNE       L__ISR_Timer050
	CPI        R16, 1
L__ISR_Timer050:
	BRNE       L__ISR_Timer051
	JMP        L_ISR_Timer022
L__ISR_Timer051:
	LDS        R16, _poz+0
	LDS        R17, _poz+1
	CPI        R17, 0
	BRNE       L__ISR_Timer052
	CPI        R16, 2
L__ISR_Timer052:
	BRNE       L__ISR_Timer053
	JMP        L_ISR_Timer023
L__ISR_Timer053:
	LDS        R16, _poz+0
	LDS        R17, _poz+1
	CPI        R17, 0
	BRNE       L__ISR_Timer054
	CPI        R16, 3
L__ISR_Timer054:
	BRNE       L__ISR_Timer055
	JMP        L_ISR_Timer024
L__ISR_Timer055:
	LDS        R16, _poz+0
	LDS        R17, _poz+1
	CPI        R17, 0
	BRNE       L__ISR_Timer056
	CPI        R16, 4
L__ISR_Timer056:
	BRNE       L__ISR_Timer057
	JMP        L_ISR_Timer025
L__ISR_Timer057:
L_ISR_Timer021:
;Lab6_2.c,72 :: 		if (ms==100)
	LDS        R16, _ms+0
	LDS        R17, _ms+1
	CPI        R17, 0
	BRNE       L__ISR_Timer058
	CPI        R16, 100
L__ISR_Timer058:
	BREQ       L__ISR_Timer059
	JMP        L_ISR_Timer026
L__ISR_Timer059:
;Lab6_2.c,74 :: 		adv = (adc(6));
	LDI        R27, 6
	MOV        R2, R27
	CALL       _adc+0
	STS        _adv+0, R16
	STS        _adv+1, R17
;Lab6_2.c,75 :: 		freq = ((float)(fMax-fMin))/ADCmax*adv+fMin;
	LDS        R0, _fMin+0
	LDS        R1, _fMin+1
	LDS        R16, _fMax+0
	LDS        R17, _fMax+1
	SUB        R16, R0
	SBC        R17, R1
	LDI        R18, 0
	SBRC       R17, 7
	LDI        R18, 255
	MOV        R19, R18
	CALL       _float_slong2fp+0
	STD        Y+4, R16
	STD        Y+5, R17
	STD        Y+6, R18
	STD        Y+7, R19
	LDS        R16, _ADCMax+0
	LDS        R17, _ADCMax+1
	LDI        R18, 0
	SBRC       R17, 7
	LDI        R18, 255
	MOV        R19, R18
	CALL       _float_slong2fp+0
	STD        Y+0, R16
	STD        Y+1, R17
	STD        Y+2, R18
	STD        Y+3, R19
	LDD        R16, Y+4
	LDD        R17, Y+5
	LDD        R18, Y+6
	LDD        R19, Y+7
	PUSH       R23
	PUSH       R22
	PUSH       R21
	PUSH       R20
	LDD        R20, Y+0
	LDD        R21, Y+1
	LDD        R22, Y+2
	LDD        R23, Y+3
	CALL       _float_fpdiv1+0
	POP        R20
	POP        R21
	POP        R22
	POP        R23
	STD        Y+0, R16
	STD        Y+1, R17
	STD        Y+2, R18
	STD        Y+3, R19
	LDS        R16, _adv+0
	LDS        R17, _adv+1
	LDI        R18, 0
	SBRC       R17, 7
	LDI        R18, 255
	MOV        R19, R18
	CALL       _float_slong2fp+0
	LDD        R20, Y+0
	LDD        R21, Y+1
	LDD        R22, Y+2
	LDD        R23, Y+3
	CALL       _float_fpmul1+0
	STD        Y+0, R16
	STD        Y+1, R17
	STD        Y+2, R18
	STD        Y+3, R19
	LDS        R16, _fMin+0
	LDS        R17, _fMin+1
	LDI        R18, 0
	SBRC       R17, 7
	LDI        R18, 255
	MOV        R19, R18
	CALL       _float_slong2fp+0
	LDD        R20, Y+0
	LDD        R21, Y+1
	LDD        R22, Y+2
	LDD        R23, Y+3
	CALL       _float_fpadd1+0
	CALL       _float_fpint+0
	STS        _freq+0, R16
	STS        _freq+1, R17
;Lab6_2.c,76 :: 		TOP = 1000000/freq-1;
	MOVW       R20, R16
	LDI        R22, 0
	SBRC       R17, 7
	LDI        R22, 255
	MOV        R23, R22
	LDI        R16, 64
	LDI        R17, 66
	LDI        R18, 15
	LDI        R19, 0
	CALL       _Div_32x32_S+0
	MOVW       R16, R18
	MOVW       R18, R20
	MOVW       R20, R16
	SUBI       R20, 1
	SBCI       R21, 0
	STS        _TOP+0, R20
	STS        _TOP+1, R21
;Lab6_2.c,77 :: 		ICR1H = TOP>>8;
	MOV        R16, R21
	LDI        R17, 0
	SBRC       R16, 7
	LDI        R17, 255
	OUT        ICR1H+0, R16
;Lab6_2.c,78 :: 		ICR1L = TOP;
	OUT        ICR1L+0, R20
;Lab6_2.c,79 :: 		OCR1BH = ((TOP+1)/2)>>8;
	MOVW       R16, R20
	SUBI       R16, 255
	SBCI       R17, 255
	LDI        R20, 2
	LDI        R21, 0
	CALL       _Div_16x16_S+0
	MOVW       R16, R22
	MOV        R16, R17
	LDI        R17, 0
	SBRC       R16, 7
	LDI        R17, 255
	OUT        OCR1BH+0, R16
;Lab6_2.c,80 :: 		OCR1BL = (TOP+1)/2;
	LDS        R16, _TOP+0
	LDS        R17, _TOP+1
	SUBI       R16, 255
	SBCI       R17, 255
	LDI        R20, 2
	LDI        R21, 0
	CALL       _Div_16x16_S+0
	MOVW       R16, R22
	OUT        OCR1BL+0, R16
;Lab6_2.c,81 :: 		value=freq/10;
	LDI        R20, 10
	LDI        R21, 0
	LDS        R16, _freq+0
	LDS        R17, _freq+1
	CALL       _Div_16x16_S+0
	MOVW       R16, R22
	STS        _value+0, R16
	STS        _value+1, R17
;Lab6_2.c,82 :: 		ms=0;
	LDI        R27, 0
	STS        _ms+0, R27
	STS        _ms+1, R27
;Lab6_2.c,83 :: 		}
	JMP        L_ISR_Timer027
L_ISR_Timer026:
;Lab6_2.c,85 :: 		ms++;
	LDS        R16, _ms+0
	LDS        R17, _ms+1
	SUBI       R16, 255
	SBCI       R17, 255
	STS        _ms+0, R16
	STS        _ms+1, R17
L_ISR_Timer027:
;Lab6_2.c,86 :: 		}
L_end_ISR_Timer0:
	POP        R3
	POP        R2
	ADIW       R28, 7
	OUT        SPL+0, R28
	OUT        SPL+1, R29
	POP        R29
	POP        R28
	POP        R27
	OUT        SREG+0, R27
	POP        R27
	POP        R31
	POP        R30
	RETI
; end of _ISR_Timer0

_init_Buzzer:

;Lab6_2.c,88 :: 		void init_Buzzer()
;Lab6_2.c,90 :: 		TCCR1A = 0b00100010;
	LDI        R27, 34
	OUT        TCCR1A+0, R27
;Lab6_2.c,91 :: 		TCCR1B = 0b00011010;
	LDI        R27, 26
	OUT        TCCR1B+0, R27
;Lab6_2.c,92 :: 		}
L_end_init_Buzzer:
	RET
; end of _init_Buzzer

_main:
	LDI        R27, 255
	OUT        SPL+0, R27
	LDI        R27, 0
	OUT        SPL+1, R27

;Lab6_2.c,94 :: 		void main(){
;Lab6_2.c,95 :: 		DDRA = 0b00001111;  //seteaza pinii de iesire
	LDI        R27, 15
	OUT        DDRA+0, R27
;Lab6_2.c,96 :: 		DDRC = 0b01111111;
	LDI        R27, 127
	OUT        DDRC+0, R27
;Lab6_2.c,97 :: 		DDRD|=1<<4; //PD4 - output
	IN         R27, DDRD+0
	SBR        R27, 16
	OUT        DDRD+0, R27
;Lab6_2.c,98 :: 		init_adc();
	CALL       _init_adc+0
;Lab6_2.c,99 :: 		init_timer();
	CALL       _init_timer+0
;Lab6_2.c,100 :: 		init_Buzzer();
	CALL       _init_Buzzer+0
;Lab6_2.c,101 :: 		SREG |= 1<<7;            //set enable interrupt - activeaza intreruperile
	IN         R16, SREG+0
	ORI        R16, 128
	OUT        SREG+0, R16
;Lab6_2.c,103 :: 		for(;;){
L_main28:
;Lab6_2.c,104 :: 		}
	JMP        L_main28
;Lab6_2.c,105 :: 		}
L_end_main:
L__main_end_loop:
	JMP        L__main_end_loop
; end of _main
