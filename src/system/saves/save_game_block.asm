
SAVE_GAME_BLOCK: ;$EF088F
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 34
	TAY
	STY $20
@UNKNOWN0:
	MOVE_INT TIMER, $06
	MOVE_INT $06, GAME_STATE+game_state::timer
	LDY $20
	TYA
	LDY #$0500
	JSL MULT16
	STORE_INT1632 $0A
	MOVE_INT $0A, $06
	CLC
	VAR_ADD_CONST_INT_ASSIGN SAVE_BASE + .SIZEOF(save_header), $06
	MOVE_INT $06, $1C
	PROMOTENEARPTR GAME_STATE, $06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $16
	; This is ridiculous. It would have been far more efficient to use
	; LDA #.HIWORD(RAM) / STA $18
	TDC
	CLC
	ADC #$0018
	TAX
	STX $1A
	LDA #.HIWORD(RAM)
	STA RAM,X
	MOVE_INT $1C, $06
	MOVE_INT $06, $0E
	MOVE_INT $16, $06
	MOVE_INT $06, $12
	LDA #.SIZEOF(game_state)
	JSL MEMCPY24
	LDA #.SIZEOF(game_state)
	MOVE_INTX $1C, $06
	CLC
	ADC $06
	STA $06
	STA $1C
	LDA $08
	STA $1E
	PROMOTENEARPTR CHAR_STRUCT, $06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $16
	LDA #.HIWORD(RAM)
	LDX $1A
	STA RAM,X
	MOVE_INT $1C, $06
	MOVE_INT $06, $0E
	MOVE_INT $16, $06
	MOVE_INT $06, $12
	LDA #.SIZEOF(char_struct) * 6
	JSL MEMCPY24
	LDA #.SIZEOF(char_struct) * 6
	MOVE_INTX $1C, $06
	CLC
	ADC $06
	STA $06
	STA $1C
	LDA $08
	STA $1E
	PROMOTENEARPTR EVENT_FLAG, $06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $16
	LDA #.HIWORD(RAM)
	LDX $1A
	STA RAM,X
	MOVE_INT $1C, $06
	MOVE_INT $06, $0E
	MOVE_INT $16, $06
	MOVE_INT $06, $12
	LDA #$0080
	JSL MEMCPY24
	MOVE_INT $0A, $06
	CLC
	VAR_ADD_CONST_INT_ASSIGN SAVE_BASE + save_header::checksum, $06
	LDY $20
	TYA
	JSR CALC_SAVE_BLOCK_ADD_CHECKSUM
	TAX
	STX $1A
	TXA
	STA [$06]
	LDY $20
	TYA
	JSR CALC_SAVE_BLOCK_ADD_CHECKSUM
	STA $02
	LDX $1A
	TXA
	CMP $02
	BNEL @UNKNOWN0
	MOVE_INT $0A, $06
	CLC
	VAR_ADD_CONST_INT_ASSIGN SAVE_BASE + save_header::checksum_complement, $06
	LDY $20
	TYA
	JSR CALC_SAVE_BLOCK_XOR_CHECKSUM
	TAX
	STX $1A
	TXA
	STA [$06]
	LDY $20
	TYA
	JSR CALC_SAVE_BLOCK_XOR_CHECKSUM
	STA $02
	LDX $1A
	TXA
	CMP $02
	BNEL @UNKNOWN0
	PLD
	RTS
