
EVENT_118: ;$C3C016
	EVENT_SET_X $1DE8
	EVENT_SET_Y $1DE8
	EVENT_SET_10F2 $FF
	EVENT_PAUSE 9*MILLISECONDS
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA38)
	EVENT_UNKNOWN_C0A685 $00, $01
	EVENT_WRITE_WORD_TEMPVAR $0005
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA1E)
	EVENT_PLAY_SOUND SFX::DOOR_CLOSE
	EVENT_PAUSE $16*FRAMES
	EVENT_WRITE_WORD_TEMPVAR $0006
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA1E)
	EVENT_PAUSE $28*FRAMES
	EVENT_SET_VELOCITIES_ZERO
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_0E_TABLES::UNKNOWN_7, $0001
	EVENT_WRITE_TEMPVAR_9AF9 $04
	EVENT_WRITE_WORD_TEMPVAR $0000
	EVENT_UNKNOWN_C0A65F
	EVENT_UNKNOWN_C0A3A4_ME2
@UNKNOWN0: ;$C3C051
	EVENT_PAUSE 1*FRAME
	EVENT_TEST_EVENT_FLAG EVENT_FLAG::UNKNOWN_005
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN0)
	EVENT_SHORTJUMP_UNKNOWN .LOWORD(EVENT_115_116_117_118_119_COMMON)
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3BEA4)
@UNKNOWN1: ;$C3C062
	EVENT_PAUSE 1*FRAME
	EVENT_TEST_EVENT_FLAG EVENT_FLAG::UNKNOWN_005
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(@UNKNOWN1)
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3BED4)
	EVENT_WRITE_WORD_TEMPVAR $0001
	EVENT_UNKNOWN_C0A857 EVENT_FLAG::UNKNOWN_006
	EVENT_SHORTJUMP .LOWORD(EVENT_35)