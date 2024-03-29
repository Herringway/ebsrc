
OPEN_TEXT_SPEED_MENU:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_RETURN_INT16 ;int
	END_STACK_VARS
	TAY
	STY @LOCAL04
	CREATE_WINDOW_NEAR #WINDOW::FILE_SELECT_TEXT_SPEED
	JSR SET_INSTANT_PRINTING
	LOADPTR FILE_SELECT_TEXT_SELECT_TEXT_SPEED, @LOCAL00
	LDA #9
	JSR PRINT_STRING
	LOADPTR FILE_SELECT_TEXT_TEXTSPEED_STRINGS, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL03
	MOVE_INT_CONSTANT NULL, @VIRTUAL0A
	MOVE_INT @VIRTUAL06, @LOCAL00
	MOVE_INT @VIRTUAL0A, @LOCAL01
	LDX #1
	LDA #0
	JSR UNKNOWN_C114B1
	LDA #TEXT_SPEED_STRING_LENGTH
	MOVE_INTX @LOCAL03, @VIRTUAL06
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL00
	LDA @VIRTUAL06+2
	STA @LOCAL00+2
	MOVE_INT @VIRTUAL0A, @LOCAL01
	LDX #2
	LDA #0
	JSR UNKNOWN_C114B1
	LDA #TEXT_SPEED_STRING_LENGTH*2
	MOVE_INTX @LOCAL03, @VIRTUAL06
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL00
	LDA @VIRTUAL06+2
	STA @LOCAL00+2
	MOVE_INT @VIRTUAL0A, @LOCAL01
	LDX #3
	LDA #0
	JSR UNKNOWN_C114B1
	LDA GAME_STATE+game_state::text_speed
	AND #$00FF
	BEQ @UNKNOWN0
	AND #$00FF
	TAX
	DEX
	BRA @UNKNOWN1
@UNKNOWN0:
	LDX #1
@UNKNOWN1:
	TXA
	JSR UNKNOWN_C11887
	LDY @LOCAL04
	BEQL @UNKNOWN5
	LDA CURRENT_FOCUS_WINDOW
	ASL
	TAX
	LDA OPEN_WINDOW_TABLE,X
	OPTIMIZED_MULT @VIRTUAL04, .SIZEOF(window_stats)
	TAX
	LDA WINDOW_STATS + window_stats::current_option,X
	OPTIMIZED_MULT @VIRTUAL04, .SIZEOF(menu_option)
	CLC
	ADC #.LOWORD(MENU_OPTIONS)
	TAY
	STY @LOCAL04
	LDA GAME_STATE + game_state::text_speed
	AND #$00FF
	TAX
	DEX
	BRA @UNKNOWN4
@UNKNOWN3:
	LDA __BSS_START__ + menu_option::next,Y
	OPTIMIZED_MULT @VIRTUAL04, .SIZEOF(menu_option)
	CLC
	ADC #.LOWORD(MENU_OPTIONS)
	TAY
	STY @LOCAL04
	DEX
@UNKNOWN4:
	BNE @UNKNOWN3
	LDA #6
	JSR UNKNOWN_C10FEA
	LDY @LOCAL04
	LDA __BSS_START__ + menu_option::text_y,Y
	TAX
	LDA __BSS_START__ + menu_option::text_x,Y
	INC
	JSR UNKNOWN_C438A5
	LDY @LOCAL04
	TYA
	CLC
	ADC #menu_option::label
	PROMOTENEARPTRA @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDA #$FFFF
	JSR PRINT_STRING
	LDA #0
	JSR UNKNOWN_C10FEA
	LDA GAME_STATE + game_state::text_speed
	AND #$00FF
	TAX
	STX @LOCAL02
	BRA @UNKNOWN6
@UNKNOWN5:
	LDA #1
	JSR SELECTION_MENU
	TAX
	STX @LOCAL02
	BEQ @UNKNOWN6
	TXA
	SEP #PROC_FLAGS::ACCUM8
	STA GAME_STATE + game_state::text_speed

	REP #PROC_FLAGS::ACCUM8
	LDA CURRENT_SAVE_SLOT
	AND #$00FF
	DEC
	JSL SAVE_GAME_SLOT
@UNKNOWN6:
	LDX @LOCAL02
	TXA
	END_C_FUNCTION
