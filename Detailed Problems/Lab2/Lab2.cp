#line 1 "C:/Users/halma/Desktop/Facultate/An 2/Semestrul 1/Digital Electronics/Probleme lab/Lab2/Lab2.c"
void main() {

 DDRA|=0b00001111;
 DDRC|=0b11111111;


 while(1)
 {


 PORTA|=(1<<0);
 PORTC=0b01100110;
 delay_ms(1);
 PORTA&= ~(1<<0);


 PORTA|=(1<<1);
 PORTC=0b01001111;
 delay_ms(1);
 PORTA &= ~(1<<1);

 PORTA|=(1<<2);
 PORTC=0b01011011;
 delay_ms(1);
 PORTA &= ~(1<<2);

 PORTA|=(1<<3);
 PORTC=0b00000110;
 delay_ms(1);
 PORTA &= ~(1<<3);


 }


}
