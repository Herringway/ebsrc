
INTEGER_TO_BINARY_DEBUG_TILES: ;$EFDC69
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 20
	TAY
	STY $12
	LDA #$0010
	JSL SBRK
	STA $02
	LDX #$0000
	STX $10
	BRA @UNKNOWN3
@UNKNOWN0:
	LDY $12
	TYA
	AND #$0080
	BEQ @UNKNOWN1
	LDA #$2031
	STA $0E
	BRA @UNKNOWN2
@UNKNOWN1:
	LDA #$2030
	STA $0E
@UNKNOWN2:
	TXA
	ASL
	STA $04
	LDA $02
	CLC
	ADC $04
	TAX
	LDA $0E
	STA a:.LOWORD(RAM),X
	TYA
	ASL
	TAY
	STY $12
	LDX $10
	INX
	STX $10
@UNKNOWN3:
	CPX #$0008
	BCC @UNKNOWN0
	LDA $02
	PLD
	RTS
