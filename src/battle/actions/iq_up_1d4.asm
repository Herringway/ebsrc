
BTLACT_IQ_UP_1D4: ;$C2A0FF
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 24
	LDA #$0004
	JSR RAND_LIMIT
	INC
	STA $16
	LDA CURRENT_TARGET
	CLC
	ADC #$0031
	TAX
	LDA $16
	SEP #PROC_FLAGS::ACCUM8
	STA $00
	LDA RAM,X
	CLC
	ADC $00
	STA RAM,X
	REP #PROC_FLAGS::ACCUM8
	LOADPTR MSG_BTL_IQ_UP, $0E
	MOVE_INT1632S $16, $06
	MOVE_INT $06, $12
	JSL DISPLAY_TEXT_WAIT
	PLD
	RTL
