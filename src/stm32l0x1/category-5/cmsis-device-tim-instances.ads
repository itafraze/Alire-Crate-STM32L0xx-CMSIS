------------------------------------------------------------------------------
--  Copyright 2024, Emanuele Zarfati
--
--  Licensed under the Apache License, Version 2.0 (the "License");
--  you may not use this file except in compliance with the License.
--  You may obtain a copy of the License at
--
--      http://www.apache.org/licenses/LICENSE-2.0
--
--  Unless required by applicable law or agreed to in writing, software
--  distributed under the License is distributed on an "AS IS" BASIS,
--  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
--  See the License for the specific language governing permissions and
--  limitations under the License.
--
------------------------------------------------------------------------------
--
--  Revision History:
--    2024.02 E. Zarfati
--       - First version
--
------------------------------------------------------------------------------

package CMSIS.Device.TIM.Instances is
   --  Timer (TIM) peripherals implemented in category 5 devices

   type All_Instance_Type is
      (TIM2, TIM21, TIM22, TIM6, TIM3, TIM7);
   --  All possible timer (TIM) peripherals for the family of devices

   subtype Instance_Type is
      All_Instance_Type;
   --  Available timer (TIM) peripherals for category 5 devices

   type Channel_Type is
      (CHANNEL_1, CHANNEL_2, CHANNEL_3, CHANNEL_4);
   --

   function Supports_Counter_Mode_Select (Instance : Instance_Type)
      return Boolean
      is (Instance in TIM2 .. TIM22 | TIM3)
      with Inline;
   --  Check whether the instance supports counting mode selection
   --
   --  Implementation notes:
   --  - Based on define IS_TIM_COUNTER_MODE_SELECT_INSTANCE is
   --    cmsis_device_l0:Include/stm32l071xx.h

end CMSIS.Device.TIM.Instances;