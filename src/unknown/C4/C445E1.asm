
UNKNOWN_C445E1: ;$C445E1
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 26
	TAY
	MOVE_INT $28, $0A
	LDX #$0000
	STX $18
	MOVE_INT_YPTRSRC a:.LOWORD(RAM), $06
	MOVE_INT $06, $14
	LDA .LOWORD(CURRENT_FOCUS_WINDOW)
	CMP #$FFFF
	BNE @UNKNOWN0
	JMP a:.LOWORD(@UNKNOWN14)
@UNKNOWN0:
	LDA .LOWORD(CURRENT_FOCUS_WINDOW)
	ASL
	TAX
	LDA .LOWORD(WINDOW_EXISTENCE_TABLE),X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	CLC
	ADC #.LOWORD(WINDOW_STATS_TABLE)
	TAY
	STY $12
@UNKNOWN1:
	LDA [$0A]
	AND #$00FF
	BEQ @UNKNOWN2
	AND #$00FF
	INC $0A
	BRA @UNKNOWN3
@UNKNOWN2:
	MOVE_INT $14, $06
	LDA [$06]
	AND #$00FF
	INC $06
	MOVE_INTX $06, $14
@UNKNOWN3:
	CMP #$0015
	BEQ @DICT1
	CMP #$0016
	BEQ @DICT2
	CMP #$0017
	BNE @UNKNOWN4
	JMP a:.LOWORD(@DICT3)
@UNKNOWN4:
	JMP a:.LOWORD(@UNKNOWN8)
@DICT1:
	MOVE_INT $14, $06
	LDA [$06]
	AND #$00FF
	ASL
	ASL
	PHA
	LOADPTR COMPRESSED_TEXT_PTRS, $06
	PLA
	CLC
	ADC $06
	STA $06
	DEREFERENCE_PTR_TO $06, $0A
	MOVE_INT $14, $06
	INC $06
	MOVE_INT $06, $14
	LDA [$0A]
	AND #$00FF
	INC $0A
	JMP a:.LOWORD(@UNKNOWN8)
@DICT2:
	MOVE_INT $14, $06
	LDA [$06]
	AND #$00FF
	ASL
	ASL
	PHA
	LOADPTR COMPRESSED_TEXT_PTRS+1024, $06
	PLA
	CLC
	ADC $06
	STA $06
	DEREFERENCE_PTR_TO $06, $0A
	MOVE_INT $14, $06
	INC $06
	MOVE_INT $06, $14
	LDA [$0A]
	AND #$00FF
	INC $0A
	BRA @UNKNOWN8
@DICT3:
	MOVE_INT $14, $06
	LDA [$06]
	AND #$00FF
	ASL
	ASL
	PHA
	LOADPTR COMPRESSED_TEXT_PTRS+2048, $06
	PLA
	CLC
	ADC $06
	STA $06
	DEREFERENCE_PTR_TO $06, $0A
	MOVE_INT $14, $06
	INC $06
	MOVE_INT $06, $14
	LDA [$0A]
	AND #$00FF
	INC $0A
@UNKNOWN8:
	CMP #$0050
	BEQ @UNKNOWN11
	CMP #$0020
	BCC @UNKNOWN11
	INC .LOWORD(UNKNOWN_7E9660)
	CMP #$002F
	BNE @UNKNOWN9
	LDA #$0008
	BRA @UNKNOWN10
@UNKNOWN9:
	SEC
	SBC #$0050
	AND #$007F
	STA $02
	LDY $12
	LDA a:window_stats::font,Y
	STA $10
	LOADPTR FONT_PTR_TABLE, $06
	LDA $10
	OPTIMIZED_MULT $04, 12
	CLC
	ADC $06
	STA $06
	DEREFERENCE_PTR_TO $06, $06
	LDA $02
	CLC
	ADC $06
	STA $06
	LDA [$06]
	AND #$00FF
	STA $10
	LDA .LOWORD(UNKNOWN_7E5E6D)
	AND #$00FF
	STA $02
	LDA $10
	CLC
	ADC $02
@UNKNOWN10:
	STA $02
	LDX $18
	TXA
	CLC
	ADC $02
	TAX
	STX $18
	JMP a:.LOWORD(@UNKNOWN1)
@UNKNOWN11:
	LDY $12
	LDA a:window_stats::text_x,Y
	STA $0E
	BEQ @UNKNOWN12
	LDA .LOWORD(UNKNOWN_7E9E23)
	AND #$0007
	STA $04
	LDA $0E
	DEC
	ASL
	ASL
	ASL
	CLC
	ADC $04
	STA $02
	LDX $18
	TXA
	CLC
	ADC $02
	BRA @UNKNOWN13
@UNKNOWN12:
	LDA .LOWORD(UNKNOWN_7E9E23)
	AND #$0007
	STA $02
	LDX $18
	TXA
	CLC
	ADC $02
@UNKNOWN13:
	STA $02
	LDA a:window_stats::width,Y
	ASL
	ASL
	ASL
	CMP $02
	BCS @UNKNOWN14
	JSL REDIRECT_PRINT_NEWLINE
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0001
	STA .LOWORD(UNKNOWN_7E5E75)
@UNKNOWN14:
	REP #PROC_FLAGS::ACCUM8
	PLD
	RTL
