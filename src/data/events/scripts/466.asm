
EVENT_466: ;$C33CDA
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA38)
	EVENT_UNKNOWN_08 UNKNOWN_C48B3B
	EVENT_UNKNOWN_C0A685 $00, $01
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0001
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $1820
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $1BE8
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_UNKNOWN_C46E46
	EVENT_PAUSE 1*FRAME
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::UP
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA1E)
	EVENT_PAUSE $10*FRAMES
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $1858
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $1BC8
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0001
	EVENT_UNKNOWN_C0AA6E DIRECTION::LEFT, $00
	EVENT_PAUSE 1*SECOND
	EVENT_UNKNOWN_C46E46
	EVENT_PAUSE 1*FRAME
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0000
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V0, $0000
	EVENT_SHORTJUMP_UNKNOWN .LOWORD(UNKNOWN_C33DBE)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0008
UNKNOWN_C33D30: ;$C33D30
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $17C0
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $1BC8
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $17C0
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $1C00
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $1858
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $1C00
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $1858
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $1BC8
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_WRITE_9AF9_TEMPVAR ACTIONSCRIPT_VARS::V0
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(UNKNOWN_C33D30)
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::UP
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA1E)
	EVENT_PAUSE $1C*FRAMES
	EVENT_SET_VELOCITIES_ZERO
	EVENT_PAUSE $78*FRAMES
	EVENT_SET_X $17D0
	EVENT_SET_Y $1B90
	EVENT_UNKNOWN_C0A685 $00, $03
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::DOWN
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA1E)
	EVENT_PAUSE 4*MILLISECONDS
	EVENT_UNKNOWN_C0A685 $00, $02
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::DOWN
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA1E)
	EVENT_PAUSE $10*FRAMES
	EVENT_UNKNOWN_C0A685 $00, $01
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0001
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::DOWN
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA1E)
	EVENT_PAUSE 2*FIFTEENTHS_OF_A_SECOND
	EVENT_SET_VELOCITIES_ZERO
	EVENT_PAUSE 1*SECOND
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $1820
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $1BE8
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_X $1820
	EVENT_SET_Y $1BE8
	EVENT_CLEAR_TICK_CALLBACK
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0001
	EVENT_UNKNOWN_C46E46
	EVENT_HALT
