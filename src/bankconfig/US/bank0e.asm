.SEGMENT "BANK0E"
.INCLUDE "common.asm"
.INCLUDE "symbols/audiopacks.inc.asm"
.INCLUDE "symbols/battle_sprites.inc.asm"
.INCLUDE "symbols/misc.inc.asm"

BATTLE_SPRITE_82: ;$CE0000
	BINARY "battle_sprites/82.gfx.lzhal"

BATTLE_SPRITE_6: ;$CE0305
	BINARY "battle_sprites/6.gfx.lzhal"

BATTLE_SPRITE_31: ;$CE0601
	BINARY "battle_sprites/31.gfx.lzhal"

BATTLE_SPRITE_50: ;$CE08F3
	BINARY "battle_sprites/50.gfx.lzhal"

BATTLE_SPRITE_109: ;$CE0BD6
	BINARY "battle_sprites/109.gfx.lzhal"

BATTLE_SPRITE_53: ;$CE0EB3
	BINARY "battle_sprites/53.gfx.lzhal"

BATTLE_SPRITE_103: ;$CE118D
	BINARY "battle_sprites/103.gfx.lzhal"

BATTLE_SPRITE_98: ;$CE1461
	BINARY "battle_sprites/98.gfx.lzhal"

BATTLE_SPRITE_68: ;$CE170A
	BINARY "battle_sprites/68.gfx.lzhal"

BATTLE_SPRITE_52: ;$CE19A9
	BINARY "battle_sprites/52.gfx.lzhal"

BATTLE_SPRITE_8: ;$CE1C2E
	BINARY "battle_sprites/8.gfx.lzhal"

BATTLE_SPRITE_21: ;$CE1EB1
	BINARY "battle_sprites/21.gfx.lzhal"

BATTLE_SPRITE_43: ;$CE2133
	BINARY "battle_sprites/43.gfx.lzhal"

BATTLE_SPRITE_7: ;$CE239C
	BINARY "battle_sprites/7.gfx.lzhal"

BATTLE_SPRITE_5: ;$CE25E6
	BINARY "battle_sprites/5.gfx.lzhal"

BATTLE_SPRITE_26: ;$CE2830
	BINARY "battle_sprites/26.gfx.lzhal"

BATTLE_SPRITE_61: ;$CE2A5E
	BINARY "battle_sprites/61.gfx.lzhal"

BATTLE_SPRITE_24: ;$CE2C7E
	BINARY "battle_sprites/24.gfx.lzhal"

BATTLE_SPRITE_92: ;$CE2E9B
	BINARY "battle_sprites/92.gfx.lzhal"

BATTLE_SPRITE_33: ;$CE30B7
	BINARY "battle_sprites/33.gfx.lzhal"

BATTLE_SPRITE_29: ;$CE32C9
	BINARY "battle_sprites/29.gfx.lzhal"

BATTLE_SPRITE_69: ;$CE34C5
	BINARY "battle_sprites/69.gfx.lzhal"

BATTLE_SPRITE_49: ;$CE36B1
	BINARY "battle_sprites/49.gfx.lzhal"

BATTLE_SPRITE_80: ;$CE3897
	BINARY "battle_sprites/80.gfx.lzhal"

BATTLE_SPRITE_3: ;$CE3A60
	BINARY "battle_sprites/3.gfx.lzhal"

BATTLE_SPRITE_45: ;$CE3C0F
	BINARY "battle_sprites/45.gfx.lzhal"

BATTLE_SPRITE_20: ;$CE3DB9
	BINARY "battle_sprites/20.gfx.lzhal"

BATTLE_SPRITE_91: ;$CE3F63
	BINARY "battle_sprites/91.gfx.lzhal"

BATTLE_SPRITE_19: ;$CE4104
	BINARY "battle_sprites/19.gfx.lzhal"

BATTLE_SPRITE_2: ;$CE429C
	BINARY "battle_sprites/2.gfx.lzhal"

BATTLE_SPRITE_25: ;$CE4432
	BINARY "battle_sprites/25.gfx.lzhal"

BATTLE_SPRITE_17: ;$CE45BF
	BINARY "battle_sprites/17.gfx.lzhal"

BATTLE_SPRITE_76: ;$CE4745
	BINARY "battle_sprites/76.gfx.lzhal"

BATTLE_SPRITE_15: ;$CE48C8
	BINARY "battle_sprites/15.gfx.lzhal"

BATTLE_SPRITE_48: ;$CE4A4A
	BINARY "battle_sprites/48.gfx.lzhal"

BATTLE_SPRITE_70: ;$CE4BAE
	BINARY "battle_sprites/70.gfx.lzhal"

BATTLE_SPRITE_57: ;$CE4D0E
	BINARY "battle_sprites/57.gfx.lzhal"

