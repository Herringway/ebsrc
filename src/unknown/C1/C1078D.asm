
UNKNOWN_C1078D:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	END_STACK_VARS
	COPY_TO_VRAM2 BG2_BUFFER + (ACTIVE_HPPP_WINDOW_Y_OFFSET * 32) * 2, VRAM::TEXT_LAYER_TILEMAP + TILEMAP_COORDS 0, ACTIVE_HPPP_WINDOW_Y_OFFSET, $240, 0
	END_C_FUNCTION
