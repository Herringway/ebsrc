.SEGMENT "BANK1F"
.INCLUDE "common.asm"

MAP_DATA_TILE_SET_GRAPHICS_12: ;$DF0000
	.INCBIN "bin/maps/gfx/12.bin"

MAP_DATA_TILE_SET_GRAPHICS_16: ;$DF2938
	.INCBIN "bin/maps/gfx/16.bin"

MAP_DATA_TILE_SET_GRAPHICS_17: ;$DF512A
	.INCBIN "bin/maps/gfx/17.bin"

MAP_DATA_TILE_SET_GRAPHICS_18: ;$DF6BE8
	.INCBIN "bin/maps/gfx/18.bin"

MAP_DATA_TILE_SET_GRAPHICS_19: ;$DF818B
	.INCBIN "bin/maps/gfx/19.bin"

MAP_DATA_TILE_SET_GRAPHICS_15: ;$DF9F57
	.INCBIN "bin/maps/gfx/15.bin"

MAP_DATA_TILE_ANIMATION_GFX_0: ;$DFC243
	.INCBIN "bin/maps/anim_gfx/0.bin"

MAP_DATA_TILE_ANIMATION_GFX_1: ;$DFC93B
	.INCBIN "bin/maps/anim_gfx/1.bin"

MAP_DATA_TILE_ANIMATION_GFX_2: ;$DFCB7F
	.INCBIN "bin/maps/anim_gfx/2.bin"

MAP_DATA_TILE_ANIMATION_GFX_3: ;$DFCB98
	.INCBIN "bin/maps/anim_gfx/3.bin"

MAP_DATA_TILE_ANIMATION_GFX_4: ;$DFCBB1
	.INCBIN "bin/maps/anim_gfx/4.bin"

MAP_DATA_TILE_ANIMATION_GFX_5: ;$DFCBCA
	.INCBIN "bin/maps/anim_gfx/5.bin"

MAP_DATA_TILE_ANIMATION_GFX_6: ;$DFD000
	.INCBIN "bin/maps/anim_gfx/6.bin"

MAP_DATA_TILE_ANIMATION_GFX_7: ;$DFD6EE
	.INCBIN "bin/maps/anim_gfx/7.bin"

MAP_DATA_TILE_ANIMATION_GFX_8: ;$DFDD57
	.INCBIN "bin/maps/anim_gfx/8.bin"

MAP_DATA_TILE_ANIMATION_GFX_9: ;$DFE1EB
	.INCBIN "bin/maps/anim_gfx/9.bin"

MAP_DATA_TILE_ANIMATION_GFX_10: ;$DFE204
	.INCBIN "bin/maps/anim_gfx/10.bin"

MAP_DATA_TILE_ANIMATION_GFX_11: ;$DFE21D
	.INCBIN "bin/maps/anim_gfx/11.bin"

MAP_DATA_TILE_ANIMATION_GFX_12: ;$DFE236
	.INCBIN "bin/maps/anim_gfx/12.bin"

MAP_DATA_TILE_ANIMATION_GFX_13: ;$DFE402
	.INCBIN "bin/maps/anim_gfx/13.bin"

MAP_DATA_TILE_ANIMATION_GFX_14: ;$DFE4C8
	.INCBIN "bin/maps/anim_gfx/14.bin"

