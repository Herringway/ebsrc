
TRUNCATE_16_TO_8: ;$C269F8
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 15
	SEP #PROC_FLAGS::ACCUM8
	STA $0E
	REP #PROC_FLAGS::ACCUM8
	TXA
	STA $0A
	STZ $0C
	SEP #PROC_FLAGS::ACCUM8
	LDA $0E
	STA $06
	STZ $07
	STZ $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	JSL MULT32
	SEP #PROC_FLAGS::INDEX8
	LDY #$0008
	JSL ASR32_UNKNOWN1
	LDA $06
	REP #PROC_FLAGS::INDEX8
	PLD
	RTS
