
UNKNOWN_C10F40: ;$C10F40
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 18
	CMP #$FFFF
	BEQ @UNKNOWN3
	ASL
	TAX
	LDA .LOWORD(WINDOW_EXISTENCE_TABLE),X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	CLC
	ADC #.LOWORD(WINDOW_STATS_TABLE)
	TAX
	STX $10
	LDY a:.LOWORD(RAM)+53,X
	STY $0E
	LDY a:.LOWORD(RAM)+12,X
	LDA a:.LOWORD(RAM)+10,X
	JSL MULT16
	STA $02
	BRA @UNKNOWN2
@UNKNOWN0:
	LDY $0E
	LDA a:.LOWORD(RAM),Y
	BEQ @UNKNOWN1
	JSL UNKNOWN_C44E4D
@UNKNOWN1:
	LDA #$0040
	LDY $0E
	STA a:.LOWORD(RAM),Y
	INY
	INY
	STY $0E
	LDA $02
	DEC
	STA $02
@UNKNOWN2:
	LDA $02
	BNE @UNKNOWN0
	JSL UNKNOWN_C45E96
	LDX $10
	STZ a:.LOWORD(RAM)+16,X
	STZ a:.LOWORD(RAM)+14,X
@UNKNOWN3:
	PLD
	RTS