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
--    2024.03 E. Zarfati
--       - First version
--
------------------------------------------------------------------------------

package CMSIS.Device.ADC.Instances is
   --  Analog-to-Digital Converter (ADC) peripherals

   type All_Instance_Type is
      (ADC1);
   --  All possible Analog-to-Digital Converter (ADC) peripherals for the
   --  family of devices

   subtype Instance_Type is
      All_Instance_Type;
   --  Available Analog-to-Digital Converter (ADC) peripherals for the actual
   --  device

   type All_Channel_Type is
      (CHANNEL_1, CHANNEL_2, CHANNEL_3, CHANNEL_4, CHANNEL_5, CHANNEL_6,
      CHANNEL_7, CHANNEL_8, CHANNEL_9, CHANNEL_10, CHANNEL_11, CHANNEL_12,
      CHANNEL_13, CHANNEL_14, CHANNEL_15, CHANNEL_16, V_SENSE, V_REFINT);
   --  All possible Analog-to-Digital Converter (ADC) channels for the
   --  family of devices

   subtype Channel_Type is
      All_Channel_Type;
   --  Available Analog-to-Digital Converter (ADC) channels for the actual
   --  device

   type Peripheral_Access_Type is
      access all ADC_Peripheral;
   --

   ---------------------------------------------------------------------------
   function Is_Instance (Instance : All_Instance_Type)
      return Boolean is
      (Instance'Valid)
      with Inline;
   --  All supported instances

   ADCx : constant array (All_Instance_Type)
      of Peripheral_Access_Type := [
         ADC1  => ADC_Periph'Access];
   --  Implementation notes:
   --  -  Simplify access to the ADC peripherals through a common interface

end CMSIS.Device.ADC.Instances;