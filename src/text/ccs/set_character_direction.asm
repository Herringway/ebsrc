
CC_1F_13:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	TXA
	STA @LOCAL00
	LDA #1
	CLC
	SBC CC_ARGUMENT_GATHERING_LOOP_COUNTER
	BRANCHLTEQS @UNKNOWN2
	LDA @LOCAL00
	SEP #PROC_FLAGS::ACCUM8
	LDX CC_ARGUMENT_GATHERING_LOOP_COUNTER
	STA CC_ARGUMENT_STORAGE,X
	REP #PROC_FLAGS::ACCUM8
	INC CC_ARGUMENT_GATHERING_LOOP_COUNTER
	LDA #.LOWORD(CC_1F_13)
	BRA @UNKNOWN7
@UNKNOWN2:
	LDA CC_ARGUMENT_STORAGE
	AND #$00FF
	BEQ @ARG_1_IS_ZERO
	SEP #PROC_FLAGS::ACCUM8
	MOVE_INT832 CC_ARGUMENT_STORAGE, @VIRTUAL06
	BRA @ARG_1_IS_NONZERO
@ARG_1_IS_ZERO:
	JSR GET_WORKING_MEMORY
@ARG_1_IS_NONZERO:
	SEP #PROC_FLAGS::ACCUM8
	LDA @VIRTUAL06
	STA @VIRTUAL00
	REP #PROC_FLAGS::ACCUM8
	LDA @LOCAL00
	BEQ @ARG_2_IS_ZERO
	STORE_INT1632 @VIRTUAL06
	BRA @ARG_2_IS_NONZERO
@ARG_2_IS_ZERO:
	JSR GET_ARGUMENT_MEMORY
@ARG_2_IS_NONZERO:
	LDA @VIRTUAL06
	TAX
	DEX
	LDA @VIRTUAL00
	AND #$00FF
	JSL UNKNOWN_C46363
	LDA #NULL
@UNKNOWN7:
	END_C_FUNCTION