BATTLE_SPRITE_1: ;$CE4E6D
	BINARY "battle_sprites/1.gfx.lzhal"

BATTLE_SPRITE_47: ;$CE4FCC
	BINARY "battle_sprites/47.gfx.lzhal"

BATTLE_SPRITE_46: ;$CE5128
	BINARY "battle_sprites/46.gfx.lzhal"

BATTLE_SPRITE_4: ;$CE5283
	BINARY "battle_sprites/4.gfx.lzhal"

BATTLE_SPRITE_77: ;$CE53DB
	BINARY "battle_sprites/77.gfx.lzhal"

BATTLE_SPRITE_65: ;$CE5527
	BINARY "battle_sprites/65.gfx.lzhal"

BATTLE_SPRITE_85: ;$CE5673
	BINARY "battle_sprites/85.gfx.lzhal"

BATTLE_SPRITE_44: ;$CE57BD
	BINARY "battle_sprites/44.gfx.lzhal"

BATTLE_SPRITE_58: ;$CE58FD
	BINARY "battle_sprites/58.gfx.lzhal"

BATTLE_SPRITE_18: ;$CE5A3B
	BINARY "battle_sprites/18.gfx.lzhal"

BATTLE_SPRITE_59: ;$CE5B5F
	BINARY "battle_sprites/59.gfx.lzhal"

BATTLE_SPRITE_16: ;$CE5C78
	BINARY "battle_sprites/16.gfx.lzhal"

BATTLE_SPRITE_66: ;$CE5D8A
	BINARY "battle_sprites/66.gfx.lzhal"

BATTLE_SPRITE_90: ;$CE5E8A
	BINARY "battle_sprites/90.gfx.lzhal"

BATTLE_SPRITE_88: ;$CE5F82
	BINARY "battle_sprites/88.gfx.lzhal"

BATTLE_SPRITE_0: ;$CE606D
	BINARY "battle_sprites/0.gfx.lzhal"

BATTLE_SPRITE_42: ;$CE6158
	BINARY "battle_sprites/42.gfx.lzhal"

BATTLE_SPRITE_89: ;$CE6230
	BINARY "battle_sprites/89.gfx.lzhal"

.INCLUDE "data/battle/battle_sprites_pointers.asm"

BATTLE_SPRITE_PALETTES: ;$CE6514
	BINARY "battle_sprites/palettes/0.pal"
	BINARY "battle_sprites/palettes/1.pal"
	BINARY "battle_sprites/palettes/2.pal"
	BINARY "battle_sprites/palettes/3.pal"
	BINARY "battle_sprites/palettes/4.pal"
	BINARY "battle_sprites/palettes/5.pal"
	BINARY "battle_sprites/palettes/6.pal"
	BINARY "battle_sprites/palettes/7.pal"
	BINARY "battle_sprites/palettes/8.pal"
	BINARY "battle_sprites/palettes/9.pal"
	BINARY "battle_sprites/palettes/10.pal"
	BINARY "battle_sprites/palettes/11.pal"
	BINARY "battle_sprites/palettes/12.pal"
	BINARY "battle_sprites/palettes/13.pal"
	BINARY "battle_sprites/palettes/14.pal"
	BINARY "battle_sprites/palettes/15.pal"
	BINARY "battle_sprites/palettes/16.pal"
	BINARY "battle_sprites/palettes/17.pal"
	BINARY "battle_sprites/palettes/18.pal"
	BINARY "battle_sprites/palettes/19.pal"
	BINARY "battle_sprites/palettes/20.pal"
	BINARY "battle_sprites/palettes/21.pal"
	BINARY "battle_sprites/palettes/22.pal"
	BINARY "battle_sprites/palettes/23.pal"
	BINARY "battle_sprites/palettes/24.pal"
	BINARY "battle_sprites/palettes/25.pal"
	BINARY "battle_sprites/palettes/26.pal"
	BINARY "battle_sprites/palettes/27.pal"
	BINARY "battle_sprites/palettes/28.pal"
	BINARY "battle_sprites/palettes/29.pal"
	BINARY "battle_sprites/palettes/30.pal"
	BINARY "battle_sprites/palettes/31.pal"

SWIRL_DATA: ;$CE6914
SWIRL_DATA_0:
	BINARY "swirls/0.swirl"
SWIRL_DATA_1:
	BINARY "swirls/1.swirl"
SWIRL_DATA_2:
	BINARY "swirls/2.swirl"
SWIRL_DATA_3:
	BINARY "swirls/3.swirl"
SWIRL_DATA_4:
	BINARY "swirls/4.swirl"
SWIRL_DATA_5:
	BINARY "swirls/5.swirl"
SWIRL_DATA_6:
	BINARY "swirls/6.swirl"
SWIRL_DATA_7:
	BINARY "swirls/7.swirl"
