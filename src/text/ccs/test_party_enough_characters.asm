
CC_1D_19:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	TXA
	LDX #0
	STX @LOCAL01
	CMP #0
	BEQ @ARG_IS_ZERO
	STORE_INT1632 @VIRTUAL06
	BRA @ARG_IS_NONZERO
@ARG_IS_ZERO:
	JSR GET_ARGUMENT_MEMORY
@ARG_IS_NONZERO:
	MOVE_INT @VIRTUAL06, @VIRTUAL0A
	SEP #PROC_FLAGS::ACCUM8
	MOVE_INT832 GAME_STATE+game_state::player_controlled_party_count, @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	LDA @VIRTUAL06
	CMP @VIRTUAL0A
	LDA @VIRTUAL06+2
	SBC @VIRTUAL0A+2
	BCS @UNKNOWN2
	LDX #1
	STX @LOCAL01
@UNKNOWN2:
	LDX @LOCAL01
	TXA
	STORE_INT1632S @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
	JSR SET_WORKING_MEMORY
	LDA #NULL
	END_C_FUNCTION
