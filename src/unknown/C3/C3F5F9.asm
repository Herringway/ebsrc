
UNKNOWN_C3F5F9: ;$C3F5F9
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	TDC
	ADC #$FFE8
	TCD
	LDA #$0000
	STA $04
	LDA .LOWORD(UNKNOWN_7E9F7E)
	ASL
	STA $16
	LDA #$0000
	STA $02
	STA $14
	BRA @UNKNOWN2
@UNKNOWN0:
	LDA .LOWORD(UNKNOWN_7E9F7A)
	AND #$001F
	STA $02
	LDA .LOWORD(UNKNOWN_7E9F7C)
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC .LOWORD(UNKNOWN_7E9F84)
	CLC
	ADC $02
	STA $12
	LDA .LOWORD(UNKNOWN_7E9F86)
	STA $06
	LDA .LOWORD(UNKNOWN_7E9F88)
	STA $08
	LDA $04
	ASL
	CLC
	ADC $06
	STA $06
	STA $0E
	LDA $08
	STA $10
	LDA $12
	TAY
	LDX $16
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	JSL UNKNOWN_C08616
	LDA $04
	CLC
	ADC .LOWORD(UNKNOWN_7E9F82)
	STA $04
	LDX .LOWORD(UNKNOWN_7E9F7C)
	INX
	STX .LOWORD(UNKNOWN_7E9F7C)
	CPX #$0020
	BNE @UNKNOWN1
	STZ .LOWORD(UNKNOWN_7E9F7C)
@UNKNOWN1:
	LDA $14
	STA $02
	INC $02
	LDA $02
	STA $14
@UNKNOWN2:
	LDA $02
	CMP .LOWORD(UNKNOWN_7E9F80)
	BCC @UNKNOWN0
	PLD
	RTS