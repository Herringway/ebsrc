
UNKNOWN_C1F616:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	TAX
	STX @LOCAL03
	LDA #WINDOW::FILE_SELECT_MUSIC_MODE
	STA CURRENT_FOCUS_WINDOW
	JSL SET_INSTANT_PRINTING
	LDX @LOCAL03
	BEQL @UNKNOWN3
	JSR OPEN_SOUND_MENU
	LDA CURRENT_FOCUS_WINDOW
	ASL
	TAX
	LDA OPEN_WINDOW_TABLE,X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	LDA WINDOW_STATS + window_stats::current_option,X
	LDY #.SIZEOF(menu_option)
	JSL MULT168
	CLC
	ADC #.LOWORD(MENU_OPTIONS)
	TAY
	STY @LOCAL02
	LDA GAME_STATE+game_state::sound_setting
	AND #$00FF
	TAX
	DEX
	BRA @UNKNOWN2
@UNKNOWN1:
	LDA a:menu_option::next,Y
	LDY #.SIZEOF(menu_option)
	JSL MULT168
	CLC
	ADC #.LOWORD(MENU_OPTIONS)
	TAY
	STY @LOCAL02
	DEX
@UNKNOWN2:
	BNE @UNKNOWN1
	LDA #6
	JSR UNKNOWN_C10FEA
	LDY @LOCAL02
	LDA a:menu_option::text_y,Y
	TAX
	LDA a:menu_option::text_x,Y
	INC
	JSL UNKNOWN_C438A5
	LDY @LOCAL02
	TYA
	CLC
	ADC #menu_option::label
	PROMOTENEARPTRA @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDX #1
	LDA #.LOWORD(-1)
	JSL UNKNOWN_C43BB9
	LDA #0
	JSR UNKNOWN_C10FEA
	LDA GAME_STATE+game_state::sound_setting
	AND #$00FF
	TAX
	STX @LOCAL01
	BRA @UNKNOWN5
@UNKNOWN3:
	LDA #1
	JSR SELECTION_MENU
	TAX
	STX @LOCAL01
	BEQ @UNKNOWN4
	TXA
	SEP #PROC_FLAGS::ACCUM8
	STA GAME_STATE+game_state::sound_setting
@UNKNOWN4:
	REP #PROC_FLAGS::ACCUM8
	LDA CURRENT_SAVE_SLOT
	AND #$00FF
	DEC
	JSL SAVE_GAME_SLOT
@UNKNOWN5:
	LDX @LOCAL01
	TXA
	END_C_FUNCTION
