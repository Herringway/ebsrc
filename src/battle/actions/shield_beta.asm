
BTLACT_SHIELD_B: ;$C29D81
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 18
	LDX #STATUS_6::SHIELD_POWER
	LDA .LOWORD(CURRENT_TARGET)
	JSR a:.LOWORD(SHIELDS_COMMON)
	CMP #$0000
	BEQ @UNKNOWN0
	DISPLAY_BATTLE_TEXT_PTR MSG_BTL_POWER_ADD
	BRA @UNKNOWN1
@UNKNOWN0:
	DISPLAY_BATTLE_TEXT_PTR MSG_BTL_POWER_ON
@UNKNOWN1:
	PLD
	RTL
