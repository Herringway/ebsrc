
UNKNOWN_C0DB0F:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	END_STACK_VARS
	LDA PAD_STATE + 2
	AND #PAD::SELECT_BUTTON
	BEQ @UNKNOWN0
	JSR UNKNOWN_C0DA31
	JMP @UNKNOWN13
@UNKNOWN0:
	LDA #.LOWORD(-1)
	STA @LOCAL04
	LDY FIRST_ENTITY
	STY @LOCAL03
	BRA @UNKNOWN6
@UNKNOWN1:
	TYA
	LSR
	ASL
	TAX
	LDA ENTITY_SCREEN_Y_TABLE,X
	CMP #256
	BCC @UNKNOWN2
	CMP #.LOWORD(-64)
	BCC @UNKNOWN5
@UNKNOWN2:
	TYA
	LSR
	ASL
	TAX
	LDA ENTITY_SCREEN_X_TABLE,X
	CMP #320
	BCC @UNKNOWN3
	CMP #.LOWORD(-64)
	BCC @UNKNOWN5
@UNKNOWN3:
	TYA
	LSR
	STA @LOCAL02
	ASL
	TAX
	LDA ENTITY_DRAW_PRIORITY,X
	CMP #1
	BNE @UNKNOWN4
	LDA @LOCAL04
	STA ENTITY_DRAW_SORTING,X
	LDA @LOCAL02
	STA @LOCAL04
	BRA @UNKNOWN5
@UNKNOWN4:
	LDA @LOCAL02
	JSR UNKNOWN_C0A0CA
@UNKNOWN5:
	LDY @LOCAL03
	TYA
	LSR
	ASL
	TAX
	LDY ENTITY_NEXT_ENTITY_TABLE,X
	STY @LOCAL03
@UNKNOWN6:
	TYA
	INC
	BNE @UNKNOWN1
	BRA @UNKNOWN12
@UNKNOWN7:
	LDA @LOCAL04
	STA @LOCAL01
	LDA @LOCAL04
	ASL
	TAX
	LDA ENTITY_ABS_Y_TABLE,X
	STA @LOCAL00
	LDA #.LOWORD(-1)
	STA @VIRTUAL04
	LDA @LOCAL04
	STA @VIRTUAL02
	LDY ENTITY_DRAW_SORTING,X
	BRA @UNKNOWN10
@UNKNOWN8:
	TYA
	ASL
	TAX
	LDA ENTITY_ABS_Y_TABLE,X
	CMP @LOCAL00
	BCC @UNKNOWN9
	STA @LOCAL00
	STY @LOCAL01
	LDA @VIRTUAL02
	STA @VIRTUAL04
@UNKNOWN9:
	STY @VIRTUAL02
	TYA
	ASL
	TAX
	LDY ENTITY_DRAW_SORTING,X
@UNKNOWN10:
	TYA
	INC
	BNE @UNKNOWN8
	LDA @LOCAL01
	JSR UNKNOWN_C0A0CA
	LDA @VIRTUAL04
	INC
	BEQ @UNKNOWN11
	LDA @VIRTUAL04
	ASL
	PHA
	LDA @LOCAL01
	ASL
	TAX
	LDA ENTITY_DRAW_SORTING,X
	PLX
	STA ENTITY_DRAW_SORTING,X
	BRA @UNKNOWN12
@UNKNOWN11:
	LDA @LOCAL01
	ASL
	TAX
	LDA ENTITY_DRAW_SORTING,X
	STA @LOCAL04
@UNKNOWN12:
	LDA @LOCAL04
	INC
	BNE @UNKNOWN7
@UNKNOWN13:
	END_C_FUNCTION
