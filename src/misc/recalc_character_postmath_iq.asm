
RECALC_CHARACTER_POSTMATH_IQ: ;$C21D7D
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA CHAR_STRUCT+char_struct::base_iq,X
	CLC
	ADC CHAR_STRUCT+char_struct::boosted_iq,X
	STA CHAR_STRUCT+char_struct::iq,X
	RTL
