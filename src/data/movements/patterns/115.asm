
MOVEMENT_115: ;$C3BEEE
	EBMOVE_SET_X $1DE8
	EBMOVE_SET_Y $1DE8
	EBMOVE_SHORTCALL .LOWORD(UNKNOWN_C3AA38)
	EBMOVE_SHORTJUMP_UNKNOWN .LOWORD(MOVEMENT_115_116_117_118_119_COMMON)
	EBMOVE_UNKNOWN_C0A685 $00, $01
	EBMOVE_WRITE_WORD_TEMPVAR $0005
	EBMOVE_SHORTCALL .LOWORD(UNKNOWN_C3AA1E)
	EBMOVE_PLAY_SOUND SFX::DOOR_CLOSE
	EBMOVE_PAUSE $16*FRAMES
	EBMOVE_WRITE_WORD_TEMPVAR $0006
	EBMOVE_SHORTCALL .LOWORD(UNKNOWN_C3AA1E)
	EBMOVE_PAUSE $58*FRAMES
	EBMOVE_SET_VELOCITIES_ZERO
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY $04, $0001
	EBMOVE_WRITE_WORD_TEMPVAR $0000
	EBMOVE_UNKNOWN_C0A65F
	EBMOVE_UNKNOWN_C0A3A4_ME2
@UNKNOWN0: ;$C3BF26
	EBMOVE_PAUSE 1*FRAME
	EBMOVE_TEST_EVENT_FLAG EVENT_FLAG::UNKNOWN_002
	EBMOVE_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN0)
	EBMOVE_SHORTCALL .LOWORD(UNKNOWN_C3BEA4)
@UNKNOWN1: ;$C3BF34
	EBMOVE_PAUSE 1*FRAME
	EBMOVE_TEST_EVENT_FLAG EVENT_FLAG::UNKNOWN_002
	EBMOVE_SHORTCALL_CONDITIONAL_NOT .LOWORD(@UNKNOWN1)
	EBMOVE_SHORTCALL .LOWORD(UNKNOWN_C3BED4)
	EBMOVE_WRITE_WORD_TEMPVAR $0001
	EBMOVE_UNKNOWN_C0A857 EVENT_FLAG::UNKNOWN_003
	EBMOVE_SHORTJUMP .LOWORD(MOVEMENT_35)
