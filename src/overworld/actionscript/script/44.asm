
MOVEMENT_CODE_44:
	LDX $8A
	LDA ENTITY_SCRIPT_TEMPVARS,X
	BEQ @RETURN
	STA ENTITY_SCRIPT_SLEEP_FRAMES,X
@RETURN:
	RTS
