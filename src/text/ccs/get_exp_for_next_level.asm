
CC_19_18: ;$C15384
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 18
	CPX #$0000
	BEQ @ARG_IS_ZERO
	TXA
	BRA @ARG_IS_NONZERO
@ARG_IS_ZERO:
	JSR GET_ARGUMENT_MEMORY
	LDA $06
@ARG_IS_NONZERO:
	JSL GET_REQUIRED_EXP
	MOVE_INT $06, $0E
	JSR SET_WORKING_MEMORY
	LDA #NULL
	PLD
	RTS
