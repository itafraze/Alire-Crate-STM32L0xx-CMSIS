pragma Style_Checks (Off);

--  This spec has been automatically generated from stm32l0x1.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package STM32L0x1.RCC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Clock control register
   type CR_Register is record
      --  16 MHz high-speed internal clock enable
      HSI16ON        : HAL.Bit := 16#0#;
      --  Read-only. High-speed internal clock enable bit for some IP kernels
      HSI16KERON     : HAL.Bit := 16#0#;
      --  Internal high-speed clock ready flag
      HSI16RDYF      : HAL.Bit := 16#0#;
      --  HSI16DIVEN
      HSI16DIVEN     : HAL.Bit := 16#0#;
      --  Read-only. HSI16DIVF
      HSI16DIVF      : HAL.Bit := 16#0#;
      --  16 MHz high-speed internal clock output enable
      HSI16OUTEN     : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  MSI clock enable bit
      MSION          : HAL.Bit := 16#1#;
      --  Read-only. MSI clock ready flag
      MSIRDY         : HAL.Bit := 16#1#;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  HSE clock enable bit
      HSEON          : HAL.Bit := 16#0#;
      --  Read-only. HSE clock ready flag
      HSERDY         : HAL.Bit := 16#0#;
      --  HSE clock bypass bit
      HSEBYP         : HAL.Bit := 16#0#;
      --  Clock security system on HSE enable bit
      CSSLSEON       : HAL.Bit := 16#0#;
      --  TC/LCD prescaler
      RTCPRE         : HAL.UInt2 := 16#0#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  PLL enable bit
      PLLON          : HAL.Bit := 16#0#;
      --  Read-only. PLL clock ready flag
      PLLRDY         : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      HSI16ON        at 0 range 0 .. 0;
      HSI16KERON     at 0 range 1 .. 1;
      HSI16RDYF      at 0 range 2 .. 2;
      HSI16DIVEN     at 0 range 3 .. 3;
      HSI16DIVF      at 0 range 4 .. 4;
      HSI16OUTEN     at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      MSION          at 0 range 8 .. 8;
      MSIRDY         at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      HSEON          at 0 range 16 .. 16;
      HSERDY         at 0 range 17 .. 17;
      HSEBYP         at 0 range 18 .. 18;
      CSSLSEON       at 0 range 19 .. 19;
      RTCPRE         at 0 range 20 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      PLLON          at 0 range 24 .. 24;
      PLLRDY         at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  Internal clock sources calibration register
   type ICSCR_Register is record
      --  Read-only. nternal high speed clock calibration
      HSI16CAL  : HAL.UInt8 := 16#0#;
      --  High speed internal clock trimming
      HSI16TRIM : HAL.UInt5 := 16#10#;
      --  MSI clock ranges
      MSIRANGE  : HAL.UInt3 := 16#5#;
      --  Read-only. MSI clock calibration
      MSICAL    : HAL.UInt8 := 16#0#;
      --  MSI clock trimming
      MSITRIM   : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICSCR_Register use record
      HSI16CAL  at 0 range 0 .. 7;
      HSI16TRIM at 0 range 8 .. 12;
      MSIRANGE  at 0 range 13 .. 15;
      MSICAL    at 0 range 16 .. 23;
      MSITRIM   at 0 range 24 .. 31;
   end record;

   --  CFGR_PPRE array
   type CFGR_PPRE_Field_Array is array (1 .. 2) of HAL.UInt3
     with Component_Size => 3, Size => 6;

   --  Type definition for CFGR_PPRE
   type CFGR_PPRE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PPRE as a value
            Val : HAL.UInt6;
         when True =>
            --  PPRE as an array
            Arr : CFGR_PPRE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for CFGR_PPRE_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   --  Clock configuration register
   type CFGR_Register is record
      --  System clock switch
      SW             : HAL.UInt2 := 16#0#;
      --  Read-only. System clock switch status
      SWS            : HAL.UInt2 := 16#0#;
      --  AHB prescaler
      HPRE           : HAL.UInt4 := 16#0#;
      --  APB low-speed prescaler (APB1)
      PPRE           : CFGR_PPRE_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Wake-up from stop clock selection
      STOPWUCK       : HAL.Bit := 16#0#;
      --  PLL entry clock source
      PLLSRC         : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_17_17 : HAL.Bit := 16#0#;
      --  PLL multiplication factor
      PLLMUL         : HAL.UInt4 := 16#0#;
      --  PLL output division
      PLLDIV         : HAL.UInt2 := 16#0#;
      --  Microcontroller clock output selection
      MCOSEL         : HAL.UInt3 := 16#0#;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Microcontroller clock output prescaler
      MCOPRE         : HAL.UInt3 := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFGR_Register use record
      SW             at 0 range 0 .. 1;
      SWS            at 0 range 2 .. 3;
      HPRE           at 0 range 4 .. 7;
      PPRE           at 0 range 8 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      STOPWUCK       at 0 range 15 .. 15;
      PLLSRC         at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      PLLMUL         at 0 range 18 .. 21;
      PLLDIV         at 0 range 22 .. 23;
      MCOSEL         at 0 range 24 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      MCOPRE         at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  Clock interrupt enable register
   type CIER_Register is record
      --  Read-only. LSI ready interrupt flag
      LSIRDYIE      : HAL.Bit;
      --  Read-only. LSE ready interrupt flag
      LSERDYIE      : HAL.Bit;
      --  Read-only. HSI16 ready interrupt flag
      HSI16RDYIE    : HAL.Bit;
      --  Read-only. HSE ready interrupt flag
      HSERDYIE      : HAL.Bit;
      --  Read-only. PLL ready interrupt flag
      PLLRDYIE      : HAL.Bit;
      --  Read-only. MSI ready interrupt flag
      MSIRDYIE      : HAL.Bit;
      --  unspecified
      Reserved_6_6  : HAL.Bit;
      --  Read-only. LSE CSS interrupt flag
      CSSLSE        : HAL.Bit;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CIER_Register use record
      LSIRDYIE      at 0 range 0 .. 0;
      LSERDYIE      at 0 range 1 .. 1;
      HSI16RDYIE    at 0 range 2 .. 2;
      HSERDYIE      at 0 range 3 .. 3;
      PLLRDYIE      at 0 range 4 .. 4;
      MSIRDYIE      at 0 range 5 .. 5;
      Reserved_6_6  at 0 range 6 .. 6;
      CSSLSE        at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Clock interrupt flag register
   type CIFR_Register is record
      --  Read-only. LSI ready interrupt flag
      LSIRDYF       : HAL.Bit;
      --  Read-only. LSE ready interrupt flag
      LSERDYF       : HAL.Bit;
      --  Read-only. HSI16 ready interrupt flag
      HSI16RDYF     : HAL.Bit;
      --  Read-only. HSE ready interrupt flag
      HSERDYF       : HAL.Bit;
      --  Read-only. PLL ready interrupt flag
      PLLRDYF       : HAL.Bit;
      --  Read-only. MSI ready interrupt flag
      MSIRDYF       : HAL.Bit;
      --  unspecified
      Reserved_6_6  : HAL.Bit;
      --  Read-only. LSE Clock Security System Interrupt flag
      CSSLSEF       : HAL.Bit;
      --  Read-only. Clock Security System Interrupt flag
      CSSHSEF       : HAL.Bit;
      --  unspecified
      Reserved_9_31 : HAL.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CIFR_Register use record
      LSIRDYF       at 0 range 0 .. 0;
      LSERDYF       at 0 range 1 .. 1;
      HSI16RDYF     at 0 range 2 .. 2;
      HSERDYF       at 0 range 3 .. 3;
      PLLRDYF       at 0 range 4 .. 4;
      MSIRDYF       at 0 range 5 .. 5;
      Reserved_6_6  at 0 range 6 .. 6;
      CSSLSEF       at 0 range 7 .. 7;
      CSSHSEF       at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  Clock interrupt clear register
   type CICR_Register is record
      --  Read-only. LSI ready Interrupt clear
      LSIRDYC       : HAL.Bit;
      --  Read-only. LSE ready Interrupt clear
      LSERDYC       : HAL.Bit;
      --  Read-only. HSI16 ready Interrupt clear
      HSI16RDYC     : HAL.Bit;
      --  Read-only. HSE ready Interrupt clear
      HSERDYC       : HAL.Bit;
      --  Read-only. PLL ready Interrupt clear
      PLLRDYC       : HAL.Bit;
      --  Read-only. MSI ready Interrupt clear
      MSIRDYC       : HAL.Bit;
      --  unspecified
      Reserved_6_6  : HAL.Bit;
      --  Read-only. LSE Clock Security System Interrupt clear
      CSSLSEC       : HAL.Bit;
      --  Read-only. Clock Security System Interrupt clear
      CSSHSEC       : HAL.Bit;
      --  unspecified
      Reserved_9_31 : HAL.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CICR_Register use record
      LSIRDYC       at 0 range 0 .. 0;
      LSERDYC       at 0 range 1 .. 1;
      HSI16RDYC     at 0 range 2 .. 2;
      HSERDYC       at 0 range 3 .. 3;
      PLLRDYC       at 0 range 4 .. 4;
      MSIRDYC       at 0 range 5 .. 5;
      Reserved_6_6  at 0 range 6 .. 6;
      CSSLSEC       at 0 range 7 .. 7;
      CSSHSEC       at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  GPIO reset register
   type IOPRSTR_Register is record
      --  I/O port A reset
      IOPARST       : HAL.Bit := 16#0#;
      --  I/O port B reset
      IOPBRST       : HAL.Bit := 16#0#;
      --  I/O port A reset
      IOPCRST       : HAL.Bit := 16#0#;
      --  I/O port D reset
      IOPDRST       : HAL.Bit := 16#0#;
      --  I/O port E reset
      IOPERST       : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_5_6  : HAL.UInt2 := 16#0#;
      --  I/O port H reset
      IOPHRST       : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IOPRSTR_Register use record
      IOPARST       at 0 range 0 .. 0;
      IOPBRST       at 0 range 1 .. 1;
      IOPCRST       at 0 range 2 .. 2;
      IOPDRST       at 0 range 3 .. 3;
      IOPERST       at 0 range 4 .. 4;
      Reserved_5_6  at 0 range 5 .. 6;
      IOPHRST       at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  AHB peripheral reset register
   type AHBRSTR_Register is record
      --  DMA reset
      DMARST         : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_1_7   : HAL.UInt7 := 16#0#;
      --  Memory interface reset
      MIFRST         : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  Test integration module reset
      CRCRST         : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_13_23 : HAL.UInt11 := 16#0#;
      --  Crypto module reset
      CRYPRST        : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AHBRSTR_Register use record
      DMARST         at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      MIFRST         at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      CRCRST         at 0 range 12 .. 12;
      Reserved_13_23 at 0 range 13 .. 23;
      CRYPRST        at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  APB2 peripheral reset register
   type APB2RSTR_Register is record
      --  System configuration controller reset
      SYSCFGRST      : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  TIM21 timer reset
      TIM21RST       : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_3_4   : HAL.UInt2 := 16#0#;
      --  TIM22 timer reset
      TIM22RST       : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_6_8   : HAL.UInt3 := 16#0#;
      --  ADC interface reset
      ADCRST         : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  SPI 1 reset
      SPI1RST        : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  USART1 reset
      USART1RST      : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_15_21 : HAL.UInt7 := 16#0#;
      --  DBG reset
      DBGRST         : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB2RSTR_Register use record
      SYSCFGRST      at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      TIM21RST       at 0 range 2 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      TIM22RST       at 0 range 5 .. 5;
      Reserved_6_8   at 0 range 6 .. 8;
      ADCRST         at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      SPI1RST        at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      USART1RST      at 0 range 14 .. 14;
      Reserved_15_21 at 0 range 15 .. 21;
      DBGRST         at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  APB1 peripheral reset register
   type APB1RSTR_Register is record
      --  Timer 2 reset
      TIM2RST        : HAL.Bit := 16#0#;
      --  Timer 3 reset
      TIM3RST        : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Timer 6 reset
      TIM6RST        : HAL.Bit := 16#0#;
      --  Timer 7 reset
      TIM7RST        : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_6_10  : HAL.UInt5 := 16#0#;
      --  Window watchdog reset
      WWDGRST        : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_12_13 : HAL.UInt2 := 16#0#;
      --  SPI2 reset
      SPI2RST        : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_15_16 : HAL.UInt2 := 16#0#;
      --  USART2 reset
      USART2RST      : HAL.Bit := 16#0#;
      --  LPUART1 reset
      LPUART1RST     : HAL.Bit := 16#0#;
      --  USART4 reset
      USART4RST      : HAL.Bit := 16#0#;
      --  USART5 reset
      USART5RST      : HAL.Bit := 16#0#;
      --  I2C1 reset
      I2C1RST        : HAL.Bit := 16#0#;
      --  I2C2 reset
      I2C2RST        : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_23_26 : HAL.UInt4 := 16#0#;
      --  CRC reset
      CRCRST         : HAL.Bit := 16#0#;
      --  Power interface reset
      PWRRST         : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_29_29 : HAL.Bit := 16#0#;
      --  I2C3 reset
      I2C3           : HAL.Bit := 16#0#;
      --  Low power timer reset
      LPTIM1RST      : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB1RSTR_Register use record
      TIM2RST        at 0 range 0 .. 0;
      TIM3RST        at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      TIM6RST        at 0 range 4 .. 4;
      TIM7RST        at 0 range 5 .. 5;
      Reserved_6_10  at 0 range 6 .. 10;
      WWDGRST        at 0 range 11 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      SPI2RST        at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      USART2RST      at 0 range 17 .. 17;
      LPUART1RST     at 0 range 18 .. 18;
      USART4RST      at 0 range 19 .. 19;
      USART5RST      at 0 range 20 .. 20;
      I2C1RST        at 0 range 21 .. 21;
      I2C2RST        at 0 range 22 .. 22;
      Reserved_23_26 at 0 range 23 .. 26;
      CRCRST         at 0 range 27 .. 27;
      PWRRST         at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      I2C3           at 0 range 30 .. 30;
      LPTIM1RST      at 0 range 31 .. 31;
   end record;

   --  GPIO clock enable register
   type IOPENR_Register is record
      --  IO port A clock enable bit
      IOPAEN        : HAL.Bit := 16#0#;
      --  IO port B clock enable bit
      IOPBEN        : HAL.Bit := 16#0#;
      --  IO port A clock enable bit
      IOPCEN        : HAL.Bit := 16#0#;
      --  I/O port D clock enable bit
      IOPDEN        : HAL.Bit := 16#0#;
      --  IO port E clock enable bit
      IOPEEN        : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_5_6  : HAL.UInt2 := 16#0#;
      --  I/O port H clock enable bit
      IOPHEN        : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IOPENR_Register use record
      IOPAEN        at 0 range 0 .. 0;
      IOPBEN        at 0 range 1 .. 1;
      IOPCEN        at 0 range 2 .. 2;
      IOPDEN        at 0 range 3 .. 3;
      IOPEEN        at 0 range 4 .. 4;
      Reserved_5_6  at 0 range 5 .. 6;
      IOPHEN        at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  AHB peripheral clock enable register
   type AHBENR_Register is record
      --  DMA clock enable bit
      DMAEN          : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_1_7   : HAL.UInt7 := 16#0#;
      --  NVM interface clock enable bit
      MIFEN          : HAL.Bit := 16#1#;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  CRC clock enable bit
      CRCEN          : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_13_23 : HAL.UInt11 := 16#0#;
      --  Crypto clock enable bit
      CRYPEN         : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AHBENR_Register use record
      DMAEN          at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      MIFEN          at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      CRCEN          at 0 range 12 .. 12;
      Reserved_13_23 at 0 range 13 .. 23;
      CRYPEN         at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  APB2 peripheral clock enable register
   type APB2ENR_Register is record
      --  System configuration controller clock enable bit
      SYSCFGEN       : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  TIM21 timer clock enable bit
      TIM21EN        : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_3_4   : HAL.UInt2 := 16#0#;
      --  TIM22 timer clock enable bit
      TIM22EN        : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  Firewall clock enable bit
      FWEN           : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_8_8   : HAL.Bit := 16#0#;
      --  ADC clock enable bit
      ADCEN          : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  SPI1 clock enable bit
      SPI1EN         : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  USART1 clock enable bit
      USART1EN       : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_15_21 : HAL.UInt7 := 16#0#;
      --  DBG clock enable bit
      DBGEN          : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB2ENR_Register use record
      SYSCFGEN       at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      TIM21EN        at 0 range 2 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      TIM22EN        at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      FWEN           at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      ADCEN          at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      SPI1EN         at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      USART1EN       at 0 range 14 .. 14;
      Reserved_15_21 at 0 range 15 .. 21;
      DBGEN          at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  APB1 peripheral clock enable register
   type APB1ENR_Register is record
      --  Timer2 clock enable bit
      TIM2EN         : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  Timer 3 clock enbale bit
      TIM3EN         : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Timer 6 clock enable bit
      TIM6EN         : HAL.Bit := 16#0#;
      --  Timer 7 clock enable bit
      TIM7EN         : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_6_10  : HAL.UInt5 := 16#0#;
      --  Window watchdog clock enable bit
      WWDGEN         : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_12_13 : HAL.UInt2 := 16#0#;
      --  SPI2 clock enable bit
      SPI2EN         : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_15_16 : HAL.UInt2 := 16#0#;
      --  UART2 clock enable bit
      USART2EN       : HAL.Bit := 16#0#;
      --  LPUART1 clock enable bit
      LPUART1EN      : HAL.Bit := 16#0#;
      --  USART4 clock enable bit
      USART4EN       : HAL.Bit := 16#0#;
      --  USART5 clock enable bit
      USART5EN       : HAL.Bit := 16#0#;
      --  I2C1 clock enable bit
      I2C1EN         : HAL.Bit := 16#0#;
      --  I2C2 clock enable bit
      I2C2EN         : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_23_27 : HAL.UInt5 := 16#0#;
      --  Power interface clock enable bit
      PWREN          : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_29_29 : HAL.Bit := 16#0#;
      --  I2C3 clock enable bit
      I2C3EN         : HAL.Bit := 16#0#;
      --  Low power timer clock enable bit
      LPTIM1EN       : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB1ENR_Register use record
      TIM2EN         at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      TIM3EN         at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      TIM6EN         at 0 range 4 .. 4;
      TIM7EN         at 0 range 5 .. 5;
      Reserved_6_10  at 0 range 6 .. 10;
      WWDGEN         at 0 range 11 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      SPI2EN         at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      USART2EN       at 0 range 17 .. 17;
      LPUART1EN      at 0 range 18 .. 18;
      USART4EN       at 0 range 19 .. 19;
      USART5EN       at 0 range 20 .. 20;
      I2C1EN         at 0 range 21 .. 21;
      I2C2EN         at 0 range 22 .. 22;
      Reserved_23_27 at 0 range 23 .. 27;
      PWREN          at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      I2C3EN         at 0 range 30 .. 30;
      LPTIM1EN       at 0 range 31 .. 31;
   end record;

   --  GPIO clock enable in sleep mode register
   type IOPSMEN_Register is record
      --  Port A clock enable during Sleep mode bit
      IOPASMEN      : HAL.Bit := 16#1#;
      --  Port B clock enable during Sleep mode bit
      IOPBSMEN      : HAL.Bit := 16#1#;
      --  Port C clock enable during Sleep mode bit
      IOPCSMEN      : HAL.Bit := 16#1#;
      --  Port D clock enable during Sleep mode bit
      IOPDSMEN      : HAL.Bit := 16#1#;
      --  Port E clock enable during Sleep mode bit
      IOPESMEN      : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_5_6  : HAL.UInt2 := 16#0#;
      --  Port H clock enable during Sleep mode bit
      IOPHSMEN      : HAL.Bit := 16#1#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IOPSMEN_Register use record
      IOPASMEN      at 0 range 0 .. 0;
      IOPBSMEN      at 0 range 1 .. 1;
      IOPCSMEN      at 0 range 2 .. 2;
      IOPDSMEN      at 0 range 3 .. 3;
      IOPESMEN      at 0 range 4 .. 4;
      Reserved_5_6  at 0 range 5 .. 6;
      IOPHSMEN      at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  AHB peripheral clock enable in sleep mode register
   type AHBSMENR_Register is record
      --  DMA clock enable during sleep mode bit
      DMASMEN        : HAL.Bit := 16#1#;
      --  unspecified
      Reserved_1_7   : HAL.UInt7 := 16#0#;
      --  NVM interface clock enable during sleep mode bit
      MIFSMEN        : HAL.Bit := 16#1#;
      --  SRAM interface clock enable during sleep mode bit
      SRAMSMEN       : HAL.Bit := 16#1#;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  CRC clock enable during sleep mode bit
      CRCSMEN        : HAL.Bit := 16#1#;
      --  unspecified
      Reserved_13_23 : HAL.UInt11 := 16#88#;
      --  Crypto clock enable during sleep mode bit
      CRYPTSMEN      : HAL.Bit := 16#1#;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AHBSMENR_Register use record
      DMASMEN        at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      MIFSMEN        at 0 range 8 .. 8;
      SRAMSMEN       at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      CRCSMEN        at 0 range 12 .. 12;
      Reserved_13_23 at 0 range 13 .. 23;
      CRYPTSMEN      at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  APB2 peripheral clock enable in sleep mode register
   type APB2SMENR_Register is record
      --  System configuration controller clock enable during sleep mode bit
      SYSCFGSMEN     : HAL.Bit := 16#1#;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  TIM21 timer clock enable during sleep mode bit
      TIM21SMEN      : HAL.Bit := 16#1#;
      --  unspecified
      Reserved_3_4   : HAL.UInt2 := 16#0#;
      --  TIM22 timer clock enable during sleep mode bit
      TIM22SMEN      : HAL.Bit := 16#1#;
      --  unspecified
      Reserved_6_8   : HAL.UInt3 := 16#0#;
      --  ADC clock enable during sleep mode bit
      ADCSMEN        : HAL.Bit := 16#1#;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  SPI1 clock enable during sleep mode bit
      SPI1SMEN       : HAL.Bit := 16#1#;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  USART1 clock enable during sleep mode bit
      USART1SMEN     : HAL.Bit := 16#1#;
      --  unspecified
      Reserved_15_21 : HAL.UInt7 := 16#0#;
      --  DBG clock enable during sleep mode bit
      DBGSMEN        : HAL.Bit := 16#1#;
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB2SMENR_Register use record
      SYSCFGSMEN     at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      TIM21SMEN      at 0 range 2 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      TIM22SMEN      at 0 range 5 .. 5;
      Reserved_6_8   at 0 range 6 .. 8;
      ADCSMEN        at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      SPI1SMEN       at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      USART1SMEN     at 0 range 14 .. 14;
      Reserved_15_21 at 0 range 15 .. 21;
      DBGSMEN        at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  APB1 peripheral clock enable in sleep mode register
   type APB1SMENR_Register is record
      --  Timer2 clock enable during sleep mode bit
      TIM2SMEN       : HAL.Bit := 16#1#;
      --  Timer 3 clock enable during sleep mode bit
      TIM3SMEN       : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Timer 6 clock enable during sleep mode bit
      TIM6SMEN       : HAL.Bit := 16#1#;
      --  Timer 7 clock enable during sleep mode bit
      TIM7SMEN       : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_6_10  : HAL.UInt5 := 16#8#;
      --  Window watchdog clock enable during sleep mode bit
      WWDGSMEN       : HAL.Bit := 16#1#;
      --  unspecified
      Reserved_12_13 : HAL.UInt2 := 16#0#;
      --  SPI2 clock enable during sleep mode bit
      SPI2SMEN       : HAL.Bit := 16#1#;
      --  unspecified
      Reserved_15_16 : HAL.UInt2 := 16#0#;
      --  UART2 clock enable during sleep mode bit
      USART2SMEN     : HAL.Bit := 16#1#;
      --  LPUART1 clock enable during sleep mode bit
      LPUART1SMEN    : HAL.Bit := 16#1#;
      --  USART4 clock enabe during sleep mode bit
      USART4SMEN     : HAL.Bit := 16#0#;
      --  USART5 clock enable during sleep mode bit
      USART5SMEN     : HAL.Bit := 16#0#;
      --  I2C1 clock enable during sleep mode bit
      I2C1SMEN       : HAL.Bit := 16#1#;
      --  I2C2 clock enable during sleep mode bit
      I2C2SMEN       : HAL.Bit := 16#1#;
      --  unspecified
      Reserved_23_26 : HAL.UInt4 := 16#1#;
      --  Clock recovery system clock enable during sleep mode bit
      CRSSMEN        : HAL.Bit := 16#1#;
      --  Power interface clock enable during sleep mode bit
      PWRSMEN        : HAL.Bit := 16#1#;
      --  unspecified
      Reserved_29_29 : HAL.Bit := 16#1#;
      --  I2C3 clock enable during sleep mode bit
      I2C3SMEN       : HAL.Bit := 16#0#;
      --  Low power timer clock enable during sleep mode bit
      LPTIM1SMEN     : HAL.Bit := 16#1#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB1SMENR_Register use record
      TIM2SMEN       at 0 range 0 .. 0;
      TIM3SMEN       at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      TIM6SMEN       at 0 range 4 .. 4;
      TIM7SMEN       at 0 range 5 .. 5;
      Reserved_6_10  at 0 range 6 .. 10;
      WWDGSMEN       at 0 range 11 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      SPI2SMEN       at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      USART2SMEN     at 0 range 17 .. 17;
      LPUART1SMEN    at 0 range 18 .. 18;
      USART4SMEN     at 0 range 19 .. 19;
      USART5SMEN     at 0 range 20 .. 20;
      I2C1SMEN       at 0 range 21 .. 21;
      I2C2SMEN       at 0 range 22 .. 22;
      Reserved_23_26 at 0 range 23 .. 26;
      CRSSMEN        at 0 range 27 .. 27;
      PWRSMEN        at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      I2C3SMEN       at 0 range 30 .. 30;
      LPTIM1SMEN     at 0 range 31 .. 31;
   end record;

   --  CCIPR_USART1SEL array
   type CCIPR_USART1SEL_Field_Array is array (0 .. 1) of HAL.Bit
     with Component_Size => 1, Size => 2;

   --  Type definition for CCIPR_USART1SEL
   type CCIPR_USART1SEL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  USART1SEL as a value
            Val : HAL.UInt2;
         when True =>
            --  USART1SEL as an array
            Arr : CCIPR_USART1SEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CCIPR_USART1SEL_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  CCIPR_USART2SEL array
   type CCIPR_USART2SEL_Field_Array is array (0 .. 1) of HAL.Bit
     with Component_Size => 1, Size => 2;

   --  Type definition for CCIPR_USART2SEL
   type CCIPR_USART2SEL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  USART2SEL as a value
            Val : HAL.UInt2;
         when True =>
            --  USART2SEL as an array
            Arr : CCIPR_USART2SEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CCIPR_USART2SEL_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  CCIPR_LPUART1SEL array
   type CCIPR_LPUART1SEL_Field_Array is array (0 .. 1) of HAL.Bit
     with Component_Size => 1, Size => 2;

   --  Type definition for CCIPR_LPUART1SEL
   type CCIPR_LPUART1SEL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LPUART1SEL as a value
            Val : HAL.UInt2;
         when True =>
            --  LPUART1SEL as an array
            Arr : CCIPR_LPUART1SEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CCIPR_LPUART1SEL_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  CCIPR_I2C1SEL array
   type CCIPR_I2C1SEL_Field_Array is array (0 .. 1) of HAL.Bit
     with Component_Size => 1, Size => 2;

   --  Type definition for CCIPR_I2C1SEL
   type CCIPR_I2C1SEL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  I2C1SEL as a value
            Val : HAL.UInt2;
         when True =>
            --  I2C1SEL as an array
            Arr : CCIPR_I2C1SEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CCIPR_I2C1SEL_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  CCIPR_I2C3SEL array
   type CCIPR_I2C3SEL_Field_Array is array (0 .. 1) of HAL.Bit
     with Component_Size => 1, Size => 2;

   --  Type definition for CCIPR_I2C3SEL
   type CCIPR_I2C3SEL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  I2C3SEL as a value
            Val : HAL.UInt2;
         when True =>
            --  I2C3SEL as an array
            Arr : CCIPR_I2C3SEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CCIPR_I2C3SEL_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  CCIPR_LPTIM1SEL array
   type CCIPR_LPTIM1SEL_Field_Array is array (0 .. 1) of HAL.Bit
     with Component_Size => 1, Size => 2;

   --  Type definition for CCIPR_LPTIM1SEL
   type CCIPR_LPTIM1SEL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LPTIM1SEL as a value
            Val : HAL.UInt2;
         when True =>
            --  LPTIM1SEL as an array
            Arr : CCIPR_LPTIM1SEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CCIPR_LPTIM1SEL_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Clock configuration register
   type CCIPR_Register is record
      --  USART1SEL0
      USART1SEL      : CCIPR_USART1SEL_Field :=
                        (As_Array => False, Val => 16#0#);
      --  USART2SEL0
      USART2SEL      : CCIPR_USART2SEL_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_9   : HAL.UInt6 := 16#0#;
      --  LPUART1SEL0
      LPUART1SEL     : CCIPR_LPUART1SEL_Field :=
                        (As_Array => False, Val => 16#0#);
      --  I2C1SEL0
      I2C1SEL        : CCIPR_I2C1SEL_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  I2C3 clock source selection bits
      I2C3SEL        : CCIPR_I2C3SEL_Field :=
                        (As_Array => False, Val => 16#0#);
      --  LPTIM1SEL0
      LPTIM1SEL      : CCIPR_LPTIM1SEL_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCIPR_Register use record
      USART1SEL      at 0 range 0 .. 1;
      USART2SEL      at 0 range 2 .. 3;
      Reserved_4_9   at 0 range 4 .. 9;
      LPUART1SEL     at 0 range 10 .. 11;
      I2C1SEL        at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      I2C3SEL        at 0 range 16 .. 17;
      LPTIM1SEL      at 0 range 18 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Control and status register
   type CSR_Register is record
      --  Internal low-speed oscillator enable
      LSION          : HAL.Bit := 16#0#;
      --  Read-only. Internal low-speed oscillator ready bit
      LSIRDY         : HAL.Bit := 16#0#;
      --  LSI clock input to IWDG in Ultra-low-power mode (Stop and Standby)
      --  enable bit
      LSIIWDGLP      : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  External low-speed oscillator enable bit
      LSEON          : HAL.Bit := 16#0#;
      --  Read-only. External low-speed oscillator ready bit
      LSERDY         : HAL.Bit := 16#0#;
      --  External low-speed oscillator bypass bit
      LSEBYP         : HAL.Bit := 16#0#;
      --  LSEDRV
      LSEDRV         : HAL.UInt2 := 16#0#;
      --  CSSLSEON
      CSSLSEON       : HAL.Bit := 16#0#;
      --  CSS on LSE failure detection flag
      CSSLSED        : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  RTC and LCD clock source selection bits
      RTCSEL         : HAL.UInt2 := 16#0#;
      --  RTC clock enable bit
      RTCEN          : HAL.Bit := 16#0#;
      --  RTC software reset bit
      RTCRST         : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_20_22 : HAL.UInt3 := 16#0#;
      --  Remove reset flag
      RMVF           : HAL.Bit := 16#0#;
      --  Firewall reset flag
      FWRSTF         : HAL.Bit := 16#0#;
      --  OBLRSTF
      OBLRSTF        : HAL.Bit := 16#0#;
      --  PIN reset flag
      PINRSTF        : HAL.Bit := 16#1#;
      --  POR/PDR reset flag
      PORRSTF        : HAL.Bit := 16#1#;
      --  Software reset flag
      SFTRSTF        : HAL.Bit := 16#0#;
      --  Independent watchdog reset flag
      IWDGRSTF       : HAL.Bit := 16#0#;
      --  Window watchdog reset flag
      WWDGRSTF       : HAL.Bit := 16#0#;
      --  Low-power reset flag
      LPWRSTF        : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSR_Register use record
      LSION          at 0 range 0 .. 0;
      LSIRDY         at 0 range 1 .. 1;
      LSIIWDGLP      at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      LSEON          at 0 range 8 .. 8;
      LSERDY         at 0 range 9 .. 9;
      LSEBYP         at 0 range 10 .. 10;
      LSEDRV         at 0 range 11 .. 12;
      CSSLSEON       at 0 range 13 .. 13;
      CSSLSED        at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      RTCSEL         at 0 range 16 .. 17;
      RTCEN          at 0 range 18 .. 18;
      RTCRST         at 0 range 19 .. 19;
      Reserved_20_22 at 0 range 20 .. 22;
      RMVF           at 0 range 23 .. 23;
      FWRSTF         at 0 range 24 .. 24;
      OBLRSTF        at 0 range 25 .. 25;
      PINRSTF        at 0 range 26 .. 26;
      PORRSTF        at 0 range 27 .. 27;
      SFTRSTF        at 0 range 28 .. 28;
      IWDGRSTF       at 0 range 29 .. 29;
      WWDGRSTF       at 0 range 30 .. 30;
      LPWRSTF        at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Reset and clock control
   type RCC_Peripheral is record
      --  Clock control register
      CR        : aliased CR_Register;
      --  Internal clock sources calibration register
      ICSCR     : aliased ICSCR_Register;
      --  Clock configuration register
      CFGR      : aliased CFGR_Register;
      --  Clock interrupt enable register
      CIER      : aliased CIER_Register;
      --  Clock interrupt flag register
      CIFR      : aliased CIFR_Register;
      --  Clock interrupt clear register
      CICR      : aliased CICR_Register;
      --  GPIO reset register
      IOPRSTR   : aliased IOPRSTR_Register;
      --  AHB peripheral reset register
      AHBRSTR   : aliased AHBRSTR_Register;
      --  APB2 peripheral reset register
      APB2RSTR  : aliased APB2RSTR_Register;
      --  APB1 peripheral reset register
      APB1RSTR  : aliased APB1RSTR_Register;
      --  GPIO clock enable register
      IOPENR    : aliased IOPENR_Register;
      --  AHB peripheral clock enable register
      AHBENR    : aliased AHBENR_Register;
      --  APB2 peripheral clock enable register
      APB2ENR   : aliased APB2ENR_Register;
      --  APB1 peripheral clock enable register
      APB1ENR   : aliased APB1ENR_Register;
      --  GPIO clock enable in sleep mode register
      IOPSMEN   : aliased IOPSMEN_Register;
      --  AHB peripheral clock enable in sleep mode register
      AHBSMENR  : aliased AHBSMENR_Register;
      --  APB2 peripheral clock enable in sleep mode register
      APB2SMENR : aliased APB2SMENR_Register;
      --  APB1 peripheral clock enable in sleep mode register
      APB1SMENR : aliased APB1SMENR_Register;
      --  Clock configuration register
      CCIPR     : aliased CCIPR_Register;
      --  Control and status register
      CSR       : aliased CSR_Register;
   end record
     with Volatile;

   for RCC_Peripheral use record
      CR        at 16#0# range 0 .. 31;
      ICSCR     at 16#4# range 0 .. 31;
      CFGR      at 16#C# range 0 .. 31;
      CIER      at 16#10# range 0 .. 31;
      CIFR      at 16#14# range 0 .. 31;
      CICR      at 16#18# range 0 .. 31;
      IOPRSTR   at 16#1C# range 0 .. 31;
      AHBRSTR   at 16#20# range 0 .. 31;
      APB2RSTR  at 16#24# range 0 .. 31;
      APB1RSTR  at 16#28# range 0 .. 31;
      IOPENR    at 16#2C# range 0 .. 31;
      AHBENR    at 16#30# range 0 .. 31;
      APB2ENR   at 16#34# range 0 .. 31;
      APB1ENR   at 16#38# range 0 .. 31;
      IOPSMEN   at 16#3C# range 0 .. 31;
      AHBSMENR  at 16#40# range 0 .. 31;
      APB2SMENR at 16#44# range 0 .. 31;
      APB1SMENR at 16#48# range 0 .. 31;
      CCIPR     at 16#4C# range 0 .. 31;
      CSR       at 16#50# range 0 .. 31;
   end record;

   --  Reset and clock control
   RCC_Periph : aliased RCC_Peripheral
     with Import, Address => RCC_Base;

end STM32L0x1.RCC;
