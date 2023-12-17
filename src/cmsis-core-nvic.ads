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
--
------------------------------------------------------------------------------

with Cmsis.Core.Types;
   use Cmsis.Core.Types;

------------------------------------------------------------------------------
--  CMSIS CORE NVIC
--
--  Purpose:
--
--  Implementation Notes:
--     Based on source file CMSIS/Core/Include/core_cm0plus.h
------------------------------------------------------------------------------
package Cmsis.Core.NVIC is

   ---------------------------------------------------------------------------
   --  NVIC_Set_Priority
   --
   --    Sets the priority for the interrupt specified by IRQ_Number.
   --    IRQ_Number can specify any device specific interrupt, or processor
   --    exception. The priority specifies the interrupt priority value,
   --    whereby lower values indicate a higher priority. The default priority
   --    is 0 for every interrupt. This is the highest possible priority.
   --
   --  Notes:
   --    - Dynamic switching of interrupt priority levels is not supported.
   --      The priority level of an interrupt should not be changed after it
   --      has been enabled.
   --
   procedure Set_Priority (IRQn     : Interrupt_Type;
                           Priority : Priority_Type);

   ---------------------------------------------------------------------------
   --  NVIC_Set_Priority
   --
   --    Sets the priority for the interrupt specified by IRQ_Number.
   --    IRQ_Number can specify any device specific interrupt, or processor
   --    exception. The priority specifies the interrupt priority value,
   --    whereby lower values indicate a higher priority. The default priority
   --    is 0 for every interrupt. This is the highest possible priority.
   --
   --  Notes:
   --    - Dynamic switching of interrupt priority levels is not supported.
   --      The priority level of an interrupt should not be changed after it
   --      has been enabled.
   --
   procedure Set_Priority (IRQn     : Exception_Type;
                           Priority : Priority_Type);

end Cmsis.Core.NVIC;