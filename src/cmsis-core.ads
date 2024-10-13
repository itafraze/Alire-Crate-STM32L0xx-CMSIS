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
--       - Reformat comments for GNATdoc
--       - Capitalise CMSIS
--    2024.10 E. Zarfati
--       - Add Enable/Disable_Interrupts
--       - Add Get/Set_PRIMASK
--
------------------------------------------------------------------------------

with CMSIS.Device;
   use CMSIS.Device;

package CMSIS.Core is
   --  Standardized API for the Cortex-M processor core and peripherals.
   --
   --  CMSIS-Core (Cortex-M) implements the basic run-time system for a
   --  Cortex-M device and gives the user access to the processor core and the
   --  device peripherals. In detail it defines:
   --  - Hardware Abstraction Layer (HAL) for Cortex-M processor registers
   --    with standardized definitions for the SysTick, NVIC, System Control
   --    Block registers, MPU registers, FPU registers, and core access
   --    functions.
   --  - System exception names to interface to system exceptions without
   --    having compatibility issues.
   --  - Methods to organize header files that makes it easy to learn new
   --    Cortex-M microcontroller products and improve software portability.
   --    This includes naming conventions for device-specific interrupts.
   --  - Methods for system initialization to be used by each MCU vendor. For
   --    example, the standardized SystemInit() function is essential for
   --    configuring the clock system of the device.
   --  - Intrinsic functions used to generate CPU instructions that are not
   --    supported by standard C functions.
   --  - A variable to determine the system clock frequency which simplifies
   --    the setup the SysTick timer.

   pragma Preelaborate;

   ---------------------------------------------------------------------------
   procedure Compiler_Barrier
      with Inline;
   --  This barrier limits the compilers reordering optimizations. It prevents
   --  the compiler from swapping instructions resulting from code before and
   --  after the barrier.

   ---------------------------------------------------------------------------
   procedure Data_Synchronization_Barrier
      with Inline;
   --  This function acts as a special kind of Data Memory Barrier. It
   --  completes when all explicit memory accesses before this instruction
   --  complete.

   ---------------------------------------------------------------------------
   procedure Instruction_Synchronization_Barrier
      with Inline;
   --  Instruction Synchronization Barrier flushes the pipeline in the
   --  processor, so that all instructions following the ISB are fetched from
   --  cache or memory, after the instruction has been completed.

   ---------------------------------------------------------------------------
   procedure Enable_Interrupts
      with Inline;
   --  Enable IRQ Interrupts
   --
   --  Enables IRQ interrupts by clearing special-purpose register PRIMASK.
   --
   --  Notes:
   --  - Can only be executed in Privileged modes.

   ---------------------------------------------------------------------------
   procedure Disable_Interrupts
      with Inline;
   --  Disable IRQ Interrupts
   --
   --  Enables IRQ interrupts by clearing special-purpose register PRIMASK.
   --
   --  Notes:
   --  - Can only be executed in Privileged modes.

   ---------------------------------------------------------------------------
   function Get_PRIMASK
      return UInt32
      with Inline;
   --  Get Priority Mask
   --
   --  Returns the current state of the priority mask bit from the Priority
   --  Mask Register.
   --
   --  @return Priority Mask register value

   ---------------------------------------------------------------------------
   procedure Set_PRIMASK (PRIMASK : UInt32)
      with Inline;
   --  Set Priority Mask
   --
   --  Assigns the given value to the Priority Mask Register.
   --
   --  @param PRIMASK register value

end CMSIS.Core;
