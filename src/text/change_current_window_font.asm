
CHANGE_CURRENT_WINDOW_FONT:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	STA @LOCAL00
	LDA CURRENT_FOCUS_WINDOW
	CMP #$FFFF
	BEQ @RETURN
	LDA @LOCAL00
	CMP #WINDOW::UNKNOWN30
	BNE @LOAD_MR_SATURN_FONT_ID
	LDA #0
	STA @LOCAL00
	BRA @SKIP_MR_SATURN_FONT_ID
@LOAD_MR_SATURN_FONT_ID:
	LDA #1
	STA @LOCAL00
@SKIP_MR_SATURN_FONT_ID:
	LDA CURRENT_FOCUS_WINDOW
	ASL
	TAX
	LDA OPEN_WINDOW_TABLE,X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	LDA @LOCAL00
	STA WINDOW_STATS+window_stats::font,X
@RETURN:
	END_C_FUNCTION
