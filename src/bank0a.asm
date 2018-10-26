.SEGMENT "BANK0A"
.INCLUDE "common.asm"

BATTLE_BACKGROUND_GFX_63: ;$CA0000
	.INCBIN"bin/battle_bgs/graphics/63.bin"

BATTLE_BACKGROUND_GFX_64: ;$CA2042
	.INCBIN"bin/battle_bgs/graphics/64.bin"

BATTLE_BACKGROUND_GFX_61: ;$CA382D
	.INCBIN"bin/battle_bgs/graphics/61.bin"

BATTLE_BACKGROUND_GFX_60: ;$CA480F
	.INCBIN"bin/battle_bgs/graphics/60.bin"

BATTLE_BACKGROUND_GFX_42: ;$CA5723
	.INCBIN"bin/battle_bgs/graphics/42.bin"

BATTLE_BACKGROUND_GFX_38: ;$CA65D3
	.INCBIN"bin/battle_bgs/graphics/38.bin"

BATTLE_BACKGROUND_GFX_37: ;$CA7314
	.INCBIN"bin/battle_bgs/graphics/37.bin"

BATTLE_BACKGROUND_GFX_43: ;$CA7F6C
	.INCBIN"bin/battle_bgs/graphics/43.bin"

BATTLE_BACKGROUND_GFX_39: ;$CA8B4F
	.INCBIN"bin/battle_bgs/graphics/39.bin"

BATTLE_BACKGROUND_GFX_41: ;$CA965F
	.INCBIN"bin/battle_bgs/graphics/41.bin"

BATTLE_BACKGROUND_GFX_62: ;$CAA049
	.INCBIN"bin/battle_bgs/graphics/62.bin"

BATTLE_BACKGROUND_GFX_40: ;$CAA8F9
	.INCBIN"bin/battle_bgs/graphics/40.bin"

BATTLE_BACKGROUND_ARR_37: ;$CAB092
	.INCBIN"bin/battle_bgs/arrangements/37.bin"

BATTLE_BACKGROUND_GFX_66: ;$CAB75B
	.INCBIN"bin/battle_bgs/graphics/66.bin"

BATTLE_BACKGROUND_ARR_38: ;$CABE1E
	.INCBIN"bin/battle_bgs/arrangements/38.bin"

BATTLE_BACKGROUND_ARR_39: ;$CAC4A1
	.INCBIN"bin/battle_bgs/arrangements/39.bin"

BATTLE_BACKGROUND_ARR_42: ;$CACB09
	.INCBIN"bin/battle_bgs/arrangements/42.bin"

BATTLE_BACKGROUND_ARR_100: ;$CAD149
	.INCBIN"bin/battle_bgs/arrangements/100.bin"

BATTLE_BACKGROUND_GFX_56: ;$CAD755
	.INCBIN"bin/battle_bgs/graphics/56.bin"

BATTLE_BACKGROUND_GFX_90: ;$CAD79E
	.INCBIN"bin/battle_bgs/graphics/90.bin"

.INCLUDE "data/battle_backgrounds/graphics_pointers.asm"

.INCLUDE "data/battle_backgrounds/arrangement_pointers.asm"

.INCLUDE "data/battle_backgrounds/palette_pointers.asm"

.INCLUDE "data/battle_backgrounds/config_table.asm"

.INCLUDE "data/battle_backgrounds/scrolling_table.asm"

.INCLUDE "data/battle_backgrounds/distortion_table.asm"
