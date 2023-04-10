
_display:

;Lab3.c,1 :: 		void display(char p, char c)
;Lab3.c,4 :: 		PORTA &= 0b11110000; //liniile de sel. digit - oprite
	IN         R16, PORTA+0
	ANDI       R16, 240
	OUT        PORTA+0, R16
;Lab3.c,5 :: 		PORTC &= 0b00000000; //liniile de sel. Seg. - oprite
	IN         R16, PORTC+0
	ANDI       R16, 0
	OUT        PORTC+0, R16
;Lab3.c,7 :: 		switch(c){
	JMP        L_display0
;Lab3.c,8 :: 		case 0:
L_display2:
;Lab3.c,9 :: 		PORTC |= 0b00111111;                            //codificare cifra 0
	IN         R16, PORTC+0
	ORI        R16, 63
	OUT        PORTC+0, R16
;Lab3.c,10 :: 		break;
	JMP        L_display1
;Lab3.c,11 :: 		case 1:
L_display3:
;Lab3.c,12 :: 		PORTC |= 0b00000110;                            //codificare cifra 1
	IN         R16, PORTC+0
	ORI        R16, 6
	OUT        PORTC+0, R16
;Lab3.c,13 :: 		break;
	JMP        L_display1
;Lab3.c,14 :: 		case 2:
L_display4:
;Lab3.c,15 :: 		PORTC |= 0b01011011;                            //codificare cifra 2
	IN         R16, PORTC+0
	ORI        R16, 91
	OUT        PORTC+0, R16
;Lab3.c,16 :: 		break;
	JMP        L_display1
;Lab3.c,17 :: 		case 3:
L_display5:
;Lab3.c,18 :: 		PORTC |= 0b01001111;                            //codificare cifra 3
	IN         R16, PORTC+0
	ORI        R16, 79
	OUT        PORTC+0, R16
;Lab3.c,19 :: 		break;
	JMP        L_display1
;Lab3.c,20 :: 		case 4:
L_display6:
;Lab3.c,21 :: 		PORTC |= 0b01100110;                            //codificare cifra 4
	IN         R16, PORTC+0
	ORI        R16, 102
	OUT        PORTC+0, R16
;Lab3.c,22 :: 		break;
	JMP        L_display1
;Lab3.c,23 :: 		case 5:
L_display7:
;Lab3.c,24 :: 		PORTC |= 0b01101101;                            //codificare cifra 5
	IN         R16, PORTC+0
	ORI        R16, 109
	OUT        PORTC+0, R16
;Lab3.c,25 :: 		break;
	JMP        L_display1
;Lab3.c,26 :: 		case 6:
L_display8:
;Lab3.c,27 :: 		PORTC |= 0b01111101;                            //codificare cifra 6
	IN         R16, PORTC+0
	ORI        R16, 125
	OUT        PORTC+0, R16
;Lab3.c,28 :: 		break;
	JMP        L_display1
;Lab3.c,29 :: 		case 7:
L_display9:
;Lab3.c,30 :: 		PORTC |= 0b00000111;                            //codificare cifra 7
	IN         R16, PORTC+0
	ORI        R16, 7
	OUT        PORTC+0, R16
;Lab3.c,31 :: 		break;
	JMP        L_display1
;Lab3.c,32 :: 		case 8:
L_display10:
;Lab3.c,33 :: 		PORTC |= 0b01111111;                            //codificare cifra 8
	IN         R16, PORTC+0
	ORI        R16, 127
	OUT        PORTC+0, R16
;Lab3.c,34 :: 		break;
	JMP        L_display1
;Lab3.c,35 :: 		case 9:
L_display11:
;Lab3.c,36 :: 		PORTC |= 0b01101111;                            //codificare cifra 9
	IN         R16, PORTC+0
	ORI        R16, 111
	OUT        PORTC+0, R16
;Lab3.c,37 :: 		break;
	JMP        L_display1
;Lab3.c,38 :: 		}
L_display0:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L__display25
	JMP        L_display2
L__display25:
	LDI        R27, 1
	CP         R3, R27
	BRNE       L__display26
	JMP        L_display3
