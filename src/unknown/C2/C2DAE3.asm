
UNKNOWN_C2DAE3: ;$C2DAE3
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 15
	LDX #.LOWORD(LOADED_BG_DATA_LAYER1) + loaded_bg_data::distortion_styles
	SEP #PROC_FLAGS::ACCUM8
	LDA RAM,X
	STA $0E
	LDY #.LOWORD(LOADED_BG_DATA_LAYER1) + loaded_bg_data::distortion_styles + 3
	LDA RAM,Y
	STA RAM,X
	STZ LOADED_BG_DATA_LAYER1 + loaded_bg_data::distortion_styles + 1
	REP #PROC_FLAGS::ACCUM8
	LDA #$0001
	STA LOADED_BG_DATA_LAYER1 + loaded_bg_data::distortion_duration_left
	SEP #PROC_FLAGS::ACCUM8
	LDA $0E
	STA RAM,Y
	REP #PROC_FLAGS::ACCUM8
	PLD
	RTL
