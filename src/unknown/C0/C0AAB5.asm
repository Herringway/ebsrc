
UNKNOWN_C0AAB5: ;$C0AAB5
	JSL MOVEMENT_DATA_READ16
	STA $90
	JSL MOVEMENT_DATA_READ8
	TAX
	JSL MOVEMENT_DATA_READ8
	STY $94
	LDY $90
	JSL UNKNOWN_C497C0
	RTL