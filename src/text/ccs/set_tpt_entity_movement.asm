
CC_1F_F1: ;$C16EBF
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 18
	TXA
	STA $10
	LDA #$0003
	CLC
	SBC CC_ARGUMENT_GATHERING_LOOP_COUNTER
	BRANCHLTEQS @UNKNOWN2
	LDA $10
	SEP #PROC_FLAGS::ACCUM8
	LDX CC_ARGUMENT_GATHERING_LOOP_COUNTER
	STA CC_ARGUMENT_STORAGE,X
	REP #PROC_FLAGS::ACCUM8
	INC CC_ARGUMENT_GATHERING_LOOP_COUNTER
	LDA #.LOWORD(CC_1F_F1)
	BRA @UNKNOWN3
@UNKNOWN2:
	SEP #PROC_FLAGS::INDEX8
	LDY #$0008
	LDA CC_ARGUMENT_STORAGE+1
	AND #$00FF
	JSL ASL16_ENTRY2
	STA $02
	LDA CC_ARGUMENT_STORAGE
	AND #$00FF
	ORA $02
	REP #PROC_FLAGS::INDEX8
	TAY
	STY $0E
	SEP #PROC_FLAGS::INDEX8
	LDY #$0008
	LDA $10
	JSL ASL16_ENTRY2
	STA $02
	LDA CC_ARGUMENT_STORAGE+2
	AND #$00FF
	ORA $02
	REP #PROC_FLAGS::INDEX8
	TAX
	LDY $0E
	TYA
	JSL UNKNOWN_C4617C
	LDA #NULL
@UNKNOWN3:
	PLD
	RTS
