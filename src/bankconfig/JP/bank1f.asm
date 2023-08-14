.SEGMENT "BANK1F"
.INCLUDE "common.asm"
.INCLUDE "symbols/map.inc.asm"

MAP_DATA_TILE_SET_GRAPHICS_12: ;$DF0000
	BINARY "maps/gfx/12.gfx.lzhal"

MAP_DATA_TILE_SET_GRAPHICS_16: ;$DF2938
	BINARY "maps/gfx/16.gfx.lzhal"

MAP_DATA_TILE_SET_GRAPHICS_17: ;$DF512A
	BINARY "maps/gfx/17.gfx.lzhal"

MAP_DATA_TILE_SET_GRAPHICS_18: ;$DF6BE8
	BINARY "maps/gfx/18.gfx.lzhal"

MAP_DATA_TILE_SET_GRAPHICS_19: ;$DF818B
	BINARY "maps/gfx/19.gfx.lzhal"

MAP_DATA_TILE_SET_GRAPHICS_15: ;$DF9F57
	BINARY "maps/gfx/15.gfx.lzhal"

MAP_DATA_TILE_ANIMATION_GFX_0: ;$DFC243
	BINARY "maps/anim_gfx/0.gfx.lzhal"

MAP_DATA_TILE_ANIMATION_GFX_1: ;$DFC93B
	BINARY "maps/anim_gfx/1.gfx.lzhal"

MAP_DATA_TILE_ANIMATION_GFX_2: ;$DFCB7F
	BINARY "maps/anim_gfx/2.gfx.lzhal"

MAP_DATA_TILE_ANIMATION_GFX_3: ;$DFCB98
	BINARY "maps/anim_gfx/3.gfx.lzhal"

MAP_DATA_TILE_ANIMATION_GFX_4: ;$DFCBB1
	BINARY "maps/anim_gfx/4.gfx.lzhal"

MAP_DATA_TILE_ANIMATION_GFX_5: ;$DFCBCA
	BINARY "maps/anim_gfx/5.gfx.lzhal"

MAP_DATA_TILE_ANIMATION_GFX_6: ;$DFD000
	BINARY "maps/anim_gfx/6.gfx.lzhal"

MAP_DATA_TILE_ANIMATION_GFX_7: ;$DFD6EE
	BINARY "maps/anim_gfx/7.gfx.lzhal"

MAP_DATA_TILE_ANIMATION_GFX_8: ;$DFDD57
	BINARY "maps/anim_gfx/8.gfx.lzhal"

MAP_DATA_TILE_ANIMATION_GFX_9: ;$DFE1EB
	BINARY "maps/anim_gfx/9.gfx.lzhal"

MAP_DATA_TILE_ANIMATION_GFX_10: ;$DFE204
	BINARY "maps/anim_gfx/10.gfx.lzhal"

MAP_DATA_TILE_ANIMATION_GFX_11: ;$DFE21D
	BINARY "maps/anim_gfx/11.gfx.lzhal"

MAP_DATA_TILE_ANIMATION_GFX_12: ;$DFE236
	BINARY "maps/anim_gfx/12.gfx.lzhal"

MAP_DATA_TILE_ANIMATION_GFX_13: ;$DFE402
	BINARY "maps/anim_gfx/13.gfx.lzhal"

MAP_DATA_TILE_ANIMATION_GFX_14: ;$DFE4C8
	BINARY "maps/anim_gfx/14.gfx.lzhal"

.INCLUDE "data/map/palette_anim_pointer_table.asm"

.INCLUDE "data/map/palette_anim_secondary_table.asm"

.INCLUDE "data/map/palette_anim_table.asm"
