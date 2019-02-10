.SEGMENT "BANK21"
.INCLUDE "common.asm"
.INCLUDE "flyovermacros.asm"

COFFEE_SEQUENCE_TEXT: ;$E10000
	.INCLUDE "bin/coffee.flyover"

TEA_SEQUENCE_TEXT: ;$E10652
	.INCLUDE "bin/tea.flyover"

;$E10B86
	.INCLUDE "bin/flyovers.flyover"

MAIN_FONT_DATA: ;$E10C7A
	.INCBIN "bin/fonts/main.bin"

MAIN_FONT_GFX: ;$E10CDA
	.INCBIN "bin/fonts/main.gfx"

BATTLE_FONT_DATA: ;$E118DA
	.INCBIN "bin/fonts/battle.bin"

BATTLE_FONT_GFX: ;$E1193A
	.INCBIN "bin/fonts/battle.gfx"

TINY_FONT_DATA: ;$E11F3A
	.INCBIN "bin/fonts/tiny.bin"

TINY_FONT_GFX: ;$E11F9A
	.INCBIN "bin/fonts/tiny.gfx"

LARGE_FONT_DATA: ;$E1229A
	.INCBIN "bin/fonts/large.bin"

LARGE_FONT_GFX: ;$E122FA
	.INCBIN "bin/fonts/large.gfx"

.INCLUDE "data/cast_sequence_formatting.asm"

.INCLUDE "data/photographer_cfg.asm"

COMPRESSED_PALETTE_UNKNOWN: ;$E1374A
	.INCBIN "bin/unknown_palette.pal.lzhal"

STAFF_TEXT: ;$E1413F
	.INCBIN "bin/unknowns/E1413F.bin"

.INCLUDE "data/unknown/E14DE8.asm"

APE_ARRANGEMENT: ;$E14EC1
	.INCBIN "bin/intro/logos/ape.arr"

APE_GRAPHICS: ;$E14F2A
	.INCBIN "bin/intro/logos/ape.gfx"

APE_PALETTE: ;$E15130
	.INCBIN "bin/intro/logos/ape.pal"

HALKEN_ARRANGEMENT: ;$E15174
	.INCBIN "bin/intro/logos/halken.arr"

HALKEN_GRAPHICS: ;$E151E8
	.INCBIN "bin/intro/logos/halken.gfx"

HALKEN_PALETTE: ;$E153B8
	.INCBIN "bin/intro/logos/halken.pal"

NINTENDO_ARRANGEMENT: ;$E15455
	.INCBIN "bin/intro/logos/nintendo.arr"

NINTENDO_GRAPHICS: ;$E1549E
	.INCBIN "bin/intro/logos/nintendo.gfx"

NINTENDO_PALETTE: ;$E1558F
	.INCBIN "bin/intro/logos/nintendo.pal"

GAS_STATION_ARRANGEMENT: ;$E155D3
	.INCBIN "bin/intro/gas_station.arr"

GAS_STATION_GRAPHICS: ;$E15B33
	.INCBIN "bin/intro/gas_station.gfx"

GAS_STATION_PALETTE: ;$E1A9B7
	.INCBIN "bin/intro/gas_station.pal"

GAS_STATION_PALETTE_2: ;$E1AA5D
	.INCBIN "bin/intro/gas_station2.pal"

PRODUCED_ITOI_ARRANGEMENT: ;$E1AADF
	.INCBIN "bin/intro/attract/produced_by_itoi.arr"

PRODUCED_ITOI_GRAPHICS: ;$E1AB4B
	.INCBIN "bin/intro/attract/produced_by_itoi.gfx"

NINTENDO_PRESENTATION_ARRANGEMENT: ;$E1AD01
	.INCBIN "bin/intro/attract/nintendo_presentation.arr"

NINTENDO_PRESENTATION_GRAPHICS: ;$E1AD4E
	.INCBIN "bin/intro/attract/nintendo_presentation.gfx"

NINTENDO_ITOI_PALETTE: ;$E1AE6F
	.INCBIN "bin/intro/attract/nintendo_itoi.pal"

.INCLUDE "data/unknown/E1AE7C.asm"

.INCLUDE "data/unknown/E1AE83.asm"

.INCLUDE "data/unknown/E1AEFD.asm"

TITLE_SCREEN_ARRANGEMENT: ;$E1AF7D
	.INCBIN "bin/intro/title_screen.arr"

TITLE_SCREEN_GRAPHICS: ;$E1B211
	.INCBIN "bin/intro/title_screen.gfx"

.INCLUDE "data/unknown/E1C6E5.asm"

