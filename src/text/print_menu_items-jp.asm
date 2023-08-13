
PRINT_MENU_ITEMS: ;$C1163C
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 27
	LDA CURRENT_FOCUS_WINDOW
	CMP #$FFFF
	BEQL @UNKNOWN13
	LDA CURRENT_FOCUS_WINDOW
	ASL
	TAX
	LDA WINDOW_EXISTENCE_TABLE,X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	CLC
	ADC #.LOWORD(WINDOW_STATS_TABLE)
	STA $04
	STA $19
	LDX $04
	LDA a:window_stats::current_option,X
	CMP #$FFFF
	BEQL @UNKNOWN13
	OPTIMIZED_MULT $04, .SIZEOF(menu_option)
	.A16
	CLC
	ADC #.LOWORD(MENU_OPTIONS)
	STA $02
	JSR SET_INSTANT_PRINTING
@UNKNOWN2:
	LDX $02
	LDA RAM+6,X
	LDX $19
	STX $04
	CMP RAM+51,X
	BEQ @UNKNOWN3
	CMP #$0000
	BNEL @UNKNOWN12
@UNKNOWN3:
	LDX $02
	LDA RAM+10,X
	TAX
	STX $17
	LDX $02
	LDA RAM+8,X
	LDX $17
	JSR UNKNOWN_C438A5
	LDA #$002F
	JSR PRINT_LETTER
	LDX $02
	LDA RAM+6,X
	BNEL @UNKNOWN11
	LDA #$0000
	JSR UNKNOWN_C10FEA
	LDA #$014F
	JSR PRINT_LETTER
	LDA #$0000
	JSR UNKNOWN_C10FEA
	LDA $04
	CLC
	ADC #$003C
	TAY
	LDA RAM,Y
	AND #$00FF
	BEQL @UNKNOWN11
	LDX #.LOWORD(UNKNOWN_7E9C9F)
	BRA @UNKNOWN7
@UNKNOWN6:
	SEP #PROC_FLAGS::ACCUM8
	LDA $16
	STA RAM,X
	INY
	INX
@UNKNOWN7:
	SEP #PROC_FLAGS::ACCUM8
	LDA RAM,Y
	STA $16
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BEQ @UNKNOWN8
	AND #$00FF
	CMP #$003A
	BNE @UNKNOWN6
@UNKNOWN8:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$003A
	STA RAM,X
	INX
	REP #PROC_FLAGS::ACCUM8
	LDA $04
	CLC
	ADC #$0033
	TAY
	STY $14
	SEP #PROC_FLAGS::ACCUM8
	LDA RAM,Y
	CLC
	ADC #$0030
	STA RAM,X
	INX
	LDA #$003B
	STA RAM,X
	INX
	LDA #$0000
	STA RAM,X
	REP #PROC_FLAGS::ACCUM8
	PROMOTENEARPTR UNKNOWN_7E9C9F, $06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	LDX #$FFFF
	LDA CURRENT_FOCUS_WINDOW
	JSL SET_WINDOW_TITLE
	LDA $04
	CLC
	ADC #$003C
	PROMOTENEARPTRA $06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	JSL STRLEN
	STA $12
	MOVE_INT $06, $0E
	LDA $12
	DEC
	DEC
	JSR PRINT_STRING
	LDY $14
	LDA RAM,Y
	STA $14
	LDX $04
	LDA RAM+45,X
	OPTIMIZED_MULT $04, .SIZEOF(menu_option)
	TAX
	LDA MENU_OPTIONS + menu_option::previous,X
	OPTIMIZED_MULT $04, .SIZEOF(menu_option)
	TAX
	LDA $14
	CMP MENU_OPTIONS + menu_option::page,X
	BNE @UNKNOWN9
	LDA #$0031
	BRA @UNKNOWN10
@UNKNOWN9:
	CLC
	ADC #$0031
@UNKNOWN10:
	JSR PRINT_LETTER
	LDA #$003B
	JSR PRINT_LETTER
	LDA #$0099
	JSR PRINT_LETTER
	BRA @UNKNOWN12
@UNKNOWN11:
	LDA $02
	CLC
	ADC #$0013
	PROMOTENEARPTRA $06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	LDA #$FFFF
	JSR PRINT_STRING
@UNKNOWN12:
	LDX $02
	LDA RAM+2,X
	CMP #$FFFF
	BEQ @UNKNOWN13
	OPTIMIZED_MULT $04, .SIZEOF(menu_option)
	CLC
	ADC #.LOWORD(MENU_OPTIONS)
	STA $02
	JMP @UNKNOWN2
@UNKNOWN13:
	PLD
	RTS
