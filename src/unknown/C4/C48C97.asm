
UNKNOWN_C48C97: ;$C48C97
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 18
	STA $04
	STA $10
	LDA UNKNOWN_7E9F18
	BNE @UNKNOWN0
	LDX #.LOWORD(UNKNOWN_7E9E58+1)
	STX $0E
	STX $02
	LDA UNKNOWN_7E9F18
	OPTIMIZED_MULT $04, 3
	CLC
	ADC $02
	TAX
	LDA RAM,X
	BNE @UNKNOWN0
	LDA $10
	STA $04
	LDX $0E
	STA RAM,X
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0001
	STA UNKNOWN_7E9E58
	BRA @UNKNOWN4
@UNKNOWN0:
	.A16
	LDA UNKNOWN_7E9F18
	OPTIMIZED_MULT $04, 3
	STA $0E
	LDA #.LOWORD(UNKNOWN_7E9E58+1)
	STA $02
	LDA $10
	STA $04
	LDA $0E
	CLC
	ADC $02
	TAX
	LDA RAM,X
	CMP $04
	BNE @UNKNOWN1
	LDA $0E
	CLC
	ADC #.LOWORD(UNKNOWN_7E9E58)
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA RAM,X
	INC
	STA RAM,X
	BRA @UNKNOWN4
@UNKNOWN1:
	LDA UNKNOWN_7E9F18
	INC
	STA UNKNOWN_7E9F18
	CMP #$0040
	BRK
	BNE @UNKNOWN3
@UNKNOWN2:
	BRA @UNKNOWN2
@UNKNOWN3:
	OPTIMIZED_MULT $04, 3
	CLC
	ADC $02
	TAX
	LDA $10
	STA $04
	STA RAM,X
	LDA UNKNOWN_7E9F18
	OPTIMIZED_MULT $04, 3
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0001
	STA UNKNOWN_7E9E58,X
@UNKNOWN4:
	REP #PROC_FLAGS::ACCUM8
	PLD
	RTL
