
BTLACT_LEVEL_3_ATK: ;$C28651
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 20
	LDA #$0000
	JSR a:.LOWORD(MISS_CALC)
	CMP #$0000
	BNE @UNKNOWN7
	JSR a:.LOWORD(SMAAAASH)
	CMP #$0000
	BNE @UNKNOWN7
	JSR a:.LOWORD(DETERMINE_DODGE)
	CMP #$0000
	BNE @UNKNOWN6
	LDX .LOWORD(CURRENT_ATTACKER)
	LDA a:battler::offense,X
	OPTIMIZED_MULT $04, 3
	LDX .LOWORD(CURRENT_TARGET)
	SEC
	SBC a:battler::defense,X
	STA $12
	CLC
	SBC #$0000
	BVC @UNKNOWN0
	BPL @UNKNOWN2
	BRA @UNKNOWN1
@UNKNOWN0:
	BMI @UNKNOWN2
@UNKNOWN1:
	LDA $12
	JSR a:.LOWORD(TWENTY_FIVE_PERCENT_VARIANCE)
	STA $12
@UNKNOWN2:
	LDA $12
	CLC
	SBC #$0000
	BVS @UNKNOWN3
	BPL @UNKNOWN5
	BRA @UNKNOWN4
@UNKNOWN3:
	BMI @UNKNOWN5
@UNKNOWN4:
	LDA #$0001
	STA $12
@UNKNOWN5:
	LDX #$00FF
	LDA $12
	JSR a:.LOWORD(CALC_RESIST_DAMAGE)
	JSR a:.LOWORD(HEAL_STRANGENESS)
	BRA @UNKNOWN7
@UNKNOWN6:
	DISPLAY_BATTLE_TEXT_PTR TEXT_BATTLE_DODGED
@UNKNOWN7:
	PLD
	RTL
