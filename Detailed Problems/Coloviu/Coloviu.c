//#include <avr/io.h>
//#include <avr/interrupt.h>

int ms=0, poz=0, value;
int adc_l,adc_h;
int inc=0;
int N=255;
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

void INT1_ISR() iv IVT_ADDR_INT1 ics ICS_AUTO
{
  N=N+inc;
}

void init_adc()
{
  ADMUX = 0b01000000;
  ADCSRA= 0b10000111;
}

int readADC(char ch)
{
  ADMUX &= 0b11100000;
  ADMUX |= ch;
  ADCSRA|=(1<<6);
    while(ADCSRA&(1<<6));
  adc_l = ADCL;
  adc_h = ADCH;
  return (adc_h << 8) | adc_l;
}

void init_INT()         //Configurarea intreruperii externe
{
  MCUCR = 0b00000101;	//any logical change
  GICR  = 0b11000000;	//Int1, Int0
  DDRD &= ~(1<<3);	//PD3 - Input
}

void init_timer1()
{
        TCCR1A = 0b00000000; //CTC-0,1
        TCCR1B = 0b00001100; //CTC-3,4, Prescaler-0,1,2 (256)
        TCNT1H = 0;
        TCNT1L = 0;
        OCR1AH = 25000 >> 8;
        OCR1AL = 25000;
        TIMSK |= 0b00010000;//set interrupt OCM1A
}


void init_PWM(){
  DDRB |=1<<3;        //PD7 - output
  TCCR0 = 0b01111011;
  OCR0 = 102;                 //factor de umplere 60%
}

void INT0_ISR() iv IVT_ADDR_INT0 ics ICS_AUTO
{

}



void intTimer1() iv IVT_ADDR_TIMER1_COMPA ics ICS_AUTO 
{
        poz++;
        switch(poz){
                case 1: display(1,N%10);break;
                case 2: display(2,(N/10)%10);break;
                case 3: display(3,(N/100)%10);break;
                case 4: display(4,(N/1000)%10); poz=0;break;
                }

                value = (readADC(6)/4);
                if(value<85)
                               inc=-1;
                   else if(value>=85 && value<=170)
                               inc=0;
                   else
                               inc=1;


}

//ISR


void main(){
  DDRA = 0b00001111;  //seteaza pinii de iesire
  DDRC = 0b01111111;

  DDRD |=0b00000011;
  DDRD &=0b01111111;
  
  PORTD |=11;


  init_adc();
  init_timer1();
  init_PWM();
  init_INT();

  SREG |= 1<<7;            //set enable interrupt - activeaza intreruperile

    for(;;){
    
    
    
    }
}