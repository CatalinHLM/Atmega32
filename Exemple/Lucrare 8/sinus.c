//#include <avr/io.h>
//#include <avr/interrupt.h>

int ms=0, l, h, poz=0, value, i = 0, adv;

unsigned char sin4[] ={128,255,128,0};
unsigned char sin12[] = {128,191,238,255,238,191,128,64,17,0,17,64};

//int sinus[] = {128,167,202,231,249,255,249,231,202,167,128,88,53,24,6,0,6,24,53,88};
unsigned char sin20[] = {128,167,202,231,249,255,249,231,202,167,128,88,53,24,6,0,6,24,53,88};
//int sin50[] = {127,143,159,174,188,202,214,225,234,242,248,252,254,254,252,248,242,234,225,214,202,188,174,159,143,127,111,95,80,66,52,40,29,20,12,6,2,0,0,2,6,12,20,29,40,52,66,80,95,111};
int sin100[] = {127,135,143,151,159,166,174,181,188,195,202,208,214,220,225,230,234,238,242,245,248,250,252,253,254,254,254,253,252,250,248,245,242,238,234,230,225,220,214,208,202,195,188,181,174,166,159,151,143,135,127,119,111,103,95,88,80,73,66,59,52,46,40,34,29,24,20,16,12,9,6,4,2,1,0,0,0,1,2,4,6,9,12,16,20,24,29,34,40,46,52,59,66,73,80,88,95,103,111,119,127};

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
        OCR0  = 124;
        TIMSK|= 0b00000010;  //activeaza intreruperea de Output Compare Match (comparare la iesire)
}


void init_PWM(){
  TCCR2 = 0b01101001;//Pre = 1 => f = 31250Hz
  OCR2 = 128;                 //factor de umplere 50%
}

//ISR
void ISR_Timer0() iv IVT_ADDR_TIMER0_COMP ics ICS_AUTO {


                if (ms>=49){         //O perioada are 20 elemente => T = 20*50ms= 1000ms => f = 1Hz
                  OCR2 = sin20[i++];
                        if(i==20)
                                 i=0;
                        ms=0;
                }
                else ms++;

}

void main(){
  DDRA = 0b00001111;  //seteaza pinii de iesire
  DDRC = 0b01111111;
  DDRD|=1<<7;                //PWM pin OC2 => PD7 - Output
  //init_adc();
  init_timer();
  init_PWM();

  SREG |= 1<<7;            //set enable interrupt - activeaza intreruperile

    for(;;){
    }
}