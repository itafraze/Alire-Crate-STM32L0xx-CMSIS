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
--    2024.04 E. Zarfati
--       - First version
--
------------------------------------------------------------------------------

package CMSIS.Device.LPTIM.Instances is
   --  Low-Power Timer (LPTIM) peripherals

   type All_Instance_Type is
      (LPTIM1);
   --  All possible Low-Power Timer (LPTIM) peripherals for the family of
   --  devices

   subtype Instance_Type is
      All_Instance_Type;
   --  Available Low-Power Timer (LPTIM) peripherals for the actual device

   type Peripheral_Access_Type is
      access all LPTIM_Peripheral;
   --

   ---------------------------------------------------------------------------
   function Is_Instance (Instance : All_Instance_Type)
      return Boolean is
      (Instance'Valid)
      with Inline;
   --  All supported instances

   LPTIMx : constant array (All_Instance_Type)
      of Peripheral_Access_Type := [
         LPTIM1  => LPTIM_Periph'Access];
   --  Implementation notes:
   --  -  Simplify access to the LPTIM peripherals through a common interface

end CMSIS.Device.LPTIM.Instances;
