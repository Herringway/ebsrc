
UNKNOWN_C47705: ;$C47705
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 26
	LDY CURRENT_ENTITY_SLOT
	STY $18
	TYA
	ASL
	TAX
	LDA ENTITY_SCRIPT_VAR0_TABLE,X
	AND #$0001
	BEQ @UNKNOWN0
	LDA #$05FC
	STA $16
	BRA @UNKNOWN1
@UNKNOWN0:
	LDA #$08FA
	STA $16
@UNKNOWN1:
	LOADPTR UNKNOWN_7F0000, $06
	LDA $16
	CLC
	ADC $06
	STA $06
	STA $12
	LDA $08
	STA $14
	MOVE_INT $06, $0E
	JSR UNKNOWN_C47501
	LDX $12
	LDA $14
	JSL UNKNOWN_C425FD
	LDY $18
	TYA
	ASL
	CLC
	ADC #.LOWORD(ENTITY_SCRIPT_VAR0_TABLE)
	TAX
	LDA RAM,X
	INC
	STA RAM,X
	PLD
	RTL
