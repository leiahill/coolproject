#include <avr/io.h>

#define  LSENS_PIN	0
#define  LSENS_PORT 	_(PORTC)
#define  LSENS_DIR	_(DDRC)

#define  SERV_PIN	1
#define  SERV_PORT	_(PORTB)
#define	 SERV_DIR	_(DDRB)

#define  LED_PIN	5
#define  LED_PORT	_(PORTB)
#define  LED_DIR	_(DDRB)

#define _(s)	_SFR_IO_ADDR(s)   
