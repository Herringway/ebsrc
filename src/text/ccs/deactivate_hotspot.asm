
CC_1F_67: ;$C17233
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 14
	TXA
	BEQ @UNKNOWN0
	STORE_INT1632 $06
	BRA @UNKNOWN1
@UNKNOWN0:
	JSR GET_ARGUMENT_MEMORY
@UNKNOWN1:
	LDA $06
	JSL DISABLE_HOTSPOT
	LDA #NULL
	PLD
	RTS
