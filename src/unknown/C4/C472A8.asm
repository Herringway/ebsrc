
UNKNOWN_C472A8: ;$C472A8
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 20
	TAX
	STX $12
	LDA .LOWORD(UNKNOWN_7E1A42)
	STA $02
	ASL
	TAX
	LDY .LOWORD(UNKNOWN_30X2_TABLE_3),X
	STY $10
	TYA
	JSL UNKNOWN_C47044
	LDY $10
	TYA
	JSL UNKNOWN_C46B51
	TAY
	STY $10
	LDX $12
	BEQ @UNKNOWN0
	TYA
	JSL UNKNOWN_C46B37
	TAY
	STY $10
@UNKNOWN0:
	LDA $02
	ASL
	CLC
	ADC #$2AF6
	TAX
	LDA a:.LOWORD(RAM),X
	STA $0E
	TYA
	STA a:.LOWORD(RAM),X
	LDA $0E
	JSL UNKNOWN_C46AA3
	TAX
	STX $12
	LDY $10
	TYA
	JSL UNKNOWN_C46AA3
	STA $04
	LDX $12
	TXA
	CMP $04
	BEQ @UNKNOWN1
	LDA $02
	JSL UNKNOWN_C0A3A4_ENTRY2
@UNKNOWN1:
	PLD
	RTL