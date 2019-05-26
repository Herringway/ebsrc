
UNKNOWN_C0404F: ;$C0404F
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	PHA
	TDC
	ADC #$FFEE
	TCD
	PLA
	STA $10
	LDX #$FFFF
	STX $0E
	LDA .LOWORD(UNKNOWN_7E5D9A)
	BEQ @UNKNOWN0
	TXA
	JMP a:.LOWORD(@UNKNOWN10)
@UNKNOWN0:
	LDA $10
	ASL
	TAX
	LDA f:UNKNOWN_C3E12C,X
	STA $10
	LDA a:.LOWORD(PAD_1_STATE)
	AND #PAD::UP | PAD::DOWN | PAD::LEFT | PAD::RIGHT
	CMP #PAD::UP
	BEQ @UNKNOWN1
	CMP #PAD::UP | PAD::RIGHT
	BEQ @UNKNOWN2
	CMP #PAD::RIGHT
	BEQ @UNKNOWN3
	CMP #PAD::DOWN | PAD::RIGHT
	BEQ @UNKNOWN4
	CMP #PAD::DOWN
	BEQ @UNKNOWN5
	CMP #PAD::DOWN | PAD::LEFT
	BEQ @UNKNOWN6
	CMP #PAD::LEFT
	BEQ @UNKNOWN7
	CMP #PAD::UP | PAD::LEFT
	BEQ @UNKNOWN8
	BRA @UNKNOWN9
@UNKNOWN1:
	LDA $10
	AND #$0001
	BEQ @UNKNOWN9
	LDX #$0000
	STX $0E
	BRA @UNKNOWN9
@UNKNOWN2:
	LDA $10
	AND #$0002
	BEQ @UNKNOWN9
	LDX #$0001
	STX $0E
	BRA @UNKNOWN9
@UNKNOWN3:
	LDA $10
	AND #$0004
	BEQ @UNKNOWN9
	LDX #$0002
	STX $0E
	BRA @UNKNOWN9
@UNKNOWN4:
	LDA $10
	AND #$0008
	BEQ @UNKNOWN9
	LDX #$0003
	STX $0E
	BRA @UNKNOWN9
@UNKNOWN5:
	LDA $10
	AND #$0010
	BEQ @UNKNOWN9
	LDX #$0004
	STX $0E
	BRA @UNKNOWN9
@UNKNOWN6:
	LDA $10
	AND #$0020
	BEQ @UNKNOWN9
	LDX #$0005
	STX $0E
	BRA @UNKNOWN9
@UNKNOWN7:
	LDA $10
	AND #$0040
	BEQ @UNKNOWN9
	LDX #$0006
	STX $0E
	BRA @UNKNOWN9
@UNKNOWN8:
	LDA $10
	AND #$0080
	BEQ @UNKNOWN9
	LDX #$0007
	STX $0E
@UNKNOWN9:
	LDX $0E
	TXA
@UNKNOWN10:
	PLD
	RTL
