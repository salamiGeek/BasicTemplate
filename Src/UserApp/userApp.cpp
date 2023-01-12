#include <stdio.h>
#include "usart.h"
#include <string>
#include "UserApp/userApp.h"
#include "stm32f4xx_hal.h"


void setup() {

    printf("run setup\r\n");
}

void loop() {

    HAL_GPIO_TogglePin(LED0_GPIO_Port, LED0_Pin);
    HAL_GPIO_TogglePin(LED1_GPIO_Port, LED1_Pin);
    std::string str = "hello c++ loop";
    printf("%s\r\n", str.c_str());
    HAL_Delay(1000);
}