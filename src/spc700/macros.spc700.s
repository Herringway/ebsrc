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

; SFX macros

macro SFXHEADERTYPE2(val, val2, val3, val4, val5)
	DB <val>, <val2>, <val3>, <val4>, <val5>
endmacro

macro SFXHEADERTYPE4(val, val2, val3, val4)
	DB <val>, <val2>, <val3>, <val4>
endmacro

macro SFXHEADERTYPE6(val, val2, val3, val4)
	DB <val>, <val2>, <val3>, <val4>
endmacro

macro SFXHEADERTYPE10(val, val2, val3, val4)
	DB <val>, <val2>, <val3>, <val4>
endmacro

macro SFXHEADERTYPE12(val, val2, val3, val4)
	DB <val>, <val2>, <val3>, <val4>
endmacro

macro SFXHEADERTYPE14(val, val2, val3, val4)
	DB <val>, <val2>, <val3>, <val4>
endmacro

macro SFXHEADERTYPE16(val, val2, val3, val4, val5, val6)
	DB <val>, <val2>, <val3>, <val4>, <val5>, <val6>
endmacro

macro SFXNOTE(val)
	DB <val>
endmacro

macro SFXNOTELENGTH(val)
	DB <val>
endmacro

macro SFXEND
	DB $00
endmacro

macro SFXREST
	DB $C9
endmacro

macro SFXTIE
	DB $C8
endmacro

macro SFXUNKNOWNCA
	DB $CA
endmacro

macro SFXINSTRUMENT(val)
	DB $E0, <val>
endmacro

macro SFXPANNING(val)
	DB $E1, <val>
endmacro

macro SFXVOLUME(val)
	DB $ED, <val>
endmacro
