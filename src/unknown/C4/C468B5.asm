
UNKNOWN_C468B5: ;$C468B5
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 18
	STA $10
	LDX #$0000
	STX $0E
	LDA CURRENT_ENTITY_SLOT
	ASL
	TAX
	LDA $10
	CMP ENTITY_ABS_X_TABLE,X
	BCS @UNKNOWN0
	LDX #$0001
	STX $0E
@UNKNOWN0:
	LDX $0E
	TXA
	PLD
	RTL
