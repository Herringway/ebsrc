
UNKNOWN_C2307B:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	END_STACK_VARS
	LDX #.LOWORD(GAME_STATE) + game_state::party_npc_1
	STX @LOCAL01
	LDA __BSS_START__,X
	AND #$00FF
	JSL REMOVE_CHAR_FROM_PARTY
	LDY #.LOWORD(GAME_STATE) + game_state::party_npc_2
	STY @LOCAL00
	LDA __BSS_START__,Y
	AND #$00FF
	JSL REMOVE_CHAR_FROM_PARTY
	LDA GAME_STATE+game_state::party_npc_1_id_copy
	AND #$00FF
	BEQ @UNKNOWN0
	LDX @LOCAL01
	SEP #PROC_FLAGS::ACCUM8
	STA __BSS_START__,X
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	JSL ADD_CHAR_TO_PARTY
	LDA GAME_STATE + game_state::party_npc_1_hp_copy
	STA GAME_STATE+game_state::party_npc_1_hp
	LDA GAME_STATE + game_state::party_npc_2_id_copy
	AND #$00FF
	BEQ @UNKNOWN0
	LDY @LOCAL00
	SEP #PROC_FLAGS::ACCUM8
	STA __BSS_START__,Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	JSL ADD_CHAR_TO_PARTY
	LDA GAME_STATE + game_state::party_npc_2_hp_copy
	STA GAME_STATE+game_state::party_npc_2_hp
@UNKNOWN0:
	MOVE_INT GAME_STATE+game_state::wallet_backup, @VIRTUAL06
	MOVE_INT @VIRTUAL06, GAME_STATE+game_state::money_carried
	END_C_FUNCTION
