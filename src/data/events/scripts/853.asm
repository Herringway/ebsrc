
EVENT_853: ;$C3699B
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C35FB6)
	EVENT_WRITE_WORD_TEMPVAR $0006
	EVENT_UNKNOWN_C0A65F
	EVENT_UNKNOWN_C0A3A4_ME2
	EVENT_PAUSE $8C*FRAMES
	EVENT_PAUSE $8C*FRAMES
	EVENT_PAUSE 1*SECOND
	EVENT_SPAWN_ENTITY_UNKNOWN OVERWORLD_SPRITE::KING, EVENT_SCRIPT::EVENT_854
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
