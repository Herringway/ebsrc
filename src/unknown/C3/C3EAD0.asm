
UNKNOWN_C3EAD0:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	SEP #PROC_FLAGS::ACCUM8
	STA @VIRTUAL00
	LDX #0
	STX @LOCAL00
	BRA @UNKNOWN2
@UNKNOWN0:
	SEP #PROC_FLAGS::ACCUM8
	CMP @VIRTUAL00
	BNE @UNKNOWN1
	LDX @LOCAL00
	REP #PROC_FLAGS::ACCUM8
	TXA
	JSL IS_VALID_ITEM_TRANSFORMATION
	CMP #0
	BNE @UNKNOWN3
	LDX @LOCAL00
	TXA
	JSL INITIALIZE_ITEM_TRANSFORMATION
	BRA @UNKNOWN3
@UNKNOWN1:
	LDX @LOCAL00
	INX
	STX @LOCAL00
@UNKNOWN2:
	REP #PROC_FLAGS::ACCUM8
	TXA
	OPTIMIZED_MULT @VIRTUAL04, .SIZEOF(timed_item_transformation)
	TAX
	LDA f:TIMED_ITEM_TRANSFORMATION_TABLE + timed_item_transformation::item,X
	AND #$00FF
	BNE @UNKNOWN0
@UNKNOWN3:
	END_C_FUNCTION
