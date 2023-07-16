#include<stdint.h>
#include"CLOCK.h"
#include"RCC.h"

void initClock()
{
    uint32_t *rcc_cr = (uint32_t*) &RCC->CR;
    uint32_t *rcc_cfgr = (uint32_t*) &RCC->CFGR;
    uint32_t *rcc_pllcfgr = (uint32_t*) &RCC->PLLCFGR;
    uint32_t *apb1enr = (uint32_t*) &RCC->APB1ENR;
    uint32_t *pwr_cr = (uint32_t*) 0x40007000;
    uint32_t *flash_acr = (uint32_t*) 0x40023C00;

    *rcc_cr |= (1 << 16);
    while(!(*rcc_cr & (1 << 17)));

    *apb1enr |= (1 << 28);
    *pwr_cr |= (3 << 14);

    *flash_acr = (1 << 9) | (1 << 10) | (1 << 8) | (5 << 0);

    *rcc_cfgr = 0U;
    *rcc_cfgr |= (5 << 10);
    *rcc_cfgr |= (4 << 13);

	*rcc_pllcfgr = (PLL_M << 0) | (PLL_N << 6) | (PLL_P << 16) | (1 << 22);

    *rcc_cr |= (1 << 24);
	while (!(*rcc_cr & (1 << 25)));

    *rcc_cfgr |= (2 << 0);
	while ((*rcc_cfgr & (3 << 2)) != (2 << 2));
}