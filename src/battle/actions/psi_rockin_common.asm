
PSI_ROCKIN_COMMON: ;$C29516
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 22
	TAX
	STX $14
	JSR PSI_SHIELD_NULLIFY
	CMP #$0000
	BNE @RETURN
	LDX $14
	TXA
	JSR FIFTY_PERCENT_VARIANCE
	STA $12
	JSR DETERMINE_DODGE
	TAX
	BEQ @UNKNOWN0
	DISPLAY_BATTLE_TEXT_PTR MSG_BTL_KIKANAI
	BRA @UNKNOWN1
@UNKNOWN0:
	LDX #$00FF
	LDA $12
	JSR CALC_RESIST_DAMAGE
@UNKNOWN1:
	JSR WEAKEN_SHIELD
@RETURN:
	PLD
	RTS
