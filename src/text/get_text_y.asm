
GET_TEXT_Y:
	BEGIN_C_FUNCTION
	END_STACK_VARS
	LDA CURRENT_FOCUS_WINDOW
	ASL
	TAX
	LDA OPEN_WINDOW_TABLE,X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	LDA WINDOW_STATS+window_stats::text_y,X
	END_C_FUNCTION
