
UNKNOWN_C07A31: ;$C07A31
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 16
	STA $0E
	TXA
	AND #$0080
	BEQ @UNKNOWN0
	LDA $0E
	ASL
	CLC
	ADC #.LOWORD(UNKNOWN_7E2E7A)
	TAX
	LDA RAM,X
	ORA #$4000
	STA RAM,X
@UNKNOWN0:
	PLD
	RTL
