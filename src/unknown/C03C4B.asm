
UNKNOWN_C03C4B: ;$C03C4B
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	LDY #$000C
	LDX .LOWORD(GAME_STATE)+game_state::leader_y_coord
	LDA .LOWORD(GAME_STATE)+game_state::leader_x_coord
	JSL UNKNOWN_C05D8B
	AND #$00C0
	RTL