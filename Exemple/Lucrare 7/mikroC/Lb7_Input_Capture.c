//#include <avr/io.h>
//#include <avr/interrupt.h>
//  #include <built_in.h>


int n=0,rpm=0, value=0,adc_l,adc_h;
long cycle=0, trot=0, icr_l, icr_h;
int ms=0, poz=0;


void display(char p, char c)
{
 PORTA &= 0b11110000;
 PORTC &= 0b00000000;

  switch(c){
     case 0: PORTC|=0b00111111; break;
     case 1: PORTC|=0b00000110; break;
     case 2: PORTC|=~0b10100100; break;
     case 3: PORTC|=~0b10110000; break;
     case 4: PORTC|=~0b10011001; break;
     case 5: PORTC|=~0b10010010; break;
     case 6: PORTC|=~0b10000010; break;
     case 7: PORTC|=~0b11111000; break;
     case 8: PORTC|=~0b10000000; break;
     case 9: PORTC|=~0b10010000; break;
  }
  switch(p){
      case 1: PORTA|=0b00001000; break;
      case 2: PORTA|=0b00000100; break;
      case 3: PORTA|=0b00000010; break;
      case 4: PORTA|=0b00000001; break;
  }
  // Delay_ms(1); // #include <util/delay.h>
}

void Init_Input_Capture()
{
      TCCR1A = 0b00000000;
      TCCR1B = 0b01000010; //bit6 - Rising Edge, bit0-2 - Pre=8
      TIMSK |= 1<<5;      //Input Capture Interrupt Enable
      TIMSK |= 1<<2;      //Overflow Interrupt Enable
}

void IC_ISR() iv IVT_ADDR_TIMER1_CAPT ics ICS_AUTO {
TCNT1H=0;
TCNT1L=0;
icr_l = ICR1L;
icr_h = ICR1H;
trot = (((icr_h << 8) | icr_l)+65536*cycle)*1; //long //microsec
rpm = 60000000/(trot*300);
  cycle=0;                             //int
}

void COMP_ISR() iv IVT_ADDR_TIMER1_OVF ics ICS_AUTO {
      cycle++;                                      //int
}

void init_timer0()
{
        TCCR0 = 0b00001011; //CTC-3,6, Prescaler-0,1,2
        TCNT0 = 0;
        OCR0 = 124;
        TIMSK |= 0b00000010;//set interrupt OCM
}

void init_PWM(){
  TCCR2 = 0b01101111;
  OCR2 = 128;                 //factor de umplere 50%
}

void init_adc()
{
  ADMUX = 0b01000000;
  ADCSRA= 0b10000111;
}

int readADC (char ch){
ADMUX &= 0b11100000; //Reseteaza canalul de conversie
ADMUX |= ch; //Seteaza canalul conversiei
ADCSRA |= (1<<6); //Începe conversia
	while(ADCSRA & (1<<6)); //A?teapta finalizarea conversiei
adc_l = ADCL;
adc_h = ADCH;
return ((adc_h << 8) | adc_l);
}



void Timer0_ISR() iv IVT_ADDR_TIMER0_COMP{

        poz++;
        switch(poz)
        {       case 1: display(4,(value)%10);break;
                case 2: display(3,(value/10)%10);break;
                case 3: display(2,(value/100)%10);break;
                case 4: display(1,(value/1000)%10); poz=0;break;
                }

		if (ms==100){
           OCR2 = readADC(6)/4;
           value = rpm;
                ms=0;
        }
        else ms++;
}


void main()
{
  DDRA = 0b00001111;  //seteaza pinii de iesire
  DDRC = 0b11111111;
  DDRD &=~(1<<6);    //PD6 - INPUT
  DDRD |= 1<<7;      //PD7 - OUTPUT
  
  init_timer0();
  init_PWM();
  init_adc();
  Init_Input_Capture();
  SREG |= 1<<7;        //Set Enable Interrupt

        for(;;){

        }
}