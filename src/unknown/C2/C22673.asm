
UNKNOWN_C22673: ;$C22673
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 16
	STA $0E
	LDA .LOWORD(UNKNOWN_7E9CD6)
	AND #$00FF
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(CHAR_STRUCT)+char_struct::equipment+EQUIPMENT_SLOT::WEAPON,X
	STA .LOWORD(UNKNOWN_7E9CD0)
	LDA .LOWORD(CHAR_STRUCT)+char_struct::equipment+EQUIPMENT_SLOT::BODY,X
	STA .LOWORD(UNKNOWN_7E9CD1)
	LDA .LOWORD(CHAR_STRUCT)+char_struct::equipment+EQUIPMENT_SLOT::ARMS,X
	STA .LOWORD(UNKNOWN_7E9CD2)
	REP #PROC_FLAGS::ACCUM8
	LDA $0E
	CMP #$FFFF
	BNE @UNKNOWN0
	LDX #$0000
	BRA @UNKNOWN1
@UNKNOWN0:
	TAX
@UNKNOWN1:
	TXA
	SEP #PROC_FLAGS::ACCUM8
	STA .LOWORD(UNKNOWN_7E9CD3)
	REP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(UNKNOWN_7E9CD6)
	AND #$00FF
	JSL UNKNOWN_C1A1D8
	PLD
	RTL