SWIRL_DATA_8:
	BINARY "swirls/8.swirl"
SWIRL_DATA_9:
	BINARY "swirls/9.swirl"
SWIRL_DATA_10:
	BINARY "swirls/10.swirl"
SWIRL_DATA_11:
	BINARY "swirls/11.swirl"
SWIRL_DATA_12:
	BINARY "swirls/12.swirl"
SWIRL_DATA_13:
	BINARY "swirls/13.swirl"
SWIRL_DATA_14:
	BINARY "swirls/14.swirl"
SWIRL_DATA_15:
	BINARY "swirls/15.swirl"
SWIRL_DATA_16:
	BINARY "swirls/16.swirl"
SWIRL_DATA_17:
	BINARY "swirls/17.swirl"
SWIRL_DATA_18:
	BINARY "swirls/18.swirl"
SWIRL_DATA_19:
	BINARY "swirls/19.swirl"
SWIRL_DATA_20:
	BINARY "swirls/20.swirl"
SWIRL_DATA_21:
	BINARY "swirls/21.swirl"
SWIRL_DATA_22:
	BINARY "swirls/22.swirl"
SWIRL_DATA_23:
	BINARY "swirls/23.swirl"
SWIRL_DATA_24:
	BINARY "swirls/24.swirl"
SWIRL_DATA_25:
	BINARY "swirls/25.swirl"
SWIRL_DATA_26:
	BINARY "swirls/26.swirl"
SWIRL_DATA_27:
	BINARY "swirls/27.swirl"
SWIRL_DATA_28:
	BINARY "swirls/28.swirl"
SWIRL_DATA_29:
	BINARY "swirls/29.swirl"
SWIRL_DATA_30:
	BINARY "swirls/30.swirl"
SWIRL_DATA_31:
	BINARY "swirls/31.swirl"
SWIRL_DATA_32:
	BINARY "swirls/32.swirl"
SWIRL_DATA_33:
	BINARY "swirls/33.swirl"
SWIRL_DATA_34:
	BINARY "swirls/34.swirl"
SWIRL_DATA_35:
	BINARY "swirls/35.swirl"
SWIRL_DATA_36:
	BINARY "swirls/36.swirl"
SWIRL_DATA_37:
	BINARY "swirls/37.swirl"
SWIRL_DATA_38:
	BINARY "swirls/38.swirl"
SWIRL_DATA_39:
	BINARY "swirls/39.swirl"
SWIRL_DATA_40:
	BINARY "swirls/40.swirl"
SWIRL_DATA_41:
	BINARY "swirls/41.swirl"
SWIRL_DATA_42:
	BINARY "swirls/42.swirl"
SWIRL_DATA_43:
	BINARY "swirls/43.swirl"
SWIRL_DATA_44:
	BINARY "swirls/44.swirl"
SWIRL_DATA_45:
	BINARY "swirls/45.swirl"
SWIRL_DATA_46:
	BINARY "swirls/46.swirl"
SWIRL_DATA_47:
	BINARY "swirls/47.swirl"
SWIRL_DATA_48:
	BINARY "swirls/48.swirl"
SWIRL_DATA_49:
	BINARY "swirls/49.swirl"
SWIRL_DATA_50:
	BINARY "swirls/50.swirl"
SWIRL_DATA_51:
	BINARY "swirls/51.swirl"
SWIRL_DATA_52:
	BINARY "swirls/52.swirl"
SWIRL_DATA_53:
	BINARY "swirls/53.swirl"
SWIRL_DATA_54:
	BINARY "swirls/54.swirl"
SWIRL_DATA_55:
	BINARY "swirls/55.swirl"
SWIRL_DATA_56:
	BINARY "swirls/56.swirl"
SWIRL_DATA_57:
	BINARY "swirls/57.swirl"
SWIRL_DATA_58:
	BINARY "swirls/58.swirl"
SWIRL_DATA_59:
	BINARY "swirls/59.swirl"
SWIRL_DATA_60:
	BINARY "swirls/60.swirl"
SWIRL_DATA_61:
	BINARY "swirls/61.swirl"
SWIRL_DATA_62:
	BINARY "swirls/62.swirl"
SWIRL_DATA_63:
	BINARY "swirls/63.swirl"
SWIRL_DATA_64:
	BINARY "swirls/64.swirl"
SWIRL_DATA_65:
	BINARY "swirls/65.swirl"
SWIRL_DATA_66:
	BINARY "swirls/66.swirl"
SWIRL_DATA_67:
	BINARY "swirls/67.swirl"
SWIRL_DATA_68:
	BINARY "swirls/68.swirl"
SWIRL_DATA_69:
	BINARY "swirls/69.swirl"
SWIRL_DATA_70:
	BINARY "swirls/70.swirl"
SWIRL_DATA_71:
	BINARY "swirls/71.swirl"
