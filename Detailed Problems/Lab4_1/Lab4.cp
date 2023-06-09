#line 1 "C:/Users/halma/Desktop/Facultate/An 2/Semestrul 1/Digital Electronics/Probleme lab/Lab4_1/Lab4.c"






int ms=0,m=0, s=0, digit=0;
char start = 0;

void display(char p, char c)
{
 PORTA &= 0b11110000;
 PORTC &= 0b00000000;

 switch(c)
 {
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
 switch(p)
 {
 case 1: PORTA|=0b00000001; break;
 case 2: PORTA|=0b00000010; break;
 case 3: PORTA|=0b00000100; break;
 case 4: PORTA|=0b00001000; break;
 }

}


void INT0_ISR() iv IVT_ADDR_INT0 ics ICS_AUTO
{
s = m = ms = 0;
}

void INT1_ISR() iv IVT_ADDR_INT1 ics ICS_AUTO
{
m++;
}

void init_INT()
{
 MCUCR = 0b00001111;
 GICR = 0b11000000;
 DDRD &= ~(1<<3);
 DDRD &= ~(1<<2);
}

void init_timer()
{
 TCCR0 = 0b00001011;
 TCNT0 = 0;
 OCR0 = 124;
 TIMSK |= 0b00000010;
}




void Timer0_ISR() iv IVT_ADDR_TIMER0_COMP{
 digit++;
 switch(digit)
 { case 1: display(4,s%10);break;
 case 2: display(3,(s/10)%10);break;
 case 3: display(2,(m%10));break;
 case 4: display(1,(m/10)%10); digit=0;break;
 }

 if (ms==1000)
 {
 s++;
 if(s==60)
 {
 s=0;
 m++;
 }
 ms=0;

 }
 else
 ms++;
}

void main()
{
 DDRA = 0b00001111;
 DDRC = 0b11111111;

 init_timer();
 init_INT();
 SREG |= 1<<7;

 for(;;)
 {

 }
}
