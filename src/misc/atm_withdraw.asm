
WITHDRAW_FROM_ATM: ;$C228B7
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 14
	MOVE_INT $1C, $0A
	LDY #.LOWORD(GAME_STATE) + game_state::bank_balance
	MOVE_INT_YPTRSRC RAM, $06
	CLC
	LDA $0A
	SBC $06
	LDA $0C
	SBC $08
	BCS WITHDRAW_FROM_ATM_INSUFFICIENT_FUNDS
	SEC
	SUB_INT_ASSIGN $06, $0A
	MOVE_INT_YPTRDEST $06, RAM
WITHDRAW_FROM_ATM_INSUFFICIENT_FUNDS:
	PLD
	RTL
