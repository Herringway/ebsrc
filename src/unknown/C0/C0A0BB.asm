
UNKNOWN_C0A0BB: ;$C0A0BB
	LDX $88
	LDA ENTITY_ABS_X_TABLE,X
	STA ENTITY_SCREEN_X_TABLE,X
	LDA ENTITY_ABS_Y_TABLE,X
	STA ENTITY_SCREEN_Y_TABLE,X
	RTS
