pragma Style_Checks (Off);

--  This spec has been automatically generated from stm32l0x1.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package Cmsis.Device.SPI is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  control register 1
   type CR1_Register is record
      --  Clock phase
      CPHA           : HAL.Bit := 16#0#;
      --  Clock polarity
      CPOL           : HAL.Bit := 16#0#;
      --  Master selection
      MSTR           : HAL.Bit := 16#0#;
      --  Baud rate control
      BR             : HAL.UInt3 := 16#0#;
      --  SPI enable
      SPE            : HAL.Bit := 16#0#;
      --  Frame format
      LSBFIRST       : HAL.Bit := 16#0#;
      --  Internal slave select
      SSI            : HAL.Bit := 16#0#;
      --  Software slave management
      SSM            : HAL.Bit := 16#0#;
      --  Receive only
      RXONLY         : HAL.Bit := 16#0#;
      --  Data frame format
      DFF            : HAL.Bit := 16#0#;
      --  CRC transfer next
      CRCNEXT        : HAL.Bit := 16#0#;
      --  Hardware CRC calculation enable
      CRCEN          : HAL.Bit := 16#0#;
      --  Output enable in bidirectional mode
      BIDIOE         : HAL.Bit := 16#0#;
      --  Bidirectional data mode enable
      BIDIMODE       : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR1_Register use record
      CPHA           at 0 range 0 .. 0;
      CPOL           at 0 range 1 .. 1;
      MSTR           at 0 range 2 .. 2;
      BR             at 0 range 3 .. 5;
      SPE            at 0 range 6 .. 6;
      LSBFIRST       at 0 range 7 .. 7;
      SSI            at 0 range 8 .. 8;
      SSM            at 0 range 9 .. 9;
      RXONLY         at 0 range 10 .. 10;
      DFF            at 0 range 11 .. 11;
      CRCNEXT        at 0 range 12 .. 12;
      CRCEN          at 0 range 13 .. 13;
      BIDIOE         at 0 range 14 .. 14;
      BIDIMODE       at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  control register 2
   type CR2_Register is record
      --  Rx buffer DMA enable
      RXDMAEN       : HAL.Bit := 16#0#;
      --  Tx buffer DMA enable
      TXDMAEN       : HAL.Bit := 16#0#;
      --  SS output enable
      SSOE          : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Frame format
      FRF           : HAL.Bit := 16#0#;
      --  Error interrupt enable
      ERRIE         : HAL.Bit := 16#0#;
      --  RX buffer not empty interrupt enable
      RXNEIE        : HAL.Bit := 16#0#;
      --  Tx buffer empty interrupt enable
      TXEIE         : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR2_Register use record
      RXDMAEN       at 0 range 0 .. 0;
      TXDMAEN       at 0 range 1 .. 1;
      SSOE          at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      FRF           at 0 range 4 .. 4;
      ERRIE         at 0 range 5 .. 5;
      RXNEIE        at 0 range 6 .. 6;
      TXEIE         at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  status register
   type SR_Register is record
      --  Read-only. Receive buffer not empty
      RXNE          : HAL.Bit := 16#0#;
      --  Read-only. Transmit buffer empty
      TXE           : HAL.Bit := 16#1#;
      --  Read-only. Channel side
      CHSIDE        : HAL.Bit := 16#0#;
      --  Read-only. Underrun flag
      UDR           : HAL.Bit := 16#0#;
      --  CRC error flag
      CRCERR        : HAL.Bit := 16#0#;
      --  Read-only. Mode fault
      MODF          : HAL.Bit := 16#0#;
      --  Read-only. Overrun flag
      OVR           : HAL.Bit := 16#0#;
      --  Read-only. Busy flag
      BSY           : HAL.Bit := 16#0#;
      --  Read-only. TI frame format error
      TIFRFE        : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR_Register use record
      RXNE          at 0 range 0 .. 0;
      TXE           at 0 range 1 .. 1;
      CHSIDE        at 0 range 2 .. 2;
      UDR           at 0 range 3 .. 3;
      CRCERR        at 0 range 4 .. 4;
      MODF          at 0 range 5 .. 5;
      OVR           at 0 range 6 .. 6;
      BSY           at 0 range 7 .. 7;
      TIFRFE        at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  data register
   type DR_Register is record
      --  Data register
      DR             : HAL.UInt16 := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DR_Register use record
      DR             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  CRC polynomial register
   type CRCPR_Register is record
      --  CRC polynomial register
      CRCPOLY        : HAL.UInt16 := 16#7#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRCPR_Register use record
      CRCPOLY        at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  RX CRC register
   type RXCRCR_Register is record
      --  Read-only. Rx CRC register
      RxCRC          : HAL.UInt16;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RXCRCR_Register use record
      RxCRC          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  TX CRC register
   type TXCRCR_Register is record
      --  Read-only. Tx CRC register
      TxCRC          : HAL.UInt16;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TXCRCR_Register use record
      TxCRC          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  I2S configuration register
   type I2SCFGR_Register is record
      --  Channel length (number of bits per audio channel)
      CHLEN          : HAL.Bit := 16#0#;
      --  Data length to be transferred
      DATLEN         : HAL.UInt2 := 16#0#;
      --  Steady state clock polarity
      CKPOL          : HAL.Bit := 16#0#;
      --  I2S standard selection
      I2SSTD         : HAL.UInt2 := 16#0#;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  PCM frame synchronization
      PCMSYNC        : HAL.Bit := 16#0#;
      --  I2S configuration mode
      I2SCFG         : HAL.UInt2 := 16#0#;
      --  I2S Enable
      I2SE           : HAL.Bit := 16#0#;
      --  I2S mode selection
      I2SMOD         : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2SCFGR_Register use record
      CHLEN          at 0 range 0 .. 0;
      DATLEN         at 0 range 1 .. 2;
      CKPOL          at 0 range 3 .. 3;
      I2SSTD         at 0 range 4 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      PCMSYNC        at 0 range 7 .. 7;
      I2SCFG         at 0 range 8 .. 9;
      I2SE           at 0 range 10 .. 10;
      I2SMOD         at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  I2S prescaler register
   type I2SPR_Register is record
      --  I2S Linear prescaler
      I2SDIV         : HAL.UInt8 := 16#10#;
      --  Odd factor for the prescaler
      ODD            : HAL.Bit := 16#0#;
      --  Master clock output enable
      MCKOE          : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2SPR_Register use record
      I2SDIV         at 0 range 0 .. 7;
      ODD            at 0 range 8 .. 8;
      MCKOE          at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Serial peripheral interface
   type SPI_Peripheral is record
      --  control register 1
      CR1     : aliased CR1_Register;
      --  control register 2
      CR2     : aliased CR2_Register;
      --  status register
      SR      : aliased SR_Register;
      --  data register
      DR      : aliased DR_Register;
      --  CRC polynomial register
      CRCPR   : aliased CRCPR_Register;
      --  RX CRC register
      RXCRCR  : aliased RXCRCR_Register;
      --  TX CRC register
      TXCRCR  : aliased TXCRCR_Register;
      --  I2S configuration register
      I2SCFGR : aliased I2SCFGR_Register;
      --  I2S prescaler register
      I2SPR   : aliased I2SPR_Register;
   end record
     with Volatile;

   for SPI_Peripheral use record
      CR1     at 16#0# range 0 .. 31;
      CR2     at 16#4# range 0 .. 31;
      SR      at 16#8# range 0 .. 31;
      DR      at 16#C# range 0 .. 31;
      CRCPR   at 16#10# range 0 .. 31;
      RXCRCR  at 16#14# range 0 .. 31;
      TXCRCR  at 16#18# range 0 .. 31;
      I2SCFGR at 16#1C# range 0 .. 31;
      I2SPR   at 16#20# range 0 .. 31;
   end record;

   --  Serial peripheral interface
   SPI1_Periph : aliased SPI_Peripheral
     with Import, Address => SPI1_Base;

   --  Serial peripheral interface
   SPI2_Periph : aliased SPI_Peripheral
     with Import, Address => SPI2_Base;

end Cmsis.Device.SPI;
