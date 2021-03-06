
TRANSFER_TO_VRAM: ;$C085B7
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8
	STA a:.LOWORD(UNKNOWN_7E0091)
@UNKNOWN0:
	LDA a:.LOWORD(UNKNOWN_7E0099)
	BNE @UNKNOWN0
	MOVE_INT $0E, a:.LOWORD(DMA_COPY_RAM_SRC)
	STY a:.LOWORD(DMA_COPY_VRAM_DEST)
	CPX #$1201
	BCC @UNKNOWN3
	LDA #$1200
	STA a:.LOWORD(DMA_COPY_SIZE)
@UNKNOWN1:
	CPX #$1201
	BCC @UNKNOWN3
@UNKNOWN2:
	LDA a:.LOWORD(UNKNOWN_7E0099)
	BNE @UNKNOWN2
	PHX
	JSL PREPARE_VRAM_COPY_COMMON
	.A16
	LDA a:.LOWORD(DMA_COPY_RAM_SRC)
	CLC
	ADC #$1200
	STA a:.LOWORD(DMA_COPY_RAM_SRC)
	LDA a:.LOWORD(DMA_COPY_VRAM_DEST)
	CLC
	ADC #$0900
	STA a:.LOWORD(DMA_COPY_VRAM_DEST)
	PLA
	SEC
	SBC #$1200
	TAX
	BRA @UNKNOWN1
@UNKNOWN3:
	STX a:.LOWORD(DMA_COPY_SIZE)
@UNKNOWN4:
	LDA a:.LOWORD(UNKNOWN_7E0099)
	BNE @UNKNOWN4
	JSL PREPARE_VRAM_COPY_COMMON
	.A16
@UNKNOWN5:
	LDA a:.LOWORD(UNKNOWN_7E0099)
	BNE @UNKNOWN5
	RTL
