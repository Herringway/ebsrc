
UNKNOWN_C44E61: ;$C44E61
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 30
	TXY
	STY $1C
	STA $02
	LDA CURRENT_FOCUS_WINDOW
	CMP #$FFFF
	BEQL @UNKNOWN9
	CPY #$002F
	BEQ @UNKNOWN1
	CPY #$0022
	BEQ @UNKNOWN1
	CPY #$0020
	BNE @UNKNOWN2
@UNKNOWN1:
	TYA
	JSL UNKNOWN_C43F77
	JSL UNKNOWN_C43CAA
	JMP @UNKNOWN9
@UNKNOWN2:
	LDA CURRENT_FOCUS_WINDOW
	ASL
	TAX
	LDA WINDOW_EXISTENCE_TABLE,X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	CLC
	ADC #.LOWORD(WINDOW_STATS_TABLE)
	TAX
	LDY $1C
	CPY #$0050
	BNE @UNKNOWN4
	LDA UNKNOWN_7E5E75
	AND #$00FF
	BNEL @UNKNOWN9
	BRA @UNKNOWN6
@UNKNOWN4:
	LDA UNKNOWN_7E5E75
	AND #$00FF
	BEQ @UNKNOWN6
	STZ a:window_stats::text_x,X
	CPY #$0070
	BEQ @UNKNOWN5
	LDA a:window_stats::text_y,X
	TAX
	LDA #$0006
	JSL UNKNOWN_C43D75
@UNKNOWN5:
	SEP #PROC_FLAGS::ACCUM8
	STZ UNKNOWN_7E5E75
@UNKNOWN6:
	LDY $1C
	REP #PROC_FLAGS::ACCUM8
	TYA
	SEP #PROC_FLAGS::ACCUM8
	STA UNKNOWN_7E5E76
	REP #PROC_FLAGS::ACCUM8
	TYA
	SEC
	SBC #$0050
	AND #$007F
	STA $1A
	LOADPTR FONT_PTR_TABLE, $0A
	LDA $02
	OPTIMIZED_MULT $04, .SIZEOF(font_table_entry)
	TAY
	STY $18
	TYA
	CLC
	ADC #font_table_entry::height
	MOVE_INTX $0A, $06
	CLC
	ADC $06
	STA $06
	LDA [$06]
	TAX
	TYA
	INC
	INC
	INC
	INC
	MOVE_INTY $0A, $06
	CLC
	ADC $06
	STA $06
	DEREFERENCE_PTR_TO $06, $06
	LDA $1A
	TAY
	TXA
	JSL MULT16
	CLC
	ADC $06
	STA $06
	STA $14
	LDA $08
	STA $16
	LDY $18
	TYA
	CLC
	ADC #font_table_entry::width
	MOVE_INTX $0A, $06
	CLC
	ADC $06
	STA $06
	LDA [$06]
	STA $02
	TYA
	CLC
	ADC $0A
	STA $0A
	DEREFERENCE_PTR_TO $0A, $0A
	LDA $1A
	CLC
	ADC $0A
	STA $0A
	LDA [$0A]
	AND #$00FF
	STA $1A
	LDA UNKNOWN_7E5E6D
	AND #$00FF
	STA $04
	LDA $1A
	CLC
	ADC $04
	TAY
	STY $12
	CPY #$0008
	BLTEQ @UNKNOWN8
@UNKNOWN7:
	MOVE_INT $14, $06
	MOVE_INT $06, $0E
	LDX $02
	LDA #$0008
	JSL UNKNOWN_C44B3A
	LDY $12
	TYA
	SEC
	SBC #$0008
	TAY
	STY $12
	LDA $02
	CLC
	ADC $06
	STA $06
	STA $14
	LDA $08
	STA $16
	CPY #$0008
	BGT @UNKNOWN7
@UNKNOWN8:
	MOVE_INT $14, $06
	MOVE_INT $06, $0E
	LDX $02
	TYA
	JSL UNKNOWN_C44B3A
	JSL UNKNOWN_C44DCA
@UNKNOWN9:
	PLD
	RTL
