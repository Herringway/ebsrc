.SEGMENT "BANK21"
.INCLUDE "common.asm"
.INCLUDE "config.asm"
.INCLUDE "structs.asm"
.INCLUDE "flyovermacros.asm"
.INCLUDE "symbols/bank00.inc.asm"
.INCLUDE "symbols/bank01.inc.asm"
.INCLUDE "symbols/globals.inc.asm"
.INCLUDE "symbols/misc.inc.asm"

UNKNOWN_E10000: ;$E10000
	BINARY "E10000.bin"


COFFEE_SEQUENCE_TEXT: ;$E10000
	.INCLUDE "bin/JP/coffee.flyover"

TEA_SEQUENCE_TEXT: ;$E10652
	.INCLUDE "bin/JP/tea.flyover"

;$E10B86
	.INCLUDE "bin/JP/flyovers.flyover"

UNKNOWN_E1213E: ;$E1213E
	BINARY "E1213E.bin"

UNKNOWN_E12381: ;$E12381
	BINARY "E12381.bin"

.INCLUDE "data/photographer_cfg.asm"

COMPRESSED_PALETTE_UNKNOWN: ;$E1374A
	BINARY "unknown_palette.pal.lzhal"

.INCLUDE "data/credits-jp.asm"

.INCLUDE "unknown/E1/E14DE8.asm"

APE_ARRANGEMENT: ;$E14EC1
	BINARY "intro/logos/ape.arr.lzhal"

APE_GRAPHICS: ;$E14F2A
	BINARY "intro/logos/ape.gfx.lzhal"

APE_PALETTE: ;$E15130
	BINARY "intro/logos/ape.pal.lzhal"

HALKEN_ARRANGEMENT: ;$E15174
	BINARY "intro/logos/halken.arr.lzhal"

HALKEN_GRAPHICS: ;$E151E8
	BINARY "intro/logos/halken.gfx.lzhal"

HALKEN_PALETTE: ;$E153B8
	BINARY "intro/logos/halken.pal.lzhal"

NINTENDO_ARRANGEMENT: ;$E15455
	BINARY "intro/logos/nintendo.arr.lzhal"

NINTENDO_GRAPHICS: ;$E1549E
	BINARY "intro/logos/nintendo.gfx.lzhal"

NINTENDO_PALETTE: ;$E1558F
	BINARY "intro/logos/nintendo.pal.lzhal"

GAS_STATION_ARRANGEMENT: ;$E155D3
	BINARY "intro/gas_station.arr.lzhal"

GAS_STATION_GRAPHICS: ;$E15B33
	BINARY "intro/gas_station.gfx.lzhal"

GAS_STATION_PALETTE: ;$E1A9B7
	BINARY "intro/gas_station.pal.lzhal"

GAS_STATION_PALETTE_2: ;$E1AA5D
	BINARY "intro/gas_station2.pal.lzhal"

UNKNOWN_ARRANGEMENT_9DE1: ;$E19DE1
	BINARY "intro/unknown.arr.lzhal"

TITLE_SCREEN_GRAPHICS: ;$E1B211
	BINARY "intro/title_screen.gfx.lzhal"

UNKNOWN_ARRANGEMENT_B18C: ;$E19DE1
	BINARY "intro/unknown2.arr.lzhal"

TITLE_SCREEN_ARRANGEMENT: ;$E1AF7D
	BINARY "intro/title_screen.arr.lzhal"

UNKNOWN_E1C6E5: ;$E1C6E5
	BINARY "intro/title_screen_letters.gfx.lzhal"

UNKNOWN_E1C291: ;$E1C291
	BINARY "unknown3.bin.lzhal"

PRODUCED_ITOI_ARRANGEMENT: ;$E1AADF
	BINARY "intro/attract/produced_by_itoi.arr.lzhal"

PRODUCED_ITOI_GRAPHICS: ;$E1AB4B
	BINARY "intro/attract/produced_by_itoi.gfx.lzhal"

NINTENDO_PRESENTATION_ARRANGEMENT: ;$E1AD01
	BINARY "intro/attract/nintendo_presentation.arr.lzhal"

NINTENDO_PRESENTATION_GRAPHICS: ;$E1AD4E
	BINARY "intro/attract/nintendo_presentation.gfx.lzhal"

NINTENDO_ITOI_PALETTE: ;$E1AE6F
	BINARY "intro/attract/nintendo_itoi.pal.lzhal"

.INCLUDE "data/unknown/E1CE08.asm"

UNKNOWN_E1CFAF: ;$E1CCAB
	BINARY "E1CFAF.gfx.lzhal"

UNKNOWN_E1D4F4:
	BINARY "E1D4F4.pal.lzhal"

UNKNOWN_E1D5E8: ;$E1D2E4
	BINARY "E1D5E8.arr.lzhal"

CAST_NAMES_GFX: ;$E1D835
	BINARY "ending/cast_names.gfx.lzhal"

.INCLUDE "data/unknown/E1D815.asm"

UNKNOWN_E1E4E6: ;$E1E4E6
	BINARY "ending/cast_names.pal.lzhal"

STAFF_CREDITS_FONT_GRAPHICS: ;$E1E528
	BINARY "ending/credits_font.gfx.lzhal"

STAFF_CREDITS_FONT_PALETTE: ;$E1E914
	BINARY "ending/credits_font.pal"

.INCLUDE "data/unknown/E1E924.asm"

.INCLUDE "data/unknown/E1E94A.asm"

TOWN_MAP_LABEL_GFX: ;$E1EA50
	BINARY "town_maps/label.gfx.lzhal"

TOWN_MAP_ICON_PALETTE: ;$E1F1C3
	BINARY "town_maps/icon.pal"

.INCLUDE "data/unknown/E1F203-jp.asm"

.INCLUDE "data/unknown/E1F44C.asm"

.INCLUDE "data/unknown/E1F47A.asm"

.INCLUDE "data/map/town_map_icon_placement_pointer_table.asm"

.INCLUDE "data/map/town_map_icon_placement_data.asm"
