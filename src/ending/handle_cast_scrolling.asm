
HANDLE_CAST_SCROLLING:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	END_STACK_VARS
	LOADPTR BUFFER + $7F00+$FE, @VIRTUAL06
	LDA CURRENT_ENTITY_SLOT
	ASL
	TAX
	LDY ENTITY_ABS_Y_TABLE,X
	STY BG3_Y_POS
	TXA
	CLC
	ADC #.LOWORD(ENTITY_SCRIPT_VAR7_TABLE)
	TAX
	LDA __BSS_START__,X
	STY @VIRTUAL02
	CMP @VIRTUAL02
	BCS @UNKNOWN0
	CLC
	ADC #8
	STA __BSS_START__,X
	LDA BG3_Y_POS
	LSR
	LSR
	LSR
	DEC
	AND #$001F
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC #VRAM::CAST_TILEMAP
	STA @LOCAL01
	LDA #0
	STA [@VIRTUAL06]
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDA @LOCAL01
	TAY
	LDX #64
	SEP #PROC_FLAGS::ACCUM8
	LDA #3
	JSL PREPARE_VRAM_COPY
@UNKNOWN0:
	END_C_FUNCTION