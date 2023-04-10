
_display:

;Coloviu.c,8 :: 		void display(char p, char c)
;Coloviu.c,10 :: 		PORTA &= 0b11110000;
	IN         R16, PORTA+0
	ANDI       R16, 240
	OUT        PORTA+0, R16
;Coloviu.c,11 :: 		PORTC &= 0b00000000;
	IN         R16, PORTC+0
	ANDI       R16, 0
	OUT        PORTC+0, R16
;Coloviu.c,13 :: 		switch(c){
	JMP        L_display0
;Coloviu.c,14 :: 		case 0: PORTC|=0b00111111; break;
L_display2:
	IN         R16, PORTC+0
	ORI        R16, 63
	OUT        PORTC+0, R16
	JMP        L_display1
;Coloviu.c,15 :: 		case 1: PORTC|=0b00000110; break;
L_display3:
	IN         R16, PORTC+0
	ORI        R16, 6
	OUT        PORTC+0, R16
	JMP        L_display1
;Coloviu.c,16 :: 		case 2: PORTC|=0b01011011; break;
L_display4:
	IN         R16, PORTC+0
	ORI        R16, 91
	OUT        PORTC+0, R16
	JMP        L_display1
;Coloviu.c,17 :: 		case 3: PORTC|=0b01001111; break;
L_display5:
	IN         R16, PORTC+0
	ORI        R16, 79
	OUT        PORTC+0, R16
	JMP        L_display1
;Coloviu.c,18 :: 		case 4: PORTC|=0b01100110; break;
L_display6:
	IN         R16, PORTC+0
	ORI        R16, 102
	OUT        PORTC+0, R16
	JMP        L_display1
;Coloviu.c,19 :: 		case 5: PORTC|=0b01101101; break;
L_display7:
	IN         R16, PORTC+0
	ORI        R16, 109
	OUT        PORTC+0, R16
	JMP        L_display1
;Coloviu.c,20 :: 		case 6: PORTC|=0b01111101; break;
L_display8:
	IN         R16, PORTC+0
	ORI        R16, 125
	OUT        PORTC+0, R16
	JMP        L_display1
;Coloviu.c,21 :: 		case 7: PORTC|=0b00000111; break;
L_display9:
	IN         R16, PORTC+0
	ORI        R16, 7
	OUT        PORTC+0, R16
	JMP        L_display1
;Coloviu.c,22 :: 		case 8: PORTC|=0b01111111; break;
L_display10:
	IN         R16, PORTC+0
	ORI        R16, 127
	OUT        PORTC+0, R16
	JMP        L_display1
;Coloviu.c,23 :: 		case 9: PORTC|=0b01101111; break;
L_display11:
	IN         R16, PORTC+0
	ORI        R16, 111
	OUT        PORTC+0, R16
	JMP        L_display1
;Coloviu.c,24 :: 		}
L_display0:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L__display39
	JMP        L_display2
L__display39:
	LDI        R27, 1
	CP         R3, R27
	BRNE       L__display40
	JMP        L_display3
L__display40:
	LDI        R27, 2
	CP         R3, R27
	BRNE       L__display41
	JMP        L_display4
L__display41:
	LDI        R27, 3
	CP         R3, R27
	BRNE       L__display42
	JMP        L_display5
L__display42:
	LDI        R27, 4
	CP         R3, R27
	BRNE       L__display43
	JMP        L_display6
L__display43:
	LDI        R27, 5
	CP         R3, R27
	BRNE       L__display44
	JMP        L_display7
L__display44:
	LDI        R27, 6
	CP         R3, R27
	BRNE       L__display45
	JMP        L_display8
L__display45:
	LDI        R27, 7
	CP         R3, R27
	BRNE       L__display46
	JMP        L_display9
L__display46:
	LDI        R27, 8
	CP         R3, R27
	BRNE       L__display47
	JMP        L_display10
L__display47:
	LDI        R27, 9
	CP         R3, R27
	BRNE       L__display48
	JMP        L_display11
L__display48:
L_display1:
;Coloviu.c,25 :: 		switch(p){
	JMP        L_display12
;Coloviu.c,26 :: 		case 4: PORTA|=0b00000001; break;
L_display14:
	IN         R16, PORTA+0
	ORI        R16, 1
	OUT        PORTA+0, R16
	JMP        L_display13
;Coloviu.c,27 :: 		case 3: PORTA|=0b00000010; break;
L_display15:
	IN         R27, PORTA+0
	SBR        R27, 2
	OUT        PORTA+0, R27
	JMP        L_display13
;Coloviu.c,28 :: 		case 2: PORTA|=0b00000100; break;
L_display16:
	IN         R16, PORTA+0
	ORI        R16, 4
	OUT        PORTA+0, R16
	JMP        L_display13
;Coloviu.c,29 :: 		case 1: PORTA|=0b00001000; break;
L_display17:
	IN         R16, PORTA+0
	ORI        R16, 8
	OUT        PORTA+0, R16
	JMP        L_display13
;Coloviu.c,30 :: 		}
L_display12:
	LDI        R27, 4
	CP         R2, R27
	BRNE       L__display49
	JMP        L_display14
