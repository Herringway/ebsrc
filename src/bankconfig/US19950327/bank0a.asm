.SEGMENT "BANK0A"
.INCLUDE "common.asm"
.INCLUDE "symbols/battle_bgs.inc.asm"
.INCLUDE "symbols/misc.inc.asm"

BATTLE_BACKGROUND_GFX_63: ;$CA0000
	BINARY "battle_bgs/graphics/63.gfx.lzhal"

BATTLE_BACKGROUND_GFX_64: ;$CA2042
	BINARY "battle_bgs/graphics/64.gfx.lzhal"

BATTLE_BACKGROUND_GFX_61: ;$CA382D
	BINARY "battle_bgs/graphics/61.gfx.lzhal"

BATTLE_BACKGROUND_GFX_60: ;$CA480F
	BINARY "battle_bgs/graphics/60.gfx.lzhal"

BATTLE_BACKGROUND_GFX_42: ;$CA5723
	BINARY "battle_bgs/graphics/42.gfx.lzhal"

BATTLE_BACKGROUND_GFX_38: ;$CA65D3
	BINARY "battle_bgs/graphics/38.gfx.lzhal"

BATTLE_BACKGROUND_GFX_37: ;$CA7314
	BINARY "battle_bgs/graphics/37.gfx.lzhal"

BATTLE_BACKGROUND_GFX_43: ;$CA7F6C
	BINARY "battle_bgs/graphics/43.gfx.lzhal"

BATTLE_BACKGROUND_GFX_39: ;$CA8B4F
	BINARY "battle_bgs/graphics/39.gfx.lzhal"

BATTLE_BACKGROUND_GFX_41: ;$CA965F
	BINARY "battle_bgs/graphics/41.gfx.lzhal"

BATTLE_BACKGROUND_GFX_62: ;$CAA049
	BINARY "battle_bgs/graphics/62.gfx.lzhal"

BATTLE_BACKGROUND_GFX_40: ;$CAA8F9
	BINARY "battle_bgs/graphics/40.gfx.lzhal"

BATTLE_BACKGROUND_ARR_37: ;$CAB092
	BINARY "battle_bgs/arrangements/37.arr.lzhal"

BATTLE_BACKGROUND_GFX_66: ;$CAB75B
	BINARY "battle_bgs/graphics/66.gfx.lzhal"

BATTLE_BACKGROUND_ARR_38: ;$CABE1E
	BINARY "battle_bgs/arrangements/38.arr.lzhal"

BATTLE_BACKGROUND_ARR_39: ;$CAC4A1
	BINARY "battle_bgs/arrangements/39.arr.lzhal"

BATTLE_BACKGROUND_ARR_42: ;$CACB09
	BINARY "battle_bgs/arrangements/42.arr.lzhal"

BATTLE_BACKGROUND_ARR_100: ;$CAD149
	BINARY "battle_bgs/arrangements/100.arr.lzhal"

BATTLE_BACKGROUND_GFX_56: ;$CAD755
	BINARY "battle_bgs/graphics/56.gfx.lzhal"

BATTLE_BACKGROUND_GFX_90: ;$CAD79E
	BINARY "battle_bgs/graphics/90.gfx.lzhal"

.INCLUDE "data/battle/backgrounds/graphics_pointers.asm"

.INCLUDE "data/battle/backgrounds/arrangement_pointers.asm"

.INCLUDE "data/battle/backgrounds/palette_pointers.asm"

.INCLUDE "data/battle/backgrounds/config_table.asm"

.INCLUDE "data/battle/backgrounds/scrolling_table.asm"

.INCLUDE "data/battle/backgrounds/distortion_table.asm"
