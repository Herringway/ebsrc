
UNKNOWN_C0CEBE: ;$C0CEBE
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 18
	STA $10
	LDA .LOWORD(UNKNOWN_7E1A42)
	STA $0E
	ASL
	TAX
	LDA .LOWORD(UNKNOWN_30X2_TABLE_7),X
	STA $02
	STA $04
	LDA $10
	CMP $02
	BEQ @UNKNOWN5
	CMP $02
	BCC @UNKNOWN1
	BEQ @UNKNOWN1
	SEC
	SBC $02
	CMP #$8000
	BCS @UNKNOWN0
	LDX #$0000
	BRA @UNKNOWN3
@UNKNOWN0:
	LDX #$FFFF
	BRA @UNKNOWN3
@UNKNOWN1:
	STA $04
	LDA $02
	SEC
	SBC $04
	CMP #$8000
	BCS @UNKNOWN2
	LDX #$FFFF
	BRA @UNKNOWN3
@UNKNOWN2:
	LDX #$0000
@UNKNOWN3:
	BNE @UNKNOWN4
	LDA $02
	CLC
	ADC #$0800
	STA $04
	BRA @UNKNOWN5
@UNKNOWN4:
	LDA $02
	SEC
	SBC #$0800
	STA $04
@UNKNOWN5:
	LDA $0E
	ASL
	TAX
	CLC
	ADC #.LOWORD(UNKNOWN_30X2_TABLE_35)
	TAY
	LDA a:.LOWORD(RAM),Y
	CMP .LOWORD(UNKNOWN_30X2_TABLE_6),X
	BCS @UNKNOWN6
	CLC
	ADC #$0010
	STA a:.LOWORD(RAM),Y
@UNKNOWN6:
	LDA $02
	JSL UNKNOWN_C46B0A
	TAX
	STX $10
	LDA $04
	JSL UNKNOWN_C46B0A
	STA $02
	LDX $10
	TXA
	CMP $02
	BEQ @UNKNOWN7
	LDA $0E
	JSL UNKNOWN_C0A3A4_ENTRY2
@UNKNOWN7:
	LDA $04
	PLD
	RTL
