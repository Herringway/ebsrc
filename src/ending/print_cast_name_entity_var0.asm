
PRINT_CAST_NAME_ENTITY_VAR0:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
.IF .DEFINED(JPN)
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
.ENDIF
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
.IF .DEFINED(JPN)
	STY @LOCAL02
	STX @VIRTUAL04
	TAX
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(PARTY_CHARACTERS) + char_struct::name
	PROMOTENEARPTRA @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDX #.SIZEOF(char_struct::name)
	LDA @VIRTUAL04
	JSL PREPARE_CAST_NAME_TILEMAP
	STA @VIRTUAL02
	LOADPTR UNKNOWN_E12381, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL01
	LDA CURRENT_ENTITY_SLOT
	ASL
	TAX
	LDA ENTITY_SCRIPT_VAR0_TABLE,X
	ASL
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	LDA [@VIRTUAL06]
	STORE_INT1632 @VIRTUAL0A
	PUSH32 @VIRTUAL0A
	MOVE_INT_CONSTANT $FF0000, @VIRTUAL0A
	MOVE_INT @LOCAL01, @VIRTUAL06
	AND_INT_ASSIGN @VIRTUAL06, @VIRTUAL0A
	PULL32 @VIRTUAL0A
	CLC
	ADD_INT_ASSIGN @VIRTUAL06, @VIRTUAL0A
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDX #32
	LDA @VIRTUAL04
	CLC
	ADC @VIRTUAL02
	JSL PREPARE_CAST_NAME_TILEMAP
	PHA
	LDA @VIRTUAL02
	PLY
	STY @VIRTUAL02
	CLC
	ADC @VIRTUAL02
	TAY
	LDX @LOCAL02
	LDA @VIRTUAL04
	JSL COPY_CAST_NAME_TILEMAP
.ELSE
	STX @LOCAL00
	LDA CURRENT_ENTITY_SLOT
	ASL
	TAX
	LDA ENTITY_SCRIPT_VAR0_TABLE,X
	LDX @LOCAL00
	JSL PRINT_CAST_NAME
.ENDIF
	PLD
	RTL