
EVENT_797: ;$C423A6
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C4220E)
	EVENT_SET_10F2 $07
	EVENT_SET_Y $006C
	EVENT_WRITE_WRAM_TEMPVAR .LOWORD(UNKNOWN_7E9F75)
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(@UNKNOWN1)
	EVENT_SET_X $02E3
	EVENT_SET_X_VELOCITY $FC6A
	EVENT_PAUSE $96
	EVENT_SET_VELOCITIES_ZERO
@UNKNOWN1:
	EVENT_SET_X $00C9
	EVENT_HALT