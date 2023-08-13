;A = battler* target
SET_HP: ;$C27126
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 18
	TXY
	STY $10
	TAX
	LDA a:battler::hp_max,X
	STA $0E
	STA $02
	TYA
	CMP $02
	BLTEQ @UNKNOWN0
	LDA $0E
	TAY
	STY $10
@UNKNOWN0:
	LDA a:battler::ally_or_enemy,X
	AND #$00FF
	BNE @UNKNOWN2
	LDA a:battler::npc_id,X
	AND #$00FF
	BNE @UNKNOWN1
	TYA
	STA a:battler::hp_target,X
	LDA a:battler::row,X
	AND #$00FF
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDY $10
	TYA
	STA CHAR_STRUCT+char_struct::current_hp_target,X
	BRA @UNKNOWN3
@UNKNOWN1:
	TYA
	STA a:battler::hp,X
	TYA
	STA a:battler::hp_target,X
	LDA a:battler::row,X
	AND #$00FF
	ASL
	CLC
	ADC #.LOWORD(GAME_STATE)
	TAX
	TYA
	STA a:game_state::party_npc_1_hp,X
	BRA @UNKNOWN3
@UNKNOWN2:
	TYA
	STA a:battler::hp,X
	TYA
	STA a:battler::hp_target,X
@UNKNOWN3:
	PLD
	RTS
