
UNKNOWN_C12362:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	STA @VIRTUAL02
	LDA NUM_BATTLERS_IN_FRONT_ROW
	BEQ @UNKNOWN0
	LDX #0
	BRA @UNKNOWN1
@UNKNOWN0:
	LDX #1
@UNKNOWN1:
	TXY
	STY @LOCAL02
@UNKNOWN2:
	LDY @LOCAL02
	TYA
	JSR UNKNOWN_C43657
	JSR CLEAR_INSTANT_PRINTING
	LDX #.LOWORD(-1)
	LDY @LOCAL02
	TYA
	JSR UNKNOWN_C120D6
	JSL WINDOW_TICK
@UNKNOWN3:
	JSL UNKNOWN_C12E42
	LDA PAD_PRESS
	AND #PAD::UP
	BEQ @UNKNOWN4
	LDX #1
	STX @LOCAL01
	LDA #SFX::CURSOR3
	STA @LOCAL00
	BRA @UNKNOWN7
@UNKNOWN4:
	LDA PAD_PRESS
	AND #PAD::DOWN
	BEQ @UNKNOWN5
	LDX #0
	STX @LOCAL01
	LDA #SFX::CURSOR3
	STA @LOCAL00
	BRA @UNKNOWN7
@UNKNOWN5:
	LDA PAD_PRESS
	AND #PAD::A_BUTTON | PAD::L_BUTTON
	BEQ @UNKNOWN6
	JSR UNKNOWN_C435E4
	LDY @LOCAL02
	TYX
	INX
	STX @LOCAL01
	LDA #SFX::CURSOR1
	JSL PLAY_SOUND
	BRA @UNKNOWN11
@UNKNOWN6:
	LDA PAD_PRESS
	AND #PAD::B_BUTTON | PAD::SELECT_BUTTON
	BEQ @UNKNOWN3
	LDA @VIRTUAL02
	CMP #1
	BNE @UNKNOWN3
	JSR UNKNOWN_C435E4
	LDX #0
	STX @LOCAL01
	LDA #SFX::CURSOR2
	JSL PLAY_SOUND
	BRA @UNKNOWN11
@UNKNOWN7:
	CPX #0
	BNE @UNKNOWN8
	LDA NUM_BATTLERS_IN_FRONT_ROW
	BNE @UNKNOWN10
@UNKNOWN8:
	CPX #0
	BEQL @UNKNOWN2
	LDA NUM_BATTLERS_IN_BACK_ROW
	BEQL @UNKNOWN2
@UNKNOWN10:
	LDA @LOCAL00
	JSL PLAY_SOUND
	LDX @LOCAL01
	TXY
	STY @LOCAL02
	JMP @UNKNOWN2
@UNKNOWN11:
	JSR CLOSE_FOCUS_WINDOW
	LDX @LOCAL01
	TXA
	END_C_FUNCTION
