
SRAM_CHECK_ROUTINE_CHECKSUM: ;$C1FFD3
	LDX #$0033
	REP #PROC_FLAGS::ACCUM8
	LDA #$0000
	STA .LOWORD(PIRACY_FLAG)
@UNKNOWN0:
	CLC
	ADC f:CHECK_HARDWARE,X
	DEX
	BPL @UNKNOWN0
	SEC
	SBC f:SRAM_CHECK_ROUTINE_CHECKSUM_VALUE
	STA .LOWORD(PIRACY_FLAG)
	RTL
