
UNKNOWN_C117E2: ;$C117E2
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 16
	TXY
	TAX
	LDA #$0000
	STA $0E
	BRA @UNKNOWN1
@UNKNOWN0:
	LDA $0E
	INC
	STA $0E
	DEY
	INX
@UNKNOWN1:
	LDA a:.LOWORD(RAM),X
	AND #$00FF
	BEQ @UNKNOWN2
	CPY #$0000
	BNE @UNKNOWN0
@UNKNOWN2:
	LDA $0E
	PLD
	RTS