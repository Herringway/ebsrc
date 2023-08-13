
CHECK_SRAM_INTEGRITY: ;$EF0B9E
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 20
	LDA #.LOWORD(UNKNOWN_316493) - .LOWORD(UNKNOWN_316000)
	STA UNKNOWN_7E9F77
	LOADPTR SAVE_BASE + $1FFE, $06
	LDA [$06]
	CMP #.LOWORD(UNKNOWN_316493) - .LOWORD(UNKNOWN_316000)
	BEQ @GOOD_SRAM
	LOADPTR SAVE_BASE, $0E
	LDX #$2000
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	JSL MEMSET24
@GOOD_SRAM:
	JSR CHECK_ALL_BLOCKS_SIGNATURE
	SEP #PROC_FLAGS::ACCUM8
	STZ UNKNOWN_7E9F79
	LDX #$0000
	STX $12
	BRA @LOOP_ENTRY
@LOOP_BEGINNING:
	REP #PROC_FLAGS::ACCUM8
	TXA
	JSR CHECK_SAVE_CORRUPTION
	LDX $12
	INX
	STX $12
@LOOP_ENTRY:
	CPX #$0003
	BCC @LOOP_BEGINNING
	REP #PROC_FLAGS::ACCUM8
	LDA UNKNOWN_7E9F77
	STA [$06]
	PLD
	RTL
