
CC_1F_15: ;$C16744
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	PHA
	TDC
	ADC #$FFEE
	TCD
	PLA
	STX $02
	LDA #$0004
	CLC
	SBC .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	BVC @UNKNOWN0
	BPL @UNKNOWN2
	BRA @UNKNOWN1
@UNKNOWN0:
	BMI @UNKNOWN2
@UNKNOWN1:
	LDA $02
	SEP #PROC_FLAGS::ACCUM8
	LDX .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	STA .LOWORD(CC_ARGUMENT_STORAGE),X
	REP #PROC_FLAGS::ACCUM8
	INC .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	LDA #.LOWORD(CC_1F_15)
	BRA @UNKNOWN5
@UNKNOWN2:
	SEP #PROC_FLAGS::INDEX8
	LDY #$0008
	LDA .LOWORD(CC_ARGUMENT_STORAGE)+1
	AND #$00FF
	JSL ASL16_ENTRY2
	STA $04
	LDA .LOWORD(CC_ARGUMENT_STORAGE)
	AND #$00FF
	ORA $04
	REP #PROC_FLAGS::INDEX8
	TAY
	STY $10
	SEP #PROC_FLAGS::INDEX8
	LDY #$0008
	LDA .LOWORD(CC_ARGUMENT_STORAGE)+3
	AND #$00FF
	JSL ASL16_ENTRY2
	STA $04
	LDA .LOWORD(CC_ARGUMENT_STORAGE)+2
	AND #$00FF
	ORA $04
	STA $0E
	LDA $02
	CMP #$00FF
	BNE @UNKNOWN3
	LDA $0E
	REP #PROC_FLAGS::INDEX8
	TAX
	LDY $10
	TYA
	JSL UNKNOWN_C06578
	BRA @UNKNOWN4
@UNKNOWN3:
	LDA $0E
	REP #PROC_FLAGS::INDEX8
	TAX
	LDY $10
	TYA
	JSL UNKNOWN_C46507
	LDX $02
	JSL UNKNOWN_C4C91A
@UNKNOWN4:
	LDA #NULL
@UNKNOWN5:
	PLD
	RTS