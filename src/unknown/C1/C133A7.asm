
UNKNOWN_C133A7: ;$C133A7
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	LDX #$002C
	JSR INVENTORY_GET_ITEM_NAME
	RTL
