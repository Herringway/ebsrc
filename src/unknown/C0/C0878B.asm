
UNKNOWN_C0878B: ;$C0878B
	TAX
@UNKNOWN0:
	INC a:.LOWORD(UNKNOWN_7E002C)
	PHX
	JSL READ_JOYPAD
	PLX
	DEX
	BNE @UNKNOWN0
	RTL