.SEGMENT "BANK20"
.INCLUDE "common.asm"

TEXT_WINDOW_GFX: ;$E00000
	BINARY "graphics/text_window.gfx.lzhal"

FLAVOURED_TEXT_GFX: ;$E00751
	BINARY "graphics/flavoured_text.gfx.lzhal"

MOTHER2_ROMAJI_FONT: ;$E0079D
	BINARY "fonts/romaji.gfx"

COMPRESSED_SRAM: ;$E009B1
	BINARY "mystery_sram.bin.lzhal"

MRSATURN_FONT_DATA: ;$E01356
	BINARY "fonts/mrsaturn.bin"

MRSATURN_FONT_GFX: ;$E013B9
	BINARY "fonts/mrsaturn.gfx"

.INCLUDE "data/text_window_properties.asm"

.INCLUDE "data/text_window_flavour_palettes.asm"

.INCLUDE "data/movement_text_string_palette.asm"

.INCLUDE "data/map/town_map_gfx_pointers.asm"

TOWN_MAP_ONETT: ;$E021A5
	BINARY "town_maps/0.bin.lzhal"

TOWN_MAP_TWOSON: ;$E0491D
	BINARY "town_maps/1.bin.lzhal"

TOWN_MAP_THREED: ;$E0671E
	BINARY "town_maps/2.bin.lzhal"

TOWN_MAP_FOURSIDE: ;$E08376
	BINARY "town_maps/3.bin.lzhal"

TOWN_MAP_SCARABA: ;$E0ADB1
	BINARY "town_maps/4.bin.lzhal"

TOWN_MAP_SUMMERS: ;$E0C814
	BINARY "town_maps/5.bin.lzhal"

AUDIO_PACK_110: ;$E0ED26
	AUDIOPACKBIN $18, $6C68, "audiopacks/110-1.bin"
	AUDIOPACKBIN $FA0, $95B0, "audiopacks/110-2.bin"
	AUDIOPACKBIN $18, $6E9C, "audiopacks/110-3.bin"
	AUDIOPACK 0

AUDIO_PACK_143: ;$E0FD04
	AUDIOPACKBIN $2F1, $5800, "audiopacks/143.bin"
	AUDIOPACK 0
