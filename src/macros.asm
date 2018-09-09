.macro PTR3 addr
	.WORD .LOWORD(addr)
	.BYTE .LOBYTE(.HIWORD(addr))
.endmacro
.macro PACKPTR addr
	.BYTE .LOBYTE(.HIWORD(addr))
	.WORD .LOWORD(addr)
.endmacro

.macro DISPLAY_TEXT_PTR addr
	LDA #.LOWORD(addr)
	STA $0E
	LDA #.HIWORD(addr)
	STA $10
	JSL DISPLAY_TEXT
.endmacro
