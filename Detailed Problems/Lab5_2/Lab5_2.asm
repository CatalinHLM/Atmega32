
_display:

;Lab5_2.c,6 :: 		void display(char p, char c){
;Lab5_2.c,7 :: 		PORTA &= 0b11110000;
	IN         R16, PORTA+0
	ANDI       R16, 240
	OUT        PORTA+0, R16
;Lab5_2.c,8 :: 		PORTC &= 0b00000000;
	IN         R16, PORTC+0
	ANDI       R16, 0
	OUT        PORTC+0, R16
;Lab5_2.c,10 :: 		switch(c)
	JMP        L_display0
;Lab5_2.c,12 :: 		case 0: PORTC|=0b00111111; break;
L_display2:
	IN         R16, PORTC+0
	ORI        R16, 63
	OUT        PORTC+0, R16
	JMP        L_display1
;Lab5_2.c,13 :: 		case 1: PORTC|=0b00000110; break;
L_display3:
	IN         R16, PORTC+0
	ORI        R16, 6
	OUT        PORTC+0, R16
	JMP        L_display1
;Lab5_2.c,14 :: 		case 2: PORTC|=~0b10100100; break;
L_display4:
	IN         R16, PORTC+0
	ORI        R16, 91
	OUT        PORTC+0, R16
	JMP        L_display1
;Lab5_2.c,15 :: 		case 3: PORTC|=~0b10110000; break;
L_display5:
	IN         R16, PORTC+0
	ORI        R16, 79
	OUT        PORTC+0, R16
	JMP        L_display1
;Lab5_2.c,16 :: 		case 4: PORTC|=~0b10011001; break;
L_display6:
	IN         R16, PORTC+0
	ORI        R16, 102
	OUT        PORTC+0, R16
	JMP        L_display1
;Lab5_2.c,17 :: 		case 5: PORTC|=~0b10010010; break;
L_display7:
	IN         R16, PORTC+0
	ORI        R16, 109
	OUT        PORTC+0, R16
	JMP        L_display1
;Lab5_2.c,18 :: 		case 6: PORTC|=~0b10000010; break;
L_display8:
	IN         R16, PORTC+0
	ORI        R16, 125
	OUT        PORTC+0, R16
	JMP        L_display1
;Lab5_2.c,19 :: 		case 7: PORTC|=~0b11111000; break;
L_display9:
	IN         R16, PORTC+0
	ORI        R16, 7
	OUT        PORTC+0, R16
	JMP        L_display1
;Lab5_2.c,20 :: 		case 8: PORTC|=~0b10000000; break;
L_display10:
	IN         R16, PORTC+0
	ORI        R16, 127
	OUT        PORTC+0, R16
	JMP        L_display1
;Lab5_2.c,21 :: 		case 9: PORTC|=~0b10010000; break;
L_display11:
	IN         R16, PORTC+0
	ORI        R16, 111
	OUT        PORTC+0, R16
	JMP        L_display1
;Lab5_2.c,22 :: 		}
L_display0:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L__display30
	JMP        L_display2
L__display30:
	LDI        R27, 1
	CP         R3, R27
	BRNE       L__display31
	JMP        L_display3
L__display31:
	LDI        R27, 2
	CP         R3, R27
	BRNE       L__display32
	JMP        L_display4
L__display32:
	LDI        R27, 3
	CP         R3, R27
	BRNE       L__display33
	JMP        L_display5
L__display33:
	LDI        R27, 4
	CP         R3, R27
	BRNE       L__display34
	JMP        L_display6
L__display34:
	LDI        R27, 5
	CP         R3, R27
	BRNE       L__display35
	JMP        L_display7
L__display35:
	LDI        R27, 6
	CP         R3, R27
	BRNE       L__display36
	JMP        L_display8
L__display36:
	LDI        R27, 7
	CP         R3, R27
	BRNE       L__display37
	JMP        L_display9
L__display37:
	LDI        R27, 8
	CP         R3, R27
	BRNE       L__display38
	JMP        L_display10
L__display38:
	LDI        R27, 9
	CP         R3, R27
	BRNE       L__display39
	JMP        L_display11
L__display39:
L_display1:
;Lab5_2.c,23 :: 		switch(p)
	JMP        L_display12
