
CC_1C_05: ;$C146BF
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 14
	CPX #$0000
	BEQ @UNKNOWN0
	TXA
	BRA @UNKNOWN1
@UNKNOWN0:
	JSR GET_ARGUMENT_MEMORY
	LDA $06
@UNKNOWN1:
	JSR UNKNOWN_C19216
	LDA #NULL
	PLD
	RTS
