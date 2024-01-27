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
--       - Supply interface Disable_IRQ
--       - Reformat comments for GNATdoc
--       - Capitalise CMSIS
--
------------------------------------------------------------------------------

with CMSIS.Core.Types;
   use CMSIS.Core.Types;

package CMSIS.Core.NVIC is
   --  Functions to access the Nested Vector Interrupt Controller (NVIC).

   ---------------------------------------------------------------------------
   procedure Enable_IRQ (IRQ : Interrupt_Type);
   --  Enables a device specific interrupt in the NVIC interrupt controller.
   --
   --  Notes:
   --  - The number of supported interrupts depends on the implementation of
   --    the chip designer
   --
   --  @param IRQ Interrupt identifier

   procedure Disable_IRQ (IRQ : Interrupt_Type);
   --  Disables a device specific interrupt in the NVIC interrupt controller.
   --
   --  Notes:
   --  - The number of supported interrupts depends on the implementation of
   --    the chip designer
   --
   --  @param IRQ Interrupt identifier

   ---------------------------------------------------------------------------
   procedure Set_Priority (IRQ      : Interrupt_Type;
                           Priority : Priority_Type);
   --  Set the priority for an interrupt.
   --
   --  Notes:
   --  - Dynamic switching of interrupt priority levels is not supported. The
   --    priority level of an interrupt should not be changed after it has
   --    been enabled.
   --
   --  @param IRQ Device specific interrupt identifier
   --  @param Priority The interrupt priority value, whereby lower values
   --    indicate a higher priority. The default priority is 0 for every
   --    interrupt

   ---------------------------------------------------------------------------
   procedure Set_Priority (IRQ      : Exception_Type;
                           Priority : Priority_Type);
   --  Set the priority for an exception.
   --
   --  Notes:
   --  - The priority cannot be set for every core interrupt. HardFault and
   --    NMI have a fixed (negative) priority that is higher than any
   --    configurable exception or interrupt.
   --
   --  @param IRQ Processor exception identifier
   --  @param Priority The exception priority value

end CMSIS.Core.NVIC;