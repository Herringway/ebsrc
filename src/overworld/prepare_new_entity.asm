
PREPARE_NEW_ENTITY:
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	STX ENTITY_PREPARED_X_COORDINATE
	STY ENTITY_PREPARED_Y_COORDINATE
	AND #$00FF
	STA ENTITY_PREPARED_DIRECTION
	RTL
