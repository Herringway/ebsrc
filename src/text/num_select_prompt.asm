

NUM_SELECT_PROMPT:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_RETURN_INT32
	END_STACK_VARS
	.IF .DEFINED(JPN)
		@PRINT_LETTER_FUNC = PRINT_LETTER
	.ELSE
		@PRINT_LETTER_FUNC = UNKNOWN_C43F77
	.ENDIF
	STA @LOCAL08
	LDA CURRENT_FOCUS_WINDOW
	CMP #.LOWORD(-1)
	BNE @UNKNOWN0
	MOVE_INT_CONSTANT NULL, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @RETURNVAL
	JMP @UNKNOWN24
@UNKNOWN0:
	LDA CURRENT_FOCUS_WINDOW
	ASL
	TAX
	LDA OPEN_WINDOW_TABLE,X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	CLC
	ADC #.LOWORD(WINDOW_STATS)
	TAX
	LDA a:window_stats::text_x,X
	STA @LOCAL07
	LDA a:window_stats::text_y,X
	STA @LOCAL06
	MOVE_INT_CONSTANT NULL, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL05
	LDA #1
	STA @LOCAL04
	MOVE_INT_CONSTANT 1, @VIRTUAL0A
	MOVE_INT @VIRTUAL0A, @LOCAL03
@UNKNOWN1:
	JSR SET_INSTANT_PRINTING
	LDX @LOCAL06
	LDA @LOCAL07
	JSR UNKNOWN_C438A5
	MOVE_INT @LOCAL05, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
	JSR UNKNOWN_C10D7C
	STA @VIRTUAL02
	LDA #7
	SEC
	SBC @VIRTUAL02
	CLC
	ADC #.LOWORD(NUMBER_TEXT_BUFFER)
	STA @VIRTUAL04
	LDY @LOCAL08
	STY @LOCAL02
	BRA @UNKNOWN5
@UNKNOWN2:
	CPY @LOCAL04
	BNE @UNKNOWN3
	LDX #16
	BRA @UNKNOWN4
@UNKNOWN3:
	LDX #48
@UNKNOWN4:
	TXA
	JSR @PRINT_LETTER_FUNC
	LDY @LOCAL02
	DEY
	STY @LOCAL02
@UNKNOWN5:
	TYA
	CMP @VIRTUAL02
	BGT @UNKNOWN2
	BRA @UNKNOWN10
@UNKNOWN7:
	CPY @LOCAL04
	BNE @UNKNOWN8
	LDX #16
	BRA @UNKNOWN9
@UNKNOWN8:
	LDX #48
@UNKNOWN9:
	STX @VIRTUAL02
	LDX @VIRTUAL04
	LDA __BSS_START__,X
	AND #$00FF
	CLC
	ADC @VIRTUAL02
	INC @VIRTUAL04
	JSR @PRINT_LETTER_FUNC
	LDY @LOCAL02
	DEY
	STY @LOCAL02
@UNKNOWN10:
	CPY #0
	BNE @UNKNOWN7
	JSR CLEAR_INSTANT_PRINTING
	JSL WINDOW_TICK
@UNKNOWN11:
	JSL UNKNOWN_C12E42
	LDA PAD_PRESS
	AND #PAD::LEFT
	BEQ @UNKNOWN12
	LDA @LOCAL04
	CMP @LOCAL08
	BCS @UNKNOWN12
	LDA #SFX::CURSOR2
	JSL PLAY_SOUND
	INC @LOCAL04
	MOVE_INT @LOCAL03, @VIRTUAL0A
	MOVE_INT @VIRTUAL0A, @VIRTUAL06
	MOVE_INT_CONSTANT 10, @VIRTUAL0A
	JSL MULT32
	MOVE_INT @VIRTUAL06, @VIRTUAL0A
	MOVE_INT @VIRTUAL0A, @LOCAL03
	JMP @UNKNOWN1
@UNKNOWN12:
	LDA PAD_PRESS
	AND #PAD::RIGHT
	BEQ @UNKNOWN13
	LDA @LOCAL04
	CMP #1
	BLTEQ @UNKNOWN13
	LDA #SFX::CURSOR2
	JSL PLAY_SOUND
	DEC @LOCAL04
	MOVE_INT @LOCAL03, @VIRTUAL0A
	MOVE_INT @VIRTUAL0A, @VIRTUAL06
	MOVE_INT_CONSTANT 10, @VIRTUAL0A
	JSL DIVISION32S_DIVISOR_POSITIVE
	MOVE_INT @VIRTUAL06, @VIRTUAL0A
	MOVE_INT @VIRTUAL0A, @LOCAL03
	JMP @UNKNOWN1
