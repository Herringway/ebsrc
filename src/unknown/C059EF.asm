
UNKNOWN_C059EF: ;$C059EF
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	TDC
	ADC #$FFEC
	TCD
	LDY #$FFFF
	STY $12
	LDA #$0000
	STA $02
	TAX
	STX $10
	STZ .LOWORD(UNKNOWN_7E5DA4)
	LDA #$0001
	STA .LOWORD(UNKNOWN_7E5DB4)
	LDA #$0024
	JSR a:.LOWORD(UNKNOWN_C05769)
	STA $0E
	CMP #$0000
	BNE @UNKNOWN1
	INC .LOWORD(UNKNOWN_7E5DAC)
	INC .LOWORD(UNKNOWN_7E5DAC)
	INC .LOWORD(UNKNOWN_7E5DAC)
	INC .LOWORD(UNKNOWN_7E5DAC)
	LDA #$0024
	JSR a:.LOWORD(UNKNOWN_C05769)
	STA $0E
	CMP #$0000
	BNE @UNKNOWN0
	LDA #$0002
	JMP a:.LOWORD(@UNKNOWN14)
@UNKNOWN0:
	LDA #$0001
	STA $02
@UNKNOWN1:
	LDA $0E
	AND #$0024
	CMP #$0024
	BNE @UNKNOWN3
	LDA .LOWORD(UNKNOWN_7E5DAE)
	AND #$0007
	BEQ @UNKNOWN3
	LDA $02
	BEQ @UNKNOWN2
	LDA #$0002
	JMP a:.LOWORD(@UNKNOWN14)
@UNKNOWN2:
	LDA #$FFFF
	JMP a:.LOWORD(@UNKNOWN14)
@UNKNOWN3:
	LDA .LOWORD(UNKNOWN_7E5DAC)
	INC
	INC
	INC
	INC
	LSR
	LSR
	LSR
	AND #$003F
	STA $04
	LDA .LOWORD(UNKNOWN_7E5DAE)
	DEC
	DEC
	LSR
	LSR
	LSR
	AND #$003F
	ASL
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC $04
	TAX
	LDA $E000,X
	AND #$00FF
	AND #$00C0
	BEQ @UNKNOWN4
	LDX $10
	TXA
	ORA #$0001
	TAX
	STX $10
@UNKNOWN4:
	LDA .LOWORD(UNKNOWN_7E5DAC)
	INC
	INC
	INC
	INC
	LSR
	LSR
	LSR
	AND #$003F
	STA $04
	LDA .LOWORD(UNKNOWN_7E5DAE)
	CLC
	ADC #$0009
	LSR
	LSR
	LSR
	AND #$003F
	ASL
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC $04
	TAX
	LDA $E000,X
	AND #$00FF
	AND #$00C0
	BEQ @UNKNOWN5
	LDX $10
	TXA
	ORA #$0002
	TAX
	STX $10
@UNKNOWN5:
	LDA $0E
	CMP #$0024
	BEQ @UNKNOWN6
	CMP #$0004
	BEQ @UNKNOWN10
	CMP #$0020
	BEQ @UNKNOWN11
	BRA @UNKNOWN12
@UNKNOWN6:
	LDX $10
	CPX #$0001
	BNE @UNKNOWN7
	LDY #$0003
	STY $12
	BRA @UNKNOWN12
@UNKNOWN7:
	CPX #$0002
	BNE @UNKNOWN8
	LDY #$0001
	STY $12
	BRA @UNKNOWN12
@UNKNOWN8:
	CPX #$0000
	BNE @UNKNOWN12
	LDA .LOWORD(UNKNOWN_7E5DAE)
	AND #$0007
	CMP #$0004
	BCS @UNKNOWN9
	LDY #$0001
	STY $12
	BRA @UNKNOWN12
@UNKNOWN9:
	LDY #$0003
	STY $12
	BRA @UNKNOWN12
@UNKNOWN10:
	LDX $10
	TXA
	AND #$0002
	BNE @UNKNOWN12
	LDY #$0003
	STY $12
	BRA @UNKNOWN12
@UNKNOWN11:
	LDX $10
	TXA
	AND #$0001
	BNE @UNKNOWN12
	LDY #$0001
	STY $12
@UNKNOWN12:
	LDA $02
	BEQ @UNKNOWN13
	LDY $12
	CPY #$FFFF
	BNE @UNKNOWN13
	LDA #$0002
	BRA @UNKNOWN14
@UNKNOWN13:
	LDY $12
	TYA
@UNKNOWN14:
	PLD
	RTS
