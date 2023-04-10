
_display:

;Lab4_2.c,7 :: 		void display(char p, char c)
;Lab4_2.c,9 :: 		PORTA &= 0b11110000;
	IN         R16, PORTA+0
	ANDI       R16, 240
	OUT        PORTA+0, R16
;Lab4_2.c,10 :: 		PORTC &= 0b00000000;
	IN         R16, PORTC+0
	ANDI       R16, 0
	OUT        PORTC+0, R16
;Lab4_2.c,12 :: 		switch(c)
	JMP        L_display0
;Lab4_2.c,14 :: 		case 0: PORTC|=0b00111111; break;
L_display2:
	IN         R16, PORTC+0
	ORI        R16, 63
	OUT        PORTC+0, R16
	JMP        L_display1
;Lab4_2.c,15 :: 		case 1: PORTC|=0b00000110; break;
L_display3:
	IN         R16, PORTC+0
	ORI        R16, 6
	OUT        PORTC+0, R16
	JMP        L_display1
;Lab4_2.c,16 :: 		case 2: PORTC|=0b01011011; break;
L_display4:
	IN         R16, PORTC+0
	ORI        R16, 91
	OUT        PORTC+0, R16
	JMP        L_display1
;Lab4_2.c,17 :: 		case 3: PORTC|=0b01001111; break;
L_display5:
	IN         R16, PORTC+0
	ORI        R16, 79
	OUT        PORTC+0, R16
	JMP        L_display1
;Lab4_2.c,18 :: 		case 4: PORTC|=0b01100110; break;
L_display6:
	IN         R16, PORTC+0
	ORI        R16, 102
	OUT        PORTC+0, R16
	JMP        L_display1
;Lab4_2.c,19 :: 		case 5: PORTC|=0b01101101; break;
L_display7:
	IN         R16, PORTC+0
	ORI        R16, 109
	OUT        PORTC+0, R16
	JMP        L_display1
;Lab4_2.c,20 :: 		case 6: PORTC|=0b01111101; break;
L_display8:
	IN         R16, PORTC+0
	ORI        R16, 125
	OUT        PORTC+0, R16
	JMP        L_display1
;Lab4_2.c,21 :: 		case 7: PORTC|=0b00000111; break;
L_display9:
	IN         R16, PORTC+0
	ORI        R16, 7
	OUT        PORTC+0, R16
	JMP        L_display1
;Lab4_2.c,22 :: 		case 8: PORTC|=0b01111111; break;
L_display10:
	IN         R16, PORTC+0
	ORI        R16, 127
	OUT        PORTC+0, R16
	JMP        L_display1
;Lab4_2.c,23 :: 		case 9: PORTC|=0b01101111; break;
L_display11:
	IN         R16, PORTC+0
	ORI        R16, 111
	OUT        PORTC+0, R16
	JMP        L_display1
;Lab4_2.c,24 :: 		}
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
;Lab4_2.c,25 :: 		switch(p)
	JMP        L_display12
;Lab4_2.c,27 :: 		case 1: PORTA|=0b00001000; break;
L_display14:
	IN         R27, PORTA+0
	SBR        R27, 8
	OUT        PORTA+0, R27
	JMP        L_display13
;Lab4_2.c,28 :: 		case 2: PORTA|=0b00000100; break;
L_display15:
	IN         R16, PORTA+0
	ORI        R16, 4
	OUT        PORTA+0, R16
	JMP        L_display13
;Lab4_2.c,29 :: 		case 3: PORTA|=0b00000010; break;
L_display16:
	IN         R16, PORTA+0
	ORI        R16, 2
	OUT        PORTA+0, R16
	JMP        L_display13
;Lab4_2.c,30 :: 		case 4: PORTA|=0b00000001; break;
L_display17:
	IN         R16, PORTA+0
	ORI        R16, 1
	OUT        PORTA+0, R16
	JMP        L_display13
;Lab4_2.c,31 :: 		}
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
;Lab4_2.c,33 :: 		}
L_end_display:
	RET
; end of _display

_INT0_ISR:
	PUSH       R30
	PUSH       R31
	PUSH       R27
	IN         R27, SREG+0
	PUSH       R27

;Lab4_2.c,34 :: 		void INT0_ISR() iv IVT_ADDR_INT0 ics ICS_AUTO
;Lab4_2.c,36 :: 		s = m = ms = 0;
	LDI        R27, 0
	STS        _ms+0, R27
	STS        _ms+1, R27
	LDI        R27, 0
	STS        _m+0, R27
	STS        _m+1, R27
	LDI        R27, 0
	STS        _s+0, R27
	STS        _s+1, R27
;Lab4_2.c,37 :: 		}
L_end_INT0_ISR:
	POP        R27
	OUT        SREG+0, R27
	POP        R27
	POP        R31
	POP        R30
	RETI
