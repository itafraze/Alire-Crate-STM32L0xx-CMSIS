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

with AUnit.Test_Fixtures;
with AUnit.Test_Caller;

package body CMSIS.Device.System.Test
is

   type Reset_Fixture is
      new AUnit.Test_Fixtures.Test_Fixture with null record;
   --

   package Caller
      is new AUnit.Test_Caller (Reset_Fixture);
   --

   Result : aliased AUnit.Test_Suites.Test_Suite;
   --  Statically allocated test suite

   -------------------------------------------------------------------------
   procedure Init_Writes_TBLOFF (T : in out Reset_Fixture)
   is
   begin
      null;
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
