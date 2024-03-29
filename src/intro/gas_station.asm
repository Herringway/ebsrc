
GAS_STATION:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT8
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	END_STACK_VARS
	JSL UNKNOWN_C0927C
	JSR GAS_STATION_LOAD
	LDX #11
	LDA #1
	JSL FADE_IN
	JSR UNKNOWN_C0F21E
	TAY
	STY @LOCAL02
	BEQ @UNKNOWN0
	LDA #1
	BRA @UNKNOWN5
@UNKNOWN0:
	LDX #0
	STX @LOCAL01
	BRA @UNKNOWN3
@UNKNOWN1:
	LDA PAD_PRESS
	BEQ @UNKNOWN2
	LDA #1
	BRA @UNKNOWN5
@UNKNOWN2:
	JSL UPDATE_MAP_PALETTE_ANIMATION
	JSL WAIT_UNTIL_NEXT_FRAME
	LDX @LOCAL01
	INX
	STX @LOCAL01
@UNKNOWN3:
	CPX #330
	BCC @UNKNOWN1
	SEP #PROC_FLAGS::ACCUM8
	STZ TM_MIRROR
	STZ_BADOPT @LOCAL00
	LDX #BPP4PALETTE_SIZE * 16
	REP #PROC_FLAGS::ACCUM8
	LDA #.LOWORD(PALETTES)
	JSL MEMSET16
	SEP #PROC_FLAGS::ACCUM8
	LDA #PALETTE_UPLOAD::FULL
	STA PALETTE_UPLOAD_MODE
	LDY @LOCAL02
	BNE @UNKNOWN4
	REP #PROC_FLAGS::ACCUM8
	LDA #30
	JSR UNKNOWN_C0EFE1
@UNKNOWN4:
	LDY @LOCAL02
	REP #PROC_FLAGS::ACCUM8
	TYA
@UNKNOWN5:
	END_C_FUNCTION
