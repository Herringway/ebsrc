
CALC_SAVE_BLOCK_XOR_CHECKSUM: ;$EF077B
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 16
	LDY #$0500
	JSL MULT16
	STA $06
	STZ $08
	CLC
	VAR_ADD_CONST_INT_ASSIGN $306020, $06
	LDX #$0000
	TXA
	STA $0E
	BRA @UNKNOWN1
@UNKNOWN0:
	LDA [$06]
	STA $02
	TXA
	EOR $02
	TAX
	INC $06
	INC $06
	LDA $0E
	INC
	STA $0E
@UNKNOWN1:
	CMP #$0270
	BCC @UNKNOWN0
	TXA
	PLD
	RTS
