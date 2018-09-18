.SEGMENT "BANK19"
.INCLUDE "common.asm"
.ORG $D90000

MAP_DATA_TILE_ARRANGEMENT_BLOCK_2: ;$D90000
	.INCBIN "src/bin/maptile_arrangements/1.bin"

MAP_DATA_TILE_SET_GRAPHICS_13: ;$D9CE52
	.INCBIN "src/bin/maptile_gfx/13.bin"

AUDIO_PACK_45: ;$D9FC18
	.INCBIN "src/bin/audiopacks/45.bin"
