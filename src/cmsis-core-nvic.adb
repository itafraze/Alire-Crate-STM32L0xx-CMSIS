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

with Cmsis.Device.NVIC;

with Cmsis.Device.SCB;

------------------------------------------------------------------------------
--  CMSIS CORE NVIC
--
--  Implementation Notes:
--     Based on source file CMSIS/Core/Include/core_cm0plus.h
------------------------------------------------------------------------------
package body Cmsis.Core.NVIC is

   use type HAL.UInt8;
   subtype NVIC_PRI_Type is HAL.UInt8;

   ---------------------------------------------------------------------------
   --  Priority_To_PRI_Value
   --
   --  Implementation notes:
   --     Each PRI_N field is 8 bits wide, but the processor implements only
   --     bits[7:6] of each field, and bits[5:0] read as zero and ignore
   --     writes.
   function Priority_To_PRI_Value (Priority : Priority_Type)
      return NVIC_PRI_Type
      is (NVIC_PRI_Type (Priority) * (2 ** 6))
      with Inline;

   ---------------------------------------------------------------------------
   --  Set_Priority
   --
   --  Implementation notes:
   --
   procedure Set_Priority (IRQ      : Interrupt_Type;
                           Priority : Priority_Type)
   is
      use Cmsis.Device.NVIC;

      --  NVIC support up to 32 interrupts. The first device-specific
      --  interrupt has the IRQ value 0.
      type NVIC_PRI_Range_Type is range 0 .. Interrupt_Type'Last'Enum_Rep;

      --  Map the array of PRI registers
      NVIC_PRI_Fields_Array : array (NVIC_PRI_Range_Type) of NVIC_PRI_Type
         with Address => NVIC_Periph.IPR0'Address, Volatile, Import;

      PRI_Value : constant NVIC_PRI_Type := Priority_To_PRI_Value (Priority);
   begin

      NVIC_PRI_Fields_Array (IRQ'Enum_Rep) := PRI_Value;

   end Set_Priority;

   procedure Set_Priority (IRQ      : Exception_Type;
                           Priority : Priority_Type)
   is
      use Cmsis.Device.SCB;

      PRI_Value : constant NVIC_PRI_Type := Priority_To_PRI_Value (Priority);
   begin

      case IRQ is
         when IRQ_SV_CALL     => SCB_Periph.SHPR2.PRI_11 := PRI_Value;
         when IRQ_PEND_SV     => SCB_Periph.SHPR3.PRI_14 := PRI_Value;
         when IRQ_SYSTEM_TICK => SCB_Periph.SHPR3.PRI_15 := PRI_Value;
      end case;

   end Set_Priority;

end Cmsis.Core.NVIC;