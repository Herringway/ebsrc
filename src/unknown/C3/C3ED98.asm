
UNKNOWN_C3ED98: ;$C3ED98
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 18
	STX $02
	TAX
	BEQ @UNKNOWN1
	TXA
	DEC
	STA $10
	CPY #$0000
	BNE @UNKNOWN0
	MOVE_INT1632 $02, $0A
	LDA $10
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA CHAR_STRUCT+char_struct::max_pp,X
	STORE_INT1632 $06
	JSL MULT32
	MOVE_INT_CONSTANT 100, $0A
	JSL DIVISION32
	LDA $06
	STA $02
@UNKNOWN0:
	LDA $10
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	STA $10
	CLC
	ADC #.LOWORD(CHAR_STRUCT) + char_struct::current_pp_target
	TAY
	LDA RAM,Y
	CLC
	ADC $02
	TAX
	STX $0E
	TXA
	STA RAM,Y
	LDA $10
	TAX
	LDA CHAR_STRUCT+char_struct::max_pp,X
	STA $10
	STA $02
	LDX $0E
	TXA
	CMP $02
	BLTEQ @UNKNOWN1
	LDA $10
	STA RAM,Y
@UNKNOWN1:
	PLD
	RTL
