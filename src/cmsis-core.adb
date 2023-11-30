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
--    2023.11 E. Zarfati
--       - First version
--
------------------------------------------------------------------------------

------------------------------------------------------------------------------
--  CMSIS CORE
--
--  Implementation Notes:
--     Based on source file CMSIS/Core/Include/core_cm0plus.h
------------------------------------------------------------------------------
package body Cmsis.Core is

   ---------------------------------------------------------------------------
   --  SysTick_Config
   --
   --  Implementation notes:
   --     No check is enforced on the input parater as its type already
   --     enforces its allowed range.
   --
   function SysTick_Config (Ticks : SysTick_Ticks_Type)
      return Boolean is

      --
      Success : Boolean := True;

   begin

      return Success;

   end SysTick_Config;

end Cmsis.Core;
