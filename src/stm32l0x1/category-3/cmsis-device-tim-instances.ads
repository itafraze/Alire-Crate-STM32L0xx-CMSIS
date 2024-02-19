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

with Ada.Unchecked_Conversion;

package CMSIS.Device.TIM.Instances is
   --  Timer (TIM) peripherals implemented in category 3 devices

   type All_Instance_Type is
      (TIM2, TIM21, TIM22, TIM6, TIM3, TIM7);
   --  All possible timer (TIM) peripherals for the family of devices

   subtype Instance_Type is
      All_Instance_Type range TIM2 .. TIM6;
   --  Available timer (TIM) peripherals for category 3 devices

   type Channel_Type is
      (CHANNEL_1, CHANNEL_2, CHANNEL_3, CHANNEL_4);
   --

   type Advanced_Peripheral_Access_Type is
      access all TIM2_Peripheral;
   --

   type TIM21_Peripheral_Access_Type is
      access all TIM21_Peripheral;
   --

   type TIM22_Peripheral_Access_Type is
      access all TIM22_Peripheral;
   --

   type TIM6_Peripheral_Access_Type is
      access all TIM6_Peripheral;
   --

   -------------------------------------------------------------------------
   function Supports_Counter_Mode_Select (Instance : Instance_Type)
      return Boolean
      is (Instance in TIM2 .. TIM22)
      with Inline;
   --  Check whether the instance supports counting mode selection
   --
   --  Implementation notes:
   --  - Based on define IS_TIM_COUNTER_MODE_SELECT_INSTANCE is
   --    cmsis_device_l0:Include/stm32l051xx.h

   -------------------------------------------------------------------------
   function Supports_Clock_Division (Instance : Instance_Type)
      return Boolean
      renames Supports_Counter_Mode_Select;
   --  Check whether the instance supports clock division
   --
   --  Implementation notes:
   --  - Based on define IS_TIM_CLOCK_DIVISION_INSTANCE is
   --    cmsis_device_l0:Include/stm32l051xx.h
   --  - Reuse the same implementation

   -------------------------------------------------------------------------
   function To_Advanced_Peripheral_Access_Type is
      new Ada.Unchecked_Conversion (TIM21_Peripheral_Access_Type,
                                    Advanced_Peripheral_Access_Type);
   function To_Advanced_Peripheral_Access_Type is
      new Ada.Unchecked_Conversion (TIM22_Peripheral_Access_Type,
                                    Advanced_Peripheral_Access_Type);
   function To_Advanced_Peripheral_Access_Type is
      new Ada.Unchecked_Conversion (TIM6_Peripheral_Access_Type,
                                    Advanced_Peripheral_Access_Type);

   TIMx : constant array (All_Instance_Type)
      of Advanced_Peripheral_Access_Type := [
         TIM2  => TIM2_Periph'Access,
         TIM21 => To_Advanced_Peripheral_Access_Type (TIM21_Periph'Access),
         TIM22 => To_Advanced_Peripheral_Access_Type (TIM22_Periph'Access),
         TIM6  => To_Advanced_Peripheral_Access_Type (TIM6_Periph'Access),
         TIM3  => TIM3_Periph'Access,
         TIM7  => To_Advanced_Peripheral_Access_Type (TIM7_Periph'Access)];
   --    Implementation notes:
   --  -  Simplify access to the TIM peripherals through a common interface.
   --     However, not all peripherals have the same capabilities, hence make
   --     use of `Support_*` functions to discriminate their capabilities

end CMSIS.Device.TIM.Instances;