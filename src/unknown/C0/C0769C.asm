
UNKNOWN_C0769C: ;$C0769C
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 16
	SEP #PROC_FLAGS::ACCUM8
	STZ GAME_STATE + game_state::party_status
	REP #PROC_FLAGS::ACCUM8
	LDA #$0018
	STA $0E
	BRA @UNKNOWN1
@UNKNOWN0:
	ASL
	TAX
	LDA #$0008
	STA ENTITY_SCRIPT_VAR3_TABLE,X
	LDA $0E
	INC
	STA $0E
@UNKNOWN1:
	CMP #$001D
	BLTEQ @UNKNOWN0
	PLD
	RTL
