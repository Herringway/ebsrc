
UNKNOWN_C1AD42: ;$C1AD42
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 14
	JSL FIND_NEARBY_CHECKABLE_TPT_ENTRY
	LDA .LOWORD(CURRENT_TPT_ENTRY)
	BEQ @UNKNOWN0
	LDA .LOWORD(CURRENT_TPT_ENTRY)
	CMP #$FFFF
	BEQ @UNKNOWN0
	LDA .LOWORD(CURRENT_TPT_ENTRY)
	CMP #$FFFE
	BNE @UNKNOWN1
@UNKNOWN0:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	BRA @UNKNOWN2
@UNKNOWN1:
	LDA .LOWORD(CURRENT_TPT_ENTRY)
	OPTIMIZED_MULT $04, 17
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA f:NPC_CONFIG_TABLE,X
@UNKNOWN2:
	PLD
	RTS