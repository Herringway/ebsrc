.SEGMENT "BANK17"
.INCLUDE "common.asm"

MAP_DATA_TILE_TABLE_CHUNK_7: ;$D70000
	.INCBIN "bin/maps/tiles/chunk_07.bin"

MAP_DATA_TILE_TABLE_CHUNK_8: ;$D72800
	.INCBIN "bin/maps/tiles/chunk_08.bin"

MAP_DATA_TILE_TABLE_CHUNK_9: ;$D75000
	.INCBIN "bin/maps/tiles/chunk_09.bin"

MAP_DATA_TILE_TABLE_CHUNK_10: ;$D78000
	.INCBIN "bin/maps/tiles/chunk_10.bin"

GLOBAL_MAP_TILESETPALETTE_DATA: ;$D7A800
	.INCBIN "bin/unknowns/D7A800.bin"

MAP_DATA_PER_SECTOR_ATTRIBUTES_TABLE: ;$D7B200
	.INCBIN "bin/unknowns/D7B200.bin"

MAP_DATA_TILE_ARRANGEMENT_0: ;$D7C600
	.INCBIN "bin/maps/arrangements/0.bin"
