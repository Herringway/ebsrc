
SEPARATE_DECIMAL_DIGITS: ;$C20D3F
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	PHA
	TDC
	ADC #$FFF0
	TCD
	PLA
	STA $0E
	LDX #.LOWORD(HPPP_WINDOW_DIGIT_BUFFER) + 2
	; Get 1s digit
	LDY #10
	JSL MODULUS16
	SEP #PROC_FLAGS::ACCUM8
	STA a:.LOWORD(RAM),X
	; Get 10s digit
	DEX
	LDY #10
	REP #PROC_FLAGS::ACCUM8
	LDA $0E
	JSL DIVISION16S_DIVISOR_POSITIVE
	STA $0E
	LDY #10
	JSL MODULUS16
	SEP #PROC_FLAGS::ACCUM8
	STA a:.LOWORD(RAM),X
	DEX
	; Get 100s digit
	LDY #10
	REP #PROC_FLAGS::ACCUM8
	LDA $0E
	JSL DIVISION16S_DIVISOR_POSITIVE
	SEP #PROC_FLAGS::ACCUM8
	STA a:.LOWORD(RAM),X
	REP #PROC_FLAGS::ACCUM8
	PLD
	RTS