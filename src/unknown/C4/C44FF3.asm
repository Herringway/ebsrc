
UNKNOWN_C44FF3: ;$C44FF3
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 22
	STX $04
	STX $14
	STA $02
	STA $12
	MOVE_INT $24, $06
	LDY #$0000
	STY $10
	TYX
	BRA @UNKNOWN1
@UNKNOWN0:
	LDA [$06]
	AND #$00FF
	INC $06
	SEC
	SBC #$0050
	AND #$007F
	STA $0E
	LDA UNKNOWN_7E5E6D
	AND #$00FF
	STA $02
	LOADPTR FONT_PTR_TABLE, $0A
	LDA $14
	STA $04
	OPTIMIZED_MULT $04, 12
	CLC
	ADC $0A
	STA $0A
	DEREFERENCE_PTR_TO $0A, $0A
	LDA $0E
	CLC
	ADC $0A
	STA $0A
	LDA [$0A]
	AND #$00FF
	CLC
	ADC $02
	STA $02
	LDY $10
	TYA
	CLC
	ADC $02
	TAY
	STY $10
	INX
@UNKNOWN1:
	LDA $12
	STA $02
	TXA
	CMP $02
	BCC @UNKNOWN0
	TYA
	PLD
	RTL
