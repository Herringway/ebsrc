
UNKNOWN_EF04DC: ;$EF04DC
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 16
	LDA #$0000
	STA $04
	JSL UNKNOWN_C08726
	JSL UNKNOWN_C0927C
	JSL UNKNOWN_C0EBE0
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0011
	STA TM_MIRROR
	JSL OAM_CLEAR
	.A16
	LDA #$0001
	STA UNKNOWN_7E9F75
	LDY #$0000
	TYX
	LDA #EVENT_SCRIPT::TITLE_SCREEN_1
	JSL INIT_ENTITY_WIPE
	STZ UNKNOWN_7E9641
	JSL UNKNOWN_C1004E
	LDX #$0001
	LDA #$0010
	JSL FADE_IN
	LDX #$0000
	STX $0E
	BRA @UNKNOWN2
@UNKNOWN1:
	JSL UNKNOWN_C1004E
	LDX $0E
	INX
	STX $0E
@UNKNOWN2:
	CPX #$003C
	BCC @UNKNOWN1
	LDA #$0000
	STA $02
	BRA @UNKNOWN7
@UNKNOWN3:
	LDA $04
	BNE @UNKNOWN6
	LDA PAD_PRESS
	AND #PAD::A_BUTTON
	BNE @UNKNOWN5
	LDA PAD_PRESS
	AND #PAD::B_BUTTON
	BNE @UNKNOWN5
	LDA PAD_PRESS
	AND #PAD::START_BUTTON
	BEQ @UNKNOWN6
@UNKNOWN5:
	LDA #$0001
	STA $02
	BRA @UNKNOWN8
@UNKNOWN6:
	JSL UNKNOWN_C1004E
@UNKNOWN7:
	LDA UNKNOWN_7E9641
	BEQ @UNKNOWN3
	LDA UNKNOWN_7E9641
	CMP #$0002
	BEQ @UNKNOWN3
@UNKNOWN8:
	LDY #$0000
	LDX #$0004
	LDA #$0001
	JSL FADE_OUT_WITH_MOSAIC
	STZ UNKNOWN_7E9641
	LDA #$0000
	JSL UNKNOWN_C474A8
	JSL UNKNOWN_C0927C
	LDA $02
	PLD
	RTL
