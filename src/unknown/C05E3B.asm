
UNKNOWN_C05E3B: ;$C05E3B
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	PHA
	TDC
	ADC #$FFEE
	TCD
	PLA
	STA $10
	JSL UNKNOWN_C09EFF
	TAX
	BNE @UNKNOWN0
	LDA #$FF00
	BRA @UNKNOWN1
@UNKNOWN0:
	LDA $10
	ASL
	STA $02
	LDX $02
	LDA .LOWORD(UNKNOWN_30X2_TABLE_34),X
	STA $0E
	LDA $10
	TAY
	LDX .LOWORD(UNKNOWN_7E284A)
	LDA .LOWORD(UNKNOWN_7E2848)
	JSL UNKNOWN_C05CD7
	AND #$00D0
	LDX $02
	STA .LOWORD(UNKNOWN_30X2_TABLE_25),X
@UNKNOWN1:
	PLD
	RTS
