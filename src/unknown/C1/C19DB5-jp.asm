
UNKNOWN_C19DB5:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS

	STA @LOCAL04
	JSR SET_INSTANT_PRINTING
	LDA #.LOWORD(WINDOW_TEXT_ATTRIBUTES_BACKUP)
	JSL UNKNOWN_C20A20
	CREATE_WINDOW_NEAR #WINDOW::UNKNOWN0C
	LDA #5
	JSR UNKNOWN_C10EB4
	LDA #0
	STA @VIRTUAL04
	STA @LOCAL03
	JMP @UNKNOWN3
@UNKNOWN0:
	LDA @LOCAL04
	OPTIMIZED_MULT @VIRTUAL04, 7
	LDX @LOCAL03
	STX @VIRTUAL04
	CLC
	ADC @VIRTUAL04
	TAX
	LDA f:STORE_TABLE,X
	AND #$00FF
	TAY
	STY @LOCAL02
	BEQL @UNKNOWN2
	LOADPTR ITEM_CONFIGURATION_TABLE, @VIRTUAL06
	TYA
	OPTIMIZED_MULT @VIRTUAL04, .SIZEOF(item)
	STA @VIRTUAL02
	MOVE_INTX @VIRTUAL06, @VIRTUAL0A
	CLC
	ADC @VIRTUAL0A
	STA @VIRTUAL0A
	STA @LOCAL00
	LDA @VIRTUAL0A+2
	STA @LOCAL00+2
	LDX #.SIZEOF(item::name)
	LDA #.LOWORD(TEMPORARY_TEXT_BUFFER)
	JSL MEMCPY16
	SEP #PROC_FLAGS::ACCUM8
	STZ TEMPORARY_TEXT_BUFFER+.SIZEOF(item::name)
	REP #PROC_FLAGS::ACCUM8
	PROMOTENEARPTR TEMPORARY_TEXT_BUFFER, @VIRTUAL0A
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL0A, @LOCAL00
	MOVE_INT_CONSTANT NULL, @LOCAL01
	LDY @LOCAL02
	TYA
	JSR UNKNOWN_C115F4
	LDA @LOCAL03
	STA @VIRTUAL04
	LDX @VIRTUAL04
	LDA #0
	JSR UNKNOWN_C438A5
	LDA @VIRTUAL02
	CLC
	ADC #11
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	LDA [@VIRTUAL06]
	STORE_INT1632 @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
	JSR UNKNOWN_C11404
@UNKNOWN2:
	INC @VIRTUAL04
	LDA @VIRTUAL04
	STA @LOCAL03
@UNKNOWN3:
	LDA @VIRTUAL04
	CMP #7
	BCCL @UNKNOWN0
	LDX #0
	TXA
	JSR UNKNOWN_C438A5
	LDY #0
	TYX
	LDA #1
	JSR UNKNOWN_C1180D
	LOADPTR SET_HPPP_WINDOW_MODE_ITEM, @LOCAL00
	JSR UNKNOWN_C11F5A
	JSR UNKNOWN_C19CDD
	LDA #1
	JSR SELECTION_MENU
	TAX
	STX @LOCAL02
	JSR UNKNOWN_C19D49
	JSR CLOSE_FOCUS_WINDOW
	LDA #.LOWORD(WINDOW_TEXT_ATTRIBUTES_BACKUP)
	JSL UNKNOWN_C20ABC
	JSR CLEAR_INSTANT_PRINTING
	LDX @LOCAL02
	TXA
	END_C_FUNCTION
