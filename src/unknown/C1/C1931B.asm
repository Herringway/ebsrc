
UNKNOWN_C1931B:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	STA @LOCAL01
	CMP #PLAYER_CHAR_COUNT
	BLTEQ @UNKNOWN2
	CMP #PARTY_MEMBER::KING
	BNE @UNKNOWN1
	PROMOTENEARPTR GAME_STATE + game_state::pet_name, @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	LDA #.SIZEOF(game_state::pet_name)
	STA @LOCAL01
	LDA f:ALLOW_TEXT_OVERFLOW
	AND #$00FF
	BEQ @UNKNOWN0
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDA @LOCAL01
	JSR PRINT_STRING
	JMP @UNKNOWN4
@UNKNOWN0:
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDA @LOCAL01
	JSL UNKNOWN_C447FB
	BRA @UNKNOWN4
@UNKNOWN1:
	LOADPTR ENEMY_CONFIGURATION_TABLE, @VIRTUAL06
	LDA @LOCAL01
	OPTIMIZED_MULT @VIRTUAL04, 2
	TAX
	INX
	LDA f:NPC_AI_TABLE,X
	AND #$00FF
	LDY #.SIZEOF(enemy_data)
	JSL MULT168
	INC
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL00
	LDA @VIRTUAL06+2
	STA @LOCAL00+2
	LDA #25
	JSL UNKNOWN_C447FB
	BRA @UNKNOWN4
@UNKNOWN2:
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(PARTY_CHARACTERS) + char_struct::name
	PROMOTENEARPTRA @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	LDA #.SIZEOF(char_struct::name)
	STA @LOCAL01
	LDA f:ALLOW_TEXT_OVERFLOW
	AND #$00FF
	BEQ @UNKNOWN3
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDA @LOCAL01
	JSR PRINT_STRING
	BRA @UNKNOWN4
@UNKNOWN3:
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDA @LOCAL01
	JSL UNKNOWN_C447FB
@UNKNOWN4:
	END_C_FUNCTION
