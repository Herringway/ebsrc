
MULT16:
	STY TEMP_DIVIDEND
	STA MULT_TMP3
	STZ DIV_MULT_TMP2
	INC MULT16_NUM_CALLS
	LDA MULT_TMP2
	SEP #PROC_FLAGS::ACCUM8
	TYA
	REP #PROC_FLAGS::ACCUM8
	STA f:WRMPYA
	LDY MULT_TMP2
	REP #PROC_FLAGS::ACCUM8
	LDA f:RDMPYL
	STA DIV_MULT_TMP
	TYA
	STA f:WRMPYA
	LDA MULT_TMP3
	SEP #PROC_FLAGS::ACCUM8
	LDA TEMP_DIVIDEND
	REP #PROC_FLAGS::ACCUM8
	TAY
	LDA f:RDMPYL
	CLC
	ADC MULT_TMP
	STA MULT_TMP
	TYA
	STA f:WRMPYA
	NOP
	LDA MULT_TMP
	CLC
	ADC f:RDMPYL
	STA MULT_TMP
	LDA DIV_MULT_TMP
	RTL
