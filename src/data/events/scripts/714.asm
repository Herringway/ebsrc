
EVENT_714: ;$C38939
	EVENT_UNKNOWN_43 $00
	EVENT_UNKNOWN_C0A679 $00
	EVENT_UNKNOWN_WRITE_121E .LOWORD(UNKNOWN_C09FAE_ENTRY2)
	EVENT_SET_10F2 $00
	EVENT_SET_VELOCITIES_ZERO
	EVENT_SHORTJUMP_UNKNOWN .LOWORD(UNKNOWN_C3899E)
	EVENT_SHORTJUMP_UNKNOWN .LOWORD(UNKNOWN_C38978)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0000
UNKNOWN_C38950: ;$C38950
	EVENT_UNKNOWN_C0A86F $006A
	EVENT_SET_Y_RELATIVE $FFF0
	EVENT_SET_X_RELATIVE $0010
	EVENT_PAUSE 1*FRAME
	EVENT_TEST_EVENT_FLAG EVENT_FLAG::UNKNOWN_20A
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(UNKNOWN_C38950)
UNKNOWN_C38967: ;$C38967
	EVENT_UNKNOWN_C0A86F $006A
	EVENT_SET_Y_RELATIVE $FFF0
	EVENT_SET_X_RELATIVE $FFF0
	EVENT_PAUSE 1*FRAME
	EVENT_SHORTJUMP .LOWORD(UNKNOWN_C38967)
