
BTLACT_GIYGAS_PRAYER_7:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	END_STACK_VARS
	LOADPTR MSG_EVT_PRAY_1_NES_MAMA, @LOCAL00
	LDX #MUSIC::GIYGAS_PHASE3
	LDA #ENEMY_GROUP::BOSS_GIYGAS_PHASE_AFTER_PRAYER_1
	JSR UNKNOWN_C2C37A
	LDA #GIYGAS_PRAYER_DAMAGE_6
	JSR GIYGAS_HURT_PRAYER
	LDA #GIYGAS_PHASES::PRAYER_7_USED
	STA GIYGAS_PHASE
	LDX #MUSIC::GIYGAS_WEAKENED2
	LDA #ENEMY_GROUP::BOSS_GIYGAS_PHASE_AFTER_PRAYER_7
	JSR UNKNOWN_C2C21F
	END_C_FUNCTION
