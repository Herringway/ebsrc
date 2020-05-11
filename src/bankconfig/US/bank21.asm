.SEGMENT "BANK21"
.INCLUDE "common-usa.asm"
.INCLUDE "config.asm"
.INCLUDE "structs.asm"
.INCLUDE "flyovermacros.asm"

COFFEE_SEQUENCE_TEXT: ;$E10000
	.INCLUDE "bin/US/coffee.flyover"

TEA_SEQUENCE_TEXT: ;$E10652
	.INCLUDE "bin/US/tea.flyover"

;$E10B86
	.INCLUDE "bin/US/flyovers.flyover"

MAIN_FONT_DATA: ;$E10C7A
	.INCBIN "bin/US/fonts/main.bin"

MAIN_FONT_GFX: ;$E10CDA
	.INCBIN "bin/US/fonts/main.gfx"

BATTLE_FONT_DATA: ;$E118DA
	.INCBIN "bin/US/fonts/battle.bin"

BATTLE_FONT_GFX: ;$E1193A
	.INCBIN "bin/US/fonts/battle.gfx"

TINY_FONT_DATA: ;$E11F3A
	.INCBIN "bin/US/fonts/tiny.bin"

TINY_FONT_GFX: ;$E11F9A
	.INCBIN "bin/US/fonts/tiny.gfx"

LARGE_FONT_DATA: ;$E1229A
	.INCBIN "bin/US/fonts/large.bin"

LARGE_FONT_GFX: ;$E122FA
	.INCBIN "bin/US/fonts/large.gfx"

.INCLUDE "data/cast_sequence_formatting.asm"

.INCLUDE "data/photographer_cfg.asm"

COMPRESSED_PALETTE_UNKNOWN: ;$E1374A
	.INCBIN "bin/US/unknown_palette.pal.lzhal"

.INCLUDE "data/credits.asm"

.INCLUDE "unknown/E1/E14DE8.asm"

APE_ARRANGEMENT: ;$E14EC1
	.INCBIN "bin/US/intro/logos/ape.arr"

APE_GRAPHICS: ;$E14F2A
	.INCBIN "bin/US/intro/logos/ape.gfx"

APE_PALETTE: ;$E15130
	.INCBIN "bin/US/intro/logos/ape.pal"

HALKEN_ARRANGEMENT: ;$E15174
	.INCBIN "bin/US/intro/logos/halken.arr"

HALKEN_GRAPHICS: ;$E151E8
	.INCBIN "bin/US/intro/logos/halken.gfx"

HALKEN_PALETTE: ;$E153B8
	.INCBIN "bin/US/intro/logos/halken.pal"

NINTENDO_ARRANGEMENT: ;$E15455
	.INCBIN "bin/US/intro/logos/nintendo.arr"

NINTENDO_GRAPHICS: ;$E1549E
	.INCBIN "bin/US/intro/logos/nintendo.gfx"

NINTENDO_PALETTE: ;$E1558F
	.INCBIN "bin/US/intro/logos/nintendo.pal"

GAS_STATION_ARRANGEMENT: ;$E155D3
	.INCBIN "bin/US/intro/gas_station.arr"

GAS_STATION_GRAPHICS: ;$E15B33
	.INCBIN "bin/US/intro/gas_station.gfx"

GAS_STATION_PALETTE: ;$E1A9B7
	.INCBIN "bin/US/intro/gas_station.pal"

GAS_STATION_PALETTE_2: ;$E1AA5D
	.INCBIN "bin/US/intro/gas_station2.pal"

PRODUCED_ITOI_ARRANGEMENT: ;$E1AADF
	.INCBIN "bin/US/intro/attract/produced_by_itoi.arr"

PRODUCED_ITOI_GRAPHICS: ;$E1AB4B
	.INCBIN "bin/US/intro/attract/produced_by_itoi.gfx"

NINTENDO_PRESENTATION_ARRANGEMENT: ;$E1AD01
	.INCBIN "bin/US/intro/attract/nintendo_presentation.arr"

NINTENDO_PRESENTATION_GRAPHICS: ;$E1AD4E
	.INCBIN "bin/US/intro/attract/nintendo_presentation.gfx"

NINTENDO_ITOI_PALETTE: ;$E1AE6F
	.INCBIN "bin/US/intro/attract/nintendo_itoi.pal"

.INCLUDE "data/unknown/E1AE7C.asm"

.INCLUDE "data/unknown/E1AE83.asm"

.INCLUDE "data/unknown/E1AEFD.asm"

TITLE_SCREEN_ARRANGEMENT: ;$E1AF7D
	.INCBIN "bin/US/intro/title_screen.arr"

TITLE_SCREEN_GRAPHICS: ;$E1B211
	.INCBIN "bin/US/intro/title_screen.gfx"

.INCLUDE "data/unknown/E1C6E5.asm"

TITLE_SCREEN_PALETTE: ;$E1CDE1
	.INCBIN "bin/US/intro/title_screen.pal"

.INCLUDE "data/unknown/E1CE08.asm"

.INCLUDE "data/unknown/E1CFAF.asm"

.INCLUDE "data/unknown/E1D4F4.asm"

.INCLUDE "data/unknown/E1D5E8.asm"

.INCLUDE "data/unknown/E1D6E1.asm"

.INCLUDE "data/unknown/E1D815.asm"

.INCLUDE "data/unknown/E1D835.asm"

.INCLUDE "data/unknown/E1E4E7.asm"

STAFF_CREDITS_FONT_GRAPHICS: ;$E1E528
	.INCBIN "bin/US/ending/credits_font.gfx.lzhal"

STAFF_CREDITS_FONT_PALETTE: ;$E1E914
	.INCBIN "bin/US/ending/credits_font.pal"

.INCLUDE "data/unknown/E1E924.asm"

.INCLUDE "data/unknown/E1E94A.asm"

TOWN_MAP_LABEL_GFX: ;$E1EA50
	.INCBIN "bin/US/town_maps/label.gfx.lzhal"

TOWN_MAP_ICON_PALETTE: ;$E1F1C3
	.INCBIN "bin/US/town_maps/icon.pal"

.INCLUDE "data/unknown/E1F203.asm"

.INCLUDE "data/map/town_map_icon_placement_pointer_table.asm"

.INCLUDE "data/map/town_map_icon_placement_data.asm"

AUDIO_PACK_123: ;$E1F581
	.INCBIN "bin/US/audiopacks/123.bin"
