pragma Style_Checks (Off);

--  This spec has been automatically generated from stm32l0x1.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package STM32L0x1.I2C is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Control register 1
   type CR1_Register is record
      --  Peripheral enable
      PE             : HAL.Bit := 16#0#;
      --  TX Interrupt enable
      TXIE           : HAL.Bit := 16#0#;
      --  RX Interrupt enable
      RXIE           : HAL.Bit := 16#0#;
      --  Address match interrupt enable (slave only)
      ADDRIE         : HAL.Bit := 16#0#;
      --  Not acknowledge received interrupt enable
      NACKIE         : HAL.Bit := 16#0#;
      --  STOP detection Interrupt enable
      STOPIE         : HAL.Bit := 16#0#;
      --  Transfer Complete interrupt enable
      TCIE           : HAL.Bit := 16#0#;
      --  Error interrupts enable
      ERRIE          : HAL.Bit := 16#0#;
      --  Digital noise filter
      DNF            : HAL.UInt4 := 16#0#;
      --  Analog noise filter OFF
      ANFOFF         : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  DMA transmission requests enable
      TXDMAEN        : HAL.Bit := 16#0#;
      --  DMA reception requests enable
      RXDMAEN        : HAL.Bit := 16#0#;
      --  Slave byte control
      SBC            : HAL.Bit := 16#0#;
      --  Clock stretching disable
      NOSTRETCH      : HAL.Bit := 16#0#;
      --  Wakeup from STOP enable
      WUPEN          : HAL.Bit := 16#0#;
      --  General call enable
      GCEN           : HAL.Bit := 16#0#;
      --  SMBus Host address enable
      SMBHEN         : HAL.Bit := 16#0#;
      --  SMBus Device Default address enable
      SMBDEN         : HAL.Bit := 16#0#;
      --  SMBUS alert enable
      ALERTEN        : HAL.Bit := 16#0#;
      --  PEC enable
      PECEN          : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR1_Register use record
      PE             at 0 range 0 .. 0;
      TXIE           at 0 range 1 .. 1;
      RXIE           at 0 range 2 .. 2;
      ADDRIE         at 0 range 3 .. 3;
      NACKIE         at 0 range 4 .. 4;
      STOPIE         at 0 range 5 .. 5;
      TCIE           at 0 range 6 .. 6;
      ERRIE          at 0 range 7 .. 7;
      DNF            at 0 range 8 .. 11;
      ANFOFF         at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      TXDMAEN        at 0 range 14 .. 14;
      RXDMAEN        at 0 range 15 .. 15;
      SBC            at 0 range 16 .. 16;
      NOSTRETCH      at 0 range 17 .. 17;
      WUPEN          at 0 range 18 .. 18;
      GCEN           at 0 range 19 .. 19;
      SMBHEN         at 0 range 20 .. 20;
      SMBDEN         at 0 range 21 .. 21;
      ALERTEN        at 0 range 22 .. 22;
      PECEN          at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Control register 2
   type CR2_Register is record
      --  Slave address bit (master mode)
      SADD           : HAL.UInt10 := 16#0#;
      --  Transfer direction (master mode)
      RD_WRN         : HAL.Bit := 16#0#;
      --  10-bit addressing mode (master mode)
      ADD10          : HAL.Bit := 16#0#;
      --  10-bit address header only read direction (master receiver mode)
      HEAD10R        : HAL.Bit := 16#0#;
      --  Start generation
      START          : HAL.Bit := 16#0#;
      --  Stop generation (master mode)
      STOP           : HAL.Bit := 16#0#;
      --  NACK generation (slave mode)
      NACK           : HAL.Bit := 16#0#;
      --  Number of bytes
      NBYTES         : HAL.UInt8 := 16#0#;
      --  NBYTES reload mode
      RELOAD         : HAL.Bit := 16#0#;
      --  Automatic end mode (master mode)
      AUTOEND        : HAL.Bit := 16#0#;
      --  Packet error checking byte
      PECBYTE        : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR2_Register use record
      SADD           at 0 range 0 .. 9;
      RD_WRN         at 0 range 10 .. 10;
      ADD10          at 0 range 11 .. 11;
      HEAD10R        at 0 range 12 .. 12;
      START          at 0 range 13 .. 13;
      STOP           at 0 range 14 .. 14;
      NACK           at 0 range 15 .. 15;
      NBYTES         at 0 range 16 .. 23;
      RELOAD         at 0 range 24 .. 24;
      AUTOEND        at 0 range 25 .. 25;
      PECBYTE        at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  Own address register 1
   type OAR1_Register is record
      --  Interface address
      OA1            : HAL.UInt10 := 16#0#;
      --  Own Address 1 10-bit mode
      OA1MODE        : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_11_14 : HAL.UInt4 := 16#0#;
      --  Own Address 1 enable
      OA1EN          : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OAR1_Register use record
      OA1            at 0 range 0 .. 9;
      OA1MODE        at 0 range 10 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      OA1EN          at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Own address register 2
   type OAR2_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Interface address
      OA2            : HAL.UInt7 := 16#0#;
      --  Own Address 2 masks
      OA2MSK         : HAL.UInt3 := 16#0#;
      --  unspecified
      Reserved_11_14 : HAL.UInt4 := 16#0#;
      --  Own Address 2 enable
      OA2EN          : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OAR2_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      OA2            at 0 range 1 .. 7;
      OA2MSK         at 0 range 8 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      OA2EN          at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Timing register
   type TIMINGR_Register is record
      --  SCL low period (master mode)
      SCLL           : HAL.UInt8 := 16#0#;
      --  SCL high period (master mode)
      SCLH           : HAL.UInt8 := 16#0#;
      --  Data hold time
      SDADEL         : HAL.UInt4 := 16#0#;
      --  Data setup time
      SCLDEL         : HAL.UInt4 := 16#0#;
      --  unspecified
      Reserved_24_27 : HAL.UInt4 := 16#0#;
      --  Timing prescaler
      PRESC          : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMINGR_Register use record
      SCLL           at 0 range 0 .. 7;
      SCLH           at 0 range 8 .. 15;
      SDADEL         at 0 range 16 .. 19;
      SCLDEL         at 0 range 20 .. 23;
      Reserved_24_27 at 0 range 24 .. 27;
      PRESC          at 0 range 28 .. 31;
   end record;

   --  Status register 1
   type TIMEOUTR_Register is record
      --  Bus timeout A
      TIMEOUTA       : HAL.UInt12 := 16#0#;
      --  Idle clock timeout detection
      TIDLE          : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_13_14 : HAL.UInt2 := 16#0#;
      --  Clock timeout enable
      TIMOUTEN       : HAL.Bit := 16#0#;
      --  Bus timeout B
      TIMEOUTB       : HAL.UInt12 := 16#0#;
      --  unspecified
      Reserved_28_30 : HAL.UInt3 := 16#0#;
      --  Extended clock timeout enable
      TEXTEN         : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMEOUTR_Register use record
      TIMEOUTA       at 0 range 0 .. 11;
      TIDLE          at 0 range 12 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      TIMOUTEN       at 0 range 15 .. 15;
      TIMEOUTB       at 0 range 16 .. 27;
      Reserved_28_30 at 0 range 28 .. 30;
      TEXTEN         at 0 range 31 .. 31;
   end record;

   --  Interrupt and Status register
   type ISR_Register is record
      --  Transmit data register empty (transmitters)
      TXE            : HAL.Bit := 16#1#;
      --  Transmit interrupt status (transmitters)
      TXIS           : HAL.Bit := 16#0#;
      --  Read-only. Receive data register not empty (receivers)
      RXNE           : HAL.Bit := 16#0#;
      --  Read-only. Address matched (slave mode)
      ADDR           : HAL.Bit := 16#0#;
      --  Read-only. Not acknowledge received flag
      NACKF          : HAL.Bit := 16#0#;
      --  Read-only. Stop detection flag
      STOPF          : HAL.Bit := 16#0#;
      --  Read-only. Transfer Complete (master mode)
      TC             : HAL.Bit := 16#0#;
      --  Read-only. Transfer Complete Reload
      TCR            : HAL.Bit := 16#0#;
      --  Read-only. Bus error
      BERR           : HAL.Bit := 16#0#;
      --  Read-only. Arbitration lost
      ARLO           : HAL.Bit := 16#0#;
      --  Read-only. Overrun/Underrun (slave mode)
      OVR            : HAL.Bit := 16#0#;
      --  Read-only. PEC Error in reception
      PECERR         : HAL.Bit := 16#0#;
      --  Read-only. Timeout or t_low detection flag
      TIMEOUT        : HAL.Bit := 16#0#;
      --  Read-only. SMBus alert
      ALERT          : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Read-only. Bus busy
      BUSY           : HAL.Bit := 16#0#;
      --  Read-only. Transfer direction (Slave mode)
      DIR            : HAL.Bit := 16#0#;
      --  Read-only. Address match code (Slave mode)
      ADDCODE        : HAL.UInt7 := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ISR_Register use record
      TXE            at 0 range 0 .. 0;
      TXIS           at 0 range 1 .. 1;
      RXNE           at 0 range 2 .. 2;
      ADDR           at 0 range 3 .. 3;
      NACKF          at 0 range 4 .. 4;
      STOPF          at 0 range 5 .. 5;
      TC             at 0 range 6 .. 6;
      TCR            at 0 range 7 .. 7;
      BERR           at 0 range 8 .. 8;
      ARLO           at 0 range 9 .. 9;
      OVR            at 0 range 10 .. 10;
      PECERR         at 0 range 11 .. 11;
      TIMEOUT        at 0 range 12 .. 12;
      ALERT          at 0 range 13 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      BUSY           at 0 range 15 .. 15;
      DIR            at 0 range 16 .. 16;
      ADDCODE        at 0 range 17 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Interrupt clear register
   type ICR_Register is record
      --  unspecified
      Reserved_0_2   : HAL.UInt3 := 16#0#;
      --  Write-only. Address Matched flag clear
      ADDRCF         : HAL.Bit := 16#0#;
      --  Write-only. Not Acknowledge flag clear
      NACKCF         : HAL.Bit := 16#0#;
      --  Write-only. Stop detection flag clear
      STOPCF         : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Write-only. Bus error flag clear
      BERRCF         : HAL.Bit := 16#0#;
      --  Write-only. Arbitration lost flag clear
      ARLOCF         : HAL.Bit := 16#0#;
      --  Write-only. Overrun/Underrun flag clear
      OVRCF          : HAL.Bit := 16#0#;
      --  Write-only. PEC Error flag clear
      PECCF          : HAL.Bit := 16#0#;
      --  Write-only. Timeout detection flag clear
      TIMOUTCF       : HAL.Bit := 16#0#;
      --  Write-only. Alert flag clear
      ALERTCF        : HAL.Bit := 16#0#;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICR_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      ADDRCF         at 0 range 3 .. 3;
      NACKCF         at 0 range 4 .. 4;
      STOPCF         at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      BERRCF         at 0 range 8 .. 8;
      ARLOCF         at 0 range 9 .. 9;
      OVRCF          at 0 range 10 .. 10;
      PECCF          at 0 range 11 .. 11;
      TIMOUTCF       at 0 range 12 .. 12;
      ALERTCF        at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  PEC register
   type PECR_Register is record
      --  Read-only. Packet error checking register
      PEC           : HAL.UInt8;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PECR_Register use record
      PEC           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Receive data register
   type RXDR_Register is record
      --  Read-only. 8-bit receive data
      RXDATA        : HAL.UInt8;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RXDR_Register use record
      RXDATA        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Transmit data register
   type TXDR_Register is record
      --  8-bit transmit data
      TXDATA        : HAL.UInt8 := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TXDR_Register use record
      TXDATA        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Inter-integrated circuit
   type I2C_Peripheral is record
      --  Control register 1
      CR1      : aliased CR1_Register;
      --  Control register 2
      CR2      : aliased CR2_Register;
      --  Own address register 1
      OAR1     : aliased OAR1_Register;
      --  Own address register 2
      OAR2     : aliased OAR2_Register;
      --  Timing register
      TIMINGR  : aliased TIMINGR_Register;
      --  Status register 1
      TIMEOUTR : aliased TIMEOUTR_Register;
      --  Interrupt and Status register
      ISR      : aliased ISR_Register;
      --  Interrupt clear register
      ICR      : aliased ICR_Register;
      --  PEC register
      PECR     : aliased PECR_Register;
      --  Receive data register
      RXDR     : aliased RXDR_Register;
      --  Transmit data register
      TXDR     : aliased TXDR_Register;
   end record
     with Volatile;

   for I2C_Peripheral use record
      CR1      at 16#0# range 0 .. 31;
      CR2      at 16#4# range 0 .. 31;
      OAR1     at 16#8# range 0 .. 31;
      OAR2     at 16#C# range 0 .. 31;
      TIMINGR  at 16#10# range 0 .. 31;
      TIMEOUTR at 16#14# range 0 .. 31;
      ISR      at 16#18# range 0 .. 31;
      ICR      at 16#1C# range 0 .. 31;
      PECR     at 16#20# range 0 .. 31;
      RXDR     at 16#24# range 0 .. 31;
      TXDR     at 16#28# range 0 .. 31;
   end record;

   --  Inter-integrated circuit
   I2C1_Periph : aliased I2C_Peripheral
     with Import, Address => I2C1_Base;

   --  Inter-integrated circuit
   I2C2_Periph : aliased I2C_Peripheral
     with Import, Address => I2C2_Base;

   --  Inter-integrated circuit
   I2C3_Periph : aliased I2C_Peripheral
     with Import, Address => I2C3_Base;

end STM32L0x1.I2C;
