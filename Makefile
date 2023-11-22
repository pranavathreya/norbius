default: build

build:
	avr-gcc -mmcu=atmega328p norb.c -o norb

assemble:
	avr-gcc -mmcu=atmega328p norb.c -S -o norb.s 

burn: build
	avr-objcopy -O ihex -R .eeprom norb norb.hex
	avrdude -F -V -c arduino -p m328p -P /dev/ttyACM0 -b 115200 -U flash:w:norb.hex

