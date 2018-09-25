.SEGMENT "BANK20"
.INCLUDE "common.asm"

TEXT_WINDOW_GFX: ;$E00000
	.INCBIN "bin/unknowns/E00000.bin"

FLAVOURED_TEXT_GFX: ;$E00754
	.INCBIN "bin/unknowns/E00754.bin"

MOTHER2_ROMAJI_FONT: ;$E007A0
	.INCBIN "bin/unknowns/E007A0.bin"

COMPRESSED_SRAM: ;$E009B4
	.INCBIN "bin/unknowns/E009B4.bin"

MRSATURN_FONT_DATA: ;$E01359
	.INCBIN "bin/unknowns/E01359.bin"

MRSATURN_FONT_GFX: ;$E013B9
	.INCBIN "bin/unknowns/E013B9.bin"

TEXT_WINDOW_PROPERTIES: ;$E01FB9
	.BYTE $00, $00, $01, $40, $00, $08, $80, $00, $08, $C0, $00, $08, $00, $01, $08

TEXT_WINDOW_FLAVOUR_PALETTES: ;$E01FC8
	.INCBIN "bin/unknowns/E01FC8.bin"

MOVEMENT_TEXT_STRING_PALETTE: ;$E02188
	.INCBIN "bin/unknowns/E02188.bin"

TOWN_MAP_GFX_POINTER_TABLE: ;$E02190
	.INCBIN "bin/unknowns/E02190.bin"

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
