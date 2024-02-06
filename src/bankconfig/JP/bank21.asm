.SEGMENT "BANK21"
.INCLUDE "common.asm"
.INCLUDE "config.asm"
.INCLUDE "structs.asm"
.INCLUDE "flyovermacros.asm"
.INCLUDE "symbols/bank00.inc.asm"
.INCLUDE "symbols/bank01.inc.asm"
.INCLUDE "symbols/globals.inc.asm"
.INCLUDE "symbols/misc.inc.asm"

UNKNOWN_E10000:
	BINARY "E10000.bin"


COFFEE_SEQUENCE_TEXT:
	.INCLUDE "bin/JP/coffee.flyover"

TEA_SEQUENCE_TEXT:
	.INCLUDE "bin/JP/tea.flyover"

	.INCLUDE "bin/JP/flyovers.flyover"

UNKNOWN_E1213E:
	BINARY "E1213E.bin"

UNKNOWN_E12381:
	BINARY "E12381.bin"

.INCLUDE "data/photographer_cfg.asm"

COMPRESSED_PALETTE_UNKNOWN:
	BINARY "unknown_palette.pal.lzhal"

.INCLUDE "data/credits-jp.asm"

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

UNKNOWN_ARRANGEMENT_9DE1:
	BINARY "intro/unknown.arr.lzhal"

TITLE_SCREEN_GRAPHICS:
	BINARY "intro/title_screen.gfx.lzhal"

UNKNOWN_ARRANGEMENT_B18C:
	BINARY "intro/unknown2.arr.lzhal"

TITLE_SCREEN_ARRANGEMENT:
	BINARY "intro/title_screen.arr.lzhal"

UNKNOWN_E1C6E5:
	BINARY "intro/title_screen_letters.gfx.lzhal"

UNKNOWN_E1C291:
	BINARY "unknown3.bin.lzhal"

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

.INCLUDE "data/unknown/E1CE08.asm"

UNKNOWN_E1CFAF:
	BINARY "E1CFAF.gfx.lzhal"

UNKNOWN_E1D4F4:
	BINARY "E1D4F4.pal.lzhal"

UNKNOWN_E1D5E8:
	BINARY "E1D5E8.arr.lzhal"

CAST_NAMES_GFX:
	BINARY "ending/cast_names.gfx.lzhal"

.INCLUDE "data/unknown/E1D815.asm"

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

.INCLUDE "data/unknown/E1F203-jp.asm"

.INCLUDE "data/unknown/E1F44C.asm"

.INCLUDE "data/unknown/E1F47A.asm"

.INCLUDE "data/map/town_map_icon_placement_pointer_table.asm"

.INCLUDE "data/map/town_map_icon_placement_data.asm"
