
UNKNOWN_C4CBE3: ;$C4CBE3
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 16
	MOVE_INT UNKNOWN_7EB4AA, $06
	LDX #$0000
	STX $0E
	BRA @UNKNOWN2
@UNKNOWN0:
	LDY #$0004
	LDA [$06],Y
	CMP #$0001
	BNE @UNKNOWN1
	MOVE_INT $06, $0A
	LDA [$0A]
	ASL
	TAX
	LDA #$FFFF
	STA ENTITY_ANIMATION_FRAME,X
@UNKNOWN1:
	LDA #$0014
	CLC
	ADC $06
	STA $06
	LDX $0E
	INX
	STX $0E
@UNKNOWN2:
	CPX UNKNOWN_7EB4A6
	BCC @UNKNOWN0
	PLD
	RTL
