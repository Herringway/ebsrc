
UNKNOWN_C24348:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16 ;int item
	END_STACK_VARS
	STA @VIRTUAL04
	JSR FIND_STEALABLE_ITEMS
	STA @VIRTUAL02
	LDA #0
	STA @LOCAL00
	BRA @UNKNOWN2
@UNKNOWN0:
	TAX
	LDA STEALABLE_ITEM_CANDIDATES,X
	AND #$00FF
	CMP @VIRTUAL04
	BNE @UNKNOWN1
	LDA #1
	BRA @UNKNOWN3
@UNKNOWN1:
	LDA @LOCAL00
	INC
	STA @LOCAL00
@UNKNOWN2:
	CMP @VIRTUAL02
	BCC @UNKNOWN0
	LDA #0
@UNKNOWN3:
	END_C_FUNCTION
