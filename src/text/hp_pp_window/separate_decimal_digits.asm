
SEPARATE_DECIMAL_DIGITS:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16 ;int
	END_STACK_VARS
	STA @LOCAL00
	LDX #.LOWORD(HPPP_WINDOW_DIGIT_BUFFER) + 2
	; Get 1s digit
	LDY #10
	JSL MODULUS16
	SEP #PROC_FLAGS::ACCUM8
	STA __BSS_START__,X
	; Get 10s digit
	DEX
	LDY #10
	REP #PROC_FLAGS::ACCUM8
	LDA @LOCAL00
	JSL DIVISION16S_DIVISOR_POSITIVE
	STA @LOCAL00
	LDY #10
	JSL MODULUS16
	SEP #PROC_FLAGS::ACCUM8
	STA __BSS_START__,X
	DEX
	; Get 100s digit
	LDY #10
	REP #PROC_FLAGS::ACCUM8
	LDA @LOCAL00
	JSL DIVISION16S_DIVISOR_POSITIVE
	SEP #PROC_FLAGS::ACCUM8
	STA __BSS_START__,X
	REP #PROC_FLAGS::ACCUM8
	END_C_FUNCTION