L__display26:
	LDI        R27, 2
	CP         R3, R27
	BRNE       L__display27
	JMP        L_display4
L__display27:
	LDI        R27, 3
	CP         R3, R27
	BRNE       L__display28
	JMP        L_display5
L__display28:
	LDI        R27, 4
	CP         R3, R27
	BRNE       L__display29
	JMP        L_display6
L__display29:
	LDI        R27, 5
	CP         R3, R27
	BRNE       L__display30
	JMP        L_display7
L__display30:
	LDI        R27, 6
	CP         R3, R27
	BRNE       L__display31
	JMP        L_display8
L__display31:
	LDI        R27, 7
	CP         R3, R27
	BRNE       L__display32
	JMP        L_display9
L__display32:
	LDI        R27, 8
	CP         R3, R27
	BRNE       L__display33
	JMP        L_display10
L__display33:
	LDI        R27, 9
	CP         R3, R27
	BRNE       L__display34
	JMP        L_display11
L__display34:
L_display1:
;Lab3.c,39 :: 		switch(p){
	JMP        L_display12
;Lab3.c,40 :: 		case 1:
L_display14:
;Lab3.c,41 :: 		PORTA |= 0b00001000;                            //activare digit 1
	IN         R27, PORTA+0
	SBR        R27, 8
	OUT        PORTA+0, R27
;Lab3.c,42 :: 		break;
	JMP        L_display13
;Lab3.c,43 :: 		case 2:
L_display15:
;Lab3.c,44 :: 		PORTA |= 0b00000100;                            //activare digit 2
	IN         R16, PORTA+0
	ORI        R16, 4
	OUT        PORTA+0, R16
;Lab3.c,45 :: 		break;
	JMP        L_display13
;Lab3.c,46 :: 		case 3:
L_display16:
;Lab3.c,47 :: 		PORTA |= 0b00000010;                            //activare digit 3
	IN         R16, PORTA+0
	ORI        R16, 2
	OUT        PORTA+0, R16
;Lab3.c,48 :: 		break;
	JMP        L_display13
;Lab3.c,49 :: 		case 4:
L_display17:
;Lab3.c,50 :: 		PORTA |= 0b00000001;                            //activare digit 4
	IN         R16, PORTA+0
	ORI        R16, 1
	OUT        PORTA+0, R16
;Lab3.c,51 :: 		break;
	JMP        L_display13
;Lab3.c,52 :: 		}
L_display12:
	LDI        R27, 1
	CP         R2, R27
	BRNE       L__display35
	JMP        L_display14
L__display35:
	LDI        R27, 2
	CP         R2, R27
	BRNE       L__display36
	JMP        L_display15
L__display36:
	LDI        R27, 3
	CP         R2, R27
	BRNE       L__display37
	JMP        L_display16
L__display37:
	LDI        R27, 4
	CP         R2, R27
	BRNE       L__display38
	JMP        L_display17
L__display38:
L_display13:
;Lab3.c,53 :: 		}
L_end_display:
	RET
; end of _display

_init_timer:

;Lab3.c,55 :: 		void init_timer(){
;Lab3.c,57 :: 		TCCR0 = 0b00000011; //prescaler 64, mod normal de operare
	LDI        R27, 3
	OUT        TCCR0+0, R27
;Lab3.c,58 :: 		TCNT0 = 0;          //se iniyializeaza numaratorul cu 0
	LDI        R27, 0
	OUT        TCNT0+0, R27
;Lab3.c,60 :: 		}
L_end_init_timer:
	RET
; end of _init_timer

_main:
	LDI        R27, 255
	OUT        SPL+0, R27
	LDI        R27, 0
	OUT        SPL+1, R27
	IN         R28, SPL+0
	IN         R29, SPL+1
	SBIW       R28, 6
	OUT        SPL+0, R28
	OUT        SPL+1, R29
	ADIW       R28, 1

