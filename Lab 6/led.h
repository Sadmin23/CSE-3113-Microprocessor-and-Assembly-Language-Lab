#ifndef LED_H_
#define LED_H_

#define LED_PIN  4
#define PWR_PIN  1

void led_init_all(void);
void led_on(uint8_t led_no);
void led_off(uint8_t led_no);
void delay(uint32_t pwr_no);

#endif /* LED_H_ */
