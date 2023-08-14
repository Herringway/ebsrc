.SEGMENT "BANK0F"
.INCLUDE "common.asm"
.INCLUDE "config.asm"
.INCLUDE "symbols/audiopacks.inc.asm"
.INCLUDE "symbols/doors.inc.asm"
.INCLUDE "symbols/map.inc.asm"
.INCLUDE "symbols/misc.inc.asm"
.INCLUDE "symbols/text.inc.asm"

.INCLUDE "data/map/door_data.asm"

.INCLUDE "data/map/door_config_table.asm"

.INCLUDE "data/map/overworld_event_music_pointer_table.asm"

.INCLUDE "data/map/overworld_event_music_table.asm"

.BYTE $00, $00, $08, 09, $12, $00, $12, $12, $12, $12

.INCLUDE "data/map/sprite_placement_pointer_table.asm"

.INCLUDE "data/map/sprite_placement_table.asm"

.INCLUDE "data/map/npc_config.asm"

AUDIO_PACK_94: ;$CFF2B5
	AUDIOPACK "audiopacks/94.ebm"

AUDIO_PACK_96: ;$CFFF38
	AUDIOPACK "audiopacks/96.ebm"
