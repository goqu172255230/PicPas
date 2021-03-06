unit PIC16F688;

// Define hardware
{$SET PIC_MODEL    = 'PIC16F688'}
{$SET PIC_MAXFREQ  = 20000000}
{$SET PIC_NPINS    = 14}
{$SET PIC_NUMBANKS = 4}
{$SET PIC_NUMPAGES = 2}
{$SET PIC_MAXFLASH = 4096}

interface
var
  INDF              : byte absolute $0000;
  TMR0              : byte absolute $0001;
  PCL               : byte absolute $0002;
  STATUS            : byte absolute $0003;
  STATUS_IRP        : bit  absolute STATUS.7;
  STATUS_RP1        : bit  absolute STATUS.6;
  STATUS_RP0        : bit  absolute STATUS.5;
  STATUS_TO         : bit  absolute STATUS.4;
  STATUS_PD         : bit  absolute STATUS.3;
  STATUS_Z          : bit  absolute STATUS.2;
  STATUS_DC         : bit  absolute STATUS.1;
  STATUS_C          : bit  absolute STATUS.0;
  FSR               : byte absolute $0004;
  PORTA             : byte absolute $0005;
  PORTA_RA5         : bit  absolute PORTA.5;
  PORTA_RA4         : bit  absolute PORTA.4;
  PORTA_RA3         : bit  absolute PORTA.3;
  PORTA_RA2         : bit  absolute PORTA.2;
  PORTA_RA1         : bit  absolute PORTA.1;
  PORTA_RA0         : bit  absolute PORTA.0;
  PORTC             : byte absolute $0007;
  PORTC_RC5         : bit  absolute PORTC.5;
  PORTC_RC4         : bit  absolute PORTC.4;
  PORTC_RC3         : bit  absolute PORTC.3;
  PORTC_RC2         : bit  absolute PORTC.2;
  PORTC_RC1         : bit  absolute PORTC.1;
  PORTC_RC0         : bit  absolute PORTC.0;
  PCLATH            : byte absolute $000a;
  INTCON            : byte absolute $000b;
  INTCON_GIE        : bit  absolute INTCON.7;
  INTCON_PEIE       : bit  absolute INTCON.6;
  INTCON_T0IE       : bit  absolute INTCON.5;
  INTCON_INTE       : bit  absolute INTCON.4;
  INTCON_RAIE       : bit  absolute INTCON.3;
  INTCON_T0IF       : bit  absolute INTCON.2;
  INTCON_INTF       : bit  absolute INTCON.1;
  INTCON_RAIF       : bit  absolute INTCON.0;
  PIR1              : byte absolute $000c;
  PIR1_EEIF         : bit  absolute PIR1.7;
  PIR1_ADIF         : bit  absolute PIR1.6;
  PIR1_RCIF         : bit  absolute PIR1.5;
  PIR1_C2IF         : bit  absolute PIR1.4;
  PIR1_C1IF         : bit  absolute PIR1.3;
  PIR1_OSFIF        : bit  absolute PIR1.2;
  PIR1_TXIF         : bit  absolute PIR1.1;
  PIR1_TMR1IF       : bit  absolute PIR1.0;
  TMR1L             : byte absolute $000e;
  TMR1H             : byte absolute $000f;
  T1CON             : byte absolute $0010;
  T1CON_T1GINV      : bit  absolute T1CON.7;
  T1CON_TMR1GE      : bit  absolute T1CON.6;
  T1CON_T1CKPS1     : bit  absolute T1CON.5;
  T1CON_T1CKPS0     : bit  absolute T1CON.4;
  T1CON_T1OSCEN     : bit  absolute T1CON.3;
  T1CON_T1SYNC      : bit  absolute T1CON.2;
  T1CON_TMR1CS      : bit  absolute T1CON.1;
  T1CON_TMR1ON      : bit  absolute T1CON.0;
  BAUDCTL           : byte absolute $0011;
  BAUDCTL_ABDOVF    : bit  absolute BAUDCTL.6;
  BAUDCTL_RCIDL     : bit  absolute BAUDCTL.5;
  BAUDCTL_SCKP      : bit  absolute BAUDCTL.4;
  BAUDCTL_BRG16     : bit  absolute BAUDCTL.3;
  BAUDCTL_WUE       : bit  absolute BAUDCTL.2;
  BAUDCTL_ABDEN     : bit  absolute BAUDCTL.1;
  SPBRGH            : byte absolute $0012;
  SPBRG             : byte absolute $0013;
  RCREG             : byte absolute $0014;
  TXREG             : byte absolute $0015;
  TXSTA             : byte absolute $0016;
  TXSTA_CSRC        : bit  absolute TXSTA.7;
  TXSTA_TX9         : bit  absolute TXSTA.6;
  TXSTA_TXEN        : bit  absolute TXSTA.5;
  TXSTA_SYNC        : bit  absolute TXSTA.4;
  TXSTA_SENDB       : bit  absolute TXSTA.3;
  TXSTA_BRGH        : bit  absolute TXSTA.2;
  TXSTA_TRMT        : bit  absolute TXSTA.1;
  TXSTA_TX9D        : bit  absolute TXSTA.0;
  RCSTA             : byte absolute $0017;
  RCSTA_SPEN        : bit  absolute RCSTA.7;
  RCSTA_RX9         : bit  absolute RCSTA.6;
  RCSTA_SREN        : bit  absolute RCSTA.5;
  RCSTA_CREN        : bit  absolute RCSTA.4;
  RCSTA_ADDEN       : bit  absolute RCSTA.3;
  RCSTA_FERR        : bit  absolute RCSTA.2;
  RCSTA_OERR        : bit  absolute RCSTA.1;
  RCSTA_RX9D        : bit  absolute RCSTA.0;
  WDTCON            : byte absolute $0018;
  WDTCON_WDTPS3     : bit  absolute WDTCON.4;
  WDTCON_WDTPS2     : bit  absolute WDTCON.3;
  WDTCON_WDTPS1     : bit  absolute WDTCON.2;
  WDTCON_WDTPS0     : bit  absolute WDTCON.1;
  WDTCON_SWDTEN     : bit  absolute WDTCON.0;
  CMCON0            : byte absolute $0019;
  CMCON0_C2OUT      : bit  absolute CMCON0.7;
  CMCON0_C1OUT      : bit  absolute CMCON0.6;
  CMCON0_C2INV      : bit  absolute CMCON0.5;
  CMCON0_C1INV      : bit  absolute CMCON0.4;
  CMCON0_CIS        : bit  absolute CMCON0.3;
  CMCON0_CM2        : bit  absolute CMCON0.2;
  CMCON0_CM1        : bit  absolute CMCON0.1;
  CMCON0_CM0        : bit  absolute CMCON0.0;
  CMCON1            : byte absolute $001a;
  CMCON1_T1GSS      : bit  absolute CMCON1.1;
  CMCON1_C2SYNC     : bit  absolute CMCON1.0;
  ADRESH            : byte absolute $001e;
  ADCON0            : byte absolute $001f;
  ADCON0_ADFM       : bit  absolute ADCON0.7;
  ADCON0_VCFG       : bit  absolute ADCON0.6;
  ADCON0_CHS2       : bit  absolute ADCON0.4;
  ADCON0_CHS1       : bit  absolute ADCON0.3;
  ADCON0_GO_nDONE   : bit  absolute ADCON0.2;
  ADCON0_ADON       : bit  absolute ADCON0.1;
  OPTION_REG        : byte absolute $0081;
  OPTION_REG_RAPU   : bit  absolute OPTION_REG.7;
  OPTION_REG_INTEDG : bit  absolute OPTION_REG.6;
  OPTION_REG_T0CS   : bit  absolute OPTION_REG.5;
  OPTION_REG_T0SE   : bit  absolute OPTION_REG.4;
  OPTION_REG_PSA    : bit  absolute OPTION_REG.3;
  OPTION_REG_PS2    : bit  absolute OPTION_REG.2;
  OPTION_REG_PS1    : bit  absolute OPTION_REG.1;
  OPTION_REG_PS0    : bit  absolute OPTION_REG.0;
  TRISA             : byte absolute $0085;
  TRISA_TRISA5      : bit  absolute TRISA.5;
  TRISA_TRISA4      : bit  absolute TRISA.4;
  TRISA_TRISA3      : bit  absolute TRISA.3;
  TRISA_TRISA2      : bit  absolute TRISA.2;
  TRISA_TRISA1      : bit  absolute TRISA.1;
  TRISA_TRISA0      : bit  absolute TRISA.0;
  TRISC             : byte absolute $0087;
  TRISC_TRISC5      : bit  absolute TRISC.5;
  TRISC_TRISC4      : bit  absolute TRISC.4;
  TRISC_TRISC3      : bit  absolute TRISC.3;
  TRISC_TRISC2      : bit  absolute TRISC.2;
  TRISC_TRISC1      : bit  absolute TRISC.1;
  TRISC_TRISC0      : bit  absolute TRISC.0;
  PIE1              : byte absolute $008c;
  PIE1_EEIE         : bit  absolute PIE1.7;
  PIE1_ADIE         : bit  absolute PIE1.6;
  PIE1_RCIE         : bit  absolute PIE1.5;
  PIE1_C2IE         : bit  absolute PIE1.4;
  PIE1_C1IE         : bit  absolute PIE1.3;
  PIE1_OSFIE        : bit  absolute PIE1.2;
  PIE1_TXIE         : bit  absolute PIE1.1;
  PIE1_TMR1IE       : bit  absolute PIE1.0;
  PCON              : byte absolute $008e;
  PCON_ULPWUE       : bit  absolute PCON.5;
  PCON_SBODEN       : bit  absolute PCON.4;
  PCON_POR          : bit  absolute PCON.3;
  PCON_BOR          : bit  absolute PCON.2;
  OSCCON            : byte absolute $008f;
  OSCCON_IRCF2      : bit  absolute OSCCON.6;
  OSCCON_IRCF1      : bit  absolute OSCCON.5;
  OSCCON_IRCF0      : bit  absolute OSCCON.4;
  OSCCON_OSTS       : bit  absolute OSCCON.3;
  OSCCON_HTS        : bit  absolute OSCCON.2;
  OSCCON_LTS        : bit  absolute OSCCON.1;
  OSCCON_SCS        : bit  absolute OSCCON.0;
  OSCTUNE           : byte absolute $0090;
  OSCTUNE_TUN4      : bit  absolute OSCTUNE.4;
  OSCTUNE_TUN3      : bit  absolute OSCTUNE.3;
  OSCTUNE_TUN2      : bit  absolute OSCTUNE.2;
  OSCTUNE_TUN1      : bit  absolute OSCTUNE.1;
  OSCTUNE_TUN0      : bit  absolute OSCTUNE.0;
  ANSEL             : byte absolute $0091;
  ANSEL_ANS7        : bit  absolute ANSEL.7;
  ANSEL_ANS6        : bit  absolute ANSEL.6;
  ANSEL_ANS5        : bit  absolute ANSEL.5;
  ANSEL_ANS4        : bit  absolute ANSEL.4;
  ANSEL_ANS3        : bit  absolute ANSEL.3;
  ANSEL_ANS2        : bit  absolute ANSEL.2;
  ANSEL_ANS1        : bit  absolute ANSEL.1;
  ANSEL_ANS0        : bit  absolute ANSEL.0;
  WPUA              : byte absolute $0095;
  WPUA_WPUA5        : bit  absolute WPUA.5;
  WPUA_WPUA4        : bit  absolute WPUA.4;
  WPUA_WPUA2        : bit  absolute WPUA.3;
  WPUA_WPUA1        : bit  absolute WPUA.2;
  WPUA_WPUA0        : bit  absolute WPUA.1;
  IOCA              : byte absolute $0096;
  IOCA_IOCA5        : bit  absolute IOCA.5;
  IOCA_IOCA4        : bit  absolute IOCA.4;
  IOCA_IOCA3        : bit  absolute IOCA.3;
  IOCA_IOCA2        : bit  absolute IOCA.2;
  IOCA_IOCA1        : bit  absolute IOCA.1;
  IOCA_IOCA0        : bit  absolute IOCA.0;
  EEDATH            : byte absolute $0097;
  EEADRH            : byte absolute $0098;
  VRCON             : byte absolute $0099;
  VRCON_VREN        : bit  absolute VRCON.6;
  VRCON_VRR         : bit  absolute VRCON.5;
  VRCON_VR3         : bit  absolute VRCON.3;
  VRCON_VR2         : bit  absolute VRCON.2;
  VRCON_VR1         : bit  absolute VRCON.1;
  VRCON_VR0         : bit  absolute VRCON.0;
  EEDAT             : byte absolute $009a;
  EEADR             : byte absolute $009b;
  EECON1            : byte absolute $009c;
  EECON1_EEPGD      : bit  absolute EECON1.7;
  EECON1_WRERR      : bit  absolute EECON1.6;
  EECON1_WREN       : bit  absolute EECON1.5;
  EECON1_WR         : bit  absolute EECON1.4;
  EECON1_RD         : bit  absolute EECON1.3;
  EECON2            : byte absolute $009d;
  ADRESL            : byte absolute $009e;
  ADCON1            : byte absolute $009f;
  ADCON1_ADCS2      : bit  absolute ADCON1.6;
  ADCON1_ADCS1      : bit  absolute ADCON1.5;
  ADCON1_ADCS0      : bit  absolute ADCON1.4;


  // -- Define RAM state values --

  {$SET_STATE_RAM '000-005:SFR'}  // INDF, TMR0, PCL, STATUS, FSR, PORTA
  {$SET_STATE_RAM '007-007:SFR'}  // PORTC
  {$SET_STATE_RAM '00A-00C:SFR'}  // PCLATH, INTCON, PIR1
  {$SET_STATE_RAM '00E-01A:SFR'}  // TMR1L, TMR1H, T1CON, BAUDCTL, SPBRGH, SPBRG, RCREG, TXREG, TXSTA, RCSTA, WDTCON, CMCON0, CMCON1
  {$SET_STATE_RAM '01E-01F:SFR'}  // ADRESH, ADCON0
  {$SET_STATE_RAM '020-07F:GPR'} 
  {$SET_STATE_RAM '080-085:SFR'}  // INDF, OPTION_REG, PCL, STATUS, FSR, TRISA
  {$SET_STATE_RAM '087-087:SFR'}  // TRISC
  {$SET_STATE_RAM '08A-08C:SFR'}  // PCLATH, INTCON, PIE1
  {$SET_STATE_RAM '08E-091:SFR'}  // PCON, OSCCON, OSCTUNE, ANSEL
  {$SET_STATE_RAM '095-09F:SFR'}  // WPUA, IOCA, EEDATH, EEADRH, VRCON, EEDAT, EEADR, EECON1, EECON2, ADRESL, ADCON1
  {$SET_STATE_RAM '0A0-0FF:GPR'} 
  {$SET_STATE_RAM '100-105:SFR'}  // INDF, TMR0, PCL, STATUS, FSR, PORTA
  {$SET_STATE_RAM '107-107:SFR'}  // PORTC
  {$SET_STATE_RAM '10A-10B:SFR'}  // PCLATH, INTCON
  {$SET_STATE_RAM '120-17F:GPR'} 
  {$SET_STATE_RAM '180-185:SFR'}  // INDF, OPTION_REG, PCL, STATUS, FSR, TRISA
  {$SET_STATE_RAM '187-187:SFR'}  // TRISC
  {$SET_STATE_RAM '18A-18B:SFR'}  // PCLATH, INTCON
  {$SET_STATE_RAM '1F0-1FF:GPR'} 


  // -- Define mirrored registers --

  {$SET_MAPPED_RAM '080-080:bnk0'} // INDF
  {$SET_MAPPED_RAM '082-084:bnk0'} // PCL, STATUS, FSR
  {$SET_MAPPED_RAM '08A-08B:bnk0'} // PCLATH, INTCON
  {$SET_MAPPED_RAM '100-105:bnk0'} // INDF, TMR0, PCL, STATUS, FSR, PORTA
  {$SET_MAPPED_RAM '107-107:bnk0'} // PORTC
  {$SET_MAPPED_RAM '10A-10B:bnk0'} // PCLATH, INTCON
  {$SET_MAPPED_RAM '180-180:bnk0'} // INDF
  {$SET_MAPPED_RAM '181-181:bnk1'} // OPTION_REG
  {$SET_MAPPED_RAM '182-184:bnk0'} // PCL, STATUS, FSR
  {$SET_MAPPED_RAM '185-185:bnk1'} // TRISA
  {$SET_MAPPED_RAM '187-187:bnk1'} // TRISC
  {$SET_MAPPED_RAM '18A-18B:bnk0'} // PCLATH, INTCON


  // -- Initial values --

  {$SET_UNIMP_BITS '000:00'} // INDF
  {$SET_UNIMP_BITS '005:3F'} // PORTA
  {$SET_UNIMP_BITS '007:3F'} // PORTC
  {$SET_UNIMP_BITS '00A:1F'} // PCLATH
  {$SET_UNIMP_BITS '011:DB'} // BAUDCTL
  {$SET_UNIMP_BITS '018:1F'} // WDTCON
  {$SET_UNIMP_BITS '01A:03'} // CMCON1
  {$SET_UNIMP_BITS '01F:DF'} // ADCON0
  {$SET_UNIMP_BITS '085:3F'} // TRISA
  {$SET_UNIMP_BITS '087:3F'} // TRISC
  {$SET_UNIMP_BITS '08E:33'} // PCON
  {$SET_UNIMP_BITS '08F:7F'} // OSCCON
  {$SET_UNIMP_BITS '090:1F'} // OSCTUNE
  {$SET_UNIMP_BITS '095:37'} // WPUA
  {$SET_UNIMP_BITS '096:3F'} // IOCA
  {$SET_UNIMP_BITS '097:3F'} // EEDATH
  {$SET_UNIMP_BITS '098:0F'} // EEADRH
  {$SET_UNIMP_BITS '099:AF'} // VRCON
  {$SET_UNIMP_BITS '09C:8F'} // EECON1
  {$SET_UNIMP_BITS '09F:70'} // ADCON1


  // -- PIN mapping --

  // Pin  1 : Vdd
  // Pin  2 : RA5/T1CKI/OSC1/CLKIN
  // Pin  3 : RA4/AN3/T1G/OSC2/CLKOUT
  // Pin  4 : RA3/MCLR/Vpp
  // Pin  5 : RC5/RX/DT
  // Pin  6 : RC4/C2OUT/TX/CK
  // Pin  7 : RC3/AN7
  // Pin  8 : RC2/AN6
  // Pin  9 : RC1/AN5/C2IN-
  // Pin 10 : RC0/AN4/C2IN+
  // Pin 11 : RA2/AN2/T0CKI/INT/C1OUT
  // Pin 12 : RA1/AN1/C1IN-/Vref/ICSPCLK
  // Pin 13 : RA0/AN0/C1IN+/ICSPDAT/ULPWU
  // Pin 14 : Vss


  // -- RAM to PIN mapping --

  {$MAP_RAM_TO_PIN '005:0-13,1-12,2-11,3-4,4-3,5-2'} // PORTA
  {$MAP_RAM_TO_PIN '007:0-10,1-9,2-8,3-7,4-6,5-5'} // PORTC


  // -- Bits Configuration --

  // FCMEN : Fail-Safe Clock Monitor Enabled bit
  {$define _FCMEN_ON       = $0FFF}  // Fail-Safe Clock Monitor is enabled
  {$define _FCMEN_OFF      = $0FFE}  // Fail-Safe Clock Monitor is disabled

  // IESO : Internal External Switchover bit
  {$define _IESO_ON        = $0FFF}  // Internal External Switchover mode is enabled
  {$define _IESO_OFF       = $0FFD}  // Internal External Switchover mode is disabled

  // BOREN : Brown Out Detect
  {$define _BOREN_ON       = $0FFF}  // BOR enabled
  {$define _BOREN_NSLEEP   = $0FFB}  // BOR enabled during operation and disabled in Sleep
  {$define _BOREN_SBODEN   = $0FF7}  // BOR controlled by SBOREN bit of the PCON register
  {$define _BOREN_OFF      = $0FF3}  // BOR disabled

  // CPD : Data Code Protection bit
  {$define _CPD_OFF        = $0FFF}  // Data memory code protection is disabled
  {$define _CPD_ON         = $0FEF}  // Data memory code protection is enabled

  // CP : Code Protection bit
  {$define _CP_OFF         = $0FFF}  // Program memory code protection is disabled
  {$define _CP_ON          = $0FDF}  // Program memory code protection is enabled

  // MCLRE : MCLR Pin Function Select bit
  {$define _MCLRE_ON       = $0FFF}  // MCLR pin function is MCLR
  {$define _MCLRE_OFF      = $0FBF}  // MCLR pin function is digital input, MCLR internally tied to VDD

  // PWRTE : Power-up Timer Enable bit
  {$define _PWRTE_OFF      = $0FFF}  // PWRT disabled
  {$define _PWRTE_ON       = $0F7F}  // PWRT enabled

  // WDTE : Watchdog Timer Enable bit
  {$define _WDTE_ON        = $0FFF}  // WDT enabled
  {$define _WDTE_OFF       = $0EFF}  // WDT disabled

  // FOSC : Oscillator Selection bits
  {$define _FOSC_EXTRCCLK  = $0FFF}  // EXTRC oscillator: External RC on RA5/OSC1/CLKIN, CLKOUT function on RA4/OSC2/CLKOUT pin
  {$define _FOSC_EXTRCIO   = $0DFF}  // EXTRCIO oscillator: External RC on RA5/OSC1/CLKIN, I/O function on RA4/OSC2/CLKOUT pin
  {$define _FOSC_INTOSCCLK = $0BFF}  // INTOSC oscillator: CLKOUT function on RA4/OSC2/CLKOUT pin, I/O function on RA5/OSC1/CLKIN
  {$define _FOSC_INTOSCIO  = $09FF}  // INTOSCIO oscillator: I/O function on RA4/OSC2/CLKOUT pin, I/O function on RA5/OSC1/CLKIN
  {$define _FOSC_EC        = $07FF}  // EC: I/O function on RA4/OSC2/CLKOUT pin, CLKIN on RA5/OSC1/CLKIN
  {$define _FOSC_HS        = $05FF}  // HS oscillator: High-speed crystal/resonator on RA4/OSC2/CLKOUT and RA5/OSC1/CLKIN
  {$define _FOSC_XT        = $03FF}  // XT oscillator: Crystal/resonator on RA4/OSC2/CLKOUT and RA5/OSC1/CLKINT
  {$define _FOSC_LP        = $01FF}  // LP oscillator: Low-power crystal on RA4/OSC2/CLKOUT and RA5/OSC1/CLKIN

implementation
end.