; end of _INT0_ISR

_INT1_ISR:
	PUSH       R30
	PUSH       R31
	PUSH       R27
	IN         R27, SREG+0
	PUSH       R27

;Lab4_2.c,39 :: 		void INT1_ISR() iv IVT_ADDR_INT1 ics ICS_AUTO
;Lab4_2.c,41 :: 		start = !start;
	LDS        R16, _start+0
	TST        R16
	LDI        R27, 0
	BRNE       L__INT1_ISR48
	LDI        R27, 1
L__INT1_ISR48:
	MOV        R16, R27
	STS        _start+0, R16
;Lab4_2.c,42 :: 		}
L_end_INT1_ISR:
	POP        R27
	OUT        SREG+0, R27
	POP        R27
	POP        R31
	POP        R30
	RETI
; end of _INT1_ISR

_Init_INT:

;Lab4_2.c,44 :: 		void Init_INT()
;Lab4_2.c,46 :: 		GICR  = 0b11000000; //Int1, Int0
	LDI        R27, 192
	OUT        GICR+0, R27
;Lab4_2.c,47 :: 		MCUCR = 0b00001111; //Rising edge
	LDI        R27, 15
	OUT        MCUCR+0, R27
;Lab4_2.c,48 :: 		DDRD &= ~(1<<3); //PD3 - Input
	IN         R16, DDRD+0
	ANDI       R16, 247
	OUT        DDRD+0, R16
;Lab4_2.c,49 :: 		DDRD &= ~(1<<2); //PD2 - Input
	ANDI       R16, 251
	OUT        DDRD+0, R16
;Lab4_2.c,50 :: 		}
L_end_Init_INT:
	RET
; end of _Init_INT

_init_timer:

;Lab4_2.c,52 :: 		void init_timer()
;Lab4_2.c,54 :: 		TCCR0 = 0b00001011; //CTC-3,6, Prescaler-0,1,2
	LDI        R27, 11
	OUT        TCCR0+0, R27
;Lab4_2.c,55 :: 		TCNT0 = 0;
	LDI        R27, 0
	OUT        TCNT0+0, R27
;Lab4_2.c,56 :: 		OCR0 = 124;
	LDI        R27, 124
	OUT        OCR0+0, R27
;Lab4_2.c,57 :: 		TIMSK |= 0b00000010;//set interrupt OCM
	IN         R27, TIMSK+0
	SBR        R27, 2
	OUT        TIMSK+0, R27
;Lab4_2.c,58 :: 		}
L_end_init_timer:
	RET
; end of _init_timer

_Timer0_ISR:
	PUSH       R30
	PUSH       R31
	PUSH       R27
	IN         R27, SREG+0
	PUSH       R27

;Lab4_2.c,60 :: 		void Timer0_ISR() iv IVT_ADDR_TIMER0_COMP
;Lab4_2.c,62 :: 		digit++;
	PUSH       R2
	PUSH       R3
	LDS        R16, _digit+0
	LDS        R17, _digit+1
	SUBI       R16, 255
	SBCI       R17, 255
	STS        _digit+0, R16
	STS        _digit+1, R17
;Lab4_2.c,63 :: 		switch(digit)
	JMP        L_Timer0_ISR18
;Lab4_2.c,65 :: 		case 1: display(1,s%10);break;
L_Timer0_ISR20:
	LDI        R20, 10
	LDI        R21, 0
	LDS        R16, _s+0
	LDS        R17, _s+1
	CALL       _Div_16x16_S+0
	MOVW       R16, R24
	MOV        R3, R16
	LDI        R27, 1
	MOV        R2, R27
	CALL       _display+0
	JMP        L_Timer0_ISR19
;Lab4_2.c,66 :: 		case 2: display(2,(s/10)%10);break;
L_Timer0_ISR21:
	LDI        R20, 10
	LDI        R21, 0
	LDS        R16, _s+0
	LDS        R17, _s+1
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
;Lab4_2.c,67 :: 		case 3: display(3,(m%10));break;
L_Timer0_ISR22:
	LDI        R20, 10
	LDI        R21, 0
	LDS        R16, _m+0
	LDS        R17, _m+1
	CALL       _Div_16x16_S+0
	MOVW       R16, R24
	MOV        R3, R16
	LDI        R27, 3
	MOV        R2, R27
	CALL       _display+0
	JMP        L_Timer0_ISR19
;Lab4_2.c,68 :: 		case 4: display(4,(m/10)%10); digit=0;break;
L_Timer0_ISR23:
	LDI        R20, 10
	LDI        R21, 0
	LDS        R16, _m+0
	LDS        R17, _m+1
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
	JMP        L_Timer0_ISR19
