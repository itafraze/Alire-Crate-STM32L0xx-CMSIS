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
--       - Reformat comments for GNATdoc
--       - Remove HAL dependency
--
------------------------------------------------------------------------------

with Cmsis.Core.Types;
with Cmsis.Core.NVIC;
with Cmsis.Device.STK;

package body Cmsis.Core.SysTick is
   --  Implementation Notes:
   --  - Based on source files
   --    - CMSIS:Core/Include/core_cm0plus.h

   ---------------------------------------------------------------------------
   procedure Config (Ticks : Ticks_Type)
   --  Implementation Notes:
   --  - No check is enforced on the input parater as its type already
   --    enforces the allowed values.
   is
      use Cmsis.Core.Types;
      use Cmsis.Device.STK;

      CSR_Field_Value : constant CSR_Register := (
         CLKSOURCE => 2#1#,
         TICKINT   => 2#1#,
         ENABLE    => 2#1#,
         others    => <>);
   begin

      STK_Periph.RVR.RELOAD := RVR_RELOAD_Field (Ticks - 1);
      NVIC.Set_Priority (IRQ_SYSTEM_TICK, 3);
      STK_Periph.CVR.CURRENT := CVR_CURRENT_Field (0);
      STK_Periph.CSR := CSR_Field_Value;

   end Config;

end Cmsis.Core.SysTick;
