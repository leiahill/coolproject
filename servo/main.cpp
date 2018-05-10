#include "Servo.h"
#include "ServoTimers.h"

Servo servo1;

int pos = 0;

void init() {
    DDRB = (1 << 1);
}

void setup() {    
    servo1.attach(9);
}

void loop() {
    for(int pos = 95; pos <= 180; pos++) {
        servo1.write(pos);
    }
    for(int pos = 180; pos >= 95; pos--) {
        servo1.write(pos);
    }
}

int main(void) {
    init();
    setup();
    for(;;) {
	loop();
    }
    
    return 0;
}
