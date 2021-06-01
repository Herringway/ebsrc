
FILE_SELECT_MENU: ;$C1ED5B
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 32
	STA $02
	LDA #WINDOW::FILE_SELECT_MAIN
	JSR a:.LOWORD(CREATE_WINDOW)
	LDY #$0000
	STY $1E
	JMP a:.LOWORD(@UNKNOWN7)
@UNKNOWN0:
	TYA
	JSL LOAD_GAME_SLOT
	LDA .LOWORD(GAME_STATE) + game_state::favourite_thing + 1
	AND #$00FF
	BEQ @UNKNOWN5
	SEP #PROC_FLAGS::ACCUM8
	STZ $0E
	LDX #$0020
	REP #PROC_FLAGS::ACCUM8
	LDA #.LOWORD(UNKNOWN_7E9C9F)
	JSL MEMSET16
	LDY $1E
	TYA
	SEP #PROC_FLAGS::ACCUM8
	CLC
	ADC #$0061
	STA .LOWORD(UNKNOWN_7E9C9F)
	LDA #$006A
	STA .LOWORD(UNKNOWN_7E9CA0)
	LDA #$0050
	STA .LOWORD(UNKNOWN_7E9CA1)
	LDX #$0000
	BRA @UNKNOWN4
@UNKNOWN1:
	SEP #PROC_FLAGS::ACCUM8
	STA .LOWORD(UNKNOWN_7E9CA2),X
	INX
@UNKNOWN2:
	REP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(CHAR_STRUCT)+char_struct::name,X
	AND #$00FF
	BEQ @UNKNOWN3
	CPX #.SIZEOF(char_struct::name)
	BCC @UNKNOWN1
@UNKNOWN3:
	SEP #PROC_FLAGS::ACCUM8
	STZ .LOWORD(UNKNOWN_7E9CA2),X
	INX
@UNKNOWN4:
	CPX #.SIZEOF(char_struct::name)
	BCC @UNKNOWN2
	LDA #$0001
	STA .LOWORD(UNKNOWN_7EB49E),Y
	REP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(GAME_STATE)+game_state::text_flavour
	AND #$00FF
	XBA
	AND #$FF00
	STA $1C
	BRA @UNKNOWN6
@UNKNOWN5:
	LDY $1E
	TYA
	SEP #PROC_FLAGS::ACCUM8
	CLC
	ADC #$0061
	STA .LOWORD(UNKNOWN_7E9C9F)
	REP #PROC_FLAGS::ACCUM8
	LDA #.LOWORD(UNKNOWN_7E9CA0)
	STA $06
	PHB
	SEP #PROC_FLAGS::ACCUM8
	PLA
	STA $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	LOADPTR FILE_SELECT_TEXT_START_NEW_GAME, $12
	LDA #$0010
	JSL MEMCPY24
	SEP #PROC_FLAGS::ACCUM8
	STZ .LOWORD(UNKNOWN_7E9CB0)
	LDY $1E
	TYX
	STZ .LOWORD(UNKNOWN_7EB49E),X
	REP #PROC_FLAGS::ACCUM8
	LDA #$0100
	STA $1C
@UNKNOWN6:
	STY $04
	INC $04
	LDA #.LOWORD(UNKNOWN_7E9C9F)
	STA $06
	PHB
	SEP #PROC_FLAGS::ACCUM8
	PLA
	STA $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	MOVE_INT_CONSTANT NULL, $12
	LDA $1C
	ORA $04
	JSR a:.LOWORD(UNKNOWN_C115F4)
	LDY $04
	STY $1E
@UNKNOWN7:
	CPY #SAVE_COUNT
	BCS @UNKNOWN8
	BEQ @UNKNOWN8
	JMP a:.LOWORD(@UNKNOWN0)
@UNKNOWN8:
	LDY #$0000
	TYX
	LDA #$0001
	JSR a:.LOWORD(UNKNOWN_C1180D)
	LDY #$0000
	STY $1A
	JMP a:.LOWORD(@UNKNOWN14)
@UNKNOWN9:
	TYA
	JSL LOAD_GAME_SLOT
	LDA .LOWORD(GAME_STATE) + game_state::favourite_thing + 1
	AND #$00FF
	BNE @UNKNOWN10
	JMP a:.LOWORD(@UNKNOWN13)
@UNKNOWN10:
	LDA #.LOWORD(UNKNOWN_7E9C9F)
	STA $06
	PHB
	SEP #PROC_FLAGS::ACCUM8
	PLA
	STA $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	LOADPTR FILE_SELECT_TEXT_LEVEL, $12
	LDA #$0006
	JSL MEMCPY24
	SEP #PROC_FLAGS::ACCUM8
	STZ .LOWORD(UNKNOWN_7E9CA5)
	LDY $1A
	TYX
	REP #PROC_FLAGS::ACCUM8
	LDA #$0009
	JSL UNKNOWN_C438A5
	MOVE_INT $06, $0E
	LDA #$0020
	JSR a:.LOWORD(DISPLAY_CONFIG_MENU_TITLE)
	SEP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(CHAR_STRUCT)+char_struct::level
	STA $06
	STZ $07
	STZ $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	JSR a:.LOWORD(UNKNOWN_C10D7C)
	TAX
	CPX #$0001
	BNE @UNKNOWN11
	LDA #$0050
	BRA @UNKNOWN12