L__display49:
	LDI        R27, 3
	CP         R2, R27
	BRNE       L__display50
	JMP        L_display15
L__display50:
	LDI        R27, 2
	CP         R2, R27
	BRNE       L__display51
	JMP        L_display16
L__display51:
	LDI        R27, 1
	CP         R2, R27
	BRNE       L__display52
	JMP        L_display17
L__display52:
L_display13:
;Coloviu.c,32 :: 		}
L_end_display:
	RET
; end of _display

_INT1_ISR:
	PUSH       R30
	PUSH       R31
	PUSH       R27
	IN         R27, SREG+0
	PUSH       R27

;Coloviu.c,34 :: 		void INT1_ISR() iv IVT_ADDR_INT1 ics ICS_AUTO
;Coloviu.c,36 :: 		N=N+inc;
	LDS        R18, _N+0
	LDS        R19, _N+1
	LDS        R16, _inc+0
	LDS        R17, _inc+1
	ADD        R16, R18
	ADC        R17, R19
	STS        _N+0, R16
	STS        _N+1, R17
;Coloviu.c,37 :: 		}
L_end_INT1_ISR:
	POP        R27
	OUT        SREG+0, R27
	POP        R27
	POP        R31
	POP        R30
	RETI
; end of _INT1_ISR

_init_adc:

;Coloviu.c,39 :: 		void init_adc()
;Coloviu.c,41 :: 		ADMUX = 0b01000000;
	LDI        R27, 64
	OUT        ADMUX+0, R27
;Coloviu.c,42 :: 		ADCSRA= 0b10000111;
	LDI        R27, 135
	OUT        ADCSRA+0, R27
;Coloviu.c,43 :: 		}
L_end_init_adc:
	RET
; end of _init_adc

_readADC:

;Coloviu.c,45 :: 		int readADC(char ch)
;Coloviu.c,47 :: 		ADMUX &= 0b11100000;
	IN         R16, ADMUX+0
	ANDI       R16, 224
	OUT        ADMUX+0, R16
;Coloviu.c,48 :: 		ADMUX |= ch;
	OR         R16, R2
	OUT        ADMUX+0, R16
;Coloviu.c,49 :: 		ADCSRA|=(1<<6);
	IN         R27, ADCSRA+0
	SBR        R27, 64
	OUT        ADCSRA+0, R27
;Coloviu.c,50 :: 		while(ADCSRA&(1<<6));
L_readADC18:
	IN         R16, ADCSRA+0
	SBRS       R16, 6
	JMP        L_readADC19
	JMP        L_readADC18
L_readADC19:
;Coloviu.c,51 :: 		adc_l = ADCL;
	IN         R16, ADCL+0
	STS        _adc_l+0, R16
	LDI        R27, 0
	STS        _adc_l+1, R27
;Coloviu.c,52 :: 		adc_h = ADCH;
	IN         R16, ADCH+0
	STS        _adc_h+0, R16
	LDI        R27, 0
	STS        _adc_h+1, R27
;Coloviu.c,53 :: 		return (adc_h << 8) | adc_l;
	LDS        R16, _adc_h+0
	LDS        R17, _adc_h+1
	MOV        R19, R16
	CLR        R18
	LDS        R16, _adc_l+0
	LDS        R17, _adc_l+1
	OR         R16, R18
	OR         R17, R19
;Coloviu.c,54 :: 		}
L_end_readADC:
	RET
; end of _readADC

_init_INT:

;Coloviu.c,56 :: 		void init_INT()         //Configurarea intreruperii externe
;Coloviu.c,58 :: 		MCUCR = 0b00000101;	//any logical change
	LDI        R27, 5
	OUT        MCUCR+0, R27
;Coloviu.c,59 :: 		GICR  = 0b11000000;	//Int1, Int0
	LDI        R27, 192
	OUT        GICR+0, R27
;Coloviu.c,60 :: 		DDRD &= ~(1<<3);	//PD3 - Input
	IN         R27, DDRD+0
	CBR        R27, 8
	OUT        DDRD+0, R27
;Coloviu.c,61 :: 		}
L_end_init_INT:
	RET
; end of _init_INT

_init_timer1:

;Coloviu.c,63 :: 		void init_timer1()
;Coloviu.c,65 :: 		TCCR1A = 0b00000000; //CTC-0,1
	LDI        R27, 0
	OUT        TCCR1A+0, R27
