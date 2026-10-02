.SEGMENT "BANK1B"
.INCLUDE "common.asm"
.INCLUDE "symbols/audiopacks.inc.asm"
.INCLUDE "symbols/map.inc.asm"

MAP_DATA_TILE_ARRANGEMENT_8:
	BINARY "maps/arrangements/8.arr.lzhal"

MAP_DATA_TILE_ARRANGEMENT_9:
	BINARY "maps/arrangements/9.arr.lzhal"

MAP_DATA_TILE_ARRANGEMENT_16:
	BINARY "maps/arrangements/16.arr.lzhal"

MAP_DATA_TILE_ARRANGEMENT_17:
	LOCALEBINARY "maps/arrangements/17.arr.lzhal"

MAP_DATA_TILE_ARRANGEMENT_10:
	LOCALEBINARY "maps/arrangements/10.arr.lzhal"

MAP_DATA_TILE_ARRANGEMENT_11:
	LOCALEBINARY "maps/arrangements/11.arr.lzhal"

.IF .DEFINED(USA)
	.IF .DEFINED(PROTOTYPE19950327)
		INSERT_AUDIO_PACK 140
	.ELSE
		INSERT_AUDIO_PACK 65
	.ENDIF
.ENDIF
