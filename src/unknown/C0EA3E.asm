
UNKNOWN_C0EA3E: ;$C0EA3E
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	TDC
	ADC #$FFF0
	TCD
	LDA #$0000
	STA $0E
	BRA @UNKNOWN1
@UNKNOWN0:
	ASL
	CLC
	ADC #$10B6
	TAX
	LDA a:.LOWORD(RAM),X
	ORA #$C000
	STA a:.LOWORD(RAM),X
	LDA $0E
	INC
	STA $0E
@UNKNOWN1:
	CMP #$0017
	BCC @UNKNOWN0
	PLD
	RTS