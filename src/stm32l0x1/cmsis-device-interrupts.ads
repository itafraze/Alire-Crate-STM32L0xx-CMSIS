pragma Style_Checks (Off);

--  This spec has been automatically generated from stm32l0x1.svd

--  Definition of the device's interrupts
package CMSIS.Device.Interrupts is

   ----------------
   -- Interrupts --
   ----------------

   --  Window Watchdog interrupt
   WWDG_Interrupt             : constant := 0;

   --  PVD through EXTI line detection
   PVD_Interrupt              : constant := 1;

   --  RTC global interrupt
   RTC_Interrupt              : constant := 2;

   --  Flash global interrupt
   FLASH_Interrupt            : constant := 3;

   --  RCC global interrupt
   RCC_Interrupt              : constant := 4;

   --  EXTI Line[1:0] interrupts
   EXTI0_1_Interrupt          : constant := 5;

   --  EXTI Line[3:2] interrupts
   EXTI2_3_Interrupt          : constant := 6;

   --  EXTI Line15 and EXTI4 interrupts
   EXTI4_15_Interrupt         : constant := 7;

   --  DMA1 Channel1 global interrupt
   DMA1_Channel1_Interrupt    : constant := 9;

   --  DMA1 Channel2 and 3 interrupts
   DMA1_Channel2_3_Interrupt  : constant := 10;

   --  DMA1 Channel4 to 7 interrupts
   DMA1_Channel4_7_Interrupt  : constant := 11;

   --  ADC and comparator 1 and 2
   ADC_COMP_Interrupt         : constant := 12;

   --  LPTIMER1 interrupt through EXTI29
   LPTIM1_Interrupt           : constant := 13;

   --  USART4/USART5 global interrupt
   USART4_USART5_Interrupt    : constant := 14;

   --  TIM2 global interrupt
   TIM2_Interrupt             : constant := 15;

   --  TIM3 global interrupt
   TIM3_Interrupt             : constant := 16;

   --  TIM6 global interrupt and DAC
   TIM6_Interrupt             : constant := 17;

   --  TIM7 global interrupt and DAC
   TIM7_Interrupt             : constant := 18;

   --  TIMER21 global interrupt
   TIM21_Interrupt            : constant := 20;

   --  I2C3 global interrupt
   I2C3_Interrupt             : constant := 21;

   --  TIMER22 global interrupt
   TIM22_Interrupt            : constant := 22;

   --  I2C1 global interrupt
   I2C1_Interrupt             : constant := 23;

   --  I2C2 global interrupt
   I2C2_Interrupt             : constant := 24;

   --  SPI1_global_interrupt
   SPI1_Interrupt             : constant := 25;

   --  SPI2 global interrupt
   SPI2_Interrupt             : constant := 26;

   --  USART1 global interrupt
   USART1_Interrupt           : constant := 27;

   --  USART2 global interrupt
   USART2_Interrupt           : constant := 28;

   --  AES global interrupt RNG global interrupt and LPUART1 global interrupt
   --  through
   AES_RNG_LPUART1_Interrupt  : constant := 29;

end CMSIS.Device.Interrupts;
