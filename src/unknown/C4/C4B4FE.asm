
UNKNOWN_C4B4FE:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	TXY
	STY @LOCAL00
	TAX
	JSL UNKNOWN_C4608C
	LDY @LOCAL00
	TYX
	JSL SPAWN_FLOATING_SPRITE
	END_C_FUNCTION
