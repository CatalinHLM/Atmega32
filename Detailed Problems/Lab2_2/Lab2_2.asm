
_display:

;Lab2_2.c,1 :: 		void display(char p, char c)
;Lab2_2.c,4 :: 		PORTA &= 0b11110000; //liniile de sel. digit - oprite
	IN         R16, PORTA+0
	ANDI       R16, 240
	OUT        PORTA+0, R16
;Lab2_2.c,5 :: 		PORTC &= 0b00000000; //liniile de sel. Seg. - oprite
	IN         R16, PORTC+0
	ANDI       R16, 0
	OUT        PORTC+0, R16
;Lab2_2.c,7 :: 		switch(c){
	JMP        L_display0
;Lab2_2.c,8 :: 		case 0:
L_display2:
;Lab2_2.c,9 :: 		PORTC |= 0b00111111;                            //codificare cifra 0
	IN         R16, PORTC+0
	ORI        R16, 63
	OUT        PORTC+0, R16
;Lab2_2.c,10 :: 		break;
	JMP        L_display1
;Lab2_2.c,11 :: 		case 1:
L_display3:
;Lab2_2.c,12 :: 		PORTC |= 0b00000110;                            //codificare cifra 1
	IN         R16, PORTC+0
	ORI        R16, 6
	OUT        PORTC+0, R16
;Lab2_2.c,13 :: 		break;
	JMP        L_display1
;Lab2_2.c,14 :: 		case 2:
L_display4:
;Lab2_2.c,15 :: 		PORTC |= 0b01011011;                            //codificare cifra 2
	IN         R16, PORTC+0
	ORI        R16, 91
	OUT        PORTC+0, R16
;Lab2_2.c,16 :: 		break;
	JMP        L_display1
;Lab2_2.c,17 :: 		case 3:
L_display5:
;Lab2_2.c,18 :: 		PORTC |= 0b01001111;                            //codificare cifra 3
	IN         R16, PORTC+0
	ORI        R16, 79
	OUT        PORTC+0, R16
;Lab2_2.c,19 :: 		break;
	JMP        L_display1
;Lab2_2.c,20 :: 		case 4:
L_display6:
;Lab2_2.c,21 :: 		PORTC |= 0b01100110;                            //codificare cifra 4
	IN         R16, PORTC+0
	ORI        R16, 102
	OUT        PORTC+0, R16
;Lab2_2.c,22 :: 		break;
	JMP        L_display1
;Lab2_2.c,23 :: 		case 5:
L_display7:
;Lab2_2.c,24 :: 		PORTC |= 0b01101101;                            //codificare cifra 5
	IN         R16, PORTC+0
	ORI        R16, 109
	OUT        PORTC+0, R16
;Lab2_2.c,25 :: 		break;
	JMP        L_display1
;Lab2_2.c,26 :: 		case 6:
L_display8:
;Lab2_2.c,27 :: 		PORTC |= 0b01111101;                            //codificare cifra 6
	IN         R16, PORTC+0
	ORI        R16, 125
	OUT        PORTC+0, R16
;Lab2_2.c,28 :: 		break;
	JMP        L_display1
;Lab2_2.c,29 :: 		case 7:
L_display9:
;Lab2_2.c,30 :: 		PORTC |= 0b00000111;                            //codificare cifra 7
	IN         R16, PORTC+0
	ORI        R16, 7
	OUT        PORTC+0, R16
;Lab2_2.c,31 :: 		break;
	JMP        L_display1
;Lab2_2.c,32 :: 		case 8:
L_display10:
;Lab2_2.c,33 :: 		PORTC |= 0b01111111;                            //codificare cifra 8
	IN         R16, PORTC+0
	ORI        R16, 127
	OUT        PORTC+0, R16
;Lab2_2.c,34 :: 		break;
	JMP        L_display1
;Lab2_2.c,35 :: 		case 9:
L_display11:
;Lab2_2.c,36 :: 		PORTC |= 0b01101111;                            //codificare cifra 9
	IN         R16, PORTC+0
	ORI        R16, 111
	OUT        PORTC+0, R16
;Lab2_2.c,37 :: 		break;
	JMP        L_display1
;Lab2_2.c,38 :: 		}
L_display0:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L__display24
	JMP        L_display2
L__display24:
	LDI        R27, 1
	CP         R3, R27
	BRNE       L__display25
	JMP        L_display3
L__display25:
	LDI        R27, 2
	CP         R3, R27
	BRNE       L__display26
	JMP        L_display4
L__display26:
	LDI        R27, 3
	CP         R3, R27
	BRNE       L__display27
	JMP        L_display5
L__display27:
	LDI        R27, 4
	CP         R3, R27
	BRNE       L__display28
	JMP        L_display6
L__display28:
	LDI        R27, 5
	CP         R3, R27
	BRNE       L__display29
	JMP        L_display7
L__display29:
	LDI        R27, 6
	CP         R3, R27
	BRNE       L__display30
	JMP        L_display8
L__display30:
	LDI        R27, 7
	CP         R3, R27
	BRNE       L__display31
	JMP        L_display9
L__display31:
	LDI        R27, 8
	CP         R3, R27
	BRNE       L__display32
	JMP        L_display10
L__display32:
	LDI        R27, 9
	CP         R3, R27
	BRNE       L__display33
	JMP        L_display11
