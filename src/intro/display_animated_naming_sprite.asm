
DISPLAY_ANIMATED_NAMING_SPRITE: ;$C4D7D9
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 24
	STA $16
	LOADPTR UNKNOWN_C3FD2D, $0A
	LDA $16
	ASL
	ASL
	CLC
	ADC $0A
	STA $0A
	DEREFERENCE_PTR_TO $0A, $06
	BRA @UNKNOWN1
@UNKNOWN0:
	STZ $0E
	STZ $10
	LDY #$FFFF
	STY $14
	LDY #$0002
	LDA [$06],Y
	TAX
	LDA $12
	LDY $14
	JSL CREATE_ENTITY
	LDA #$0004
	CLC
	ADC $06
	STA $06
@UNKNOWN1:
	LDA [$06]
	STA $12
	BNE @UNKNOWN0
	STZ UNKNOWN_7EB4B4
	PLD
	RTL
