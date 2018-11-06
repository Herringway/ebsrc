
CC_1D_0D: ;$C150E4
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	PHA
	TDC
	ADC #$FFE8
	TCD
	PLA
	STX $02
	LDA #$0002
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
	LDA #.LOWORD(CC_1D_0D)
	BRA @UNKNOWN8
@UNKNOWN2:
	LDA .LOWORD(CC_ARGUMENT_STORAGE)
	AND #$00FF
	STA $16
	LDA .LOWORD(CC_ARGUMENT_STORAGE)+1
	AND #$00FF
	TAX
	LDY #$0000
	STY $14
	CPX #$0000
	BEQ @UNKNOWN3
	STX $12
	BRA @UNKNOWN4
@UNKNOWN3:
	JSR a:.LOWORD(GET_ARGUMENT_MEMORY)
	LDA $06
	TAX
	STX $12
@UNKNOWN4:
	LDA $16
	BNE @UNKNOWN5
	JSR a:.LOWORD(GET_WORKING_MEMORY)
	LDA $06
@UNKNOWN5:
	LDX $12
	JSL CHECK_STATUS_GROUP
	CMP $02
	BNE @UNKNOWN6
	LDY #$0001
	STY $14
@UNKNOWN6:
	LDY $14
	TYA
	STA $06
	STZ $08
	BPL @UNKNOWN7
	DEC $08
@UNKNOWN7:
	LDA $06
	STA $0E
	LDA $08
	STA $10
	JSR a:.LOWORD(SET_WORKING_MEMORY)
	LDA #NULL
@UNKNOWN8:
	PLD
	RTS