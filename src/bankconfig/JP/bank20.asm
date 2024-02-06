.SEGMENT "BANK20"
.INCLUDE "common.asm"
.INCLUDE "symbols/map.inc.asm"
.INCLUDE "symbols/misc.inc.asm"

TEXT_WINDOW_GFX:
	BINARY "graphics/text_window.gfx.lzhal"

FLAVOURED_TEXT_GFX:
	BINARY "graphics/flavoured_text.gfx.lzhal"

MOTHER2_ROMAJI_FONT:
	BINARY "fonts/hppp.gfx"

.INCLUDE "data/text_window_properties.asm"

.INCLUDE "data/text_window_flavour_palettes.asm"

MRSATURN_FONT_DATA:
	BINARY "fonts/unknown.gfx"

.INCLUDE "data/unknown/E01FC8-jp.asm"

.INCLUDE "data/movement_text_string_palette.asm"

.INCLUDE "data/map/town_map_gfx_pointers.asm"

TOWN_MAP_ONETT:
	BINARY "town_maps/0.bin.lzhal"

TOWN_MAP_TWOSON:
	BINARY "town_maps/1.bin.lzhal"

TOWN_MAP_THREED:
	BINARY "town_maps/2.bin.lzhal"

TOWN_MAP_FOURSIDE:
	BINARY "town_maps/3.bin.lzhal"

TOWN_MAP_SCARABA:
	BINARY "town_maps/4.bin.lzhal"

TOWN_MAP_SUMMERS:
	BINARY "town_maps/5.bin.lzhal"
