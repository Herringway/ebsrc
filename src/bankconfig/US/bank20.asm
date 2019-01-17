.SEGMENT "BANK20"
.INCLUDE "common.asm"

TEXT_WINDOW_GFX: ;$E00000
	.INCBIN "bin/graphics/text_window.gfx"

FLAVOURED_TEXT_GFX: ;$E00754
	.INCBIN "bin/graphics/flavoured_text.gfx"

MOTHER2_ROMAJI_FONT: ;$E007A0
	.INCBIN "bin/fonts/romaji.gfx"

COMPRESSED_SRAM: ;$E009B4
	.INCBIN "bin/mystery_sram.bin.lzhal"

MRSATURN_FONT_DATA: ;$E01359
	.INCBIN "bin/fonts/mrsaturn.bin"

MRSATURN_FONT_GFX: ;$E013B9
	.INCBIN "bin/fonts/mrsaturn.gfx"

.INCLUDE "data/text_window_properties.asm"

.INCLUDE "data/text_window_flavour_palettes.asm"

.INCLUDE "data/movement_text_string_palette.asm"

.INCLUDE "data/map/town_map_gfx_pointers.asm"

TOWN_MAP_ONETT: ;$E021A8
	.INCBIN "bin/town_maps/0.bin"

TOWN_MAP_TWOSON: ;$E04920
	.INCBIN "bin/town_maps/1.bin"

TOWN_MAP_THREED: ;$E06721
	.INCBIN "bin/town_maps/2.bin"

TOWN_MAP_FOURSIDE: ;$E08379
	.INCBIN "bin/town_maps/3.bin"

TOWN_MAP_SCARABA: ;$E0ADB4
	.INCBIN "bin/town_maps/4.bin"

TOWN_MAP_SUMMERS: ;$E0C7F1
	.INCBIN "bin/town_maps/5.bin"

AUDIO_PACK_110: ;$E0ED03
	.INCBIN "bin/audiopacks/110.bin"

AUDIO_PACK_6: ;$E0FCE1
	.INCBIN "bin/audiopacks/6.bin"
