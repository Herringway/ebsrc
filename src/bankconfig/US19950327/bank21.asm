.SEGMENT "BANK21"
.INCLUDE "common-usa19950327.asm"
.INCLUDE "config-usa19950327.asm"
.INCLUDE "structs-proto.asm"
.INCLUDE "flyovermacros.asm"

COFFEE_SEQUENCE_TEXT: ;$E10000
	.INCLUDE "bin/US19950327/coffee.flyover"

TEA_SEQUENCE_TEXT: ;$E10652
	.INCLUDE "bin/US19950327/tea.flyover"

;$E10B86
	.INCLUDE "bin/US19950327/flyovers.flyover"

MAIN_FONT_DATA: ;$E10C7B
	.INCBIN "bin/US19950327/fonts/main.bin"

MAIN_FONT_GFX: ;$E10CDB
	.INCBIN "bin/US19950327/fonts/main.gfx"

BATTLE_FONT_DATA: ;$E118DB
	.INCBIN "bin/US19950327/fonts/battle.bin"

BATTLE_FONT_GFX: ;$E1193B
	.INCBIN "bin/US19950327/fonts/battle.gfx"

TINY_FONT_DATA: ;$E11F3B
	.INCBIN "bin/US19950327/fonts/tiny.bin"

TINY_FONT_GFX: ;$E11F9B
	.INCBIN "bin/US19950327/fonts/tiny.gfx"

LARGE_FONT_DATA: ;$E1229B
	.INCBIN "bin/US19950327/fonts/large.bin"

LARGE_FONT_GFX: ;$E122FB
	.INCBIN "bin/US19950327/fonts/large.gfx"

.INCLUDE "data/cast_sequence_formatting.asm"

.INCLUDE "data/photographer_cfg.asm"

COMPRESSED_PALETTE_UNKNOWN: ;$E1
	.INCBIN "bin/US19950327/unknown_palette.pal.lzhal"

.INCLUDE "data/credits-proto.asm"

.INCLUDE "unknown/E1/E14DE8.asm"

APE_ARRANGEMENT: ;$E14EC1
	.INCBIN "bin/US19950327/intro/logos/ape.arr.lzhal"

APE_GRAPHICS: ;$E14F2A
	.INCBIN "bin/US19950327/intro/logos/ape.gfx.lzhal"

APE_PALETTE: ;$E15130
	.INCBIN "bin/US19950327/intro/logos/ape.pal.lzhal"

HALKEN_ARRANGEMENT: ;$E15174
	.INCBIN "bin/US19950327/intro/logos/halken.arr.lzhal"

HALKEN_GRAPHICS: ;$E151E8
	.INCBIN "bin/US19950327/intro/logos/halken.gfx.lzhal"

HALKEN_PALETTE: ;$E153B8
	.INCBIN "bin/US19950327/intro/logos/halken.pal.lzhal"

NINTENDO_ARRANGEMENT: ;$E15455
	.INCBIN "bin/US19950327/intro/logos/nintendo.arr.lzhal"

NINTENDO_GRAPHICS: ;$E1549E
	.INCBIN "bin/US19950327/intro/logos/nintendo.gfx.lzhal"

NINTENDO_PALETTE: ;$E1558F
	.INCBIN "bin/US19950327/intro/logos/nintendo.pal.lzhal"

GAS_STATION_ARRANGEMENT: ;$E155D3
	.INCBIN "bin/US19950327/intro/gas_station.arr.lzhal"

GAS_STATION_GRAPHICS: ;$E15B55
	.INCBIN "bin/US19950327/intro/gas_station.gfx.lzhal"

GAS_STATION_PALETTE: ;$E1A85B
	.INCBIN "bin/US19950327/intro/gas_station.pal.lzhal"

GAS_STATION_PALETTE_2: ;$E1A901
	.INCBIN "bin/US19950327/intro/gas_station2.pal.lzhal"

