
MOVEMENT_CODE_29: ;$C096F3
	LDX $88
	LDA [$80],Y
	INY
	INY
	STA ENTITY_ABS_Y_TABLE,X
	LDA #$8000
	STA ENTITY_ABS_Y_FRACTION_TABLE,X
	RTS
