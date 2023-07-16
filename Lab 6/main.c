#include<stdio.h>
#include "led.h"
#include "SystemClockConfig.h"

void task1_handler(void);

int main(void)
{
	SystemClockConfig();

	led_init_all();

	task1_handler();

	for(;;);
}


void task1_handler(void)
{
	while(1)
	{
		delay(PWR_PIN);
	}

}