PRODUCED_ITOI_ARRANGEMENT: ;$E1A983
	.INCBIN "bin/US19950327/intro/attract/produced_by_itoi.arr.lzhal"

PRODUCED_ITOI_GRAPHICS: ;$E1A9EF
	.INCBIN "bin/US19950327/intro/attract/produced_by_itoi.gfx.lzhal"

NINTENDO_PRESENTATION_ARRANGEMENT: ;$E1ABA5
	.INCBIN "bin/US19950327/intro/attract/nintendo_presentation.arr.lzhal"

NINTENDO_PRESENTATION_GRAPHICS: ;$E1ABF2
	.INCBIN "bin/US19950327/intro/attract/nintendo_presentation.gfx.lzhal"

NINTENDO_ITOI_PALETTE: ;$E1AD13
	.INCBIN "bin/US19950327/intro/attract/nintendo_itoi.pal.lzhal"

UNKNOWN_E1AE7C: ;$E1AE7C
	.INCBIN "bin/US19950327/E1AE7C.bin.lzhal"

UNKNOWN_E1AE83: ;$E1AE83
	.INCBIN "bin/US19950327/E1AE83.bin.lzhal"

UNKNOWN_E1AEFD: ;$E1AEFD
	.INCBIN "bin/US19950327/E1AEFD.bin.lzhal"

TITLE_SCREEN_ARRANGEMENT: ;$E1AE23
	.INCBIN "bin/US19950327/intro/title_screen.arr.lzhal"

TITLE_SCREEN_GRAPHICS: ;$E1B0BA
	.INCBIN "bin/US19950327/intro/title_screen.gfx.lzhal"

UNKNOWN_E1C6E5: ;$E1C6E5
	.INCBIN "bin/US19950327/intro/title_screen_letters.gfx.lzhal"

TITLE_SCREEN_PALETTE: ;$E1CB04
	.INCBIN "bin/US19950327/intro/title_screen.pal.lzhal"

.INCLUDE "data/unknown/E1CE08.asm"

UNKNOWN_E1CFAF: ;$E1CCAB
	.INCBIN "bin/US19950327/E1CFAF.gfx.lzhal"

UNKNOWN_E1D4F4:
	.INCBIN "bin/US19950327/E1D4F4.pal.lzhal"

UNKNOWN_E1D5E8: ;$E1D2E4
	.INCBIN "bin/US19950327/E1D5E8.arr.lzhal"

UNKNOWN_E1D6E1: ;$E1D6E1
	.INCBIN "bin/US19950327/E1D6E1.gfx.lzhal"

UNKNOWN_E1D815:
	.INCBIN "bin/US19950327/ending/cast_names.bin"

CAST_NAMES_GFX: ;$E1D541
	.INCBIN "bin/US19950327/ending/cast_names.gfx.lzhal"

;E1E1E3
.INCLUDE "data/unknown/E1E4E6.asm"

STAFF_CREDITS_FONT_GRAPHICS: ;$E1E31A
	.INCBIN "bin/US19950327/ending/credits_font.gfx.lzhal"

STAFF_CREDITS_FONT_PALETTE: ;$E1E6F4
	.INCBIN "bin/US19950327/ending/credits_font.pal"

.INCLUDE "data/unknown/E1E924.asm"

.INCLUDE "data/unknown/E1E94A.asm"

TOWN_MAP_LABEL_GFX: ;$E1EA50
	.INCBIN "bin/US19950327/town_maps/label.gfx.lzhal"

TOWN_MAP_ICON_PALETTE: ;$E1E830
	.INCBIN "bin/US19950327/town_maps/icon.pal"

.INCLUDE "data/unknown/E1F203.asm"

.INCLUDE "data/map/town_map_icon_placement_pointer_table.asm"

.INCLUDE "data/map/town_map_icon_placement_data.asm"

AUDIO_PACK_65: ;$E1F361
	.INCBIN "bin/US19950327/audiopacks/65.bin"
