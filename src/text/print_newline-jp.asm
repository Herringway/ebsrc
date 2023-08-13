
PRINT_NEWLINE: ;$C438B1
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 18
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
	LDA RAM+21,Y
	BEQ @UNKNOWN0
	JSL UNKNOWN_C45E96
@UNKNOWN0:
	LDY $10
	TYA
	CLC
	ADC #$0010
	TAX
	LDA RAM,X
	STA $0E
	LDA RAM+12,Y
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
	JSR UNKNOWN_C437B8
@UNKNOWN2:
	LDY $10
	TYX
	STZ RAM+14,X
	PLD
	RTS
