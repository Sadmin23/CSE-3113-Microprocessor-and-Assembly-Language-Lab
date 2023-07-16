#include<stdio.h>
#include "CLOCK.h"
#include "RCC.h"
#include "GPIO.h"

#define LED_PIN  4
#define PWR_PIN  1

int main(void)
{
	initClock();

	uint32_t *pRccAhb1enr = (uint32_t*) &RCC->AHB1ENR;
	uint32_t *pGpiodModeReg = (uint32_t*) &GPIOA->MODER;

	*pRccAhb1enr |= (1 << 0);
	*pGpiodModeReg |= (1 << (2 * LED_PIN));

	while(1)
	{
		uint32_t *pGpiodInpReg = (uint32_t*) &GPIOA->IDR;	
		uint32_t *pGpiodDataReg = (uint32_t*) &GPIOA->ODR;
		int a = *pGpiodInpReg & (1 << PWR_PIN);

		if (a)
			*pGpiodDataReg |= (1 << LED_PIN);
		else
			*pGpiodDataReg &= ~(1 << LED_PIN);		
	}



}
