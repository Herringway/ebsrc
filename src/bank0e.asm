.SEGMENT "BANK0E"
.ORG $CE0000

.INCBIN "bin/bank0e.bin"

.ORG $CE0000
BATTLE_SPRITES_BLOCK_2: ;$CE0000

.ORG $CE62EE
BATTLE_SPRITES_POINTERS: ;$CE62EE

.ORG $CE6514
BATTLE_SPRITE_PALETTES: ;$CE6514

.ORG $CE6914
SWIRL_DATA: ;$CE6914

.ORG $CEDC45
SWIRL_POINTER_TABLE: ;$CEDC45

.ORG $CEDD41
SWIRL_PRIMARY_TABLE: ;$CEDD41

.ORG $CEDD5D
SOUND_STONE_GFX: ;$CEDD5D

.ORG $CEF806
SOUND_STONE_PALETTE: ;$CEF806

.ORG $CEF8C6
AUDIO_PACK_102: ;$CEF8C6