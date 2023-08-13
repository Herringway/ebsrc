;X = battler* target
BATTLE_INIT_ENEMY_STATS: ;$C2B6EB
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 17
	STX $02
	TAY
	STY $0F
	LOADPTR ENEMY_CONFIGURATION_TABLE, $06
	TYA
	LDY #.SIZEOF(enemy_data)
	JSL MULT168
	CLC
	ADC $06
	STA $06
	SEP #PROC_FLAGS::ACCUM8
	LDA #$00
	STA $0E
	LDX #.SIZEOF(battler)
	REP #PROC_FLAGS::ACCUM8
	LDA $02
	JSL MEMSET16
	SEP #PROC_FLAGS::ACCUM8
	LDY #enemy_data::level
	LDA [$06],Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	TAX
	CPX UNKNOWN_7EAA0C
	BLTEQ @UNKNOWN0
	STX UNKNOWN_7EAA0C
@UNKNOWN0:
	LDY $0F
	TYA
	LDX $02
	STA a:battler::id,X
	TYA
	LDX $02
	STA a:battler::unknown76,X
	LDY #enemy_data::battle_sprite
	LDA [$06],Y
	LDX $02
	STA a:battler::sprite,X
	LDY $0F
	TYA
	JSL UNKNOWN_C2B66A
	.A8
	LDX $02
	STA a:battler::the_flag,X
	LDA #$01
	LDX $02
	STA a:battler::consciousness,X
	LDX $02
	STA a:battler::ally_or_enemy,X
	LDX $02
	STZ a:battler::npc_id,X
	LDY #enemy_data::row
	LDA [$06],Y
	LDX $02
	STA a:battler::row,X
	REP #PROC_FLAGS::ACCUM8
	LDY #enemy_data::hp
	LDA [$06],Y
	LDX $02
	STA a:battler::hp_max,X
	LDX $02
	STA a:battler::hp_target,X
	LDX $02
	STA a:battler::hp,X
	LDY #enemy_data::pp
	LDA [$06],Y
	LDX $02
	STA a:battler::pp_max,X
	LDX $02
	STA a:battler::pp_target,X
	LDX $02
	STA a:battler::pp,X
	SEP #PROC_FLAGS::ACCUM8
	LDY #enemy_data::offense
	LDA [$06],Y
	LDX $02
	STA a:battler::base_offense,X
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	LDX $02
	STA a:battler::offense,X
	SEP #PROC_FLAGS::ACCUM8
	LDY #enemy_data::defense
	LDA [$06],Y
	LDX $02
	STA a:battler::base_defense,X
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	LDX $02
	STA a:battler::defense,X
	SEP #PROC_FLAGS::ACCUM8
	LDY #enemy_data::speed
	LDA [$06],Y
	LDX $02
	STA a:battler::base_speed,X
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	LDX $02
	STA a:battler::speed,X
	SEP #PROC_FLAGS::ACCUM8
	LDY #enemy_data::guts
	LDA [$06],Y
	LDX $02
	STA a:battler::base_guts,X
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	LDX $02
	STA a:battler::guts,X
	SEP #PROC_FLAGS::ACCUM8
	LDY #enemy_data::luck
	LDA [$06],Y
	LDX $02
	STA a:battler::base_luck,X
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	LDX $02
	STA a:battler::luck,X
	LDX $02
	SEP #PROC_FLAGS::ACCUM8
	STZ a:battler::vitality,X
	LDY #enemy_data::iq
	LDA [$06],Y
	LDX $02
	STA a:battler::iq,X
	LDY #enemy_data::fire_vulnerability
	LDA [$06],Y
	JSL CALC_PSI_DMG_MODIFIERS
	LDX $02
	STA a:battler::fire_resist,X
	LDY #enemy_data::freeze_vulnerability
	LDA [$06],Y
	JSL CALC_PSI_DMG_MODIFIERS
	LDX $02
	STA a:battler::freeze_resist,X
	LDY #enemy_data::flash_vulnerability
	LDA [$06],Y
	JSL CALC_PSI_RES_MODIFIERS
	LDX $02
	STA a:battler::flash_resist,X
	LDY #enemy_data::paralysis_vulnerability
	LDA [$06],Y
	JSL CALC_PSI_RES_MODIFIERS
	LDX $02
	STA a:battler::paralysis_resist,X
	REP #PROC_FLAGS::ACCUM8
	LDA #enemy_data::hypnosis_brainshock_vulnerability
	MOVE_INTX $06, $0A
	CLC
	ADC $0A
	STA $0A
	SEP #PROC_FLAGS::ACCUM8
	LDA [$0A]
	JSL CALC_PSI_RES_MODIFIERS
	LDX $02
	STA a:battler::hypnosis_resist,X
	LDA [$0A]
	STA $00
	LDA #$0003
	SEC
	SBC $00
	JSL CALC_PSI_RES_MODIFIERS
	LDX $02
	STA a:battler::brainshock_resist,X
	REP #PROC_FLAGS::ACCUM8
	LDY #enemy_data::money
	LDA [$06],Y
	LDX $02
	STA a:battler::money,X
	LDY #enemy_data::exp
	LDA [$06],Y
	PHA
	INY
	INY
	LDA [$06],Y
	STA $0C
	PLA
	STA $0A
	LDA $02
	CLC
	ADC #battler::exp
	TAY
	MOVE_INT_YPTRDEST $0A, NULL
	SEP #PROC_FLAGS::ACCUM8
	LDY #enemy_data::initial_status
	LDA [$06],Y
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
	LDA $02
	JSR SHIELDS_COMMON
	BRA @UNKNOWN8
@UNKNOWN2:
	LDX #STATUS_6::PSI_SHIELD_POWER
	LDA $02
	JSR SHIELDS_COMMON
	BRA @UNKNOWN8
@UNKNOWN3:
	LDX #STATUS_6::SHIELD
	LDA $02
	JSR SHIELDS_COMMON
	BRA @UNKNOWN8
@UNKNOWN4:
	LDX #STATUS_6::SHIELD_POWER
	LDA $02
	JSR SHIELDS_COMMON
	BRA @UNKNOWN8
@UNKNOWN5:
	SEP #PROC_FLAGS::ACCUM8
	LDA #STATUS_2::ASLEEP
	LDX $02
	STA a:battler::afflictions+STATUS_GROUP::TEMPORARY,X
	BRA @UNKNOWN8
@UNKNOWN6:
	SEP #PROC_FLAGS::ACCUM8
	LDA #STATUS_4::CANT_CONCENTRATE4
	LDX $02
	STA a:battler::afflictions+STATUS_GROUP::CONCENTRATION,X
	BRA @UNKNOWN8
@UNKNOWN7:
	SEP #PROC_FLAGS::ACCUM8
	LDA #STATUS_3::STRANGE
	LDX $02
	STA a:battler::afflictions+STATUS_GROUP::STRANGENESS,X
@UNKNOWN8:
	REP #PROC_FLAGS::ACCUM8
	PLD
	RTL
