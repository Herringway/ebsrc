
UNKNOWN_C1EC8F: ;$C1EC8F
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 18
	STA $10
	LDX #.LOWORD(GAME_STATE)+game_state::text_flavour
	STX $0E
	SEP #PROC_FLAGS::ACCUM8
	LDA RAM,X
	STA $00
	REP #PROC_FLAGS::ACCUM8
	LDA $10
	SEP #PROC_FLAGS::ACCUM8
	STA RAM,X
	JSL LOAD_WINDOW_GFX
	LDA #$0002
	BRK
	JSL UNKNOWN_C44963
	JSL UNKNOWN_C47F87
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0018
	STA UNKNOWN_7E0030
	LDA $00
	LDX $0E
	STA RAM,X
	REP #PROC_FLAGS::ACCUM8
	PLD
	RTL
