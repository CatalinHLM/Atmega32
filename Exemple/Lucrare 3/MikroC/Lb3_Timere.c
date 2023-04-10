//#include <avr/io.h>

char starePB2 = 0, start=1, m = 0, s = 0;
int ms = 0;

void display(char p, char c)
{
 PORTA &= 0b11110000;
 PORTC &= 0b00000000;

  switch(c){
     case 0: PORTC|=0b00111111; break;
     case 1: PORTC|=0b00000110; break;
     case 2: PORTC|=0b01011011; break;
     case 3: PORTC|=0b01001111; break;
     case 4: PORTC|=0b01100110; break;
     case 5: PORTC|=0b01101101; break;
     case 6: PORTC|=0b01111101; break;
     case 7: PORTC|=0b00000111; break;
     case 8: PORTC|=0b01111111; break;
     case 9: PORTC|=0b01101111; break;
  }
  switch(p){
      case 4: PORTA|=0b00000001; break;
      case 3: PORTA|=0b00000010; break;
      case 2: PORTA|=0b00000100; break;
      case 1: PORTA|=0b00001000; break;
  }
  // Delay_ms(1); // #include <util/delay.h>
}

void init_timer()
{
        TCCR0 = 0b00000011; //CTC-3,6, Prescaler-0,1,2
        TCNT0 = 0;
}

void main()
{
  DDRA = 0b00001111;
  DDRC = 0b11111111;
  init_timer();
	for(;;){
		if(start)
		{
			if(TCNT0>=124){ //se împline?te o milisecunda
				TCNT0 = 0; //resetare software
				ms++;
				if(ms>=1000){ //împlinirea unei secunde
					ms=0;
					s++;
				}
				if(s==60){
					s=0;
					m++;
				}
			}
		}

		if(PINB & (1<<2)) //testare pin PB2
		{ if(starePB2 == 0) //variabila va ?ine minte starea
			{ starePB2 = 1; //anterioara a pin-ului PB2
			start = !start;
			}
		}else
			starePB2 = 0;

		display(1, s%10);
		display(2,(s/10)%10);
		display(3,(m%10));
		display(4,(m/10)%10);
	}
}