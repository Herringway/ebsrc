
EVENT_782: ;$C39EF2
	EVENT_UNKNOWN_C0A864 $FF
	EVENT_UNKNOWN_WRITE_121E .LOWORD(UNKNOWN_C09FAE_ENTRY4)
	EVENT_SET_10F2 $FF
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_3, $FFE1
	EVENT_UNKNOWN_C474A8
	EVENT_PAUSE 1*FIFTEENTH_OF_A_SECOND
	EVENT_UNKNOWN_C46E46
	EVENT_PAUSE 1*FRAME
	EVENT_SPAWN_ENTITY_UNKNOWN OVERWORLD_SPRITE::NESS_LYING_DOWN, EVENT_SCRIPT::EVENT_783
	EVENT_SHORTCALL .LOWORD(@UNKNOWN1)
	EVENT_SPAWN_ENTITY_UNKNOWN OVERWORLD_SPRITE::PAULA_LYING_DOWN, EVENT_SCRIPT::EVENT_783
	EVENT_SHORTCALL .LOWORD(@UNKNOWN1)
	EVENT_SPAWN_ENTITY_UNKNOWN OVERWORLD_SPRITE::JEFF_LYING_DOWN, EVENT_SCRIPT::EVENT_783
	EVENT_SHORTCALL .LOWORD(@UNKNOWN1)
	EVENT_SPAWN_ENTITY_UNKNOWN OVERWORLD_SPRITE::POO_LYING_DOWN, EVENT_SCRIPT::EVENT_783
	EVENT_SHORTCALL .LOWORD(@UNKNOWN1)
	EVENT_UNKNOWN_C46E46
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
@UNKNOWN1: ;$C39F3F
	EVENT_SHORTCALL .LOWORD(@UNKNOWN4)
	EVENT_PAUSE $B3*FRAMES
	EVENT_SHORTCALL .LOWORD(@UNKNOWN2)
	EVENT_SHORTCALL .LOWORD(@UNKNOWN2)
	EVENT_SHORTCALL .LOWORD(@UNKNOWN2)
	EVENT_PAUSE $AE*FRAMES
	EVENT_SHORTCALL .LOWORD(@UNKNOWN2)
	EVENT_SHORTCALL .LOWORD(@UNKNOWN2)
	EVENT_SHORTCALL .LOWORD(@UNKNOWN2)
	EVENT_SHORTCALL .LOWORD(@UNKNOWN2)
	EVENT_SHORTCALL .LOWORD(@UNKNOWN2)
	EVENT_SHORTCALL .LOWORD(@UNKNOWN2)
	EVENT_SHORTCALL .LOWORD(@UNKNOWN3)
	EVENT_PAUSE $23*FRAMES
	EVENT_SHORT_RETURN
@UNKNOWN2: ;$C39F67
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_3, $0016
	EVENT_LOOP $0C
		EVENT_UNKNOWN_C474A8
		EVENT_PAUSE 1*FRAME
		EVENT_ADD_9AF9 EVENT_9AF9_TABLE::UNKNOWN_3, $FFFE
	EVENT_LOOP_END
	EVENT_SHORT_RETURN
@UNKNOWN3: ;$C39F7A
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_3, $0000
	EVENT_LOOP $1F
		EVENT_ADD_9AF9 EVENT_9AF9_TABLE::UNKNOWN_3, $FFFF
		EVENT_UNKNOWN_C474A8
		EVENT_PAUSE 1*FRAME
	EVENT_LOOP_END
	EVENT_SHORT_RETURN
@UNKNOWN4: ;$C39F8D
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_3, $FFE1
	EVENT_LOOP $1F
		EVENT_ADD_9AF9 EVENT_9AF9_TABLE::UNKNOWN_3, $0001
		EVENT_UNKNOWN_C474A8
		EVENT_PAUSE 1*FRAME
	EVENT_LOOP_END
	EVENT_SHORT_RETURN
