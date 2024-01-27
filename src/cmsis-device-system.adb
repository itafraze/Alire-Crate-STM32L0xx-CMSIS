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
--       - Rename package to Cmsis.Device.System
--       - Remove HAL dependency
--
------------------------------------------------------------------------------

with System.Storage_Elements;
with Cmsis.Device.SCB;

package body Cmsis.Device.System is
   --  Implementation Notes:
   --  - Based on source file
   --    - cmsis_device_l0:Source/Templates/system_stm32l0xx.c

   procedure Init
   is
      package SysStor renames Standard.System.Storage_Elements;
      use Cmsis.Device.SCB;

      Vectors : aliased UInt32;
      pragma Import (C, Vectors, "__vectors");

      Vactors_Address : constant UInt32 :=
         UInt32 (SysStor.To_Integer (Vectors'Address));
   begin

         --  Configure the Vector Table location. TBLOFF contains bits[31:7]
         --  of the offset of the table base from the memory map bottom.
      SCB_Periph.VTOR.TBLOFF :=
         VTOR_TBLOFF_Field (Shift_Right (Vactors_Address, 7));

   end Init;

end Cmsis.Device.System;