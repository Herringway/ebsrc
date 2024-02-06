.SEGMENT "BANK10"
.INCLUDE "common.asm"
.INCLUDE "symbols/audiopacks.inc.asm"
.INCLUDE "symbols/doors.inc.asm"
.INCLUDE "symbols/misc.inc.asm"
.INCLUDE "symbols/text.inc.asm"

.INCLUDE "data/map/door_pointer_table.asm"

.INCLUDE "data/screen_transition_config_table.asm"

.INCLUDE "data/event_control_ptr_table.asm"

.INCLUDE "data/map/tile_event_control_table.asm"

.INCLUDE "data/map/enemy_placement.asm"

.INCLUDE "data/map/enemy_placement_groups_pointer_table.asm"

.INCLUDE "data/map/enemy_placement_groups.asm"

.INCLUDE "data/map/battle_entry_pointer_table.asm"

.INCLUDE "data/map/battle_groups_table.asm"

AUDIO_PACK_139:
	AUDIOPACK "audiopacks/139.ebm"
