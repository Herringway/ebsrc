.SEGMENT "BANK1C"
.INCLUDE "common.asm"
.INCLUDE "symbols/map.inc.asm"

MAP_DATA_TILE_ARRANGEMENT_12:;$DC0000
	BINARY "maps/arrangements/12.arr.lzhal"

MAP_DATA_TILE_ARRANGEMENT_13:;$DC1FCA
	BINARY "maps/arrangements/13.arr.lzhal"

MAP_DATA_TILE_ARRANGEMENT_14:;$DC593C
	BINARY "maps/arrangements/14.arr.lzhal"

MAP_DATA_TILE_ARRANGEMENT_15:;$DC687B
	BINARY "maps/arrangements/15.arr.lzhal"

MAP_DATA_TILE_ARRANGEMENT_18:;$DC72C0
	BINARY "maps/arrangements/18.arr.lzhal"

MAP_DATA_TILE_ARRANGEMENT_19:;$DC8E4A
	BINARY "maps/arrangements/19.arr.lzhal"

MAP_DATA_TILE_SET_GRAPHICS_14: ;$DCB023
	BINARY "maps/gfx/14.gfx.lzhal"

.INCLUDE "data/map/per-sector_music.asm"
