#line 1 "C:/Users/halma/Desktop/Facultate/An 2/Semestrul 1/Digital Electronics/Probleme lab/Lab5_1/Lab5_1.c"
int n=0, value = 0, adv=0;
float tmp, vin;
int ms=0, digit=0;
char adc_l=0, adc_h=0;

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
 case 1: PORTA|=0b00001000; break;
 case 2: PORTA|=0b00000100; PORTC |= 1<<7;break;
 case 3: PORTA|=0b00000010; break;
 case 4: PORTA|=0b00000001; break;
 }

}

void init_timer(){
 TCCR0 = 0b00001011;
 TCNT0 = 0;
 OCR0 = 124;
 TIMSK |= 0b00000010;
}

void init_adc(){
 ADMUX = 0b00000000;
 ADCSRA= 0b10000111;
}

int readADC (char ch){
 ADMUX &= 0b11100000;
 ADMUX |= ch;
 ADCSRA |= (1<<6);
 while(ADCSRA & (1<<6));
 adc_l = ADCL;
 adc_h = ADCH;
 return ((adc_h << 8) | adc_l);
}

void Timer0_ISR() iv IVT_ADDR_TIMER0_COMP{
 digit++;
 switch(digit)
 {
 case 1: display(1,value%10);break;
 case 2: display(2,(value/10)%10);break;
 case 3: display(3,(value/100)%10);break;
 case 4: display(4,(value/1000)%10); digit=0;break;
 }

 if (ms==100)
 {
 adv = readADC(7);
 vin = 5.0*((float)adv)/1024;
 tmp=vin*1000/10;
 value=tmp*10;
 ms=0;
 }
 else
 ms++;
}

void main(){
 DDRA = 0b00001111;
 DDRC = 0b11111111;
 init_timer();
 init_adc();
 SREG |= 1<<7;
 for(;;);
}
