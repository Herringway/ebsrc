
ENTER_YOUR_NAME_PLEASE:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	TAX
	STX @LOCAL02
	JSR SET_INSTANT_PRINTING
	.A16
	CREATE_WINDOW_NEAR #WINDOW::UNKNOWN27
	LDX @LOCAL02
	BEQL @UNKNOWN4_
	.A16
	PROMOTENEARPTR GAME_STATE + game_state::earthbound_playername, @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDA #24
	JSR PRINT_STRING
	LDX #1
	LDA #0
	JSR UNKNOWN_C438A5
	LDX #0
	STX @LOCAL02
	BRA @UNKNOWN2
@UNKNOWN1:
	LDA #CHAR::PLACEHOLDER
	JSR PRINT_LETTER
	LDX @LOCAL02
	INX
	STX @LOCAL02
@UNKNOWN2:
	CPX #12
	BCC @UNKNOWN1
	LDX #1
	LDA #0
	JSR UNKNOWN_C438A5
	LDA GAME_STATE
	AND #$00FF
	BEQ @UNKNOWN3
	PROMOTENEARPTR GAME_STATE + game_state::mother2_playername, @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDA #12
	JSR PRINT_STRING
	LDA #.LOWORD(WINDOW_STATS) + window_stats::text_x
	STA @VIRTUAL02
	LDA CURRENT_FOCUS_WINDOW
	ASL
	TAX
	LDA OPEN_WINDOW_TABLE,X
	OPTIMIZED_MULT @VIRTUAL04, .SIZEOF(window_stats)
	CLC
	ADC @VIRTUAL02
	TAX
	LDA __BSS_START__,X
	CMP #12
	BCS @UNKNOWN4
	LDA #CHAR::BULLET
	JSR PRINT_LETTER
	LDA CURRENT_FOCUS_WINDOW
	ASL
	TAX
	LDA OPEN_WINDOW_TABLE,X
	OPTIMIZED_MULT @VIRTUAL04, .SIZEOF(window_stats)
	CLC
	ADC @VIRTUAL02
	TAX
	LDA __BSS_START__,X
	DEC
	STA __BSS_START__,X
	BRA @UNKNOWN4
@UNKNOWN3:
	LDA #CHAR::BULLET
	JSR PRINT_LETTER
	LDX #1
	LDA #0
	JSR UNKNOWN_C438A5
@UNKNOWN4:
	LDA #0
	STA @LOCAL00
	LDA #.LOWORD(-1)
	STA @LOCAL00+2
	LDY #.LOWORD(GAME_STATE) + game_state::mother2_playername
	LDX #12
	LDA #WINDOW::UNKNOWN27
	JSR TEXT_INPUT_DIALOG
	TAY
	STY @LOCAL01
	JMP @UNKNOWN9
@UNKNOWN4_:
	LOADPTR NAME_REGISTRY_REQUEST_STRING, @LOCAL00
	LDA #11
	JSR PRINT_STRING
	LDX #1
	LDA #0
	JSR UNKNOWN_C438A5
	LDX #0
	STX @LOCAL02
	BRA @UNKNOWN6
@UNKNOWN5:
	LDA #CHAR::PLACEHOLDER
	JSR PRINT_LETTER
	LDX @LOCAL02
	INX
	STX @LOCAL02
@UNKNOWN6:
	CPX #24
	BCC @UNKNOWN5
	LDX #1
	LDA #0
	JSR UNKNOWN_C438A5
	LDX #.LOWORD(GAME_STATE) + game_state::earthbound_playername
	LDA __BSS_START__,X
	AND #$00FF
	BEQ @UNKNOWN7
	TXA
	PROMOTENEARPTRA @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDA #24
	JSR PRINT_STRING
	LDA #.LOWORD(WINDOW_STATS) + window_stats::text_x
	STA @VIRTUAL02
	LDA CURRENT_FOCUS_WINDOW
	ASL
	TAX
	LDA OPEN_WINDOW_TABLE,X
	OPTIMIZED_MULT @VIRTUAL04, .SIZEOF(window_stats)
	CLC
	ADC @VIRTUAL02
	TAX
	LDA __BSS_START__,X
	CMP #24
	BCS @UNKNOWN8
	LDA #CHAR::BULLET
	JSR PRINT_LETTER
	LDA CURRENT_FOCUS_WINDOW
	ASL
	TAX
	LDA OPEN_WINDOW_TABLE,X
	OPTIMIZED_MULT @VIRTUAL04, .SIZEOF(window_stats)
	CLC
	ADC @VIRTUAL02
	TAX
	LDA __BSS_START__,X
	DEC
	STA __BSS_START__,X
	BRA @UNKNOWN8
@UNKNOWN7:
	LDA #CHAR::BULLET
	JSR PRINT_LETTER
	LDX #1
	LDA #0
	JSR UNKNOWN_C438A5
@UNKNOWN8:
	LDA #.LOWORD(GAME_STATE) + game_state::earthbound_playername
	STA @VIRTUAL02
	LDA #2
	STA @LOCAL00
	LDA #.LOWORD(-1)
	STA @LOCAL00+2
	LDY @VIRTUAL02
	LDX #24
	LDA #WINDOW::UNKNOWN27
	JSR TEXT_INPUT_DIALOG
	TAY
	STY @LOCAL01
	LDX @VIRTUAL02
	LDA #.LOWORD(TEMPORARY_TEXT_BUFFER)
	JSL UNKNOWN_C4D065
	PROMOTENEARPTR TEMPORARY_TEXT_BUFFER, @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDX #.SIZEOF(game_state::mother2_playername)
	LDA #.LOWORD(GAME_STATE) + game_state::mother2_playername
	JSL MEMCPY16
@UNKNOWN9:
	LDA #WINDOW::FILE_SELECT_NAMING_KEYBOARD
	JSR CLOSE_WINDOW
	LDA #WINDOW::UNKNOWN27
	JSR CLOSE_WINDOW
	LDY @LOCAL01
	TYA
	END_C_FUNCTION
