
UNKNOWN_C4608C:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT8
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	SEP #PROC_FLAGS::ACCUM8
	STA @LOCAL00
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	CMP #$00FF
	BNE @UNKNOWN0
	LDA GAME_STATE+game_state::current_party_members
	BRA @UNKNOWN4
@UNKNOWN0:
	LDX #0
	BRA @UNKNOWN3
@UNKNOWN1:
	SEP #PROC_FLAGS::ACCUM8
	LDA @LOCAL00
	CMP GAME_STATE + game_state::unknown96,X
	BNE @UNKNOWN2
	REP #PROC_FLAGS::ACCUM8
	TXA
	ASL
	TAX
	LDA GAME_STATE + game_state::unknownA2,X
	BRA @UNKNOWN4
@UNKNOWN2:
	INX
@UNKNOWN3:
	CPX #6
	BCC @UNKNOWN1
	REP #PROC_FLAGS::ACCUM8
	LDA #.LOWORD(-1)
@UNKNOWN4:
	END_C_FUNCTION
