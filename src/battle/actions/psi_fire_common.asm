
PSI_FIRE_COMMON: ;$C2957A
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 16
	TAX
	STX $0E
	JSR a:.LOWORD(PSI_SHIELD_NULLIFY)
	CMP #$0000
	BNE @UNKNOWN0
	LDX $0E
	TXA
	JSR a:.LOWORD(TWENTY_FIVE_PERCENT_VARIANCE)
	STA $0E
	LDX .LOWORD(CURRENT_TARGET)
	LDA a:battler::fire_resist,X
	AND #$00FF
	TAX
	LDA $0E
	JSR a:.LOWORD(CALC_RESIST_DAMAGE)
	JSR a:.LOWORD(WEAKEN_SHIELD)
@UNKNOWN0:
	PLD
	RTS
