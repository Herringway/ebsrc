
UNKNOWN_C0255C: ;$C0255C
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	PHA
	TDC
	ADC #$FFEA
	TCD
	PLA
	STA $04
	LDA #$8000
	STA $14
	LDA .LOWORD(UNKNOWN_7E4A58)
	BEQ @UNKNOWN3
	LDY $12
	CPY #$8000
	BCS @UNKNOWN3
	TXA
	LSR
	LSR
	LSR
	LSR
	LSR
	STA $10
	LDA $04
	DEC
	DEC
	STA $02
	STA $0E
	BRA @UNKNOWN2
@UNKNOWN0:
	LDA $0E
	STA $02
	CMP #$8000
	BCS @UNKNOWN1
	LDA $02
	LSR
	LSR
	LSR
	LSR
	LSR
	TAY
	STY $12
	LDA $14
	STA $02
	TYA
	CMP $02
	BEQ @UNKNOWN1
	LDX $10
	TYA
	JSL UNKNOWN_C0222B
	LDY $12
	TYA
	STA $14
@UNKNOWN1:
	LDA $0E
	STA $02
	INC $02
	LDA $02
	STA $0E
@UNKNOWN2:
	LDA $04
	CLC
	ADC #$0024
	PHA
	LDA $02
	PLY
	STY $02
	CMP $02
	BNE @UNKNOWN0
@UNKNOWN3:
	PLD
	RTL
