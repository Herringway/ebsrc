all: earthbound.sfc

earthbound.sfc: $(wildcard src/bank*.o) src/bank00-1.o src/bank00-2.o src/ram.o
	ld65 -o $@ -C snes.cfg $^

src/bank00-1.o: src/bank00-1.asm src/config.asm
src/bank00-2.o: src/bank00-2.asm src/config.asm src/movementmacros.asm

src/bank01.o: src/bank01.asm src/config.asm $(wildcard src/ccs/*.asm)

src/bank02.o: src/bank02.asm src/config.asm src/movementmacros.asm $(wildcard src/bin/unknowns/C2*.bin)

src/bank03.o: src/bank03.asm src/config.asm src/movementmacros.asm $(wildcard src/bin/unknowns/C3*.bin)

src/bank04.o: src/bank04.asm src/config.asm src/movementmacros.asm src/music/packtables.asm $(wildcard src/bin/unknowns/C4*.bin)

src/bank05.o: src/bank05.asm src/bin/text_data/0.ebtxt

src/bank06.o: src/bank06.asm src/bin/text_data/1.ebtxt

src/bank07.o: src/bank07.asm src/bin/text_data/2.ebtxt

src/bank08.o: src/bank08.asm src/bin/text_data/3.ebtxt src/bin/text_data/4.ebtxt $(wildcard src/bin/unknowns/C8*.bin)

src/bank09.o: src/bank09.asm src/bin/text_data/5.ebtxt

src/bank0a.o: src/bank0a.asm $(wildcard src/bin/unknowns/CA*.bin)

src/bank0b.o: src/bank0b.asm $(wildcard src/bin/unknowns/CB*.bin)

src/bank0c.o: src/bank0c.asm $(wildcard src/bin/unknowns/CC*.bin)

src/bank0d.o: src/bank0d.asm

src/bank0e.o: src/bank0e.asm $(wildcard src/bin/unknowns/CE*.bin)

src/bank0f.o: src/bank0f.asm src/map_data/npc_config.asm $(wildcard src/bin/unknowns/CF*.bin)

src/bank10.o: src/bank10.asm src/enemies/placement.asm $(wildcard src/bin/unknowns/D0*.bin)

src/bank15.o: src/bank15.asm $(wildcard src/bin/unknowns/D5*.bin)

src/bank16.o: src/bank16.asm $(wildcard src/bin/unknowns/D6*.bin)

src/bank17.o: src/bank17.asm $(wildcard src/bin/unknowns/D7*.bin)

src/bank18.o: src/bank18.asm $(wildcard src/map_data/tile_collision_pointers_*.asm) $(wildcard src/bin/unknowns/D8*.bin)

src/bank1a.o: src/bank1a.asm $(wildcard src/bin/unknowns/DA*.bin)

src/bank1c.o: src/bank1c.asm $(wildcard src/bin/unknowns/DC*.bin)

src/bank1f.o: src/bank1f.asm $(wildcard src/bin/unknowns/DF*.bin)

src/bank20.o: src/bank20.asm $(wildcard src/bin/unknowns/E0*.bin)

src/bank21.o: src/bank21.asm $(wildcard src/bin/unknowns/E1*.bin)

src/bank2f.o: src/bank2f.asm src/config.asm $(wildcard src/bin/unknowns/EF*.bin)

src/ram.o: src/ram.asm src/config.asm

extract:
	dub run ebbinex -- "donor.sfc" "src/bin"

%.o: %.asm src/enums.asm src/macros.asm src/common.asm src/hardware.asm src/structs.asm
	ca65 -t none --cpu 65816 -o $@ $<

%.bin: %.uncompressed
	inhal -n $< $@
