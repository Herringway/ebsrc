
EVENT_832: ;$C36647
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C35FB6)
	EVENT_LOOP $03
		EVENT_WRITE_WORD_TEMPVAR DIRECTION::LEFT
		EVENT_SET_DIRECTION
		EVENT_UNKNOWN_C0A3A4_ME2
		EVENT_PAUSE $32*FRAMES
		EVENT_WRITE_WORD_TEMPVAR DIRECTION::DOWN
		EVENT_SET_DIRECTION
		EVENT_UNKNOWN_C0A3A4_ME2
		EVENT_PAUSE 7*THIRTIETHS_OF_A_SECOND
		EVENT_WRITE_WORD_TEMPVAR DIRECTION::RIGHT
		EVENT_SET_DIRECTION
		EVENT_UNKNOWN_C0A3A4_ME2
		EVENT_PAUSE 7*THIRTIETHS_OF_A_SECOND
		EVENT_WRITE_WORD_TEMPVAR DIRECTION::UP
		EVENT_SET_DIRECTION
		EVENT_UNKNOWN_C0A3A4_ME2
		EVENT_PAUSE 7*THIRTIETHS_OF_A_SECOND
	EVENT_LOOP_END
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V3, $000C
	EVENT_UNKNOWN_C0A685 $00, $01
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::RIGHT
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA1E)
	EVENT_HALT
