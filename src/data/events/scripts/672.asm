
EVENT_672: ;$C37D33
	EVENT_SHORTCALL .LOWORD(EVENT_674_ENTRY_3)
@UNKNOWN0:
	EVENT_WRITE_WORD_TEMPVAR $0000
	EVENT_UNKNOWN_C0A857 EVENT_FLAG::UNKNOWN_20E
	EVENT_CALL_C09F82 400, 600, 1200, 1800
	EVENT_WRITE_TEMPVAR_WAITTIMER
	EVENT_WRITE_WRAM_TEMPVAR .LOWORD(BATTLE_SWIRL_COUNTDOWN)
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(EVENT_674_ENTRY_2)
	EVENT_WRITE_WRAM_TEMPVAR .LOWORD(UNKNOWN_7E4DBA)
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(EVENT_674_ENTRY_2)
	EVENT_UNKNOWN_C46C45
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_5, $00F8
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_6, $00F8
	EVENT_UNKNOWN_C46E74
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN0)
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_5, $0004
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_6, $0004
	EVENT_UNKNOWN_C46E74
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN1)
	EVENT_WRITE_WORD_TEMPVAR $0001
	EVENT_UNKNOWN_C0A857 EVENT_FLAG::UNKNOWN_20E
@UNKNOWN1:
	EVENT_EXEC_TEXT_BLOCK TEXT_EVENT_672
	EVENT_SHORTCALL .LOWORD(EVENT_674_ENTRY_4)
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN0)
