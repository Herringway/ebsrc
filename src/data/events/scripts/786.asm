
EVENT_786: ;$C0AD8A
	EVENT_SET_POSITION_CHANGE_CALLBACK .LOWORD(UNKNOWN_C0A039)
	EVENT_SET_PHYSICS_CALLBACK .LOWORD(UNKNOWN_C0A26B)
	EVENT_PAUSE $08
	EVENT_SET_ANIMATION $00
	EVENT_UNKNOWN_C0A443_ENTRY3
@UNKNOWN0:
	EVENT_EX_CALLROUTINE $1, UNKNOWN_C0778A
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN0)
