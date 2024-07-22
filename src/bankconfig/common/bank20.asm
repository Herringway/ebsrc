.SEGMENT "BANK20"
.INCLUDE "common.asm"
.INCLUDE "symbols/audiopacks.inc.asm"
.INCLUDE "symbols/misc.inc.asm"

TEXT_WINDOW_GFX:
	LOCALEBINARY "graphics/text_window.gfx.lzhal"

FLAVOURED_TEXT_GFX:
	BINARY "graphics/flavoured_text.gfx.lzhal"

.IF .DEFINED(USA)
	MOTHER2_ROMAJI_FONT:
		LOCALEBINARY "fonts/romaji.gfx"

	COMPRESSED_SRAM:
		LOCALEBINARY "mystery_sram.bin.lzhal"

	MRSATURN_FONT_DATA:
		LOCALEBINARY "fonts/mrsaturn.bin"

	MRSATURN_FONT_GFX:
		LOCALEBINARY "fonts/mrsaturn.gfx"
.ELSE
	MOTHER2_ROMAJI_FONT:
		LOCALEBINARY "fonts/hppp.gfx"
.ENDIF

.INCLUDE "data/text_window_properties.asm"

.INCLUDE "data/text_window_flavour_palettes.asm"

.IF .DEFINED(JPN)
	MRSATURN_FONT_DATA:
		LOCALEBINARY "fonts/unknown.gfx"
.INCLUDE "data/unknown/E01FC8-jp.asm"
.ENDIF

.INCLUDE "data/movement_text_string_palette.asm"

.INCLUDE "data/map/town_map_gfx_pointers.asm"

TOWN_MAP_ONETT:
	BINARY "town_maps/0.bin.lzhal"

TOWN_MAP_TWOSON:
	BINARY "town_maps/1.bin.lzhal"

TOWN_MAP_THREED:
	LOCALEBINARY "town_maps/2.bin.lzhal"

TOWN_MAP_FOURSIDE:
	BINARY "town_maps/3.bin.lzhal"

TOWN_MAP_SCARABA:
	LOCALEBINARY "town_maps/4.bin.lzhal"

TOWN_MAP_SUMMERS:
	BINARY "town_maps/5.bin.lzhal"

.IF .DEFINED(USA)
	INSERT_AUDIO_PACK 110
	.IF .DEFINED(PROTOTYPE19950327)
		INSERT_AUDIO_PACK 143
	.ELSE
		INSERT_AUDIO_PACK 6
	.ENDIF
.ENDIF