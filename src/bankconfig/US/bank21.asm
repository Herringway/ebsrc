.SEGMENT "BANK21"
.INCLUDE "common.asm"
.INCLUDE "config.asm"
.INCLUDE "structs.asm"
.INCLUDE "flyovermacros.asm"
.INCLUDE "symbols/bank00.inc.asm"
.INCLUDE "symbols/bank01.inc.asm"
.INCLUDE "symbols/audiopacks.inc.asm"
.INCLUDE "symbols/globals.inc.asm"
.INCLUDE "symbols/misc.inc.asm"

COFFEE_SEQUENCE_TEXT:
	.INCLUDE "bin/US/coffee.flyover"

TEA_SEQUENCE_TEXT:
	.INCLUDE "bin/US/tea.flyover"

	.INCLUDE "bin/US/flyovers.flyover"

MAIN_FONT_DATA:
	BINARY "fonts/main.bin"

MAIN_FONT_GFX:
	BINARY "fonts/main.gfx"

BATTLE_FONT_DATA:
	BINARY "fonts/battle.bin"

BATTLE_FONT_GFX:
	BINARY "fonts/battle.gfx"

TINY_FONT_DATA:
	BINARY "fonts/tiny.bin"

TINY_FONT_GFX:
	BINARY "fonts/tiny.gfx"

LARGE_FONT_DATA:
	BINARY "fonts/large.bin"

LARGE_FONT_GFX:
	BINARY "fonts/large.gfx"

.INCLUDE "data/cast_sequence_formatting.asm"

.INCLUDE "data/photographer_cfg.asm"

COMPRESSED_PALETTE_UNKNOWN:
	BINARY "unknown_palette.pal.lzhal"

.INCLUDE "data/credits.asm"

.INCLUDE "unknown/E1/E14DE8.asm"

APE_ARRANGEMENT:
	BINARY "intro/logos/ape.arr.lzhal"

APE_GRAPHICS:
	BINARY "intro/logos/ape.gfx.lzhal"

APE_PALETTE:
	BINARY "intro/logos/ape.pal.lzhal"

HALKEN_ARRANGEMENT:
	BINARY "intro/logos/halken.arr.lzhal"

HALKEN_GRAPHICS:
	BINARY "intro/logos/halken.gfx.lzhal"

HALKEN_PALETTE:
	BINARY "intro/logos/halken.pal.lzhal"

NINTENDO_ARRANGEMENT:
	BINARY "intro/logos/nintendo.arr.lzhal"

NINTENDO_GRAPHICS:
	BINARY "intro/logos/nintendo.gfx.lzhal"

NINTENDO_PALETTE:
	BINARY "intro/logos/nintendo.pal.lzhal"

GAS_STATION_ARRANGEMENT:
	BINARY "intro/gas_station.arr.lzhal"

GAS_STATION_GRAPHICS:
	BINARY "intro/gas_station.gfx.lzhal"

GAS_STATION_PALETTE:
	BINARY "intro/gas_station.pal.lzhal"

GAS_STATION_PALETTE_2:
	BINARY "intro/gas_station2.pal.lzhal"

PRODUCED_ITOI_ARRANGEMENT:
	BINARY "intro/attract/produced_by_itoi.arr.lzhal"

PRODUCED_ITOI_GRAPHICS:
	BINARY "intro/attract/produced_by_itoi.gfx.lzhal"

NINTENDO_PRESENTATION_ARRANGEMENT:
	BINARY "intro/attract/nintendo_presentation.arr.lzhal"

NINTENDO_PRESENTATION_GRAPHICS:
	BINARY "intro/attract/nintendo_presentation.gfx.lzhal"

NINTENDO_ITOI_PALETTE:
	BINARY "intro/attract/nintendo_itoi.pal.lzhal"

UNKNOWN_E1AE7C:
	BINARY "E1AE7C.bin.lzhal"

UNKNOWN_E1AE83:
	BINARY "E1AE83.bin.lzhal"

UNKNOWN_E1AEFD:
	BINARY "E1AEFD.bin.lzhal"

TITLE_SCREEN_ARRANGEMENT:
	BINARY "intro/title_screen.arr.lzhal"

TITLE_SCREEN_GRAPHICS:
	BINARY "intro/title_screen.gfx.lzhal"

UNKNOWN_E1C6E5:
	BINARY "intro/title_screen_letters.gfx.lzhal"

TITLE_SCREEN_PALETTE:
	BINARY "intro/title_screen.pal.lzhal"

.INCLUDE "data/unknown/E1CE08.asm"

UNKNOWN_E1CFAF:
	BINARY "E1CFAF.gfx.lzhal"

UNKNOWN_E1D4F4:
	BINARY "E1D4F4.pal.lzhal"

UNKNOWN_E1D5E8:
	BINARY "E1D5E8.arr.lzhal"

UNKNOWN_E1D6E1:
	BINARY "E1D6E1.gfx.lzhal"

.INCLUDE "data/unknown/E1D815.asm"

CAST_NAMES_GFX:
	BINARY "ending/cast_names.gfx.lzhal"

UNKNOWN_E1E4E6:
	BINARY "ending/cast_names.pal.lzhal"

STAFF_CREDITS_FONT_GRAPHICS:
	BINARY "ending/credits_font.gfx.lzhal"

STAFF_CREDITS_FONT_PALETTE:
	BINARY "ending/credits_font.pal"

.INCLUDE "data/unknown/E1E924.asm"

.INCLUDE "data/unknown/E1E94A.asm"

TOWN_MAP_LABEL_GFX:
	BINARY "town_maps/label.gfx.lzhal"

TOWN_MAP_ICON_PALETTE:
	BINARY "town_maps/icon.pal"

.INCLUDE "data/unknown/E1F203.asm"

.INCLUDE "data/unknown/E1F44C.asm"

.INCLUDE "data/unknown/E1F47A.asm"

.INCLUDE "data/map/town_map_icon_placement_pointer_table.asm"

.INCLUDE "data/map/town_map_icon_placement_data.asm"

AUDIO_PACK_123:
	AUDIOPACK "audiopacks/123.ebm"
