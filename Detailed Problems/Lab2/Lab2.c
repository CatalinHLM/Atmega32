void main() {

     DDRA|=0b00001111;//PA0_PA3 ->output
     DDRC|=0b11111111;//


     while(1)
     {


            PORTA|=(1<<0);//Digit1 (D1)
            PORTC=0b01100110; //4
            delay_ms(1);
            PORTA&= ~(1<<0);


            PORTA|=(1<<1);//Digit2 (D2)
            PORTC=0b01001111; //3
            delay_ms(1);
            PORTA &= ~(1<<1);

            PORTA|=(1<<2);//Digit3 (D3)
            PORTC=0b01011011; //2
            delay_ms(1);
            PORTA &= ~(1<<2);

            PORTA|=(1<<3);//Digit1 (D4)
            PORTC=0b00000110; //1
            delay_ms(1);
            PORTA &= ~(1<<3);


     }


}

