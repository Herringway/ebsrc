.SEGMENT "BANK17"
.INCLUDE "common.asm"
.INCLUDE "symbols/map.inc.asm"

MAP_DATA_TILE_TABLE_CHUNK_7: ;$D70000
	BINARY "maps/tiles/chunk_07.bin"

MAP_DATA_TILE_TABLE_CHUNK_8: ;$D72800
	BINARY "maps/tiles/chunk_08.bin"

MAP_DATA_TILE_TABLE_CHUNK_9: ;$D75000
	BINARY "maps/tiles/chunk_09.bin"

MAP_DATA_TILE_TABLE_CHUNK_10: ;$D78000
	BINARY "maps/tiles/chunk_10.bin"

.INCLUDE "data/map/global_tileset_palette_data.asm"

.INCLUDE "data/map/per-sector_attributes.asm"

MAP_DATA_TILE_ARRANGEMENT_0: ;$D7C600
	BINARY "maps/arrangements/0.arr.lzhal"
