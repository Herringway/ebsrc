.SEGMENT "BANK19"
.INCLUDE "common.asm"

MAP_DATA_TILE_ARRANGEMENT_1: ;$D90000
	BINARY "maps/arrangements/1.bin.lzhal"

MAP_DATA_TILE_ARRANGEMENT_2: ;$D934E8
	BINARY "maps/arrangements/2.bin.lzhal"

MAP_DATA_TILE_ARRANGEMENT_3: ;$D968AB
	BINARY "maps/arrangements/3.bin.lzhal"

MAP_DATA_TILE_ARRANGEMENT_4: ;$D98DD5
	BINARY "maps/arrangements/4.bin.lzhal"

MAP_DATA_TILE_SET_GRAPHICS_13: ;$D9CE52
	BINARY "maps/gfx/13.gfx.lzhal"

AUDIO_PACK_45: ;$D9FC18
	AUDIOPACKBIN $3C3, $5800, "audiopacks/45.bin"
	AUDIOPACKTERMINATOR
