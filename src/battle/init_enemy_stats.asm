
BATTLE_INIT_ENEMY_STATS:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT8
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16 ;int enemyID
	STACK_RESERVE_PARAM_INT16 ;NEAR battler* target
	END_STACK_VARS
	STX @VIRTUAL02
	TAY
	STY @LOCAL01
	LOADPTR ENEMY_CONFIGURATION_TABLE, @VIRTUAL06
	TYA
	LDY #.SIZEOF(enemy_data)
	JSL MULT168
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	SEP #PROC_FLAGS::ACCUM8
	STZ_BADOPT @LOCAL00
	LDX #.SIZEOF(battler)
	REP #PROC_FLAGS::ACCUM8
	LDA @VIRTUAL02
	JSL MEMSET16
	SEP #PROC_FLAGS::ACCUM8
	LDY #enemy_data::level
	LDA [@VIRTUAL06],Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	TAX
	CPX HIGHEST_ENEMY_LEVEL_IN_BATTLE
	BLTEQ @UNKNOWN0
	STX HIGHEST_ENEMY_LEVEL_IN_BATTLE
@UNKNOWN0:
	LDY @LOCAL01
	TYA
	LDX @VIRTUAL02
	STA a:battler::id,X
	TYA
	LDX @VIRTUAL02
	STA a:battler::unknown76,X
	LDY #enemy_data::battle_sprite
	LDA [@VIRTUAL06],Y
	LDX @VIRTUAL02
	STA a:battler::sprite,X
	LDY @LOCAL01
	TYA
	JSL UNKNOWN_C2B66A
	.A8
	LDX @VIRTUAL02
	STA a:battler::the_flag,X
	LDA #1
	LDX @VIRTUAL02
	STA a:battler::consciousness,X
	LDX @VIRTUAL02
	STA a:battler::ally_or_enemy,X
	LDX @VIRTUAL02
	STZ a:battler::npc_id,X
	LDY #enemy_data::row
	LDA [@VIRTUAL06],Y
	LDX @VIRTUAL02
	STA a:battler::row,X
	REP #PROC_FLAGS::ACCUM8
	LDY #enemy_data::hp
	LDA [@VIRTUAL06],Y
	LDX @VIRTUAL02
	STA a:battler::hp_max,X
	LDX @VIRTUAL02
	STA a:battler::hp_target,X
	LDX @VIRTUAL02
	STA a:battler::hp,X
	LDY #enemy_data::pp
	LDA [@VIRTUAL06],Y
	LDX @VIRTUAL02
	STA a:battler::pp_max,X
	LDX @VIRTUAL02
	STA a:battler::pp_target,X
	LDX @VIRTUAL02
	STA a:battler::pp,X
	SEP #PROC_FLAGS::ACCUM8
	LDY #enemy_data::offense
	LDA [@VIRTUAL06],Y
	LDX @VIRTUAL02
	STA a:battler::base_offense,X
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	LDX @VIRTUAL02
	STA a:battler::offense,X
	SEP #PROC_FLAGS::ACCUM8
	LDY #enemy_data::defense
	LDA [@VIRTUAL06],Y
	LDX @VIRTUAL02
	STA a:battler::base_defense,X
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	LDX @VIRTUAL02
	STA a:battler::defense,X
	SEP #PROC_FLAGS::ACCUM8
	LDY #enemy_data::speed
	LDA [@VIRTUAL06],Y
	LDX @VIRTUAL02
	STA a:battler::base_speed,X
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	LDX @VIRTUAL02
	STA a:battler::speed,X
	SEP #PROC_FLAGS::ACCUM8
	LDY #enemy_data::guts
	LDA [@VIRTUAL06],Y
	LDX @VIRTUAL02
	STA a:battler::base_guts,X
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	LDX @VIRTUAL02
	STA a:battler::guts,X
	SEP #PROC_FLAGS::ACCUM8
	LDY #enemy_data::luck
	LDA [@VIRTUAL06],Y
	LDX @VIRTUAL02
	STA a:battler::base_luck,X
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	LDX @VIRTUAL02
	STA a:battler::luck,X
	LDX @VIRTUAL02
	SEP #PROC_FLAGS::ACCUM8
	STZ a:battler::vitality,X
	LDY #enemy_data::iq
	LDA [@VIRTUAL06],Y
	LDX @VIRTUAL02
	STA a:battler::iq,X
	LDY #enemy_data::fire_vulnerability
	LDA [@VIRTUAL06],Y
	JSL CALC_PSI_DMG_MODIFIERS
	LDX @VIRTUAL02
	STA a:battler::fire_resist,X
	LDY #enemy_data::freeze_vulnerability
	LDA [@VIRTUAL06],Y
	JSL CALC_PSI_DMG_MODIFIERS
	LDX @VIRTUAL02
	STA a:battler::freeze_resist,X
	LDY #enemy_data::flash_vulnerability
	LDA [@VIRTUAL06],Y
	JSL CALC_PSI_RES_MODIFIERS
	LDX @VIRTUAL02
	STA a:battler::flash_resist,X
	LDY #enemy_data::paralysis_vulnerability
	LDA [@VIRTUAL06],Y
	JSL CALC_PSI_RES_MODIFIERS
	LDX @VIRTUAL02
	STA a:battler::paralysis_resist,X
	REP #PROC_FLAGS::ACCUM8
	LDA #enemy_data::hypnosis_brainshock_vulnerability
	MOVE_INTX @VIRTUAL06, @VIRTUAL0A
	CLC
	ADC @VIRTUAL0A
	STA @VIRTUAL0A
	SEP #PROC_FLAGS::ACCUM8
	LDA [@VIRTUAL0A]
	JSL CALC_PSI_RES_MODIFIERS
	LDX @VIRTUAL02
	STA a:battler::hypnosis_resist,X
	LDA [@VIRTUAL0A]
	STA @VIRTUAL00
	LDA #3
	SEC
	SBC @VIRTUAL00
	JSL CALC_PSI_RES_MODIFIERS
	LDX @VIRTUAL02
	STA a:battler::brainshock_resist,X
	REP #PROC_FLAGS::ACCUM8
	LDY #enemy_data::money
	LDA [@VIRTUAL06],Y
	LDX @VIRTUAL02
	STA a:battler::money,X
	LDY #enemy_data::exp
	LDA [@VIRTUAL06],Y
	PHA
	INY
	INY
	LDA [@VIRTUAL06],Y
	STA @VIRTUAL0A+2
	PLA
	STA @VIRTUAL0A
	LDA @VIRTUAL02
	CLC
	ADC #battler::exp
	TAY
	MOVE_INT_YPTRDEST @VIRTUAL0A, NULL
	SEP #PROC_FLAGS::ACCUM8
	LDY #enemy_data::initial_status
	LDA [@VIRTUAL06],Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	CMP #INITIAL_STATUS::PSI_SHIELD
	BEQ @UNKNOWN1
	CMP #INITIAL_STATUS::PSI_SHIELD_POWER
	BEQ @UNKNOWN2
	CMP #INITIAL_STATUS::SHIELD
	BEQ @UNKNOWN3
	CMP #INITIAL_STATUS::SHIELD_POWER
	BEQ @UNKNOWN4
	CMP #INITIAL_STATUS::ASLEEP
	BEQ @UNKNOWN5
	CMP #INITIAL_STATUS::CANT_CONCENTRATE
	BEQ @UNKNOWN6
	CMP #INITIAL_STATUS::STRANGE
	BEQ @UNKNOWN7
	BRA @UNKNOWN8