;Lab4_2.c,69 :: 		}
L_Timer0_ISR18:
	LDS        R16, _digit+0
	LDS        R17, _digit+1
	CPI        R17, 0
	BRNE       L__Timer0_ISR52
	CPI        R16, 1
L__Timer0_ISR52:
	BRNE       L__Timer0_ISR53
	JMP        L_Timer0_ISR20
L__Timer0_ISR53:
	LDS        R16, _digit+0
	LDS        R17, _digit+1
	CPI        R17, 0
	BRNE       L__Timer0_ISR54
	CPI        R16, 2
L__Timer0_ISR54:
	BRNE       L__Timer0_ISR55
	JMP        L_Timer0_ISR21
L__Timer0_ISR55:
	LDS        R16, _digit+0
	LDS        R17, _digit+1
	CPI        R17, 0
	BRNE       L__Timer0_ISR56
	CPI        R16, 3
L__Timer0_ISR56:
	BRNE       L__Timer0_ISR57
	JMP        L_Timer0_ISR22
L__Timer0_ISR57:
	LDS        R16, _digit+0
	LDS        R17, _digit+1
	CPI        R17, 0
	BRNE       L__Timer0_ISR58
	CPI        R16, 4
L__Timer0_ISR58:
	BRNE       L__Timer0_ISR59
	JMP        L_Timer0_ISR23
L__Timer0_ISR59:
L_Timer0_ISR19:
;Lab4_2.c,70 :: 		if(start)
	LDS        R16, _start+0
	TST        R16
	BRNE       L__Timer0_ISR60
	JMP        L_Timer0_ISR24
L__Timer0_ISR60:
;Lab4_2.c,72 :: 		if (ms==1000)
	LDS        R16, _ms+0
	LDS        R17, _ms+1
	CPI        R17, 3
	BRNE       L__Timer0_ISR61
	CPI        R16, 232
L__Timer0_ISR61:
	BREQ       L__Timer0_ISR62
	JMP        L_Timer0_ISR25
L__Timer0_ISR62:
;Lab4_2.c,74 :: 		s++;
	LDS        R16, _s+0
	LDS        R17, _s+1
	SUBI       R16, 255
	SBCI       R17, 255
	STS        _s+0, R16
	STS        _s+1, R17
;Lab4_2.c,75 :: 		if(s==60)
	CPI        R17, 0
	BRNE       L__Timer0_ISR63
	CPI        R16, 60
L__Timer0_ISR63:
	BREQ       L__Timer0_ISR64
	JMP        L_Timer0_ISR26
L__Timer0_ISR64:
;Lab4_2.c,77 :: 		s=0;
	LDI        R27, 0
	STS        _s+0, R27
	STS        _s+1, R27
;Lab4_2.c,78 :: 		m++;
	LDS        R16, _m+0
	LDS        R17, _m+1
	SUBI       R16, 255
	SBCI       R17, 255
	STS        _m+0, R16
	STS        _m+1, R17
;Lab4_2.c,79 :: 		}
L_Timer0_ISR26:
;Lab4_2.c,80 :: 		ms=0;
	LDI        R27, 0
	STS        _ms+0, R27
	STS        _ms+1, R27
;Lab4_2.c,81 :: 		}
	JMP        L_Timer0_ISR27
L_Timer0_ISR25:
;Lab4_2.c,83 :: 		ms++;
	LDS        R16, _ms+0
	LDS        R17, _ms+1
	SUBI       R16, 255
	SBCI       R17, 255
	STS        _ms+0, R16
	STS        _ms+1, R17
L_Timer0_ISR27:
;Lab4_2.c,84 :: 		}
L_Timer0_ISR24:
;Lab4_2.c,85 :: 		}
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

;Lab4_2.c,87 :: 		void main()
;Lab4_2.c,89 :: 		DDRA = 0b00001111;  //seteaza pinii de iesire
	LDI        R27, 15
	OUT        DDRA+0, R27
;Lab4_2.c,90 :: 		DDRC = 0b11111111;
	LDI        R27, 255
	OUT        DDRC+0, R27
;Lab4_2.c,92 :: 		init_timer();
	CALL       _init_timer+0
;Lab4_2.c,93 :: 		Init_INT();
	CALL       _Init_INT+0
;Lab4_2.c,94 :: 		SREG |= 1<<7; //Set Enable Interrupt
	IN         R27, SREG+0
	SBR        R27, 128
	OUT        SREG+0, R27
;Lab4_2.c,96 :: 		for(;;)
L_main28:
;Lab4_2.c,99 :: 		}
	JMP        L_main28
;Lab4_2.c,100 :: 		}
L_end_main:
L__main_end_loop:
	JMP        L__main_end_loop
; end of _main
