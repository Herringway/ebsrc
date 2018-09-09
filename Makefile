all:
	ca65 -t none --cpu 65816 -o earthbound.o src/main.asm
	ld65 -o earthbound.sfc -C snes.cfg earthbound.o
