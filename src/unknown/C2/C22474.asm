
UNKNOWN_C22474: ;$C22474
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 16
	TAY
	LDA RAM,Y
	AND #$00FF
	BEQ @UNKNOWN0
	LDA #$0000
	STA $0E
	BRA @UNKNOWN4
@UNKNOWN0:
	TYX
	INX
	INX
	INX
	LDA RAM,X
	AND #$00FF
	BEQ @UNKNOWN1
	TXY
	LDA #$0003
	STA $0E
	BRA @UNKNOWN4
@UNKNOWN1:
	INY
	LDA #$0001
	STA $0E
	BRA @UNKNOWN3
@UNKNOWN2:
	LDA RAM,Y
	AND #$00FF
	BNE @UNKNOWN4
	LDA $0E
	INC
	STA $0E
	INY
@UNKNOWN3:
	CMP #$0007
	BCC @UNKNOWN2
	LDA #$0004
	BRA @UNKNOWN5
@UNKNOWN4:
	LDA RAM,Y
	AND #$00FF
	DEC
	ASL
	STA $02
	LDA $0E
	OPTIMIZED_MULT $04, 14
	CLC
	ADC $02
	TAX
	LDA f:STATUS_EQUIP_WINDOW_TEXT_3,X
@UNKNOWN5:
	PLD
	RTL
