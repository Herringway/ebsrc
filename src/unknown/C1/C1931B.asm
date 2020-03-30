
UNKNOWN_C1931B: ;$C1931B
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 20
	STA $12
	CMP #PLAYER_CHAR_COUNT
	BCC @UNKNOWN2
	BEQ @UNKNOWN2
	CMP #PARTY_MEMBER::KING
	BNE @UNKNOWN1
	LDA #.LOWORD(GAME_STATE) + game_state::pet_name
	STA $06
	PHB
	SEP #PROC_FLAGS::ACCUM8
	PLA
	STA $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	LDA #.SIZEOF(game_state::pet_name)
	STA $12
	LDA UNKNOWN_7EB49D
	AND #$00FF
	BEQ @UNKNOWN0
	MOVE_INT $06, $0E
	LDA $12
	JSR a:.LOWORD(DISPLAY_CONFIG_MENU_TITLE)
	JMP a:.LOWORD(@UNKNOWN4)
@UNKNOWN0:
	MOVE_INT $06, $0E
	LDA $12
	JSL UNKNOWN_C447FB
	BRA @UNKNOWN4
@UNKNOWN1:
	LOADPTR ENEMY_CONFIGURATION_TABLE, $06
	LDA $12
	OPTIMIZED_MULT $04, 2
	TAX
	INX
	LDA f:NPC_AI_TABLE,X
	AND #$00FF
	LDY #.SIZEOF(enemy_data)
	JSL MULT168
	INC
	CLC
	ADC $06
	STA $06
	STA $0E
	LDA $08
	STA $10
	LDA #$0019
	JSL UNKNOWN_C447FB
	BRA @UNKNOWN4
@UNKNOWN2:
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT) + char_struct::name
	STA $06
	PHB
	SEP #PROC_FLAGS::ACCUM8
	PLA
	STA $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	LDA #.SIZEOF(char_struct::name)
	STA $12
	LDA f:UNKNOWN_7EB49D
	AND #$00FF
	BEQ @UNKNOWN3
	MOVE_INT $06, $0E
	LDA $12
	JSR a:.LOWORD(DISPLAY_CONFIG_MENU_TITLE)
	BRA @UNKNOWN4
@UNKNOWN3:
	MOVE_INT $06, $0E
	LDA $12
	JSL UNKNOWN_C447FB
@UNKNOWN4:
	PLD
	RTS