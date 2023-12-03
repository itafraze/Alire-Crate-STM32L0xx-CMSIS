pragma Style_Checks (Off);

--  This spec has been automatically generated from stm32l0x1.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package STM32L0x1.RTC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  RTC time register
   type TR_Register is record
      --  Second units in BCD format
      SU             : HAL.UInt4 := 16#0#;
      --  Second tens in BCD format
      ST             : HAL.UInt3 := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Minute units in BCD format
      MNU            : HAL.UInt4 := 16#0#;
      --  Minute tens in BCD format
      MNT            : HAL.UInt3 := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Hour units in BCD format
      HU             : HAL.UInt4 := 16#0#;
      --  Hour tens in BCD format
      HT             : HAL.UInt2 := 16#0#;
      --  AM/PM notation
      PM             : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TR_Register use record
      SU             at 0 range 0 .. 3;
      ST             at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      MNU            at 0 range 8 .. 11;
      MNT            at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      HU             at 0 range 16 .. 19;
      HT             at 0 range 20 .. 21;
      PM             at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  RTC date register
   type DR_Register is record
      --  Date units in BCD format
      DU             : HAL.UInt4 := 16#0#;
      --  Date tens in BCD format
      DT             : HAL.UInt2 := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Month units in BCD format
      MU             : HAL.UInt4 := 16#0#;
      --  Month tens in BCD format
      MT             : HAL.Bit := 16#0#;
      --  Week day units
      WDU            : HAL.UInt3 := 16#0#;
      --  Year units in BCD format
      YU             : HAL.UInt4 := 16#0#;
      --  Year tens in BCD format
      YT             : HAL.UInt4 := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DR_Register use record
      DU             at 0 range 0 .. 3;
      DT             at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      MU             at 0 range 8 .. 11;
      MT             at 0 range 12 .. 12;
      WDU            at 0 range 13 .. 15;
      YU             at 0 range 16 .. 19;
      YT             at 0 range 20 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  RTC control register
   type CR_Register is record
      --  Wakeup clock selection
      WUCKSEL        : HAL.UInt3 := 16#0#;
      --  Time-stamp event active edge
      TSEDGE         : HAL.Bit := 16#0#;
      --  RTC_REFIN reference clock detection enable (50 or 60 Hz)
      REFCKON        : HAL.Bit := 16#0#;
      --  Bypass the shadow registers
      BYPSHAD        : HAL.Bit := 16#0#;
      --  Hour format
      FMT            : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Alarm A enable
      ALRAE          : HAL.Bit := 16#0#;
      --  Alarm B enable
      ALRBE          : HAL.Bit := 16#0#;
      --  Wakeup timer enable
      WUTE           : HAL.Bit := 16#0#;
      --  timestamp enable
      TSE            : HAL.Bit := 16#0#;
      --  Alarm A interrupt enable
      ALRAIE         : HAL.Bit := 16#0#;
      --  Alarm B interrupt enable
      ALRBIE         : HAL.Bit := 16#0#;
      --  Wakeup timer interrupt enable
      WUTIE          : HAL.Bit := 16#0#;
      --  Time-stamp interrupt enable
      TSIE           : HAL.Bit := 16#0#;
      --  Write-only. Add 1 hour (summer time change)
      ADD1H          : HAL.Bit := 16#0#;
      --  Write-only. Subtract 1 hour (winter time change)
      SUB1H          : HAL.Bit := 16#0#;
      --  Backup
      BKP            : HAL.Bit := 16#0#;
      --  Calibration output selection
      COSEL          : HAL.Bit := 16#0#;
      --  Output polarity
      POL            : HAL.Bit := 16#0#;
      --  Output selection
      OSEL           : HAL.UInt2 := 16#0#;
      --  Calibration output enable
      COE            : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      WUCKSEL        at 0 range 0 .. 2;
      TSEDGE         at 0 range 3 .. 3;
      REFCKON        at 0 range 4 .. 4;
      BYPSHAD        at 0 range 5 .. 5;
      FMT            at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      ALRAE          at 0 range 8 .. 8;
      ALRBE          at 0 range 9 .. 9;
      WUTE           at 0 range 10 .. 10;
      TSE            at 0 range 11 .. 11;
      ALRAIE         at 0 range 12 .. 12;
      ALRBIE         at 0 range 13 .. 13;
      WUTIE          at 0 range 14 .. 14;
      TSIE           at 0 range 15 .. 15;
      ADD1H          at 0 range 16 .. 16;
      SUB1H          at 0 range 17 .. 17;
      BKP            at 0 range 18 .. 18;
      COSEL          at 0 range 19 .. 19;
      POL            at 0 range 20 .. 20;
      OSEL           at 0 range 21 .. 22;
      COE            at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  RTC initialization and status register
   type ISR_Register is record
      --  Read-only. Alarm A write flag
      ALRAWF         : HAL.Bit := 16#0#;
      --  Read-only. Alarm B write flag
      ALRBWF         : HAL.Bit := 16#0#;
      --  Read-only. Wakeup timer write flag
      WUTWF          : HAL.Bit := 16#0#;
      --  Read-only. Shift operation pending
      SHPF           : HAL.Bit := 16#0#;
      --  Read-only. Initialization status flag
      INITS          : HAL.Bit := 16#0#;
      --  Registers synchronization flag
      RSF            : HAL.Bit := 16#0#;
      --  Read-only. Initialization flag
      INITF          : HAL.Bit := 16#0#;
      --  Initialization mode
      INIT           : HAL.Bit := 16#0#;
      --  Alarm A flag
      ALRAF          : HAL.Bit := 16#0#;
      --  Alarm B flag
      ALRBF          : HAL.Bit := 16#0#;
      --  Wakeup timer flag
      WUTF           : HAL.Bit := 16#0#;
      --  Time-stamp flag
      TSF            : HAL.Bit := 16#0#;
      --  Time-stamp overflow flag
      TSOVF          : HAL.Bit := 16#0#;
      --  RTC_TAMP1 detection flag
      TAMP1F         : HAL.Bit := 16#0#;
      --  RTC_TAMP2 detection flag
      TAMP2F         : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ISR_Register use record
      ALRAWF         at 0 range 0 .. 0;
      ALRBWF         at 0 range 1 .. 1;
      WUTWF          at 0 range 2 .. 2;
      SHPF           at 0 range 3 .. 3;
      INITS          at 0 range 4 .. 4;
      RSF            at 0 range 5 .. 5;
      INITF          at 0 range 6 .. 6;
      INIT           at 0 range 7 .. 7;
      ALRAF          at 0 range 8 .. 8;
      ALRBF          at 0 range 9 .. 9;
      WUTF           at 0 range 10 .. 10;
      TSF            at 0 range 11 .. 11;
      TSOVF          at 0 range 12 .. 12;
      TAMP1F         at 0 range 13 .. 13;
      TAMP2F         at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  RTC prescaler register
   type PRER_Register is record
      --  Synchronous prescaler factor
      PREDIV_S       : HAL.UInt16 := 16#0#;
      --  Asynchronous prescaler factor
      PREDIV_A       : HAL.UInt7 := 16#0#;
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PRER_Register use record
      PREDIV_S       at 0 range 0 .. 15;
      PREDIV_A       at 0 range 16 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  RTC wakeup timer register
   type WUTR_Register is record
      --  Wakeup auto-reload value bits
      WUT            : HAL.UInt16 := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WUTR_Register use record
      WUT            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  RTC alarm A register
   type ALRMAR_Register is record
      --  Second units in BCD format.
      SU    : HAL.UInt4 := 16#0#;
      --  Second tens in BCD format.
      ST    : HAL.UInt3 := 16#0#;
      --  Alarm A seconds mask
      MSK1  : HAL.Bit := 16#0#;
      --  Minute units in BCD format.
      MNU   : HAL.UInt4 := 16#0#;
      --  Minute tens in BCD format.
      MNT   : HAL.UInt3 := 16#0#;
      --  Alarm A minutes mask
      MSK2  : HAL.Bit := 16#0#;
      --  Hour units in BCD format.
      HU    : HAL.UInt4 := 16#0#;
      --  Hour tens in BCD format.
      HT    : HAL.UInt2 := 16#0#;
      --  AM/PM notation
      PM    : HAL.Bit := 16#0#;
      --  Alarm A hours mask
      MSK3  : HAL.Bit := 16#0#;
      --  Date units or day in BCD format.
      DU    : HAL.UInt4 := 16#0#;
      --  Date tens in BCD format.
      DT    : HAL.UInt2 := 16#0#;
      --  Week day selection
      WDSEL : HAL.Bit := 16#0#;
      --  Alarm A date mask
      MSK4  : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ALRMAR_Register use record
      SU    at 0 range 0 .. 3;
      ST    at 0 range 4 .. 6;
      MSK1  at 0 range 7 .. 7;
      MNU   at 0 range 8 .. 11;
      MNT   at 0 range 12 .. 14;
      MSK2  at 0 range 15 .. 15;
      HU    at 0 range 16 .. 19;
      HT    at 0 range 20 .. 21;
      PM    at 0 range 22 .. 22;
      MSK3  at 0 range 23 .. 23;
      DU    at 0 range 24 .. 27;
      DT    at 0 range 28 .. 29;
      WDSEL at 0 range 30 .. 30;
      MSK4  at 0 range 31 .. 31;
   end record;

   --  RTC alarm B register
   type ALRMBR_Register is record
      --  Second units in BCD format
      SU    : HAL.UInt4 := 16#0#;
      --  Second tens in BCD format
      ST    : HAL.UInt3 := 16#0#;
      --  Alarm B seconds mask
      MSK1  : HAL.Bit := 16#0#;
      --  Minute units in BCD format
      MNU   : HAL.UInt4 := 16#0#;
      --  Minute tens in BCD format
      MNT   : HAL.UInt3 := 16#0#;
      --  Alarm B minutes mask
      MSK2  : HAL.Bit := 16#0#;
      --  Hour units in BCD format
      HU    : HAL.UInt4 := 16#0#;
      --  Hour tens in BCD format
      HT    : HAL.UInt2 := 16#0#;
      --  AM/PM notation
      PM    : HAL.Bit := 16#0#;
      --  Alarm B hours mask
      MSK3  : HAL.Bit := 16#0#;
      --  Date units or day in BCD format
      DU    : HAL.UInt4 := 16#0#;
      --  Date tens in BCD format
      DT    : HAL.UInt2 := 16#0#;
      --  Week day selection
      WDSEL : HAL.Bit := 16#0#;
      --  Alarm B date mask
      MSK4  : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ALRMBR_Register use record
      SU    at 0 range 0 .. 3;
      ST    at 0 range 4 .. 6;
      MSK1  at 0 range 7 .. 7;
      MNU   at 0 range 8 .. 11;
      MNT   at 0 range 12 .. 14;
      MSK2  at 0 range 15 .. 15;
      HU    at 0 range 16 .. 19;
      HT    at 0 range 20 .. 21;
      PM    at 0 range 22 .. 22;
      MSK3  at 0 range 23 .. 23;
      DU    at 0 range 24 .. 27;
      DT    at 0 range 28 .. 29;
      WDSEL at 0 range 30 .. 30;
      MSK4  at 0 range 31 .. 31;
   end record;

   --  write protection register
   type WPR_Register is record
      --  Write-only. Write protection key
      KEY           : HAL.UInt8 := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WPR_Register use record
      KEY           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RTC sub second register
   type SSR_Register is record
      --  Read-only. Sub second value
      SS             : HAL.UInt16;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SSR_Register use record
      SS             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  RTC shift control register
   type SHIFTR_Register is record
      --  Write-only. Subtract a fraction of a second
      SUBFS          : HAL.UInt15 := 16#0#;
      --  unspecified
      Reserved_15_30 : HAL.UInt16 := 16#0#;
      --  Write-only. Add one second
      ADD1S          : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SHIFTR_Register use record
      SUBFS          at 0 range 0 .. 14;
      Reserved_15_30 at 0 range 15 .. 30;
      ADD1S          at 0 range 31 .. 31;
   end record;

   --  RTC timestamp time register
   type TSTR_Register is record
      --  Read-only. Second units in BCD format.
      SU             : HAL.UInt4;
      --  Read-only. Second tens in BCD format.
      ST             : HAL.UInt3;
      --  unspecified
      Reserved_7_7   : HAL.Bit;
      --  Read-only. Minute units in BCD format.
      MNU            : HAL.UInt4;
      --  Read-only. Minute tens in BCD format.
      MNT            : HAL.UInt3;
      --  unspecified
      Reserved_15_15 : HAL.Bit;
      --  Read-only. Hour units in BCD format.
      HU             : HAL.UInt4;
      --  Read-only. Hour tens in BCD format.
      HT             : HAL.UInt2;
      --  Read-only. AM/PM notation
      PM             : HAL.Bit;
      --  unspecified
      Reserved_23_31 : HAL.UInt9;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TSTR_Register use record
      SU             at 0 range 0 .. 3;
      ST             at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      MNU            at 0 range 8 .. 11;
      MNT            at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      HU             at 0 range 16 .. 19;
      HT             at 0 range 20 .. 21;
      PM             at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  RTC timestamp date register
   type TSDR_Register is record
      --  Read-only. Date units in BCD format
      DU             : HAL.UInt4;
      --  Read-only. Date tens in BCD format
      DT             : HAL.UInt2;
      --  unspecified
      Reserved_6_7   : HAL.UInt2;
      --  Read-only. Month units in BCD format
      MU             : HAL.UInt4;
      --  Read-only. Month tens in BCD format
      MT             : HAL.Bit;
      --  Read-only. Week day units
      WDU            : HAL.UInt3;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TSDR_Register use record
      DU             at 0 range 0 .. 3;
      DT             at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      MU             at 0 range 8 .. 11;
      MT             at 0 range 12 .. 12;
      WDU            at 0 range 13 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  RTC time-stamp sub second register
   type TSSSR_Register is record
      --  Read-only. Sub second value
      SS             : HAL.UInt16;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TSSSR_Register use record
      SS             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  RTC calibration register
   type CALR_Register is record
      --  Calibration minus
      CALM           : HAL.UInt9 := 16#0#;
      --  unspecified
      Reserved_9_12  : HAL.UInt4 := 16#0#;
      --  Use a 16-second calibration cycle period
      CALW16         : HAL.Bit := 16#0#;
      --  Use an 8-second calibration cycle period
      CALW8          : HAL.Bit := 16#0#;
      --  Increase frequency of RTC by 488.5 ppm
      CALP           : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CALR_Register use record
      CALM           at 0 range 0 .. 8;
      Reserved_9_12  at 0 range 9 .. 12;
      CALW16         at 0 range 13 .. 13;
      CALW8          at 0 range 14 .. 14;
      CALP           at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  RTC tamper configuration register
   type TAMPCR_Register is record
      --  RTC_TAMP1 input detection enable
      TAMP1E         : HAL.Bit := 16#0#;
      --  Active level for RTC_TAMP1 input
      TAMP1TRG       : HAL.Bit := 16#0#;
      --  Tamper interrupt enable
      TAMPIE         : HAL.Bit := 16#0#;
      --  RTC_TAMP2 input detection enable
      TAMP2E         : HAL.Bit := 16#0#;
      --  Active level for RTC_TAMP2 input
      TAMP2_TRG      : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_5_6   : HAL.UInt2 := 16#0#;
      --  Activate timestamp on tamper detection event
      TAMPTS         : HAL.Bit := 16#0#;
      --  Tamper sampling frequency
      TAMPFREQ       : HAL.UInt3 := 16#0#;
      --  RTC_TAMPx filter count
      TAMPFLT        : HAL.UInt2 := 16#0#;
      --  RTC_TAMPx precharge duration
      TAMPPRCH       : HAL.UInt2 := 16#0#;
      --  RTC_TAMPx pull-up disable
      TAMPPUDIS      : HAL.Bit := 16#0#;
      --  Tamper 1 interrupt enable
      TAMP1IE        : HAL.Bit := 16#0#;
      --  Tamper 1 no erase
      TAMP1NOERASE   : HAL.Bit := 16#0#;
      --  Tamper 1 mask flag
      TAMP1MF        : HAL.Bit := 16#0#;
      --  Tamper 2 interrupt enable
      TAMP2IE        : HAL.Bit := 16#0#;
      --  Tamper 2 no erase
      TAMP2NOERASE   : HAL.Bit := 16#0#;
      --  Tamper 2 mask flag
      TAMP2MF        : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TAMPCR_Register use record
      TAMP1E         at 0 range 0 .. 0;
      TAMP1TRG       at 0 range 1 .. 1;
      TAMPIE         at 0 range 2 .. 2;
      TAMP2E         at 0 range 3 .. 3;
      TAMP2_TRG      at 0 range 4 .. 4;
      Reserved_5_6   at 0 range 5 .. 6;
      TAMPTS         at 0 range 7 .. 7;
      TAMPFREQ       at 0 range 8 .. 10;
      TAMPFLT        at 0 range 11 .. 12;
      TAMPPRCH       at 0 range 13 .. 14;
      TAMPPUDIS      at 0 range 15 .. 15;
      TAMP1IE        at 0 range 16 .. 16;
      TAMP1NOERASE   at 0 range 17 .. 17;
      TAMP1MF        at 0 range 18 .. 18;
      TAMP2IE        at 0 range 19 .. 19;
      TAMP2NOERASE   at 0 range 20 .. 20;
      TAMP2MF        at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  RTC alarm A sub second register
   type ALRMASSR_Register is record
      --  Sub seconds value
      SS             : HAL.UInt15 := 16#0#;
      --  unspecified
      Reserved_15_23 : HAL.UInt9 := 16#0#;
      --  Mask the most-significant bits starting at this bit
      MASKSS         : HAL.UInt4 := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ALRMASSR_Register use record
      SS             at 0 range 0 .. 14;
      Reserved_15_23 at 0 range 15 .. 23;
      MASKSS         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  RTC alarm B sub second register
   type ALRMBSSR_Register is record
      --  Sub seconds value
      SS             : HAL.UInt15 := 16#0#;
      --  unspecified
      Reserved_15_23 : HAL.UInt9 := 16#0#;
      --  Mask the most-significant bits starting at this bit
      MASKSS         : HAL.UInt4 := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ALRMBSSR_Register use record
      SS             at 0 range 0 .. 14;
      Reserved_15_23 at 0 range 15 .. 23;
      MASKSS         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  option register
   type OR_Register is record
      --  RTC_ALARM on PC13 output type
      RTC_ALARM_TYPE : HAL.Bit := 16#0#;
      --  RTC_ALARM on PC13 output type
      RTC_OUT_RMP    : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_2_31  : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OR_Register use record
      RTC_ALARM_TYPE at 0 range 0 .. 0;
      RTC_OUT_RMP    at 0 range 1 .. 1;
      Reserved_2_31  at 0 range 2 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Real-time clock
   type RTC_Peripheral is record
      --  RTC time register
      TR       : aliased TR_Register;
      --  RTC date register
      DR       : aliased DR_Register;
      --  RTC control register
      CR       : aliased CR_Register;
      --  RTC initialization and status register
      ISR      : aliased ISR_Register;
      --  RTC prescaler register
      PRER     : aliased PRER_Register;
      --  RTC wakeup timer register
      WUTR     : aliased WUTR_Register;
      --  RTC alarm A register
      ALRMAR   : aliased ALRMAR_Register;
      --  RTC alarm B register
      ALRMBR   : aliased ALRMBR_Register;
      --  write protection register
      WPR      : aliased WPR_Register;
      --  RTC sub second register
      SSR      : aliased SSR_Register;
      --  RTC shift control register
      SHIFTR   : aliased SHIFTR_Register;
      --  RTC timestamp time register
      TSTR     : aliased TSTR_Register;
      --  RTC timestamp date register
      TSDR     : aliased TSDR_Register;
      --  RTC time-stamp sub second register
      TSSSR    : aliased TSSSR_Register;
      --  RTC calibration register
      CALR     : aliased CALR_Register;
      --  RTC tamper configuration register
      TAMPCR   : aliased TAMPCR_Register;
      --  RTC alarm A sub second register
      ALRMASSR : aliased ALRMASSR_Register;
      --  RTC alarm B sub second register
      ALRMBSSR : aliased ALRMBSSR_Register;
      --  option register
      OR_k     : aliased OR_Register;
      --  RTC backup registers
      BKP0R    : aliased HAL.UInt32;
      --  RTC backup registers
      BKP1R    : aliased HAL.UInt32;
      --  RTC backup registers
      BKP2R    : aliased HAL.UInt32;
      --  RTC backup registers
      BKP3R    : aliased HAL.UInt32;
      --  RTC backup registers
      BKP4R    : aliased HAL.UInt32;
   end record
     with Volatile;

   for RTC_Peripheral use record
      TR       at 16#0# range 0 .. 31;
      DR       at 16#4# range 0 .. 31;
      CR       at 16#8# range 0 .. 31;
      ISR      at 16#C# range 0 .. 31;
      PRER     at 16#10# range 0 .. 31;
      WUTR     at 16#14# range 0 .. 31;
      ALRMAR   at 16#1C# range 0 .. 31;
      ALRMBR   at 16#20# range 0 .. 31;
      WPR      at 16#24# range 0 .. 31;
      SSR      at 16#28# range 0 .. 31;
      SHIFTR   at 16#2C# range 0 .. 31;
      TSTR     at 16#30# range 0 .. 31;
      TSDR     at 16#34# range 0 .. 31;
      TSSSR    at 16#38# range 0 .. 31;
      CALR     at 16#3C# range 0 .. 31;
      TAMPCR   at 16#40# range 0 .. 31;
      ALRMASSR at 16#44# range 0 .. 31;
      ALRMBSSR at 16#48# range 0 .. 31;
      OR_k     at 16#4C# range 0 .. 31;
      BKP0R    at 16#50# range 0 .. 31;
      BKP1R    at 16#54# range 0 .. 31;
      BKP2R    at 16#58# range 0 .. 31;
      BKP3R    at 16#5C# range 0 .. 31;
      BKP4R    at 16#60# range 0 .. 31;
   end record;

   --  Real-time clock
   RTC_Periph : aliased RTC_Peripheral
     with Import, Address => RTC_Base;

end STM32L0x1.RTC;
