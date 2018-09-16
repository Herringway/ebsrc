.SEGMENT "BANK1E"
.INCLUDE "common.asm"
.ORG $DE0000

MAP_DATA_TILE_GRAPHICS_BLOCK_4: ;$DE0000
	.INCBIN "src/bin/maptile_gfx/3.bin"

MAP_DATA_ANIMATED_TILE_GFX_BLOCK_1: ;$DEF0E7
	.INCBIN "src/bin/maptile_anim_gfx/0.bin"

AUDIO_PACK_143: ;$DEFCDD
	.INCBIN "src/bin/audiopacks/143.bin"
