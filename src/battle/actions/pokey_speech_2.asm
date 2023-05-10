
BTLACT_POKEY_SPEECH_2: ;$C2C516
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 20
	LDA #GIYGAS_PHASES::START_PRAYING
	STA .LOWORD(GIYGAS_PHASE)
	LDA #2*SECONDS
	JSR a:.LOWORD(WAIT)
	LDX #.LOWORD(BATTLERS_TABLE) + .SIZEOF(battler) * 9 + battler::consciousness
	STX $12
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0001
	STA a:.LOWORD(RAM),X
	JSL UNKNOWN_C2F8F9
	.A16
	DISPLAY_BATTLE_TEXT_PTR MSG_BTL_MECHPOKEY_2_TALK_2
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	LDX $12
	STA a:.LOWORD(RAM),X
	JSL UNKNOWN_C2F8F9
	.A16
	LDA #1*SECOND
	JSR a:.LOWORD(WAIT)
	LDA #ENEMY::GIYGAS_5
	JSR a:.LOWORD(UNKNOWN_C2C32C)
	LDX #MUSIC::GIYGAS_PHASE3
	LDA #$01DE
	JSR a:.LOWORD(UNKNOWN_C2C21F)
	LDA #$0001
	STA .LOWORD(UNKNOWN_7EAA92)
	PLD
	RTL
