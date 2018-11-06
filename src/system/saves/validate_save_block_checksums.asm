
VALIDATE_SAVE_BLOCK_CHECKSUMS: ;$EF07C0
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	PHA
	TDC
	ADC #$FFF0
	TCD
	PLA
	TAX
	STX $0E
	TXA
	JSR a:.LOWORD(CALC_SAVE_BLOCK_ADD_CHECKSUM)
	STA $04
	LDX $0E
	TXA
	JSR a:.LOWORD(CALC_SAVE_BLOCK_XOR_CHECKSUM)
	STA $02
	LDY #$0500
	LDX $0E
	TXA
	JSL MULT16
	STA $0A
	STZ $0C
	LDA $0A
	STA $06
	LDA $0C
	STA $08
	CLC
	LDA $06
	ADC #$601C
	STA $06
	LDA $08
	ADC #$0030
	STA $08
	CLC
	LDA $0A
	ADC #$601E
	STA $0A
	LDA $0C
	ADC #$0030
	STA $0C
	LDA [$06]
	CMP $04
	BNE @UNKNOWN0
	LDA [$0A]
	CMP $02
	BEQ @UNKNOWN1
@UNKNOWN0:
	LDA #$FFFF
	BRA @UNKNOWN2
@UNKNOWN1:
	LDA #$0000
@UNKNOWN2:
	PLD
	RTS