@UNKNOWN1:
	LDX #STATUS_6::PSI_SHIELD
	LDA @VIRTUAL02
	JSR SHIELDS_COMMON
	BRA @UNKNOWN8
@UNKNOWN2:
	LDX #STATUS_6::PSI_SHIELD_POWER
	LDA @VIRTUAL02
	JSR SHIELDS_COMMON
	BRA @UNKNOWN8
@UNKNOWN3:
	LDX #STATUS_6::SHIELD
	LDA @VIRTUAL02
	JSR SHIELDS_COMMON
	BRA @UNKNOWN8
@UNKNOWN4:
	LDX #STATUS_6::SHIELD_POWER
	LDA @VIRTUAL02
	JSR SHIELDS_COMMON
	BRA @UNKNOWN8
@UNKNOWN5:
	SEP #PROC_FLAGS::ACCUM8
	LDA #STATUS_2::ASLEEP
	LDX @VIRTUAL02
	STA a:battler::afflictions+STATUS_GROUP::TEMPORARY,X
	BRA @UNKNOWN8
@UNKNOWN6:
	SEP #PROC_FLAGS::ACCUM8
	LDA #STATUS_4::CANT_CONCENTRATE4
	LDX @VIRTUAL02
	STA a:battler::afflictions+STATUS_GROUP::CONCENTRATION,X
	BRA @UNKNOWN8
@UNKNOWN7:
	SEP #PROC_FLAGS::ACCUM8
	LDA #STATUS_3::STRANGE
	LDX @VIRTUAL02
	STA a:battler::afflictions+STATUS_GROUP::STRANGENESS,X
@UNKNOWN8:
	REP #PROC_FLAGS::ACCUM8
	END_C_FUNCTION
