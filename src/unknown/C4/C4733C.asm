
UNKNOWN_C4733C:
	BEGIN_C_FUNCTION_FAR
	END_STACK_VARS
	LDA LOADED_MAP_TILE_COMBO
	ASL
	TAX
	LDA f:TILESET_TABLE,X
	JSL UNKNOWN_C006F2
	END_C_FUNCTION
