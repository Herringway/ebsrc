
UNKNOWN_C03E25: ;$C03E25
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	PHA
	TDC
	ADC #$FFF0
	TCD
	PLA
	STA $0E
	LDX #$0000
	BRA @UNKNOWN1
@UNKNOWN0:
	INX
@UNKNOWN1:
	LDA $0E
	STA $02
	INC $02
	LDA .LOWORD(GAME_STATE)+150,X
	AND #$00FF
	CMP $02
	BNE @UNKNOWN0
	CPX #$0000
	BNE @UNKNOWN2
	LDA #$FFFF
	BRA @UNKNOWN3
@UNKNOWN2:
	DEX
	LDA .LOWORD(GAME_STATE)+150,X
	AND #$00FF
@UNKNOWN3:
	PLD
	RTS
