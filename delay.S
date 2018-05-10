#include "config.inc"

    .global     delay
    .section    .text
delay:
    ldi    r24, 41
3:  ldi    r25, 255
2:  ldi    r26, 255
1:  dec    r26
    brne   1b
    dec    r25
    brne   2b
    dec    r24
    brne   3b
    ret

