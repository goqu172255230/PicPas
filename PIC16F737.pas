unit PIC16F737;

// Define hardware
{$SET PIC_MODEL    = 'PIC16F737'}
{$SET PIC_MAXFREQ  = 10000000}
{$SET PIC_NPINS    = 28}
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
  PORTA_RA7         : bit  absolute PORTA.7;
  PORTA_RA6         : bit  absolute PORTA.6;
  PORTA_RA5         : bit  absolute PORTA.5;
  PORTA_RA4         : bit  absolute PORTA.4;
  PORTA_RA3         : bit  absolute PORTA.3;
  PORTA_RA2         : bit  absolute PORTA.2;
  PORTA_RA1         : bit  absolute PORTA.1;
  PORTA_RA0         : bit  absolute PORTA.0;
  PORTB             : byte absolute $0006;
  PORTB_RB7         : bit  absolute PORTB.7;
  PORTB_RB6         : bit  absolute PORTB.6;
  PORTB_RB5         : bit  absolute PORTB.5;
  PORTB_RB4         : bit  absolute PORTB.4;
  PORTB_RB3         : bit  absolute PORTB.3;
  PORTB_RB2         : bit  absolute PORTB.2;
  PORTB_RB1         : bit  absolute PORTB.1;
  PORTB_RB0         : bit  absolute PORTB.0;
  PORTC             : byte absolute $0007;
  PORTC_RC7         : bit  absolute PORTC.7;
  PORTC_RC6         : bit  absolute PORTC.6;
  PORTC_RC5         : bit  absolute PORTC.5;
  PORTC_RC4         : bit  absolute PORTC.4;
  PORTC_RC3         : bit  absolute PORTC.3;
  PORTC_RC2         : bit  absolute PORTC.2;
  PORTC_RC1         : bit  absolute PORTC.1;
  PORTC_RC0         : bit  absolute PORTC.0;
  PORTE             : byte absolute $0009;
  PORTE_RE3         : bit  absolute PORTE.3;
  PCLATH            : byte absolute $000a;
  INTCON            : byte absolute $000b;
  INTCON_GIE        : bit  absolute INTCON.7;
  INTCON_PEIE       : bit  absolute INTCON.6;
  INTCON_TMR0IE     : bit  absolute INTCON.5;
  INTCON_INTE       : bit  absolute INTCON.4;
  INTCON_RBIE       : bit  absolute INTCON.3;
  INTCON_TMR0IF     : bit  absolute INTCON.2;
  INTCON_INTF       : bit  absolute INTCON.1;
  INTCON_RBIF       : bit  absolute INTCON.0;
  PIR1              : byte absolute $000c;
  PIR1_PSPIF        : bit  absolute PIR1.7;
  PIR1_ADIF         : bit  absolute PIR1.6;
  PIR1_RCIF         : bit  absolute PIR1.5;
  PIR1_TXIF         : bit  absolute PIR1.4;
  PIR1_SSPIF        : bit  absolute PIR1.3;
  PIR1_CCP1IF       : bit  absolute PIR1.2;
  PIR1_TMR2IF       : bit  absolute PIR1.1;
  PIR1_TMR1IF       : bit  absolute PIR1.0;
  PIR2              : byte absolute $000d;
  PIR2_OSFIF        : bit  absolute PIR2.6;
  PIR2_CMIF         : bit  absolute PIR2.5;
  PIR2_LVDIF        : bit  absolute PIR2.4;
  PIR2_BCLIF        : bit  absolute PIR2.3;
  PIR2_CCP3IF       : bit  absolute PIR2.2;
  PIR2_CCP2IF       : bit  absolute PIR2.1;
  TMR1L             : byte absolute $000e;
  TMR1H             : byte absolute $000f;
  T1CON             : byte absolute $0010;
  T1CON_T1RUN       : bit  absolute T1CON.6;
  T1CON_T1CKPS1     : bit  absolute T1CON.4;
  T1CON_T1OSCEN     : bit  absolute T1CON.3;
  T1CON_T1SYNC      : bit  absolute T1CON.2;
  T1CON_TMR1CS      : bit  absolute T1CON.1;
  T1CON_TMR1ON      : bit  absolute T1CON.0;
  TMR2              : byte absolute $0011;
  T2CON             : byte absolute $0012;
  T2CON_TOUTPS3     : bit  absolute T2CON.6;
  T2CON_TOUTPS2     : bit  absolute T2CON.5;
  T2CON_TOUTPS1     : bit  absolute T2CON.4;
  T2CON_TOUTPS0     : bit  absolute T2CON.3;
  T2CON_TMR2ON      : bit  absolute T2CON.2;
  T2CON_T2CKPS0     : bit  absolute T2CON.1;
  SSPBUF            : byte absolute $0013;
  SSPCON            : byte absolute $0014;
  SSPCON_WCOL       : bit  absolute SSPCON.7;
  SSPCON_SSPOV      : bit  absolute SSPCON.6;
  SSPCON_SSPEN      : bit  absolute SSPCON.5;
  SSPCON_CKP        : bit  absolute SSPCON.4;
  SSPCON_SSPM3      : bit  absolute SSPCON.3;
  SSPCON_SSPM2      : bit  absolute SSPCON.2;
  SSPCON_SSPM1      : bit  absolute SSPCON.1;
  SSPCON_SSPM0      : bit  absolute SSPCON.0;
  CCPR1L            : byte absolute $0015;
  CCPR1H            : byte absolute $0016;
  CCP1CON           : byte absolute $0017;
  CCP1CON_CCP1X     : bit  absolute CCP1CON.5;
  CCP1CON_CCP1Y     : bit  absolute CCP1CON.4;
  CCP1CON_CCP1M3    : bit  absolute CCP1CON.3;
  CCP1CON_CCP1M2    : bit  absolute CCP1CON.2;
  CCP1CON_CCP1M1    : bit  absolute CCP1CON.1;
  CCP1CON_CCP1M0    : bit  absolute CCP1CON.0;
  RCSTA             : byte absolute $0018;
  RCSTA_SPEN        : bit  absolute RCSTA.7;
  RCSTA_RX9         : bit  absolute RCSTA.6;
  RCSTA_SREN        : bit  absolute RCSTA.5;
  RCSTA_CREN        : bit  absolute RCSTA.4;
  RCSTA_ADDEN       : bit  absolute RCSTA.3;
  RCSTA_FERR        : bit  absolute RCSTA.2;
  RCSTA_OERR        : bit  absolute RCSTA.1;
  RCSTA_RX9D        : bit  absolute RCSTA.0;
  TXREG             : byte absolute $0019;
  RCREG             : byte absolute $001a;
  CCPR2L            : byte absolute $001b;
  CCPR2H            : byte absolute $001c;
  CCP2CON           : byte absolute $001d;
  CCP2CON_CCP2X     : bit  absolute CCP2CON.5;
  CCP2CON_CCP2Y     : bit  absolute CCP2CON.4;
  CCP2CON_CCP2M3    : bit  absolute CCP2CON.3;
  CCP2CON_CCP2M2    : bit  absolute CCP2CON.2;
  CCP2CON_CCP2M1    : bit  absolute CCP2CON.1;
  CCP2CON_CCP2M0    : bit  absolute CCP2CON.0;
  ADRESH            : byte absolute $001e;
  ADCON0            : byte absolute $001f;
  ADCON0_ADCS1      : bit  absolute ADCON0.7;
  ADCON0_ADCS0      : bit  absolute ADCON0.6;
  ADCON0_CHS2       : bit  absolute ADCON0.5;
  ADCON0_CHS1       : bit  absolute ADCON0.4;
  ADCON0_CHS0       : bit  absolute ADCON0.3;
  ADCON0_GO_nDONE   : bit  absolute ADCON0.2;
  ADCON0_CHS3       : bit  absolute ADCON0.1;
  ADCON0_ADON       : bit  absolute ADCON0.0;
  OPTION_REG        : byte absolute $0081;
  OPTION_REG_RBPU   : bit  absolute OPTION_REG.7;
  OPTION_REG_INTEDG : bit  absolute OPTION_REG.6;
  OPTION_REG_T0CS   : bit  absolute OPTION_REG.5;
  OPTION_REG_T0SE   : bit  absolute OPTION_REG.4;
  OPTION_REG_PSA    : bit  absolute OPTION_REG.3;
  OPTION_REG_PS2    : bit  absolute OPTION_REG.2;
  OPTION_REG_PS1    : bit  absolute OPTION_REG.1;
  OPTION_REG_PS0    : bit  absolute OPTION_REG.0;
  TRISA             : byte absolute $0085;
  TRISA_TRISA7      : bit  absolute TRISA.7;
  TRISA_TRISA6      : bit  absolute TRISA.6;
  TRISA_TRISA5      : bit  absolute TRISA.5;
  TRISA_TRISA4      : bit  absolute TRISA.4;
  TRISA_TRISA3      : bit  absolute TRISA.3;
  TRISA_TRISA2      : bit  absolute TRISA.2;
  TRISA_TRISA1      : bit  absolute TRISA.1;
  TRISA_TRISA0      : bit  absolute TRISA.0;
  TRISB             : byte absolute $0086;
  TRISB_TRISB7      : bit  absolute TRISB.7;
  TRISB_TRISB6      : bit  absolute TRISB.6;
  TRISB_TRISB5      : bit  absolute TRISB.5;
  TRISB_TRISB4      : bit  absolute TRISB.4;
  TRISB_TRISB3      : bit  absolute TRISB.3;
  TRISB_TRISB2      : bit  absolute TRISB.2;
  TRISB_TRISB1      : bit  absolute TRISB.1;
  TRISB_TRISB0      : bit  absolute TRISB.0;
  TRISC             : byte absolute $0087;
  TRISC_TRISC7      : bit  absolute TRISC.7;
  TRISC_TRISC6      : bit  absolute TRISC.6;
  TRISC_TRISC5      : bit  absolute TRISC.5;
  TRISC_TRISC4      : bit  absolute TRISC.4;
  TRISC_TRISC3      : bit  absolute TRISC.3;
  TRISC_TRISC2      : bit  absolute TRISC.2;
  TRISC_TRISC1      : bit  absolute TRISC.1;
  TRISC_TRISC0      : bit  absolute TRISC.0;
  PIE1              : byte absolute $008c;
  PIE1_PSPIE        : bit  absolute PIE1.7;
  PIE1_ADIE         : bit  absolute PIE1.6;
  PIE1_RCIE         : bit  absolute PIE1.5;
  PIE1_TXIE         : bit  absolute PIE1.4;
  PIE1_SSPIE        : bit  absolute PIE1.3;
  PIE1_CCP1IE       : bit  absolute PIE1.2;
  PIE1_TMR2IE       : bit  absolute PIE1.1;
  PIE1_TMR1IE       : bit  absolute PIE1.0;
  PIE2              : byte absolute $008d;
  PIE2_OSFIE        : bit  absolute PIE2.6;
  PIE2_CMIE         : bit  absolute PIE2.5;
  PIE2_LVDIE        : bit  absolute PIE2.4;
  PIE2_BCLIE        : bit  absolute PIE2.3;
  PIE2_CCP3IE       : bit  absolute PIE2.2;
  PIE2_CCP2IE       : bit  absolute PIE2.1;
  PCON              : byte absolute $008e;
  PCON_SBOREN       : bit  absolute PCON.2;
  PCON_POR          : bit  absolute PCON.1;
  PCON_BOR          : bit  absolute PCON.0;
  OSCCON            : byte absolute $008f;
  OSCCON_IRCF2      : bit  absolute OSCCON.5;
  OSCCON_IRCF1      : bit  absolute OSCCON.4;
  OSCCON_OSTS       : bit  absolute OSCCON.3;
  OSCCON_IOFS       : bit  absolute OSCCON.2;
  OSCCON_SCS0       : bit  absolute OSCCON.1;
  OSCTUNE           : byte absolute $0090;
  OSCTUNE_TUN5      : bit  absolute OSCTUNE.5;
  OSCTUNE_TUN4      : bit  absolute OSCTUNE.4;
  OSCTUNE_TUN3      : bit  absolute OSCTUNE.3;
  OSCTUNE_TUN2      : bit  absolute OSCTUNE.2;
  OSCTUNE_TUN1      : bit  absolute OSCTUNE.1;
  OSCTUNE_TUN0      : bit  absolute OSCTUNE.0;
  SSPCON2           : byte absolute $0091;
  SSPCON2_GCEN      : bit  absolute SSPCON2.7;
  SSPCON2_ACKSTAT   : bit  absolute SSPCON2.6;
  SSPCON2_ACKDT     : bit  absolute SSPCON2.5;
  SSPCON2_ACKEN     : bit  absolute SSPCON2.4;
  SSPCON2_RCEN      : bit  absolute SSPCON2.3;
  SSPCON2_PEN       : bit  absolute SSPCON2.2;
  SSPCON2_RSEN      : bit  absolute SSPCON2.1;
  SSPCON2_SEN       : bit  absolute SSPCON2.0;
  PR2               : byte absolute $0092;
  SSPADD            : byte absolute $0093;
  SSPSTAT           : byte absolute $0094;
  SSPSTAT_SMP       : bit  absolute SSPSTAT.7;
  SSPSTAT_CKE       : bit  absolute SSPSTAT.6;
  SSPSTAT_D_nA      : bit  absolute SSPSTAT.5;
  SSPSTAT_P         : bit  absolute SSPSTAT.4;
  SSPSTAT_S         : bit  absolute SSPSTAT.3;
  SSPSTAT_R_nW      : bit  absolute SSPSTAT.2;
  SSPSTAT_UA        : bit  absolute SSPSTAT.1;
  SSPSTAT_BF        : bit  absolute SSPSTAT.0;
  CCPR3L            : byte absolute $0095;
  CCPR3H            : byte absolute $0096;
  CCP3CON           : byte absolute $0097;
  CCP3CON_CCP3X     : bit  absolute CCP3CON.5;
  CCP3CON_CCP3Y     : bit  absolute CCP3CON.4;
  CCP3CON_CCP3M3    : bit  absolute CCP3CON.3;
  CCP3CON_CCP3M2    : bit  absolute CCP3CON.2;
  CCP3CON_CCP3M1    : bit  absolute CCP3CON.1;
  CCP3CON_CCP3M0    : bit  absolute CCP3CON.0;
  TXSTA             : byte absolute $0098;
  TXSTA_CSRC        : bit  absolute TXSTA.7;
  TXSTA_TX9         : bit  absolute TXSTA.6;
  TXSTA_TXEN        : bit  absolute TXSTA.5;
  TXSTA_SYNC        : bit  absolute TXSTA.4;
  TXSTA_BRGH        : bit  absolute TXSTA.3;
  TXSTA_TRMT        : bit  absolute TXSTA.2;
  TXSTA_TX9D        : bit  absolute TXSTA.1;
  SPBRG             : byte absolute $0099;
  ADCON2            : byte absolute $009b;
  ADCON2_ACQT2      : bit  absolute ADCON2.5;
  ADCON2_ACQT1      : bit  absolute ADCON2.4;
  ADCON2_ACQT0      : bit  absolute ADCON2.3;
  CMCON             : byte absolute $009c;
  CMCON_C2OUT       : bit  absolute CMCON.7;
  CMCON_C1OUT       : bit  absolute CMCON.6;
  CMCON_C2INV       : bit  absolute CMCON.5;
  CMCON_C1INV       : bit  absolute CMCON.4;
  CMCON_CIS         : bit  absolute CMCON.3;
  CMCON_CM2         : bit  absolute CMCON.2;
  CMCON_CM1         : bit  absolute CMCON.1;
  CMCON_CM0         : bit  absolute CMCON.0;
  CVRCON            : byte absolute $009d;
  CVRCON_CVREN      : bit  absolute CVRCON.7;
  CVRCON_CVROE      : bit  absolute CVRCON.6;
  CVRCON_CVRR       : bit  absolute CVRCON.5;
  CVRCON_CVR3       : bit  absolute CVRCON.3;
  CVRCON_CVR2       : bit  absolute CVRCON.2;
  CVRCON_CVR1       : bit  absolute CVRCON.1;
  CVRCON_CVR0       : bit  absolute CVRCON.0;
  ADRESL            : byte absolute $009e;
  ADCON1            : byte absolute $009f;
  ADCON1_ADFM       : bit  absolute ADCON1.7;
  ADCON1_ADCS2      : bit  absolute ADCON1.6;
  ADCON1_VCFG1      : bit  absolute ADCON1.5;
  ADCON1_VCFG0      : bit  absolute ADCON1.4;
  ADCON1_PCFG3      : bit  absolute ADCON1.3;
  ADCON1_PCFG2      : bit  absolute ADCON1.2;
  ADCON1_PCFG1      : bit  absolute ADCON1.1;
  ADCON1_PCFG0      : bit  absolute ADCON1.0;
  WDTCON            : byte absolute $0105;
  WDTCON_WDTPS3     : bit  absolute WDTCON.4;
  WDTCON_WDTPS2     : bit  absolute WDTCON.3;
  WDTCON_WDTPS1     : bit  absolute WDTCON.2;
  WDTCON_WDTPS0     : bit  absolute WDTCON.1;
  WDTCON_SWDTEN     : bit  absolute WDTCON.0;
  LVDCON            : byte absolute $0109;
  LVDCON_IRVST      : bit  absolute LVDCON.5;
  LVDCON_LVDEN      : bit  absolute LVDCON.4;
  LVDCON_LVDL3      : bit  absolute LVDCON.3;
  LVDCON_LVDL2      : bit  absolute LVDCON.2;
  LVDCON_LVDL1      : bit  absolute LVDCON.1;
  LVDCON_LVDL0      : bit  absolute LVDCON.0;
  PMDATA            : byte absolute $010c;
  PMADR             : byte absolute $010d;
  PMDATH            : byte absolute $010e;
  PMADRH            : byte absolute $010f;
  PMCON1            : byte absolute $018c;
  PMCON1_RD         : bit  absolute PMCON1.0;


  // -- Define RAM state values --

  {$SET_STATE_RAM '000-007:SFR'}  // INDF, TMR0, PCL, STATUS, FSR, PORTA, PORTB, PORTC
  {$SET_STATE_RAM '009-01F:SFR'}  // PORTE, PCLATH, INTCON, PIR1, PIR2, TMR1L, TMR1H, T1CON, TMR2, T2CON, SSPBUF, SSPCON, CCPR1L, CCPR1H, CCP1CON, RCSTA, TXREG, RCREG, CCPR2L, CCPR2H, CCP2CON, ADRESH, ADCON0
  {$SET_STATE_RAM '020-07F:GPR'} 
  {$SET_STATE_RAM '080-087:SFR'}  // INDF, OPTION_REG, PCL, STATUS, FSR, TRISA, TRISB, TRISC
  {$SET_STATE_RAM '08A-099:SFR'}  // PCLATH, INTCON, PIE1, PIE2, PCON, OSCCON, OSCTUNE, SSPCON2, PR2, SSPADD, SSPSTAT, CCPR3L, CCPR3H, CCP3CON, TXSTA, SPBRG
  {$SET_STATE_RAM '09B-09F:SFR'}  // ADCON2, CMCON, CVRCON, ADRESL, ADCON1
  {$SET_STATE_RAM '0A0-0FF:GPR'} 
  {$SET_STATE_RAM '100-106:SFR'}  // INDF, TMR0, PCL, STATUS, FSR, WDTCON, PORTB
  {$SET_STATE_RAM '109-10F:SFR'}  // LVDCON, PCLATH, INTCON, PMDATA, PMADR, PMDATH, PMADRH
  {$SET_STATE_RAM '110-17F:GPR'} 
  {$SET_STATE_RAM '180-184:SFR'}  // INDF, OPTION_REG, PCL, STATUS, FSR
  {$SET_STATE_RAM '186-186:SFR'}  // TRISB
  {$SET_STATE_RAM '18A-18C:SFR'}  // PCLATH, INTCON, PMCON1
  {$SET_STATE_RAM '190-1FF:GPR'} 


  // -- Define mirrored registers --

  {$SET_MAPPED_RAM '080-080:bnk0'} // INDF
  {$SET_MAPPED_RAM '082-084:bnk0'} // PCL, STATUS, FSR
  {$SET_MAPPED_RAM '08A-08B:bnk0'} // PCLATH, INTCON
  {$SET_MAPPED_RAM '100-104:bnk0'} // INDF, TMR0, PCL, STATUS, FSR
  {$SET_MAPPED_RAM '106-106:bnk0'} // PORTB
  {$SET_MAPPED_RAM '10A-10B:bnk0'} // PCLATH, INTCON
  {$SET_MAPPED_RAM '180-180:bnk0'} // INDF
  {$SET_MAPPED_RAM '181-181:bnk1'} // OPTION_REG
  {$SET_MAPPED_RAM '182-184:bnk0'} // PCL, STATUS, FSR
  {$SET_MAPPED_RAM '186-186:bnk1'} // TRISB
  {$SET_MAPPED_RAM '18A-18B:bnk0'} // PCLATH, INTCON


  // -- Initial values --

  {$SET_UNIMP_BITS '000:00'} // INDF
  {$SET_UNIMP_BITS '009:08'} // PORTE
  {$SET_UNIMP_BITS '00A:1F'} // PCLATH
  {$SET_UNIMP_BITS '00C:7F'} // PIR1
  {$SET_UNIMP_BITS '00D:EB'} // PIR2
  {$SET_UNIMP_BITS '010:7F'} // T1CON
  {$SET_UNIMP_BITS '012:7F'} // T2CON
  {$SET_UNIMP_BITS '017:3F'} // CCP1CON
  {$SET_UNIMP_BITS '01D:3F'} // CCP2CON
  {$SET_UNIMP_BITS '08C:7F'} // PIE1
  {$SET_UNIMP_BITS '08D:EB'} // PIE2
  {$SET_UNIMP_BITS '08E:07'} // PCON
  {$SET_UNIMP_BITS '08F:7F'} // OSCCON
  {$SET_UNIMP_BITS '090:3F'} // OSCTUNE
  {$SET_UNIMP_BITS '097:3F'} // CCP3CON
  {$SET_UNIMP_BITS '098:F7'} // TXSTA
  {$SET_UNIMP_BITS '09B:38'} // ADCON2
  {$SET_UNIMP_BITS '09D:EF'} // CVRCON
  {$SET_UNIMP_BITS '105:1F'} // WDTCON
  {$SET_UNIMP_BITS '109:3F'} // LVDCON
  {$SET_UNIMP_BITS '10E:3F'} // PMDATH
  {$SET_UNIMP_BITS '10F:1F'} // PMADRH
  {$SET_UNIMP_BITS '18C:01'} // PMCON1


  // -- PIN mapping --

  // Pin  1 : MCLR/Vpp/RE3
  // Pin  2 : RA0/AN0
  // Pin  3 : RA1/AN1
  // Pin  4 : RA2/AN2/Vref-/CVref
  // Pin  5 : RA3/AN3/Vref+
  // Pin  6 : RA4/T0CKI/C1OUT
  // Pin  7 : RA5/AN4/LVDIN/SS/C2OUT
  // Pin  8 : Vss
  // Pin  9 : OSC1/CLKI/RA7
  // Pin 10 : OSC2/CLKO/RA6
  // Pin 11 : RC0/T1OSO/T1CKI
  // Pin 12 : RC1/T1OSI/CCP2
  // Pin 13 : RC2/CCP1
  // Pin 14 : RC3/SCK/SCL
  // Pin 15 : RC4/SDI/SDA
  // Pin 16 : RC5/SDO
  // Pin 17 : RC6/TX/CK
  // Pin 18 : RC7/RX/DT
  // Pin 19 : Vss
  // Pin 20 : Vdd
  // Pin 21 : RB0/INT/AN12
  // Pin 22 : RB1/AN10
  // Pin 23 : RB2/AN8
  // Pin 24 : RB3/CCP2/AN9
  // Pin 25 : RB4/AN11
  // Pin 26 : RB5/AN13/CCP3
  // Pin 27 : RB6/PGC
  // Pin 28 : RB7/PGD


  // -- RAM to PIN mapping --

  {$MAP_RAM_TO_PIN '005:0-2,1-3,2-4,3-5,4-6,5-7,6-10,7-9'} // PORTA
  {$MAP_RAM_TO_PIN '006:0-21,1-22,2-23,3-24,4-25,5-26,6-27,7-28'} // PORTB
  {$MAP_RAM_TO_PIN '007:0-11,1-12,2-13,3-14,4-15,5-16,6-17,7-18'} // PORTC
  {$MAP_RAM_TO_PIN '009:3-1'} // PORTE


  // -- Bits Configuration --

  // CP : Flash Program Memory Code Protection bits
  {$define _CP_OFF         = $39FF}  // Code protection off
  {$define _CP_ON          = $39FE}  // 0000h to 0FFFh code-protected

  // CCP2MX : CCP2 Multiplex bit
  {$define _CCP2MX_RC1     = $39FF}  // CCP2 is on RC1
  {$define _CCP2MX_RB3     = $39FD}  // CCP2 is on RB3

  // DEBUG : In-Circuit Debugger Mode bit
  {$define _DEBUG_OFF      = $39FF}  // In-Circuit Debugger disabled, RB6 and RB7 are general purpose I/O pins
  {$define _DEBUG_ON       = $39FB}  // In-Circuit Debugger enabled, RB6 and RB7 are dedicated to the debugger

  // BORV : Brown-out Reset Voltage bits
  {$define _BORV_20        = $39FF}  // VBOR set to 2.0V
  {$define _BORV_27        = $39F7}  // VBOR set to 2.7V
  {$define _BORV_42        = $39EF}  // VBOR set to 4.2V
  {$define _BORV_45        = $39E7}  // VBOR set to 4.5V

  // BOREN : Brown-out Reset Enable bit
  {$define _BOREN_ON       = $39FF}  // Enabled
  {$define _BOREN_OFF      = $39DF}  // Disabled

  // MCLRE : MCLR/VPP/RE3 Pin Function Select bit
  {$define _MCLRE_ON       = $39FF}  // MCLR/VPP/RE3 pin function is MCLR
  {$define _MCLRE_OFF      = $39BF}  // MCLR/VPP/RE3 pin function is digital input only, MCLR gated to '1'

  // PWRTE : Power-up Timer Enable bit
  {$define _PWRTE_OFF      = $39FF}  // PWRT disabled
  {$define _PWRTE_ON       = $397F}  // PWRT enabled

  // WDTE : Watchdog Timer Enable bit
  {$define _WDTE_ON        = $39FF}  // WDT enabled
  {$define _WDTE_OFF       = $38FF}  // WDT disabled

  // FOSC : Oscillator Selection bits
  {$define _FOSC_EXTRCCLK  = $27FF}  // EXTRC oscillator; CLKO function on OSC2/CLKO/RA6
  {$define _FOSC_EXTRCIO   = $25FF}  // EXTRC oscillator; port I/O function on OSC2/CLKO/RA6
  {$define _FOSC_INTOSCCLK = $23FF}  // INTRC oscillator; CLKO function on OSC2/CLKO/RA6 and port I/O function on OSC1/CLKI/RA7
  {$define _FOSC_INTOSCIO  = $21FF}  // INTRC oscillator; port I/O function on OSC1/CLKI/RA7 and OSC2/CLKO/RA6
  {$define _FOSC_EC        = $07FF}  // EXTCLK; port I/O function on OSC2/CLKO/RA6
  {$define _FOSC_HS        = $05FF}  // HS oscillator
  {$define _FOSC_XT        = $03FF}  // XT oscillator
  {$define _FOSC_LP        = $01FF}  // LP oscillator

  // BORSEN : Brown-out Reset Software Enable bit
  {$define _BORSEN_ON      = $0043}  // Enabled
  {$define _BORSEN_OFF     = $0042}  // Disabled

  // IESO : Internal External Switchover bit
  {$define _IESO_ON        = $0043}  // Internal External Switchover mode enabled
  {$define _IESO_OFF       = $0041}  // Internal External Switchover mode disabled

  // FCMEN : Fail-Safe Clock Monitor Enable bit
  {$define _FCMEN_ON       = $0047}  // Fail-Safe Clock Monitor enabled
  {$define _FCMEN_OFF      = $0043}  // Fail-Safe Clock Monitor disabled

implementation
end.
