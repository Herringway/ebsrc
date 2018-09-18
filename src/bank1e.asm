.SEGMENT "BANK1E"
.INCLUDE "common.asm"
.ORG $DE0000

MAP_DATA_TILE_SET_GRAPHICS_6: ;$DE0000
	.INCBIN "src/bin/maptile_gfx/6.bin"

MAP_DATA_TILE_SET_GRAPHICS_7: ;$DE32C9
	.INCBIN "src/bin/maptile_gfx/7.bin"

MAP_DATA_TILE_SET_GRAPHICS_8: ;$DE543F
	.INCBIN "src/bin/maptile_gfx/8.bin"

MAP_DATA_TILE_SET_GRAPHICS_2: ;$DE747E
	.INCBIN "src/bin/maptile_gfx/2.bin"

MAP_DATA_TILE_SET_GRAPHICS_10: ;$DEA101
	.INCBIN "src/bin/maptile_gfx/10.bin"

MAP_DATA_TILE_SET_GRAPHICS_11: ;$DECE3A
	.INCBIN "src/bin/maptile_gfx/11.bin"

MAP_DATA_ANIMATED_TILE_GFX_BLOCK_1: ;$DEF0E7
	.INCBIN "src/bin/maptile_anim_gfx/0.bin"

AUDIO_PACK_143: ;$DEFCDD
	.INCBIN "src/bin/audiopacks/143.bin"
