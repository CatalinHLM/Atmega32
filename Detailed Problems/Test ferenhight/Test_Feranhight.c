int adc_value=0, value=0;
float tmp, Vin;
int ms=0, poz=0;
char l=0, h=0, F_C = 10;//10 - C(elsius) 11 - F(ahrenheit)

void display(char p, char c){
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
     case 10:PORTC|=0b00111001; break; //C
     case 11:PORTC|=0b01110001; break; //F
  }
  switch(p){
      case 1: PORTA|=0b00001000; break;
      case 2: PORTA|=0b00000100; break;
      case 3: PORTA|=0b00000010; break;
      case 4: PORTA|=0b00000001; break;
  }
}



void Init_Interrupt0()                 //Configurarea intreruperii externe INT0 pentru Auto-trigger
{
        GICR  = 0b11000000;
        MCUCR = 0b00000000;
}

void ISR_INT0() iv IVT_ADDR_INT0 ics ICS_AUTO {

}

void ISR_INT1() iv IVT_ADDR_INT1 ics ICS_AUTO {

}


void Init_Timer(){
        TCCR0 = 0b00001011; //CTC-3,6, Prescaler-0,1,2
        TCNT0 = 0;
        OCR0 = 125;
        TIMSK |= 0b00000010;//set interrupt OCM
}

void Init_ADC(char ch){
  ADMUX = 0b01000000;             //Referinta AVCC with external capacitor
  ADMUX |= ch;
  ADCSRA= 0b10000111;             //Enable ADC - bit 7, 128 Division Factor - bit 2-0
  ADCSRA |= (1<<3);               //ADC Interrupt Enable
  ADCSRA |= (1<<5);             //ADC Auto-trigger on external interrupt 0
  SFIOR = 0b01000000;
}

int adc(){
  ADCSRA|=(1<<6);                 //Porneste conversia
}

void ADC_Completed() iv IVT_ADDR_ADC ics ICS_AUTO {
      l = ADCL;
      h = ADCH;
      adc_value = h<<8 | l ;
      Vin = ((float)adc_value*5)/1024;            //Vin - Tensiunea de intrare in ADC
      tmp = Vin*1000/10;                          //tmp = temperatura masurata - 10 mv/grd.C
      value = (int)(tmp*10);
      //value = adc_value ;
}

int temp_F(){
     F_C = 11;
     return ((tmp * 9/5 + 32)*10);
 }

void Timer0_ISR() iv IVT_ADDR_TIMER0_COMP{
poz++;
        switch(poz)
        {       case 1: display(2,value%10);break;
                case 2: display(3,(value/10)%10);break;
                case 3: display(4,(value/100)%10);break;
                case 4: display(1,F_C); poz=0;break;
                }
        if (ms==500){
                adc();                //CANAL -> 6 (PA6)
                ms=0;
        }else ms++;

        if(PINB & (1<<0))
                value = temp_F();
        else F_C = 10;
}

void main(){
  DDRA = 0b00001111;  //seteaza pinii de iesire
  DDRC = 0b11111111;
  DDRB = 0b00000000;
  Init_Interrupt0();
  Init_Timer();
  Init_ADC(7);
  SREG |= 1<<7;        //Set Enable Interrupt

        for(;;){

        }
}