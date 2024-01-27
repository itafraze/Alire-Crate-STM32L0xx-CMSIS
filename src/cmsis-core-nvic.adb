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
--       - Implement procedure Disable_IRQ
--       - Use *_Barrier in NVIC's IRQ-related procedures
--       - Reformat comments for GNATdoc
--       - Remove HAL dependency
--       - Implement IRQ_To_Bit_Mask
--       - Capitalise CMSIS
--
------------------------------------------------------------------------------

with CMSIS.Device.NVIC;
   use CMSIS.Device;
   use CMSIS.Device.NVIC;
   use type CMSIS.Device.NVIC.IPR0_PRI_0_Field;
with CMSIS.Device.SCB;

package body CMSIS.Core.NVIC is
   --  Implementation Notes:
   --  - Based on source files
   --    - CMSIS:Core/Include/core_cm0plus.h

   ---------------------------------------------------------------------------
   function IRQ_To_Bit_Mask (IRQ : Interrupt_Type)
      return UInt32
   is
      (Shift_Left (UInt32 (2#1#), IRQ'Enum_Rep))
   with Inline;

   ---------------------------------------------------------------------------
   procedure Enable_IRQ (IRQ : Interrupt_Type)
   is
   begin

      Compiler_Barrier;
      NVIC_Periph.ISER := IRQ_To_Bit_Mask (IRQ);
      Compiler_Barrier;

   end Enable_IRQ;

   ---------------------------------------------------------------------------
   procedure Disable_IRQ (IRQ : Interrupt_Type)
   is
   begin

      NVIC_Periph.ICER := IRQ_To_Bit_Mask (IRQ);
      Data_Synchronization_Barrier;
      Instruction_Synchronization_Barrier;

   end Disable_IRQ;

   ---------------------------------------------------------------------------
   function Priority_To_PRI_Value (Priority : Priority_Type)
      return IPR0_PRI_0_Field
   is
      --  Implementation notes:
      --  - Each PRI_N field is 8 bits wide, but the processor implements only
      --    bits[7:6] of each field, and bits[5:0] read as zero and ignore
      --    writes.
      (Shift_Left (IPR0_PRI_0_Field (Priority), 6))
   with Inline;

   ---------------------------------------------------------------------------
   procedure Set_Priority (IRQ      : Interrupt_Type;
                           Priority : Priority_Type)
   is
      --  NVIC support up to 32 interrupts. The first device-specific
      --  interrupt has the IRQ value 0.
      type NVIC_PRI_Range_Type is range 0 .. Interrupt_Type'Last'Enum_Rep;

      --  Map the array of PRI registers
      NVIC_PRI_Fields_Array : array (NVIC_PRI_Range_Type) of IPR0_PRI_0_Field
         with Address => NVIC_Periph.IPR0'Address, Volatile, Import;

      PRI_Value : constant IPR0_PRI_0_Field :=
         Priority_To_PRI_Value (Priority);
   begin

      NVIC_PRI_Fields_Array (IRQ'Enum_Rep) := PRI_Value;

   end Set_Priority;

   ---------------------------------------------------------------------------
   procedure Set_Priority (IRQ      : Exception_Type;
                           Priority : Priority_Type)
   is
      use CMSIS.Device.SCB;

      PRI_Value : constant IPR0_PRI_0_Field :=
         Priority_To_PRI_Value (Priority);
   begin

      case IRQ is
         when IRQ_SV_CALL     => SCB_Periph.SHPR2.PRI_11 := PRI_Value;
         when IRQ_PEND_SV     => SCB_Periph.SHPR3.PRI_14 := PRI_Value;
         when IRQ_SYSTEM_TICK => SCB_Periph.SHPR3.PRI_15 := PRI_Value;
      end case;

   end Set_Priority;

end CMSIS.Core.NVIC;