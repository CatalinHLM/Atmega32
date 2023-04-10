
_display:

;Lab5_1.c,6 :: 		void display(char p, char c)
;Lab5_1.c,8 :: 		PORTA &= 0b11110000;
	IN         R16, PORTA+0
	ANDI       R16, 240
	OUT        PORTA+0, R16
;Lab5_1.c,9 :: 		PORTC &= 0b00000000;
	IN         R16, PORTC+0
	ANDI       R16, 0
	OUT        PORTC+0, R16
;Lab5_1.c,11 :: 		switch(c){
	JMP        L_display0
;Lab5_1.c,12 :: 		case 0: PORTC|=0b00111111; break;
L_display2:
	IN         R16, PORTC+0
	ORI        R16, 63
	OUT        PORTC+0, R16
	JMP        L_display1
;Lab5_1.c,13 :: 		case 1: PORTC|=0b00000110; break;
L_display3:
	IN         R16, PORTC+0
	ORI        R16, 6
	OUT        PORTC+0, R16
	JMP        L_display1
;Lab5_1.c,14 :: 		case 2: PORTC|=0b01011011; break;
L_display4:
	IN         R16, PORTC+0
	ORI        R16, 91
	OUT        PORTC+0, R16
	JMP        L_display1
;Lab5_1.c,15 :: 		case 3: PORTC|=0b01001111; break;
L_display5:
	IN         R16, PORTC+0
	ORI        R16, 79
	OUT        PORTC+0, R16
	JMP        L_display1
;Lab5_1.c,16 :: 		case 4: PORTC|=0b01100110; break;
L_display6:
	IN         R16, PORTC+0
	ORI        R16, 102
	OUT        PORTC+0, R16
	JMP        L_display1
;Lab5_1.c,17 :: 		case 5: PORTC|=0b01101101; break;
L_display7:
	IN         R16, PORTC+0
	ORI        R16, 109
	OUT        PORTC+0, R16
	JMP        L_display1
;Lab5_1.c,18 :: 		case 6: PORTC|=0b01111101; break;
L_display8:
	IN         R16, PORTC+0
	ORI        R16, 125
	OUT        PORTC+0, R16
	JMP        L_display1
;Lab5_1.c,19 :: 		case 7: PORTC|=0b00000111; break;
L_display9:
	IN         R16, PORTC+0
	ORI        R16, 7
	OUT        PORTC+0, R16
	JMP        L_display1
;Lab5_1.c,20 :: 		case 8: PORTC|=0b01111111; break;
L_display10:
	IN         R16, PORTC+0
	ORI        R16, 127
	OUT        PORTC+0, R16
	JMP        L_display1
;Lab5_1.c,21 :: 		case 9: PORTC|=0b01101111; break;
L_display11:
	IN         R16, PORTC+0
	ORI        R16, 111
	OUT        PORTC+0, R16
	JMP        L_display1
;Lab5_1.c,22 :: 		}
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
;Lab5_1.c,23 :: 		switch(p){
	JMP        L_display12
;Lab5_1.c,24 :: 		case 1: PORTA|=0b00001000; break;
L_display14:
	IN         R27, PORTA+0
	SBR        R27, 8
	OUT        PORTA+0, R27
	JMP        L_display13
;Lab5_1.c,25 :: 		case 2: PORTA|=0b00000100; PORTC |= 1<<7;break;
L_display15:
	IN         R16, PORTA+0
	ORI        R16, 4
	OUT        PORTA+0, R16
	IN         R16, PORTC+0
	ORI        R16, 128
	OUT        PORTC+0, R16
	JMP        L_display13
;Lab5_1.c,26 :: 		case 3: PORTA|=0b00000010; break;
L_display16:
	IN         R16, PORTA+0
	ORI        R16, 2
	OUT        PORTA+0, R16
	JMP        L_display13
;Lab5_1.c,27 :: 		case 4: PORTA|=0b00000001; break;
L_display17:
	IN         R16, PORTA+0
	ORI        R16, 1
	OUT        PORTA+0, R16
	JMP        L_display13
;Lab5_1.c,28 :: 		}
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
;Lab5_1.c,30 :: 		}
L_end_display:
	RET
; end of _display

_init_timer:

;Lab5_1.c,32 :: 		void init_timer(){
;Lab5_1.c,33 :: 		TCCR0 = 0b00001011; //CTC-3,6, Prescaler-0,1,2
	LDI        R27, 11
	OUT        TCCR0+0, R27
;Lab5_1.c,34 :: 		TCNT0 = 0;
	LDI        R27, 0
	OUT        TCNT0+0, R27
;Lab5_1.c,35 :: 		OCR0 = 124;
	LDI        R27, 124
	OUT        OCR0+0, R27
;Lab5_1.c,36 :: 		TIMSK |= 0b00000010;//set interrupt OCM
	IN         R27, TIMSK+0
	SBR        R27, 2
	OUT        TIMSK+0, R27
;Lab5_1.c,37 :: 		}
L_end_init_timer:
	RET
