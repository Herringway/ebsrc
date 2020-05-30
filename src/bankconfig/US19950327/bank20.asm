.SEGMENT "BANK20"
.INCLUDE "common-usa19950327.asm"

TEXT_WINDOW_GFX: ;$E00000
	.INCBIN "bin/US19950327/graphics/text_window.gfx.lzhal"

FLAVOURED_TEXT_GFX: ;$E00751
	.INCBIN "bin/US19950327/graphics/flavoured_text.gfx.lzhal"

MOTHER2_ROMAJI_FONT: ;$E0079D
	.INCBIN "bin/US19950327/fonts/romaji.gfx"

COMPRESSED_SRAM: ;$E009B1
	.INCBIN "bin/US19950327/mystery_sram.bin.lzhal"

MRSATURN_FONT_DATA: ;$E01356
	.INCBIN "bin/US19950327/fonts/mrsaturn.bin"

MRSATURN_FONT_GFX: ;$E013B9
	.INCBIN "bin/US19950327/fonts/mrsaturn.gfx"

.INCLUDE "data/text_window_properties.asm"

.INCLUDE "data/text_window_flavour_palettes.asm"

.INCLUDE "data/movement_text_string_palette.asm"

.INCLUDE "data/map/town_map_gfx_pointers.asm"

TOWN_MAP_ONETT: ;$E021A5
	.INCBIN "bin/US19950327/town_maps/0.bin.lzhal"

TOWN_MAP_TWOSON: ;$E0491D
	.INCBIN "bin/US19950327/town_maps/1.bin.lzhal"

TOWN_MAP_THREED: ;$E0671E
	.INCBIN "bin/US19950327/town_maps/2.bin.lzhal"

TOWN_MAP_FOURSIDE: ;$E08376
	.INCBIN "bin/US19950327/town_maps/3.bin.lzhal"

TOWN_MAP_SCARABA: ;$E0ADB1
	.INCBIN "bin/US19950327/town_maps/4.bin.lzhal"

TOWN_MAP_SUMMERS: ;$E0C814
	.INCBIN "bin/US19950327/town_maps/5.bin.lzhal"

AUDIO_PACK_110: ;$E0ED26
	.INCBIN "bin/US19950327/audiopacks/110.bin"

AUDIO_PACK_143: ;$E0FD04
	.INCBIN "bin/US19950327/audiopacks/143.bin"
