pragma Style_Checks (Off);

--  This spec has been automatically generated from stm32l0x1.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package Cmsis.Device.PWR is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  power control register
   type CR_Register is record
      --  Low-power deep sleep
      LPDS           : HAL.Bit := 16#0#;
      --  Power down deepsleep
      PDDS           : HAL.Bit := 16#0#;
      --  Clear wakeup flag
      CWUF           : HAL.Bit := 16#0#;
      --  Clear standby flag
      CSBF           : HAL.Bit := 16#0#;
      --  Power voltage detector enable
      PVDE           : HAL.Bit := 16#0#;
      --  PVD level selection
      PLS            : HAL.UInt3 := 16#0#;
      --  Disable backup domain write protection
      DBP            : HAL.Bit := 16#0#;
      --  Ultra-low-power mode
      ULP            : HAL.Bit := 16#0#;
      --  Fast wakeup
      FWU            : HAL.Bit := 16#0#;
      --  Voltage scaling range selection
      VOS            : HAL.UInt2 := 16#2#;
      --  Deep sleep mode with Flash memory kept off
      DS_EE_KOFF     : HAL.Bit := 16#0#;
      --  Low power run mode
      LPRUN          : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      LPDS           at 0 range 0 .. 0;
      PDDS           at 0 range 1 .. 1;
      CWUF           at 0 range 2 .. 2;
      CSBF           at 0 range 3 .. 3;
      PVDE           at 0 range 4 .. 4;
      PLS            at 0 range 5 .. 7;
      DBP            at 0 range 8 .. 8;
      ULP            at 0 range 9 .. 9;
      FWU            at 0 range 10 .. 10;
      VOS            at 0 range 11 .. 12;
      DS_EE_KOFF     at 0 range 13 .. 13;
      LPRUN          at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  power control/status register
   type CSR_Register is record
      --  Read-only. Wakeup flag
      WUF            : HAL.Bit := 16#0#;
      --  Read-only. Standby flag
      SBF            : HAL.Bit := 16#0#;
      --  Read-only. PVD output
      PVDO           : HAL.Bit := 16#0#;
      --  Read-only. Backup regulator ready
      BRR            : HAL.Bit := 16#0#;
      --  Read-only. Voltage Scaling select flag
      VOSF           : HAL.Bit := 16#0#;
      --  Read-only. Regulator LP flag
      REGLPF         : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Enable WKUP pin
      EWUP           : HAL.Bit := 16#0#;
      --  Backup regulator enable
      BRE            : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSR_Register use record
      WUF            at 0 range 0 .. 0;
      SBF            at 0 range 1 .. 1;
      PVDO           at 0 range 2 .. 2;
      BRR            at 0 range 3 .. 3;
      VOSF           at 0 range 4 .. 4;
      REGLPF         at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      EWUP           at 0 range 8 .. 8;
      BRE            at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Power control
   type PWR_Peripheral is record
      --  power control register
      CR  : aliased CR_Register;
      --  power control/status register
      CSR : aliased CSR_Register;
   end record
     with Volatile;

   for PWR_Peripheral use record
      CR  at 16#0# range 0 .. 31;
      CSR at 16#4# range 0 .. 31;
   end record;

   --  Power control
   PWR_Periph : aliased PWR_Peripheral
     with Import, Address => PWR_Base;

end Cmsis.Device.PWR;
