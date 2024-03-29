
LOAD_REPLAY_SAVE_SLOT:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	END_STACK_VARS
	JSL TEST_SRAM_SIZE
	CMP #0
	BEQL @INSUFFICIENT_SRAM
	LOADPTR UNKNOWN_316000, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL02
	LOADPTR __BSS_START__ & $FF0000, @VIRTUAL0A
	LDA #.LOWORD(GAME_STATE)
	STORE_INT1632 @VIRTUAL06
	CLC
	ADD_INT_ASSIGN @VIRTUAL06, @VIRTUAL0A
	MOVE_INT @VIRTUAL06, @LOCAL00
	MOVE_INT @LOCAL02, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL01
	LDA #.SIZEOF(save_block::game_state)
	JSL MEMCPY24
	LOADPTR UNKNOWN_3161D9, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL02
	LDA #.LOWORD(PARTY_CHARACTERS)
	STORE_INT1632 @VIRTUAL06
	CLC
	ADD_INT_ASSIGN @VIRTUAL06, @VIRTUAL0A
	MOVE_INT @VIRTUAL06, @LOCAL00
	MOVE_INT @LOCAL02, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL01
	LDA #.SIZEOF(save_block::party_characters)
	JSL MEMCPY24
	LOADPTR UNKNOWN_316413, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL02
	LDA #.LOWORD(EVENT_FLAGS)
	STORE_INT1632 @VIRTUAL06
	CLC
	ADD_INT_ASSIGN @VIRTUAL06, @VIRTUAL0A
	MOVE_INT @VIRTUAL06, @LOCAL00
	MOVE_INT @LOCAL02, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL01
	LDA #.SIZEOF(save_block::event_flags)
	JSL MEMCPY24
	LOADPTR UNKNOWN_316493, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL02
	MOVE_INT @VIRTUAL0A, @VIRTUAL06
	LDA #167
	STORE_INT1632 @VIRTUAL0A
	CLC
	ADD_INT_ASSIGN @VIRTUAL0A, @VIRTUAL06
	MOVE_INT @VIRTUAL0A, @LOCAL00
	MOVE_INT @LOCAL02, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL01
	LDA #4
	JSL MEMCPY24
	SEP #PROC_FLAGS::ACCUM8
	LDA FRAME_COUNTER_BACKUP
	STA FRAME_COUNTER
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT RAND_A_BACKUP, RAND_A
	JSL UNKNOWN_C083B8
	LOADPTR UNKNOWN_326000, @LOCAL00
	JSL UNKNOWN_C083E3
@INSUFFICIENT_SRAM:
	END_C_FUNCTION
