
EVENT_481: ;$C33E42
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB26)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0001
	EVENT_SET_Z $001C
	EVENT_SHORTJUMP_UNKNOWN .LOWORD(@UNKNOWN4)
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::DOWN
	EVENT_SET_DIRECTION
	EVENT_UNKNOWN_C0A3A4_ME2
	EVENT_SET_Z_VELOCITY $0020
	EVENT_PAUSE $80*FRAMES
	EVENT_PAUSE $80*FRAMES
	EVENT_SET_Z_VELOCITY $0000
	EVENT_PAUSE 1*FRAME
	EVENT_UNKNOWN_C0A943 $FF
	EVENT_WRITE_WORD_TEMPVAR $FFFF
	EVENT_SET_DIRECTION
@UNKNOWN1: ;$C33E72
	EVENT_UNKNOWN_C46ADB
	EVENT_UNKNOWN_C46B0A
	EVENT_UNKNOWN_C46957
	EVENT_PAUSE 1*TWENTIETH_OF_A_SECOND
	EVENT_TEST_EVENT_FLAG EVENT_FLAG::UNKNOWN_002
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN1)
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::DOWN
	EVENT_SET_DIRECTION
	EVENT_UNKNOWN_C0A3A4_ME2
	EVENT_UNKNOWN_WRITE_11A6 .LOWORD(UNKNOWN_C0A039)
@UNKNOWN2: ;$C33E97
	EVENT_PAUSE 1*FRAME
	EVENT_TEST_EVENT_FLAG EVENT_FLAG::UNKNOWN_002
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(@UNKNOWN2)
	EVENT_UNKNOWN_WRITE_11A6 .LOWORD(UNKNOWN_C0A03A)
@UNKNOWN3: ;$C33EA5
	EVENT_UNKNOWN_C46ADB
	EVENT_UNKNOWN_C46B0A
	EVENT_UNKNOWN_C46957
	EVENT_PAUSE 1*TWENTIETH_OF_A_SECOND
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN3)
@UNKNOWN4: ;$C33EB6
	EVENT_UNKNOWN_C0A86F $00FC
	EVENT_SET_Y_RELATIVE $FFFE
	EVENT_PAUSE 1*FRAME
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN4)
