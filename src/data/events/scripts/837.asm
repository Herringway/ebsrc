
EVENT_837: ;$C364B1
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C35FB6)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V3, $0008
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::DOWN
	EVENT_SET_DIRECTION
	EVENT_UNKNOWN_C0A443_ME2
@UNKNOWN1: ;$C364C3
	EVENT_UNKNOWN_C0A685 $80, $01
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::RIGHT
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA1E)
	EVENT_PAUSE 1*SIXTH_OF_A_SECOND
	EVENT_SET_VELOCITIES_ZERO
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0001
	EVENT_PAUSE 1*SECOND
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0000
	EVENT_UNKNOWN_C0A685 $80, $01
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::DOWN
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA1E)
	EVENT_PAUSE 1*SIXTH_OF_A_SECOND
	EVENT_SET_VELOCITIES_ZERO
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0001
	EVENT_PAUSE 1*HALF_OF_A_SECOND
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0000
	EVENT_UNKNOWN_C0A685 $80, $01
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::UP
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA1E)
	EVENT_PAUSE 1*SIXTH_OF_A_SECOND
	EVENT_SET_VELOCITIES_ZERO
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0001
	EVENT_PAUSE 1*SECOND
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0000
	EVENT_UNKNOWN_C0A685 $80, $01
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::LEFT
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA1E)
	EVENT_PAUSE 1*SIXTH_OF_A_SECOND
	EVENT_SET_VELOCITIES_ZERO
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0001
	EVENT_PAUSE $28*FRAMES
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0000
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN1)
