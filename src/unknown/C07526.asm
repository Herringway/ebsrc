
UNKNOWN_C07526: ;$C07526
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	PHA
	TDC
	ADC #$FFEE
	TCD
	PLA
	TXY
	STY $10
	STA $02
	TYX
	LDA $02
	JSL UNKNOWN_C07477
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BEQ @UNKNOWN0
	CMP #DOOR_TYPE::TYPE1
	BEQ @UNKNOWN1
	CMP #DOOR_TYPE::TYPE2
	BEQ @UNKNOWN2
	CMP #DOOR_TYPE::TYPE3
	BEQ @UNKNOWN3
	CMP #DOOR_TYPE::TYPE4
	BEQ @UNKNOWN4
	CMP #DOOR_TYPE::TYPE5
	BEQ @UNKNOWN5
	CMP #DOOR_TYPE::TYPE7
	BEQ @UNKNOWN5
	CMP #DOOR_TYPE::TYPE6
	BEQ @UNKNOWN6
	BRA @UNKNOWN7
@UNKNOWN0:
	LDA $5DBC
	JSR a:.LOWORD(UNKNOWN_C06A1B)
	LDA #$0000
	STA $04
	STA $0E
	BRA @UNKNOWN7
@UNKNOWN1:
	LDA $5DBC
	JSR a:.LOWORD(UNKNOWN_C06A91)
	LDA #$0001
	STA $04
	STA $0E
	BRA @UNKNOWN7
@UNKNOWN2:
	LDA $5DBC
	JSR a:.LOWORD(UNKNOWN_C06ACA)
	LDA #$0000
	STA $04
	STA $0E
	BRA @UNKNOWN7
@UNKNOWN3:
	LDY $10
	LDX $02
	LDA $5DBC
	JSR a:.LOWORD(UNKNOWN_C06E6E)
	LDA #$0000
	STA $04
	STA $0E
	BRA @UNKNOWN7
@UNKNOWN4:
	LDY $10
	LDX $02
	LDA $5DBC
	JSR a:.LOWORD(UNKNOWN_C070CB)
	LDA #$0001
	STA $04
	STA $0E
	BRA @UNKNOWN7
@UNKNOWN5:
	LDA $5DBC
	JSR a:.LOWORD(UNKNOWN_C06A8B)
	LDA #$0000
	STA $04
	STA $0E
	BRA @UNKNOWN7
@UNKNOWN6:
	LDA $5DBC
	JSR a:.LOWORD(UNKNOWN_C06A8E)
	LDA #$0000
	STA $04
	STA $0E
@UNKNOWN7:
	LDA $0E
	STA $04
	PLD
	RTL
