
BTLACT_LEVEL_4_ATK: ;$C285DA
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 20
	LDA #$0000
	JSR MISS_CALC
	CMP #$0000
	BNE @UNKNOWN7
	JSR SMAAAASH
	CMP #$0000
	BNE @UNKNOWN7
	JSR DETERMINE_DODGE
	CMP #$0000
	BNE @UNKNOWN6
	LDX CURRENT_ATTACKER
	LDA a:battler::offense,X
	OPTIMIZED_MULT $04, 4
	LDX CURRENT_TARGET
	SEC
	SBC a:battler::defense,X
	STA $12
	CLC
	SBC #$0000
	BRANCHLTEQS @UNKNOWN2
	LDA $12
	JSR TWENTY_FIVE_PERCENT_VARIANCE
	STA $12
@UNKNOWN2:
	LDA $12
	CLC
	SBC #$0000
	BRANCHGTS @UNKNOWN5
	LDA #$0001
	STA $12
@UNKNOWN5:
	LDX #$00FF
	LDA $12
	JSR CALC_RESIST_DAMAGE
	JSR HEAL_STRANGENESS
	BRA @UNKNOWN7
@UNKNOWN6:
	DISPLAY_BATTLE_TEXT_PTR MSG_BTL_TATAKU_YOKETA
@UNKNOWN7:
	PLD
	RTL
