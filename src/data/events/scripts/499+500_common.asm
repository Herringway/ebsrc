
EVENT_499_500_COMMON: ;$C34432
	EVENT_PAUSE 1*SECOND
	EVENT_UNKNOWN_EF0D73
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(EVENT_499_500_COMMON)
	EVENT_SHORTJUMP .LOWORD(UNKNOWN_C3444D)
UNKNOWN_C3443E: ;$C3443E
	EVENT_UNKNOWN_EF0CA7
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(UNKNOWN_C3447D)
	EVENT_UNKNOWN_EF0D23
	EVENT_LOOP_TEMPVAR
		EVENT_PAUSE 1*SECOND
	EVENT_LOOP_END
UNKNOWN_C3444D: ;$C3444D
	EVENT_UNKNOWN_EF0F60
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(UNKNOWN_C34457)
	EVENT_SHORTJUMP .LOWORD(UNKNOWN_C3443E)
UNKNOWN_C34457: ;$C34457
	EVENT_UNKNOWN_C2FF9A
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(UNKNOWN_C3447D)
	EVENT_WRITE_9AF9_TEMPVAR EVENT_9AF9_TABLE::UNKNOWN_3
	EVENT_UNKNOWN_C0C19B
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(UNKNOWN_C3443E)
	EVENT_SHORTJUMP_UNKNOWN .LOWORD(UNKNOWN_C3447A)
	EVENT_PAUSE 1*FRAME
	EVENT_UNKNOWN_EF0FDB
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C34488)
	EVENT_UNKNOWN_EF0D8D
	EVENT_SHORTJUMP .LOWORD(UNKNOWN_C344A8)
UNKNOWN_C3447A: ;$C3447A
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C344DE)
UNKNOWN_C3447D: ;$C3447D
	EVENT_UNKNOWN_EF0FF6
	EVENT_UNKNOWN_EF0DFA
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
UNKNOWN_C34488: ;$C34488
	EVENT_SET_10F2 $00
	EVENT_SHORTJUMP_UNKNOWN .LOWORD(UNKNOWN_C3A09F)
	EVENT_UNKNOWN_C0A3A4_ME2
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_5, $0016
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_6, $0016
UNKNOWN_C34499: ;$C34499
	EVENT_PAUSE 1*FRAME
	EVENT_WRITE_9AF9_TEMPVAR EVENT_9AF9_TABLE::UNKNOWN_7
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(UNKNOWN_C344A7)
	EVENT_UNKNOWN_C46EF8
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(UNKNOWN_C34499)
UNKNOWN_C344A7: ;$C344A7
	EVENT_SHORT_RETURN
UNKNOWN_C344A8: ;$C344A8
	EVENT_SET_VELOCITIES_ZERO
	EVENT_PAUSE 1*FRAME
	EVENT_END_UNKNOWN2
	EVENT_END_UNKNOWN2
	EVENT_SHORTJUMP_UNKNOWN .LOWORD(UNKNOWN_C343DB)
	EVENT_WRITE_9AF9_TEMPVAR EVENT_9AF9_TABLE::UNKNOWN_3
	EVENT_UNKNOWN_C0C251
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(UNKNOWN_C344D2)
	EVENT_UNKNOWN_EF0E8A
	EVENT_UNKNOWN_C0A685_ME2
UNKNOWN_C344C1: ;$C344C1
	EVENT_UNKNOWN_C0D98F
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(UNKNOWN_C344D2)
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_UNKNOWN_C46C87
	EVENT_SHORTJUMP .LOWORD(UNKNOWN_C344C1)
UNKNOWN_C344D2: ;$C344D2
	EVENT_SET_VELOCITIES_ZERO
	EVENT_UNKNOWN_EF0FF6
	EVENT_UNKNOWN_C46E46
UNKNOWN_C344DB: ;$C344DB
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
UNKNOWN_C344DE: ;$C344DE
	EVENT_UNKNOWN_EF0E67
	EVENT_UNKNOWN_C0A685_ME2
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_8, $0003
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_7, $0000
UNKNOWN_C344EE: ;$C344EE
	EVENT_UNKNOWN_C0D98F
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(UNKNOWN_C344FF)
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_UNKNOWN_C46C87
	EVENT_SHORTJUMP .LOWORD(UNKNOWN_C344EE)
UNKNOWN_C344FF: ;$C344FF
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_7, $0001
	EVENT_PAUSE $F0*FRAMES
	EVENT_SHORTJUMP .LOWORD(UNKNOWN_C344FF)
