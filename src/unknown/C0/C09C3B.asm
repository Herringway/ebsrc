
UNKNOWN_C09C3B: ;$C09C3B
	PHA
	LDA .LOWORD(LOADED_SPRITE_MOVEMENT_CODES_TABLE),X
	BMI @UNKNOWN0
	PHY
	LDA #$FFFF
	STA .LOWORD(LOADED_SPRITE_MOVEMENT_CODES_TABLE),X
	JSR a:.LOWORD(UNKNOWN_C09DA1)
	JSR a:.LOWORD(UNKNOWN_C09C99)
	JSR a:.LOWORD(UNKNOWN_C09C73)
	JSR a:.LOWORD(UNKNOWN_C09C8F)
	PLY
@UNKNOWN0:
	PLA
	RTS