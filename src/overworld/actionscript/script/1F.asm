
MOVEMENT_CODE_1F: ;$C09B79
	LDA [$80],Y
	AND #$00FF
	ASL
	TAX
	LDA f:ENTITY_SCRIPT_VAR_TABLES,X
	ADC $88
	STA $8C
	LDX $8A
	LDA ENTITY_TEMPVARS,X
	STA ($8C)
	INY
	RTS
