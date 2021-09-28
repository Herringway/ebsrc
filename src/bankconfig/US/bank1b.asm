.SEGMENT "BANK1B"
.INCLUDE "common.asm"

MAP_DATA_TILE_ARRANGEMENT_8: ;$DB0000
	BINARY "maps/arrangements/8.arr.lzhal"

MAP_DATA_TILE_ARRANGEMENT_9: ;$DB26C1
	BINARY "maps/arrangements/9.arr.lzhal"

MAP_DATA_TILE_ARRANGEMENT_16: ;$DB617F
	BINARY "maps/arrangements/16.arr.lzhal"

MAP_DATA_TILE_ARRANGEMENT_17: ;$DB7C22
	BINARY "maps/arrangements/17.arr.lzhal"

MAP_DATA_TILE_ARRANGEMENT_10: ;$DB9218
	BINARY "maps/arrangements/10.arr.lzhal"

MAP_DATA_TILE_ARRANGEMENT_11: ;$DBC6CC
	BINARY "maps/arrangements/11.arr.lzhal"

AUDIO_PACK_65: ;$DBF2EB
	AUDIOPACKBIN $C73, $5800, "audiopacks/65.bin"
	AUDIOPACKTERMINATOR
