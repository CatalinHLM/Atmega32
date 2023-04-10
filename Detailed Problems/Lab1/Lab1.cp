#line 1 "C:/Users/halma/Desktop/Facultate/An 2/Semestrul 1/Digital Electronics/Probleme lab/Lab1/Lab1.c"




void main()
{

 int starePB2 = 0;
 int stare=0;
 int increment = 0 ;



 DDRB |= (1<<7);
 DDRB &= ~(1<<3);


 DDRB |= (1<<6);
 DDRB &= ~(1<<2);


 DDRD |= 0b11111111;



 for(;;)
 {

 if(PINB & (1<<3))
 PORTB |= (1<<7);
 else
 PORTB &= ~(1<<7);



 if(PINB & (1<<2))
 {
 if(starePB2 == 0)
 {
 starePB2 = 1;
 PORTB ^= (1<<6);
 }
 }
 else
 starePB2 = 0;


 if(PINB & (1<<2))
 {
 if(stare == 0)
 {
 stare = 1;
 increment++;
 }
 }
 else
 stare = 0;

 PORTD=increment;
 }

}
