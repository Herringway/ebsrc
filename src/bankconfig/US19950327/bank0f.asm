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

AUDIO_PACK_94: ;$CFF2B5
	AUDIOPACKBIN $763, $4800, "audiopacks/94-1.bin"
	AUDIOPACKBIN $12B, $4F80, "audiopacks/94-2.bin"
	AUDIOPACKBIN $191, $5100, "audiopacks/94-3.bin"
	AUDIOPACKBIN $252, $5400, "audiopacks/94-4.bin"
	AUDIOPACKTERMINATOR

AUDIO_PACK_96: ;$CFFF38
	AUDIOPACKBIN $BB, $4800, "audiopacks/96.bin"
	AUDIOPACKTERMINATOR
