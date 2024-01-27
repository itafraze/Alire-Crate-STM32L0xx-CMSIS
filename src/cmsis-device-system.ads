------------------------------------------------------------------------------
--  Copyright 2023-2024, Emanuele Zarfati
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
--    2024.01 E. Zarfati
--       - Make procedure Init visible the start-up code
--       - Reformat comments for GNATdoc
--       - Rename package to CMSIS.Device.System
--       - Remove HAL dependency
--
------------------------------------------------------------------------------

package CMSIS.Device.System is
   --  System and Clock Configuration
   --
   --  CMSIS-Core(M) Device Peripheral Access Layer provides as a minimum the
   --  functions for system and clock setup.

   Core_Clock : Natural := 32_768 * (2 ** 6);
   --  System clock frequency
   --
   --  Contains the core clock (HCLK), it can be used by the user application
   --  to setup the SysTick timer or configure other parameters.
   --
   --  Implementation Notes:
   --  - Initialised to CPU's reset value. See RCC.ICSCR.MSIRANGE

   ---------------------------------------------------------------------------
   procedure Init
      with
         Export        => True,
         Convention    => Asm,
         External_Name => "Cmsis_Device_System_Init";
   --  Initializes the microcontroller system.
   --
   --  A device-specific system configuration function

end CMSIS.Device.System;
