
UNKNOWN_EFD6D4:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	STA @VIRTUAL04
	LDA #0
	STA @VIRTUAL02
	LDX CURRENT_MUSIC_TRACK
	STX DEBUG_SOUND_MENU_INITIAL_BGM
	STX DEBUG_SOUND_MENU_SELECTED_BGM
	LDA #2
	STA DEBUG_SOUND_MENU_SELECTED_EFFECT
	LDA @VIRTUAL04
	JSR UNKNOWN_EFD5D9
@UNKNOWN0:
	JSL UPDATE_SCREEN
	JSL WAIT_UNTIL_NEXT_FRAME
	LDA PAD_PRESS
	AND #PAD::Y_BUTTON
	BEQ @UNKNOWN1
	JSR UNKNOWN_EFE175
	LDA @VIRTUAL04
	JSR UNKNOWN_EFD5D9
@UNKNOWN1:
	JSL OAM_CLEAR
	JSL RUN_ACTIONSCRIPT_FRAME
	LDY DEBUG_SOUND_MENU_SELECTED_BGM
	LDX #10
	LDA #18
	JSR UNKNOWN_EFD56F
	LDY DEBUG_SOUND_MENU_SELECTED_SE
	LDX #12
	LDA #18
	JSR UNKNOWN_EFD56F
	LDY DEBUG_SOUND_MENU_SELECTED_EFFECT
	LDX #14
	LDA #18
	JSR UNKNOWN_EFD56F
	LDA PAD_PRESS
	CMP #PAD::SELECT_BUTTON | PAD::START_BUTTON
	BEQL @UNKNOWN29
	LDA PAD_HELD
	AND #PAD::UP
	BEQ @UNKNOWN3
	LDA @VIRTUAL02
	DEC
	STA @VIRTUAL02
@UNKNOWN3:
	LDA PAD_HELD
	AND #PAD::DOWN
	BEQ @UNKNOWN4
	INC @VIRTUAL02
@UNKNOWN4:
	LDA @VIRTUAL02
	CMP #.LOWORD(-1)
	BNE @UNKNOWN5
	LDA #2
	STA @VIRTUAL02
@UNKNOWN5:
	LDA @VIRTUAL02
	CMP #3
	BNE @UNKNOWN6
	LDA #0
	STA @VIRTUAL02
@UNKNOWN6:
	LDA PAD_PRESS
	AND #PAD::L_BUTTON
	BEQ @UNKNOWN7
	LDA DEBUG_SOUND_MENU_SELECTED_BGM
	STA DEBUG_SOUND_MENU_INITIAL_BGM
	LDA #46
	STA DEBUG_SOUND_MENU_SELECTED_BGM
@UNKNOWN7:
	LDA PAD_PRESS
	AND #PAD::B_BUTTON
	BNE @UNKNOWN8
	LDA PAD_PRESS
	AND #PAD::R_BUTTON
	BEQ @UNKNOWN9
@UNKNOWN8:
	LDA DEBUG_SOUND_MENU_INITIAL_BGM
	STA DEBUG_SOUND_MENU_SELECTED_BGM
@UNKNOWN9:
	LDA @VIRTUAL02
	BEQ @UNKNOWN11
	CMP #1
	BEQ @UNKNOWN17
	CMP #2
	BEQL @UNKNOWN22
	JMP @UNKNOWN27
@UNKNOWN11:
	LDA PAD_HELD
	AND #PAD::LEFT
	BEQ @UNKNOWN12
	DEC DEBUG_SOUND_MENU_SELECTED_BGM
@UNKNOWN12:
	LDA PAD_HELD
	AND #PAD::RIGHT
	BEQ @UNKNOWN13
	INC DEBUG_SOUND_MENU_SELECTED_BGM
@UNKNOWN13:
	LDA DEBUG_SOUND_MENU_SELECTED_BGM
	CMP #.LOWORD(-1)
	BNE @UNKNOWN14
	LDA #191
	STA DEBUG_SOUND_MENU_SELECTED_BGM
@UNKNOWN14:
	LDA DEBUG_SOUND_MENU_SELECTED_BGM
	CMP #192
	BNE @UNKNOWN15
	LDA #1
	STA DEBUG_SOUND_MENU_SELECTED_BGM
@UNKNOWN15:
	LDA PAD_PRESS
	AND #PAD::A_BUTTON
	BEQL @UNKNOWN27
	JSL STOP_MUSIC
	JSL WAIT_UNTIL_NEXT_FRAME
	LDA CURRENT_MUSIC_TRACK
	JSL UNKNOWN_C0AC20
	LDA DEBUG_SOUND_MENU_SELECTED_BGM
	JSL CHANGE_MUSIC
	JMP @UNKNOWN27
@UNKNOWN17:
	LDA PAD_HELD
	AND #PAD::LEFT
	BEQ @UNKNOWN18
	DEC DEBUG_SOUND_MENU_SELECTED_SE
@UNKNOWN18:
	LDA PAD_HELD
	AND #PAD::RIGHT
	BEQ @UNKNOWN19
	INC DEBUG_SOUND_MENU_SELECTED_SE
@UNKNOWN19:
	LDA DEBUG_SOUND_MENU_SELECTED_SE
	CMP #.LOWORD(-1)
	BNE @UNKNOWN20
	LDA #127
	STA DEBUG_SOUND_MENU_SELECTED_SE
@UNKNOWN20:
	LDA DEBUG_SOUND_MENU_SELECTED_SE
	CMP #128
	BNE @UNKNOWN21
	LDA #1
	STA DEBUG_SOUND_MENU_SELECTED_SE
@UNKNOWN21:
	LDA PAD_PRESS
	AND #PAD::A_BUTTON
	BEQ @UNKNOWN27
	LDA DEBUG_SOUND_MENU_SELECTED_SE
	JSL PLAY_SOUND
	BRA @UNKNOWN27
@UNKNOWN22:
	LDA PAD_HELD
	AND #PAD::LEFT
	BEQ @UNKNOWN23
	DEC DEBUG_SOUND_MENU_SELECTED_EFFECT
@UNKNOWN23:
	LDA PAD_HELD
	AND #PAD::RIGHT
	BEQ @UNKNOWN24
	INC DEBUG_SOUND_MENU_SELECTED_EFFECT
@UNKNOWN24:
	LDA DEBUG_SOUND_MENU_SELECTED_EFFECT
	CMP #.LOWORD(-1)
	BNE @UNKNOWN25
	LDA #32
	STA DEBUG_SOUND_MENU_SELECTED_EFFECT
@UNKNOWN25:
	LDA DEBUG_SOUND_MENU_SELECTED_EFFECT
	CMP #33
	BNE @UNKNOWN26
	LDA #1
	STA DEBUG_SOUND_MENU_SELECTED_EFFECT
@UNKNOWN26:
	LDA PAD_PRESS
	AND #PAD::A_BUTTON
	BEQ @UNKNOWN27
	LDA DEBUG_SOUND_MENU_SELECTED_EFFECT
	JSL UNKNOWN_C0AC0C
@UNKNOWN27:
	LDA PAD_PRESS
	AND #PAD::X_BUTTON
	BEQ @UNKNOWN28
	JSL STOP_MUSIC
	JSL PLAY_SOUND_UNKNOWN0
@UNKNOWN28:
	LDA @VIRTUAL04
	ASL
	TAX
	LDA @VIRTUAL02
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC #84
	STA ENTITY_ABS_Y_TABLE,X
	JMP @UNKNOWN0
@UNKNOWN29:
	END_C_FUNCTION
