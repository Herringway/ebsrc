
UNKNOWN_C20266: ;$C20266
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 14
	LDY #.LOWORD(BG2_BUFFER) + ((ACTIVE_HPPP_WINDOW_Y_OFFSET * 32) - 6) * 2
	LOADPTR UNKNOWN_C3E40E, $06
	LDX #$0000
	BRA @UNKNOWN1
@UNKNOWN0:
	LDA [$06]
	STA RAM,Y
	INC $06
	INC $06
	INY
	INY
	INX
@UNKNOWN1:
	CPX #$0004
	BCC @UNKNOWN0
	PLD
	RTL
