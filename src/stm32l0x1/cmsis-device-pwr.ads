pragma Style_Checks (Off);

--  This spec has been automatically generated from stm32l0x1.svd

pragma Restrictions (No_Elaboration_Code);

with System;

package CMSIS.Device.PWR is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CR_LPDS_Field is CMSIS.Device.Bit;
   subtype CR_PDDS_Field is CMSIS.Device.Bit;
   subtype CR_CWUF_Field is CMSIS.Device.Bit;
   subtype CR_CSBF_Field is CMSIS.Device.Bit;
   subtype CR_PVDE_Field is CMSIS.Device.Bit;
   subtype CR_PLS_Field is CMSIS.Device.UInt3;
   subtype CR_DBP_Field is CMSIS.Device.Bit;
   subtype CR_ULP_Field is CMSIS.Device.Bit;
   subtype CR_FWU_Field is CMSIS.Device.Bit;
   subtype CR_VOS_Field is CMSIS.Device.UInt2;
   subtype CR_DS_EE_KOFF_Field is CMSIS.Device.Bit;
   subtype CR_LPRUN_Field is CMSIS.Device.Bit;

   --  power control register
   type CR_Register is record
      --  Low-power deep sleep
      LPDS           : CR_LPDS_Field := 16#0#;
      --  Power down deepsleep
      PDDS           : CR_PDDS_Field := 16#0#;
      --  Clear wakeup flag
      CWUF           : CR_CWUF_Field := 16#0#;
      --  Clear standby flag
      CSBF           : CR_CSBF_Field := 16#0#;
      --  Power voltage detector enable
      PVDE           : CR_PVDE_Field := 16#0#;
      --  PVD level selection
      PLS            : CR_PLS_Field := 16#0#;
      --  Disable backup domain write protection
      DBP            : CR_DBP_Field := 16#0#;
      --  Ultra-low-power mode
      ULP            : CR_ULP_Field := 16#0#;
      --  Fast wakeup
      FWU            : CR_FWU_Field := 16#0#;
      --  Voltage scaling range selection
      VOS            : CR_VOS_Field := 16#2#;
      --  Deep sleep mode with Flash memory kept off
      DS_EE_KOFF     : CR_DS_EE_KOFF_Field := 16#0#;
      --  Low power run mode
      LPRUN          : CR_LPRUN_Field := 16#0#;
      --  unspecified
      Reserved_15_31 : CMSIS.Device.UInt17 := 16#0#;
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

   subtype CSR_WUF_Field is CMSIS.Device.Bit;
   subtype CSR_SBF_Field is CMSIS.Device.Bit;
   subtype CSR_PVDO_Field is CMSIS.Device.Bit;
   subtype CSR_BRR_Field is CMSIS.Device.Bit;
   subtype CSR_VOSF_Field is CMSIS.Device.Bit;
   subtype CSR_REGLPF_Field is CMSIS.Device.Bit;
   subtype CSR_EWUP_Field is CMSIS.Device.Bit;
   subtype CSR_BRE_Field is CMSIS.Device.Bit;

   --  power control/status register
   type CSR_Register is record
      --  Read-only. Wakeup flag
      WUF            : CSR_WUF_Field := 16#0#;
      --  Read-only. Standby flag
      SBF            : CSR_SBF_Field := 16#0#;
      --  Read-only. PVD output
      PVDO           : CSR_PVDO_Field := 16#0#;
      --  Read-only. Backup regulator ready
      BRR            : CSR_BRR_Field := 16#0#;
      --  Read-only. Voltage Scaling select flag
      VOSF           : CSR_VOSF_Field := 16#0#;
      --  Read-only. Regulator LP flag
      REGLPF         : CSR_REGLPF_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : CMSIS.Device.UInt2 := 16#0#;
      --  Enable WKUP pin
      EWUP           : CSR_EWUP_Field := 16#0#;
      --  Backup regulator enable
      BRE            : CSR_BRE_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : CMSIS.Device.UInt22 := 16#0#;
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

end CMSIS.Device.PWR;
