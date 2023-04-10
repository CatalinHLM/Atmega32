void display(char p, char c)
{

      PORTA &= 0b11110000; //liniile de sel. digit - oprite
      PORTC &= 0b00000000; //liniile de sel. Seg. - oprite

      switch(c){
        case 0:
        PORTC |= 0b00111111;                            //codificare cifra 0
        break;
        case 1:
        PORTC |= 0b00000110;                            //codificare cifra 1
        break;
        case 2:
        PORTC |= 0b01011011;                            //codificare cifra 2
        break;
        case 3:
        PORTC |= 0b01001111;                            //codificare cifra 3
        break;
        case 4:
        PORTC |= 0b01100110;                            //codificare cifra 4
        break;
        case 5:
        PORTC |= 0b01101101;                            //codificare cifra 5
        break;
        case 6:
        PORTC |= 0b01111101;                            //codificare cifra 6
        break;
        case 7:
        PORTC |= 0b00000111;                            //codificare cifra 7
        break;
        case 8:
        PORTC |= 0b01111111;                            //codificare cifra 8
        break;
        case 9:
        PORTC |= 0b01101111;                            //codificare cifra 9
        break;
      }
      switch(p){
        case 1:
        PORTA |= 0b00001000;                            //activare digit 1
        break;
        case 2:
        PORTA |= 0b00000100;                            //activare digit 2
        break;
        case 3:
        PORTA |= 0b00000010;                            //activare digit 3
        break;
        case 4:
        PORTA |= 0b00000001;                            //activare digit 4
        break;
      }
      //Delay_ms(4);
}

void main()
{
     int value=0;
     int stare=0;
     DDRA|=0b00001111;//PA0_PA3 ->output
     DDRC|=0b11111111;//
     DDRB&=~(1<<7);

     while(1)
     {
        if(PINB & (1<<7))         //testare pin PB2
        {
            if(stare == 0)
            {
                stare = 1;     //anterioara a pin-ului PB2
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