
MOVEMENT_CODE_37: ;$C098CA
	LDA [$80],Y
	AND #$00FF
	ASL
	TAX
	INY
	LDA [$80],Y
	CLC
	ADC .LOWORD(UNKNOWN_7E1A02),X
	STA .LOWORD(UNKNOWN_7E1A02),X
	INY
	INY
	RTS