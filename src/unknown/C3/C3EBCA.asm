
UNKNOWN_C3EBCA:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	END_STACK_VARS
	LDY #0
	STY @LOCAL00
	BRA @UNKNOWN3
@UNKNOWN0:
	AND #$00FF
	TAX
	LDA #$00FF
	JSL FIND_ITEM_IN_INVENTORY2
	CMP #0
	BEQ @UNKNOWN1
	SEP #PROC_FLAGS::ACCUM8
	LDA [@VIRTUAL06]
	JSL UNKNOWN_C3EAD0
	BRA @UNKNOWN2
@UNKNOWN1:
	SEP #PROC_FLAGS::ACCUM8
	LDA [@VIRTUAL06]
	JSL UNKNOWN_C3EB1C
	.A16
@UNKNOWN2:
	LDY @LOCAL00
	INY
	STY @LOCAL00
@UNKNOWN3:
	LOADPTR TIMED_ITEM_TRANSFORMATION_TABLE, @VIRTUAL06
	TYA
	OPTIMIZED_MULT @VIRTUAL04, .SIZEOF(timed_item_transformation)
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	LDA [@VIRTUAL06]
	AND #$00FF
	BNE @UNKNOWN0
	END_C_FUNCTION
