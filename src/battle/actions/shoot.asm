
BTLACT_SHOOT: ;$C28740
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 18
	LDA #$0001
	JSR a:.LOWORD(MISS_CALC)
	CMP #$0000
	BNE @UNKNOWN1
	JSR a:.LOWORD(DETERMINE_DODGE)
	CMP #$0000
	BNE @UNKNOWN0
	JSR a:.LOWORD(BTLACT_LEVEL_2_ATK)
	BRA @UNKNOWN1
@UNKNOWN0:
	DISPLAY_BATTLE_TEXT_PTR MSG_BTL_UTU_YOKETA
@UNKNOWN1:
	PLD
	RTL
