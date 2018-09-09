.macro PTR3 addr
	.WORD .LOWORD(addr)
	.BYTE .LOBYTE(.HIWORD(addr))
.endmacro
.macro PACKPTR addr
	.BYTE .LOBYTE(.HIWORD(addr))
	.WORD .LOWORD(addr)
.endmacro