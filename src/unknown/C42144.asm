
UNKNOWN_C42144: ;$C42144
	SEP #PROC_FLAGS::ACCUM8
	LDA $02
	REP #PROC_FLAGS::ACCUM8
	STA f:WRMPYA
	NOP
	CLC
	LDA f:RDMPYL
	STA $04
	SEP #PROC_FLAGS::ACCUM8
	LDA $00
	STA f:WRMPYB
	NOP
	NOP
	REP #PROC_FLAGS::ACCUM8
	LDA f:RDMPYL
	XBA
	SEP #PROC_FLAGS::ACCUM8
	STA $02
	REP #PROC_FLAGS::ACCUM8
	LDA $02
	ADC $04
	RTS
