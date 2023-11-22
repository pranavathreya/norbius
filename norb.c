#include <avr/interrupt.h>
#include <avr/sleep.h>
#include <avr/delay.h>

#define F_CPU 16000000UL

ISR (INT0_vect) {
	PORTB ^= _BV(PORTB2);
}

void ioinit (void) {
	EICRA = _BV(ISC00); // INT0 falling edge triggered
	EIMSK = _BV(INT0);
	sei();
	
	PORTB ^= _BV(PORTB2);
	PORTD = _BV(PORTD2); // activate internal pull-up
	DDRB = _BV(DDB2);
}

int main(void) {
	ioinit();
	for (;;)
		sleep_mode();

	return (0);
}
