
MOVEMENT_CODE_05: ;$C096AA
	LDX $8A
	LDY UNKNOWN_7E12E6,X
	BNE @UNKNOWN0
	JMP .LOWORD(MOVEMENT_CODE_0C)
@UNKNOWN0:
	DEY
	LDA ($84),Y
	STA $82
	DEY
	DEY
	TYA
	STA UNKNOWN_7E12E6,X
	LDA ($84),Y
	TAY
	RTS
