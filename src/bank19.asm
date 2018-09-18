.SEGMENT "BANK19"
.INCLUDE "common.asm"
.ORG $D90000

MAP_DATA_TILE_ARRANGEMENT_1: ;$D90000
	.INCBIN "src/bin/maps/arrangements/1.bin"

MAP_DATA_TILE_ARRANGEMENT_2: ;$D934E9
	.INCBIN "src/bin/maps/arrangements/2.bin"

MAP_DATA_TILE_ARRANGEMENT_3: ;$D968AB
	.INCBIN "src/bin/maps/arrangements/3.bin"

MAP_DATA_TILE_ARRANGEMENT_4: ;$D98DD5
	.INCBIN "src/bin/maps/arrangements/4.bin"

MAP_DATA_TILE_SET_GRAPHICS_13: ;$D9CE52
	.INCBIN "src/bin/maps/gfx/13.bin"

AUDIO_PACK_45: ;$D9FC18
	.INCBIN "src/bin/audiopacks/45.bin"
