
UNKNOWN_C0F41E: ;$C0F41E
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 36
	LDA BG3_Y_POS
	CMP UNKNOWN_7EB4E3
	BCS @UNKNOWN1
	JMP @UNKNOWN37
@UNKNOWN1:
	LDA UNKNOWN_7EB4F7
	STA $22
	LDA UNKNOWN_7EB4F7
	INC
	STA $20
	LDA UNKNOWN_7EB4F7
	INC
	INC
	AND #$000F
	STA UNKNOWN_7EB4F7
	LDA BG3_Y_POS
	LSR
	LSR
	LSR
	CLC
	ADC #$001D
	AND #$001F
	STA $1E
	LDA #$0000
	STA $04
	MOVE_INT UNKNOWN_7EB4E7, $06
	MOVE_INT $06, $1A
	LDA $22
	ASL
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC #.LOWORD(BG2_BUFFER)
	PROMOTENEARPTRA $06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $16
	LDA $20
	ASL
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC #.LOWORD(BG2_BUFFER)
	PROMOTENEARPTRA $0A
	REP #PROC_FLAGS::ACCUM8
	LDA [$1A]
	AND #$00FF
	STA $14
	MOVE_INT $1A, $06
	INC $06
	MOVE_INT $06, $1A
	LDA $14
	CMP #$0001
	BEQ @UNKNOWN6
	CMP #$0002
	BEQL @UNKNOWN9
	CMP #$0003
	BEQL @UNKNOWN14
	CMP #$0004
	BEQL @UNKNOWN15
	CMP #$00FF
	BEQL @UNKNOWN35
	JMP @UNKNOWN36
@UNKNOWN6:
	LDA UNKNOWN_7EB4E3
	CLC
	ADC #$0008
	STA UNKNOWN_7EB4E3
	BRA @UNKNOWN8
@UNKNOWN7:
	AND #$00FF
	CLC
	ADC #$2000
	MOVE_INTX $16, $06
	STA [$06]
	MOVE_INT $1A, $06
	INC $06
	MOVE_INT $06, $1A
	MOVE_INT $16, $06
	INC $06
	INC $06
	MOVE_INT $06, $16
	INC $04
@UNKNOWN8:
	LDA [$1A]
	AND #$00FF
	BNE @UNKNOWN7
	LDA $04
	LSR
	STA $02
	LDA $1E
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC #$6C10
	SEC
	SBC $02
	STA $14
	LDA $22
	ASL
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC #.LOWORD(BG2_BUFFER)
	PROMOTENEARPTRA $06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	LDA $14
	TAY
	LDA $04
	ASL
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	JSL UNKNOWN_C4EFC4
	JMP @UNKNOWN36
@UNKNOWN9:
	.A16
	LDA UNKNOWN_7EB4E3
	CLC
	ADC #$0010
	STA UNKNOWN_7EB4E3
	BRA @UNKNOWN11
@UNKNOWN10:
	AND #$00FF
	CLC
	ADC #$2400
	MOVE_INTX $16, $06
	STA [$06]
	INC $06
	INC $06
	MOVE_INT $06, $16
	LDA [$1A]
	AND #$00FF
	CLC
	ADC #$2410
	STA [$0A]
	MOVE_INT $1A, $06
	INC $06
	MOVE_INT $06, $1A
	INC $0A
	INC $0A
	INC $04
@UNKNOWN11:
	LDA [$1A]
	AND #$00FF
	BNE @UNKNOWN10
	LDA $04
	LSR
	STA $02
	LDA $1E
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC #$6C10
	SEC
	SBC $02
	STA $02
	LDA $22
	ASL
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC #.LOWORD(BG2_BUFFER)
	PROMOTENEARPTRA $06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	LDY $02
	LDA $04
	ASL
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	JSL UNKNOWN_C4EFC4
	LDA $1E
	.A16
	CMP #$001F
	BEQ @UNKNOWN12
	LDA $02
	CLC
	ADC #$0020
	STA $12
	BRA @UNKNOWN13
@UNKNOWN12:
	LDA $02
	SEC
	SBC #$03E0
	STA $12
