
UNKNOWN_EF0FDB: ;$EF0FDB
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	LDA #$0001
	STA OVERWORLD_STATUS_SUPPRESSION
	STA UNKNOWN_7E5D9A
	JSL UNKNOWN_C09F3B_ENTRY2
	LDA #MUSIC::DELIVERY
	JSL CHANGE_MUSIC
	JSL UNKNOWN_C03CFD
	RTL
