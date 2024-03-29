
CORRUPTION_CHECK:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	END_STACK_VARS
	LDA CORRUPTION_CHECK_RESULTS
	AND #$00FF
	BEQ @RETURN
	LDA #.LOWORD(WINDOW_TEXT_ATTRIBUTES_BACKUP)
	JSL UNKNOWN_C20A20
	CREATE_WINDOW_NEAR #WINDOW::UNKNOWN2F
	LDX #0
	STX @LOCAL01
	BRA @LOOP_ENTRY
@LOOP_BEGIN:
	SEP #PROC_FLAGS::ACCUM8
	LDA f:UNKNOWN_EF05A6,X
	AND CORRUPTION_CHECK_RESULTS
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BEQ @SIGNATURE_MATCH
	TXA
	INC
	STORE_INT1632S @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
	JSR UNKNOWN_C1AD0A
	DISPLAY_TEXT_PTR MSG_SYS_SRAM_CRASH
@SIGNATURE_MATCH:
	LDX @LOCAL01
	INX
	STX @LOCAL01
@LOOP_ENTRY:
	STX @VIRTUAL02
	LDA #3
	CLC
	SBC @VIRTUAL02
	BRANCHGTS @LOOP_BEGIN
	JSR CLOSE_FOCUS_WINDOW
	SEP #PROC_FLAGS::ACCUM8
	STZ CORRUPTION_CHECK_RESULTS
	REP #PROC_FLAGS::ACCUM8
	LDA #.LOWORD(WINDOW_TEXT_ATTRIBUTES_BACKUP)
	JSL UNKNOWN_C20ABC
@RETURN:
	END_C_FUNCTION
