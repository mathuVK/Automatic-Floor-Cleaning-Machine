/*
 * Ultrasonic sensor HC-05 interfacing with ATmega16
 * http://www.electronicwings.com
 */ 
#ifndef F_CPU
#define F_CPU 16000000UL
#endif

#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>
#include <string.h>
#include <stdlib.h>
#include "LCD_16x2_H_file.h"/* Include LCD header file */

#define  Trigger_pin	PA0	/* Trigger pin */
#define MO1_I1 PC4
#define MO1_I2 PC5
#define MO2_I1 PC7
#define MO2_I2 PC6


int TimerOverflow = 0;

ISR(TIMER1_OVF_vect)
{
	TimerOverflow++;		/* Increment Timer Overflow count */
}

int main(void)
{
	char string[10];
	long count;
	double distance;
	
	DDRA = 0x01;			/* Make trigger pin as output */
	PORTD = 0xFF;			/* Turn on Pull-up */
	
	LCD_Init();
	LCD_String_xy(1, 0, "Ultrasonic");
	
	sei();					/* Enable global interrupt */
	TIMSK = (1 << TOIE1);	/* Enable Timer1 overflow interrupts */
	TCCR1A = 0;				/* Set all bit to zero Normal operation */
	
	// MOTOR
	DDRC =DDRC | (1 << MO1_I1)| (1 << MO1_I2)| (1 << MO2_I1)| (1 << MO2_I2);

	while(1)
	{

		PORTA |= (1 << Trigger_pin);/* Give 10us trigger pulse on trig. pin to HC-SR04 */
		_delay_us(10);
		PORTA &= (~(1 << Trigger_pin));
		
		TCNT1 = 0;			/* Clear Timer counter */
		TCCR1B = 0x41;		/* Setting for capture rising edge, No pre-scaler*/
		TIFR = 1<<ICF1;		/* Clear ICP flag (Input Capture flag) */
		TIFR = 1<<TOV1;		/* Clear Timer Overflow flag */

		/*Calculate width of Echo by Input Capture (ICP) on PortD PD6 */
		
		while ((TIFR & (1 << ICF1)) == 0);	/* Wait for rising edge */
		TCNT1 = 0;			/* Clear Timer counter */
		TCCR1B = 0x01;		/* Setting for capture falling edge, No pre-scaler */
		TIFR = 1<<ICF1;		/* Clear ICP flag (Input Capture flag) */
		TIFR = 1<<TOV1;		/* Clear Timer Overflow flag */
		TimerOverflow = 0;	/* Clear Timer overflow count */

		while ((TIFR & (1 << ICF1)) == 0); /* Wait for falling edge */
		count = ICR1 + (65535 * TimerOverflow);	/* Take value of capture register */
		/* 8MHz Timer freq, sound speed =343 m/s, calculation mentioned in doc. */
		distance = (double)count / (466.47);
		//distance = (double)count / 100; // 5280, 5440
		
		if (distance > 20){
			PORTC = PORTC |(1 << MO1_I2)|(1 << MO2_I2); // motor rotation in clockwise direction
			
			
		}
		
		else {
			PORTC =PORTC & ~(1 << MO1_I2) & ~(1 << MO1_I2);
			PORTC = PORTC |(1 << MO1_I1)|(1 << MO2_I1); //motor rotation in anticlockwise direction

			_delay_ms(3000);    //delay of 3 sec
			PORTC =PORTC & ~(1 << MO1_I1) & ~(1 << MO2_I1);

			_delay_ms(1000);    //delay of 1 sec
			
			PORTC = PORTC |(1 << MO1_I1)|(1 << MO2_I2); //motor rotation FOR ROTATE;

			_delay_ms(3000);    //delay of 3 sec
			
		}

		dtostrf(distance, 2, 2, string);/* Convert distance into string */
		strcat(string, " cm   ");
		LCD_String_xy(2, 0, "Dist = ");
		LCD_String_xy(2, 7, string);	/* Print distance on LDC16x2 */
		_delay_ms(200);
	}
}
