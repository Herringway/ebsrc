
DISPLAY_TEXT_WAIT:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_PARAM_INT32
	STACK_RESERVE_PARAM_INT32
	END_STACK_VARS
	MOVE_INT @PARAM01, @VIRTUAL06
	MOVE_INT @PARAM00, @VIRTUAL0A
	LDX #.LOWORD(GAME_STATE) + game_state::auto_fight_enable
	LDA __BSS_START__,X
	AND #$00FF
	BEQ @UNKNOWN0
	LDA PAD_STATE
	AND #PAD::B_BUTTON
	BEQ @UNKNOWN0
	SEP #PROC_FLAGS::ACCUM8
	LDA #0
	STA __BSS_START__,X
	JSL UNKNOWN_C20293
@UNKNOWN0:
	MOVE_INT @VIRTUAL06, @LOCAL00
	JSR UNKNOWN_C1AD0A
	.A16
	LDA BATTLE_MODE_FLAG
	BEQ @UNKNOWN1
	LDA #2
	JSR ENABLE_BLINKING_TRIANGLE
@UNKNOWN1:
.IF .DEFINED(JPN)
	MOVE_INT @VIRTUAL0A, @LOCAL00
.ELSE
	MOVE_INT @VIRTUAL0A, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
.ENDIF
	JSL DISPLAY_TEXT
	JSR CLEAR_BLINKING_PROMPT
	END_C_FUNCTION