;Coloviu.c,66 :: 		TCCR1B = 0b00001100; //CTC-3,4, Prescaler-0,1,2 (256)
	LDI        R27, 12
	OUT        TCCR1B+0, R27
;Coloviu.c,67 :: 		TCNT1H = 0;
	LDI        R27, 0
	OUT        TCNT1H+0, R27
;Coloviu.c,68 :: 		TCNT1L = 0;
	LDI        R27, 0
	OUT        TCNT1L+0, R27
;Coloviu.c,69 :: 		OCR1AH = 25000 >> 8;
	LDI        R27, 97
	OUT        OCR1AH+0, R27
;Coloviu.c,70 :: 		OCR1AL = 25000;
	LDI        R27, 168
	OUT        OCR1AL+0, R27
;Coloviu.c,71 :: 		TIMSK |= 0b00010000;//set interrupt OCM1A
	IN         R27, TIMSK+0
	SBR        R27, 16
	OUT        TIMSK+0, R27
;Coloviu.c,72 :: 		}
L_end_init_timer1:
	RET
; end of _init_timer1

_init_PWM:

;Coloviu.c,75 :: 		void init_PWM(){
;Coloviu.c,76 :: 		DDRB |=1<<3;        //PD7 - output
	IN         R27, DDRB+0
	SBR        R27, 8
	OUT        DDRB+0, R27
;Coloviu.c,77 :: 		TCCR0 = 0b01111011;
	LDI        R27, 123
	OUT        TCCR0+0, R27
;Coloviu.c,78 :: 		OCR0 = 102;                 //factor de umplere 60%
	LDI        R27, 102
	OUT        OCR0+0, R27
;Coloviu.c,79 :: 		}
L_end_init_PWM:
	RET
; end of _init_PWM

_INT0_ISR:
	PUSH       R30
	PUSH       R31
	PUSH       R27
	IN         R27, SREG+0
	PUSH       R27

;Coloviu.c,81 :: 		void INT0_ISR() iv IVT_ADDR_INT0 ics ICS_AUTO
;Coloviu.c,84 :: 		}
L_end_INT0_ISR:
	POP        R27
	OUT        SREG+0, R27
	POP        R27
	POP        R31
	POP        R30
	RETI
; end of _INT0_ISR

_intTimer1:
	PUSH       R30
	PUSH       R31
	PUSH       R27
	IN         R27, SREG+0
	PUSH       R27

;Coloviu.c,88 :: 		void intTimer1() iv IVT_ADDR_TIMER1_COMPA ics ICS_AUTO
;Coloviu.c,90 :: 		poz++;
	PUSH       R2
	PUSH       R3
	LDS        R16, _poz+0
	LDS        R17, _poz+1
	SUBI       R16, 255
	SBCI       R17, 255
	STS        _poz+0, R16
	STS        _poz+1, R17
;Coloviu.c,91 :: 		switch(poz){
	JMP        L_intTimer120
;Coloviu.c,92 :: 		case 1: display(1,N%10);break;
L_intTimer122:
	LDI        R20, 10
	LDI        R21, 0
	LDS        R16, _N+0
	LDS        R17, _N+1
	CALL       _Div_16x16_S+0
	MOVW       R16, R24
	MOV        R3, R16
	LDI        R27, 1
	MOV        R2, R27
	CALL       _display+0
	JMP        L_intTimer121
;Coloviu.c,93 :: 		case 2: display(2,(N/10)%10);break;
L_intTimer123:
	LDI        R20, 10
	LDI        R21, 0
	LDS        R16, _N+0
	LDS        R17, _N+1
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
	JMP        L_intTimer121
;Coloviu.c,94 :: 		case 3: display(3,(N/100)%10);break;
L_intTimer124:
	LDI        R20, 100
	LDI        R21, 0
	LDS        R16, _N+0
	LDS        R17, _N+1
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
	JMP        L_intTimer121
;Coloviu.c,95 :: 		case 4: display(4,(N/1000)%10); poz=0;break;
L_intTimer125:
	LDI        R20, 232
	LDI        R21, 3
	LDS        R16, _N+0
	LDS        R17, _N+1
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
	JMP        L_intTimer121
;Coloviu.c,96 :: 		}
L_intTimer120:
	LDS        R16, _poz+0
	LDS        R17, _poz+1
	CPI        R17, 0
	BRNE       L__intTimer161
	CPI        R16, 1
L__intTimer161:
	BRNE       L__intTimer162
	JMP        L_intTimer122
L__intTimer162:
	LDS        R16, _poz+0
	LDS        R17, _poz+1
	CPI        R17, 0
	BRNE       L__intTimer163
	CPI        R16, 2
L__intTimer163:
	BRNE       L__intTimer164
	JMP        L_intTimer123
L__intTimer164:
	LDS        R16, _poz+0
	LDS        R17, _poz+1
	CPI        R17, 0
	BRNE       L__intTimer165
	CPI        R16, 3
