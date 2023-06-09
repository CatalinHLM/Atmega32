int ms=0,m=0, s=0, digit=0;

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
      case 1: PORTA|=0b00000001; break;
      case 2: PORTA|=0b00000010; break;
      case 3: PORTA|=0b00000100; break;
      case 4: PORTA|=0b00001000; break;
  }
  // Delay_ms(1); // #include <util/delay.h>
}

void init_timer1()
{
        TCCR1A = 0b00000000; //CTC-0,1
        TCCR1B = 0b00001100; //CTC-3,4, Prescaler-0,1,2 (256)
        TCNT1H = 0;
        TCNT1L = 0;
        OCR1AH = 31249 >> 8;
        OCR1AL = 31249;
        TIMSK |= 0b00010000;//set interrupt OCM1A
}

void ISR_TIM1() iv IVT_ADDR_TIMER1_COMPA ics ICS_AUTO {
s++;
	if(s==60)
	{s=0;
	m++;
	}
}

void init_timer()
{
        TCCR0 = 0b00001011; //CTC-3,6, Prescaler-0,1,2
        TCNT0 = 0;
        OCR0 = 125;
        TIMSK |= 0b00000010;//set interrupt OCM
}


void Timer0_ISR() iv IVT_ADDR_TIMER0_COMP{
digit++;
        switch(digit)
        {       case 1: display(4,s%10);break;
                case 2: display(3,(s/10)%10);break;
                case 3: display(2,(m%10));break;
                case 4: display(1,(m/10)%10); digit=0;break;
                }
}

void INT0_ISR() iv IVT_ADDR_INT0 ics ICS_AUTO {
s = m = 0;
}

void INT1_ISR() iv IVT_ADDR_INT1 ics ICS_AUTO {

m++;
}

void init_INT(){ 	//Configurarea intreruperii externe
MCUCR = 0b00001111;	//Rising edge 
GICR  = 0b11000000;	//Int1
DDRD &= ~(1<<3);	//PD3 - Input
DDRD &= ~(1<<2);	//PD2 - Input
}


void main()
{
  DDRA = 0b00001111;  //seteaza pinii de iesire
  DDRC = 0b11111111;

  init_INT();
  init_timer();
  init_timer1();
  SREG |= (1<<7);        //Set Enable Interrupt

        for(;;){

        }
}
