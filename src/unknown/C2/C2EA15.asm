
UNKNOWN_C2EA15: ;$C2EA15
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 16
	TAY
	STY $0E
	TYA
	SEP #PROC_FLAGS::ACCUM8
	STA .LOWORD(UNKNOWN_7EAEEF)
	LDX #$0000
	REP #PROC_FLAGS::ACCUM8
	TXA
	JSL UNKNOWN_C4A67E
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0013
	STA .LOWORD(UNKNOWN_7EAEC8)
	LDY $0E
	REP #PROC_FLAGS::ACCUM8
	TYA
	CMP #$0002
	BEQ @UNKNOWN0
	CMP #$0001
	BEQ @UNKNOWN1
	BRA @UNKNOWN2
@UNKNOWN0:
	MOVE_INT_CONSTANT UNKNOWN_C3F819, .LOWORD(UNKNOWN_7EAECC)
	BRA @UNKNOWN3
@UNKNOWN1:
	MOVE_INT_CONSTANT UNKNOWN_C4A5FA, .LOWORD(UNKNOWN_7EAECC)
	BRA @UNKNOWN3
@UNKNOWN2:
	MOVE_INT_CONSTANT UNKNOWN_C4A5CE, .LOWORD(UNKNOWN_7EAECC)
@UNKNOWN3:
	PLD
	RTL