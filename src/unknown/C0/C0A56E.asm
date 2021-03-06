
UNKNOWN_C0A56E: ;$C0A56E
	LDA a:.LOWORD(DMA_COPY_SIZE)
	LSR
	CLC
	ADC a:.LOWORD(DMA_COPY_VRAM_DEST)
	DEC
	EOR a:.LOWORD(DMA_COPY_VRAM_DEST)
	AND #$0100
	BEQ @UNKNOWN0
	LDA a:.LOWORD(DMA_COPY_RAM_SRC)
	PHA
	LDA a:.LOWORD(DMA_COPY_SIZE)
	PHA
	LDA a:.LOWORD(DMA_COPY_VRAM_DEST)
	PHA
	CLC
	ADC #$0100
	AND #$FF00
	PHA
	SEC
	SBC a:.LOWORD(DMA_COPY_VRAM_DEST)
	ASL
	STA a:.LOWORD(DMA_COPY_SIZE)
	JSL PREPARE_VRAM_COPY_COMMON
	.A16
	LDA a:.LOWORD(DMA_COPY_RAM_SRC)
	CLC
	ADC a:.LOWORD(DMA_COPY_SIZE)
	STA a:.LOWORD(DMA_COPY_RAM_SRC)
	PLA
	CLC
	ADC #$0100
	STA a:.LOWORD(DMA_COPY_VRAM_DEST)
	PLX
	PLA
	PHA
	PHX
	SEC
	SBC a:.LOWORD(DMA_COPY_SIZE)
	STA a:.LOWORD(DMA_COPY_SIZE)
	JSL PREPARE_VRAM_COPY_COMMON
	.A16
	PLA
	STA a:.LOWORD(DMA_COPY_VRAM_DEST)
	PLA
	STA a:.LOWORD(DMA_COPY_SIZE)
	PLA
	STA a:.LOWORD(DMA_COPY_RAM_SRC)
	BRA @UNKNOWN1
@UNKNOWN0:
	JSL PREPARE_VRAM_COPY_COMMON
	.A16
@UNKNOWN1:
	LDA a:.LOWORD(DMA_COPY_VRAM_DEST)
	AND #$0100
	BNE @UNKNOWN2
	LDA a:.LOWORD(DMA_COPY_VRAM_DEST)
	CLC
	ADC #$0100
	STA a:.LOWORD(DMA_COPY_VRAM_DEST)
	RTL
@UNKNOWN2:
	LDA a:.LOWORD(DMA_COPY_SIZE)
	CLC
	ADC #$0020
	AND #$FFC0
	LSR
	CLC
	ADC a:.LOWORD(DMA_COPY_VRAM_DEST)
	PHA
	EOR a:.LOWORD(DMA_COPY_VRAM_DEST)
	AND #$0100
	BEQ @UNKNOWN3
	PLA
	STA a:.LOWORD(DMA_COPY_VRAM_DEST)
	RTL
@UNKNOWN3:
	PLA
	SEC
	SBC #$0100
	STA a:.LOWORD(DMA_COPY_VRAM_DEST)
	RTL
