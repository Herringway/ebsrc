
UNKNOWN_C09C02: ;$C09C02
	LDA .LOWORD(UNKNOWN_7E0A54)
	BMI @UNKNOWN2
	LDY #$FFFF
	LDA .LOWORD(UNKNOWN_7E0A52)
	BMI @UNKNOWN2
@UNKNOWN0:
	TAX
	CPX .LOWORD(UNKNOWN_7E0A4C)
	BCC @UNKNOWN1
	CPX .LOWORD(UNKNOWN_7E0A4E)
	BCC @UNKNOWN3
@UNKNOWN1:
	TXY
	LDA .LOWORD(UNKNOWN_30X2_TABLE_1),X
	BPL @UNKNOWN0
@UNKNOWN2:
	SEC
	RTS
@UNKNOWN3:
	TYA
	BPL @UNKNOWN4
	LDA .LOWORD(UNKNOWN_30X2_TABLE_1),X
	STA .LOWORD(UNKNOWN_7E0A52)
	CLC
	RTS
@UNKNOWN4:
	LDA .LOWORD(UNKNOWN_30X2_TABLE_1),X
	STA .LOWORD(UNKNOWN_30X2_TABLE_1),Y
	CLC
	RTS
