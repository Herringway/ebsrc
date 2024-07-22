.SEGMENT "BANK1D"
.INCLUDE "common.asm"
.INCLUDE "symbols/audiopacks.inc.asm"
.INCLUDE "symbols/map.inc.asm"

MAP_DATA_TILE_SET_GRAPHICS_0:
	BINARY "maps/gfx/0.gfx.lzhal"

MAP_DATA_TILE_SET_GRAPHICS_1:
	LOCALEBINARY "maps/gfx/1.gfx.lzhal"

MAP_DATA_TILE_SET_GRAPHICS_9:
	BINARY "maps/gfx/9.gfx.lzhal"

MAP_DATA_TILE_SET_GRAPHICS_3:
	LOCALEBINARY "maps/gfx/3.gfx.lzhal"

MAP_DATA_TILE_SET_GRAPHICS_4:
	LOCALEBINARY "maps/gfx/4.gfx.lzhal"

MAP_DATA_TILE_SET_GRAPHICS_5:
	LOCALEBINARY "maps/gfx/5.gfx.lzhal"

.IF .DEFINED(USA)
	INSERT_AUDIO_PACK 75
.ENDIF
