.macro PTR3 addr
	.WORD .LOWORD(addr)
	.BYTE .LOBYTE(.HIWORD(addr))
.endmacro
.macro PACKPTR addr
	.BYTE .LOBYTE(.HIWORD(addr))
	.WORD .LOWORD(addr)
.endmacro

.macro DISPLAY_TEXT_PTR addr
	LOADPTR addr, $0E
	JSL DISPLAY_TEXT
.endmacro


.macro LOADPTR ptr, var
	LDA #.LOWORD(ptr)
	STA var
	LDA #.HIWORD(ptr)
	STA var+2
.endmacro
