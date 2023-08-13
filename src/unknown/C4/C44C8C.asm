
UNKNOWN_C44C8C: ;$C44C8C
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 26
	STX $18
	STA $16
	LDA CURRENT_FOCUS_WINDOW
	CMP #$FFFF
	BEQL @UNKNOWN16
	LDA CURRENT_FOCUS_WINDOW
	ASL
	TAX
	LDA WINDOW_EXISTENCE_TABLE,X
	CMP #$FFFF
	BEQL @UNKNOWN16
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	CLC
	ADC #.LOWORD(WINDOW_STATS_TABLE)
	STA $02
	STA $14
	LDX $02
	LDA a:window_stats::text_x,X
	STA $04
	LDX $02
	LDA a:window_stats::text_y,X
	STA $12
	LDX $02
	LDA a:window_stats::curr_tile_attributes,X
	STA $10
	LDX $02
	LDA $04
	CMP a:window_stats::width,X
	BNE @UNKNOWN5
	LDA #$0000
	STA $04
	LDX $02
	LDA a:window_stats::height,X
	LSR
	DEC
	CMP $12
	BEQ @UNKNOWN2
	INC $12
	BRA @UNKNOWN4
@UNKNOWN2:
	LDA f:UNKNOWN_7EB49D
	AND #$00FF
	BNEL @UNKNOWN15
	LDA CURRENT_FOCUS_WINDOW
	JSL REDIRECT_C437B8
@UNKNOWN4:
	LDA UNKNOWN_7E5E6E
	BEQ @UNKNOWN5
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0001
	STA UNKNOWN_7E5E75
@UNKNOWN5:
	REP #PROC_FLAGS::ACCUM8
	LDA BLINKING_TRIANGLE_FLAG
	BEQ @UNKNOWN8
	LDA $04
	BNE @UNKNOWN8
	LDA $16
	CMP #$0020
	BEQ @UNKNOWN6
	LDA $16
	CMP #$0070
	BNE @UNKNOWN8
@UNKNOWN6:
	LDA BLINKING_TRIANGLE_FLAG
	CMP #$0001
	BEQL @UNKNOWN15
	CMP #$0002
	BNE @UNKNOWN8
	LDA #$0020
	STA $16
@UNKNOWN8:
	LDA $04
	ASL
	PHA
	LDX $02
	LDY a:window_stats::width,X
	LDA $12
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
	TAY
	STY $0E
	LDA RAM,Y
	BEQ @UNKNOWN9
	JSL FREE_TILE_SAFE
@UNKNOWN9:
	LDA $16
	CMP #$0022
	BNE @UNKNOWN10
	LDX #$0C00
	BRA @UNKNOWN11
@UNKNOWN10:
	LDX $10
@UNKNOWN11:
	TXA
	CLC
	ADC $16
	LDY $0E
	STA RAM,Y
	LDA $14
	STA $02
	LDX $02
	LDA a:window_stats::width,X
	ASL
	STA $02
	TYA
	CLC
	ADC $02
	TAY
	STY $16
	LDA RAM,Y
	BEQ @UNKNOWN12
	JSL FREE_TILE_SAFE
@UNKNOWN12:
	LDA $18
	CMP #$0022
	BNE @UNKNOWN13
	LDX #$0C00
	BRA @UNKNOWN14
@UNKNOWN13:
	LDX $10
@UNKNOWN14:
	TXA
	CLC
	ADC $18
	LDY $16
	STA RAM,Y
	INC $04
@UNKNOWN15:
	LDA $04
	LDX $14
	STX $02
	STA a:window_stats::text_x,X
	LDA $12
	LDX $02
	STA a:window_stats::text_y,X
@UNKNOWN16:
	PLD
	RTS
