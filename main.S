#include "config.inc"

	.extern blink
	.extern setup
	.extern delay

	.global	init
	.global start
	.global wait
	.global main

	.section   .text

init:
	ldi r16,0b01000000
	sts ADMUX,r16
	ldi r16,0b10000111
	sts ADCSRA,r16
	ret

start:
	ldi r16, 0b01000000
	lds r17, ADCSRA
	or  r17, r16
	sts ADCSRA, r17
	ret 
	
wait:
	lds r17, ADCSRA
	sbrs r17, 4
	jmp wait
	ldi r16, 0b00010000
	lds r17, ADCSRA
	or r17, r16
	sts ADCSRA, r17
	ret

main:
	call setup
	call init
1:	call start
	call wait

	lds r17, ADCL
	lds r18, ADCH
	cpi r17, 200
	brlo 1b

2:	call blink

	call start
	call wait
	lds r17, ADCL
	lds r18, ADCH
	cpi r17, 200
	brlo 1b

