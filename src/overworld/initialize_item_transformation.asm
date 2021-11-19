
INITIALIZE_ITEM_TRANSFORMATION: ;$C48EEB
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 18
	TAX
	STX $10
	TXA
	JSL IS_VALID_ITEM_TRANSFORMATION
	CMP #$0000
	BNE @UNKNOWN0
	SEP #PROC_FLAGS::ACCUM8
	LDA #$003C
	STA .LOWORD(UNKNOWN_7E9F2C)
	REP #PROC_FLAGS::ACCUM8
	INC .LOWORD(UNKNOWN_7E9F2A)
@UNKNOWN0:
	LDX $10
	TXA
	OPTIMIZED_MULT $04, .SIZEOF(loaded_timed_item_transformation)
	CLC
	ADC #.LOWORD(LOADED_TIMED_ITEM_TRANSFORMATIONS)
	TAY
	STY $0E
	LOADPTR TIMED_ITEM_TRANSFORMATION_TABLE, $06
	TXA
	OPTIMIZED_MULT $04, .SIZEOF(timed_item_transformation)
	TAX
	STX $10
	TXA
	INC
	PHA
	MOVE_INT $06, $0A
	PLA
	CLC
	ADC $0A
	STA $0A
	SEP #PROC_FLAGS::ACCUM8
	LDA [$0A]
	STA a:loaded_timed_item_transformation::sfx,Y
	REP #PROC_FLAGS::ACCUM8
	TXA
	INC
	INC
	MOVE_INTX $06, $0A
	CLC
	ADC $0A
	STA $0A
	SEP #PROC_FLAGS::ACCUM8
	LDA [$0A]
	STA $00
	STA a:loaded_timed_item_transformation::sfx_frequency,Y
	REP #PROC_FLAGS::ACCUM8
	LDA #$0002
	JSL RAND_MOD
	SEP #PROC_FLAGS::ACCUM8
	PHA
	LDA $00
	SEP #PROC_FLAGS::INDEX8
	PLX
	STX $00
	CLC
	ADC $00
	DEC
	REP #PROC_FLAGS::INDEX8
	LDY $0E
	STA a:loaded_timed_item_transformation::sfx_countdown,Y
	LDX $10
	REP #PROC_FLAGS::ACCUM8
	TXA
	INC
	INC
	INC
	INC
	CLC
	ADC $06
	STA $06
	SEP #PROC_FLAGS::ACCUM8
	LDA [$06]
	STA a:loaded_timed_item_transformation::transformation_countdown,Y
	REP #PROC_FLAGS::ACCUM8
	PLD
	RTL