L__intTimer165:
	BRNE       L__intTimer166
	JMP        L_intTimer124
L__intTimer166:
	LDS        R16, _poz+0
	LDS        R17, _poz+1
	CPI        R17, 0
	BRNE       L__intTimer167
	CPI        R16, 4
L__intTimer167:
	BRNE       L__intTimer168
	JMP        L_intTimer125
L__intTimer168:
L_intTimer121:
;Coloviu.c,98 :: 		value = (readADC(6)/4);
	LDI        R27, 6
	MOV        R2, R27
	CALL       _readADC+0
	LDI        R20, 4
	LDI        R21, 0
	CALL       _Div_16x16_S+0
	MOVW       R16, R22
	STS        _value+0, R16
	STS        _value+1, R17
;Coloviu.c,99 :: 		if(value<85)
	LDI        R18, 85
	LDI        R19, 0
	CP         R16, R18
	CPC        R17, R19
	BRLT       L__intTimer169
	JMP        L_intTimer126
L__intTimer169:
;Coloviu.c,100 :: 		inc=-1;
	LDI        R27, 255
	STS        _inc+0, R27
	STS        _inc+1, R27
	JMP        L_intTimer127
L_intTimer126:
;Coloviu.c,101 :: 		else if(value>=85 && value<=170)
	LDS        R18, _value+0
	LDS        R19, _value+1
	LDI        R16, 85
	LDI        R17, 0
	CP         R18, R16
	CPC        R19, R17
	BRGE       L__intTimer170
	JMP        L__intTimer137
L__intTimer170:
	LDS        R18, _value+0
	LDS        R19, _value+1
	LDI        R16, 170
	LDI        R17, 0
	CP         R16, R18
	CPC        R17, R19
	BRGE       L__intTimer171
	JMP        L__intTimer136
L__intTimer171:
L__intTimer135:
;Coloviu.c,102 :: 		inc=0;
	LDI        R27, 0
	STS        _inc+0, R27
	STS        _inc+1, R27
	JMP        L_intTimer131
;Coloviu.c,101 :: 		else if(value>=85 && value<=170)
L__intTimer137:
L__intTimer136:
;Coloviu.c,104 :: 		inc=1;
	LDI        R27, 1
	STS        _inc+0, R27
	LDI        R27, 0
	STS        _inc+1, R27
L_intTimer131:
L_intTimer127:
;Coloviu.c,105 :: 		ms=0;
	LDI        R27, 0
	STS        _ms+0, R27
	STS        _ms+1, R27
;Coloviu.c,106 :: 		ms++;
	LDI        R27, 1
	STS        _ms+0, R27
	LDI        R27, 0
	STS        _ms+1, R27
;Coloviu.c,107 :: 		}
L_end_intTimer1:
	POP        R3
	POP        R2
	POP        R27
	OUT        SREG+0, R27
	POP        R27
	POP        R31
	POP        R30
	RETI
; end of _intTimer1

_main:
	LDI        R27, 255
	OUT        SPL+0, R27
	LDI        R27, 0
	OUT        SPL+1, R27

;Coloviu.c,112 :: 		void main(){
;Coloviu.c,113 :: 		DDRA = 0b00001111;  //seteaza pinii de iesire
	LDI        R27, 15
	OUT        DDRA+0, R27
;Coloviu.c,114 :: 		DDRC = 0b01111111;
	LDI        R27, 127
	OUT        DDRC+0, R27
;Coloviu.c,116 :: 		DDRD |=0b00000011;
	IN         R16, DDRD+0
	ORI        R16, 3
	OUT        DDRD+0, R16
;Coloviu.c,117 :: 		DDRD &=0b01111111;
	ANDI       R16, 127
	OUT        DDRD+0, R16
;Coloviu.c,119 :: 		PORTD |=11;
	IN         R16, PORTD+0
	ORI        R16, 11
	OUT        PORTD+0, R16
;Coloviu.c,122 :: 		init_adc();
	CALL       _init_adc+0
;Coloviu.c,123 :: 		init_timer1();
	CALL       _init_timer1+0
;Coloviu.c,124 :: 		init_PWM();
	CALL       _init_PWM+0
;Coloviu.c,125 :: 		init_INT();
	CALL       _init_INT+0
;Coloviu.c,127 :: 		SREG |= 1<<7;            //set enable interrupt - activeaza intreruperile
	IN         R27, SREG+0
	SBR        R27, 128
	OUT        SREG+0, R27
;Coloviu.c,129 :: 		for(;;){
L_main32:
;Coloviu.c,133 :: 		}
	JMP        L_main32
;Coloviu.c,134 :: 		}
L_end_main:
L__main_end_loop:
	JMP        L__main_end_loop
; end of _main
