
UNKNOWN_C09E79: ;$C09E79
	JSR a:.LOWORD(UNKNOWN_C09D8D)
	STY $94
	ASL
	TAX
	LDA .LOWORD(CHAR_STRUCT)+.SIZEOF(char_struct)*3+char_struct::afflictions,X
	CLC
	ADC $88
	TAX
	LDA a:.LOWORD(RAM),X
	TAX
	JMP a:.LOWORD(UNKNOWN_C09C3B)
	JSR a:.LOWORD(UNKNOWN_C09D8D)
	STY $94
	TAX
	JSR a:.LOWORD(UNKNOWN_C09C3B)
	RTL