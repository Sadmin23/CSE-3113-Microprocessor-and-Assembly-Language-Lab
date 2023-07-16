#include<stdint.h>
#include "led.h"
#include "RCC.h"
#include "GPIO.h"


void delay(uint32_t pwr_no)
{
	uint32_t *pGpiodInpReg = (uint32_t*) &GPIOA->IDR;
	
	int a = *pGpiodInpReg & (1 << pwr_no);

	if (a)
		led_on(LED_PIN);
	else
		led_off(LED_PIN);
}

void led_init_all(void)
{
	uint32_t *pRccAhb1enr = (uint32_t*) &RCC->AHB1ENR;
	uint32_t *pGpiodModeReg = (uint32_t*) &GPIOA->MODER;

	*pRccAhb1enr |= (1 << 0);
	*pGpiodModeReg |= (1 << (2 * LED_PIN));

    led_off(LED_PIN);
}

void led_on(uint8_t led_no)
{
	uint32_t *pGpiodDataReg = (uint32_t*) &GPIOA->ODR;
	*pGpiodDataReg |= (1 << led_no);
}

void led_off(uint8_t led_no)
{
	uint32_t *pGpiodDataReg = (uint32_t*) &GPIOA->ODR;
	*pGpiodDataReg &= ~(1 << led_no);
}