MAP_DATA_PALETTE_ANIM_POINTER_TABLE: ;$DFE4E1
	.DWORD MAP_DATA_PALETTE_ANIM_SECONDARY_TABLE_ENTRY_1
	.DWORD MAP_DATA_PALETTE_ANIM_SECONDARY_TABLE_ENTRY_2
	.DWORD MAP_DATA_PALETTE_ANIM_SECONDARY_TABLE_ENTRY_3
	.DWORD MAP_DATA_PALETTE_ANIM_SECONDARY_TABLE_ENTRY_4
	.DWORD MAP_DATA_PALETTE_ANIM_SECONDARY_TABLE_ENTRY_5
	.DWORD MAP_DATA_PALETTE_ANIM_SECONDARY_TABLE_ENTRY_6
	.DWORD MAP_DATA_PALETTE_ANIM_SECONDARY_TABLE_ENTRY_7
	.DWORD MAP_DATA_PALETTE_ANIM_SECONDARY_TABLE_ENTRY_8
	.DWORD MAP_DATA_PALETTE_ANIM_SECONDARY_TABLE_ENTRY_9
	.DWORD MAP_DATA_PALETTE_ANIM_SECONDARY_TABLE_ENTRY_10
	.DWORD MAP_DATA_PALETTE_ANIM_SECONDARY_TABLE_ENTRY_11
	.DWORD MAP_DATA_PALETTE_ANIM_SECONDARY_TABLE_ENTRY_12
	.DWORD MAP_DATA_PALETTE_ANIM_SECONDARY_TABLE_ENTRY_13
	.DWORD MAP_DATA_PALETTE_ANIM_SECONDARY_TABLE_ENTRY_14
	.DWORD MAP_DATA_PALETTE_ANIM_SECONDARY_TABLE_ENTRY_15
	.DWORD MAP_DATA_PALETTE_ANIM_SECONDARY_TABLE_ENTRY_16
	.DWORD MAP_DATA_PALETTE_ANIM_SECONDARY_TABLE_ENTRY_17
	.DWORD MAP_DATA_PALETTE_ANIM_SECONDARY_TABLE_ENTRY_18
	.DWORD MAP_DATA_PALETTE_ANIM_SECONDARY_TABLE_ENTRY_19
	.DWORD MAP_DATA_PALETTE_ANIM_SECONDARY_TABLE_ENTRY_20
	.DWORD MAP_DATA_PALETTE_ANIM_SECONDARY_TABLE_ENTRY_21
	.DWORD MAP_DATA_PALETTE_ANIM_SECONDARY_TABLE_ENTRY_22
	.DWORD MAP_DATA_PALETTE_ANIM_SECONDARY_TABLE_ENTRY_23
	.DWORD MAP_DATA_PALETTE_ANIM_SECONDARY_TABLE_ENTRY_24
	.DWORD MAP_DATA_PALETTE_ANIM_SECONDARY_TABLE_ENTRY_25
	.DWORD MAP_DATA_PALETTE_ANIM_SECONDARY_TABLE_ENTRY_26
	.DWORD MAP_DATA_PALETTE_ANIM_SECONDARY_TABLE_ENTRY_27
	.DWORD MAP_DATA_PALETTE_ANIM_SECONDARY_TABLE_ENTRY_28
	.DWORD MAP_DATA_PALETTE_ANIM_SECONDARY_TABLE_ENTRY_29
	.DWORD MAP_DATA_PALETTE_ANIM_SECONDARY_TABLE_ENTRY_30
	.DWORD MAP_DATA_PALETTE_ANIM_SECONDARY_TABLE_ENTRY_31

MAP_DATA_PALETTE_ANIM_SECONDARY_TABLE: ;$DFE55D
MAP_DATA_PALETTE_ANIM_SECONDARY_TABLE_ENTRY_1:
	.DWORD $DFE61B
	.BYTE $04, $0A, $0A, $0A, $0A
MAP_DATA_PALETTE_ANIM_SECONDARY_TABLE_ENTRY_2:
	.DWORD $DFE6B2
	.BYTE $04, $0F, $0F, $0F, $0F
MAP_DATA_PALETTE_ANIM_SECONDARY_TABLE_ENTRY_3:
	.DWORD $DFE73D
	.BYTE $06, $14, $14, $14, $14, $14, $14
MAP_DATA_PALETTE_ANIM_SECONDARY_TABLE_ENTRY_4:
	.DWORD $DFE8E0
	.BYTE $03, $0F, $0F, $14
MAP_DATA_PALETTE_ANIM_SECONDARY_TABLE_ENTRY_5:
	.DWORD $DFE96C
	.BYTE $04, $0F, $0F, $0F, $0F
MAP_DATA_PALETTE_ANIM_SECONDARY_TABLE_ENTRY_6:
	.DWORD $DFEA56
	.BYTE $03, $0F, $0F, $0F
MAP_DATA_PALETTE_ANIM_SECONDARY_TABLE_ENTRY_7:
	.DWORD $DFEB31
	.BYTE $03, $3C, $08, $08
