
TWENTY_FIVE_PERCENT_VARIANCE: ;$C26AFD
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	PHA
	TDC
	ADC #$FFEC
	TCD
	PLA
	STA $04
	JSR a:.LOWORD(RAND_LONG)
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	TAX
	STX $12
	JSR a:.LOWORD(RAND_LONG)
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	STA $10
	LDX $12
	TXA
	SEC
	SBC #$0080
	STA $0E
	STA $02
	LDA #$0000
	CLC
	SBC $02
	BVC @UNKNOWN0
	BPL @UNKNOWN2
	BRA @UNKNOWN1
@UNKNOWN0:
	BMI @UNKNOWN2
@UNKNOWN1:
	LDA $0E
	EOR #$FFFF
	INC
	BRA @UNKNOWN3
@UNKNOWN2:
	LDA $0E
@UNKNOWN3:
	TAY
	LDA $10
	SEC
	SBC #$0080
	STA $0E
	STA $02
	LDA #$0000
	CLC
	SBC $02
	BVC @UNKNOWN4
	BPL @UNKNOWN6
	BRA @UNKNOWN5
@UNKNOWN4:
	BMI @UNKNOWN6
@UNKNOWN5:
	LDA $0E
	EOR #$FFFF
	INC
	BRA @UNKNOWN7
@UNKNOWN6:
	LDA $0E
@UNKNOWN7:
	STA $02
	TYA
	CMP $02
	BCC @UNKNOWN8
	BEQ @UNKNOWN8
	LDX $10
	LDY $02
@UNKNOWN8:
	STX $02
	LDA #$0080
	CLC
	SBC $02
	BVC @UNKNOWN9
	BPL @UNKNOWN11
	BRA @UNKNOWN10
@UNKNOWN9:
	BMI @UNKNOWN11
@UNKNOWN10:
	LDX $04
	TYA
	SEP #PROC_FLAGS::ACCUM8
	JSR a:.LOWORD(TRUNCATE_16_TO_8)
	LSR
	STA $02
	LDA $04
	SEC
	SBC $02
	STA $04
	BRA @UNKNOWN14
@UNKNOWN11:
	.A16
	TXA
	CLC
	SBC #$0080
	BVC @UNKNOWN12
	BPL @UNKNOWN14
	BRA @UNKNOWN13
@UNKNOWN12:
	BMI @UNKNOWN14
@UNKNOWN13:
	LDX $04
	TYA
	SEP #PROC_FLAGS::ACCUM8
	JSR a:.LOWORD(TRUNCATE_16_TO_8)
	LSR
	STA $02
	LDA $04
	CLC
	ADC $02
	STA $04
@UNKNOWN14:
	LDA $04
	PLD
	RTS