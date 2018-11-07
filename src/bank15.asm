.SEGMENT "BANK15"
.INCLUDE "common.asm"

OVERWORLD_SPRITES_BANK5: ;$D50000
	.INCBIN "bin/overworld_sprites/4.bin"

UNKNOWN_D545C0: ;$D545C0
	.INCBIN "bin/unknowns/D545C0.bin"

.INCLUDE "data/items.asm"

STORE_TABLE: ;$D576B2
	.INCBIN "bin/unknowns/D576B2.bin"

PSI_TELEPORT_DEST_TABLE: ;$D57880
	.INCBIN "bin/unknowns/D57880.bin"

UNKNOWN_D57A70: ;$D57A70
	.INCBIN "bin/unknowns/D57A70.bin"

TELEPHONE_CONTACTS_TABLE: ;$D57AAE
	.INCBIN "bin/unknowns/D57AAE.bin"

BATTLE_ACTION_TABLE: ;$D57B68
	.INCBIN "bin/unknowns/D57B68.bin"

PSI_ABILITY_TABLE: ;$D58A50
	.INCBIN "bin/unknowns/D58A50.bin"

PSI_NAME_TABLE: ;$D58D7A
	.INCBIN "bin/unknowns/D58D7A.bin"

NPC_AI_TABLE: ;$D58F23
	.INCBIN "bin/unknowns/D58F23.bin"

EXP_TABLE: ;$D58F49
	.INCBIN "bin/unknowns/D58F49.bin"

.INCLUDE "data/battle/enemies.asm"

.INCLUDE "data/stats_growth_vars.asm"

.INCLUDE "data/condiment_table.asm"

.INCLUDE "data/map/teleport_destinations.asm"

.INCLUDE "data/map/hotspot_coordinates.asm"

.INCLUDE "data/timed_item_transformation_table.asm"

.INCLUDE "data/dont_care_names.asm"

INITIAL_STATS: ;$D5F5F5
	.INCBIN "bin/unknowns/D5F5F5.bin"

TIMED_DELIVERY_TABLE: ;$D5F645
	.INCBIN "bin/unknowns/D5F645.bin"
