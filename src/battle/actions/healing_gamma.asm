
BTLACT_HEALING_G:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	END_STACK_VARS
	LDA CURRENT_TARGET
	CLC
	ADC #battler::afflictions + STATUS_GROUP::PERSISTENT_EASYHEAL
	TAX
	LDA __BSS_START__,X
	AND #$00FF
	CMP #STATUS_0::PARALYZED
	BEQ @UNKNOWN0
	CMP #STATUS_0::DIAMONDIZED
	BEQ @UNKNOWN1
	CMP #STATUS_0::UNCONSCIOUS
	BEQ @UNKNOWN2
	BRA @UNKNOWN4
@UNKNOWN0:
	SEP #PROC_FLAGS::ACCUM8
	LDA #0
	STA __BSS_START__,X
	REP #PROC_FLAGS::ACCUM8
	DISPLAY_BATTLE_TEXT_PTR MSG_BTL_SHIBIRE_OFF
	BRA @UNKNOWN5
@UNKNOWN1:
	SEP #PROC_FLAGS::ACCUM8
	LDA #0
	STA __BSS_START__,X
	REP #PROC_FLAGS::ACCUM8
	DISPLAY_BATTLE_TEXT_PTR MSG_BTL_DAIYA_OFF
	BRA @UNKNOWN5
@UNKNOWN2:
	SEP #PROC_FLAGS::ACCUM8
	LDA #192
	JSR SUCCESS_255
	.A16
	CMP #0
	BEQ @UNKNOWN3
	LDX CURRENT_TARGET
	LDA a:battler::hp_max,X
	LSR
	LSR
	TAX
	LDA CURRENT_TARGET
	JSR REVIVE_TARGET
	BRA @UNKNOWN5
@UNKNOWN3:
	.A16
	DISPLAY_BATTLE_TEXT_PTR MSG_BTL_IKIKAERI_F
	BRA @UNKNOWN5
@UNKNOWN4:
	JSL BTLACT_HEALING_B
@UNKNOWN5:
	END_C_FUNCTION
