
PREPARE_YOUR_SANCTUARY_LOCATION_PALETTE_DATA:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	STX @VIRTUAL02
	TAY
	STY @LOCAL03
	JSL PREPARE_AVERAGE_FOR_SPRITE_PALETTES
	LOADPTR SPRITE_GROUP_PALETTES, @LOCAL00
	LDX #BPP4PALETTE_SIZE * 8
	LDA #.LOWORD(PALETTES) + BPP4PALETTE_SIZE * 8
	JSL MEMCPY16
	LDY @LOCAL03
	TYA
	AND #$0007
	TAX
	TYA
	LSR
	LSR
	LSR
	JSL LOAD_MAP_PAL
	JSL ADJUST_SPRITE_PALETTES_BY_AVERAGE
	SEP #PROC_FLAGS::ACCUM8
	STZ PALETTE_UPLOAD_MODE
	REP #PROC_FLAGS::ACCUM8
	PROMOTENEARPTR PALETTES, @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL02
	LDA #^PALETTES
	STA @LOCAL02+2
	LOADPTR BUFFER + $4000, @VIRTUAL06
	LDY #BPP4PALETTE_SIZE * 16
	LDA @VIRTUAL02
	JSL MULT16
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL00
	LDA @VIRTUAL06+2
	STA @LOCAL00+2
	MOVE_INT @LOCAL02, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL01
	LDA #BPP4PALETTE_SIZE * 8
	JSL MEMCPY24
	END_C_FUNCTION
