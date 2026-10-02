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

.IF .DEFINED(JPN)
	UNKNOWN_E10000:
		LOCALEBINARY "E10000.bin"
.ENDIF

COFFEE_SEQUENCE_TEXT:
	LOCALEINCLUDE "coffee.flyover"

TEA_SEQUENCE_TEXT:
	LOCALEINCLUDE "tea.flyover"

	LOCALEINCLUDE "flyovers.flyover"

.IF .DEFINED(JPN)
	UNKNOWN_E1213E:
		LOCALEBINARY "E1213E.bin"

	UNKNOWN_E12381:
		LOCALEBINARY "E12381.bin"
.ELSE
	MAIN_FONT_DATA:
		LOCALEBINARY "fonts/main.bin"

	MAIN_FONT_GFX:
		LOCALEBINARY "fonts/main.gfx"

	BATTLE_FONT_DATA:
		LOCALEBINARY "fonts/battle.bin"

	BATTLE_FONT_GFX:
		LOCALEBINARY "fonts/battle.gfx"

	TINY_FONT_DATA:
		LOCALEBINARY "fonts/tiny.bin"

	TINY_FONT_GFX:
		LOCALEBINARY "fonts/tiny.gfx"

	LARGE_FONT_DATA:
		LOCALEBINARY "fonts/large.bin"

	LARGE_FONT_GFX:
		LOCALEBINARY "fonts/large.gfx"

	.INCLUDE "data/cast_sequence_formatting.asm"
.ENDIF

.INCLUDE "data/photographer_cfg.asm"

PHOTOGRAPH_MAP_PALETTE:
	BINARY "unknown_palette.pal.lzhal"

.IF .DEFINED(JPN)
	.INCLUDE "data/credits-jp.asm"
.ELSEIF .DEFINED(PROTOTYPE19950327)
	.INCLUDE "data/credits-proto.asm"
.ELSE
	.INCLUDE "data/credits.asm"
.ENDIF

.INCLUDE "system/debug/debug_battler_info.asm"

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
	LOCALEBINARY "intro/logos/nintendo.arr.lzhal"

NINTENDO_GRAPHICS:
	LOCALEBINARY "intro/logos/nintendo.gfx.lzhal"

NINTENDO_PALETTE:
	BINARY "intro/logos/nintendo.pal.lzhal"

GAS_STATION_ARRANGEMENT:
	LOCALEBINARY "intro/gas_station.arr.lzhal"

GAS_STATION_GRAPHICS:
	LOCALEBINARY "intro/gas_station.gfx.lzhal"

GAS_STATION_PALETTE:
	BINARY "intro/gas_station.pal.lzhal"

GAS_STATION_PALETTE_2:
	BINARY "intro/gas_station2.pal.lzhal"

.IF .DEFINED(JPN)
	UNKNOWN_ARRANGEMENT_9DE1:
		LOCALEBINARY "intro/unknown.arr.lzhal"

	TITLE_SCREEN_GRAPHICS:
		LOCALEBINARY "intro/title_screen.gfx.lzhal"

	UNKNOWN_ARRANGEMENT_B18C:
		LOCALEBINARY "intro/unknown2.arr.lzhal"

	TITLE_SCREEN_ARRANGEMENT:
		LOCALEBINARY "intro/title_screen.arr.lzhal"

	UNKNOWN_E1C6E5:
		LOCALEBINARY "intro/title_screen_letters.gfx.lzhal"

	UNKNOWN_E1C291:
		LOCALEBINARY "unknown3.bin.lzhal"
.ENDIF

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

.IF .DEFINED(USA)
	TITLE_SCREEN_LETTER_PALETTE:
		LOCALEBINARY "E1AE7C.bin.lzhal"

	TITLE_SCREEN_LETTER_SHIMMER_PALETTE:
		LOCALEBINARY "E1AE83.bin.lzhal"

	TITLE_SCREEN_LETTER_GLOW_PALETTE:
		LOCALEBINARY "E1AEFD.bin.lzhal"

	TITLE_SCREEN_ARRANGEMENT:
		LOCALEBINARY "intro/title_screen.arr.lzhal"

	TITLE_SCREEN_GRAPHICS:
		LOCALEBINARY "intro/title_screen.gfx.lzhal"

	TITLE_SCREEN_LETTERS:
		LOCALEBINARY "intro/title_screen_letters.gfx.lzhal"

	TITLE_SCREEN_PALETTE:
		LOCALEBINARY "intro/title_screen.pal.lzhal"
.ENDIF

.INCLUDE "data/graphics/title_screen_letter_spritemaps.asm"

.INCLUDE "data/graphics/title_screen_letter_spritemap_pointers.asm"

GAME_OVER_TILES:
	BINARY "E1CFAF.gfx.lzhal"

GAME_OVER_PALETTE:
	BINARY "E1D4F4.pal.lzhal"

GAME_OVER_TILEMAP:
	BINARY "E1D5E8.arr.lzhal"

.IF .DEFINED(JPN)
	CAST_NAMES_GFX:
		LOCALEBINARY "ending/cast_names.gfx.lzhal"

	.INCLUDE "data/graphics/cast_text_palette.asm"
.ELSE
	SPECIAL_CAST_NAME_GRAPHICS:
		LOCALEBINARY "E1D6E1.gfx.lzhal"

	.INCLUDE "data/graphics/cast_text_palette.asm"

	CAST_NAMES_GFX:
		LOCALEBINARY "ending/cast_names.gfx.lzhal"
.ENDIF

CAST_NAME_PALETTE:
	LOCALEBINARY "ending/cast_names.pal.lzhal"

STAFF_CREDITS_FONT_GRAPHICS:
	LOCALEBINARY "ending/credits_font.gfx.lzhal"

STAFF_CREDITS_FONT_PALETTE:
	BINARY "ending/credits_font.pal"

.INCLUDE "data/unused/E1E924.asm"

.INCLUDE "data/binary/credits_photographer_border_palette.asm"

.INCLUDE "data/binary/credits_photographer_border_tilemap.asm"

TOWN_MAP_LABEL_GFX:
	LOCALEBINARY "town_maps/label.gfx.lzhal"

TOWN_MAP_ICON_PALETTE:
	BINARY "town_maps/icon.pal"

.IF .DEFINED(JPN)
	.INCLUDE "data/graphics/town_map_icon_spritemaps-jp.asm"
.ELSE
	.INCLUDE "data/graphics/town_map_icon_spritemaps.asm"
.ENDIF

.INCLUDE "data/graphics/town_map_icon_spritemap_pointers.asm"

.INCLUDE "data/graphics/blinking_town_map_icons.asm"

.INCLUDE "data/map/town_map_icon_placement_pointer_table.asm"

.INCLUDE "data/map/town_map_icon_placement_data.asm"

.IF .DEFINED(USA)
	.IF .DEFINED(PROTOTYPE19950327)
		INSERT_AUDIO_PACK 65
	.ELSE
		INSERT_AUDIO_PACK 123
	.ENDIF
.ENDIF
