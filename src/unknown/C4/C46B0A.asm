
UNKNOWN_C46B0A: ;$C46B0A
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 16
	LDY #$2000
	CLC
	ADC #$1000
	JSL DIVISION16S_DIVISOR_POSITIVE
	STA $0E
	LDA CURRENT_ENTITY_SLOT
	ASL
	TAX
	LDA $0E
	STA UNKNOWN_7E1A86,X
	PLD
	RTL