@UNKNOWN13:
	LDA $20
	ASL
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC #.LOWORD(BG2_BUFFER)
	PROMOTENEARPTRA $06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	LDA $12
	TAY
	LDA $04
	ASL
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	JSL UNKNOWN_C4EFC4
	JMP @UNKNOWN36
@UNKNOWN14:
	.A16
	LDA [$1A]
	AND #$00FF
	ASL
	ASL
	ASL
	CLC
	ADC UNKNOWN_7EB4E3
	STA UNKNOWN_7EB4E3
	JMP @UNKNOWN36
@UNKNOWN15:
	LDX #.LOWORD(GAME_STATE) + game_state::earthbound_playername
	LDA RAM,X
	AND #$00FF
	BEQL @UNKNOWN34
	LDA UNKNOWN_7EB4E3
	CLC
	ADC #$0010
	STA UNKNOWN_7EB4E3
	LDY #$0000
	BRA @UNKNOWN30
@UNKNOWN29:
	AND #$00FF
	STA $02
	AND #$00F0
	CLC
	ADC $02
	CLC
	ADC #$2400
	PHA
	MOVE_INT $16, $06
	PLA
	STA [$06]
	INC $06
	INC $06
	MOVE_INT $06, $16
	LDA RAM,X
	AND #$00FF
	STA $02
	AND #$00F0
	CLC
	ADC $02
	CLC
	ADC #$2410
	STA [$0A]
	INC $0A
	INC $0A
	INX
	INC $04
	INY
@UNKNOWN30:
	LDA RAM,X
	AND #$00FF
	BEQ @UNKNOWN31
	CPY #$0018
	BCC @UNKNOWN29
@UNKNOWN31:
	LDA $04
	LSR
	STA $02
	LDA $1E
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC #$6C10
	SEC
	SBC $02
	STA $02
	LDA $22
	ASL
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC #.LOWORD(BG2_BUFFER)
	PROMOTENEARPTRA $06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	LDY $02
	LDA $04
	ASL
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	JSL UNKNOWN_C4EFC4
	.A16
	LDA $1E
	CMP #$001F
	BEQ @UNKNOWN32
	LDA $02
	CLC
	ADC #$0020
	STA $12
	BRA @UNKNOWN33
@UNKNOWN32:
	.A16
	LDA $02
	SEC
	SBC #$03E0
	STA $12
@UNKNOWN33:
	LDA $20
	ASL
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC #.LOWORD(BG2_BUFFER)
	PROMOTENEARPTRA $06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	LDA $12
	TAY
	LDA $04
	ASL
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	JSL UNKNOWN_C4EFC4
@UNKNOWN34:
	MOVE_INT $1A, $06
	DEC $06
	MOVE_INT $06, $1A
	BRA @UNKNOWN36
@UNKNOWN35:
	.A16
	LDA #$FFFF
	STA UNKNOWN_7EB4E3
@UNKNOWN36:
	MOVE_INT $1A, $06
	INC $06
	MOVE_INT $06, UNKNOWN_7EB4E7
@UNKNOWN37:
	LDA UNKNOWN_7EB4E5
	CMP BG3_Y_POS
	BCS @UNKNOWN38
	LDA UNKNOWN_7EB4E5
	CLC
	ADC #$0008
	STA UNKNOWN_7EB4E5
	LOADPTR UNKNOWN_C40BE8, $0E
	LDA BG3_Y_POS
	LSR
	LSR
	LSR
	DEC
	AND #$001F
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC #$6C00
	TAY
	LDX #$0040
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0003
	JSL UNKNOWN_C4EFC4
@UNKNOWN38:
	.A16
	MOVE_INT UNKNOWN_7EB4EB, $06
	CLC
	LDA $06
	ADC #$4000
	STA $06
	BCC @UNKNOWN39
	INC $08
@UNKNOWN39:
	MOVE_INT $06, UNKNOWN_7EB4EB
	STA BG3_Y_POS
	JSR UNKNOWN_C0AD9F
	PLD
	RTS
