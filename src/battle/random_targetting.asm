
RANDOM_TARGETTING: ;$C26EF8
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 22
	MOVE_INT $24, $0A
	MOVE_INT $0A, $12
	MOVE_INT_CONSTANT NULL, $06
	CMP32 $0A, $06
	BNE @UNKNOWN1
	MOVE_INT $06, $1C
	JMP @UNKNOWN6
@UNKNOWN1:
	LDY #$0000
	STY $10
	JSR RAND_LONG
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	AND #$001F
	INC
	STA $0E
	BRA @UNKNOWN5
@UNKNOWN2:
	LDY $10
	INY
	STY $10
	CPY #$0020
	BNE @UNKNOWN3
	LDY #$0000
	STY $10
@UNKNOWN3:
	MOVE_INT $12, $0A
	PHA
	LDA $0A
	PHA
	LOADPTR POWERS_OF_TWO_32BIT, $06
	TYA
	ASL
	ASL
	CLC
	ADC $06
	STA $06
	DEREFERENCE_PTR_TO $06, $0A
	PULL32 $06
	AND_INT_ASSIGN $06, $0A
	MOVE_INT_CONSTANT NULL, $0A
	CMP32 $06, $0A
	BEQ @UNKNOWN2
@UNKNOWN5:
	LDA $0E
	TAX
	DEC
	STA $0E
	CPX #$0000
	BNE @UNKNOWN2
	LOADPTR POWERS_OF_TWO_32BIT, $0A
	LDY $10
	TYA
	ASL
	ASL
	CLC
	ADC $0A
	STA $0A
	DEREFERENCE_PTR_TO $0A, $06
	MOVE_INT $06, $1C
@UNKNOWN6:
	PLD
	RTL
