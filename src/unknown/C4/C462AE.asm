
UNKNOWN_C462AE: ;$C462AE
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 16
	STY $02
	TXY
	TAX
	LDA $02
	STA $0E
	LDA #$0001
	JSL UNKNOWN_C46257
	PLD
	RTL
