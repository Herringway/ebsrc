
CHECK_ALL_BLOCKS_SIGNATURE:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	END_STACK_VARS
	LDX #0
	STX @LOCAL00
	BRA @UNKNOWN1
@UNKNOWN0:
	TXA
	JSR CHECK_BLOCK_SIGNATURE
	LDX @LOCAL00
	INX
	STX @LOCAL00
@UNKNOWN1:
	CPX #SAVE_COUNT*SAVE_COPY_COUNT
	BCC @UNKNOWN0
	END_C_FUNCTION
