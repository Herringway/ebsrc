
UNKNOWN_C43BB9: ;$C43BB9
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 26
	STX $18
	STA $16
	MOVE_INT $28, $06
	LDA CURRENT_FOCUS_WINDOW
	ASL
	TAX
	LDA WINDOW_EXISTENCE_TABLE,X
	CMP #$FFFF
	BEQL @UNKNOWN7
	LDA CURRENT_FOCUS_WINDOW
	CMP #$0018
	BEQ @UNKNOWN1
	LDA CURRENT_FOCUS_WINDOW
	CMP #$0019
	BEQ @UNKNOWN1
	LDA CURRENT_FOCUS_WINDOW
	CMP #$0014
	BEQ @UNKNOWN1
	LDA CURRENT_FOCUS_WINDOW
	CMP #$0024
	BEQ @UNKNOWN1
	JMP @UNKNOWN7
@UNKNOWN1:
	LDA CURRENT_FOCUS_WINDOW
	ASL
	TAX
	LDA WINDOW_EXISTENCE_TABLE,X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	CLC
	ADC #.LOWORD(WINDOW_STATS_TABLE)
	STA $02
	STA $14
	LDX $02
	LDA a:window_stats::curr_tile_attributes,X
	STA $12
	LDX $02
	LDA a:window_stats::text_x,X
	STA $10
	LDX $02
	LDA a:window_stats::text_y,X
	STA $0E
	LDA $10
	ASL
	PHA
	LDX $02
	LDY a:window_stats::width,X
	LDA $0E
	JSL MULT16
	ASL
	ASL
	LDX $02
	CLC
	ADC a:window_stats::tilemap_address,X
	PLY
	STY $02
	CLC
	ADC $02
	STA $04
	BRA @UNKNOWN5
@UNKNOWN2:
	LDX $04
	LDA RAM,X
	CMP #$0040
	BEQ @UNKNOWN6
	LDA $18
	BEQ @UNKNOWN3
	LDY $12
	LDA $14
	STA $02
	LDX $02
	LDA RAM+10,X
	TAX
	LDA $04
	JSL UNKNOWN_EF00E6
	BRA @UNKNOWN4
@UNKNOWN3:
	LDY $12
	LDA $14
	STA $02
	LDX $02
	LDA a:window_stats::width,X
	TAX
	LDA $04
	JSL UNKNOWN_EF00BB
@UNKNOWN4:
	INC $10
	INC $04
	INC $04
	INC $06
	DEC $16
@UNKNOWN5:
	LDA [$06]
	AND #$00FF
	BEQ @UNKNOWN6
	LDA $16
	BNE @UNKNOWN2
@UNKNOWN6:
	LDA $10
	LDX $14
	STX $02
	STA a:window_stats::text_x,X
	SEP #PROC_FLAGS::ACCUM8
	STZ UNKNOWN_7E9622
@UNKNOWN7:
	REP #PROC_FLAGS::ACCUM8
	PLD
	RTL