L__display33:
L_display1:
;Lab2_2.c,39 :: 		switch(p){
	JMP        L_display12
;Lab2_2.c,40 :: 		case 1:
L_display14:
;Lab2_2.c,41 :: 		PORTA |= 0b00001000;                            //activare digit 1
	IN         R27, PORTA+0
	SBR        R27, 8
	OUT        PORTA+0, R27
;Lab2_2.c,42 :: 		break;
	JMP        L_display13
;Lab2_2.c,43 :: 		case 2:
L_display15:
;Lab2_2.c,44 :: 		PORTA |= 0b00000100;                            //activare digit 2
	IN         R16, PORTA+0
	ORI        R16, 4
	OUT        PORTA+0, R16
;Lab2_2.c,45 :: 		break;
	JMP        L_display13
;Lab2_2.c,46 :: 		case 3:
L_display16:
;Lab2_2.c,47 :: 		PORTA |= 0b00000010;                            //activare digit 3
	IN         R16, PORTA+0
	ORI        R16, 2
	OUT        PORTA+0, R16
;Lab2_2.c,48 :: 		break;
	JMP        L_display13
;Lab2_2.c,49 :: 		case 4:
L_display17:
;Lab2_2.c,50 :: 		PORTA |= 0b00000001;                            //activare digit 4
	IN         R16, PORTA+0
	ORI        R16, 1
	OUT        PORTA+0, R16
;Lab2_2.c,51 :: 		break;
	JMP        L_display13
;Lab2_2.c,52 :: 		}
L_display12:
	LDI        R27, 1
	CP         R2, R27
	BRNE       L__display34
	JMP        L_display14
L__display34:
	LDI        R27, 2
	CP         R2, R27
	BRNE       L__display35
	JMP        L_display15
L__display35:
	LDI        R27, 3
	CP         R2, R27
	BRNE       L__display36
	JMP        L_display16
L__display36:
	LDI        R27, 4
	CP         R2, R27
	BRNE       L__display37
	JMP        L_display17
L__display37:
L_display13:
;Lab2_2.c,54 :: 		}
L_end_display:
	RET
; end of _display

_main:
	LDI        R27, 255
	OUT        SPL+0, R27
	LDI        R27, 0
	OUT        SPL+1, R27
	IN         R28, SPL+0
	IN         R29, SPL+1
	SBIW       R28, 4
	OUT        SPL+0, R28
	OUT        SPL+1, R29
	ADIW       R28, 1

;Lab2_2.c,56 :: 		void main()
;Lab2_2.c,58 :: 		int value=0;
	PUSH       R2
	PUSH       R3
	LDI        R27, 0
	STD        Y+0, R27
	STD        Y+1, R27
	LDI        R27, 0
	STD        Y+2, R27
	STD        Y+3, R27
;Lab2_2.c,59 :: 		int stare=0;
;Lab2_2.c,60 :: 		DDRA|=0b00001111;//PA0_PA3 ->output
	IN         R16, DDRA+0
	ORI        R16, 15
	OUT        DDRA+0, R16
;Lab2_2.c,61 :: 		DDRC|=0b11111111;//
	IN         R16, DDRC+0
	ORI        R16, 255
	OUT        DDRC+0, R16
;Lab2_2.c,62 :: 		DDRB&=~(1<<7);
	IN         R16, DDRB+0
	ANDI       R16, 127
	OUT        DDRB+0, R16
;Lab2_2.c,64 :: 		while(1)
L_main18:
;Lab2_2.c,66 :: 		if(PINB & (1<<7))         //testare pin PB2
	IN         R16, PINB+0
	SBRS       R16, 7
	JMP        L_main20
;Lab2_2.c,68 :: 		if(stare == 0)
	LDD        R16, Y+2
	LDD        R17, Y+3
	CPI        R17, 0
	BRNE       L__main39
	CPI        R16, 0
L__main39:
	BREQ       L__main40
	JMP        L_main21
L__main40:
;Lab2_2.c,70 :: 		stare = 1;     //anterioara a pin-ului PB2
	LDI        R27, 1
	STD        Y+2, R27
	LDI        R27, 0
	STD        Y+3, R27
;Lab2_2.c,71 :: 		value++;
	LDD        R16, Y+0
	LDD        R17, Y+1
	SUBI       R16, 255
	SBCI       R17, 255
	STD        Y+0, R16
	STD        Y+1, R17
;Lab2_2.c,72 :: 		}
L_main21:
;Lab2_2.c,73 :: 		}
	JMP        L_main22
L_main20:
;Lab2_2.c,75 :: 		stare = 0;
	LDI        R27, 0
	STD        Y+2, R27
	STD        Y+3, R27
L_main22:
;Lab2_2.c,77 :: 		display(1,(value%10));
	LDI        R20, 10
	LDI        R21, 0
	LDD        R16, Y+0
	LDD        R17, Y+1
	CALL       _Div_16x16_S+0
	MOVW       R16, R24
	MOV        R3, R16
	LDI        R27, 1
	MOV        R2, R27
	CALL       _display+0
;Lab2_2.c,78 :: 		display(2,(value/10)%10);
	LDI        R20, 10
	LDI        R21, 0
	LDD        R16, Y+0
	LDD        R17, Y+1
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
;Lab2_2.c,79 :: 		display(3,(value/100)%10);
	LDI        R20, 100
	LDI        R21, 0
	LDD        R16, Y+0
	LDD        R17, Y+1
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
;Lab2_2.c,80 :: 		display(4,(value/1000)%10);
	LDI        R20, 232
	LDI        R21, 3
	LDD        R16, Y+0
	LDD        R17, Y+1
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
;Lab2_2.c,81 :: 		}
	JMP        L_main18
;Lab2_2.c,84 :: 		}
L_end_main:
	POP        R3
	POP        R2
L__main_end_loop:
	JMP        L__main_end_loop
; end of _main
