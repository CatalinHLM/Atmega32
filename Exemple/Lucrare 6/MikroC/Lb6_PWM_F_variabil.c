//#include <avr/io.h>
//#include <avr/interrupt.h>

int n, nr,ms=0, adv, l,h,poz=0, value;
int ADCMax=1023, fMax=20000, fMin=20, freq, icr, TOP;

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

void init_adc()
{
  ADMUX = 0b01000000;
  ADCSRA= 0b10000111;
}

int adc(char ch)
{
  ADMUX &= 0b11100000;
  ADMUX |= ch;
  ADCSRA|=(1<<6);
    while(ADCSRA&(1<<6));
  l = ADCL;
  h = ADCH;
  return h << 8 | l;
}


void init_timer()
{
        TCCR0 = 0b00001011;
        TCNT0 = 0;
        OCR0  = 125;
        TIMSK|= 0b00000010;  //activeaza intreruperea de Output Compare Match (comparare la iesire)
}


//ISR
void ISR_Timer0() iv IVT_ADDR_TIMER0_COMP ics ICS_AUTO {

        poz++;
        switch(poz){
                case 1: display(1,value%10);break;
                case 2: display(2,(value/10)%10);break;
                case 3: display(3,(value/100)%10);break;
                case 4: display(4,(value/1000)%10); poz=0;break;
                }

                if (ms==100){
                   adv = (adc(6));
                   freq = ((float)(fMax-fMin))/ADCmax*adv+fMin;
                   TOP = 1000000/freq-1;
                   ICR1H = TOP>>8;
                   ICR1L = TOP;
                   OCR1BH = ((TOP+1)/2)>>8;
                   OCR1BL = (TOP+1)/2;
                   value=freq/10;
                   ms=0;
                }
                else ms++;
}

void init_Buzzer()
{
TCCR1A = 0b00100010;
TCCR1B = 0b00011010;
}

void main(){
  DDRA = 0b00001111;  //seteaza pinii de iesire
  DDRC = 0b01111111;
  DDRD|=1<<4;		//PD4 - output
  init_adc();
  init_timer();
  init_Buzzer();
  SREG |= 1<<7;            //set enable interrupt - activeaza intreruperile

    for(;;){
    }
}