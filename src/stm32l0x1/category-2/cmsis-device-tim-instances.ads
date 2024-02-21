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

with Ada.Unchecked_Conversion;

package CMSIS.Device.TIM.Instances is
   --  Timer (TIM) peripherals implemented in category 2 devices
   --
   --  Implementation Notes:
   --  - Based on
   --    - cmsis_device_l0:Include/stm32l031xx.h
   --    - cmsis_device_l0:Include/stm32l041xx.h
   --  - Most `IS_TIM_...` defines are converted to `Supports_...` functions

   type All_Instance_Type is
      (TIM2, TIM21, TIM22, TIM6, TIM3, TIM7);
   --  All possible timer (TIM) peripherals for the family of devices

   subtype Instance_Type is
      All_Instance_Type range TIM2 .. TIM22;
   --  Available timer (TIM) peripherals for category 2 devices

   type Channel_Type is
      (CHANNEL_1, CHANNEL_2, CHANNEL_3, CHANNEL_4);
   --

   type Advanced_Peripheral_Access_Type is
      access all TIM2_Peripheral;
   --

   type TIM21_Peripheral_Access_Type is
      access all TIM21_Peripheral;
   --

   type TIM22_Peripheral_Access_Type is
      access all TIM22_Peripheral;
   --

   type TIM6_Peripheral_Access_Type is
      access all TIM6_Peripheral;
   --

   ---------------------------------------------------------------------------
   function Is_Instance (Instance : All_Instance_Type)
      return Boolean is
      (Instance'Valid)
      with Inline;
   --  All supported instances

   ---------------------------------------------------------------------------
   function Supports_CC1 (Instance : All_Instance_Type)
      return Boolean
      renames Is_Instance;
   --  Check whether the instance supports at least 1 capture/compare channel

   ---------------------------------------------------------------------------
   function Supports_CC2 (Instance : All_Instance_Type)
      return Boolean
      renames Is_Instance;
   --  Check whether the instance supports at least 2 capture/compare channel

   ---------------------------------------------------------------------------
   function Supports_CC3 (Instance : All_Instance_Type)
      return Boolean is
      (Instance = TIM2)
      with Inline;
   --  Check whether the instance supports at least 3 capture/compare channel

   ---------------------------------------------------------------------------
   function Supports_CC4 (Instance : All_Instance_Type)
      return Boolean
      renames Supports_CC3;
   --  Check whether the instance supports at least 4 capture/compare channel

   ---------------------------------------------------------------------------
   function Supports_DMA_Update (Instance : All_Instance_Type)
      return Boolean
      renames Supports_CC3;
   --  Check whether the instance supports DMA requests generation (UDE)

   ---------------------------------------------------------------------------
   function Supports_DMA_Capture_Compare (Instance : All_Instance_Type)
      return Boolean
      renames Supports_CC3;
   --  Check whether the instance supports DMA requests generation (CCxDE)

   ---------------------------------------------------------------------------
   function Supports_DMA_Burst (Instance : All_Instance_Type)
      return Boolean
      renames Supports_CC3;
   --  Check whether the instance supports DMA burst feature

   ---------------------------------------------------------------------------
   function Supports_Outputs (Instance : All_Instance_Type;
                              Channel : Channel_Type)
      return Boolean is
      (((Instance = TIM2) and then Channel'Valid)
         or else ((Instance = TIM21)
                  and then (Channel in CHANNEL_1 | CHANNEL_2))
         or else ((Instance = TIM22)
                  and then (Channel in CHANNEL_1 | CHANNEL_2)))
      with Inline;
   --  Check whether the instance have output(s) available

   ---------------------------------------------------------------------------
   function Supports_Clock_Division (Instance : All_Instance_Type)
      return Boolean
      renames Is_Instance;
   --  Check whether the instance supports clock division

   ---------------------------------------------------------------------------
   function Supports_Clock_Source_1_ETRF (Instance : All_Instance_Type)
      return Boolean is
      (Instance in TIM2 | TIM21)
      with Inline;
   --  Check whether the instance supports external clock mode 1 for ETRF
   --  input

   ---------------------------------------------------------------------------
   function Supports_Clock_Source_2_ETRF (Instance : All_Instance_Type)
      return Boolean
      renames Is_Instance;
   --  Check whether the instance supports external clock mode 2 for ETRF
   --  input

   ---------------------------------------------------------------------------
   function Supports_Clock_Source_1_TIx (Instance : All_Instance_Type)
      return Boolean
      renames Supports_Clock_Source_1_ETRF;
   --  Check whether the instance supports external clock mode 1 for TIX
   --  inputs

   ---------------------------------------------------------------------------
   function Supports_Clock_Source_ITRx (Instance : All_Instance_Type)
      return Boolean
      renames Is_Instance;
   --  Check whether the instance supports internal trigger inputs (ITRX)

   ---------------------------------------------------------------------------
   function Supports_Counter_Mode_Select (Instance : All_Instance_Type)
      return Boolean
      renames Is_Instance;
   --  Check whether the instance supports counting mode selection

   ---------------------------------------------------------------------------
   function Supports_Encoder (Instance : All_Instance_Type)
      return Boolean
      renames Is_Instance;
   --  Check whether the instance supports encoder interface

   ---------------------------------------------------------------------------
   function Supports_External_Trigger (Instance : All_Instance_Type)
      return Boolean
      renames Is_Instance;
   --  Check whether the instance supports external trigger input available

   ---------------------------------------------------------------------------
   function Supports_Master_Mode (Instance : All_Instance_Type)
      return Boolean
      renames Is_Instance;
   --  Check whether the instance supports master mode available (TIMx_CR2.MMS
   --  available)

   ---------------------------------------------------------------------------
   function Supports_Slave_Mode (Instance : All_Instance_Type)
      return Boolean
      renames Is_Instance;
   --  Check whether the instance supports Slave mode

   ---------------------------------------------------------------------------
   function Supports_Remapping (Instance : All_Instance_Type)
      return Boolean
      renames Is_Instance;
   --  Check whether the instance supports remapping capability

   ---------------------------------------------------------------------------
   function Supports_OCxREF_Clear (Instance : All_Instance_Type)
      return Boolean
      renames Supports_CC3;
   --  Check whether the instance supports output(s) OCXEC register

   ---------------------------------------------------------------------------
   function Supports_XOR (Instance : All_Instance_Type)
      return Boolean
      renames Supports_CC3;
   --  Check whether the instance supports Timer input XOR function

   ---------------------------------------------------------------------------
   function To_Advanced_Peripheral_Access_Type is
      new Ada.Unchecked_Conversion (TIM21_Peripheral_Access_Type,
                                    Advanced_Peripheral_Access_Type);
   function To_Advanced_Peripheral_Access_Type is
      new Ada.Unchecked_Conversion (TIM22_Peripheral_Access_Type,
                                    Advanced_Peripheral_Access_Type);
   function To_Advanced_Peripheral_Access_Type is
      new Ada.Unchecked_Conversion (TIM6_Peripheral_Access_Type,
                                    Advanced_Peripheral_Access_Type);

   TIMx : constant array (All_Instance_Type)
      of Advanced_Peripheral_Access_Type := [
         TIM2  => TIM2_Periph'Access,
         TIM21 => To_Advanced_Peripheral_Access_Type (TIM21_Periph'Access),
         TIM22 => To_Advanced_Peripheral_Access_Type (TIM22_Periph'Access),
         TIM6  => To_Advanced_Peripheral_Access_Type (TIM6_Periph'Access),
         TIM3  => TIM3_Periph'Access,
         TIM7  => To_Advanced_Peripheral_Access_Type (TIM7_Periph'Access)];
   --    Implementation notes:
   --  -  Simplify access to the TIM peripherals through a common interface.
   --     However, not all peripherals have the same capabilities, hence make
   --     use of `Support_*` functions to discriminate their capabilities

end CMSIS.Device.TIM.Instances;