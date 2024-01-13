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
--    2023.11 E. Zarfati
--       - First version
--    2024.01 E. Zarfati
--       - Add interface Compiler_Barrier
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
------------------------------------------------------------------------------
package Cmsis.Core is
   pragma Preelaborate;

   ---------------------------------------------------------------------------
   --  Compiler_Barrier
   --
   --    This barrier limits the compilers reordering optimizations. It
   --    prevents the compiler from swapping instructions resulting from code
   --    before and after the barrier.
   --
   procedure Compiler_Barrier
      with Inline;

   ---------------------------------------------------------------------------
   --  Data_Synchronization_Barrier
   --
   --    This function acts as a special kind of Data Memory Barrier. It
   --    completes when all explicit memory accesses before this instruction
   --    complete.
   --
   procedure Data_Synchronization_Barrier
      with Inline;

   ---------------------------------------------------------------------------
   --  Data_Synchronization_Barrier
   --
   --    Instruction Synchronization Barrier flushes the pipeline in the
   --    processor, so that all instructions following the ISB are fetched
   --    from cache or memory, after the instruction has been completed.
   --
   procedure Instruction_Synchronization_Barrier
      with Inline;

end Cmsis.Core;
