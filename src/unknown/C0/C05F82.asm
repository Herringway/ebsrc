
UNKNOWN_C05F82: ;$C05F82
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 20
	STX $12
	STA $10
	STZ UNKNOWN_7E5DA4
	TYA
	ASL
	TAX
	LDY ENTITY_SIZES,X
	STY $0E
	TYA
	ASL
	STA $02
	LDX $12
	TXA
	LDX $02
	SEC
	SBC f:UNKNOWN_C42A41,X
	LDX $02
	CLC
	ADC f:UNKNOWN_C42AEB,X
	STA UNKNOWN_7E5DAE
	LDX $02
	LDA $10
	SEC
	SBC f:UNKNOWN_C42A1F,X
	STA UNKNOWN_7E5DAC
	TYX
	JSR UNKNOWN_C05503
	LDY $0E
	TYX
	LDA UNKNOWN_7E5DAC
	JSR UNKNOWN_C0559C
	LDA UNKNOWN_7E5DA4
	PLD
	RTL
