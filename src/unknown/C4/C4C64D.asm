
UNKNOWN_C4C64D:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_RETURN_INT16 ;int
	END_STACK_VARS
	LDA #60
	JSR SKIPPABLE_PAUSE
	DISPLAY_TEXT_PTR MSG_SYS_COMEBACK
	JSL UNKNOWN_C1DD5F
	LDA EVENT_FLAG_NOCONTINUE_SELECTED
	JSL GET_EVENT_FLAG
	CMP #0
	BNE @UNKNOWN0
	LDA #60
	JSR SKIPPABLE_PAUSE
	LDA #.LOWORD(-1)
	JMP @UNKNOWN9
@UNKNOWN0:
	LDA #60
	JSR SKIPPABLE_PAUSE
	CMP #0
	BEQ @UNKNOWN1
	LDA #0
	JMP @UNKNOWN9
@UNKNOWN1:
	LDX #90
	LDA #1
	JSR UNKNOWN_C4C519
	CMP #0
	BEQ @UNKNOWN2
	LDA #0
	BRA @UNKNOWN9
@UNKNOWN2:
	LDA #1
	JSR SKIPPABLE_PAUSE
	CMP #0
	BEQ @UNKNOWN3
	LDA #0
	BRA @UNKNOWN9
@UNKNOWN3:
	LDX #90
	LDA #2
	JSR UNKNOWN_C4C519
	CMP #0
	BEQ @UNKNOWN4
	LDA #0
	BRA @UNKNOWN9
@UNKNOWN4:
	LDA #1
	JSR SKIPPABLE_PAUSE
	CMP #0
	BEQ @UNKNOWN5
	LDA #0
	BRA @UNKNOWN9
@UNKNOWN5:
	LDX #90
	LDA #3
	JSR UNKNOWN_C4C519
	CMP #0
	BEQ @UNKNOWN6
	LDA #0
	BRA @UNKNOWN9
@UNKNOWN6:
	LDA #1
	JSR SKIPPABLE_PAUSE
	CMP #0
	BEQ @UNKNOWN7
	LDA #0
	BRA @UNKNOWN9
@UNKNOWN7:
	LDX #8
	LDA #4
	JSR UNKNOWN_C4C519
	CMP #0
	BEQ @UNKNOWN8
	LDA #0
	BRA @UNKNOWN9
@UNKNOWN8:
	LDA #0
@UNKNOWN9:
	END_C_FUNCTION
