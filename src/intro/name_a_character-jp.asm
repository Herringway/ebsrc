
NAME_A_CHARACTER: ;$C1EC04
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 28
	STY $1A
	TXY
	STY $18
	STA $02
	STA $16
	LDX $2E
	STX $04
	MOVE_INT $2A, $06
	JSR SET_9622_ONE
	CREATE_WINDOW_NEAR #WINDOW::FILE_SELECT_NAMING_NAME_BOX
	LDX #$0000
	STX $14
	BRA @UNKNOWN1
@UNKNOWN0:
	LDA #$005C
	JSR PRINT_LETTER
	LDX $14
	INX
	STX $14
@UNKNOWN1:
	TXA
	CMP $02
	BCC @UNKNOWN0
	LDX #$0000
	TXA
	JSR UNKNOWN_C438A5
	LDY $18
	LDA a:.LOWORD(RAM),Y
	AND #$00FF
	BEQ @UNKNOWN2
	TYA
	STA $0A
	PHB
	SEP #%00100000
	PLA
	STA $0C
	STZ $0D
	REP #%00100000
	MOVE_INT $0A, $0E
	LDA $02
	JSR DISPLAY_CONFIG_MENU_TITLE
	LDX #$89D0
	STX $12
	STX $02
	LDA $8C96
	ASL
	TAX
	LDA $8C26,X
	LDY #$004C
	JSL MULT168
	CLC
	ADC $02
	TAX
	LDA a:.LOWORD(RAM),X
	LDX $16
	STX $02
	CMP $02
	BCS @UNKNOWN3
	LDA #$0040
	JSR PRINT_LETTER
	LDX $12
	STX $02
	LDA $8C96
	ASL
	TAX
	LDA $8C26,X
	LDY #$004C
	JSL MULT168
	CLC
	ADC $02
	TAX
	LDA a:.LOWORD(RAM),X
	DEC
	STA a:.LOWORD(RAM),X
	BRA @UNKNOWN3
@UNKNOWN2:
	LDA #$0040
	JSR PRINT_LETTER
	LDX #$0000
	TXA
	JSR UNKNOWN_C438A5
@UNKNOWN3:
	CREATE_WINDOW_NEAR #WINDOW::FILE_SELECT_NAMING_MESSAGE
	MOVE_INT $06, $0E
	LDA $04
	JSR a:.LOWORD(DISPLAY_CONFIG_MENU_TITLE)
	LDX #$0000
	LDA #$0001
	JSR a:.LOWORD(CC_13_14)
	LDA #$0000
	STA $0E
	LDA $1A
	STA $10
	LDY $18
	LDA $16
	STA $02
	LDX $02
	LDA #$001A
	JSR a:.LOWORD(TEXT_INPUT_DIALOG)
	TAX
	STX $1A
	LDA #$001C
	JSR CLOSE_WINDOW
	LDX $1A
	TXA
	PLD
	RTS