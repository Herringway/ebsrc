
UNKNOWN_C09506: ;$C09506
	LDX $8A
	LDA .LOWORD(MAP_ENTITY_SLEEP_FRAMES),X
	BNE @RETURN
	LDY .LOWORD(UNKNOWN_30X2_TABLE_21),X
	LDA .LOWORD(UNKNOWN_30X2_TABLE_22),X
	STA $82
	TXA
	ASL
	ASL
	ASL
	ADC #$15A2
	STA $84
@UNKNOWN0:
	LDA [$80],Y
	INY
	AND #$00FF
	CMP #$0070
	BCS @UNKNOWN1
	ASL
	TAX
	JSR (.LOWORD(MOVEMENT_CTRL_CODES_PTR_TABLE),X)
	BRA @UNKNOWN2
@UNKNOWN1:
	STA $90
	AND #$000F
	STA .LOWORD(MAP_ENTITY_SLEEP_FRAMES),X
	LDA $90
	AND #$0070
	LSR
	LSR
	LSR
	TAX
	JSR (.LOWORD(MOVEMENT_CTRL_CODES_PTR_TABLE)+138,X)
@UNKNOWN2:
	LDX $8A
	LDA .LOWORD(MAP_ENTITY_SLEEP_FRAMES),X
	BEQ @UNKNOWN0
	TYA
	STA .LOWORD(UNKNOWN_30X2_TABLE_21),X
	LDA $82
	STA .LOWORD(UNKNOWN_30X2_TABLE_22),X
@RETURN:
	DEC .LOWORD(MAP_ENTITY_SLEEP_FRAMES),X
	RTS
