
UNKNOWN_C2C41F:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16 ;int music
	STACK_RESERVE_PARAM_INT32 "SCRIPT" ;const char* script
	END_STACK_VARS
	TAY
	STY @LOCAL01
	MOVE_INT @SCRIPT, @VIRTUAL06
	LDX #1
	TXA
	JSL FADE_OUT
	LDA #2
	JSL UNKNOWN_C0AC0C
	JSR UNKNOWN_C269DE
	STZ BATTLE_MODE_FLAG
	JSL UNKNOWN_C1DD5F
	SEP #PROC_FLAGS::ACCUM8
	LDA #$04
	STA TM_MIRROR
	REP #PROC_FLAGS::ACCUM8
	LDA #MUSIC::GIYGAS_WEAKENED
	JSL CHANGE_MUSIC
	LDX #1
	TXA
	JSL FADE_IN
	JSR UNKNOWN_C269DE
	LDA #2*SIXTHS_OF_A_SECOND
	JSR WAIT
	MOVE_INT @VIRTUAL06, @LOCAL00
	JSL DISPLAY_IN_BATTLE_TEXT
	LDA #1
	STA BATTLE_MODE_FLAG
	LDA #2*SIXTHS_OF_A_SECOND
	JSR WAIT
	LDA #2
	JSL UNKNOWN_C0AC0C
	LDX #1
	TXA
	JSL FADE_OUT
	JSR UNKNOWN_C269DE
	JSL REDIRECT_SHOW_HPPP_WINDOWS
	CREATE_WINDOW_FAR #WINDOW::TEXT_BATTLE
	SEP #PROC_FLAGS::ACCUM8
	LDA #$17
	STA TM_MIRROR
	LDY @LOCAL01
	REP #PROC_FLAGS::ACCUM8
	TYA
	JSL CHANGE_MUSIC
	LDX #1
	TXA
	JSL FADE_IN
	JSR UNKNOWN_C269DE
	END_C_FUNCTION
