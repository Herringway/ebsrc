
BOSS_BATTLE_CHECK: ;$C2AB14
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 18
	LDX #.LOWORD(BATTLERS_TABLE)
	STX $10
	LDY #$0000
	STY $0E
	BRA @BEGIN_LOOP
@NEXT_ENEMY:
	LDA a:battler::consciousness,X
	AND #$00FF
	BEQ @NOT_BOSS
	LDA a:battler::ally_or_enemy,X
	AND #$00FF
	CMP #$0001
	BNE @NOT_BOSS
	LDA a:battler::id,X
	LDY #.SIZEOF(enemy_data)
	JSL MULT168
	CLC
	ADC #enemy_data::boss
	TAX
	LDA f:ENEMY_CONFIGURATION_TABLE,X
	AND #$00FF
	BEQ @NOT_BOSS
	LDA #$0000
	BRA @RETURN
@NOT_BOSS:
	LDY $0E
	INY
	STY $0E
	LDX $10
	TXA
	CLC
	ADC #.SIZEOF(battler)
	TAX
	STX $10
@BEGIN_LOOP:
	CPY #$0020
	BCC @NEXT_ENEMY
	LDA #$0001
@RETURN:
	PLD
	RTS