; end of _init_timer

_init_adc:

;Lab5_1.c,39 :: 		void init_adc(){
;Lab5_1.c,40 :: 		ADMUX = 0b00000000;            //channel ADC7
	LDI        R27, 0
	OUT        ADMUX+0, R27
;Lab5_1.c,41 :: 		ADCSRA= 0b10000111;            // IE - ADC bit 3  , AutoTrigger bit 5
	LDI        R27, 135
	OUT        ADCSRA+0, R27
;Lab5_1.c,42 :: 		}
L_end_init_adc:
	RET
; end of _init_adc

_readADC:

;Lab5_1.c,44 :: 		int readADC (char ch){
;Lab5_1.c,45 :: 		ADMUX &= 0b11100000;                              //Reseteaza canalul de conversie
	IN         R16, ADMUX+0
	ANDI       R16, 224
	OUT        ADMUX+0, R16
;Lab5_1.c,46 :: 		ADMUX |= ch;                                      //Seteaza canalul conversiei
	OR         R16, R2
	OUT        ADMUX+0, R16
;Lab5_1.c,47 :: 		ADCSRA |= (1<<6);                                 //Începe conversia
	IN         R27, ADCSRA+0
	SBR        R27, 64
	OUT        ADCSRA+0, R27
;Lab5_1.c,48 :: 		while(ADCSRA & (1<<6));                       //A?teapta finalizarea conversiei
L_readADC18:
	IN         R16, ADCSRA+0
	SBRS       R16, 6
	JMP        L_readADC19
	JMP        L_readADC18
L_readADC19:
;Lab5_1.c,49 :: 		adc_l = ADCL;
	IN         R16, ADCL+0
	STS        _adc_l+0, R16
;Lab5_1.c,50 :: 		adc_h = ADCH;
	IN         R16, ADCH+0
	STS        _adc_h+0, R16
;Lab5_1.c,51 :: 		return ((adc_h << 8) | adc_l);
	LDS        R16, _adc_h+0
	MOV        R19, R16
	CLR        R18
	LDS        R16, _adc_l+0
	LDI        R17, 0
	OR         R16, R18
	OR         R17, R19
;Lab5_1.c,52 :: 		}
L_end_readADC:
	RET
; end of _readADC

_Timer0_ISR:
	PUSH       R30
	PUSH       R31
	PUSH       R27
	IN         R27, SREG+0
	PUSH       R27

;Lab5_1.c,54 :: 		void Timer0_ISR() iv IVT_ADDR_TIMER0_COMP{
;Lab5_1.c,55 :: 		digit++;
	PUSH       R2
	PUSH       R3
	LDS        R16, _digit+0
	LDS        R17, _digit+1
	SUBI       R16, 255
	SBCI       R17, 255
	STS        _digit+0, R16
	STS        _digit+1, R17
;Lab5_1.c,56 :: 		switch(digit)
	JMP        L_Timer0_ISR20
;Lab5_1.c,58 :: 		case 1: display(1,value%10);break;
L_Timer0_ISR22:
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
	JMP        L_Timer0_ISR21
;Lab5_1.c,59 :: 		case 2: display(2,(value/10)%10);break;
L_Timer0_ISR23:
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
	JMP        L_Timer0_ISR21
;Lab5_1.c,60 :: 		case 3: display(3,(value/100)%10);break;
L_Timer0_ISR24:
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
	JMP        L_Timer0_ISR21
;Lab5_1.c,61 :: 		case 4: display(4,(value/1000)%10); digit=0;break;
L_Timer0_ISR25:
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
	STS        _digit+0, R27
	STS        _digit+1, R27
	JMP        L_Timer0_ISR21
;Lab5_1.c,62 :: 		}
L_Timer0_ISR20:
	LDS        R16, _digit+0
	LDS        R17, _digit+1
	CPI        R17, 0
	BRNE       L__Timer0_ISR50
	CPI        R16, 1
L__Timer0_ISR50:
	BRNE       L__Timer0_ISR51
	JMP        L_Timer0_ISR22
L__Timer0_ISR51:
	LDS        R16, _digit+0
	LDS        R17, _digit+1
	CPI        R17, 0
	BRNE       L__Timer0_ISR52
	CPI        R16, 2
L__Timer0_ISR52:
	BRNE       L__Timer0_ISR53
	JMP        L_Timer0_ISR23
