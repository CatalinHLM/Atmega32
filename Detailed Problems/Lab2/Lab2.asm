
_main:
	LDI        R27, 255
	OUT        SPL+0, R27
	LDI        R27, 0
	OUT        SPL+1, R27

;Lab2.c,1 :: 		void main() {
;Lab2.c,3 :: 		DDRA|=0b00001111;//PA0_PA3 ->output
	IN         R16, DDRA+0
	ORI        R16, 15
	OUT        DDRA+0, R16
;Lab2.c,4 :: 		DDRC|=0b11111111;//
	IN         R16, DDRC+0
	ORI        R16, 255
	OUT        DDRC+0, R16
;Lab2.c,7 :: 		while(1)
L_main0:
;Lab2.c,11 :: 		PORTA|=(1<<0);//Digit1 (D1)
	IN         R16, PORTA+0
	ORI        R16, 1
	OUT        PORTA+0, R16
;Lab2.c,12 :: 		PORTC=0b01100110; //4
	LDI        R27, 102
	OUT        PORTC+0, R27
;Lab2.c,13 :: 		delay_ms(1);
	LDI        R17, 11
	LDI        R16, 99
L_main2:
	DEC        R16
	BRNE       L_main2
	DEC        R17
	BRNE       L_main2
;Lab2.c,14 :: 		PORTA&= ~(1<<0);
	IN         R16, PORTA+0
	ANDI       R16, 254
	OUT        PORTA+0, R16
;Lab2.c,17 :: 		PORTA|=(1<<1);//Digit2 (D2)
	ORI        R16, 2
	OUT        PORTA+0, R16
;Lab2.c,18 :: 		PORTC=0b01001111; //3
	LDI        R27, 79
	OUT        PORTC+0, R27
;Lab2.c,19 :: 		delay_ms(1);
	LDI        R17, 11
	LDI        R16, 99
L_main4:
	DEC        R16
	BRNE       L_main4
	DEC        R17
	BRNE       L_main4
;Lab2.c,20 :: 		PORTA &= ~(1<<1);
	IN         R16, PORTA+0
	ANDI       R16, 253
	OUT        PORTA+0, R16
;Lab2.c,22 :: 		PORTA|=(1<<2);//Digit3 (D3)
	ORI        R16, 4
	OUT        PORTA+0, R16
;Lab2.c,23 :: 		PORTC=0b01011011; //2
	LDI        R27, 91
	OUT        PORTC+0, R27
;Lab2.c,24 :: 		delay_ms(1);
	LDI        R17, 11
	LDI        R16, 99
L_main6:
	DEC        R16
	BRNE       L_main6
	DEC        R17
	BRNE       L_main6
;Lab2.c,25 :: 		PORTA &= ~(1<<2);
	IN         R16, PORTA+0
	ANDI       R16, 251
	OUT        PORTA+0, R16
;Lab2.c,27 :: 		PORTA|=(1<<3);//Digit1 (D4)
	ORI        R16, 8
	OUT        PORTA+0, R16
;Lab2.c,28 :: 		PORTC=0b00000110; //1
	LDI        R27, 6
	OUT        PORTC+0, R27
;Lab2.c,29 :: 		delay_ms(1);
	LDI        R17, 11
	LDI        R16, 99
L_main8:
	DEC        R16
	BRNE       L_main8
	DEC        R17
	BRNE       L_main8
;Lab2.c,30 :: 		PORTA &= ~(1<<3);
	IN         R27, PORTA+0
	CBR        R27, 8
	OUT        PORTA+0, R27
;Lab2.c,33 :: 		}
	JMP        L_main0
;Lab2.c,36 :: 		}
L_end_main:
L__main_end_loop:
	JMP        L__main_end_loop
; end of _main
