
UNKNOWN_C3A20E:
	EVENT_SET_ANIMATION $00
	EVENT_UNKNOWN_C0A443_ME3
@UNKNOWN1:
	EVENT_WRITE_VAR_TO_TEMPVAR ACTIONSCRIPT_VARS::V0
	EVENT_SWITCH_CALL_TEMPVAR .LOWORD(@UNKNOWN2), .LOWORD(@UNKNOWN3), .LOWORD(@UNKNOWN4), .LOWORD(@UNKNOWN5), .LOWORD(@UNKNOWN6)
	EVENT_UNKNOWN_C0C6B6
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(@UNKNOWN1)
	EVENT_SHORTJUMP .LOWORD(UNKNOWN_C3A47C)
@UNKNOWN2:
	EVENT_PAUSE 2*FIFTEENTHS_OF_A_SECOND
	EVENT_SET_ANIMATION $01
	EVENT_UNKNOWN_C0A443_ME1
@UNKNOWN3:
	EVENT_PAUSE 2*FIFTEENTHS_OF_A_SECOND
	EVENT_SET_ANIMATION $00
	EVENT_UNKNOWN_C0A443_ME3
	EVENT_SHORT_RETURN
@UNKNOWN4:
	EVENT_PAUSE 1*FIFTEENTH_OF_A_SECOND
	EVENT_SET_ANIMATION $01
	EVENT_UNKNOWN_C0A443_ME1
	EVENT_PAUSE 1*FIFTEENTH_OF_A_SECOND
	EVENT_SET_ANIMATION $00
	EVENT_UNKNOWN_C0A443_ME3
	EVENT_SHORT_RETURN
@UNKNOWN5:
	EVENT_PAUSE $20*FRAMES
	EVENT_SET_ANIMATION $01
	EVENT_UNKNOWN_C0A443_ME1
	EVENT_PAUSE $20*FRAMES
	EVENT_SET_ANIMATION $00
	EVENT_UNKNOWN_C0A443_ME3
	EVENT_SHORT_RETURN
@UNKNOWN6:
	EVENT_PAUSE $10*FRAMES
	EVENT_SHORT_RETURN
