
NAME_A_CHARACTER:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
.IF .DEFINED(JPN)
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
.ENDIF
	STACK_RESERVE_INT16 "LOCAL04"
	STACK_RESERVE_INT16 "LOCAL05"
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT32
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	STY @LOCAL05
	TXY
	STY @LOCAL04
	STA @VIRTUAL02
.IF .DEFINED(JPN)
	STA @LOCAL03
.ENDIF
	LDX @PARAM04
	STX @VIRTUAL04
	MOVE_INT @PARAM03, @VIRTUAL06
	JSR SET_INSTANT_PRINTING
	CREATE_WINDOW_NEAR #WINDOW::FILE_SELECT_NAMING_NAME_BOX
.IF .DEFINED(USA) && (!.DEFINED(PROTOTYPE19950327))
	JSL WINDOW_TICK_WITHOUT_INSTANT_PRINTING
.ELSEIF .DEFINED(JPN)
	LDX #0
	STX @LOCAL02
	BRA @UNKNOWN1
@UNKNOWN0:
	LDA #CHAR::PLACEHOLDER
	JSR PRINT_LETTER
	LDX @LOCAL02
	INX
	STX @LOCAL02
@UNKNOWN1:
	TXA
	CMP @VIRTUAL02
	BCC @UNKNOWN0
	LDX #0
	TXA
	JSR UNKNOWN_C438A5
.ENDIF
	LDY @LOCAL04
	LDA __BSS_START__,Y
	AND #$00FF
	BEQ @UNKNOWN2
.IF .DEFINED(JPN)
	TYA
	PROMOTENEARPTRA @VIRTUAL0A
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL0A, @LOCAL00
	LDA @VIRTUAL02
	JSR PRINT_STRING
	LDX #.LOWORD(WINDOW_STATS) + window_stats::text_x
	STX @LOCAL01
	STX @VIRTUAL02
	LDA CURRENT_FOCUS_WINDOW
	ASL
	TAX
	LDA OPEN_WINDOW_TABLE,X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	CLC
	ADC @VIRTUAL02
	TAX
	LDA __BSS_START__,X
	LDX @LOCAL03
	STX @VIRTUAL02
	CMP @VIRTUAL02
	BCS @UNKNOWN3
	LDA #CHAR::BULLET
	JSR PRINT_LETTER
	LDX @LOCAL01
	STX @VIRTUAL02
	LDA CURRENT_FOCUS_WINDOW
	ASL
	TAX
	LDA OPEN_WINDOW_TABLE,X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	CLC
	ADC @VIRTUAL02
	TAX
	LDA __BSS_START__,X
	DEC
	STA __BSS_START__,X
.ELSE
	LDX @VIRTUAL02
	TYA
	JSL UNKNOWN_C440B5
.ENDIF
	BRA @UNKNOWN3
@UNKNOWN2:
.IF .DEFINED(JPN)
	LDA #CHAR::BULLET
	JSR PRINT_LETTER
	LDX #0
	TXA
	JSR UNKNOWN_C438A5
.ELSE
	LDA @VIRTUAL02
	JSL UNKNOWN_C441B7
.ENDIF
@UNKNOWN3:
.IF .DEFINED(USA)
	LDX #0
	TXA
	JSR UNKNOWN_C438A5
.ENDIF
	CREATE_WINDOW_NEAR #WINDOW::FILE_SELECT_NAMING_MESSAGE
.IF .DEFINED(USA) && (!.DEFINED(PROTOTYPE19950327))
	JSL WINDOW_TICK_WITHOUT_INSTANT_PRINTING
.ENDIF
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDA @VIRTUAL04
	JSR PRINT_STRING
	LDX #0
	LDA #1
	JSR CC_13_14
	STZ_BADOPT @LOCAL00
	LDA @LOCAL05
	STA @LOCAL00+2
	LDY @LOCAL04
.IF .DEFINED(JPN)
	LDA @LOCAL03
	STA @VIRTUAL02
.ENDIF
	LDX @VIRTUAL02
	LDA #WINDOW::FILE_SELECT_NAMING_NAME_BOX
	JSR TEXT_INPUT_DIALOG
	TAX
	STX @LOCAL05
	LDA #WINDOW::FILE_SELECT_NAMING_KEYBOARD
	JSR CLOSE_WINDOW
	LDX @LOCAL05
	TXA
	END_C_FUNCTION
