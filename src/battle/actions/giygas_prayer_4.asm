
BTLACT_GIYGAS_PRAYER_4: ;$C2C623
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 18
	LOADPTR MSG_EVT_PRAY_4_TONY, $0E
	LDX #MUSIC::GIYGAS_PHASE3
	LDA #ENEMY_GROUP::BOSS_GIYGAS_PHASE_AFTER_PRAYER_1
	JSR a:.LOWORD(UNKNOWN_C2C37A)
	LDA #GIYGAS_PRAYER_DAMAGE_3
	JSR a:.LOWORD(GIYGAS_HURT_PRAYER)
	LDA #GIYGAS_PHASES::PRAYER_4_USED
	STA .LOWORD(GIYGAS_PHASE)
	PLD
	RTL
