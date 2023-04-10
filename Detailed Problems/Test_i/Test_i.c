unsigned char disable_ex4 = 0; // for ex5. Another option would have been
                               // disabling the timer interrupt altogether

// 3)
void display(char ch) { // no position argument because we only use one digit,
                        // no logic needed to multiplex the digits, and thus no
                        // need to store the displayed value somewhere other
                        // than just putting it in PORTC
    switch(ch) {
    default: PORTC = 0; break;
    case 'A': PORTC = 0b01110111; break;
    case 'F': PORTC = 0b01110001; break;
    }
}

// 4) interrupt handler
void ex4_repeat() iv IVT_ADDR_TIMER2_COMP ics ICS_AUTO {
    static int rep = 0; // interrupt fires every 1.6ms, `rep` will count in
                        // 1.6ms units

    if(rep++ >= 1000) { // 1000 * 1.6ms = 1.6s
        rep -= 1000;
        if(!disable_ex4) {
            if(OCR0 < 204) // 204 ~ 80%
                OCR0 += 51; // 51 ~ 20%
            else
                OCR0 = 51; // Reset to 20% after reaching 80% instead of
                           // incrementing to 100%
        }
    }

    if(!disable_ex4)
        display('A');
}

// 5)
void ex5_int0() iv IVT_ADDR_INT0 ics ICS_AUTO {
     disable_ex4 = 1;
     OCR0 = 102; // 102 ~ 40%
     display('F');
     PORTB |= 1<<5;
}

void ex5_int1() iv IVT_ADDR_INT1 ics ICS_AUTO {
     disable_ex4 = 0;
     display('A');
     PORTB &= ~(1<<5);
}

void main() {
    // 1)
    DDRD &= 0b11110011; // INT0 - PD2, INT1 - PD3, inputs
    DDRB |= 1<<5; // PB5 output

    // 2) configure timer0
    // 3906.25Hz = 8000000Hz / 256 / N => N = 8
    TCCR0 = 0b01101010; // WGM: FastPWM, COM: non-inverting, prescale 8
    OCR0 = 51; // 51 / 255 = 20%
    DDRB |= 1<<3; // Timer0 OC pin is PB3, set it as output

    // 3) configure display, only on the last digit, and set last digit to
    // always be selected. Changing the display will only be done by changing
    // PORTC, and no multiplexing logic will be required.
    DDRA |= 1;
    PORTA |= 1;
    DDRC = 0b11111111;

    // 4) configure timer2
    TCCR2 = 0b00001101; // WGM: CTC, COM: OC2 disconnected, prescale 128
    OCR2 = 99; // (99+1) * 128 / 8000000Hz = 1.6ms
    TIMSK |= 0b10000000; // Enable timer 2 Output Compare interrupt
    SREG |= 1<<7; // enable interrupts globally

    // 5)
    GICR |= 0b11000000; // Enable INT0, INT1
    MCUCR |= 0b1111; // Configure interrupts 0,1 on the rising edge

    for(;;);
}