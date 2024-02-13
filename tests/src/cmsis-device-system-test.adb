------------------------------------------------------------------------------
--  Copyright 2024, Emanuele Zarfati
--
--  Licensed under the Apache License, Version 2.0 (the "License");
--  you may not use this file except in compliance with the License.
--  You may obtain a copy of the License at
--
--      http://www.apache.org/licenses/LICENSE-2.0
--
--  Unless required by applicable law or agreed to in writing, software
--  distributed under the License is distributed on an "AS IS" BASIS,
--  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
--  See the License for the specific language governing permissions and
--  limitations under the License.
--
------------------------------------------------------------------------------
--
--  Revision History:
--    2024.02 E. Zarfati
--       - First version
--
------------------------------------------------------------------------------

with AUnit.Assertions;
with AUnit.Test_Caller;
with CMSIS.Device.SCB;
with GNAT.Debug_Utilities;

package body CMSIS.Device.System.Test
is
   use AUnit.Assertions;

   package Caller
      is new AUnit.Test_Caller (Reset_Fixture);
   --

   Result : aliased AUnit.Test_Suites.Test_Suite;
   --  Statically allocated test suite

   -------------------------------------------------------------------------
   overriding procedure Set_Up (T : in out Reset_Fixture)
   is
      --
      --
      pragma Unreferenced (T);

      use CMSIS.Device.SCB;

   begin

      --  An implementation can include configuration input signals that
      --  determine the reset value of the TBLOFF field, otherwise it resets
      --  to zero.
      SCB_Periph.VTOR.Reserved_0_6 := 0;
      SCB_Periph.VTOR.TBLOFF := 0;

   end Set_Up;

   -------------------------------------------------------------------------
   procedure Init_Writes_TBLOFF (T : in out Reset_Fixture)
   is
      --  CMSIS.Device.System.Init writes the location of the interrupt vector
      --  table in TBLOFF field in register VTOR
      --
      --  Implementation notes:
      --  - Bound to Reset_Fixture as CMSIS.Device.System.Init should be
      --    already executed from within the start-up code
      pragma Unreferenced (T);

      use GNAT.Debug_Utilities;
      use CMSIS.Device.SCB;
      use type Standard.System.Address;

      VTOR_Register : Standard.System.Address
         with Volatile, Import, Address => SCB_Periph.VTOR'Address;

      First_IVT_Entry : UInt32
         with Volatile, Import, External_Name => "__vectors";
   begin

      Init;

      Assert (VTOR_Register = First_IVT_Entry'Address,
              "VTOR has not been assigned IVT address: "
                  & Image (VTOR_Register) & " /= "
                  & Image (First_IVT_Entry'Address));

   end Init_Writes_TBLOFF;

   -------------------------------------------------------------------------
   function Suite
      return AUnit.Test_Suites.Access_Test_Suite
   is
   begin

      Result.Add_Test
        (Caller.Create ("CMSIS.Device.System::"
                           & "Reset_Fixture::"
                           & "Init_Writes_TBLOFF",
                        Init_Writes_TBLOFF'Access));

      return Result'Access;

   end Suite;

end CMSIS.Device.System.Test;