MAP_DATA_PALETTE_ANIM_SECONDARY_TABLE_ENTRY_8:
	.DWORD $DFEBAC
	.BYTE $08, $1E, $0A, $0A, $0A, $0A, $0A, $0A, $0A
MAP_DATA_PALETTE_ANIM_SECONDARY_TABLE_ENTRY_9:
	.DWORD $DFEC46
	.BYTE $00
MAP_DATA_PALETTE_ANIM_SECONDARY_TABLE_ENTRY_10:
	.DWORD $DFEC46
	.BYTE $00
MAP_DATA_PALETTE_ANIM_SECONDARY_TABLE_ENTRY_11:
	.DWORD $DFEC46
	.BYTE $00
MAP_DATA_PALETTE_ANIM_SECONDARY_TABLE_ENTRY_12:
	.DWORD $DFEC46
	.BYTE $00
MAP_DATA_PALETTE_ANIM_SECONDARY_TABLE_ENTRY_13:
	.DWORD $DFEC46
	.BYTE $00
MAP_DATA_PALETTE_ANIM_SECONDARY_TABLE_ENTRY_14:
	.DWORD $DFEC46
	.BYTE $00
MAP_DATA_PALETTE_ANIM_SECONDARY_TABLE_ENTRY_15:
	.DWORD $DFEC46
	.BYTE $00
MAP_DATA_PALETTE_ANIM_SECONDARY_TABLE_ENTRY_16:
	.DWORD $DFEC46
	.BYTE $00
MAP_DATA_PALETTE_ANIM_SECONDARY_TABLE_ENTRY_17:
	.DWORD $DFEC46
	.BYTE $00
MAP_DATA_PALETTE_ANIM_SECONDARY_TABLE_ENTRY_18:
	.DWORD $DFEC46
	.BYTE $00
MAP_DATA_PALETTE_ANIM_SECONDARY_TABLE_ENTRY_19:
	.DWORD $DFEC46
	.BYTE $00
MAP_DATA_PALETTE_ANIM_SECONDARY_TABLE_ENTRY_20:
	.DWORD $DFEC46
	.BYTE $00
MAP_DATA_PALETTE_ANIM_SECONDARY_TABLE_ENTRY_21:
	.DWORD $DFEC46
	.BYTE $00
MAP_DATA_PALETTE_ANIM_SECONDARY_TABLE_ENTRY_22:
	.DWORD $DFEC46
	.BYTE $00
MAP_DATA_PALETTE_ANIM_SECONDARY_TABLE_ENTRY_23:
	.DWORD $DFEC46
	.BYTE $00
MAP_DATA_PALETTE_ANIM_SECONDARY_TABLE_ENTRY_24:
	.DWORD $DFEC46
	.BYTE $00
MAP_DATA_PALETTE_ANIM_SECONDARY_TABLE_ENTRY_25:
	.DWORD $DFEC46
	.BYTE $00
MAP_DATA_PALETTE_ANIM_SECONDARY_TABLE_ENTRY_26:
	.DWORD $DFEC46
	.BYTE $00
MAP_DATA_PALETTE_ANIM_SECONDARY_TABLE_ENTRY_27:
	.DWORD $DFEC46
	.BYTE $00
MAP_DATA_PALETTE_ANIM_SECONDARY_TABLE_ENTRY_28:
	.DWORD $DFEC46
	.BYTE $00
MAP_DATA_PALETTE_ANIM_SECONDARY_TABLE_ENTRY_29:
	.DWORD $DFEC46
	.BYTE $00
MAP_DATA_PALETTE_ANIM_SECONDARY_TABLE_ENTRY_30:
	.DWORD $DFEC46
	.BYTE $00
MAP_DATA_PALETTE_ANIM_SECONDARY_TABLE_ENTRY_31:
	.DWORD $DFEC46
	.BYTE $00

MAP_DATA_PALETTE_ANIM_TABLE: ;$DFE61B
	.INCBIN "bin/unknowns/DFE61B.bin"

AUDIO_PACK_4: ;$DFEC46
	.INCBIN "bin/audiopacks/4.bin"
