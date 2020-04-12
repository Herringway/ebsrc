.SEGMENT "BANK1B"
.INCLUDE "common.asm"

MAP_DATA_TILE_ARRANGEMENT_8: ;$DB0000
	.INCBIN "bin/maps/arrangements/8.bin"

MAP_DATA_TILE_ARRANGEMENT_9: ;$DB26C1
	.INCBIN "bin/maps/arrangements/9.bin"

MAP_DATA_TILE_ARRANGEMENT_16: ;$DB617F
	.INCBIN "bin/maps/arrangements/16.bin"

MAP_DATA_TILE_ARRANGEMENT_17: ;$DB7C22
	.INCBIN "bin/maps/arrangements/17.bin"

MAP_DATA_TILE_ARRANGEMENT_10: ;$DB9218
	.INCBIN "bin/maps/arrangements/10.bin"

MAP_DATA_TILE_ARRANGEMENT_11: ;$DBC6CC
	.INCBIN "bin/maps/arrangements/11.bin"

AUDIO_PACK_65: ;$DBF2EB
	.INCBIN "bin/audiopacks/65.bin"
