
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

;Lab1.c,5 :: 		void main()
;Lab1.c,8 :: 		int starePB2 = 0;
	LDI        R27, 0
	STD        Y+0, R27
	STD        Y+1, R27
	LDI        R27, 0
	STD        Y+2, R27
	STD        Y+3, R27
	LDI        R27, 0
	STD        Y+4, R27
	STD        Y+5, R27
;Lab1.c,9 :: 		int stare=0;
;Lab1.c,10 :: 		int increment = 0 ;
;Lab1.c,14 :: 		DDRB |= (1<<7); //PB7 – Ie?ire
	IN         R16, DDRB+0
	ORI        R16, 128
	OUT        DDRB+0, R16
;Lab1.c,15 :: 		DDRB &= ~(1<<3); //PB3 – Intrare
	ANDI       R16, 247
	OUT        DDRB+0, R16
;Lab1.c,18 :: 		DDRB |= (1<<6); //PB6 – Ie?ire
	ORI        R16, 64
	OUT        DDRB+0, R16
;Lab1.c,19 :: 		DDRB &= ~(1<<2); //PB2 – Intrare
	ANDI       R16, 251
	OUT        DDRB+0, R16
;Lab1.c,22 :: 		DDRD |= 0b11111111; //Pini de iesire
	IN         R16, DDRD+0
	ORI        R16, 255
	OUT        DDRD+0, R16
;Lab1.c,26 :: 		for(;;)
L_main0:
;Lab1.c,29 :: 		if(PINB & (1<<3))         //testare pin PB3
	IN         R16, PINB+0
	SBRS       R16, 3
	JMP        L_main3
;Lab1.c,30 :: 		PORTB |= (1<<7);      //PB7 – HIGH (LED ON)
	IN         R27, PORTB+0
	SBR        R27, 128
	OUT        PORTB+0, R27
	JMP        L_main4
L_main3:
;Lab1.c,32 :: 		PORTB &= ~(1<<7);     //PB7 – LOW (LED OFF)
	IN         R16, PORTB+0
	ANDI       R16, 127
	OUT        PORTB+0, R16
L_main4:
;Lab1.c,36 :: 		if(PINB & (1<<2))         //testare pin PB2
	IN         R16, PINB+0
	SBRS       R16, 2
	JMP        L_main5
;Lab1.c,38 :: 		if(starePB2 == 0)     //variabila va tine minte starea
	LDD        R16, Y+0
	LDD        R17, Y+1
	CPI        R17, 0
	BRNE       L__main12
	CPI        R16, 0
L__main12:
	BREQ       L__main13
	JMP        L_main6
L__main13:
;Lab1.c,40 :: 		starePB2 = 1;     //anterioara a pin-ului PB2
	LDI        R27, 1
	STD        Y+0, R27
	LDI        R27, 0
	STD        Y+1, R27
;Lab1.c,41 :: 		PORTB ^= (1<<6);//se schimba starea LED-ului
	IN         R16, PORTB+0
	LDI        R27, 64
	EOR        R16, R27
	OUT        PORTB+0, R16
;Lab1.c,42 :: 		}
L_main6:
;Lab1.c,43 :: 		}
	JMP        L_main7
L_main5:
;Lab1.c,45 :: 		starePB2 = 0;
	LDI        R27, 0
	STD        Y+0, R27
	STD        Y+1, R27
L_main7:
;Lab1.c,48 :: 		if(PINB & (1<<2))         //testare pin PB2
	IN         R16, PINB+0
	SBRS       R16, 2
	JMP        L_main8
;Lab1.c,50 :: 		if(stare == 0)
	LDD        R16, Y+2
	LDD        R17, Y+3
	CPI        R17, 0
	BRNE       L__main14
	CPI        R16, 0
L__main14:
	BREQ       L__main15
	JMP        L_main9
L__main15:
;Lab1.c,52 :: 		stare = 1;     //anterioara a pin-ului PB2
	LDI        R27, 1
	STD        Y+2, R27
	LDI        R27, 0
	STD        Y+3, R27
;Lab1.c,53 :: 		increment++;
	LDD        R16, Y+4
	LDD        R17, Y+5
	SUBI       R16, 255
	SBCI       R17, 255
	STD        Y+4, R16
	STD        Y+5, R17
;Lab1.c,54 :: 		}
L_main9:
;Lab1.c,55 :: 		}
	JMP        L_main10
L_main8:
;Lab1.c,57 :: 		stare = 0;
	LDI        R27, 0
	STD        Y+2, R27
	STD        Y+3, R27
L_main10:
;Lab1.c,59 :: 		PORTD=increment;
	LDD        R16, Y+4
	OUT        PORTD+0, R16
;Lab1.c,60 :: 		}
	JMP        L_main0
;Lab1.c,62 :: 		}
L_end_main:
L__main_end_loop:
	JMP        L__main_end_loop
; end of _main
