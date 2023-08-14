.SEGMENT "BANK20"
.INCLUDE "common.asm"
.INCLUDE "symbols/audiopacks.inc.asm"
.INCLUDE "symbols/misc.inc.asm"

TEXT_WINDOW_GFX: ;$E00000
	BINARY "graphics/text_window.gfx.lzhal"

FLAVOURED_TEXT_GFX: ;$E00754
	BINARY "graphics/flavoured_text.gfx.lzhal"

MOTHER2_ROMAJI_FONT: ;$E007A0
	BINARY "fonts/romaji.gfx"

COMPRESSED_SRAM: ;$E009B4
	BINARY "mystery_sram.bin.lzhal"

MRSATURN_FONT_DATA: ;$E01359
	BINARY "fonts/mrsaturn.bin"

MRSATURN_FONT_GFX: ;$E013B9
	BINARY "fonts/mrsaturn.gfx"

.INCLUDE "data/text_window_properties.asm"

.INCLUDE "data/text_window_flavour_palettes.asm"

.INCLUDE "data/movement_text_string_palette.asm"

.INCLUDE "data/map/town_map_gfx_pointers.asm"

TOWN_MAP_ONETT: ;$E021A8
	BINARY "town_maps/0.bin.lzhal"

TOWN_MAP_TWOSON: ;$E04920
	BINARY "town_maps/1.bin.lzhal"

TOWN_MAP_THREED: ;$E06721
	BINARY "town_maps/2.bin.lzhal"

TOWN_MAP_FOURSIDE: ;$E08379
	BINARY "town_maps/3.bin.lzhal"

TOWN_MAP_SCARABA: ;$E0ADB4
	BINARY "town_maps/4.bin.lzhal"

TOWN_MAP_SUMMERS: ;$E0C7F1
	BINARY "town_maps/5.bin.lzhal"

AUDIO_PACK_110: ;$E0ED03
	AUDIOPACK "audiopacks/110.ebm"

AUDIO_PACK_6: ;$E0FCE1
	AUDIOPACK "audiopacks/6.ebm"
