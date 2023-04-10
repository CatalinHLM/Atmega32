int adc_value=0, value=0;
float tmp, Vin;
int ms=0, poz=0;
char l=0, h=0;

void display(char p, char c){
 PORTA &= 0b11110000;
 PORTC &= 0b00000000;

  switch(c)
  {
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
  switch(p)
  {
      case 1: PORTA|=0b00001000; break;
      case 2: PORTA|=0b00000100; PORTC|=(1<<7); break;
      case 3: PORTA|=0b00000010; break;
      case 4: PORTA|=0b00000001; break;
  }
}

void Init_Interrupt0()                 //Configurarea intreruperii externe INT0 pentru Auto-trigger
{
    GICR  = 0b11000000;
    MCUCR = 0b00001111;
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

void Init_ADC()
{
        ADMUX = 0b01000000;             //Referinta AVCC with external capacitor
        ADCSRA= 0b10000111;             //Enable ADC - bit 7, 128 Division Factor - bit 2-0
        ADCSRA |= (1<<3);               //ADC Interrupt Enable
        ADCSRA |= (1<<5);             //ADC Auto-trigger on external interrupt 0
        SFIOR = 0b01000000;
}

int adc(char ch){
        ADMUX &= 0b11100000;             //Reseteaza canalul de conversie
        ADMUX |= ch;                     //Seteaza canalul conversiei
        ADCSRA|=(1<<6);                  //Porneste conversia
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

void Timer0_ISR() iv IVT_ADDR_TIMER0_COMP ics ICS_AUTO{
        poz++;
        switch(poz)
        {       case 1: display(1,value%10);break;
                case 2: display(2,(value/10)%10);break;
                case 3: display(3,(value/100)%10);break;
                case 4: display(4,(value/1000)%10); poz=0;break;
        }
        if (ms==100)
        {
                adc(7);		//CANAL -> 7 (PA7)
                ms=0;
        }
        else 
                ms++;
}

void main(){
        DDRA = 0b00001111;  //seteaza pinii de iesire
        DDRC = 0b11111111;
        Init_Interrupt0();
        Init_Timer();
        Init_ADC();
        SREG |= 1<<7;        //Set Enable Interrupt

        for(;;)
        {

        }
}