
UNKNOWN_C0DC4E: ;$C0DC4E
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	TDC
	ADC #$FFF0
	TCD
	LDA a:.LOWORD(UNKNOWN_7E0002)
	AND #$00FF
	BNE @UNKNOWN0
	LDA .LOWORD(DAD_PHONE_TIMER)
	BEQ @UNKNOWN0
	DEC .LOWORD(DAD_PHONE_TIMER)
@UNKNOWN0:
	LDA .LOWORD(UNKNOWN_7E88E0)
	CMP #$FFFF
	BNE @UNKNOWN4
	LDA .LOWORD(BATTLE_MODE_FLAG)
	BNE @UNKNOWN4
	LDA .LOWORD(BATTLE_SWIRL_COUNTDOWN)
	BNE @UNKNOWN4
	LDA .LOWORD(UNKNOWN_7E4DBA)
	BNE @UNKNOWN4
	LDY #$9E3C
	STY $0E
	LDA #$0000
	STA $02
	BRA @UNKNOWN3
@UNKNOWN1:
	LDA a:.LOWORD(RAM),Y
	BEQ @UNKNOWN2
	TYX
	DEC
	STA a:.LOWORD(RAM),X
	BNE @UNKNOWN2
	INY
	INY
	LDA a:.LOWORD(RAM),Y
	STA $06
	LDA a:.LOWORD(RAM)+2,Y
	STA $08
	PHA
	LDA $06
	STA a:.LOWORD(UNKNOWN_7E00BC)
	LDA $08
	STA a:.LOWORD(UNKNOWN_7E00BE)
	PLA
	JSL UNKNOWN_C09279
@UNKNOWN2:
	LDY $0E
	TYA
	CLC
	ADC #$0006
	TAY
	STY $0E
	INC $02
@UNKNOWN3:
	LDA $02
	CMP #$0004
	BCC @UNKNOWN1
@UNKNOWN4:
	PLD
	RTS