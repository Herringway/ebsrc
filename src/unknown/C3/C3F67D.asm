
UNKNOWN_C3F67D: ;$C3F67D
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	TDC
	ADC #$FFEC
	TCD
	LDA .LOWORD(UNKNOWN_7E9F80)
	ASL
	STA $04
	LDA #$0000
	STA $02
	BRA @UNKNOWN3
@UNKNOWN0:
	LDA .LOWORD(UNKNOWN_7E9F7C)
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC .LOWORD(UNKNOWN_7E9F84)
	CLC
	ADC .LOWORD(UNKNOWN_7E9F7A)
	STA $12
	INC .LOWORD(UNKNOWN_7E9F7A)
	LDA .LOWORD(UNKNOWN_7E9F86)
	STA $06
	LDA .LOWORD(UNKNOWN_7E9F88)
	STA $08
	LDA $06
	STA $0E
	LDA $08
	STA $10
	LDA $12
	TAY
	LDX $04
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	JSL PREPARE_VRAM_COPY
	.A16
	LDA .LOWORD(UNKNOWN_7E9F86)
	STA $06
	LDA .LOWORD(UNKNOWN_7E9F88)
	STA $08
	LDA .LOWORD(UNKNOWN_7E9F82)
	ASL
	CLC
	ADC $06
	STA $06
	STA .LOWORD(UNKNOWN_7E9F86)
	LDA $08
	STA .LOWORD(UNKNOWN_7E9F88)
	LDA .LOWORD(UNKNOWN_7E9F7A)
	CMP #$0020
	BEQ @UNKNOWN1
	LDA .LOWORD(UNKNOWN_7E9F7A)
	CMP #$0040
	BNE @UNKNOWN2
@UNKNOWN1:
	LDA .LOWORD(UNKNOWN_7E9F84)
	EOR #$0400
	STA .LOWORD(UNKNOWN_7E9F84)
@UNKNOWN2:
	INC $02
@UNKNOWN3:
	LDA $02
	CMP .LOWORD(UNKNOWN_7E9F7E)
	BCC @UNKNOWN0
	PLD
	RTS
