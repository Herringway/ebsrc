
MOVEMENT_CODE_2A: ;$C09703
	LDX $88
	LDA [$80],Y
	INY
	INY
	STA ENTITY_ABS_Z_TABLE,X
	LDA #$8000
	STA ENTITY_ABS_Z_FRACTION_TABLE,X
	RTS
