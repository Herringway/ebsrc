
UNKNOWN_C102D0: ;$C102D0
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	STZ UNKNOWN_7E9641
	JSR CLEAR_INSTANT_PRINTING
	JSL WINDOW_TICK
	BRA @UNKNOWN2
@UNKNOWN0:
	LDA DEBUG
	BEQ @UNKNOWN1
	LDA PAD_STATE
	AND #PAD::START_BUTTON
	BEQ @UNKNOWN1
	LDA PAD_STATE
	AND #PAD::SELECT_BUTTON
	BNE @UNKNOWN3
@UNKNOWN1:
	JSL UNKNOWN_C1004E
@UNKNOWN2:
	LDA UNKNOWN_7E9641
	BEQ @UNKNOWN0
	STZ UNKNOWN_7E9641
@UNKNOWN3:
	RTS
