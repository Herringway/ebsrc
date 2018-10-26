
SAVE_GAME_BLOCK: ;$EF088F
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	PHA
	TDC
	ADC #$FFDE
	TCD
	PLA
	TAY
	STY $20
@UNKNOWN0:
	LDA a:.LOWORD(TIMER)
	STA $06
	LDA a:.LOWORD(TIMER)+2
	STA $08
	LDA $06
	STA .LOWORD(GAME_STATE)+game_state::timer
	LDA $08
	STA .LOWORD(GAME_STATE)+game_state::timer+2
	LDY $20
	TYA
	LDY #$0500
	JSL MULT16
	STA $0A
	STZ $0C
	LDA $0A
	STA $06
	LDA $0C
	STA $08
	CLC
	LDA $06
	ADC #$6020
	STA $06
	LDA $08
	ADC #$0030
	STA $08
	LDA $06
	STA $1C
	LDA $08
	STA $1E
	LDA #.LOWORD(GAME_STATE)
	STA $06
	PHB
	SEP #PROC_FLAGS::ACCUM8
	PLA
	STA $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	LDA $06
	STA $16
	LDA $08
	STA $18
	TDC
	CLC
	ADC #$0018
	TAX
	STX $1A
	LDA #$007E
	STA a:.LOWORD(RAM),X
	LDA $1C
	STA $06
	LDA $1E
	STA $08
	LDA $06
	STA $0E
	LDA $08
	STA $10
	LDA $16
	STA $06
	LDA $18
	STA $08
	LDA $06
	STA $12
	LDA $08
	STA $14
	LDA #.SIZEOF(game_state)
	JSL MEMCPY24
	LDA #.SIZEOF(game_state)
	LDX $1C
	STX $06
	LDX $1E
	STX $08
	CLC
	ADC $06
	STA $06
	STA $1C
	LDA $08
	STA $1E
	LDA #.LOWORD(CHAR_STRUCT)
	STA $06
	PHB
	SEP #PROC_FLAGS::ACCUM8
	PLA
	STA $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	LDA $06
	STA $16
	LDA $08
	STA $18
	LDA #$007E
	LDX $1A
	STA a:.LOWORD(RAM),X
	LDA $1C
	STA $06
	LDA $1E
	STA $08
	LDA $06
	STA $0E
	LDA $08
	STA $10
	LDA $16
	STA $06
	LDA $18
	STA $08
	LDA $06
	STA $12
	LDA $08
	STA $14
	LDA #.SIZEOF(char_struct) * 6
	JSL MEMCPY24
	LDA #.SIZEOF(char_struct) * 6
	LDX $1C
	STX $06
	LDX $1E
	STX $08
	CLC
	ADC $06
	STA $06
	STA $1C
	LDA $08
	STA $1E
	LDA #.LOWORD(UNKNOWN_7E9C08)
	STA $06
	PHB
	SEP #PROC_FLAGS::ACCUM8
	PLA
	STA $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	LDA $06
	STA $16
	LDA $08
	STA $18
	LDA #$007E
	LDX $1A
	STA a:.LOWORD(RAM),X
	LDA $1C
	STA $06
	LDA $1E
	STA $08
	LDA $06
	STA $0E
	LDA $08
	STA $10
	LDA $16
	STA $06
	LDA $18
	STA $08
	LDA $06
	STA $12
	LDA $08
	STA $14
	LDA #$0080
	JSL MEMCPY24
	LDA $0A
	STA $06
	LDA $0C
	STA $08
	CLC
	LDA $06
	ADC #$601C
	STA $06
	LDA $08
	ADC #$0030
	STA $08
	LDY $20
	TYA
	JSR a:.LOWORD(CALC_SAVE_BLOCK_ADD_CHECKSUM)
	TAX
	STX $1A
	TXA
	STA [$06]
	LDY $20
	TYA
	JSR a:.LOWORD(CALC_SAVE_BLOCK_ADD_CHECKSUM)
	STA $02
	LDX $1A
	TXA
	CMP $02
	BEQ @UNKNOWN1
	JMP .LOWORD(@UNKNOWN0)
@UNKNOWN1:
	LDA $0A
	STA $06
	LDA $0C
	STA $08
	CLC
	LDA $06
	ADC #$601E
	STA $06
	LDA $08
	ADC #$0030
	STA $08
	LDY $20
	TYA
	JSR a:.LOWORD(CALC_SAVE_BLOCK_XOR_CHECKSUM)
	TAX
	STX $1A
	TXA
	STA [$06]
	LDY $20
	TYA
	JSR a:.LOWORD(CALC_SAVE_BLOCK_XOR_CHECKSUM)
	STA $02
	LDX $1A
	TXA
	CMP $02
	BEQ @UNKNOWN2
	JMP .LOWORD(@UNKNOWN0)
@UNKNOWN2:
	PLD
	RTS
