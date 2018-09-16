.SEGMENT "BANK1B"
.INCLUDE "common.asm"
.ORG $DB0000

MAP_DATA_TILE_ARRANGEMENT_BLOCK_4: ;$DB0000
	.INCBIN "src/bin/maptile_arrangements/3.bin"

AUDIO_PACK_65: ;$DBF2EB
	.INCBIN "src/bin/audiopacks/65.bin"
