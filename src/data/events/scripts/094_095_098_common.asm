
EVENT_94_95_98_COMMON: ;$C3BA73
	EVENT_DISABLE_CURRENT_ENTITY_COLLISION2
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3BB5C)
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3BB73)
	EVENT_QUEUE_TEXT MSG_EVT_GHOST_1
	EVENT_PAUSE 1*FRAME
	EVENT_UNKNOWN_C0A685 $C0, $01
	EVENT_WRITE_VAR_TO_TEMPVAR ACTIONSCRIPT_VARS::V6
	EVENT_UNKNOWN_C468B5
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(@UNKNOWN1)
	EVENT_WRITE_WORD_TEMPVAR $0006
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN2)
@UNKNOWN1: ;$C3BA9C
	EVENT_WRITE_WORD_TEMPVAR $0002
@UNKNOWN2: ;$C3BA9F
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA1E)
	EVENT_HALT
