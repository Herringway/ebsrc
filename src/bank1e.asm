.SEGMENT "BANK1E"
.INCLUDE "common.asm"
.ORG $DE0000

MAP_DATA_TILE_SET_GRAPHICS_6: ;$DE0000
	.INCBIN "src/bin/maps/gfx/6.bin"

MAP_DATA_TILE_SET_GRAPHICS_7: ;$DE32C9
	.INCBIN "src/bin/maps/gfx/7.bin"

MAP_DATA_TILE_SET_GRAPHICS_8: ;$DE543F
	.INCBIN "src/bin/maps/gfx/8.bin"

MAP_DATA_TILE_SET_GRAPHICS_2: ;$DE747E
	.INCBIN "src/bin/maps/gfx/2.bin"

MAP_DATA_TILE_SET_GRAPHICS_10: ;$DEA101
	.INCBIN "src/bin/maps/gfx/10.bin"

MAP_DATA_TILE_SET_GRAPHICS_11: ;$DECE3A
	.INCBIN "src/bin/maps/gfx/11.bin"

MAP_DATA_TILE_ANIMATION_GFX_15: ;$DEF0E7
	.INCBIN "src/bin/maps/anim_gfx/15.bin"

MAP_DATA_TILE_ANIMATION_GFX_16: ;$DEF100
	.INCBIN "src/bin/maps/anim_gfx/16.bin"

MAP_DATA_TILE_ANIMATION_GFX_17: ;$DEF2CF
	.INCBIN "src/bin/maps/anim_gfx/17.bin"

MAP_DATA_TILE_ANIMATION_GFX_18: ;$DEF5EB
	.INCBIN "src/bin/maps/anim_gfx/18.bin"

MAP_DATA_TILE_ANIMATION_GFX_19: ;$DEF869
	.INCBIN "src/bin/maps/anim_gfx/19.bin"

AUDIO_PACK_143: ;$DEFCDD
	.INCBIN "src/bin/audiopacks/143.bin"
