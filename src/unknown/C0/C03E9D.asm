
UNKNOWN_C03E9D: ;$C03E9D
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 16
	JSR UNKNOWN_C03E5A
	STA $0E
	LDX UNKNOWN_7E4DC6
	LDA a:char_struct::position_index,X
	STA $02
	LDA $0E
	CMP $02
	BCS @UNKNOWN0
	CLC
	ADC #$0100
@UNKNOWN0:
	SEC
	SBC $02
	PLD
	RTL
