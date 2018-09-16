.SEGMENT "BANK1C"
.INCLUDE "common.asm"
.ORG $DC0000

MAP_DATA_TILE_ARRANGEMENT_BLOCK_5: ;$DC0000
	.INCBIN "bin/maptile_arrangements/4.bin"

MAP_DATA_TILE_GRAPHICS_BLOCK_2: ;$DCB023
	.INCBIN "bin/maptile_gfx/1.bin"

MAP_DATA_PER_SECTOR_MUSIC: ;$DCD637
	.INCBIN "bin/unknowns/DCD637.bin"

AUDIO_PACK_156: ;$DCE037
	.INCBIN "bin/audiopacks/156.bin"

AUDIO_PACK_79: ;$DCF8BF
	.INCBIN "bin/audiopacks/79.bin"
