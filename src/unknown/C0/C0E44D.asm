
UNKNOWN_C0E44D: ;$C0E44D
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 16
	LDA TELEPORT_STYLE
	CMP #TELEPORT_STYLE::PSI_BETTER
	BEQ @UNKNOWN3
	LDA PAD_STATE
	STA $0E
	AND #PAD::UP
	BEQ @UNKNOWN0
	DEC UNKNOWN_7E9F69
@UNKNOWN0:
	LDA $0E
	AND #PAD::DOWN
	BEQ @UNKNOWN1
	INC UNKNOWN_7E9F69
@UNKNOWN1:
	LDA $0E
	AND #PAD::LEFT
	BEQ @UNKNOWN2
	DEC UNKNOWN_7E9F67
@UNKNOWN2:
	LDA $0E
	AND #PAD::RIGHT
	BEQ @UNKNOWN3
	INC UNKNOWN_7E9F67
@UNKNOWN3:
	PLD
	RTS
