
UNKNOWN_C4CED8: ;$C4CED8
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 30
	MOVE_INT UNKNOWN_7EB4AA, $0A
	LOADPTR UNKNOWN_7F7F00, $06
	MOVE_INT $06, $1A
	JSL RAND
	AND #$003F
	STA $18
	ASL
	CLC
	ADC $06
	STA $06
	LDA [$06]
	BEQ @UNKNOWN1
@UNKNOWN0:
	LDA $18
	INC
	AND #$003F
	STA $18
	ASL
	MOVE_INTX $1A, $06
	CLC
	ADC $06
	STA $06
	LDA [$06]
	BNE @UNKNOWN0
@UNKNOWN1:
	LDA $18
	ASL
	MOVE_INTX $1A, $06
	CLC
	ADC $06
	STA $06
	LDA #$0001
	STA [$06]
	LDA $18
	LSR
	LSR
	LSR
	STA $16
	LDY #$0008
	LDA $18
	JSL MODULUS16
	STA $14
	STZ $12
	JMP @UNKNOWN10
@UNKNOWN2:
	LDY #$0004
	LDA [$0A],Y
	CMP #$0004
	BNEL @UNKNOWN9
	LDA #$0000
	STA $04
	BRA @UNKNOWN7
@UNKNOWN4:
	LDA #$0000
	STA $02
	STA $10
	BRA @UNKNOWN6
@UNKNOWN5:
	LDA $10
	STA $02
	ASL
	ASL
	ASL
	ASL
	ASL
	PHA
	LDA $16
	ASL
	STA $02
	LDA $04
	JSL MULT16
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC $02
	PLY
	STY $02
	CLC
	ADC $02
	STA $18
	LDA $14
	STA $0E
	LDA $18
	TAY
	STY $18
	LDY #$000A
	LDA [$0A],Y
	TAX
	LDY #$000C
	LDA [$0A],Y
	LDY $18
	JSL UNKNOWN_C42965
	LDA $10
	STA $02
	INC $02
	LDA $02
	STA $10
@UNKNOWN6:
	LDY #$0006
	LDA [$0A],Y
	LSR
	LSR
	LSR
	TAY
	LDA $02
	STY $02
	CMP $02
	BCC @UNKNOWN5
	INC $04
@UNKNOWN7:
	LDY #$0008
	LDA [$0A],Y
	LSR
	LSR
	LSR
	STA $02
	LDA $04
	CMP $02
	BCCL @UNKNOWN4
	MOVE_INT $0A, $06
	LDA [$06]
	TAX
	LDY #$000C
	LDA [$0A],Y
	JSL UNKNOWN_C429AE
@UNKNOWN9:
	LDA #$0014
	CLC
	ADC $0A
	STA $0A
	INC $12
@UNKNOWN10:
	LDA UNKNOWN_7EB4A6
	CMP $12
	BGTL @UNKNOWN2
	PLD
	RTL
