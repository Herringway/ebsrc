
CC_1C_13: ;$C173C0
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 20
	STX $12
	LDA #$0001
	CLC
	SBC .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	BVC @UNKNOWN0
	BPL @UNKNOWN2
	BRA @UNKNOWN1
@UNKNOWN0:
	BMI @UNKNOWN2
@UNKNOWN1:
	TXA
	SEP #PROC_FLAGS::ACCUM8
	LDX .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	STA .LOWORD(CC_ARGUMENT_STORAGE),X
	REP #PROC_FLAGS::ACCUM8
	INC .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	LDA #.LOWORD(CC_1C_13)
	BRA @UNKNOWN5
@UNKNOWN2:
	JSR a:.LOWORD(GET_BLINKING_PROMPT)
	CMP #$0000
	BEQ @UNKNOWN4
	LDX $12
	DEX
	LDA .LOWORD(CC_ARGUMENT_STORAGE)
	AND #$00FF
	DEC
	JSL UNKNOWN_C3FAC9
	CMP #$0000
	STA $06
	STZ $08
	BPL @UNKNOWN3
	DEC $08
@UNKNOWN3:
	MOVE_INT $06, $0E
	JSR a:.LOWORD(SET_WORKING_MEMORY)
@UNKNOWN4:
	LDA #NULL
@UNKNOWN5:
	PLD
	RTS
