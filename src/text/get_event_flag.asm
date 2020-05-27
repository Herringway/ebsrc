
GET_EVENT_FLAG: ;$C21628
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 16
	DEC
	STA $0E
	LSR
	LSR
	LSR
	PHA
	LDY #$0008
	LDA $0E
	JSL MODULUS16
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA f:POWERS_OF_TWO_8BIT,X
	PLX
	AND .LOWORD(EVENT_FLAG),X
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BEQ UNKNOWN0
	LDA #$0001
	BRA UNKNOWN1
UNKNOWN0:
	LDA #$0000
UNKNOWN1:
	PLD
	RTL