;Lab5_2.c,25 :: 		case 1: PORTA|=0b00001000; break;
L_display14:
	IN         R27, PORTA+0
	SBR        R27, 8
	OUT        PORTA+0, R27
	JMP        L_display13
;Lab5_2.c,26 :: 		case 2: PORTA|=0b00000100; PORTC|=(1<<7); break;
L_display15:
	IN         R16, PORTA+0
	ORI        R16, 4
	OUT        PORTA+0, R16
	IN         R16, PORTC+0
	ORI        R16, 128
	OUT        PORTC+0, R16
	JMP        L_display13
;Lab5_2.c,27 :: 		case 3: PORTA|=0b00000010; break;
L_display16:
	IN         R16, PORTA+0
	ORI        R16, 2
	OUT        PORTA+0, R16
	JMP        L_display13
;Lab5_2.c,28 :: 		case 4: PORTA|=0b00000001; break;
L_display17:
	IN         R16, PORTA+0
	ORI        R16, 1
	OUT        PORTA+0, R16
	JMP        L_display13
;Lab5_2.c,29 :: 		}
L_display12:
	LDI        R27, 1
	CP         R2, R27
	BRNE       L__display40
	JMP        L_display14
L__display40:
	LDI        R27, 2
	CP         R2, R27
	BRNE       L__display41
	JMP        L_display15
L__display41:
	LDI        R27, 3
	CP         R2, R27
	BRNE       L__display42
	JMP        L_display16
L__display42:
	LDI        R27, 4
	CP         R2, R27
	BRNE       L__display43
	JMP        L_display17
L__display43:
L_display13:
;Lab5_2.c,30 :: 		}
L_end_display:
	RET
; end of _display

_Init_Interrupt0:

;Lab5_2.c,32 :: 		void Init_Interrupt0()                 //Configurarea intreruperii externe INT0 pentru Auto-trigger
;Lab5_2.c,34 :: 		GICR  = 0b11000000;
	LDI        R27, 192
	OUT        GICR+0, R27
;Lab5_2.c,35 :: 		MCUCR = 0b00001111;
	LDI        R27, 15
	OUT        MCUCR+0, R27
;Lab5_2.c,36 :: 		}
L_end_Init_Interrupt0:
	RET
; end of _Init_Interrupt0

_ISR_INT0:
	PUSH       R30
	PUSH       R31
	PUSH       R27
	IN         R27, SREG+0
	PUSH       R27

;Lab5_2.c,38 :: 		void ISR_INT0() iv IVT_ADDR_INT0 ics ICS_AUTO {
;Lab5_2.c,41 :: 		}
L_end_ISR_INT0:
	POP        R27
	OUT        SREG+0, R27
	POP        R27
	POP        R31
	POP        R30
	RETI
; end of _ISR_INT0

_ISR_INT1:
	PUSH       R30
	PUSH       R31
	PUSH       R27
	IN         R27, SREG+0
	PUSH       R27

;Lab5_2.c,43 :: 		void ISR_INT1() iv IVT_ADDR_INT1 ics ICS_AUTO {
;Lab5_2.c,46 :: 		}
L_end_ISR_INT1:
	POP        R27
	OUT        SREG+0, R27
	POP        R27
	POP        R31
	POP        R30
	RETI
; end of _ISR_INT1

_Init_Timer:

;Lab5_2.c,49 :: 		void Init_Timer(){
;Lab5_2.c,50 :: 		TCCR0 = 0b00001011; //CTC-3,6, Prescaler-0,1,2
	LDI        R27, 11
	OUT        TCCR0+0, R27
;Lab5_2.c,51 :: 		TCNT0 = 0;
	LDI        R27, 0
	OUT        TCNT0+0, R27
;Lab5_2.c,52 :: 		OCR0 = 125;
	LDI        R27, 125
	OUT        OCR0+0, R27
;Lab5_2.c,53 :: 		TIMSK |= 0b00000010;//set interrupt OCM
	IN         R27, TIMSK+0
	SBR        R27, 2
	OUT        TIMSK+0, R27
;Lab5_2.c,54 :: 		}
L_end_Init_Timer:
	RET
; end of _Init_Timer

_Init_ADC:

;Lab5_2.c,56 :: 		void Init_ADC()
;Lab5_2.c,58 :: 		ADMUX = 0b01000000;             //Referinta AVCC with external capacitor
	LDI        R27, 64
	OUT        ADMUX+0, R27
