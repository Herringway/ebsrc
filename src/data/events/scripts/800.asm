
EVENT_800: ;$C35214
	EVENT_WRITE_9AF9_WAIT_TIMER EVENT_9AF9_TABLE::UNKNOWN_3
	EVENT_UNKNOWN_WRITE_121E .LOWORD(UNKNOWN_C09FAE_ENTRY4)
	EVENT_UNKNOWN_C0A679 $03
	EVENT_SET_10F2 $00
	EVENT_SET_VELOCITIES_ZERO
	EVENT_UNKNOWN_C0A651 $04
@UNKNOWN1: ;$C35226
	EVENT_WRITE_WRAM_TEMPVAR $0099
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(@UNKNOWN1)
	EVENT_UNKNOWN_C0AAAC
	EVENT_HALT
