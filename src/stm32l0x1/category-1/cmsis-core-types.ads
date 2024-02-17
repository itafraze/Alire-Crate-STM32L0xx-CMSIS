------------------------------------------------------------------------------
--  Copyright 2023, Emanuele Zarfati
--
--  Licensed under the Apache License, Version 2.0 (the "License"); you may
--  not use this file except in compliance with the License. You may obtain a
--  copy of the License at
--
--      http://www.apache.org/licenses/LICENSE-2.0
--
--  Unless required by applicable law or agreed to in writing, software
--  distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
--  WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
--  License for the specific language governing permissions and limitations
--  under the License.
--
------------------------------------------------------------------------------
--
--  Revision History:
--    2023.12 E. Zarfati
--       - First version
--       - Capitalise CMSIS
--
------------------------------------------------------------------------------

with CMSIS.Device.Interrupts;
   use CMSIS.Device.Interrupts;

------------------------------------------------------------------------------
--  CMSIS CORE TYPES
--
--  Purpose:
--
--  Implementation Notes:
--
------------------------------------------------------------------------------
package CMSIS.Core.Types is

   --  Interrupt Number Definition
   type Exception_Type is (
      IRQ_SV_CALL, IRQ_PEND_SV, IRQ_SYSTEM_TICK);

   --  Interrupt Number Definition
   type Interrupt_Type is (
      IRQ_WINDOW_WATCHDOG, IRQ_PVD_THROUGH_EXTI_LINE_DETECT,
      IRQ_RTC_THROUGH_EXTI_LINE, IRQ_FLASH, IRQ_RCC, IRQ_EXTI_LINE_0_TO_1,
      IRQ_EXTI_LINE_2_TO_3, IRQ_EXTI_LINE_4_TO_15, IRQ_DMA_CHANNEL_1,
      IRQ_DMA_CHANNEL_2_TO_3, IRQ_DMA_CHANNEL_4_TO_5,
      IRQ_ADC1_COMP1_TO_COMP2, IRQ_LPTIM1, IRQ_TIM2, IRQ_TIM21, IRQ_I2C1,
      IRQ_SPI1, IRQ_USART2, IRQ_LPUART1);

   --  Priority-level registers are 2 bit wide, occupying the two MSBs. Each
   --  Interrupt Priority Level Register is 1-byte wide.
   subtype Priority_Type is Natural range 0 .. 3;

private

   --
   for Interrupt_Type use (
      IRQ_WINDOW_WATCHDOG              => WWDG_Interrupt,
      IRQ_PVD_THROUGH_EXTI_LINE_DETECT => PVD_Interrupt,
      IRQ_RTC_THROUGH_EXTI_LINE        => RTC_Interrupt,
      IRQ_FLASH                        => FLASH_Interrupt,
      IRQ_RCC                          => RCC_Interrupt,
      IRQ_EXTI_LINE_0_TO_1             => EXTI0_1_Interrupt,
      IRQ_EXTI_LINE_2_TO_3             => EXTI2_3_Interrupt,
      IRQ_EXTI_LINE_4_TO_15            => EXTI4_15_Interrupt,
      IRQ_DMA_CHANNEL_1                => DMA1_Channel1_Interrupt,
      IRQ_DMA_CHANNEL_2_TO_3           => DMA1_Channel2_3_Interrupt,
      IRQ_DMA_CHANNEL_4_TO_5           => DMA1_Channel4_7_Interrupt,
      IRQ_ADC1_COMP1_TO_COMP2          => ADC_COMP_Interrupt,
      IRQ_LPTIM1                       => LPTIM1_Interrupt,
      IRQ_TIM2                         => TIM2_Interrupt,
      IRQ_TIM21                        => TIM21_Interrupt,
      IRQ_I2C1                         => I2C1_Interrupt,
      IRQ_SPI1                         => SPI1_Interrupt,
      IRQ_USART2                       => USART2_Interrupt,
      IRQ_LPUART1                      => AES_RNG_LPUART1_Interrupt
   );

end CMSIS.Core.Types;