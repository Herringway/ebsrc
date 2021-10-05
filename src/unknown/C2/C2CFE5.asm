
;void unknownC2CFE5(LoadedBGData NEAR* target, BattleBackground FAR* bg)
UNKNOWN_C2CFE5: ;$C2CFE5
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
.IF .DEFINED(JPN)
	@TARGET = $12
	@BG = $22
	RESERVE_STACK_SPACE 20
.ELSE
	@TARGET = $16
	@BG = $26
	RESERVE_STACK_SPACE 24
.ENDIF
	TAY
	STY @TARGET
	MOVE_INT @BG, $06
.IF !.DEFINED(JPN)
	MOVE_INT $06, $12
.ENDIF
	SEP #PROC_FLAGS::ACCUM8
	STZ_BADOPT $0E
	LDX #.SIZEOF(loaded_bg_data)
	REP #PROC_FLAGS::ACCUM8
	TYA
	JSL MEMSET16
	SEP #PROC_FLAGS::ACCUM8
	LDY #bg_layer_config_entry::bitdepth
	LDA [$06],Y
	LDY @TARGET
	STA a:loaded_bg_data::bitdepth,Y
	LDY #bg_layer_config_entry::palette_shifting_style
	LDA [$06],Y
	LDY @TARGET
	STA a:loaded_bg_data::palette_shifting_style,Y
	LDY #bg_layer_config_entry::palette_cycle_1_first
	LDA [$06],Y
	LDY @TARGET
	STA a:loaded_bg_data::palette_cycle_1_first,Y
	LDY #bg_layer_config_entry::palette_cycle_1_last
	LDA [$06],Y
	LDY @TARGET
	STA a:loaded_bg_data::palette_cycle_1_last,Y
	LDY #bg_layer_config_entry::palette_cycle_2_first
	LDA [$06],Y
	LDY @TARGET
	STA a:loaded_bg_data::palette_cycle_2_first,Y
	LDY #bg_layer_config_entry::palette_cycle_2_last
	LDA [$06],Y
	LDY @TARGET
	STA a:loaded_bg_data::palette_cycle_2_last,Y
	LDY #bg_layer_config_entry::palette_change_speed
	LDA [$06],Y
	LDY @TARGET
	STA a:loaded_bg_data::palette_change_speed,Y
	REP #PROC_FLAGS::ACCUM8
	LDA #bg_layer_config_entry::scrolling_movement_1
.IF .DEFINED(JPN)
	MOVE_INTX $06, $0A
	CLC
	ADC $0A
	STA $0A
	STA $0E
	LDA $0C
	STA $10
.ELSE
	CLC
	ADC $06
	STA $06
	STA $0E
	LDA $08
	STA $10
.ENDIF
	LDX #.SIZEOF(loaded_bg_data::scrolling_movements)
	TYA
	CLC
	ADC #loaded_bg_data::scrolling_movements
	JSL MEMCPY16
	LDA #bg_layer_config_entry::distortion_style_1
.IF !.DEFINED(JPN)
	MOVE_INTX $12, $06
.ENDIF
	CLC
	ADC $06
	STA $06
	STA $0E
	LDA $08
	STA $10
	LDX #.SIZEOF(loaded_bg_data::distortion_styles)
	LDY @TARGET
	TYA
	CLC
	ADC #loaded_bg_data::distortion_styles
	JSL MEMCPY16
	LDA #$0001
	LDY @TARGET
	STA a:loaded_bg_data::scrolling_duration_left,Y
	STA a:loaded_bg_data::distortion_duration_left,Y
	SEP #PROC_FLAGS::ACCUM8
	STA a:loaded_bg_data::palette_change_duration_left,Y
	REP #PROC_FLAGS::ACCUM8
	PLD
	RTL
