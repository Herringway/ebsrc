all: earthbound.sfc

USSRCS = $(wildcard src/bankconfig/US/bank*.asm) src/bankconfig/US/bank00-1.asm src/bankconfig/US/bank00-2.asm src/bankconfig/US/ram.asm

earthbound.sfc: $(patsubst %.asm, %.o, $(USSRCS))
	ld65 -o $@ -C snes.cfg $^

src/bankconfig/US/bank00-1.o: src/bankconfig/US/bank00-1.asm src/config.asm
src/bankconfig/US/bank00-2.o: src/bankconfig/US/bank00-2.asm src/config.asm src/movementmacros.asm

src/bankconfig/US/bank01.o: src/bankconfig/US/bank01.asm src/config.asm $(wildcard src/text/ccs/*.asm)

src/bankconfig/US/bank02.o: src/bankconfig/US/bank02.asm src/config.asm src/movementmacros.asm

src/bankconfig/US/bank03.o: src/bankconfig/US/bank03.asm src/config.asm src/movementmacros.asm $(wildcard src/bin/unknowns/C3*.bin)

src/bankconfig/US/bank04.o: src/bankconfig/US/bank04.asm src/config.asm src/movementmacros.asm $(wildcard src/bin/unknowns/C4*.bin)

src/bankconfig/US/bank05.o: src/bankconfig/US/bank05.asm src/bin/text_data/0.ebtxt

src/bankconfig/US/bank06.o: src/bankconfig/US/bank06.asm src/bin/text_data/1.ebtxt

src/bankconfig/US/bank07.o: src/bankconfig/US/bank07.asm src/bin/text_data/2.ebtxt

src/bankconfig/US/bank08.o: src/bankconfig/US/bank08.asm src/bin/text_data/3.ebtxt src/bin/text_data/4.ebtxt $(wildcard src/bin/unknowns/C8*.bin)

src/bankconfig/US/bank09.o: src/bankconfig/US/bank09.asm src/bin/text_data/5.ebtxt

src/bankconfig/US/bank0a.o: src/bankconfig/US/bank0a.asm $(wildcard src/bin/unknowns/CA*.bin)

src/bankconfig/US/bank0b.o: src/bankconfig/US/bank0b.asm $(wildcard src/bin/unknowns/CB*.bin)

src/bankconfig/US/bank0c.o: src/bankconfig/US/bank0c.asm $(wildcard src/bin/unknowns/CC*.bin)

src/bankconfig/US/bank0d.o: src/bankconfig/US/bank0d.asm

src/bankconfig/US/bank0e.o: src/bankconfig/US/bank0e.asm $(wildcard src/bin/unknowns/CE*.bin)

src/bankconfig/US/bank0f.o: src/bankconfig/US/bank0f.asm src/data/map/npc_config.asm $(wildcard src/bin/unknowns/CF*.bin) src/data/map/overworld_event_music_table.asm src/data/map/door_config_table.asm src/data/map/sprite_placement_table.asm src/data/map/sprite_placement_pointer_table.asm src/data/map/door_data.asm

src/bankconfig/US/bank15.o: src/bankconfig/US/bank15.asm src/data/battle/action_table.asm

src/bankconfig/US/bank16.o: src/bankconfig/US/bank16.asm $(wildcard src/bin/unknowns/D6*.bin)

src/bankconfig/US/bank17.o: src/bankconfig/US/bank17.asm $(wildcard src/bin/unknowns/D7*.bin)

src/bankconfig/US/bank18.o: src/bankconfig/US/bank18.asm $(wildcard src/data/map/tile_collision_pointers_*.asm) $(wildcard src/bin/unknowns/D8*.bin)

src/bankconfig/US/bank1a.o: src/bankconfig/US/bank1a.asm $(wildcard src/bin/unknowns/DA*.bin)

src/bankconfig/US/bank1c.o: src/bankconfig/US/bank1c.asm $(wildcard src/bin/unknowns/DC*.bin)

src/bankconfig/US/bank1f.o: src/bankconfig/US/bank1f.asm $(wildcard src/bin/unknowns/DF*.bin)

src/bankconfig/US/bank21.o: src/bankconfig/US/bank21.asm $(wildcard src/bin/unknowns/E1*.bin)

src/bankconfig/US/bank2f.o: src/bankconfig/US/bank2f.asm src/config.asm

src/ram.o: src/ram.asm src/config.asm

extract:
	dub run ebbinex -- "donor.sfc" "src/bin"

%.o: %.asm src/enums.asm src/macros.asm src/common.asm src/hardware.asm src/structs.asm
	ca65 -t none --cpu 65816 --bin-include-dir src --include-dir src -o $@ "$<"

%.bin: %.uncompressed
	inhal -n $< $@
