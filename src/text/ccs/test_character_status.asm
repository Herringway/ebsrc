
CC_1D_0D:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	STX @VIRTUAL02
	LDA #2
	CLC
	SBC CC_ARGUMENT_GATHERING_LOOP_COUNTER
	BRANCHLTEQS @UNKNOWN2
	LDA @VIRTUAL02
	SEP #PROC_FLAGS::ACCUM8
	LDX CC_ARGUMENT_GATHERING_LOOP_COUNTER
	STA CC_ARGUMENT_STORAGE,X
	REP #PROC_FLAGS::ACCUM8
	INC CC_ARGUMENT_GATHERING_LOOP_COUNTER
	LDA #.LOWORD(CC_1D_0D)
	BRA @UNKNOWN8
@UNKNOWN2:
	LDA CC_ARGUMENT_STORAGE
	AND #$00FF
	STA @LOCAL03
	LDA CC_ARGUMENT_STORAGE+1
	AND #$00FF
	TAX
	LDY #0
	STY @LOCAL02
	CPX #0
	BEQ @UNKNOWN3
	STX @LOCAL01
	BRA @UNKNOWN4
@UNKNOWN3:
	JSR GET_ARGUMENT_MEMORY
	LDA @VIRTUAL06
	TAX
	STX @LOCAL01
@UNKNOWN4:
	LDA @LOCAL03
	BNE @UNKNOWN5
	JSR GET_WORKING_MEMORY
	LDA @VIRTUAL06
@UNKNOWN5:
	LDX @LOCAL01
	JSL CHECK_STATUS_GROUP
	CMP @VIRTUAL02
	BNE @UNKNOWN6
	LDY #1
	STY @LOCAL02
@UNKNOWN6:
	LDY @LOCAL02
	TYA
	STORE_INT1632S @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
	JSR SET_WORKING_MEMORY
	LDA #NULL
@UNKNOWN8:
	END_C_FUNCTION
