.SEGMENT "BANK1F"
.INCLUDE "common-usa.asm"

MAP_DATA_TILE_SET_GRAPHICS_12: ;$DF0000
	.INCBIN "bin/maps/gfx/12.bin"

MAP_DATA_TILE_SET_GRAPHICS_16: ;$DF2938
	.INCBIN "bin/maps/gfx/16.bin"

MAP_DATA_TILE_SET_GRAPHICS_17: ;$DF512A
	.INCBIN "bin/maps/gfx/17.bin"

MAP_DATA_TILE_SET_GRAPHICS_18: ;$DF6BE8
	.INCBIN "bin/maps/gfx/18.bin"

MAP_DATA_TILE_SET_GRAPHICS_19: ;$DF818B
	.INCBIN "bin/maps/gfx/19.bin"

MAP_DATA_TILE_SET_GRAPHICS_15: ;$DF9F57
	.INCBIN "bin/maps/gfx/15.bin"

MAP_DATA_TILE_ANIMATION_GFX_0: ;$DFC243
	.INCBIN "bin/maps/anim_gfx/0.bin"

MAP_DATA_TILE_ANIMATION_GFX_1: ;$DFC93B
	.INCBIN "bin/maps/anim_gfx/1.bin"

MAP_DATA_TILE_ANIMATION_GFX_2: ;$DFCB7F
	.INCBIN "bin/maps/anim_gfx/2.bin"

MAP_DATA_TILE_ANIMATION_GFX_3: ;$DFCB98
	.INCBIN "bin/maps/anim_gfx/3.bin"

MAP_DATA_TILE_ANIMATION_GFX_4: ;$DFCBB1
	.INCBIN "bin/maps/anim_gfx/4.bin"

MAP_DATA_TILE_ANIMATION_GFX_5: ;$DFCBCA
	.INCBIN "bin/maps/anim_gfx/5.bin"

MAP_DATA_TILE_ANIMATION_GFX_6: ;$DFD000
	.INCBIN "bin/maps/anim_gfx/6.bin"

MAP_DATA_TILE_ANIMATION_GFX_7: ;$DFD6EE
	.INCBIN "bin/maps/anim_gfx/7.bin"

MAP_DATA_TILE_ANIMATION_GFX_8: ;$DFDD57
	.INCBIN "bin/maps/anim_gfx/8.bin"

MAP_DATA_TILE_ANIMATION_GFX_9: ;$DFE1EB
	.INCBIN "bin/maps/anim_gfx/9.bin"

MAP_DATA_TILE_ANIMATION_GFX_10: ;$DFE204
	.INCBIN "bin/maps/anim_gfx/10.bin"

MAP_DATA_TILE_ANIMATION_GFX_11: ;$DFE21D
	.INCBIN "bin/maps/anim_gfx/11.bin"

MAP_DATA_TILE_ANIMATION_GFX_12: ;$DFE236
	.INCBIN "bin/maps/anim_gfx/12.bin"

MAP_DATA_TILE_ANIMATION_GFX_13: ;$DFE402
	.INCBIN "bin/maps/anim_gfx/13.bin"

MAP_DATA_TILE_ANIMATION_GFX_14: ;$DFE4C8
	.INCBIN "bin/maps/anim_gfx/14.bin"

.INCLUDE "data/map/palette_anim_pointer_table.asm"

.INCLUDE "data/map/palette_anim_secondary_table.asm"

.INCLUDE "data/map/palette_anim_table.asm"

AUDIO_PACK_4: ;$DFEC46
	.INCBIN "bin/audiopacks/4.bin"
