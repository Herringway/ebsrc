.SEGMENT "BANK1D"
.ORG $DD0000

MAP_DATA_TILE_GRAPHICS_BLOCK_3: ;$DD0000
	.INCBIN "src/bin/maptile_gfx/3.bin"

AUDIO_PACK_75: ;$DDFECE
	.INCBIN "src/bin/audiopacks/75.bin"
