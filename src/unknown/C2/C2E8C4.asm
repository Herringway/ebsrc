
UNKNOWN_C2E8C4: ;$C2E8C4
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 14
	STY $02
	TAY
	JSL UNKNOWN_C4A67E
	LDA $02
	SEP #PROC_FLAGS::ACCUM8
	STA UNKNOWN_7EAECA
	REP #PROC_FLAGS::ACCUM8
	PLD
	RTL