L__Timer0_ISR53:
	LDS        R16, _digit+0
	LDS        R17, _digit+1
	CPI        R17, 0
	BRNE       L__Timer0_ISR54
	CPI        R16, 3
L__Timer0_ISR54:
	BRNE       L__Timer0_ISR55
	JMP        L_Timer0_ISR24
L__Timer0_ISR55:
	LDS        R16, _digit+0
	LDS        R17, _digit+1
	CPI        R17, 0
	BRNE       L__Timer0_ISR56
	CPI        R16, 4
L__Timer0_ISR56:
	BRNE       L__Timer0_ISR57
	JMP        L_Timer0_ISR25
L__Timer0_ISR57:
L_Timer0_ISR21:
;Lab5_1.c,64 :: 		if (ms==100)
	LDS        R16, _ms+0
	LDS        R17, _ms+1
	CPI        R17, 0
	BRNE       L__Timer0_ISR58
	CPI        R16, 100
L__Timer0_ISR58:
	BREQ       L__Timer0_ISR59
	JMP        L_Timer0_ISR26
L__Timer0_ISR59:
;Lab5_1.c,66 :: 		adv = readADC(7);
	LDI        R27, 7
	MOV        R2, R27
	CALL       _readADC+0
	STS        _adv+0, R16
	STS        _adv+1, R17
;Lab5_1.c,67 :: 		vin = 5.0*((float)adv)/1024;
	LDI        R18, 0
	SBRC       R17, 7
	LDI        R18, 255
	MOV        R19, R18
	CALL       _float_slong2fp+0
	LDI        R20, 0
	LDI        R21, 0
	LDI        R22, 160
	LDI        R23, 64
	CALL       _float_fpmul1+0
	LDI        R20, 0
	LDI        R21, 0
	LDI        R22, 128
	LDI        R23, 68
	CALL       _float_fpdiv1+0
	STS        _vin+0, R16
	STS        _vin+1, R17
	STS        _vin+2, R18
	STS        _vin+3, R19
;Lab5_1.c,68 :: 		tmp=vin*1000/10;
	LDI        R20, 0
	LDI        R21, 0
	LDI        R22, 122
	LDI        R23, 68
	CALL       _float_fpmul1+0
	LDI        R20, 0
	LDI        R21, 0
	LDI        R22, 32
	LDI        R23, 65
	CALL       _float_fpdiv1+0
	STS        _tmp+0, R16
	STS        _tmp+1, R17
	STS        _tmp+2, R18
	STS        _tmp+3, R19
;Lab5_1.c,69 :: 		value=tmp*10;
	LDI        R20, 0
	LDI        R21, 0
	LDI        R22, 32
	LDI        R23, 65
	CALL       _float_fpmul1+0
	CALL       _float_fpint+0
	STS        _value+0, R16
	STS        _value+1, R17
;Lab5_1.c,70 :: 		ms=0;
	LDI        R27, 0
	STS        _ms+0, R27
	STS        _ms+1, R27
;Lab5_1.c,71 :: 		}
	JMP        L_Timer0_ISR27
L_Timer0_ISR26:
;Lab5_1.c,73 :: 		ms++;
	LDS        R16, _ms+0
	LDS        R17, _ms+1
	SUBI       R16, 255
	SBCI       R17, 255
	STS        _ms+0, R16
	STS        _ms+1, R17
L_Timer0_ISR27:
;Lab5_1.c,74 :: 		}
L_end_Timer0_ISR:
	POP        R3
	POP        R2
	POP        R27
	OUT        SREG+0, R27
	POP        R27
	POP        R31
	POP        R30
	RETI
; end of _Timer0_ISR

_main:
	LDI        R27, 255
	OUT        SPL+0, R27
	LDI        R27, 0
	OUT        SPL+1, R27

;Lab5_1.c,76 :: 		void main(){
;Lab5_1.c,77 :: 		DDRA = 0b00001111;  //seteaza pinii de iesire
	LDI        R27, 15
	OUT        DDRA+0, R27
;Lab5_1.c,78 :: 		DDRC = 0b11111111;
	LDI        R27, 255
	OUT        DDRC+0, R27
;Lab5_1.c,79 :: 		init_timer();
	CALL       _init_timer+0
;Lab5_1.c,80 :: 		init_adc();
	CALL       _init_adc+0
;Lab5_1.c,81 :: 		SREG |= 1<<7;        //Set Enable Interrupt
	IN         R27, SREG+0
	SBR        R27, 128
	OUT        SREG+0, R27
;Lab5_1.c,82 :: 		for(;;);
L_main28:
	JMP        L_main28
;Lab5_1.c,83 :: 		}
L_end_main:
L__main_end_loop:
	JMP        L__main_end_loop
; end of _main
