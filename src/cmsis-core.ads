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
--  Purpose:
--     CMSIS-Core (Cortex-M) implements the basic run-time system for a
--     Cortex-M device and gives the user access to the processor core and the
--     device peripherals. In detail it defines:
--
--     - Hardware Abstraction Layer (HAL) for Cortex-M processor registers
--       with standardized definitions for the SysTick, NVIC, System Control
--       Block registers, MPU registers, FPU registers, and core access
--       functions.
--     - System exception names to interface to system exceptions without
--       having compatibility issues.
--     - Methods to organize header files that makes it easy to learn new
--       Cortex-M microcontroller products and improve software portability.
--       This includes naming conventions for device-specific interrupts.
--     - Methods for system initialization to be used by each MCU vendor. For
--       example, the standardized SystemInit() function is essential for
--       configuring the clock system of the device.
--     - Intrinsic functions used to generate CPU instructions that are not
--       supported by standard C functions.
--     - A variable to determine the system clock frequency which simplifies
--       the setup the SysTick timer.
--
--
--  Implementation Notes:
--     Based on source file CMSIS/Core/Include/core_cm0plus.h
------------------------------------------------------------------------------
with HAL;
   use type HAL.UInt24;

package Cmsis.Core is
   pragma Preelaborate;

   --  Type of SysTick's Tick value
   --  Note: See implementation of SysTick_LOAD_RELOAD_Msk
   type SysTick_Ticks_Type is range 1 .. HAL.UInt24'Last + 1;

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
   function SysTick_Config (Ticks : SysTick_Ticks_Type)
      return Boolean;

end Cmsis.Core;
