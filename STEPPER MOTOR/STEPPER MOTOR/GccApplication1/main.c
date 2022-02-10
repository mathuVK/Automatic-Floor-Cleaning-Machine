/*
 * GccApplication1.c
 *
 * Created: 4/12/2021 5:48:10 PM
 * Author : pc
 */ 

#define F_CPU 8000000UL		/* Define CPU Frequency 8MHz */
#include <avr/io.h>		/* Include AVR std. library file */
#include <util/delay.h>		/* Include delay header file */

#define stepper1 PC0 //Define PC0 as stepper motor controller pin 1B
#define stepper2 PC1 //Define PC1 as stepper motor controller pin 2B
#define stepper3 PC2 //Define PC2 as stepper motor controller pin 3B
#define stepper4 PC3 //Define PC3 as stepper motor controller pin 4B

int main(void)
{
	int period;
	DDRD = 0x0F;		/* Make PORTD lower pins as output */
	period = 100;		/* Set period in between two steps */
	while (1)
	{
		/* Rotate Stepper Motor clockwise with Half step sequence */
		/* Rotate Stepper Motor clockwise with Half step sequence */
		for(int i=0;i<12;i++)
		{
			PORTD = PORTD|0x09;
			_delay_ms(period);
			PORTD = PORTD &(~(0x09));
			PORTD = PORTD|0x08;
			_delay_ms(period);
			PORTD = PORTD &(~(0x08));
			PORTD = PORTD|0x0C;
			_delay_ms(period);
			PORTD = PORTD &(~(0x0C));
			PORTD = PORTD|0x04;
			_delay_ms(period);
			PORTD = PORTD &(~(0x04));
			PORTD = PORTD|0x06;
			_delay_ms(period);
			PORTD = PORTD &(~(0x06));
			PORTD = PORTD|0x02;
			_delay_ms(period);
			PORTD = PORTD &(~(0x02));
			PORTD = PORTD|0x03;
			_delay_ms(period);
			PORTD = PORTD &(~(0x03));
			PORTD = PORTD|0x01;
			_delay_ms(period);
			PORTD = PORTD &(~(0x01));
			
		}
		PORTD =PORTD | 0x09;		/* Last step to initial position */
		_delay_ms(period);
		_delay_ms(1000);

		/* Rotate Stepper Motor Anticlockwise with Full step sequence */
		for(int i=0;i<12;i++)
		{
			PORTD = PORTD|0x09;
			_delay_ms(period);
			PORTD = PORTD &(~(0x09));
			PORTD = PORTD|0x03;
			_delay_ms(period);
			PORTD = PORTD &(~(0x03));
			PORTD = PORTD|0x06;
			_delay_ms(period);
			PORTD = PORTD &(~(0x06));
			PORTD = PORTD|0x0C;
			_delay_ms(period);
			PORTD = PORTD &(~(0x0C));
		}
		PORTD = PORTD|0x09;
		_delay_ms(period);
		PORTD = PORTD &(~(0x09));
		_delay_ms(1000);
	}
}

