
OPEN_SOUND_MENU:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	STACK_RESERVE_RETURN_INT16 ;int
	END_STACK_VARS
	CREATE_WINDOW_NEAR #WINDOW::FILE_SELECT_MUSIC_MODE
	JSR SET_INSTANT_PRINTING
	LOADPTR FILE_SELECT_TEXT_SELECT_SOUND_SETTING, @LOCAL00
	LDA #28
	JSR PRINT_STRING
	LOADPTR FILE_SELECT_TEXT_SOUND_SETTING_STRINGS, @VIRTUAL0A
	MOVE_INT_CONSTANT NULL, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL02
	MOVE_INT @VIRTUAL0A, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
	MOVE_INT @LOCAL02, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL01
	LDX #1
	LDA #0
	JSR UNKNOWN_C114B1
	LDA #SOUND_SETTING_STRING_LENGTH
	MOVE_INTX @VIRTUAL0A, @VIRTUAL06
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL00
	LDA @VIRTUAL06+2
	STA @LOCAL00+2
	MOVE_INT @LOCAL02, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL01
	LDX #2
	LDA #0
	JSR UNKNOWN_C114B1
	LDA GAME_STATE + game_state::sound_setting
	AND #$00FF
	BEQ @UNKNOWN0
	AND #$00FF
	TAX
	DEX
	BRA @UNKNOWN1
@UNKNOWN0:
	LDX #0
@UNKNOWN1:
	TXA
	JSR UNKNOWN_C11887
	END_C_FUNCTION
