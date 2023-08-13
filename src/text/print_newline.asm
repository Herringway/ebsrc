
PRINT_NEWLINE: ;$C438B1
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 18
	LDA CURRENT_FOCUS_WINDOW
	CMP #$FFFF
	BEQ @UNKNOWN3
	LDA CURRENT_FOCUS_WINDOW
	ASL
	TAX
	LDA WINDOW_EXISTENCE_TABLE,X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	CLC
	ADC #.LOWORD(WINDOW_STATS_TABLE)
	TAY
	STY $10
	JSL UNKNOWN_C45E96
	LDY $10
	LDA a:window_stats::font,Y
	BEQ @UNKNOWN0
	JSL UNKNOWN_C45E96
@UNKNOWN0:
	LDY $10
	TYA
	CLC
	ADC #window_stats::text_y
	TAX
	LDA RAM,X
	STA $0E
	LDA a:window_stats::height,Y
	LSR
	DEC
	STA $02
	LDA $0E
	CMP $02
	BEQ @UNKNOWN1
	INC
	STA RAM,X
	BRA @UNKNOWN2
@UNKNOWN1:
	LDA CURRENT_FOCUS_WINDOW
	JSL UNKNOWN_C437B8
@UNKNOWN2:
	LDY $10
	TYX
	STZ a:window_stats::text_x,X
@UNKNOWN3:
	PLD
	RTL
