
CC_1F_66:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT8
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	STX @LOCAL02
	LDA #5
	CLC
	SBC CC_ARGUMENT_GATHERING_LOOP_COUNTER
	BRANCHLTEQS @UNKNOWN2
	TXA
	SEP #PROC_FLAGS::ACCUM8
	LDX CC_ARGUMENT_GATHERING_LOOP_COUNTER
	STA CC_ARGUMENT_STORAGE,X
	REP #PROC_FLAGS::ACCUM8
	INC CC_ARGUMENT_GATHERING_LOOP_COUNTER
	LDA #.LOWORD(CC_1F_66)
	JMP @UNKNOWN7
@UNKNOWN2:
	LDA CC_ARGUMENT_STORAGE
	AND #$00FF
	BEQ @UNKNOWN3
	SEP #PROC_FLAGS::ACCUM8
	STORE_INT832 @VIRTUAL06
	BRA @UNKNOWN4
@UNKNOWN3:
	JSR GET_ARGUMENT_MEMORY
@UNKNOWN4:
	SEP #PROC_FLAGS::ACCUM8
	LDA @VIRTUAL06
	STA @VIRTUAL00
	REP #PROC_FLAGS::ACCUM8
	LDA CC_ARGUMENT_STORAGE+1
	AND #$00FF
	BEQ @UNKNOWN5
	SEP #PROC_FLAGS::ACCUM8
	STORE_INT832 @VIRTUAL06
	BRA @UNKNOWN6
@UNKNOWN5:
	JSR GET_WORKING_MEMORY
@UNKNOWN6:
	SEP #PROC_FLAGS::ACCUM8
	LDA @VIRTUAL06
	STA @LOCAL01
	LDX @LOCAL02
	REP #PROC_FLAGS::ACCUM8
	TXA
	STORE_INT1632 @VIRTUAL06
	SEP #PROC_FLAGS::INDEX8
	LDY #24
	JSL ASL32_ENTRY2
	PUSH32 @VIRTUAL06
	LDY #16
	SEP #PROC_FLAGS::ACCUM8
	MOVE_INT832 CC_ARGUMENT_STORAGE+4, @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	JSL ASL32_ENTRY2
	PUSH32 @VIRTUAL06
	LDY #8
	SEP #PROC_FLAGS::ACCUM8
	MOVE_INT832 CC_ARGUMENT_STORAGE+3, @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	JSL ASL32_ENTRY2
	MOVE_INT @VIRTUAL06, $0A
	SEP #PROC_FLAGS::ACCUM8
	MOVE_INT832 CC_ARGUMENT_STORAGE+2, @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	OR_INT_ASSIGN @VIRTUAL06, $0A
	PULL32 $0A
	OR_INT_ASSIGN @VIRTUAL06, $0A
	PULL32 $0A
	OR_INT_ASSIGN @VIRTUAL06, $0A
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDA @LOCAL01
	AND #$00FF
	REP #PROC_FLAGS::INDEX8
	TAX
	LDA @VIRTUAL00
	AND #$00FF
	JSL ACTIVATE_HOTSPOT
	LDA #NULL
@UNKNOWN7:
	END_C_FUNCTION
