#line 1 "C:/Users/halma/Desktop/Facultate/An 2/Semestrul 1/Digital Electronics/Probleme lab/Lab2_2/Lab2_2.c"
void display(char p, char c)
{

 PORTA &= 0b11110000;
 PORTC &= 0b00000000;

 switch(c){
 case 0:
 PORTC |= 0b00111111;
 break;
 case 1:
 PORTC |= 0b00000110;
 break;
 case 2:
 PORTC |= 0b01011011;
 break;
 case 3:
 PORTC |= 0b01001111;
 break;
 case 4:
 PORTC |= 0b01100110;
 break;
 case 5:
 PORTC |= 0b01101101;
 break;
 case 6:
 PORTC |= 0b01111101;
 break;
 case 7:
 PORTC |= 0b00000111;
 break;
 case 8:
 PORTC |= 0b01111111;
 break;
 case 9:
 PORTC |= 0b01101111;
 break;
 }
 switch(p){
 case 1:
 PORTA |= 0b00001000;
 break;
 case 2:
 PORTA |= 0b00000100;
 break;
 case 3:
 PORTA |= 0b00000010;
 break;
 case 4:
 PORTA |= 0b00000001;
 break;
 }

}

void main()
{
 int value=0;
 int stare=0;
 DDRA|=0b00001111;
 DDRC|=0b11111111;
 DDRB&=~(1<<7);

 while(1)
 {
 if(PINB & (1<<7))
 {
 if(stare == 0)
 {
 stare = 1;
 value++;
 }
 }
 else
 stare = 0;

 display(1,(value%10));
 display(2,(value/10)%10);
 display(3,(value/100)%10);
 display(4,(value/1000)%10);
 }


}