SWIRL_DATA_72:
	BINARY "swirls/72.swirl"
SWIRL_DATA_73:
	BINARY "swirls/73.swirl"
SWIRL_DATA_74:
	BINARY "swirls/74.swirl"
SWIRL_DATA_75:
	BINARY "swirls/75.swirl"
SWIRL_DATA_76:
	BINARY "swirls/76.swirl"
SWIRL_DATA_77:
	BINARY "swirls/77.swirl"
SWIRL_DATA_78:
	BINARY "swirls/78.swirl"
SWIRL_DATA_79:
	BINARY "swirls/79.swirl"
SWIRL_DATA_80:
	BINARY "swirls/80.swirl"
SWIRL_DATA_81:
	BINARY "swirls/81.swirl"
SWIRL_DATA_82:
	BINARY "swirls/82.swirl"
SWIRL_DATA_83:
	BINARY "swirls/83.swirl"
SWIRL_DATA_84:
	BINARY "swirls/84.swirl"
SWIRL_DATA_85:
	BINARY "swirls/85.swirl"
SWIRL_DATA_86:
	BINARY "swirls/86.swirl"
SWIRL_DATA_87:
	BINARY "swirls/87.swirl"
SWIRL_DATA_88:
	BINARY "swirls/88.swirl"
SWIRL_DATA_89:
	BINARY "swirls/89.swirl"
SWIRL_DATA_90:
	BINARY "swirls/90.swirl"
SWIRL_DATA_91:
	BINARY "swirls/91.swirl"
SWIRL_DATA_92:
	BINARY "swirls/92.swirl"
SWIRL_DATA_93:
	BINARY "swirls/93.swirl"
SWIRL_DATA_94:
	BINARY "swirls/94.swirl"
SWIRL_DATA_95:
	BINARY "swirls/95.swirl"
SWIRL_DATA_96:
	BINARY "swirls/96.swirl"
SWIRL_DATA_97:
	BINARY "swirls/97.swirl"
SWIRL_DATA_98:
	BINARY "swirls/98.swirl"
SWIRL_DATA_99:
	BINARY "swirls/99.swirl"
SWIRL_DATA_100:
	BINARY "swirls/100.swirl"
SWIRL_DATA_101:
	BINARY "swirls/101.swirl"
SWIRL_DATA_102:
	BINARY "swirls/102.swirl"
SWIRL_DATA_103:
	BINARY "swirls/103.swirl"
SWIRL_DATA_104:
	BINARY "swirls/104.swirl"
SWIRL_DATA_105:
	BINARY "swirls/105.swirl"
SWIRL_DATA_106:
	BINARY "swirls/106.swirl"
SWIRL_DATA_107:
	BINARY "swirls/107.swirl"
SWIRL_DATA_108:
	BINARY "swirls/108.swirl"
SWIRL_DATA_109:
	BINARY "swirls/109.swirl"
SWIRL_DATA_110:
	BINARY "swirls/110.swirl"
SWIRL_DATA_111:
	BINARY "swirls/111.swirl"
SWIRL_DATA_112:
	BINARY "swirls/112.swirl"
SWIRL_DATA_113:
	BINARY "swirls/113.swirl"
SWIRL_DATA_114:
	BINARY "swirls/114.swirl"
SWIRL_DATA_115:
	BINARY "swirls/115.swirl"
SWIRL_DATA_116:
	BINARY "swirls/116.swirl"
SWIRL_DATA_117:
	BINARY "swirls/117.swirl"
SWIRL_DATA_118:
	BINARY "swirls/118.swirl"
SWIRL_DATA_119:
	BINARY "swirls/119.swirl"
SWIRL_DATA_120:
	BINARY "swirls/120.swirl"
SWIRL_DATA_121:
	BINARY "swirls/121.swirl"
SWIRL_DATA_122:
	BINARY "swirls/122.swirl"
SWIRL_DATA_123:
	BINARY "swirls/123.swirl"
SWIRL_DATA_124:
	BINARY "swirls/124.swirl"
SWIRL_DATA_125:
	BINARY "swirls/125.swirl"

.INCLUDE "data/battle/swirl_pointers.asm"

SWIRL_PRIMARY_TABLE: ;$CEDD41
	.BYTE $00, $00, $00, $00, $02, $00, $17, $00, $04, $17, $0F, $00, $03, $26, $16, $00, $04, $3C, $15, $00, $02, $51, $1C, $00, $03, $6D, $11, $00

SOUND_STONE_GFX: ;$CEDD5D
	BINARY "graphics/sound_stone.gfx.lzhal"

SOUND_STONE_PALETTE: ;$CEF806
	BINARY "sound_stone.pal"

AUDIO_PACK_102: ;$CEF8C6
	AUDIOPACK "audiopacks/102.ebm"
