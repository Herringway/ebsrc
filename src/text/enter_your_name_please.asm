
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
	STZ ENABLE_WORD_WRAP
	SEP #PROC_FLAGS::ACCUM8
	LDA #1
	STA ALLOW_TEXT_OVERFLOW
	JSL SET_INSTANT_PRINTING
	.A16
	CREATE_WINDOW_NEAR #WINDOW::UNKNOWN27
	LDX @LOCAL02
	BEQL @UNKNOWN2
	LDX #0
	TXA
	JSL UNKNOWN_C438A5
	.A16
	PROMOTENEARPTR GAME_STATE + game_state::earthbound_playername, @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDA #24
	JSR PRINT_STRING
	LDX #1
	LDA #0
	JSL UNKNOWN_C438A5
	LDA #12
	JSL UNKNOWN_C441B7
	LDA GAME_STATE
	AND #$00FF
	BEQ @UNKNOWN1
	PROMOTENEARPTR GAME_STATE + game_state::mother2_playername, @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDA #12
	JSR PRINT_STRING
@UNKNOWN1:
	LDX #1
	LDA #0
	JSL UNKNOWN_C438A5
	STZ @LOCAL00
	LDA #.LOWORD(-1)
	STA @LOCAL00+2
	LDY #.LOWORD(GAME_STATE) + game_state::mother2_playername
	LDX #12
	LDA #WINDOW::UNKNOWN27
	JSR TEXT_INPUT_DIALOG
	TAY
	STY @LOCAL01
	JMP @UNKNOWN4
@UNKNOWN2:
	LDX #0
	TXA
	JSL UNKNOWN_C438A5
	LOADPTR NAME_REGISTRY_REQUEST_STRING, @LOCAL00
	LDA #26
	JSR PRINT_STRING
	JSL WAIT_DMA_FINISHED
	LDX #1
	LDA #0
	JSL UNKNOWN_C438A5
	LDA #24
	JSL UNKNOWN_C441B7
	LDX #1
	LDA #0
	JSL UNKNOWN_C438A5
	LDY #.LOWORD(GAME_STATE) + game_state::earthbound_playername
	LDA __BSS_START__,Y
	AND #$00FF
	BEQ @UNKNOWN3
	LDX #24
	TYA
	JSL UNKNOWN_C440B5
@UNKNOWN3:
	LDX #1
	LDA #0
	JSL UNKNOWN_C438A5
	LDA #.LOWORD(GAME_STATE) + game_state::earthbound_playername
	STA @VIRTUAL02
	STZ @LOCAL00
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
@UNKNOWN4:
	LDA #WINDOW::FILE_SELECT_NAMING_KEYBOARD
	JSL CLOSE_WINDOW
	LDA #WINDOW::UNKNOWN27
	JSL CLOSE_WINDOW
	LDA #$00FF
	STA ENABLE_WORD_WRAP
	SEP #PROC_FLAGS::ACCUM8
	STZ ALLOW_TEXT_OVERFLOW
	LDY @LOCAL01
	REP #PROC_FLAGS::ACCUM8
	TYA
	END_C_FUNCTION
