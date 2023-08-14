.SEGMENT "BANK1E"
.INCLUDE "common.asm"
.INCLUDE "symbols/audiopacks.inc.asm"
.INCLUDE "symbols/map.inc.asm"

MAP_DATA_TILE_SET_GRAPHICS_6: ;$DE0000
	BINARY "maps/gfx/6.gfx.lzhal"

MAP_DATA_TILE_SET_GRAPHICS_7: ;$DE32C9
	BINARY "maps/gfx/7.gfx.lzhal"

MAP_DATA_TILE_SET_GRAPHICS_8: ;$DE543F
	BINARY "maps/gfx/8.gfx.lzhal"

MAP_DATA_TILE_SET_GRAPHICS_2: ;$DE747E
	BINARY "maps/gfx/2.gfx.lzhal"

MAP_DATA_TILE_SET_GRAPHICS_10: ;$DEA101
	BINARY "maps/gfx/10.gfx.lzhal"

MAP_DATA_TILE_SET_GRAPHICS_11: ;$DECE3A
	BINARY "maps/gfx/11.gfx.lzhal"

MAP_DATA_TILE_ANIMATION_GFX_15: ;$DEF0E7
	BINARY "maps/anim_gfx/15.gfx.lzhal"

MAP_DATA_TILE_ANIMATION_GFX_16: ;$DEF100
	BINARY "maps/anim_gfx/16.gfx.lzhal"

MAP_DATA_TILE_ANIMATION_GFX_17: ;$DEF2CF
	BINARY "maps/anim_gfx/17.gfx.lzhal"

MAP_DATA_TILE_ANIMATION_GFX_18: ;$DEF5EB
	BINARY "maps/anim_gfx/18.gfx.lzhal"

MAP_DATA_TILE_ANIMATION_GFX_19: ;$DEF869
	BINARY "maps/anim_gfx/19.gfx.lzhal"

AUDIO_PACK_143: ;$DEFCDD
	AUDIOPACK "audiopacks/143.ebm"
