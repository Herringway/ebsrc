
UNKNOWN_C065A3: ;$C065A3
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	BRA @UNKNOWN1
@UNKNOWN0:
	LDA .LOWORD(UNKNOWN_7E5E36)
	DEC
	STA .LOWORD(UNKNOWN_7E5E36)
	ASL
	ASL
	TAY
	LDA .LOWORD(UNKNOWN_7E5E06+2),Y
	TAX
	LDA .LOWORD(UNKNOWN_7E5E06),Y
	JSL UNKNOWN_C46507
@UNKNOWN1:
	LDA .LOWORD(UNKNOWN_7E5E36)
	BNE @UNKNOWN0
	RTL
