
;an HDMA table (indirect) for battle backgrounds
UNKNOWN_C0AE2D:
	.BYTE $E4
	.WORD .LOWORD(ANIMATED_BACKGROUND_LAYER_2_HDMA_BUFFER)
	.BYTE $FC
	.WORD .LOWORD(ANIMATED_BACKGROUND_LAYER_2_HDMA_BUFFER) + 200
	.BYTE $00