@UNKNOWN13:
	LDA PAD_HELD
	AND #PAD::UP
	BEQL @UNKNOWN17
	LDA #SFX::CURSOR3
	JSL PLAY_SOUND
	MOVE_INT_CONSTANT 9, @LOCAL01
	MOVE_INT @LOCAL03, @VIRTUAL0A
	JSL DIVISION32S_DIVISOR_POSITIVE
	MOVE_INT_CONSTANT 10, @VIRTUAL0A
	JSL MODULUS32
	MOVE_INT @LOCAL01, @VIRTUAL0A
	CMP32 @VIRTUAL06, @VIRTUAL0A
	BEQ @UNKNOWN16
	MOVE_INT @LOCAL03, @VIRTUAL0A
	MOVE_INT @LOCAL05, @VIRTUAL06
	CLC
	ADD_INT_ASSIGN @VIRTUAL06, @VIRTUAL0A
	MOVE_INT @VIRTUAL06, @LOCAL05
	JMP @UNKNOWN1
@UNKNOWN16:
	MOVE_INT @LOCAL03, @VIRTUAL0A
	MOVE_INT @VIRTUAL0A, @VIRTUAL06
	MOVE_INT @LOCAL01, @VIRTUAL0A
	JSL MULT32
	MOVE_INT @VIRTUAL06, @VIRTUAL0A
	MOVE_INT @LOCAL05, @VIRTUAL06
	SEC
	SUB_INT_ASSIGN @VIRTUAL06, @VIRTUAL0A
	MOVE_INT @VIRTUAL06, @LOCAL05
	JMP @UNKNOWN1
@UNKNOWN17:
	LDA PAD_HELD
	AND #PAD::DOWN
	BEQL @UNKNOWN21
	LDA #SFX::CURSOR3
	JSL PLAY_SOUND
	MOVE_INT @LOCAL03, @VIRTUAL0A
	JSL DIVISION32S_DIVISOR_POSITIVE
	MOVE_INT_CONSTANT 10, @VIRTUAL0A
	JSL MODULUS32
	MOVE_INT_CONSTANT NULL, @VIRTUAL0A
	CMP32 @VIRTUAL06, @VIRTUAL0A
	BEQ @UNKNOWN20
	MOVE_INT @LOCAL03, @VIRTUAL0A
	MOVE_INT @LOCAL05, @VIRTUAL06
	SEC
	SUB_INT_ASSIGN @VIRTUAL06, @VIRTUAL0A
	MOVE_INT @VIRTUAL06, @LOCAL05
	JMP @UNKNOWN1
@UNKNOWN20:
	MOVE_INT @LOCAL03, @VIRTUAL0A
	MOVE_INT @VIRTUAL0A, @VIRTUAL06
	MOVE_INT_CONSTANT 9, @VIRTUAL0A
	JSL MULT32
	MOVE_INT @VIRTUAL06, @VIRTUAL0A
	MOVE_INT @LOCAL05, @VIRTUAL06
	CLC
	ADD_INT_ASSIGN @VIRTUAL06, @VIRTUAL0A
	MOVE_INT @VIRTUAL06, @LOCAL05
	JMP @UNKNOWN1
@UNKNOWN21:
	LDA PAD_PRESS
	AND #PAD::A_BUTTON | PAD::L_BUTTON
	BEQ @UNKNOWN22
	LDA #SFX::CURSOR1
	JSL PLAY_SOUND
	MOVE_INT @VIRTUAL06, @RETURNVAL
	BRA @UNKNOWN24
@UNKNOWN22:
	LDA PAD_PRESS
	AND #PAD::B_BUTTON | PAD::SELECT_BUTTON
	BEQL @UNKNOWN11
	LDA #SFX::CURSOR2
	JSL PLAY_SOUND
	MOVE_INT_CONSTANT -1, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @RETURNVAL
@UNKNOWN24:
	END_C_FUNCTION
