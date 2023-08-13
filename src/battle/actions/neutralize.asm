
BTLACT_NEUTRALIZE: ;$C29051
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 18
	LDX CURRENT_TARGET
	LDA a:battler::base_offense,X
	AND #$00FF
	LDX CURRENT_TARGET
	STA a:battler::offense,X
	LDX CURRENT_TARGET
	LDA a:battler::base_defense,X
	AND #$00FF
	LDX CURRENT_TARGET
	STA a:battler::defense,X
	LDX CURRENT_TARGET
	LDA a:battler::base_speed,X
	AND #$00FF
	LDX CURRENT_TARGET
	STA a:battler::speed,X
	LDX CURRENT_TARGET
	LDA a:battler::base_guts,X
	AND #$00FF
	LDX CURRENT_TARGET
	STA a:battler::guts,X
	LDX CURRENT_TARGET
	LDA a:battler::base_luck,X
	AND #$00FF
	LDX CURRENT_TARGET
	STA a:battler::luck,X
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	LDX CURRENT_TARGET
	STA a:battler::shield_hp,X
	LDX CURRENT_TARGET
	STA a:battler::afflictions + STATUS_GROUP::SHIELD,X
	REP #PROC_FLAGS::ACCUM8
	DISPLAY_BATTLE_TEXT_PTR MSG_BTL_NEUTRALIZE_RESULT
	PLD
	RTL
