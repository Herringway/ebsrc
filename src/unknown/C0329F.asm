
UNKNOWN_C0329F: ;$C0329F
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	PHA
	TDC
	ADC #$FFEE
	TCD
	PLA
	TAX
	STX $10
	TXA
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	SEP #PROC_FLAGS::ACCUM8
	STZ .LOWORD(CHAR_STRUCT)+char_struct::afflictions,X
	REP #PROC_FLAGS::ACCUM8
	LDA #$0001
	STA $0E
	BRA @UNKNOWN1
@UNKNOWN0:
	STA $02
	LDX $10
	TXA
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)+char_struct::afflictions
	CLC
	ADC $02
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	STA a:.LOWORD(RAM),X
	REP #PROC_FLAGS::ACCUM8
	LDA $0E
	INC
	STA $0E
@UNKNOWN1:
	CMP #$0007
	BCC @UNKNOWN0
	PLD
	RTL
