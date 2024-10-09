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

package CMSIS.Device.DMA.Instances is
   --  Direct Access Memory (DMA) peripherals implemented in category 2, 3,
   --  and 5 devices

   type All_Instance_Type is
      (DMA1);
   --  All possible  Direct Access Memory (DMA) peripherals for the family of
   --  devices

   type Instance_Type is
      All_Instance_Type;
   --  Direct Access Memory (DMA) peripherals for category 2, 3, and 5 devices

   type All_Channel_Type is
      (CHANNEL_1, CHANNEL_2, CHANNEL_3, CHANNEL_4, CHANNEL_5, CHANNEL_6,
         CHANNEL_7);
   --  All possible Direct Access Memory (DMA) channels for the family of
   --  devices

   subtype Channel_Type is
      All_Channel_Type;
   --  Direct Access Memory (DMA) channels for category 2, 3 and 5 devices

   type Peripheral_Access_Type is
      not null access all DMA1_Peripheral;
   --

   DMAx : constant array (Instance_Type) of
      Peripheral_Access_Type := [
         DMA1 => DMA1_Periph'Access];
   --    Implementation notes:
   --  -  Simplify access to the DMA peripherals through a common interface

end CMSIS.Device.DMA.Instances;