
UNKNOWN_C03E5A:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	STA @LOCAL00
	LDX #0
	BRA @UNKNOWN1
@UNKNOWN0:
	INX
@UNKNOWN1:
	LDA @LOCAL00
	STA @VIRTUAL02
	INC @VIRTUAL02
	LDA GAME_STATE + game_state::unknown96,X
	AND #$00FF
	CMP @VIRTUAL02
	BNE @UNKNOWN0
	CPX #0
	BNE @UNKNOWN2
	LDA #.LOWORD(-1)
	BRA @UNKNOWN3
@UNKNOWN2:
	TXA
	DEC
	ASL
	TAX
	LDA GAME_STATE + game_state::unknownA2,X
	ASL
	TAX
	LDA ENTITY_SCRIPT_VAR1_TABLE,X
	ASL
	TAX
	LDA CHOSEN_FOUR_PTRS,X
	TAX
	LDA a:char_struct::position_index,X
@UNKNOWN3:
	END_C_FUNCTION
