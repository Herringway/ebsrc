
CC_1A_06: ;$C14EB5
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 20
	STX $12
	JSL CLEAR_9622
	CREATE_WINDOW_NEAR .LOWORD(CURRENT_FOCUS_WINDOW)
	JSL UNKNOWN_C12DD5
	LDX $12
	BEQ @UNKNOWN0
	TXA
	BRA @UNKNOWN1
@UNKNOWN0:
	JSR a:.LOWORD(GET_ARGUMENT_MEMORY)
	LDA $06
@UNKNOWN1:
	JSR a:.LOWORD(UNKNOWN_C19DB5)
	STA $06
	STZ $08
	MOVE_INT $06, $0E
	JSR a:.LOWORD(SET_WORKING_MEMORY)
	LDA .LOWORD(CURRENT_FOCUS_WINDOW)
	JSR a:.LOWORD(SET_WINDOW_FOCUS)
	JSL SET_9622_ONE
	LDA #NULL
	PLD
	RTS
