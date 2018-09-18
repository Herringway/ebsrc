.SEGMENT "BANK1C"
.INCLUDE "common.asm"
.ORG $DC0000

MAP_DATA_TILE_ARRANGEMENT_12:;$DC0000
	.INCBIN "bin/maps/arrangements/12.bin"

MAP_DATA_TILE_ARRANGEMENT_13:;$DC1FCA
	.INCBIN "bin/maps/arrangements/13.bin"

MAP_DATA_TILE_ARRANGEMENT_14:;$DC593C
	.INCBIN "bin/maps/arrangements/14.bin"

MAP_DATA_TILE_ARRANGEMENT_15:;$DC687B
	.INCBIN "bin/maps/arrangements/15.bin"

MAP_DATA_TILE_ARRANGEMENT_18:;$DC72C0
	.INCBIN "bin/maps/arrangements/18.bin"

MAP_DATA_TILE_ARRANGEMENT_19:;$DC8E4A
	.INCBIN "bin/maps/arrangements/19.bin"

MAP_DATA_TILE_SET_GRAPHICS_14: ;$DCB023
	.INCBIN "bin/maps/gfx/14.bin"

MAP_DATA_PER_SECTOR_MUSIC: ;$DCD637
	.INCBIN "bin/unknowns/DCD637.bin"

AUDIO_PACK_156: ;$DCE037
	.INCBIN "bin/audiopacks/156.bin"

AUDIO_PACK_79: ;$DCF8BF
	.INCBIN "bin/audiopacks/79.bin"
