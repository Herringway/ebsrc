
EVENT_769: ;$C39CD7
	EVENT_CHOOSE_RANDOM $0000, $0004, $0008, $000C, $0010, $0014, $0018, $001C, $0020, $0024
	EVENT_WRITE_TEMPVAR_WAITTIMER
	EVENT_UNKNOWN_WRITE_11A6 .LOWORD(UNKNOWN_C0A03A)
	EVENT_UNKNOWN_WRITE_121E .LOWORD(UNKNOWN_C09FF1)
	EVENT_SHORTJUMP_UNKNOWN .LOWORD(UNKNOWN_C3A12E)
	EVENT_SET_VELOCITIES_ZERO
	EVENT_UNKNOWN_C0A82F
@UNKNOWN1: ;$C39CFF
	EVENT_SET_10F2 $FF
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0000
	EVENT_SET_DIRECTION8 DIRECTION::DOWN
	EVENT_UNKNOWN_C0A3A4_ME2
	EVENT_CHOOSE_RANDOM $0000, $0002, $0004, $0006
	EVENT_WRITE_TEMPVAR_WAITTIMER
	EVENT_SET_Z $0060
	EVENT_SET_10F2 $00
	EVENT_UNKNOWN_C0A3A4_ME2
	EVENT_SET_Z_VELOCITY $FD00
	EVENT_PAUSE $20*FRAMES
	EVENT_SET_VELOCITIES_ZERO
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0004
	EVENT_SET_DIRECTION8 DIRECTION::UP
	EVENT_UNKNOWN_C0A3A4_ME2
	EVENT_PAUSE 2*FIFTEENTHS_OF_A_SECOND
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN1)