;Lab3.c,62 :: 		void main() {
;Lab3.c,64 :: 		int ms=0;
	PUSH       R2
	PUSH       R3
	LDI        R27, 0
	STD        Y+0, R27
	STD        Y+1, R27
	LDI        R27, 0
	STD        Y+2, R27
	STD        Y+3, R27
	LDI        R27, 0
	STD        Y+4, R27
	STD        Y+5, R27
;Lab3.c,65 :: 		int s=0;
;Lab3.c,66 :: 		int m=0;
;Lab3.c,67 :: 		DDRA|=0b00001111;
	IN         R16, DDRA+0
	ORI        R16, 15
	OUT        DDRA+0, R16
;Lab3.c,68 :: 		DDRC|=0b11111111;
	IN         R16, DDRC+0
	ORI        R16, 255
	OUT        DDRC+0, R16
;Lab3.c,69 :: 		init_timer();
	CALL       _init_timer+0
;Lab3.c,71 :: 		for(;;)
L_main18:
;Lab3.c,73 :: 		if(TCNT0>=125)             //se împline?te o milisecunda
	IN         R16, TCNT0+0
	CPI        R16, 125
	BRSH       L__main41
	JMP        L_main21
L__main41:
;Lab3.c,75 :: 		TCNT0 = 0;             //resetare software
	LDI        R27, 0
	OUT        TCNT0+0, R27
;Lab3.c,76 :: 		ms++;
	LDD        R16, Y+0
	LDD        R17, Y+1
	MOVW       R18, R16
	SUBI       R18, 255
	SBCI       R19, 255
	STD        Y+0, R18
	STD        Y+1, R19
;Lab3.c,77 :: 		if(ms>=1000)           //împlinirea unei secunde
	LDI        R16, 232
	LDI        R17, 3
	CP         R18, R16
	CPC        R19, R17
	BRGE       L__main42
	JMP        L_main22
L__main42:
;Lab3.c,79 :: 		ms=0;
	LDI        R27, 0
	STD        Y+0, R27
	STD        Y+1, R27
;Lab3.c,80 :: 		s++;
	LDD        R16, Y+2
	LDD        R17, Y+3
	SUBI       R16, 255
	SBCI       R17, 255
	STD        Y+2, R16
	STD        Y+3, R17
;Lab3.c,81 :: 		}
L_main22:
;Lab3.c,82 :: 		if(s==60)
	LDD        R16, Y+2
	LDD        R17, Y+3
	CPI        R17, 0
	BRNE       L__main43
	CPI        R16, 60
L__main43:
	BREQ       L__main44
	JMP        L_main23
L__main44:
;Lab3.c,84 :: 		s=0;
	LDI        R27, 0
	STD        Y+2, R27
	STD        Y+3, R27
;Lab3.c,85 :: 		m++;
	LDD        R16, Y+4
	LDD        R17, Y+5
	SUBI       R16, 255
	SBCI       R17, 255
	STD        Y+4, R16
	STD        Y+5, R17
;Lab3.c,86 :: 		}
L_main23:
;Lab3.c,87 :: 		}
L_main21:
;Lab3.c,88 :: 		display(1,s%10);
	LDI        R20, 10
	LDI        R21, 0
	LDD        R16, Y+2
	LDD        R17, Y+3
	CALL       _Div_16x16_S+0
	MOVW       R16, R24
	MOV        R3, R16
	LDI        R27, 1
	MOV        R2, R27
	CALL       _display+0
;Lab3.c,89 :: 		display(2,(s/10)%10);
	LDI        R20, 10
	LDI        R21, 0
	LDD        R16, Y+2
	LDD        R17, Y+3
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
;Lab3.c,90 :: 		display(3,(m%10));
	LDI        R20, 10
	LDI        R21, 0
	LDD        R16, Y+4
	LDD        R17, Y+5
	CALL       _Div_16x16_S+0
	MOVW       R16, R24
	MOV        R3, R16
	LDI        R27, 3
	MOV        R2, R27
	CALL       _display+0
;Lab3.c,91 :: 		display(4,(m/10)%10);
	LDI        R20, 10
	LDI        R21, 0
	LDD        R16, Y+4
	LDD        R17, Y+5
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
;Lab3.c,93 :: 		}
	JMP        L_main18
;Lab3.c,95 :: 		}
L_end_main:
	POP        R3
	POP        R2
L__main_end_loop:
	JMP        L__main_end_loop
; end of _main
