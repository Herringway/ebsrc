
BATTLE_INIT_PLAYER_STATS:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16 ;int character
	STACK_RESERVE_PARAM_INT16 ;NEAR battler* target
	END_STACK_VARS
	TXY
	STY @LOCAL03
	STA @VIRTUAL04
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(PARTY_CHARACTERS)
	STA @VIRTUAL02
	SEP #PROC_FLAGS::ACCUM8
	STZ_BADOPT @LOCAL00
	LDX #.SIZEOF(battler)
	LDY @LOCAL03
	REP #PROC_FLAGS::ACCUM8
	TYA
	JSL MEMSET16
	LDA @VIRTUAL04
	LDY @LOCAL03
	STA a:battler::id,Y
	TYX
	STZ a:battler::sprite,X
	SEP #PROC_FLAGS::ACCUM8
	LDA #1
	STA a:battler::consciousness,Y
	TYX
	STZ a:battler::ally_or_enemy,X
	TYX
	STZ a:battler::npc_id,X
	LDX @VIRTUAL02
	REP #PROC_FLAGS::ACCUM8
	LDA a:char_struct::current_hp,X
	STA a:battler::hp,Y
	LDX @VIRTUAL02
	LDA a:char_struct::current_hp_target,X
	STA a:battler::hp_target,Y
	LDX @VIRTUAL02
	LDA a:char_struct::max_hp,X
	STA a:battler::hp_max,Y
	LDX @VIRTUAL02
	LDA a:char_struct::current_pp,X
	STA a:battler::pp,Y
	LDX @VIRTUAL02
	LDA a:char_struct::current_pp_target,X
	STA a:battler::pp_target,Y
	LDX @VIRTUAL02
	LDA a:char_struct::max_pp,X
	STA a:battler::pp_max,Y
	TYA
	CLC
	ADC #battler::afflictions
	PROMOTENEARPTRA @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDA @VIRTUAL02
	CLC
	ADC #char_struct::afflictions
	PROMOTENEARPTRA @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL01
	LDA #AFFLICTION_GROUP_COUNT
	JSL MEMCPY24
	LDX @VIRTUAL02
	SEP #PROC_FLAGS::ACCUM8
	LDA a:char_struct::offense,X
	LDY @LOCAL03
	STA a:battler::base_offense,Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	STA a:battler::offense,Y
	LDX @VIRTUAL02
	SEP #PROC_FLAGS::ACCUM8
	LDA a:char_struct::defense,X
	STA a:battler::base_defense,Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	STA a:battler::defense,Y
	LDX @VIRTUAL02
	SEP #PROC_FLAGS::ACCUM8
	LDA a:char_struct::speed,X
	STA a:battler::base_speed,Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	STA a:battler::speed,Y
	LDX @VIRTUAL02
	SEP #PROC_FLAGS::ACCUM8
	LDA a:char_struct::guts,X
	STA a:battler::base_guts,Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	STA a:battler::guts,Y
	LDX @VIRTUAL02
	SEP #PROC_FLAGS::ACCUM8
	LDA a:char_struct::luck,X
	STA a:battler::base_luck,Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	STA a:battler::luck,Y
	LDX @VIRTUAL02
	SEP #PROC_FLAGS::ACCUM8
	LDA a:char_struct::vitality,X
	STA a:battler::vitality,Y
	LDX @VIRTUAL02
	LDA a:char_struct::iq,X
	STA a:battler::iq,Y
	LDX @VIRTUAL02
	LDA a:char_struct::fire_resist,X
	JSL CALC_PSI_DMG_MODIFIERS
	LDY @LOCAL03
	STA a:battler::fire_resist,Y
	LDX @VIRTUAL02
	LDA a:char_struct::freeze_resist,X
	JSL CALC_PSI_DMG_MODIFIERS
	LDY @LOCAL03
	STA a:battler::freeze_resist,Y
	LDX @VIRTUAL02
	LDA a:char_struct::flash_resist,X
	JSL CALC_PSI_RES_MODIFIERS
	LDY @LOCAL03
	STA a:battler::flash_resist,Y
	LDX @VIRTUAL02
	LDA a:char_struct::paralysis_resist,X
	JSL CALC_PSI_RES_MODIFIERS
	LDY @LOCAL03
	STA a:battler::paralysis_resist,Y
	REP #PROC_FLAGS::ACCUM8
	LDA @VIRTUAL02
	CLC
	ADC #char_struct::hypnosis_brainshock_resist
	TAX
	STX @LOCAL02
	SEP #PROC_FLAGS::ACCUM8
	LDA __BSS_START__,X
	JSL CALC_PSI_RES_MODIFIERS
	LDY @LOCAL03
	STA a:battler::hypnosis_resist,Y
	LDX @LOCAL02
	LDA __BSS_START__,X
	STA @VIRTUAL00
	LDA #3
	SEC
	SBC @VIRTUAL00
	JSL CALC_PSI_RES_MODIFIERS
	LDY @LOCAL03
	STA a:battler::brainshock_resist,Y
	REP #PROC_FLAGS::ACCUM8
	LDA @VIRTUAL04
	SEP #PROC_FLAGS::ACCUM8
	DEC
	STA a:battler::row,Y
	REP #PROC_FLAGS::ACCUM8
	END_C_FUNCTION
