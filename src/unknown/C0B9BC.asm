
UNKNOWN_C0B9BC: ;$C0B9BC
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	PHA
	TDC
	ADC #$FFE8
	TCD
	PLA
	STY $16
	STX $14
	STA $12
	LDX $26
	STX $04
	LDA #$0000
	STA $02
	BRA @UNKNOWN1
@UNKNOWN0:
	LDA $02
	ASL
	TAX
	LDA .LOWORD(GAME_STATE)+162,X
	ASL
	TAY
	LDA .LOWORD(UNKNOWN_30X2_TABLE_36),Y
	STA $10
	LDA $02
	ASL
	ASL
	CLC
	ADC $12
	TAX
	STX $0E
	LDA $10
	ASL
	STA $10
	TAX
	LDA .LOWORD(SPRITE_ABS_X_TABLE),Y
	SEC
	SBC f:UNKNOWN_C42A1F,X
	LSR
	LSR
	LSR
	SEC
	SBC $16
	AND #$003F
	LDX $0E
	STA a:.LOWORD(UNKNOWN_7E007E),X
	LDA $10
	PHA
	TAX
	LDA .LOWORD(SPRITE_ABS_Y_TABLE),Y
	SEC
	SBC f:UNKNOWN_C42A41,X
	PLX
	CLC
	ADC f:UNKNOWN_C42AEB,X
	LSR
	LSR
	LSR
	SEC
	SBC $04
	AND #$003F
	LDX $0E
	STA a:.LOWORD(RAM)+124,X
	INC $02
@UNKNOWN1:
	LDA $02
	CMP $14
	BCC @UNKNOWN0
	PLD
	RTS
