
BTLACT_350_FIRE_DAMAGE: ;$C2900B
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 16
	LDA #350
	JSR TWENTY_FIVE_PERCENT_VARIANCE
	STA $0E
	LDX CURRENT_TARGET
	LDA a:battler::fire_resist,X
	AND #$00FF
	TAX
	LDA $0E
	JSR CALC_RESIST_DAMAGE
	PLD
	RTL
