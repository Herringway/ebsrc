
VELOCITY_STORE: ;$C430EC
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 22
	LDY #$0000
	STY $14
	JMP a:.LOWORD(@UNKNOWN1)
@UNKNOWN0:
	TYA
	ASL
	ASL
	TAX
	LOADPTR MOVEMENT_SPEEDS, $0A
	TXA
	CLC
	ADC $0A
	STA $0A
	DEREFERENCE_PTR_TO $0A, $06
	MOVE_INT $06, $0E
	MOVE_INT_CONSTANT NULL, $06
	LDY $14
	TYA
	ASL
	ASL
	ASL
	ASL
	ASL
	STA $12
	CLC
	ADC #$4DE6
	TAY
	MOVE_INT_YPTRDEST $06, a:.LOWORD(RAM)
	LDA $12
	CLC
	ADC #.LOWORD(UNKNOWN_7E4DD6)
	TAY
	MOVE_INT_YPTRDEST $06, a:.LOWORD(RAM)
	LDA $12
	CLC
	ADC #$4FAE
	TAY
	MOVE_INT_YPTRDEST $06, a:.LOWORD(RAM)
	LDA $12
	CLC
	ADC #$4F9E
	TAY
	MOVE_INT_YPTRDEST $06, a:.LOWORD(RAM)
	MOVE_INT $0E, $06
	LDA $12
	CLC
	ADC #$4FA6
	TAY
	MOVE_INT_YPTRDEST $06, a:.LOWORD(RAM)
	LDA $12
	CLC
	ADC #$4DDE
	TAY
	MOVE_INT_YPTRDEST $06, a:.LOWORD(RAM)
	MOVE_INT $0E, $06
	SEC
	LDA #$0000
	SBC $06
	STA $06
	LDA #$0000
	SBC $08
	STA $08
	LDA $12
	CLC
	ADC #$4F96
	TAY
	MOVE_INT_YPTRDEST $06, a:.LOWORD(RAM)
	LDA $12
	CLC
	ADC #$4DEE
	TAY
	MOVE_INT_YPTRDEST $06, a:.LOWORD(RAM)
	LOADPTR MOVEMENT_SPEEDS_DIAGONAL, $0A
	TXA
	CLC
	ADC $0A
	STA $0A
	DEREFERENCE_PTR_TO $0A, $06
	MOVE_INT $06, $0E
	LDA $12
	CLC
	ADC #$4FAA
	TAY
	MOVE_INT_YPTRDEST $06, a:.LOWORD(RAM)
	LDA $12
	CLC
	ADC #$4FA2
	TAY
	MOVE_INT_YPTRDEST $06, a:.LOWORD(RAM)
	LDA $12
	CLC
	ADC #$4DE2
	TAY
	MOVE_INT_YPTRDEST $06, a:.LOWORD(RAM)
	LDA $12
	CLC
	ADC #$4DDA
	TAY
	MOVE_INT_YPTRDEST $06, a:.LOWORD(RAM)
	MOVE_INT $0E, $06
	SEC
	LDA #$0000
	SBC $06
	STA $06
	LDA #$0000
	SBC $08
	STA $08
	LDA $12
	CLC
	ADC #$4FB2
	TAY
	MOVE_INT_YPTRDEST $06, a:.LOWORD(RAM)
	LDA $12
	CLC
	ADC #$4F9A
	TAY
	MOVE_INT_YPTRDEST $06, a:.LOWORD(RAM)
	LDA $12
	CLC
	ADC #$4DEA
	TAY
	MOVE_INT_YPTRDEST $06, a:.LOWORD(RAM)
	LDA $12
	CLC
	ADC #$4DF2
	TAY
	MOVE_INT_YPTRDEST $06, a:.LOWORD(RAM)
	LDY $14
	INY
	STY $14
@UNKNOWN1:
	CPY #$000E
	BCS @UNKNOWN2
	BEQ @UNKNOWN2
	JMP a:.LOWORD(@UNKNOWN0)
@UNKNOWN2:
	PLD
	RTL
