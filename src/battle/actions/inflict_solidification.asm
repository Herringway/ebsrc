
BTLACT_INFLICT_SOLIDIFICATION: ;$C2A902
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 18
	JSR SUCCESS_LUCK80
	CMP #$0000
	BEQ @UNKNOWN0
	LDX CURRENT_TARGET
	SEP #PROC_FLAGS::ACCUM8
	LDA a:battler::paralysis_resist,X
	JSR SUCCESS_255
	.A16
	CMP #$0000
	BEQ @UNKNOWN0
	LDY #STATUS_2::SOLIDIFIED
	LDX #STATUS_GROUP::TEMPORARY
	LDA CURRENT_TARGET
	JSR INFLICT_STATUS_BATTLE
	.A16
	CMP #$0000
	BEQ @UNKNOWN0
	DISPLAY_BATTLE_TEXT_PTR MSG_BTL_KOORI_ON
	BRA @UNKNOWN1
@UNKNOWN0:
	DISPLAY_BATTLE_TEXT_PTR MSG_BTL_KIKANAI
@UNKNOWN1:
	PLD
	RTL