;Lab5_2.c,59 :: 		ADCSRA= 0b10000111;             //Enable ADC - bit 7, 128 Division Factor - bit 2-0
	LDI        R27, 135
	OUT        ADCSRA+0, R27
;Lab5_2.c,60 :: 		ADCSRA |= (1<<3);               //ADC Interrupt Enable
	IN         R27, ADCSRA+0
	SBR        R27, 8
	OUT        ADCSRA+0, R27
;Lab5_2.c,61 :: 		ADCSRA |= (1<<5);             //ADC Auto-trigger on external interrupt 0
	IN         R16, ADCSRA+0
	ORI        R16, 32
	OUT        ADCSRA+0, R16
;Lab5_2.c,62 :: 		SFIOR = 0b01000000;
	LDI        R27, 64
	OUT        SFIOR+0, R27
;Lab5_2.c,63 :: 		}
L_end_Init_ADC:
	RET
; end of _Init_ADC

_adc:

;Lab5_2.c,65 :: 		int adc(char ch){
;Lab5_2.c,66 :: 		ADMUX &= 0b11100000;             //Reseteaza canalul de conversie
	IN         R16, ADMUX+0
	ANDI       R16, 224
	OUT        ADMUX+0, R16
;Lab5_2.c,67 :: 		ADMUX |= ch;                     //Seteaza canalul conversiei
	OR         R16, R2
	OUT        ADMUX+0, R16
;Lab5_2.c,68 :: 		ADCSRA|=(1<<6);                  //Porneste conversia
	IN         R27, ADCSRA+0
	SBR        R27, 64
	OUT        ADCSRA+0, R27
;Lab5_2.c,69 :: 		}
L_end_adc:
	RET
; end of _adc

_ADC_Completed:
	PUSH       R30
	PUSH       R31
	PUSH       R27
	IN         R27, SREG+0
	PUSH       R27

;Lab5_2.c,71 :: 		void ADC_Completed() iv IVT_ADDR_ADC ics ICS_AUTO {
;Lab5_2.c,72 :: 		l = ADCL;
	IN         R16, ADCL+0
	STS        _l+0, R16
;Lab5_2.c,73 :: 		h = ADCH;
	IN         R16, ADCH+0
	STS        _h+0, R16
;Lab5_2.c,74 :: 		adc_value = h<<8 | l ;
	LDS        R16, _h+0
	MOV        R19, R16
	CLR        R18
	LDS        R16, _l+0
	LDI        R17, 0
	OR         R16, R18
	OR         R17, R19
	STS        _adc_value+0, R16
	STS        _adc_value+1, R17
;Lab5_2.c,75 :: 		Vin = ((float)adc_value*5)/1024;            //Vin - Tensiunea de intrare in ADC
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
	STS        _Vin+0, R16
	STS        _Vin+1, R17
	STS        _Vin+2, R18
	STS        _Vin+3, R19
;Lab5_2.c,76 :: 		tmp = Vin*1000/10;                          //tmp = temperatura masurata - 10 mv/grd.C
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
;Lab5_2.c,77 :: 		value = (int)(tmp*10);
	LDI        R20, 0
	LDI        R21, 0
	LDI        R22, 32
	LDI        R23, 65
	CALL       _float_fpmul1+0
	CALL       _float_fpint+0
	STS        _value+0, R16
	STS        _value+1, R17
;Lab5_2.c,79 :: 		}
L_end_ADC_Completed:
	POP        R27
	OUT        SREG+0, R27
	POP        R27
	POP        R31
	POP        R30
	RETI
; end of _ADC_Completed

_Timer0_ISR:
	PUSH       R30
	PUSH       R31
	PUSH       R27
	IN         R27, SREG+0
	PUSH       R27

