
UNKNOWN_C05E76: ;$C05E76
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	LDA CURRENT_ENTITY_SLOT
	JSR UNKNOWN_C05E3B
	AND #$00FF
	RTL
