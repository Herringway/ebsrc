.SEGMENT "BANK16"
.INCLUDE "common.asm"

MAP_DATA_TILE_TABLE_CHUNK_1: ;$D60000
	.INCBIN "bin/maps/tiles/chunk_01.bin"

MAP_DATA_TILE_TABLE_CHUNK_2: ;$D62800
	.INCBIN "bin/maps/tiles/chunk_02.bin"

MAP_DATA_TILE_TABLE_CHUNK_3: ;$D65000
	.INCBIN "bin/maps/tiles/chunk_03.bin"

MAP_DATA_TILE_TABLE_CHUNK_4: ;$D68000
	.INCBIN "bin/maps/tiles/chunk_04.bin"

MAP_DATA_TILE_TABLE_CHUNK_5: ;$D6A800
	.INCBIN "bin/maps/tiles/chunk_05.bin"

MAP_DATA_TILE_TABLE_CHUNK_6: ;$D6D000
	.INCBIN "bin/maps/tiles/chunk_06.bin"
