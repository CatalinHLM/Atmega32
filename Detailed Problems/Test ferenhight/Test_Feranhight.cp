#line 1 "C:/Users/halma/Desktop/Facultate/An 2/Semestrul 1/Digital Electronics/Probleme lab/Lab6_2/Test_Feranhight.c"
int adc_value=0, value=0;
float tmp, Vin;
int ms=0, poz=0;
char l=0, h=0, F_C = 10;

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
 case 10:PORTC|=0b00111001; break;
 case 11:PORTC|=0b01110001; break;
 }
 switch(p){
 case 1: PORTA|=0b00001000; break;
 case 2: PORTA|=0b00000100; break;
 case 3: PORTA|=0b00000010; break;
 case 4: PORTA|=0b00000001; break;
 }
}



void Init_Interrupt0()
{
 GICR = 0b11000000;
 MCUCR = 0b00000000;
}

void ISR_INT0() iv IVT_ADDR_INT0 ics ICS_AUTO {

}

void ISR_INT1() iv IVT_ADDR_INT1 ics ICS_AUTO {

}


void Init_Timer(){
 TCCR0 = 0b00001011;
 TCNT0 = 0;
 OCR0 = 125;
 TIMSK |= 0b00000010;
}

void Init_ADC(char ch){
 ADMUX = 0b01000000;
 ADMUX |= ch;
 ADCSRA= 0b10000111;
 ADCSRA |= (1<<3);
 ADCSRA |= (1<<5);
 SFIOR = 0b01000000;
}

int adc(){
 ADCSRA|=(1<<6);
}

void ADC_Completed() iv IVT_ADDR_ADC ics ICS_AUTO {
 l = ADCL;
 h = ADCH;
 adc_value = h<<8 | l ;
 Vin = ((float)adc_value*5)/1024;
 tmp = Vin*1000/10;
 value = (int)(tmp*10);

}

int temp_F(){
 F_C = 11;
 return ((tmp * 9/5 + 32)*10);
 }

void Timer0_ISR() iv IVT_ADDR_TIMER0_COMP{
poz++;
 switch(poz)
 { case 1: display(2,value%10);break;
 case 2: display(3,(value/10)%10);break;
 case 3: display(4,(value/100)%10);break;
 case 4: display(1,F_C); poz=0;break;
 }
 if (ms==500){
 adc();
 ms=0;
 }else ms++;

 if(PINB & (1<<0))
 value = temp_F();
 else F_C = 10;
}

void main(){
 DDRA = 0b00001111;
 DDRC = 0b11111111;
 DDRB = 0b00000000;
 Init_Interrupt0();
 Init_Timer();
 Init_ADC(7);
 SREG |= 1<<7;

 for(;;){

 }
}
