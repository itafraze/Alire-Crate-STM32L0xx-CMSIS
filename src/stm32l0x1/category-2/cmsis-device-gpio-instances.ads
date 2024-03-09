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
--    2024.03 E. Zarfati
--       - First version
--
------------------------------------------------------------------------------

with Ada.Unchecked_Conversion;

package CMSIS.Device.GPIO.Instances is
   --  General Purpose Input/Output (GPIO) peripherals implemented in category
   --  2 devices

   type All_Instance_Type is
      (GPIOA, GPIOB, GPIOC, GPIOH, GPIOD, GPIOE);
   --  All possible General Purpose Input/Output (GPIO) peripherals for the
   --  family of devices

   subtype Instance_Type is
      All_Instance_Type range GPIOA .. GPIOH;
   --  Available General Purpose Input/Output (GPIO) peripherals for the
   --  actual device

   type All_Pin_Type is
      (PIN_0, PIN_1, PIN_2, PIN_3, PIN_4, PIN_5, PIN_6, PIN_7, PIN_8, PIN_9,
         PIN_10, PIN_11, PIN_12, PIN_13, PIN_14, PIN_15);
   --  All possible General Purpose Input/Output (GPIO) pins for the
   --  family of devices

   subtype Pin_Type is
      All_Pin_Type;
   --  Available General Purpose Input/Output (GPIO) pins for the actual
   --  device

   type GPIO_Peripheral_Access_Type is
      access all GPIO_Peripheral;
   --

   type Peripheral_Access_Type is
      access all GPIOA_Peripheral;
   --

   ---------------------------------------------------------------------------
   function To_Peripheral_Access_Type is
      new Ada.Unchecked_Conversion (GPIO_Peripheral_Access_Type,
                                    Peripheral_Access_Type);

   GPIOx : constant array (Instance_Type)
      of Peripheral_Access_Type := [
         GPIOA => GPIOA_Periph'Access,
         GPIOB => To_Peripheral_Access_Type (GPIOB_Periph'Access),
         GPIOC => To_Peripheral_Access_Type (GPIOC_Periph'Access),
         GPIOH => To_Peripheral_Access_Type (GPIOH_Periph'Access)];
   --  Implementation notes:
   --  -  Simplify access to the GPIO peripherals through a common interface

end CMSIS.Device.GPIO.Instances;