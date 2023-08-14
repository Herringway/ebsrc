.SEGMENT "BANK1B"
.INCLUDE "common.asm"
.INCLUDE "symbols/audiopacks.inc.asm"
.INCLUDE "symbols/map.inc.asm"

MAP_DATA_TILE_ARRANGEMENT_8: ;$DB0000
	BINARY "maps/arrangements/8.bin.lzhal"

MAP_DATA_TILE_ARRANGEMENT_9: ;$DB26C1
	BINARY "maps/arrangements/9.bin.lzhal"

MAP_DATA_TILE_ARRANGEMENT_16: ;$DB617F
	BINARY "maps/arrangements/16.bin.lzhal"

MAP_DATA_TILE_ARRANGEMENT_17: ;$DB7C22
	BINARY "maps/arrangements/17.bin.lzhal"

MAP_DATA_TILE_ARRANGEMENT_10: ;$DB9216
	BINARY "maps/arrangements/10.bin.lzhal"

MAP_DATA_TILE_ARRANGEMENT_11: ;$DBC629
	BINARY "maps/arrangements/11.bin.lzhal"

AUDIO_PACK_140: ;$EAF124
	AUDIOPACK "audiopacks/140.ebm"
