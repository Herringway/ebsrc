
UNUSED_C4EE9D:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	END_STACK_VARS
	LDA #0
	STA @VIRTUAL02
	BRA @UNKNOWN1
@UNKNOWN0:
	LDA @VIRTUAL02
	ASL
	TAX
	LDY UNUSED_7EB4D5,X
	STY @LOCAL00
	LDX #5
	LDA @VIRTUAL02
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(PARTY_CHARACTERS)
	LDY @LOCAL00
	JSR UNUSED_C4EDA3
	INC @VIRTUAL02
@UNKNOWN1:
	LDA @VIRTUAL02
	CMP #4
	BCC @UNKNOWN0
	LDY UNUSED_7EB4DD
	LDX #6
	LDA #.LOWORD(GAME_STATE) + game_state::pet_name
	JSR UNUSED_C4EDA3
	END_C_FUNCTION