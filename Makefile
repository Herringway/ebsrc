all: earthbound.sfc

earthbound.sfc: src/bank00.o src/bank01.o src/bank02.o src/bank03.o src/bank04.o src/bank05.o src/bank06.o src/bank07.o src/bank08.o src/bank09.o src/bank0a.o src/bank0b.o src/bank0c.o src/bank0d.o src/bank0e.o src/bank0f.o src/bank10.o src/bank11.o src/bank12.o src/bank13.o src/bank14.o src/bank15.o src/bank16.o src/bank17.o src/bank18.o src/bank19.o src/bank1a.o src/bank1b.o src/bank1c.o src/bank1d.o src/bank1e.o src/bank1f.o src/bank20.o src/bank21.o src/bank22.o src/bank23.o src/bank24.o src/bank25.o src/bank26.o src/bank27.o src/bank28.o src/bank29.o src/bank2a.o src/bank2b.o src/bank2c.o src/bank2d.o src/bank2e.o src/bank2f.o src/ram.o
	ld65 -o $@ -C snes.cfg $^

extract:
	dub run ebbinex -- "donor.sfc" "src/bin"

%.o: %.asm src/enums.asm src/macros.asm src/common.asm src/registers.asm src/structs.asm
	ca65 -t none --cpu 65816 -o $@ $<

%.bin: %.uncompressed
	inhal -n $< $@
