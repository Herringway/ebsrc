
OPEN_FLAVOUR_MENU: ;$C1F6E3
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 26
	CREATE_WINDOW_NEAR #WINDOW::FILE_SELECT_FLAVOUR_CHOICE
	JSL SET_9622_ONE
	LOADPTR FILE_SELECT_TEXT_WHICH_STYLE, $0E
	LDA #$0025
	JSR a:.LOWORD(PRINT_STRING)
	MOVE_INT_CONSTANT NULL, $06
	LOADPTR FILE_SELECT_TEXT_FLAVOR_PLAIN, $0E
	MOVE_INT $06, $12
	LDX #$0002
	LDA #$0000
	JSR a:.LOWORD(UNKNOWN_C114B1)
	LOADPTR FILE_SELECT_TEXT_FLAVOR_MINT, $0E
	MOVE_INT $06, $12
	LDX #$0003
	LDA #$0000
	JSR a:.LOWORD(UNKNOWN_C114B1)
	LOADPTR FILE_SELECT_TEXT_FLAVOR_STRAWBERRY, $0E
	MOVE_INT $06, $12
	LDX #$0004
	LDA #$0000
	JSR a:.LOWORD(UNKNOWN_C114B1)
	LOADPTR FILE_SELECT_TEXT_FLAVOR_BANANA, $0E
	MOVE_INT $06, $12
	LDX #$0005
	LDA #$0000
	JSR a:.LOWORD(UNKNOWN_C114B1)
	LOADPTR FILE_SELECT_TEXT_FLAVOR_PEANUT, $0E
	MOVE_INT $06, $12
	LDX #$0006
	LDA #$0000
	JSR a:.LOWORD(UNKNOWN_C114B1)
	LDX #.LOWORD(GAME_STATE) + game_state::text_flavour
	LDA a:.LOWORD(RAM),X
	AND #$00FF
	BNE @UNKNOWN0
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0001
	STA a:.LOWORD(RAM),X
@UNKNOWN0:
	LDX #.LOWORD(GAME_STATE) + game_state::text_flavour
	STX $18
	REP #PROC_FLAGS::ACCUM8
	LDA a:.LOWORD(RAM),X
	AND #$00FF
	DEC
	JSR a:.LOWORD(UNKNOWN_C11887)
	LOADPTR UNKNOWN_C1EC8F, $0E
	JSR a:.LOWORD(UNKNOWN_C11F5A)
	LDA #$0001
	JSR a:.LOWORD(SELECTION_MENU)
	TAY
	STY $16
	BEQ @UNKNOWN1
	TYA
	SEP #PROC_FLAGS::ACCUM8
	LDX $18
	STA a:.LOWORD(RAM),X
	BRA @UNKNOWN4
@UNKNOWN1:
	LDX $18
	LDA a:.LOWORD(RAM),X
	AND #$00FF
	BRK
	BEQ @UNKNOWN2
	AND #$00FF
	BRK
	TAX
	BRA @UNKNOWN3
@UNKNOWN2:
	LDX #$0001
@UNKNOWN3:
	TXA
	JSL UNKNOWN_C1EC8F
@UNKNOWN4:
	REP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(CURRENT_SAVE_SLOT)
	AND #$00FF
	DEC
	JSL SAVE_GAME_SLOT
	LDY $16
	TYA
	PLD
	RTS
