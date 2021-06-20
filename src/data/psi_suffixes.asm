; Can't use unicode, unfortunately.
PSI_SUFFIXES: ;$C3F112
.IF .DEFINED(JPN)
	ASCIIZ "\x2A" ;α
	ASCIIZ "\x2B" ;β
	ASCIIZ "\x2C" ;γ
	ASCIIZ "\x2D" ;Σ
	ASCIIZ "\x2E" ;Ω
.ELSE
	EBTEXTZ "~"
	EBTEXTZ "^"
	EBTEXTZ "["
	EBTEXTZ "]"
	EBTEXTZ "#"
.ENDIF
