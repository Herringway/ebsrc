.SEGMENT "BANK0F"
.INCLUDE "common.asm"
.INCLUDE "config.asm"

.INCLUDE "data/map/door_data.asm"

.INCLUDE "data/map/door_config_table.asm"

.INCLUDE "data/map/overworld_event_music_pointer_table.asm"

.INCLUDE "data/map/overworld_event_music_table.asm"

.BYTE $00, $00, $08, 09, $12, $00, $12, $12, $12, $12

.INCLUDE "data/map/sprite_placement_pointer_table.asm"

.INCLUDE "data/map/sprite_placement_table.asm"

.INCLUDE "data/map/npc_config.asm"
