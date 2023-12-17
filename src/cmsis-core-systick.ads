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

with HAL;

------------------------------------------------------------------------------
--  CMSIS CORE SYSTICK
--
--  Purpose:
--
--  Implementation Notes:
--     Based on source file CMSIS/Core/Include/core_cm0plus.h
------------------------------------------------------------------------------
package Cmsis.Core.SysTick is

   --  Type of SysTick's Tick value
   --  Note: See implementation of SysTick_LOAD_RELOAD_Msk
   use type HAL.UInt24;
   type Ticks_Type is range 1 .. HAL.UInt24'Last + 1;

   ---------------------------------------------------------------------------
   --  SysTick_Config
   --
   --  Purpose: Initializes the System Timer and its interrupt, and starts the
   --     System Tick Timer. Counter is in free running mode to generate
   --     periodic interrupts.
   --  Parameters:
   --     - Ticks: Number of ticks between two interrupts.
   --  Returns:
   --     Operation success status.
   ---------------------------------------------------------------------------
   procedure Config (Ticks : Ticks_Type);

end Cmsis.Core.SysTick;
