
COPY_TO_VRAM: ;$C0865F
	PHP
	PHY
	SEP #PROC_FLAGS::INDEX8
	LDY $0D
	BMI @UNKNOWN4
	LDA $92
	CLC
	ADC $99
	CMP #$1201
	BCC @UNKNOWN1
@UNKNOWN0:
	LDA $99
	BNE @UNKNOWN0
	LDA $92
@UNKNOWN1:
	STA $99
	LDY $01
	STY $A5
	LDY $00
	MOVE_INT_YPTRDEST $91, $0400
	MOVE_INT_YPTRDEST $95, $0404
	TYA
	CLC
	ADC #$0008
	TAY
	CPY $A5
	BNE @UNKNOWN3
@UNKNOWN2:
	CPY $01
	BEQ @UNKNOWN2
@UNKNOWN3:
	STY $00
	BRA @UNKNOWN5
@UNKNOWN4:
	LDY $91
	LDA .LOWORD(DMA_TABLE),Y
	STA DMAP1
	LDX .LOWORD(DMA_TABLE) + 2,Y
	STX VMAIN
	LDA $92
	STA DAS1L
	LDA $94
	STA A1T1L
	LDX $96
	STX A1B1
	LDA $97
	STA VMADDL
	LDX #$0002
	STX MDMAEN
	LDA a:.LOWORD(UNKNOWN_7E00A3)
	STA a:.LOWORD(UNKNOWN_7E00A1)
	LDA #$0000
	STA DMA_TRANSFER_FLAG
@UNKNOWN5:
	REP #PROC_FLAGS::INDEX8
	PLY
	PLP
	RTS
