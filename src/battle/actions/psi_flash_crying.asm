
FLASH_INFLICT_CRYING:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	END_STACK_VARS
	LDY #STATUS_2::CRYING
	;Status group is the same as the status ID
	TYX
	LDA CURRENT_TARGET
	JSR INFLICT_STATUS_BATTLE
	CMP #0
	BEQ @UNKNOWN0
	DISPLAY_BATTLE_TEXT_PTR MSG_BTL_NAMIDA_ON
	BRA @UNKNOWN1
@UNKNOWN0:
	DISPLAY_BATTLE_TEXT_PTR MSG_BTL_KIKANAI
@UNKNOWN1:
	END_C_FUNCTION
