
EVENT_295: ;$C31068
	EVENT_SET_X $0168
	EVENT_SET_Y $26D0
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AAAA)
	EVENT_SET_10F2 $00
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0009
	EVENT_TEST_EVENT_FLAG EVENT_FLAG::SCARABA_REACHED
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(UNKNOWN_C31086)
	EVENT_SET_10F2 $FF
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0000
UNKNOWN_C31086: ;$C31086
	EVENT_UNKNOWN_C0A3A4_ME2
	EVENT_UNKNOWN_C0A685 $60, $01
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0010
	EVENT_UNKNOWN_C0A943 $FF
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB44)
UNKNOWN_C3109C: ;$C3109C
	EVENT_PAUSE 1*FRAME
	EVENT_SET_VELOCITIES_ZERO
	EVENT_UNKNOWN_C0A943 $FF
	EVENT_UNKNOWN_C0A8C6
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(UNKNOWN_C3109C)
	EVENT_END_UNKNOWN2
	EVENT_UNKNOWN_C46E46
	EVENT_HALT
