
UNKNOWN_C01DED:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	STA @LOCAL00
	LOADPTR SPRITE_GROUPING_PTR_TABLE, @VIRTUAL0A
	LDA @LOCAL00
	OPTIMIZED_MULT @VIRTUAL04, 4
	CLC
	ADC @VIRTUAL0A
	STA @VIRTUAL0A
	DEREFERENCE_PTR_TO @VIRTUAL0A, @VIRTUAL06
	SEP #PROC_FLAGS::ACCUM8
	LDY #sprite_grouping::width
	LDA [@VIRTUAL06],Y
	LSR
	LSR
	LSR
	LSR
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	STA NEW_SPRITE_TILE_WIDTH
	MOVE_INT @VIRTUAL06, @VIRTUAL0A
	LDA [@VIRTUAL0A]
	AND #$00FF
	STA NEW_SPRITE_TILE_HEIGHT
	SEP #PROC_FLAGS::ACCUM8
	LDY #sprite_grouping::size
	LDA [@VIRTUAL06],Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	END_C_FUNCTION
