.SEGMENT "BANK0E"
.INCLUDE "common-usa.asm"

BATTLE_SPRITE_82: ;$CE0000
	.INCBIN"bin/battle_sprites/82.bin"

BATTLE_SPRITE_6: ;$CE0305
	.INCBIN"bin/battle_sprites/6.bin"

BATTLE_SPRITE_31: ;$CE0601
	.INCBIN"bin/battle_sprites/31.bin"

BATTLE_SPRITE_50: ;$CE08F3
	.INCBIN"bin/battle_sprites/50.bin"

BATTLE_SPRITE_109: ;$CE0BD6
	.INCBIN"bin/battle_sprites/109.bin"

BATTLE_SPRITE_53: ;$CE0EB3
	.INCBIN"bin/battle_sprites/53.bin"

BATTLE_SPRITE_103: ;$CE118D
	.INCBIN"bin/battle_sprites/103.bin"

BATTLE_SPRITE_98: ;$CE1461
	.INCBIN"bin/battle_sprites/98.bin"

BATTLE_SPRITE_68: ;$CE170A
	.INCBIN"bin/battle_sprites/68.bin"

BATTLE_SPRITE_52: ;$CE19A9
	.INCBIN"bin/battle_sprites/52.bin"

BATTLE_SPRITE_8: ;$CE1C2E
	.INCBIN"bin/battle_sprites/8.bin"

BATTLE_SPRITE_21: ;$CE1EB1
	.INCBIN"bin/battle_sprites/21.bin"

BATTLE_SPRITE_43: ;$CE2133
	.INCBIN"bin/battle_sprites/43.bin"

BATTLE_SPRITE_7: ;$CE239C
	.INCBIN"bin/battle_sprites/7.bin"

BATTLE_SPRITE_5: ;$CE25E6
	.INCBIN"bin/battle_sprites/5.bin"

BATTLE_SPRITE_26: ;$CE2830
	.INCBIN"bin/battle_sprites/26.bin"

BATTLE_SPRITE_61: ;$CE2A5E
	.INCBIN"bin/battle_sprites/61.bin"

BATTLE_SPRITE_24: ;$CE2C7E
	.INCBIN"bin/battle_sprites/24.bin"

BATTLE_SPRITE_92: ;$CE2E9B
	.INCBIN"bin/battle_sprites/92.bin"

BATTLE_SPRITE_33: ;$CE30B7
	.INCBIN"bin/battle_sprites/33.bin"

BATTLE_SPRITE_29: ;$CE32C9
	.INCBIN"bin/battle_sprites/29.bin"

BATTLE_SPRITE_69: ;$CE34C5
	.INCBIN"bin/battle_sprites/69.bin"

BATTLE_SPRITE_49: ;$CE36B1
	.INCBIN"bin/battle_sprites/49.bin"

BATTLE_SPRITE_80: ;$CE3897
	.INCBIN"bin/battle_sprites/80.bin"

BATTLE_SPRITE_3: ;$CE3A60
	.INCBIN"bin/battle_sprites/3.bin"

BATTLE_SPRITE_45: ;$CE3C0F
	.INCBIN"bin/battle_sprites/45.bin"

BATTLE_SPRITE_20: ;$CE3DB9
	.INCBIN"bin/battle_sprites/20.bin"

BATTLE_SPRITE_91: ;$CE3F63
	.INCBIN"bin/battle_sprites/91.bin"

BATTLE_SPRITE_19: ;$CE4104
	.INCBIN"bin/battle_sprites/19.bin"

BATTLE_SPRITE_2: ;$CE429C
	.INCBIN"bin/battle_sprites/2.bin"

BATTLE_SPRITE_25: ;$CE4432
	.INCBIN"bin/battle_sprites/25.bin"

BATTLE_SPRITE_17: ;$CE45BF
	.INCBIN"bin/battle_sprites/17.bin"

BATTLE_SPRITE_76: ;$CE4745
	.INCBIN"bin/battle_sprites/76.bin"

BATTLE_SPRITE_15: ;$CE48C8
	.INCBIN"bin/battle_sprites/15.bin"

BATTLE_SPRITE_48: ;$CE4A4A
	.INCBIN"bin/battle_sprites/48.bin"

BATTLE_SPRITE_70: ;$CE4BAE
	.INCBIN"bin/battle_sprites/70.bin"

BATTLE_SPRITE_57: ;$CE4D0E
	.INCBIN"bin/battle_sprites/57.bin"

BATTLE_SPRITE_1: ;$CE4E6D
	.INCBIN"bin/battle_sprites/1.bin"

BATTLE_SPRITE_47: ;$CE4FCC
	.INCBIN"bin/battle_sprites/47.bin"

BATTLE_SPRITE_46: ;$CE5128
	.INCBIN"bin/battle_sprites/46.bin"

BATTLE_SPRITE_4: ;$CE5283
	.INCBIN"bin/battle_sprites/4.bin"

BATTLE_SPRITE_77: ;$CE53DB
	.INCBIN"bin/battle_sprites/77.bin"

BATTLE_SPRITE_65: ;$CE5527
	.INCBIN"bin/battle_sprites/65.bin"

BATTLE_SPRITE_85: ;$CE5673
	.INCBIN"bin/battle_sprites/85.bin"

BATTLE_SPRITE_44: ;$CE57BD
	.INCBIN"bin/battle_sprites/44.bin"

BATTLE_SPRITE_58: ;$CE58FD
	.INCBIN"bin/battle_sprites/58.bin"

BATTLE_SPRITE_18: ;$CE5A3B
	.INCBIN"bin/battle_sprites/18.bin"

BATTLE_SPRITE_59: ;$CE5B5F
	.INCBIN"bin/battle_sprites/59.bin"

BATTLE_SPRITE_16: ;$CE5C78
	.INCBIN"bin/battle_sprites/16.bin"

BATTLE_SPRITE_66: ;$CE5D8A
	.INCBIN"bin/battle_sprites/66.bin"

BATTLE_SPRITE_90: ;$CE5E8A
	.INCBIN"bin/battle_sprites/90.bin"

BATTLE_SPRITE_88: ;$CE5F82
	.INCBIN"bin/battle_sprites/88.bin"

BATTLE_SPRITE_0: ;$CE606D
	.INCBIN"bin/battle_sprites/0.bin"

BATTLE_SPRITE_42: ;$CE6158
	.INCBIN"bin/battle_sprites/42.bin"

BATTLE_SPRITE_89: ;$CE6230
	.INCBIN"bin/battle_sprites/89.bin"

.INCLUDE "data/battle/battle_sprites_pointers.asm"

.INCLUDE "data/battle/battle_sprites_palettes.asm"

.INCLUDE "data/battle/swirl_data.asm"

.INCLUDE "data/battle/swirl_pointers.asm"

SWIRL_PRIMARY_TABLE: ;$CEDD41
	.BYTE $00, $00, $00, $00, $02, $00, $17, $00, $04, $17, $0F, $00, $03, $26, $16, $00, $04, $3C, $15, $00, $02, $51, $1C, $00, $03, $6D, $11, $00

SOUND_STONE_GFX: ;$CEDD5D
	.INCBIN "bin/graphics/sound_stone.gfx"

SOUND_STONE_PALETTE: ;$CEF806
	.INCBIN "bin/sound_stone.pal"

AUDIO_PACK_102: ;$CEF8C6
	.INCBIN "bin/audiopacks/102.bin"
