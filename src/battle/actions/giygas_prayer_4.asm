
BTLACT_GIYGAS_PRAYER_4:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	END_STACK_VARS
	LOADPTR MSG_EVT_PRAY_4_TONY, @LOCAL00
	LDX #MUSIC::GIYGAS_PHASE3
	LDA #ENEMY_GROUP::BOSS_GIYGAS_PHASE_AFTER_PRAYER_1
	JSR UNKNOWN_C2C37A
	LDA #GIYGAS_PRAYER_DAMAGE_3
	JSR GIYGAS_HURT_PRAYER
	LDA #GIYGAS_PHASES::PRAYER_4_USED
	STA GIYGAS_PHASE
	END_C_FUNCTION
