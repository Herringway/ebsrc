.SEGMENT "BANK0F"
.ORG $CF0000

.INCBIN "bin/bank0f.bin"

.ORG $CF0000
DOOR_DEST_TABLE_1: ;$CF0000

.ORG $CF58EF
OVERWORLD_EVENT_MUSIC_PTR_TABLE: ;$CF58EF

.ORG $CF61E7
SPRITE_PLACEMENT_PTR_TABLE: ;$CF61E7

.ORG $CF8985
NPC_CONFIG_TABLE: ;$CF8985