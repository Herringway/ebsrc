
UNKNOWN_C2260D: ;$C2260D
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 18
	STA $10
	LDA UNKNOWN_7E9CD6
	AND #$00FF
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA CHAR_STRUCT+char_struct::equipment+EQUIPMENT_SLOT::WEAPON,X
	STA UNKNOWN_7E9CD0
	LDA CHAR_STRUCT+char_struct::equipment+EQUIPMENT_SLOT::BODY,X
	STA UNKNOWN_7E9CD1
	REP #PROC_FLAGS::ACCUM8
	LDA $10
	CMP #$FFFF
	BNE @UNKNOWN0
	LDX #$0000
	BRA @UNKNOWN1
@UNKNOWN0:
	TAX
@UNKNOWN1:
	TXA
	SEP #PROC_FLAGS::ACCUM8
	STA UNKNOWN_7E9CD2
	REP #PROC_FLAGS::ACCUM8
	LDA UNKNOWN_7E9CD6
	AND #$00FF
	TAX
	STX $0E
	TXA
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA CHAR_STRUCT+char_struct::equipment+EQUIPMENT_SLOT::OTHER,X
	STA UNKNOWN_7E9CD3
	LDX $0E
	REP #PROC_FLAGS::ACCUM8
	TXA
	JSL UNKNOWN_C1A1D8
	PLD
	RTL
