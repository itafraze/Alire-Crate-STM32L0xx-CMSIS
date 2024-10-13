------------------------------------------------------------------------------
--  Copyright 2024, Emanuele Zarfati
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
--    2024.01 E. Zarfati
--       - First version
--       - Reformat comments for GNATdoc
--       - Capitalise CMSIS
--    2024.10 E. Zarfati
--       - Add Enable/Disable_Interrupts
--       - Add Get/Set_PRIMASK
--
------------------------------------------------------------------------------

with System.Machine_Code;

package body CMSIS.Core is
   --  Implementation Notes:
   --  - Based on source files
   --    - cmsis_device_l0:Source/Templates/system_stm32l0xx.c
   --    - CMSIS:Core/Include/cmsis_gcc.h

   ---------------------------------------------------------------------------
   procedure Compiler_Barrier is
   --
      use System.Machine_Code;
      --
   begin

      Asm ("",
           Clobber => "memory",
           Volatile => True);

   end Compiler_Barrier;

   ---------------------------------------------------------------------------
   procedure Data_Synchronization_Barrier is
   --
      use System.Machine_Code;
      --
   begin

      Asm ("dsb 0xF",
           Clobber => "memory",
           Volatile => True);

   end Data_Synchronization_Barrier;

   ---------------------------------------------------------------------------
   procedure Instruction_Synchronization_Barrier is
   --
      use System.Machine_Code;
      --
   begin

      Asm ("isb 0xF",
           Clobber => "memory",
           Volatile => True);

   end Instruction_Synchronization_Barrier;

   ---------------------------------------------------------------------------
   procedure Enable_Interrupts is
   --
      use System.Machine_Code;
      --
   begin

      Asm ("cpsie i",
           Clobber => "memory",
           Volatile => True);

   end Enable_Interrupts;

   ---------------------------------------------------------------------------
   procedure Disable_Interrupts is
   --
      use System.Machine_Code;
      --
   begin

      Asm ("cpsid i",
           Clobber => "memory",
           Volatile => True);

   end Disable_Interrupts;

   ---------------------------------------------------------------------------
   function Get_PRIMASK
      return UInt32 is
   --
      use System.Machine_Code;
      --
      PRIMASK : UInt32;
      --  Returned value
   begin

      Asm ("mrs %0, PRIMASK",
           Outputs => UInt32'Asm_Output ("=r", PRIMASK),
           Volatile => True);

      return PRIMASK;

   end Get_PRIMASK;

   ---------------------------------------------------------------------------
   procedure Set_PRIMASK (PRIMASK : UInt32) is
   --
      use System.Machine_Code;
      --
   begin

      Asm ("MSR primask, %0",
           Inputs => UInt32'Asm_Input ("r", PRIMASK),
           Clobber => "memory",
           Volatile => True);

   end Set_PRIMASK;

end CMSIS.Core;