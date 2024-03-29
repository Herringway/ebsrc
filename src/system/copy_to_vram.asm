
COPY_TO_VRAM:
	PHP
	PHY
	SEP #PROC_FLAGS::INDEX8
	LDY <INIDISP_MIRROR + 0
	BMI @UNKNOWN4
	LDA <DMA_COPY_SIZE + 0
	CLC
	ADC <DMA_BYTES_COPIED + 0
	CMP #$1201
	BCC @UNKNOWN1
@UNKNOWN0:
	LDA <DMA_BYTES_COPIED + 0
	BNE @UNKNOWN0
	LDA <DMA_COPY_SIZE + 0
@UNKNOWN1:
	STA <DMA_BYTES_COPIED + 0
	LDY <LAST_COMPLETED_DMA_INDEX + 0
	STY <MEMCPY_WORDS_LEFT + 0
	LDY <DMA_QUEUE_INDEX + 0
	MOVE_INT64_YPTRDEST <DMA_COPY_MODE + 0, DMA_QUEUE
	TYA
	CLC
	ADC #.SIZEOF(queued_dma)
	TAY
	CPY <MEMCPY_WORDS_LEFT + 0
	BNE @UNKNOWN3
@UNKNOWN2:
	CPY <LAST_COMPLETED_DMA_INDEX + 0
	BEQ @UNKNOWN2
@UNKNOWN3:
	STY <DMA_QUEUE_INDEX + 0
	BRA @UNKNOWN5
@UNKNOWN4:
	LDY <DMA_COPY_MODE + 0
	LDA DMA_TABLE,Y
	STA DMAP1
	LDX DMA_TABLE + 2,Y
	STX VMAIN
	LDA <DMA_COPY_SIZE + 0
	STA DAS1L
	LDA <DMA_COPY_RAM_SRC + 0
	STA A1T1L
	LDX <DMA_COPY_RAM_SRC + 2
	STX A1B1
	LDA <DMA_COPY_VRAM_DEST + 0
	STA VMADDL
	LDX #$02
	STX MDMAEN
	LDA BASE_HEAP_ADDRESS
	STA CURRENT_HEAP_ADDRESS
	.IF !.DEFINED(JPN)
		LDA #0
		STA f:DMA_TRANSFER_FLAG
	.ENDIF
@UNKNOWN5:
	REP #PROC_FLAGS::INDEX8
	PLY
	PLP
	RTS
