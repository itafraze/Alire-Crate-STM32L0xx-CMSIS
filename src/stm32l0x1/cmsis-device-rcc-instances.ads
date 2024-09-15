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
--    2024.09 E. Zarfati
--       - First version
--
------------------------------------------------------------------------------

package CMSIS.Device.RCC.Instances is
   --  Reset and Clock Control (RCC) peripherals

   type Peripheral_Access_Type is
      access all RCC_Peripheral;
   --

   RCC : constant Peripheral_Access_Type := RCC_Periph'Access;
   --  Implementation notes:
   --  -  Simplify access to the RCC peripheral through a common interface

end CMSIS.Device.RCC.Instances;