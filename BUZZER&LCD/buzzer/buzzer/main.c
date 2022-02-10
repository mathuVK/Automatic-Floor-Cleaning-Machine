/*
 * buzzer.c
 *
 * Created: 4/10/2021 12:11:34 PM
 * Author : Shantham Vavuniya
 */ 
#define F_CPU 8000000UL /* define Clock Frequency */
#include <avr/io.h>		/* Include AVR std. library file */
#include <util/delay.h>		/* Include delay header file */
#include <avr/interrupt.h>

int beep_the_buzzer ()
{
	PORTD|= (1<<PD5);	//PIND5 turned HIGH, to start beeping of buzzer
	
}


int stop_the_buzzer ()
{
	PORTD&=~ (1<<PD5);	//PIND5 turned LOW, to stop beeping of buzze
}
int main()
{
	beep_the_buzzer ();
	_delay_ms(200);
	
	stop_the_buzzer ();
	
}