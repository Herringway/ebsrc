
EVENT_21: ;$C3A549
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3A426)
	EVENT_UNKNOWN_C0A6B8
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(UNKNOWN_C3A47C)
UNKNOWN_C3A553: ;$C3A553
	EVENT_UNKNOWN_C0A685 $00, $01
	EVENT_UNKNOWN_C0C48F
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN2)
	EVENT_UNKNOWN_C09FA8
	EVENT_UNKNOWN_C47044
	EVENT_UNKNOWN_C46B0A
	EVENT_UNKNOWN_C0A65F
	EVENT_UNKNOWN_C0A6AD $0020
	EVENT_SET_VELOCITIES_ZERO
	EVENT_UNKNOWN_C0C48F
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN2)
	EVENT_LOOP $04
		EVENT_UNKNOWN_C0A651 $06
		EVENT_PAUSE $0A
		EVENT_UNKNOWN_C0A651 $02
		EVENT_PAUSE $0A
	EVENT_LOOP_END
	EVENT_SHORTJUMP .LOWORD(UNKNOWN_C3A553)
@UNKNOWN2: ;$C3A592
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_3, $0002
	EVENT_PAUSE $0F
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_3, $0000
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN4)
@UNKNOWN3: ;$C3A59F
	EVENT_UNKNOWN_C0C48F
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(UNKNOWN_C3A553)
@UNKNOWN4:
	EVENT_UNKNOWN_C0A685 $80, $01
	EVENT_UNKNOWN_C46B65
	EVENT_UNKNOWN_C0C62B
	EVENT_UNKNOWN_C47044
	EVENT_UNKNOWN_C46B0A
	EVENT_UNKNOWN_C0A65F
	EVENT_UNKNOWN_C0A6AD $0008
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN3)
