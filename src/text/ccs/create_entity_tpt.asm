
CC_1F_17:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	TXY
	STY @LOCAL01
	LDA #4
	CLC
	SBC CC_ARGUMENT_GATHERING_LOOP_COUNTER
	BRANCHLTEQS @UNKNOWN2
	TYA
	SEP #PROC_FLAGS::ACCUM8
	LDX CC_ARGUMENT_GATHERING_LOOP_COUNTER
	STA CC_ARGUMENT_STORAGE,X
	REP #PROC_FLAGS::ACCUM8
	INC CC_ARGUMENT_GATHERING_LOOP_COUNTER
	LDA #.LOWORD(CC_1F_17)
	BRA @UNKNOWN3
@UNKNOWN2:
	SEP #PROC_FLAGS::INDEX8
	LDY #8
	LDA CC_ARGUMENT_STORAGE+1
	AND #$00FF
	JSL ASL16_ENTRY2
	STA @VIRTUAL02
	LDA CC_ARGUMENT_STORAGE
	AND #$00FF
	ORA @VIRTUAL02
	STA @LOCAL00
	SEP #PROC_FLAGS::ACCUM8
	LDA #8
	TAY
	REP #PROC_FLAGS::ACCUM8
	LDA CC_ARGUMENT_STORAGE+3
	AND #$00FF
	JSL ASL16_ENTRY2
	STA @VIRTUAL02
	LDA CC_ARGUMENT_STORAGE+2
	AND #$00FF
	ORA @VIRTUAL02
	REP #PROC_FLAGS::INDEX8
	TAX
	LDA @LOCAL00
	JSL CREATE_PREPARED_ENTITY_NPC
	LDY @LOCAL01
	TYX
	JSL UNKNOWN_C4C91A
	LDA #NULL
@UNKNOWN3:
	END_C_FUNCTION
