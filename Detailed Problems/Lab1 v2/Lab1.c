//#include <avr/io.h>



void main()
{  

  int starePB2 = 0;
  int increment = 0 ;
   
  DDRB |= (1<<7); //PB7 – Ie?ire
  DDRB &= ~(1<<3); //PB3 – Intrare
  
  DDRB |= (1<<6); //PB6 – Ie?ire
  DDRB &= ~(1<<2); //PB2 – Intrare


  
  
  
  for(;;)
        {
        //a
        if(PINB & (1<<3))         //testare pin PB3
            PORTB |= (1<<7);      //PB7 – HIGH (LED ON)
        else
            PORTB &= ~(1<<7);     //PB7 – LOW (LED OFF)
        
        //b
        if(PINB & (1<<2))         //testare pin PB2
                starePB2 = 0;
            else
                            {
            if(starePB2 == 0)     //variabila va tine minte starea
                {
                starePB2 = 1;     //anterioara a pin-ului PB2

                PORTB ^= (1<<6);//se schimba starea LED-ului

                }
            }
            
            
        }
}