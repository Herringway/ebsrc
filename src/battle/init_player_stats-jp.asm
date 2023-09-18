
BATTLE_INIT_PLAYER_STATS: ;$C2B930
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 26
	TXY
	STY $18
	STA $04
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)
	STA $02
	SEP #PROC_FLAGS::ACCUM8
	LDA #$00
	STA $0E
	LDX #.SIZEOF(battler)
	LDY $18
	REP #PROC_FLAGS::ACCUM8
	TYA
	JSL MEMSET16
	LDA $04
	LDY $18
	STA a:battler::id,Y
	TYX
	STZ a:battler::sprite,X
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0001
	STA a:battler::consciousness,Y
	TYX
	STZ a:battler::ally_or_enemy,X
	TYX
	STZ a:battler::npc_id,X
	LDX $02
	REP #PROC_FLAGS::ACCUM8
	LDA a:char_struct::current_hp,X
	STA a:battler::hp,Y
	LDX $02
	LDA a:char_struct::current_hp_target,X
	STA a:battler::hp_target,Y
	LDX $02
	LDA a:char_struct::max_hp,X
	STA a:battler::hp_max,Y
	LDX $02
	LDA a:char_struct::current_pp,X
	STA a:battler::pp,Y
	LDX $02
	LDA a:char_struct::current_pp_target,X
	STA a:battler::pp_target,Y
	LDX $02
	LDA a:char_struct::max_pp,X
	STA a:battler::pp_max,Y
	TYA
	CLC
	ADC #battler::afflictions
	PROMOTENEARPTRA $06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	LDA $02
	CLC
	ADC #char_struct::afflictions
	PROMOTENEARPTRA $06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $12
	LDA #AFFLICTION_GROUP_COUNT
	JSL MEMCPY24
	LDX $02
	SEP #PROC_FLAGS::ACCUM8
	LDA a:char_struct::offense,X
	LDY $18
	STA a:battler::base_offense,Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	STA a:battler::offense,Y
	LDX $02
	SEP #PROC_FLAGS::ACCUM8
	LDA a:char_struct::defense,X
	STA a:battler::base_defense,Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	STA a:battler::defense,Y
	LDX $02
	SEP #PROC_FLAGS::ACCUM8
	LDA a:char_struct::speed,X
	STA a:battler::base_speed,Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	STA a:battler::speed,Y
	LDX $02
	SEP #PROC_FLAGS::ACCUM8
	LDA a:char_struct::guts,X
	STA a:battler::base_guts,Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	STA a:battler::guts,Y
	LDX $02
	SEP #PROC_FLAGS::ACCUM8
	LDA a:char_struct::luck,X
	STA a:battler::base_luck,Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	STA a:battler::luck,Y
	LDX $02
	SEP #PROC_FLAGS::ACCUM8
	LDA a:char_struct::vitality,X
	STA a:battler::vitality,Y
	LDX $02
	LDA a:char_struct::iq,X
	STA a:battler::iq,Y
	LDX $02
	LDA a:char_struct::fire_resist,X
	JSL CALC_PSI_DMG_MODIFIERS
	LDY $18
	STA a:battler::fire_resist,Y
	LDX $02
	LDA a:char_struct::freeze_resist,X
	JSL CALC_PSI_DMG_MODIFIERS
	LDY $18
	STA a:battler::freeze_resist,Y
	LDX $02
	LDA a:char_struct::flash_resist,X
	JSL CALC_PSI_RES_MODIFIERS
	LDY $18
	STA a:battler::flash_resist,Y
	LDX $02
	LDA a:char_struct::paralysis_resist,X
	JSL CALC_PSI_RES_MODIFIERS
	LDY $18
	STA a:battler::paralysis_resist,Y
	REP #PROC_FLAGS::ACCUM8
	LDA $02
	CLC
	ADC #char_struct::hypnosis_brainshock_resist
	TAX
	STX $16
	SEP #PROC_FLAGS::ACCUM8
	LDA __BSS_START__,X
	JSL CALC_PSI_RES_MODIFIERS
	LDY $18
	STA a:battler::hypnosis_resist,Y
	LDX $16
	LDA __BSS_START__,X
	STA $00
	LDA #$0003
	SEC
	SBC $00
	JSL CALC_PSI_RES_MODIFIERS
	LDY $18
	STA a:battler::brainshock_resist,Y
	REP #PROC_FLAGS::ACCUM8
	LDA $04
	SEP #PROC_FLAGS::ACCUM8
	DEC
	STA a:battler::row,Y
	REP #PROC_FLAGS::ACCUM8
	PLD
	RTL
