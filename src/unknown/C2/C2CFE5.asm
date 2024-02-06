
UNKNOWN_C2CFE5:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
.IF .DEFINED(USA)
	STACK_RESERVE_INT32 "LOCALEB"
.ENDIF
	STACK_RESERVE_INT16 "TARGET"
	STACK_RESERVE_PARAM_INT16 ;NEAR loaded_bg_data* target
	STACK_RESERVE_PARAM_INT32 "BG" ;FAR loaded_bg_data* bg
	END_STACK_VARS
	TAY
	STY @TARGET
	MOVE_INT @BG, @VIRTUAL06
.IF !.DEFINED(JPN)
	MOVE_INT @VIRTUAL06, @LOCALEB
.ENDIF
	SEP #PROC_FLAGS::ACCUM8
	STZ_BADOPT @LOCAL00
	LDX #.SIZEOF(loaded_bg_data)
	REP #PROC_FLAGS::ACCUM8
	TYA
	JSL MEMSET16
	SEP #PROC_FLAGS::ACCUM8
	LDY #bg_layer_config_entry::bitdepth
	LDA [@VIRTUAL06],Y
	LDY @TARGET
	STA a:loaded_bg_data::bitdepth,Y
	LDY #bg_layer_config_entry::palette_shifting_style
	LDA [@VIRTUAL06],Y
	LDY @TARGET
	STA a:loaded_bg_data::palette_shifting_style,Y
	LDY #bg_layer_config_entry::palette_cycle_1_first
	LDA [@VIRTUAL06],Y
	LDY @TARGET
	STA a:loaded_bg_data::palette_cycle_1_first,Y
	LDY #bg_layer_config_entry::palette_cycle_1_last
	LDA [@VIRTUAL06],Y
	LDY @TARGET
	STA a:loaded_bg_data::palette_cycle_1_last,Y
	LDY #bg_layer_config_entry::palette_cycle_2_first
	LDA [@VIRTUAL06],Y
	LDY @TARGET
	STA a:loaded_bg_data::palette_cycle_2_first,Y
	LDY #bg_layer_config_entry::palette_cycle_2_last
	LDA [@VIRTUAL06],Y
	LDY @TARGET
	STA a:loaded_bg_data::palette_cycle_2_last,Y
	LDY #bg_layer_config_entry::palette_change_speed
	LDA [@VIRTUAL06],Y
	LDY @TARGET
	STA a:loaded_bg_data::palette_change_speed,Y
	REP #PROC_FLAGS::ACCUM8
	LDA #bg_layer_config_entry::scrolling_movement_1
.IF .DEFINED(JPN)
	MOVE_INTX @VIRTUAL06, @VIRTUAL0A
	CLC
	ADC @VIRTUAL0A
	STA @VIRTUAL0A
	STA @LOCAL00
	LDA @VIRTUAL0A+2
	STA @LOCAL00+2
.ELSE
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL00
	LDA @VIRTUAL06+2
	STA @LOCAL00+2
.ENDIF
	LDX #.SIZEOF(loaded_bg_data::scrolling_movements)
	TYA
	CLC
	ADC #loaded_bg_data::scrolling_movements
	JSL MEMCPY16
	LDA #bg_layer_config_entry::distortion_style_1
.IF !.DEFINED(JPN)
	MOVE_INTX @LOCALEB, @VIRTUAL06
.ENDIF
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL00
	LDA @VIRTUAL06+2
	STA @LOCAL00+2
	LDX #.SIZEOF(loaded_bg_data::distortion_styles)
	LDY @TARGET
	TYA
	CLC
	ADC #loaded_bg_data::distortion_styles
	JSL MEMCPY16
	LDA #1
	LDY @TARGET
	STA a:loaded_bg_data::scrolling_duration_left,Y
	STA a:loaded_bg_data::distortion_duration_left,Y
	SEP #PROC_FLAGS::ACCUM8
	STA a:loaded_bg_data::palette_change_duration_left,Y
	REP #PROC_FLAGS::ACCUM8
	PLD
	RTL
