
UNKNOWN_C4C64D: ;$C4C64D
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 18
	LDA #$003C
	JSR a:.LOWORD(SKIPPABLE_PAUSE)
	DISPLAY_TEXT_PTR MSG_SYS_COMEBACK
	JSL UNKNOWN_C1DD5F
	LDA EVENT_FLAG_NOCONTINUE_SELECTED
	JSL GET_EVENT_FLAG
	CMP #$0000
	BNE @UNKNOWN0
	LDA #$003C
	JSR a:.LOWORD(SKIPPABLE_PAUSE)
	LDA #$FFFF
	JMP @UNKNOWN9
@UNKNOWN0:
	LDA #$003C
	JSR a:.LOWORD(SKIPPABLE_PAUSE)
	CMP #$0000
	BEQ @UNKNOWN1
	LDA #$0000
	JMP @UNKNOWN9
@UNKNOWN1:
	LDX #$005A
	LDA #$0001
	JSR a:.LOWORD(UNKNOWN_C4C519)
	CMP #$0000
	BEQ @UNKNOWN2
	LDA #$0000
	BRA @UNKNOWN9
@UNKNOWN2:
	LDA #$0001
	JSR a:.LOWORD(SKIPPABLE_PAUSE)
	CMP #$0000
	BEQ @UNKNOWN3
	LDA #$0000
	BRA @UNKNOWN9
@UNKNOWN3:
	LDX #$005A
	LDA #$0002
	JSR a:.LOWORD(UNKNOWN_C4C519)
	CMP #$0000
	BEQ @UNKNOWN4
	LDA #$0000
	BRA @UNKNOWN9
@UNKNOWN4:
	LDA #$0001
	JSR a:.LOWORD(SKIPPABLE_PAUSE)
	CMP #$0000
	BEQ @UNKNOWN5
	LDA #$0000
	BRA @UNKNOWN9
@UNKNOWN5:
	LDX #$005A
	LDA #$0003
	JSR a:.LOWORD(UNKNOWN_C4C519)
	CMP #$0000
	BEQ @UNKNOWN6
	LDA #$0000
	BRA @UNKNOWN9
@UNKNOWN6:
	LDA #$0001
	JSR a:.LOWORD(SKIPPABLE_PAUSE)
	CMP #$0000
	BEQ @UNKNOWN7
	LDA #$0000
	BRA @UNKNOWN9
@UNKNOWN7:
	LDX #$0008
	LDA #$0004
	JSR a:.LOWORD(UNKNOWN_C4C519)
	CMP #$0000
	BEQ @UNKNOWN8
	LDA #$0000
	BRA @UNKNOWN9
@UNKNOWN8:
	LDA #$0000
@UNKNOWN9:
	PLD
	RTS
