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
--       - Capitalise CMSIS
--
------------------------------------------------------------------------------

with CMSIS.Device;
   use type CMSIS.Device.UInt24;

package CMSIS.Core.SysTick is
   --  Systick Timer
   --
   --  Initialize and start the SysTick timer. The System Tick Time (SysTick)
   --  generates interrupt requests on a regular basis. This allows an OS to
   --  carry out context switching to support multiple tasking. For
   --  applications that do not require an OS, the SysTick can be used for
   --  time keeping, time measurement, or as an interrupt source for tasks
   --  that need to be executed regularly.

   type Ticks_Type is new Natural
      range 1 .. Natural (CMSIS.Device.UInt24'Last) + 1;
   --  Type of SysTick's Tick value
   --
   --  Notes:
   --  - Based on the SysTick Reload Register. See CMSIS
   --    SysTick_LOAD_RELOAD_Msk

   ---------------------------------------------------------------------------
   procedure Config (Ticks : Ticks_Type);
   --  System Tick Timer Configuration.
   --
   --  Initialises and starts the System Tick Timer and its interrupt. After
   --  this call, the SysTick timer creates interrupts with the specified time
   --  interval. Counter is in free running mode to generate periodical
   --  interrupts.
   --
   --  @param Ticks Number of ticks between two interrupts.

end CMSIS.Core.SysTick;
