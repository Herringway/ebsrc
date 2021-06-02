
BTLACT_SWITCH_ARMOR: ;$C1E00F
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 28
	LDA #$0001
	JSR a:.LOWORD(ENABLE_BLINKING_TRIANGLE)
	LDX .LOWORD(CURRENT_ATTACKER)
	LDA a:battler::current_action_argument,X
	AND #$00FF
	TAX
	STX $1A
	LDX .LOWORD(CURRENT_ATTACKER)
	LDA a:battler::id,X
	LDX $1A
	JSL UNKNOWN_C3EE14
	CMP #$0000
	BNE @UNKNOWN0
	JMP a:.LOWORD(@UNKNOWN1)
@UNKNOWN0:
	LDX .LOWORD(CURRENT_ATTACKER)
	LDA a:battler::row,X
	AND #$00FF
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)
	TAY
	STY $18
	LDX .LOWORD(CURRENT_ATTACKER)
	LDA a:battler::base_defense,X
	AND #$00FF
	STA $04
	LDX .LOWORD(CURRENT_ATTACKER)
	LDA a:battler::defense,X
	SEC
	SBC $04
	STA $02
	STA $16
	LDX .LOWORD(CURRENT_ATTACKER)
	LDA a:battler::base_speed,X
	AND #$00FF
	STA $02
	LDX .LOWORD(CURRENT_ATTACKER)
	LDA a:battler::speed,X
	SEC
	SBC $02
	STA $04
	LDX .LOWORD(CURRENT_ATTACKER)
	LDA a:battler::base_luck,X
	AND #$00FF
	STA $02
	LDX .LOWORD(CURRENT_ATTACKER)
	LDA a:battler::luck,X
	SEC
	SBC $02
	STA $14
	LDX .LOWORD(CURRENT_ATTACKER)
	LDA a:battler::unknown07,X
	AND #$00FF
	TAX
	STX $12
	LDX .LOWORD(CURRENT_ATTACKER)
	LDA a:battler::id,X
	LDX $12
	JSR a:.LOWORD(EQUIP_ITEM)
	DISPLAY_TEXT_PTR TEXT_BATTLE_EQUIP_X_INSTEAD
	LDY $18
	SEP #PROC_FLAGS::ACCUM8
	LDA a:char_struct::defense,Y
	LDX .LOWORD(CURRENT_ATTACKER)
	STA a:battler::base_defense,X
	REP #PROC_FLAGS::ACCUM8
	LDA $16
	STA $02
	LDX .LOWORD(CURRENT_ATTACKER)
	LDA a:battler::base_defense,X
	AND #$00FF
	CLC
	ADC $02
	LDX .LOWORD(CURRENT_ATTACKER)
	STA a:battler::defense,X
	SEP #PROC_FLAGS::ACCUM8
	LDA a:char_struct::speed,Y
	LDX .LOWORD(CURRENT_ATTACKER)
	STA a:battler::base_speed,X
	LDX .LOWORD(CURRENT_ATTACKER)
	REP #PROC_FLAGS::ACCUM8
	LDA a:battler::base_speed,X
	AND #$00FF
	CLC
	ADC $04
	LDX .LOWORD(CURRENT_ATTACKER)
	STA a:battler::speed,X
	SEP #PROC_FLAGS::ACCUM8
	LDA a:char_struct::luck,Y
	LDX .LOWORD(CURRENT_ATTACKER)
	STA a:battler::base_luck,X
	LDX .LOWORD(CURRENT_ATTACKER)
	REP #PROC_FLAGS::ACCUM8
	LDA a:battler::base_luck,X
	AND #$00FF
	CLC
	ADC $14
	LDX .LOWORD(CURRENT_ATTACKER)
	STA a:battler::luck,X
	SEP #PROC_FLAGS::ACCUM8
	LDA a:char_struct::fire_resist,Y
	JSL CALC_PSI_DMG_MODIFIERS
	LDX .LOWORD(CURRENT_ATTACKER)
	STA a:battler::fire_resist,X
	LDY $18
	LDA a:char_struct::freeze_resist,Y
	JSL CALC_PSI_DMG_MODIFIERS
	LDX .LOWORD(CURRENT_ATTACKER)
	STA a:battler::freeze_resist,X
	LDY $18
	LDA a:char_struct::flash_resist,Y
	JSL CALC_PSI_RES_MODIFIERS
	LDX .LOWORD(CURRENT_ATTACKER)
	STA a:battler::flash_resist,X
	LDY $18
	LDA a:char_struct::paralysis_resist,Y
	JSL CALC_PSI_RES_MODIFIERS
	LDX .LOWORD(CURRENT_ATTACKER)
	STA a:battler::paralysis_resist,X
	LDY $18
	REP #PROC_FLAGS::ACCUM8
	TYA
	CLC
	ADC #char_struct::hypnosis_brainshock_resist
	TAX
	STX $14
	SEP #PROC_FLAGS::ACCUM8
	LDA a:.LOWORD(RAM),X
	JSL CALC_PSI_RES_MODIFIERS
	LDX .LOWORD(CURRENT_ATTACKER)
	STA a:battler::hypnosis_resist,X
	LDX $14
	LDA a:.LOWORD(RAM),X
	STA $00
	LDA #$0003
	SEC
	SBC $00
	JSL CALC_PSI_RES_MODIFIERS
	LDX .LOWORD(CURRENT_ATTACKER)
	STA a:battler::brainshock_resist,X
	BRA @UNKNOWN2
@UNKNOWN1:
	.A16
	DISPLAY_TEXT_PTR TEXT_BATTLE_COULD_NOT_EQUIP_ATTACK_ANYWAY
@UNKNOWN2:
	JSR a:.LOWORD(CLEAR_BLINKING_PROMPT)
	PLD
	RTL