@UNKNOWN11:
	STX $04
	LDA #$0007
	SEC
	SBC $04
	TAX
	LDA .LOWORD(UNKNOWN_7E895A),X
	AND #$00FF
	CLC
	ADC #$0060
@UNKNOWN12:
	SEP #PROC_FLAGS::ACCUM8
	STA .LOWORD(UNKNOWN_7E9C9F)
	LDA .LOWORD(UNKNOWN_7E8960)
	CLC
	ADC #$0060
	STA .LOWORD(UNKNOWN_7E9CA0)
	STZ .LOWORD(UNKNOWN_7E9CA1)
	LDY $1A
	TYX
	REP #PROC_FLAGS::ACCUM8
	LDA #$000D
	JSL UNKNOWN_C438A5
	LDA #.LOWORD(UNKNOWN_7E9C9F)
	STA $06
	PHB
	SEP #PROC_FLAGS::ACCUM8
	PLA
	STA $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $16
	MOVE_INT $06, $0E
	LDA #$0020
	JSR a:.LOWORD(DISPLAY_CONFIG_MENU_TITLE)
	MOVE_INT $06, $0E
	LOADPTR FILE_SELECT_TEXT_TEXTSPEED, $12
	LDA #$000B
	JSL MEMCPY24
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0050
	STA .LOWORD(UNKNOWN_7E9CAA)
	REP #PROC_FLAGS::ACCUM8
	LDA #.LOWORD(UNKNOWN_7E9CAB)
	STA $06
	PHB
	SEP #PROC_FLAGS::ACCUM8
	PLA
	STA $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	LOADPTR FILE_SELECT_TEXT_TEXTSPEED_STRINGS, $06
	LDA .LOWORD(GAME_STATE)+game_state::text_speed
	AND #$00FF
	DEC
	OPTIMIZED_MULT $04, 7
	CLC
	ADC $06
	STA $06
	STA $12
	LDA $08
	STA $14
	LDA #TEXT_SPEED_STRING_LENGTH
	JSL MEMCPY24
	LDY $1A
	TYX
	LDA #$0010
	JSL UNKNOWN_C438A5
	MOVE_INT $16, $06
	MOVE_INT $06, $0E
	LDA #$0020
	JSR a:.LOWORD(DISPLAY_CONFIG_MENU_TITLE)
@UNKNOWN13:
	LDY $1A
	INY
	STY $1A
@UNKNOWN14:
	CPY #$0003
	BCS @UNKNOWN15
	BEQ @UNKNOWN15
	JMP a:.LOWORD(@UNKNOWN9)
@UNKNOWN15:
	LDA $02
	BEQ @UNKNOWN18
	LDA .LOWORD(CURRENT_FOCUS_WINDOW)
	ASL
	TAX
	LDA .LOWORD(WINDOW_EXISTENCE_TABLE),X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	LDA .LOWORD(WINDOW_STATS_TABLE)+window_stats::current_option,X
	LDY #.SIZEOF(u89D4_entry)
	JSL MULT168
	CLC
	ADC #.LOWORD(UNKNOWN_7E89D4)
	TAY
	STY $1C
	LDA .LOWORD(CURRENT_SAVE_SLOT)
	AND #$00FF
	TAX
	DEX
	BRA @UNKNOWN17
@UNKNOWN16:
	LDA a:.LOWORD(RAM)+2,Y
	LDY #.SIZEOF(u89D4_entry)
	JSL MULT168
	CLC
	ADC #.LOWORD(UNKNOWN_7E89D4)
	TAY
	STY $1C
	DEX
@UNKNOWN17:
	BNE @UNKNOWN16
	LDA #$0006
	JSR a:.LOWORD(UNKNOWN_C10FEA)
	LDY $1C
	LDA a:.LOWORD(RAM)+10,Y
	TAX
	LDA a:.LOWORD(RAM)+8,Y
	INC
	JSL UNKNOWN_C438A5
	STZ .LOWORD(UNKNOWN_7E5E6E)
	JSL UNKNOWN_C43B15
	LDA #$0000
	JSR a:.LOWORD(UNKNOWN_C10FEA)
	BRA @UNKNOWN20
@UNKNOWN18:
	JSR a:.LOWORD(CORRUPTION_CHECK)
@UNKNOWN19:
	LDA a:.LOWORD(UNKNOWN_7E0028)
	AND #$00FF
	BNE @UNKNOWN19
	LDA #MUSIC::SETUP_SCREEN
	JSL CHANGE_MUSIC
	LOADPTR UNKNOWN_C1ECD1, $0E
	JSR a:.LOWORD(UNKNOWN_C11F5A)
	LDA #$0000
	JSR a:.LOWORD(SELECTION_MENU)
	SEP #PROC_FLAGS::ACCUM8
	STA .LOWORD(CURRENT_SAVE_SLOT)
	JSR a:.LOWORD(UNKNOWN_C11F8A)
@UNKNOWN20:
	LDA .LOWORD(CURRENT_SAVE_SLOT)
	AND #$00FF
	BRK
	DEC
	JSL LOAD_GAME_SLOT
	LDA .LOWORD(CURRENT_SAVE_SLOT)
	AND #$00FF
	BRK
	PLD
	RTS
