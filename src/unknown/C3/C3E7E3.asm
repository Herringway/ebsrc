
UNKNOWN_C3E7E3: ;$C3E7E3
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 16
	CMP #$FFFF
	BEQ @UNKNOWN2
	ASL
	TAX
	LDA .LOWORD(WINDOW_EXISTENCE_TABLE),X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	CLC
	ADC #.LOWORD(WINDOW_STATS_TABLE)
	TAY
	STY $0E
	LDA a:.LOWORD(RAM) + window_stats::argument_memory_storage,Y
	CMP #$FFFF
	BEQ @UNKNOWN2
	LDY #.SIZEOF(u89D4_entry)
	JSL MULT168
	CLC
	ADC #.LOWORD(UNKNOWN_7E89D4)
	TAX
@UNKNOWN0:
	LDA #$0000
	STA a:u89D4_entry::unknown0,X
	LDA a:u89D4_entry::unknown2,X
	CMP #$FFFF
	BEQ @UNKNOWN1
	LDY #.SIZEOF(u89D4_entry)
	JSL MULT168
	CLC
	ADC #.LOWORD(UNKNOWN_7E89D4)
	TAX
	BRA @UNKNOWN0
@UNKNOWN1:
	LDA #$FFFF
	LDY $0E
	STA a:.LOWORD(RAM) + window_stats::secondary_memory_storage,Y
	STA a:.LOWORD(RAM) + window_stats::argument_memory_storage + 2,Y
	STA a:.LOWORD(RAM) + window_stats::argument_memory_storage,Y
	LDA #$0001
	STA a:.LOWORD(RAM) + window_stats::secondary_memory_storage + 2,Y
	STA a:.LOWORD(RAM) + window_stats::unknown51,Y
@UNKNOWN2:
	PLD
	RTL
