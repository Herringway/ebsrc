
BTLACT_CRYING2: ;$C28DFC
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 18
	JSR FAIL_ATTACK_ON_NPCS
	CMP #$0000
	BNE @UNKNOWN1
	LDY #STATUS_2::CRYING
	;Status group is identical to status ID
	TYX
	LDA CURRENT_TARGET
	JSR INFLICT_STATUS_BATTLE
	CMP #$0000
	BEQ @UNKNOWN0
	DISPLAY_BATTLE_TEXT_PTR MSG_BTL_NAMIDA_ON
	BRA @UNKNOWN1
@UNKNOWN0:
	DISPLAY_BATTLE_TEXT_PTR MSG_BTL_KIKANAI
@UNKNOWN1:
	PLD
	RTL
