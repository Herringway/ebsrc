
CC_1D_06: ;$C15C85
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 20
	TXA
	STA $12
	LDA #$0003
	CLC
	SBC CC_ARGUMENT_GATHERING_LOOP_COUNTER
	BRANCHLTEQS @UNKNOWN2
	LDA $12
	SEP #PROC_FLAGS::ACCUM8
	LDX CC_ARGUMENT_GATHERING_LOOP_COUNTER
	STA CC_ARGUMENT_STORAGE,X
	REP #PROC_FLAGS::ACCUM8
	INC CC_ARGUMENT_GATHERING_LOOP_COUNTER
	LDA #.LOWORD(CC_1D_06)
	JMP @UNKNOWN5
@UNKNOWN2:
	SEP #PROC_FLAGS::INDEX8
	LDY #$0018
	MOVE_INT1632 $12, $06
	JSL ASL32_ENTRY2
	PUSH32 $06
	LDY #$0010
	SEP #PROC_FLAGS::ACCUM8
	MOVE_INT832 CC_ARGUMENT_STORAGE+2, $06
	REP #PROC_FLAGS::ACCUM8
	JSL ASL32_ENTRY2
	PUSH32 $06
	LDY #$0008
	SEP #PROC_FLAGS::ACCUM8
	MOVE_INT832 CC_ARGUMENT_STORAGE+1, $06
	REP #PROC_FLAGS::ACCUM8
	JSL ASL32_ENTRY2
	MOVE_INT $06, $0A
	SEP #PROC_FLAGS::ACCUM8
	MOVE_INT832 CC_ARGUMENT_STORAGE, $06
	REP #PROC_FLAGS::ACCUM8
	OR_INT_ASSIGN $06, $0A
	PULL32 $0A
	OR_INT_ASSIGN $06, $0A
	PULL32 $0A
	OR_INT_ASSIGN $06, $0A
	MOVE_INT_CONSTANT NULL, $0A
	CMP32 $06, $0A
	BNE @ARG_IS_NONZERO
	JSR GET_ARGUMENT_MEMORY
@ARG_IS_NONZERO:
	MOVE_INT $06, $0E
	JSL DEPOSIT_INTO_ATM
	LDA #NULL
@UNKNOWN5:
	PLD
	RTS