;Lab5_2.c,81 :: 		void Timer0_ISR() iv IVT_ADDR_TIMER0_COMP ics ICS_AUTO{
;Lab5_2.c,82 :: 		poz++;
	PUSH       R2
	PUSH       R3
	LDS        R16, _poz+0
	LDS        R17, _poz+1
	SUBI       R16, 255
	SBCI       R17, 255
	STS        _poz+0, R16
	STS        _poz+1, R17
;Lab5_2.c,83 :: 		switch(poz)
	JMP        L_Timer0_ISR18
;Lab5_2.c,84 :: 		{       case 1: display(1,value%10);break;
L_Timer0_ISR20:
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
	JMP        L_Timer0_ISR19
;Lab5_2.c,85 :: 		case 2: display(2,(value/10)%10);break;
L_Timer0_ISR21:
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
	JMP        L_Timer0_ISR19
;Lab5_2.c,86 :: 		case 3: display(3,(value/100)%10);break;
L_Timer0_ISR22:
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
	JMP        L_Timer0_ISR19
;Lab5_2.c,87 :: 		case 4: display(4,(value/1000)%10); poz=0;break;
L_Timer0_ISR23:
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
	JMP        L_Timer0_ISR19
;Lab5_2.c,88 :: 		}
L_Timer0_ISR18:
	LDS        R16, _poz+0
	LDS        R17, _poz+1
	CPI        R17, 0
	BRNE       L__Timer0_ISR52
	CPI        R16, 1
L__Timer0_ISR52:
	BRNE       L__Timer0_ISR53
	JMP        L_Timer0_ISR20
L__Timer0_ISR53:
	LDS        R16, _poz+0
	LDS        R17, _poz+1
	CPI        R17, 0
	BRNE       L__Timer0_ISR54
	CPI        R16, 2
L__Timer0_ISR54:
	BRNE       L__Timer0_ISR55
	JMP        L_Timer0_ISR21
L__Timer0_ISR55:
	LDS        R16, _poz+0
	LDS        R17, _poz+1
	CPI        R17, 0
	BRNE       L__Timer0_ISR56
	CPI        R16, 3
L__Timer0_ISR56:
	BRNE       L__Timer0_ISR57
	JMP        L_Timer0_ISR22
L__Timer0_ISR57:
	LDS        R16, _poz+0
	LDS        R17, _poz+1
	CPI        R17, 0
	BRNE       L__Timer0_ISR58
	CPI        R16, 4
L__Timer0_ISR58:
	BRNE       L__Timer0_ISR59
	JMP        L_Timer0_ISR23
L__Timer0_ISR59:
L_Timer0_ISR19:
;Lab5_2.c,89 :: 		if (ms==100)
	LDS        R16, _ms+0
	LDS        R17, _ms+1
	CPI        R17, 0
	BRNE       L__Timer0_ISR60
	CPI        R16, 100
L__Timer0_ISR60:
	BREQ       L__Timer0_ISR61
	JMP        L_Timer0_ISR24
L__Timer0_ISR61:
;Lab5_2.c,91 :: 		adc(7);		//CANAL -> 7 (PA7)
	LDI        R27, 7
	MOV        R2, R27
	CALL       _adc+0
;Lab5_2.c,92 :: 		ms=0;
	LDI        R27, 0
	STS        _ms+0, R27
	STS        _ms+1, R27
;Lab5_2.c,93 :: 		}
	JMP        L_Timer0_ISR25
L_Timer0_ISR24:
;Lab5_2.c,95 :: 		ms++;
	LDS        R16, _ms+0
	LDS        R17, _ms+1
	SUBI       R16, 255
	SBCI       R17, 255
	STS        _ms+0, R16
	STS        _ms+1, R17
L_Timer0_ISR25:
;Lab5_2.c,96 :: 		}
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

;Lab5_2.c,98 :: 		void main(){
;Lab5_2.c,99 :: 		DDRA = 0b00001111;  //seteaza pinii de iesire
	LDI        R27, 15
	OUT        DDRA+0, R27
;Lab5_2.c,100 :: 		DDRC = 0b11111111;
	LDI        R27, 255
	OUT        DDRC+0, R27
;Lab5_2.c,101 :: 		Init_Interrupt0();
	CALL       _Init_Interrupt0+0
;Lab5_2.c,102 :: 		Init_Timer();
	CALL       _Init_Timer+0
;Lab5_2.c,103 :: 		Init_ADC();
	CALL       _Init_ADC+0
;Lab5_2.c,104 :: 		SREG |= 1<<7;        //Set Enable Interrupt
	IN         R27, SREG+0
	SBR        R27, 128
	OUT        SREG+0, R27
;Lab5_2.c,106 :: 		for(;;)
L_main26:
;Lab5_2.c,109 :: 		}
	JMP        L_main26
;Lab5_2.c,110 :: 		}
L_end_main:
L__main_end_loop:
	JMP        L__main_end_loop
; end of _main
