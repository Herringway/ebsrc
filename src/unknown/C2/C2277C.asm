
UNKNOWN_C2277C:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	LDY #0
	STY @LOCAL01
	BRA @UNKNOWN2
@UNKNOWN0:
.IF .DEFINED(JPN)
	TYA
	CLC
	ADC #.LOWORD(GAME_STATE)
	TAX
	LDA a:game_state::unknown96,X
.ELSE
	LDA GAME_STATE + game_state::unknown96,Y
.ENDIF
	AND #$00FF
	STA @LOCAL00
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA PARTY_CHARACTERS+char_struct::afflictions,X
	AND #$00FF
	TAX
	CPX #1
	BEQ @UNKNOWN1
	CPX #2
	BEQ @UNKNOWN1
	LDA @LOCAL00
	BRA @UNKNOWN3
@UNKNOWN1:
	LDY @LOCAL01
	INY
	STY @LOCAL01
@UNKNOWN2:
	LDA GAME_STATE+game_state::player_controlled_party_count
	AND #$00FF
	STA @VIRTUAL02
	TYA
	CMP @VIRTUAL02
	BCC @UNKNOWN0
	LDA #0
@UNKNOWN3:
	END_C_FUNCTION
