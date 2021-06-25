
LOAD_GAME_SLOT: ;$EF0A68
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 30
	LDY #$0A00
	JSL MULT16
	STA $06
	STZ $08
	CLC
	VAR_ADD_CONST_INT_ASSIGN SAVE_BASE + .SIZEOF(save_header), $06
	MOVE_INT $06, $1A
	LDA #.LOWORD(GAME_STATE)
	STA $06
	PHB
	SEP #PROC_FLAGS::ACCUM8
	PLA
	STA $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $16
	LDA #$007E
	STA $18
	MOVE_INT $16, $0A
	MOVE_INT $0A, $0E
	MOVE_INT $1A, $06
	MOVE_INT $06, $12
	LDA #.SIZEOF(game_state)
	JSL MEMCPY24
	LDA #.SIZEOF(game_state)
	CLC
	ADC $06
	STA $06
	STA $1A
	LDA $08
	STA $1C
	LDA #.LOWORD(CHAR_STRUCT)
	STA $06
	PHB
	SEP #PROC_FLAGS::ACCUM8
	PLA
	STA $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $16
	LDA #$007E
	STA $18
	MOVE_INT $16, $0A
	MOVE_INT $0A, $0E
	MOVE_INT $1A, $06
	MOVE_INT $06, $12
	LDA #.SIZEOF(char_struct)*6
	JSL MEMCPY24
	LDA #.SIZEOF(char_struct)*6
	CLC
	ADC $06
	STA $06
	STA $1A
	LDA $08
	STA $1C
	LDA #.LOWORD(UNKNOWN_7E9C08)
	STA $06
	PHB
	SEP #PROC_FLAGS::ACCUM8
	PLA
	STA $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $16
	LDA #$007E
	STA $18
	MOVE_INT $16, $0A
	MOVE_INT $0A, $0E
	MOVE_INT $1A, $06
	MOVE_INT $06, $12
	LDA #$0080
	JSL MEMCPY24
	MOVE_INT .LOWORD(GAME_STATE) + game_state::timer, $06
	MOVE_INT $06, a:.LOWORD(TIMER)
	PLD
	RTL