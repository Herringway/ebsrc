
UNKNOWN_C05503: ;$C05503
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 22
	TAY
	LDA UNKNOWN_7E5DA4
	STA $14
	TXA
	ASL
	TAX
	LDA f:UNKNOWN_C42AA7,X
	STA $12
	LDA UNKNOWN_7E5DAE
	LSR
	LSR
	LSR
	STA $04
	TYA
	LSR
	LSR
	LSR
	AND #$003F
	STA $02
	LDA $04
	AND #$003F
	ASL
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC $02
	TAX
	LDA UNKNOWN_7EE000,X
	AND #$00FF
	STA $02
	LDA $14
	ORA $02
	STA $02
	STA $10
	TYA
	CLC
	ADC #$0007
	LSR
	LSR
	LSR
	TAX
	STX $14
	LDA #$0000
	STA $0E
	BRA @UNKNOWN1
@UNKNOWN0:
	TXA
	AND #$003F
	STA $02
	LDA $04
	AND #$003F
	ASL
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC $02
	TAX
	LDA UNKNOWN_7EE000,X
	AND #$00FF
	PHA
	LDA $10
	STA $02
	PLY
	STY $02
	ORA $02
	STA $02
	STA $10
	LDX $14
	INX
	STX $14
	LDA $0E
	INC
	STA $0E
@UNKNOWN1:
	CMP $12
	BCC @UNKNOWN0
	LDA $02
	STA UNKNOWN_7E5DA4
	PLD
	RTS
