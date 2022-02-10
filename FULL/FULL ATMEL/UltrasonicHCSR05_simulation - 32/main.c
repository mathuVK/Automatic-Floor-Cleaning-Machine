/*
 FULL MAIN CODING
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
int beep_the_buzzer(void);
int stop_the_buzzer(void);

#define  Trigger_pin	PA0	/* Trigger pin */
#define MO1_I1 PC4
#define MO1_I2 PC5
#define MO2_I1 PC7
#define MO2_I2 PC6
#define stepper1 PC0 //Define PC0 as stepper motor controller pin 1B
#define stepper2 PC1 //Define PC1 as stepper motor controller pin 2B
#define stepper3 PC2 //Define PC2 as stepper motor controller pin 3B
#define stepper4 PC3 //Define PC3 as stepper motor controller pin 4B

int TimerOverflow = 0;

ISR(TIMER1_OVF_vect)
{
	TimerOverflow++;		/* Increment Timer Overflow count */
}

void ADC_Init()
{
	DDRA=0x0;			/* Make ADC port as input */
	ADCSRA = 0x87;			/* Enable ADC, fr/128  */
	ADMUX = 0x47;			/* Vref: Avcc, ADC channel: 7 */
	
}

int ADC_Read(char channel)
{
	int Ain,AinLow;
	
	ADMUX=ADMUX|(channel & 0x0f);	/* Set input channel to read */

	ADCSRA |= (1<<ADSC);		/* Start conversion */
	while((ADCSRA&(1<<ADIF))==0);	/* Monitor end of conversion interrupt */
	
	_delay_us(10);
	AinLow = (int)ADCL;		/* Read lower byte*/
	Ain = (int)ADCH*256;		/* Read higher 2 bits and 
					Multiply with weight */
	Ain = Ain + AinLow;				
	return(Ain);			/* Return digital value*/
}
int beep_the_buzzer ()
{
	PORTD|= (1<<PD5);	//PIND5 turned HIGH, to start beeping of buzzer
	
}


int stop_the_buzzer ()
{
	PORTD&=~ (1<<PD5);	//PIND5 turned LOW, to stop beeping of buzze
}

int main(void)
{
	char string[10];
	long count;
	double distance;
	int period;
	period = 100;		/* Set period in between two steps */
	
	
	DDRC =DDRC | (1 << MO1_I1)| (1 << MO1_I2)| (1 << MO2_I1)| (1 << MO2_I2); // MOTOR
	DDRA = 0x01;			/* Make trigger pin as output */
	PORTD = 0xFF;			/* Turn on Pull-up */
	DDRD =DDRD| 0x0F;		/* Make PORTD lower pins as output */
	DDRD |= (1<<PD5);       //Make PD5 ad output pin

	
	LCD_Init();
	LCD_String_xy(1, 0, "Ultrasonic");
	
	sei();					/* Enable global interrupt */
	TIMSK = (1 << TOIE1);	/* Enable Timer1 overflow interrupts */
	TCCR1A = 0;				/* Set all bit to zero Normal operation */
	
	ADC_Init();		/* initialize the ADC */
	int adc_value;
	float WaterLevel;


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
		
		
		adc_value = ADC_Read(7);	/* Copy the ADC value */
		WaterLevel = 100-(adc_value*100.00)/1023.00; /* Calculate waterlevel in % */
		
		if ( WaterLevel < 20.0){
			beep_the_buzzer ();
		}
		else
		{
			stop_the_buzzer();

		}
	}
	}

