
LOAD_KIRBY_SPRITE:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	END_STACK_VARS
	COPY_TO_VRAM1 KIRBY, VRAM::OBJ, $200, 0
	END_C_FUNCTION
