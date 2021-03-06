unit PIC16F724;

// Define hardware
{$SET PIC_MODEL    = 'PIC16F724'}
{$SET PIC_MAXFREQ  = 20000000}
{$SET PIC_NPINS    = 40}
{$SET PIC_NUMBANKS = 4}
{$SET PIC_NUMPAGES = 2}
{$SET PIC_MAXFLASH = 4096}

interface
var
  INDF               : byte absolute $0000;
  TMR0               : byte absolute $0001;
  PCL                : byte absolute $0002;
  STATUS             : byte absolute $0003;
  STATUS_IRP         : bit  absolute STATUS.7;
  STATUS_RP1         : bit  absolute STATUS.6;
  STATUS_RP0         : bit  absolute STATUS.5;
  STATUS_TO          : bit  absolute STATUS.4;
  STATUS_PD          : bit  absolute STATUS.3;
  STATUS_Z           : bit  absolute STATUS.2;
  STATUS_DC          : bit  absolute STATUS.1;
  STATUS_C           : bit  absolute STATUS.0;
  FSR                : byte absolute $0004;
  PORTA              : byte absolute $0005;
  PORTA_RA7          : bit  absolute PORTA.7;
  PORTA_RA6          : bit  absolute PORTA.6;
  PORTA_RA5          : bit  absolute PORTA.5;
  PORTA_RA4          : bit  absolute PORTA.4;
  PORTA_RA3          : bit  absolute PORTA.3;
  PORTA_RA2          : bit  absolute PORTA.2;
  PORTA_RA1          : bit  absolute PORTA.1;
  PORTA_RA0          : bit  absolute PORTA.0;
  PORTB              : byte absolute $0006;
  PORTB_RB7          : bit  absolute PORTB.7;
  PORTB_RB6          : bit  absolute PORTB.6;
  PORTB_RB5          : bit  absolute PORTB.5;
  PORTB_RB4          : bit  absolute PORTB.4;
  PORTB_RB3          : bit  absolute PORTB.3;
  PORTB_RB2          : bit  absolute PORTB.2;
  PORTB_RB1          : bit  absolute PORTB.1;
  PORTB_RB0          : bit  absolute PORTB.0;
  PORTC              : byte absolute $0007;
  PORTC_RC7          : bit  absolute PORTC.7;
  PORTC_RC6          : bit  absolute PORTC.6;
  PORTC_RC5          : bit  absolute PORTC.5;
  PORTC_RC4          : bit  absolute PORTC.4;
  PORTC_RC3          : bit  absolute PORTC.3;
  PORTC_RC2          : bit  absolute PORTC.2;
  PORTC_RC1          : bit  absolute PORTC.1;
  PORTC_RC0          : bit  absolute PORTC.0;
  PORTD              : byte absolute $0008;
  PORTD_RD7          : bit  absolute PORTD.7;
  PORTD_RD6          : bit  absolute PORTD.6;
  PORTD_RD5          : bit  absolute PORTD.5;
  PORTD_RD4          : bit  absolute PORTD.4;
  PORTD_RD3          : bit  absolute PORTD.3;
  PORTD_RD2          : bit  absolute PORTD.2;
  PORTD_RD1          : bit  absolute PORTD.1;
  PORTD_RD0          : bit  absolute PORTD.0;
  PORTE              : byte absolute $0009;
  PORTE_RE3          : bit  absolute PORTE.3;
  PORTE_RE2          : bit  absolute PORTE.2;
  PORTE_RE1          : bit  absolute PORTE.1;
  PORTE_RE0          : bit  absolute PORTE.0;
  PCLATH             : byte absolute $000a;
  INTCON             : byte absolute $000b;
  INTCON_GIE         : bit  absolute INTCON.7;
  INTCON_PEIE        : bit  absolute INTCON.6;
  INTCON_T0IE        : bit  absolute INTCON.5;
  INTCON_INTE        : bit  absolute INTCON.4;
  INTCON_RBIE        : bit  absolute INTCON.3;
  INTCON_T0IF        : bit  absolute INTCON.2;
  INTCON_INTF        : bit  absolute INTCON.1;
  INTCON_RBIF        : bit  absolute INTCON.0;
  PIR1               : byte absolute $000c;
  PIR1_TMR1GIF       : bit  absolute PIR1.7;
  PIR1_ADIF          : bit  absolute PIR1.6;
  PIR1_RCIF          : bit  absolute PIR1.5;
  PIR1_TXIF          : bit  absolute PIR1.4;
  PIR1_SSPIF         : bit  absolute PIR1.3;
  PIR1_CCP1IF        : bit  absolute PIR1.2;
  PIR1_TMR2IF        : bit  absolute PIR1.1;
  PIR1_TMR1IF        : bit  absolute PIR1.0;
  PIR2               : byte absolute $000d;
  PIR2_CCP2IF        : bit  absolute PIR2.0;
  TMR1L              : byte absolute $000e;
  TMR1H              : byte absolute $000f;
  T1CON              : byte absolute $0010;
  T1CON_TMR1CS1      : bit  absolute T1CON.6;
  T1CON_TMR1CS0      : bit  absolute T1CON.5;
  T1CON_T1CKPS1      : bit  absolute T1CON.4;
  T1CON_T1OSCEN      : bit  absolute T1CON.3;
  T1CON_T1SYNC       : bit  absolute T1CON.2;
  T1CON_TMR1ON       : bit  absolute T1CON.1;
  TMR2               : byte absolute $0011;
  T2CON              : byte absolute $0012;
  T2CON_TOUTPS3      : bit  absolute T2CON.6;
  T2CON_TOUTPS2      : bit  absolute T2CON.5;
  T2CON_TOUTPS1      : bit  absolute T2CON.4;
  T2CON_TOUTPS0      : bit  absolute T2CON.3;
  T2CON_TMR2ON       : bit  absolute T2CON.2;
  T2CON_T2CKPS0      : bit  absolute T2CON.1;
  SSPBUF             : byte absolute $0013;
  SSPCON             : byte absolute $0014;
  SSPCON_WCOL        : bit  absolute SSPCON.7;
  SSPCON_SSPOV       : bit  absolute SSPCON.6;
  SSPCON_SSPEN       : bit  absolute SSPCON.5;
  SSPCON_CKP         : bit  absolute SSPCON.4;
  SSPCON_SSPM3       : bit  absolute SSPCON.3;
  SSPCON_SSPM2       : bit  absolute SSPCON.2;
  SSPCON_SSPM1       : bit  absolute SSPCON.1;
  SSPCON_SSPM0       : bit  absolute SSPCON.0;
  CCPR1L             : byte absolute $0015;
  CCPR1H             : byte absolute $0016;
  CCP1CON            : byte absolute $0017;
  CCP1CON_DC1B1      : bit  absolute CCP1CON.5;
  CCP1CON_DC1B0      : bit  absolute CCP1CON.4;
  CCP1CON_CCP1M3     : bit  absolute CCP1CON.3;
  CCP1CON_CCP1M2     : bit  absolute CCP1CON.2;
  CCP1CON_CCP1M1     : bit  absolute CCP1CON.1;
  CCP1CON_CCP1M0     : bit  absolute CCP1CON.0;
  RCSTA              : byte absolute $0018;
  RCSTA_SPEN         : bit  absolute RCSTA.7;
  RCSTA_RX9          : bit  absolute RCSTA.6;
  RCSTA_SREN         : bit  absolute RCSTA.5;
  RCSTA_CREN         : bit  absolute RCSTA.4;
  RCSTA_ADDEN        : bit  absolute RCSTA.3;
  RCSTA_FERR         : bit  absolute RCSTA.2;
  RCSTA_OERR         : bit  absolute RCSTA.1;
  RCSTA_RX9D         : bit  absolute RCSTA.0;
  TXREG              : byte absolute $0019;
  RCREG              : byte absolute $001a;
  CCPR2L             : byte absolute $001b;
  CCPR2H             : byte absolute $001c;
  CCP2CON            : byte absolute $001d;
  CCP2CON_DC2B1      : bit  absolute CCP2CON.5;
  CCP2CON_DC2B0      : bit  absolute CCP2CON.4;
  CCP2CON_CCP2M3     : bit  absolute CCP2CON.3;
  CCP2CON_CCP2M2     : bit  absolute CCP2CON.2;
  CCP2CON_CCP2M1     : bit  absolute CCP2CON.1;
  CCP2CON_CCP2M0     : bit  absolute CCP2CON.0;
  ADRES              : byte absolute $001e;
  ADCON0             : byte absolute $001f;
  ADCON0_CHS3        : bit  absolute ADCON0.5;
  ADCON0_CHS2        : bit  absolute ADCON0.4;
  ADCON0_CHS1        : bit  absolute ADCON0.3;
  ADCON0_CHS0        : bit  absolute ADCON0.2;
  ADCON0_GO_nDONE    : bit  absolute ADCON0.1;
  ADCON0_ADON        : bit  absolute ADCON0.0;
  OPTION_REG         : byte absolute $0081;
  OPTION_REG_RBPU    : bit  absolute OPTION_REG.7;
  OPTION_REG_INTEDG  : bit  absolute OPTION_REG.6;
  OPTION_REG_T0CS    : bit  absolute OPTION_REG.5;
  OPTION_REG_T0SE    : bit  absolute OPTION_REG.4;
  OPTION_REG_PSA     : bit  absolute OPTION_REG.3;
  OPTION_REG_PS2     : bit  absolute OPTION_REG.2;
  OPTION_REG_PS1     : bit  absolute OPTION_REG.1;
  OPTION_REG_PS0     : bit  absolute OPTION_REG.0;
  TRISA              : byte absolute $0085;
  TRISA_TRISA7       : bit  absolute TRISA.7;
  TRISA_TRISA6       : bit  absolute TRISA.6;
  TRISA_TRISA5       : bit  absolute TRISA.5;
  TRISA_TRISA4       : bit  absolute TRISA.4;
  TRISA_TRISA3       : bit  absolute TRISA.3;
  TRISA_TRISA2       : bit  absolute TRISA.2;
  TRISA_TRISA1       : bit  absolute TRISA.1;
  TRISA_TRISA0       : bit  absolute TRISA.0;
  TRISB              : byte absolute $0086;
  TRISB_TRISB7       : bit  absolute TRISB.7;
  TRISB_TRISB6       : bit  absolute TRISB.6;
  TRISB_TRISB5       : bit  absolute TRISB.5;
  TRISB_TRISB4       : bit  absolute TRISB.4;
  TRISB_TRISB3       : bit  absolute TRISB.3;
  TRISB_TRISB2       : bit  absolute TRISB.2;
  TRISB_TRISB1       : bit  absolute TRISB.1;
  TRISB_TRISB0       : bit  absolute TRISB.0;
  TRISC              : byte absolute $0087;
  TRISC_TRISC7       : bit  absolute TRISC.7;
  TRISC_TRISC6       : bit  absolute TRISC.6;
  TRISC_TRISC5       : bit  absolute TRISC.5;
  TRISC_TRISC4       : bit  absolute TRISC.4;
  TRISC_TRISC3       : bit  absolute TRISC.3;
  TRISC_TRISC2       : bit  absolute TRISC.2;
  TRISC_TRISC1       : bit  absolute TRISC.1;
  TRISC_TRISC0       : bit  absolute TRISC.0;
  TRISD              : byte absolute $0088;
  TRISD_TRISD7       : bit  absolute TRISD.7;
  TRISD_TRISD6       : bit  absolute TRISD.6;
  TRISD_TRISD5       : bit  absolute TRISD.5;
  TRISD_TRISD4       : bit  absolute TRISD.4;
  TRISD_TRISD3       : bit  absolute TRISD.3;
  TRISD_TRISD2       : bit  absolute TRISD.2;
  TRISD_TRISD1       : bit  absolute TRISD.1;
  TRISD_TRISD0       : bit  absolute TRISD.0;
  TRISE              : byte absolute $0089;
  TRISE_TRISE3       : bit  absolute TRISE.3;
  TRISE_TRISE2       : bit  absolute TRISE.2;
  TRISE_TRISE1       : bit  absolute TRISE.1;
  TRISE_TRISE0       : bit  absolute TRISE.0;
  PIE1               : byte absolute $008c;
  PIE1_TMR1GIE       : bit  absolute PIE1.7;
  PIE1_ADIE          : bit  absolute PIE1.6;
  PIE1_RCIE          : bit  absolute PIE1.5;
  PIE1_TXIE          : bit  absolute PIE1.4;
  PIE1_SSPIE         : bit  absolute PIE1.3;
  PIE1_CCP1IE        : bit  absolute PIE1.2;
  PIE1_TMR2IE        : bit  absolute PIE1.1;
  PIE1_TMR1IE        : bit  absolute PIE1.0;
  PIE2               : byte absolute $008d;
  PIE2_CCP2IE        : bit  absolute PIE2.0;
  PCON               : byte absolute $008e;
  PCON_POR           : bit  absolute PCON.1;
  PCON_BOR           : bit  absolute PCON.0;
  T1GCON             : byte absolute $008f;
  T1GCON_TMR1GE      : bit  absolute T1GCON.7;
  T1GCON_T1GPOL      : bit  absolute T1GCON.6;
  T1GCON_T1GTM       : bit  absolute T1GCON.5;
  T1GCON_T1GSPM      : bit  absolute T1GCON.4;
  T1GCON_T1GGO_nDONE : bit  absolute T1GCON.3;
  T1GCON_T1GVAL      : bit  absolute T1GCON.2;
  T1GCON_T1GSS0      : bit  absolute T1GCON.1;
  OSCCON             : byte absolute $0090;
  OSCCON_IRCF1       : bit  absolute OSCCON.5;
  OSCCON_IRCF0       : bit  absolute OSCCON.4;
  OSCCON_ICSL        : bit  absolute OSCCON.3;
  OSCCON_ICSS        : bit  absolute OSCCON.2;
  OSCTUNE            : byte absolute $0091;
  OSCTUNE_TUN5       : bit  absolute OSCTUNE.5;
  OSCTUNE_TUN4       : bit  absolute OSCTUNE.4;
  OSCTUNE_TUN3       : bit  absolute OSCTUNE.3;
  OSCTUNE_TUN2       : bit  absolute OSCTUNE.2;
  OSCTUNE_TUN1       : bit  absolute OSCTUNE.1;
  OSCTUNE_TUN0       : bit  absolute OSCTUNE.0;
  PR2                : byte absolute $0092;
  SSPADD             : byte absolute $0093;
  SSPMSK             : byte absolute $0093;
  SSPSTAT            : byte absolute $0094;
  SSPSTAT_SMP        : bit  absolute SSPSTAT.7;
  SSPSTAT_CKE        : bit  absolute SSPSTAT.6;
  SSPSTAT_D_nA       : bit  absolute SSPSTAT.5;
  SSPSTAT_P          : bit  absolute SSPSTAT.4;
  SSPSTAT_S          : bit  absolute SSPSTAT.3;
  SSPSTAT_R_nW       : bit  absolute SSPSTAT.2;
  SSPSTAT_UA         : bit  absolute SSPSTAT.1;
  SSPSTAT_BF         : bit  absolute SSPSTAT.0;
  WPUB               : byte absolute $0095;
  WPUB_WPUB7         : bit  absolute WPUB.7;
  WPUB_WPUB6         : bit  absolute WPUB.6;
  WPUB_WPUB5         : bit  absolute WPUB.5;
  WPUB_WPUB4         : bit  absolute WPUB.4;
  WPUB_WPUB3         : bit  absolute WPUB.3;
  WPUB_WPUB2         : bit  absolute WPUB.2;
  WPUB_WPUB1         : bit  absolute WPUB.1;
  WPUB_WPUB0         : bit  absolute WPUB.0;
  IOCB               : byte absolute $0096;
  IOCB_IOCB7         : bit  absolute IOCB.7;
  IOCB_IOCB6         : bit  absolute IOCB.6;
  IOCB_IOCB5         : bit  absolute IOCB.5;
  IOCB_IOCB4         : bit  absolute IOCB.4;
  IOCB_IOCB3         : bit  absolute IOCB.3;
  IOCB_IOCB2         : bit  absolute IOCB.2;
  IOCB_IOCB1         : bit  absolute IOCB.1;
  IOCB_IOCB0         : bit  absolute IOCB.0;
  TXSTA              : byte absolute $0098;
  TXSTA_CSRC         : bit  absolute TXSTA.7;
  TXSTA_TX9          : bit  absolute TXSTA.6;
  TXSTA_TXEN         : bit  absolute TXSTA.5;
  TXSTA_SYNC         : bit  absolute TXSTA.4;
  TXSTA_BRGH         : bit  absolute TXSTA.3;
  TXSTA_TRMT         : bit  absolute TXSTA.2;
  TXSTA_TX9D         : bit  absolute TXSTA.1;
  SPBRG              : byte absolute $0099;
  APFCON             : byte absolute $009c;
  APFCON_SSSEL       : bit  absolute APFCON.1;
  APFCON_CCP2SEL     : bit  absolute APFCON.0;
  FVRCON             : byte absolute $009d;
  FVRCON_FVRRDY      : bit  absolute FVRCON.5;
  FVRCON_FVREN       : bit  absolute FVRCON.4;
  FVRCON_ADFVR1      : bit  absolute FVRCON.3;
  FVRCON_ADFVR0      : bit  absolute FVRCON.2;
  ADCON1             : byte absolute $009f;
  ADCON1_ADCS2       : bit  absolute ADCON1.6;
  ADCON1_ADCS1       : bit  absolute ADCON1.5;
  ADCON1_ADCS0       : bit  absolute ADCON1.4;
  ADCON1_ADREF1      : bit  absolute ADCON1.3;
  ADCON1_ADREF0      : bit  absolute ADCON1.2;
  CPSCON0            : byte absolute $0108;
  CPSCON0_CPSON      : bit  absolute CPSCON0.7;
  CPSCON0_CPSOUT     : bit  absolute CPSCON0.4;
  CPSCON0_T0XCS      : bit  absolute CPSCON0.3;
  CPSCON0_CPSRNG0    : bit  absolute CPSCON0.2;
  CPSCON1            : byte absolute $0109;
  CPSCON1_CPSCH3     : bit  absolute CPSCON1.3;
  CPSCON1_CPSCH2     : bit  absolute CPSCON1.2;
  CPSCON1_CPSCH1     : bit  absolute CPSCON1.1;
  CPSCON1_CPSCH0     : bit  absolute CPSCON1.0;
  PMDATL             : byte absolute $010c;
  PMADRL             : byte absolute $010d;
  PMDATH             : byte absolute $010e;
  PMADRH             : byte absolute $010f;
  ANSELA             : byte absolute $0185;
  ANSELA_ANSA5       : bit  absolute ANSELA.5;
  ANSELA_ANSA4       : bit  absolute ANSELA.4;
  ANSELA_ANSA3       : bit  absolute ANSELA.3;
  ANSELA_ANSA2       : bit  absolute ANSELA.2;
  ANSELA_ANSA1       : bit  absolute ANSELA.1;
  ANSELA_ANSA0       : bit  absolute ANSELA.0;
  ANSELB             : byte absolute $0186;
  ANSELB_ANSB5       : bit  absolute ANSELB.5;
  ANSELB_ANSB4       : bit  absolute ANSELB.4;
  ANSELB_ANSB3       : bit  absolute ANSELB.3;
  ANSELB_ANSB2       : bit  absolute ANSELB.2;
  ANSELB_ANSB1       : bit  absolute ANSELB.1;
  ANSELB_ANSB0       : bit  absolute ANSELB.0;
  ANSELD             : byte absolute $0188;
  ANSELD_ANSD7       : bit  absolute ANSELD.7;
  ANSELD_ANSD6       : bit  absolute ANSELD.6;
  ANSELD_ANSD5       : bit  absolute ANSELD.5;
  ANSELD_ANSD4       : bit  absolute ANSELD.4;
  ANSELD_ANSD3       : bit  absolute ANSELD.3;
  ANSELD_ANSD2       : bit  absolute ANSELD.2;
  ANSELD_ANSD1       : bit  absolute ANSELD.1;
  ANSELD_ANSD0       : bit  absolute ANSELD.0;
  ANSELE             : byte absolute $0189;
  ANSELE_ANSE2       : bit  absolute ANSELE.2;
  ANSELE_ANSE1       : bit  absolute ANSELE.1;
  ANSELE_ANSE0       : bit  absolute ANSELE.0;
  PMCON1             : byte absolute $018c;
  PMCON1_RD          : bit  absolute PMCON1.0;


  // -- Define RAM state values --

  {$SET_STATE_RAM '000-01F:SFR'}  // INDF, TMR0, PCL, STATUS, FSR, PORTA, PORTB, PORTC, PORTD, PORTE, PCLATH, INTCON, PIR1, PIR2, TMR1L, TMR1H, T1CON, TMR2, T2CON, SSPBUF, SSPCON, CCPR1L, CCPR1H, CCP1CON, RCSTA, TXREG, RCREG, CCPR2L, CCPR2H, CCP2CON, ADRES, ADCON0
  {$SET_STATE_RAM '020-07F:GPR'} 
  {$SET_STATE_RAM '080-096:SFR'}  // INDF, OPTION_REG, PCL, STATUS, FSR, TRISA, TRISB, TRISC, TRISD, TRISE, PCLATH, INTCON, PIE1, PIE2, PCON, T1GCON, OSCCON, OSCTUNE, PR2, SSPMSK, SSPSTAT, WPUB, IOCB
  {$SET_STATE_RAM '098-099:SFR'}  // TXSTA, SPBRG
  {$SET_STATE_RAM '09C-09D:SFR'}  // APFCON, FVRCON
  {$SET_STATE_RAM '09F-09F:SFR'}  // ADCON1
  {$SET_STATE_RAM '0A0-0FF:GPR'} 
  {$SET_STATE_RAM '100-104:SFR'}  // INDF, TMR0, PCL, STATUS, FSR
  {$SET_STATE_RAM '108-10F:SFR'}  // CPSCON0, CPSCON1, PCLATH, INTCON, PMDATL, PMADRL, PMDATH, PMADRH
  {$SET_STATE_RAM '120-12F:GPR'} 
  {$SET_STATE_RAM '170-17F:GPR'} 
  {$SET_STATE_RAM '180-186:SFR'}  // INDF, OPTION_REG, PCL, STATUS, FSR, ANSELA, ANSELB
  {$SET_STATE_RAM '188-18C:SFR'}  // ANSELD, ANSELE, PCLATH, INTCON, PMCON1
  {$SET_STATE_RAM '1F0-1FF:GPR'} 


  // -- Define mirrored registers --

  {$SET_MAPPED_RAM '080-080:bnk0'} // INDF
  {$SET_MAPPED_RAM '082-084:bnk0'} // PCL, STATUS, FSR
  {$SET_MAPPED_RAM '08A-08B:bnk0'} // PCLATH, INTCON
  {$SET_MAPPED_RAM '100-104:bnk0'} // INDF, TMR0, PCL, STATUS, FSR
  {$SET_MAPPED_RAM '10A-10B:bnk0'} // PCLATH, INTCON
  {$SET_MAPPED_RAM '180-180:bnk0'} // INDF
  {$SET_MAPPED_RAM '181-181:bnk1'} // OPTION_REG
  {$SET_MAPPED_RAM '182-184:bnk0'} // PCL, STATUS, FSR
  {$SET_MAPPED_RAM '18A-18B:bnk0'} // PCLATH, INTCON


  // -- Initial values --

  {$SET_UNIMP_BITS '000:00'} // INDF
  {$SET_UNIMP_BITS '009:0F'} // PORTE
  {$SET_UNIMP_BITS '00A:1F'} // PCLATH
  {$SET_UNIMP_BITS '00D:01'} // PIR2
  {$SET_UNIMP_BITS '010:FD'} // T1CON
  {$SET_UNIMP_BITS '012:7F'} // T2CON
  {$SET_UNIMP_BITS '01D:3F'} // CCP2CON
  {$SET_UNIMP_BITS '01F:3F'} // ADCON0
  {$SET_UNIMP_BITS '089:0F'} // TRISE
  {$SET_UNIMP_BITS '08D:01'} // PIE2
  {$SET_UNIMP_BITS '08E:03'} // PCON
  {$SET_UNIMP_BITS '090:3C'} // OSCCON
  {$SET_UNIMP_BITS '091:3F'} // OSCTUNE
  {$SET_UNIMP_BITS '098:F7'} // TXSTA
  {$SET_UNIMP_BITS '09C:03'} // APFCON
  {$SET_UNIMP_BITS '09D:F3'} // FVRCON
  {$SET_UNIMP_BITS '09F:73'} // ADCON1
  {$SET_UNIMP_BITS '108:00'} // CPSCON0
  {$SET_UNIMP_BITS '109:00'} // CPSCON1
  {$SET_UNIMP_BITS '10E:3F'} // PMDATH
  {$SET_UNIMP_BITS '10F:1F'} // PMADRH
  {$SET_UNIMP_BITS '185:3F'} // ANSELA
  {$SET_UNIMP_BITS '186:3F'} // ANSELB
  {$SET_UNIMP_BITS '189:07'} // ANSELE
  {$SET_UNIMP_BITS '18C:01'} // PMCON1


  // -- PIN mapping --

  // Pin  1 : RE3/MCLR/Vpp
  // Pin  2 : RA0/AN0/nSS/Vcap
  // Pin  3 : RA1/AN1
  // Pin  4 : RA2/AN2
  // Pin  5 : RA3/AN3/Vref
  // Pin  6 : RA4/CPS6/T0CKI
  // Pin  7 : RA5/AN4/CPS7/nSS/Vcap
  // Pin  8 : RE0/AN5
  // Pin  9 : RE1/AN6
  // Pin 10 : RE2/AN7
  // Pin 11 : Vdd
  // Pin 12 : Vss
  // Pin 13 : RA7/OSC1/CLKIN
  // Pin 14 : RA6/OSC2/CLKOUT/Vcap
  // Pin 15 : RC0/T1OSO/T1CKI
  // Pin 16 : RC1/T1OSI/CCP2
  // Pin 17 : RC2/CCP1
  // Pin 18 : RC3/SCK/SCL
  // Pin 19 : RD0/CPS8
  // Pin 20 : RD1/CPS9
  // Pin 21 : RD2/CPS10
  // Pin 22 : RD3/CPS11
  // Pin 23 : RC4/SDI/SDA
  // Pin 24 : RC5/SDO
  // Pin 25 : RC6/TX/CK
  // Pin 26 : RC7/RX/DT
  // Pin 27 : RD4/CPS12
  // Pin 28 : RD5/CPS13
  // Pin 29 : RD6/CPS14
  // Pin 30 : RD7/CPS15
  // Pin 31 : Vss
  // Pin 32 : Vdd
  // Pin 33 : RB0/AN12/CPS0/INT
  // Pin 34 : RB1/AN10/CPS1
  // Pin 35 : RB2/AN8/CPS2
  // Pin 36 : RB3/AN9/CPS3/CCP2
  // Pin 37 : RB4/AN11/CPS4
  // Pin 38 : RB5/AN13/CPS5/T1G
  // Pin 39 : RB6/ICSPCLK
  // Pin 40 : RB7/ICSPDAT


  // -- RAM to PIN mapping --

  {$MAP_RAM_TO_PIN '005:0-2,1-3,2-4,3-5,4-6,5-7,6-14,7-13'} // PORTA
  {$MAP_RAM_TO_PIN '006:0-33,1-34,2-35,3-36,4-37,5-38,6-39,7-40'} // PORTB
  {$MAP_RAM_TO_PIN '007:0-15,1-16,2-17,3-18,4-23,5-24,6-25,7-26'} // PORTC
  {$MAP_RAM_TO_PIN '008:0-19,1-20,2-21,3-22,4-27,5-28,6-29,7-30'} // PORTD
  {$MAP_RAM_TO_PIN '009:0-8,1-9,2-10,3-1'} // PORTE


  // -- Bits Configuration --

  // DEBUG : In-Circuit Debugger Mode bit
  {$define _DEBUG_OFF      = $3F7F}  // In-Circuit Debugger disabled, RB6/ICSPCLK and RB7/ICSPDAT are general purpose I/O pins
  {$define _DEBUG_ON       = $3F7E}  // In-Circuit Debugger enabled, RB6/ICSPCLK and RB7/ICSPDAT are dedicated to the debugger

  // PLLEN : INTOSC PLLEN Enable Bit
  {$define _PLLEN_ON       = $3F7F}  // INTOSC Frequency is 16MHz (32x)
  {$define _PLLEN_OFF      = $3F7D}  // INTOSC Frequency is 500 kHz

  // WDTCS : Watchdog Timer Clock Select
  {$define _WDTCS_         = $3F7F}  // Standard Watchdog Timer is selected
  {$define _WDTCS_         = $3F7B}  // Low Power Watchdog Timer is selected

  // BORV : Brown-out Reset Voltage selection bit
  {$define _BORV_19        = $3F7F}  // Brown-out Reset Voltage (VBOR) set to 1.9 V nominal
  {$define _BORV_25        = $3F77}  // Brown-out Reset Voltage (VBOR) set to 2.5 V nominal

  // BOREN : Brown-out Reset Selection bits
  {$define _BOREN_ON       = $3F7F}  // BOR enabled
  {$define _BOREN_NSLEEP   = $3F6F}  // BOR enabled during operation and disabled in Sleep
  {$define _BOREN_OFF      = $3F5F}  // BOR disabled
  {$define _BOREN_OFF      = $3F4F}  // BOR disabled

  // RES : Reserved
  {$define _RES_           = $3F7F}  // Reserved

  // CP : Code Protection bit
  {$define _CP_OFF         = $3FFF}  // Program memory code protection is disabled
  {$define _CP_ON          = $3F7F}  // Program memory code protection is enabled

  // MCLRE : RE3/MCLR pin function select bit
  {$define _MCLRE_OFF      = $3E7F}  // RE3/MCLR pin function is digital input, MCLR internally tied to VDD
  {$define _MCLRE_ON       = $3F7F}  // RE3/MCLR pin function is MCLR

  // PWRTE : Power-up Timer Enable bit
  {$define _PWRTE_OFF      = $3F7F}  // PWRT disabled
  {$define _PWRTE_ON       = $3D7F}  // PWRT enabled

  // WDTE : Watchdog Timer Enable bit
  {$define _WDTE_ON        = $3F7F}  // WDT enabled
  {$define _WDTE_OFF       = $3B7F}  // WDT disabled and can be enabled by SWDTEN bit of the WDTCON register

  // FOSC : Oscillator Selection bits
  {$define _FOSC_EXTRCCLK  = $3F7F}  // RC oscillator: CLKOUT function on RA6/OSC2/CLKOUT pin, RC on RA7/OSC1/CLKIN
  {$define _FOSC_EXTRCIO   = $377F}  // RCIO oscillator: I/O function on RA6/OSC2/CLKOUT pin, RC on RA7/OSC1/CLKIN
  {$define _FOSC_INTOSCCLK = $2F7F}  // INTOSC oscillator: CLKOUT function on RA6/OSC2/CLKOUT pin, I/O function on RA7/OSC1/CLKIN
  {$define _FOSC_INTOSCIO  = $277F}  // INTOSCIO oscillator: I/O function on RA6/OSC2/CLKOUT pin, I/O function on RA7/OSC1/CLKIN
  {$define _FOSC_EC        = $1F7F}  // EC: I/O function on RA6/OSC2/CLKOUT pin, CLKIN on RA7/OSC1/CLKIN
  {$define _FOSC_HS        = $177F}  // HS oscillator: High-speed crystal/resonator on RA6/OSC2/CLKOUT and RA7/OSC1/CLKIN
  {$define _FOSC_XT        = $0F7F}  // XT oscillator: Crystal/resonator on RA6/OSC2/CLKOUT and RA7/OSC1/CLKIN
  {$define _FOSC_LP        = $077F}  // LP oscillator: Low-power crystal on RA6/OSC2/CLKOUT and RA7/OSC1/CLKIN

  // VCAPEN : Voltage Regulator Capacitor Enable bits
  {$define _VCAPEN_DIS     = $0033}  // All VCAP pin functions are disabled
  {$define _VCAPEN_RA6     = $0032}  // VCAP functionality is enabled on RA6
  {$define _VCAPEN_RA5     = $0031}  // VCAP functionality is enabled on RA5
  {$define _VCAPEN_RA0     = $0030}  // VCAP functionality is enabled on RA0

implementation
end.
