
UNKNOWN_C2DE96:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
.IF .DEFINED(USA)
	;it seems the compiler used for mother 2's build was able to eliminate this variable thanks to better register allocation
	STACK_RESERVE_INT32
.ENDIF
	END_STACK_VARS
	PROMOTENEARPTR LOADED_BG_DATA_LAYER1 + loaded_bg_data::palette2, @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
.IF .DEFINED(JPN)
	MOVE_INT @VIRTUAL06, @LOCAL00
.ELSE
	MOVE_INT @VIRTUAL06, @LOCAL01
	MOVE_INT @VIRTUAL06, @LOCAL00
.ENDIF
	LDX #.SIZEOF(loaded_bg_data::palette)
	LDA #.LOWORD(LOADED_BG_DATA_LAYER1) + loaded_bg_data::palette
	JSL MEMCPY16
	PROMOTENEARPTR LOADED_BG_DATA_LAYER2 + loaded_bg_data::palette2, @VIRTUAL0A
	REP #PROC_FLAGS::ACCUM8
.IF .DEFINED(JPN)
	MOVE_INT @VIRTUAL0A, @LOCAL00
.ELSE
	MOVE_INT @VIRTUAL0A, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
.ENDIF
	LDX #.SIZEOF(loaded_bg_data::palette)
	LDA #.LOWORD(LOADED_BG_DATA_LAYER2) + loaded_bg_data::palette
	JSL MEMCPY16
.IF .DEFINED(JPN)
	MOVE_INT @VIRTUAL06, @LOCAL00
.ELSE
	MOVE_INT @LOCAL01, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
.ENDIF
	LDX #.SIZEOF(loaded_bg_data::palette)
	LDA LOADED_BG_DATA_LAYER1 + loaded_bg_data::palette_pointer
	JSL MEMCPY16
	LDA LOADED_BG_DATA_LAYER2
	AND #$00FF
	BEQ @UNKNOWN0
.IF .DEFINED(JPN)
	MOVE_INT @VIRTUAL0A, @LOCAL00
.ELSE
	MOVE_INT @VIRTUAL0A, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
.ENDIF
	LDX #.SIZEOF(loaded_bg_data::palette)
	LDA LOADED_BG_DATA_LAYER2 + loaded_bg_data::palette_pointer
	JSL MEMCPY16
@UNKNOWN0:
	END_C_FUNCTION
