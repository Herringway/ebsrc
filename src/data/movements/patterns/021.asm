
MOVEMENT_21: ;$C3A549
	EBMOVE_SHORTCALL .LOWORD(UNKNOWN_C3A426)
	EBMOVE_UNKNOWN_C0A6B8
	EBMOVE_SHORTCALL_CONDITIONAL_NOT .LOWORD(UNKNOWN_C3A47C)
UNKNOWN_C3A553: ;$C3A553
	EBMOVE_UNKNOWN_C0A685 $00, $01
	EBMOVE_UNKNOWN_C0C48F
	EBMOVE_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN2)
	EBMOVE_UNKNOWN_C09FA8
	EBMOVE_UNKNOWN_C47044
	EBMOVE_UNKNOWN_C46B0A
	EBMOVE_UNKNOWN_C0A65F
	EBMOVE_UNKNOWN_C0A6AD $0020
	EBMOVE_SET_VELOCITIES_ZERO
	EBMOVE_UNKNOWN_C0C48F
	EBMOVE_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN2)
	EBMOVE_LOOP $04
		EBMOVE_UNKNOWN_C0A651 $06
		EBMOVE_PAUSE $0A
		EBMOVE_UNKNOWN_C0A651 $02
		EBMOVE_PAUSE $0A
	EBMOVE_LOOP_END
	EBMOVE_SHORTJUMP .LOWORD(UNKNOWN_C3A553)
@UNKNOWN2: ;$C3A592
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY $00, $0002
	EBMOVE_PAUSE $0F
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY $00, $0000
	EBMOVE_SHORTJUMP .LOWORD(@UNKNOWN4)
@UNKNOWN3: ;$C3A59F
	EBMOVE_UNKNOWN_C0C48F
	EBMOVE_SHORTCALL_CONDITIONAL_NOT .LOWORD(UNKNOWN_C3A553)
@UNKNOWN4:
	EBMOVE_UNKNOWN_C0A685 $80, $01
	EBMOVE_UNKNOWN_C46B65
	EBMOVE_UNKNOWN_C0C62B
	EBMOVE_UNKNOWN_C47044
	EBMOVE_UNKNOWN_C46B0A
	EBMOVE_UNKNOWN_C0A65F
	EBMOVE_UNKNOWN_C0A6AD $0008
	EBMOVE_SHORTJUMP .LOWORD(@UNKNOWN3)