TITLE_SCREEN_PALETTE: ;$E1CDE1
	.INCBIN "bin/intro/title_screen.pal"

.INCLUDE "data/unknown/E1CE08.asm"

.INCLUDE "data/unknown/E1CFAF.asm"

.INCLUDE "data/unknown/E1D4F4.asm"

.INCLUDE "data/unknown/E1D5E8.asm"

.INCLUDE "data/unknown/E1D6E1.asm"

.INCLUDE "data/unknown/E1D815.asm"

.INCLUDE "data/unknown/E1D835.asm"

.INCLUDE "data/unknown/E1E4E7.asm"

STAFF_CREDITS_FONT_GRAPHICS: ;$E1E528
	.INCBIN "bin/ending/credits_font.gfx.lzhal"

STAFF_CREDITS_FONT_PALETTE: ;$E1E914
	.INCBIN "bin/ending/credits_font.pal"

.INCLUDE "data/unknown/E1E924.asm"

.INCLUDE "data/unknown/E1E94A.asm"

TOWN_MAP_LABEL_GFX: ;$E1EA50
	.INCBIN "bin/town_maps/label.gfx.lzhal"

TOWN_MAP_ICON_PALETTE: ;$E1F1C3
	.INCBIN "bin/town_maps/icon.pal"

.INCLUDE "data/unknown/E1F203.asm"

TOWN_MAP_ICON_PLACEMENT_PTR_TABLE: ;$E1F491
	.DWORD TOWN_MAP_ICON_PLACEMENT_ENTRY_0
	.DWORD TOWN_MAP_ICON_PLACEMENT_ENTRY_1
	.DWORD TOWN_MAP_ICON_PLACEMENT_ENTRY_2
	.DWORD TOWN_MAP_ICON_PLACEMENT_ENTRY_3
	.DWORD TOWN_MAP_ICON_PLACEMENT_ENTRY_4
	.DWORD TOWN_MAP_ICON_PLACEMENT_ENTRY_5

TOWN_MAP_ICON_PLACEMENT_DATA: ;$E1F4A9
TOWN_MAP_ICON_PLACEMENT_ENTRY_0:
	.BYTE $55, $5B, $06, $2E, $02, $6A, $5E, $01, $2F, $02, $8C, $7B, $03, $30, $02, $1D, $9E, $05, $31, $02, $75, $A6, $02, $32, $02, $60, $BE, $09, $33, $02, $BB, $5E, $10, $A9, $82, $FF
TOWN_MAP_ICON_PLACEMENT_ENTRY_1:
	.BYTE $48, $2A, $03, $34, $02, $70, $2E, $07, $35, $02, $20, $30, $0A, $36, $02, $D0, $9A, $08, $37, $02, $B8, $09, $05, $38, $02, $78, $B8, $0B, $39, $02, $60, $70, $02, $A1, $02, $D0, $3D, $10, $AA, $82, $FF
TOWN_MAP_ICON_PLACEMENT_ENTRY_2:
	.BYTE $48, $6B, $06, $3A, $02, $70, $3B, $03, $3B, $02, $8C, $67, $02, $3D, $02, $7E, $6B, $05, $3E, $02, $18, $8E, $0C, $82, $02, $B0, $8E, $0D, $81, $02, $6C, $5D, $08, $A4, $02, $73, $61, $08, $A5, $02, $D7, $0A, $10, $AB, $82, $FF
TOWN_MAP_ICON_PLACEMENT_ENTRY_3:
	.BYTE $74, $0A, $05, $3F, $02, $C2, $28, $07, $40, $02, $AC, $84, $02, $41, $02, $40, $7B, $03, $42, $02, $10, $C0, $0E, $80, $02, $3E, $C8, $08, $A6, $02, $58, $77, $10, $AC, $82, $FF
TOWN_MAP_ICON_PLACEMENT_ENTRY_4:
	.BYTE $80, $1B, $03, $43, $02, $88, $09, $05, $44, $02, $B0, $12, $06, $45, $02, $AC, $2E, $02, $A2, $02, $8D, $5E, $10, $AE, $82, $FF
TOWN_MAP_ICON_PLACEMENT_ENTRY_5:
	.BYTE $40, $04, $03, $46, $02, $71, $04, $04, $47, $02, $A5, $04, $06, $48, $02, $61, $6C, $05, $49, $02, $A0, $72, $06, $4A, $02, $48, $6C, $10, $AD, $82, $FF

AUDIO_PACK_123: ;$E1F581
	.INCBIN "bin/audiopacks/123.bin"
