macro TSET1W(addr)
	DB $0E
	DW <addr>
endmacro

macro TCLR1W(addr)
	DB $4E
	DW <addr>
endmacro

macro CMPYW(addr)
	DB $5E
	DW <addr>
endmacro

macro CMPAW(addr)
	DB $65
	DW <addr>
endmacro

macro CMPAWX(addr)
	DB $75
	DW <addr>
endmacro

macro MOVWA(addr)
	DB $C5
	DW <addr>
endmacro

macro MOVWY(addr)
	DB $CC
	DW <addr>
endmacro

macro MOVWX(addr)
	DB $C9
	DW <addr>
endmacro

macro MOVWXA(addr)
	DB $D5
	DW <addr>
endmacro

macro MOVAW(addr)
	DB $E5
	DW <addr>
endmacro

macro MOVYW(addr)
	DB $EC
	DW <addr>
endmacro

macro MOVAWX(addr)
	DB $F5
	DW <addr>
endmacro
