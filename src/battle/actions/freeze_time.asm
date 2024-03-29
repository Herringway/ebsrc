
BTLACT_FREEZETIME:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT32
	END_STACK_VARS
.IF .DEFINED(JPN)
	@FLAGSREGISTER := @VIRTUAL06
	@TMPREGISTER := @VIRTUAL0A
.ELSE
	@FLAGSREGISTER := @VIRTUAL0A
	@TMPREGISTER := @VIRTUAL06
.ENDIF
	JSL PAUSE_MUSIC
	LDA #4
	JSR RAND_LIMIT
	STA @VIRTUAL02
	INC @VIRTUAL02
	MOVE_INT BATTLER_TARGET_FLAGS, @TMPREGISTER
	MOVE_INT @TMPREGISTER, @LOCAL03
	LDY #0
	STY @LOCAL02
	JMP @UNKNOWN5
@UNKNOWN0:
	JSL REMOVE_STATUS_UNTARGETTABLE_TARGETS
	MOVE_INT_CONSTANT NULL, @TMPREGISTER
	MOVE_INT BATTLER_TARGET_FLAGS, @FLAGSREGISTER
	CMP @TMPREGISTER+2
	BNE @UNKNOWN1
	LDA @FLAGSREGISTER
	CMP @TMPREGISTER
@UNKNOWN1:
	BEQ @UNKNOWN6
	MOVE_INT @LOCAL03, @TMPREGISTER
	MOVE_INT @TMPREGISTER, @LOCAL00
	JSL RANDOM_TARGETTING
.IF .DEFINED(USA) ;lol
	MOVE_INT @VIRTUAL06, @FLAGSREGISTER
	MOVE_INT @FLAGSREGISTER, @VIRTUAL06
.ENDIF
	MOVE_INT @VIRTUAL06, BATTLER_TARGET_FLAGS
	LDX #0
	STX @LOCAL01
	BRA @UNKNOWN3
@UNKNOWN2:
	TXA
	JSL IS_CHAR_TARGETTED
	CMP #0
	BNE @UNKNOWN4
	LDX @LOCAL01
	INX
	STX @LOCAL01
@UNKNOWN3:
	CPX #BATTLER_COUNT
	BCC @UNKNOWN2
@UNKNOWN4:
	LDX @LOCAL01
	TXA
	LDY #.SIZEOF(battler)
	JSL MULT168
	CLC
	ADC #.LOWORD(BATTLERS_TABLE)
	STA CURRENT_TARGET
	JSL FIX_TARGET_NAME
	JSL BTLACT_BASH
	LDY @LOCAL02
	INY
	STY @LOCAL02
@UNKNOWN5:
	TYA
	CMP @VIRTUAL02
	BCCL @UNKNOWN0
@UNKNOWN6:
	JSL RESUME_MUSIC
	DISPLAY_BATTLE_TEXT_PTR MSG_BTL_TIMESTOP_RET
	MOVE_INT_CONSTANT 0, BATTLER_TARGET_FLAGS
	END_C_FUNCTION
