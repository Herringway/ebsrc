
UNKNOWN_C1180D:
	BEGIN_C_FUNCTION
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	TXY
	LDX #0
	JSR UNKNOWN_C451FA
	JSR PRINT_MENU_ITEMS
	END_C_FUNCTION
