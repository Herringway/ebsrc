.SEGMENT "BANK15"
.INCLUDE "common.asm"
.INCLUDE "config.asm"
.INCLUDE "structs.asm"

OVERWORLD_SPRITES_BANK5: ;$D50000
	.INCBIN "bin/overworld_sprites/4.bin"

UNKNOWN_D545C0: ;$D545C0
	.REPEAT $A40
		.BYTE 0 ;It's empty.
	.ENDREPEAT

.INCLUDE "data/items.asm"

.INCLUDE "data/store_inventories.asm"

.INCLUDE "data/psi_teleport_destinations.asm"

.INCLUDE "data/telephone_contacts.asm"

.INCLUDE "data/battle/action_table.asm"

.INCLUDE "data/battle/psi_abilities.asm"

.INCLUDE "data/battle/psi_names.asm"

.INCLUDE "data/battle/npc_ai_table.asm"

.INCLUDE "data/exp_table.asm"

.INCLUDE "data/battle/enemies.asm"

.INCLUDE "data/stats_growth_vars.asm"

.INCLUDE "data/condiment_table.asm"

.INCLUDE "data/map/teleport_destinations.asm"

.INCLUDE "data/map/hotspot_coordinates.asm"

.INCLUDE "data/timed_item_transformation_table.asm"

.INCLUDE "data/dont_care_names.asm"

.INCLUDE "data/initial_stats.asm"

.INCLUDE "data/timed_delivery_table.asm"
