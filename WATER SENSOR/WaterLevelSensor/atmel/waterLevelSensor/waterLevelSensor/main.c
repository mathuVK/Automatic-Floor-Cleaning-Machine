/*
 * waterLevelSensor.c
 *
 * Created: 4/13/2021 11:39:11 AM
 * Author : ASUS
 */ 


#define F_CPU 8000000UL 
#include <avr/io.h>
#include <util/delay.h>
#include <stdlib.h>
int beep_the_buzzer(void);
int stop_the_buzzer(void);

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
 
int main()
{

	
	DDRD |= (1<<PD5); 	

	ADC_Init();		/* initialize the ADC */
	//char array[10];
	int adc_value;
	float WaterLevel;

	while(1)
	{
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