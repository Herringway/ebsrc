
UNKNOWN_C0A9B3: ;$C0A9B3
	JSL MOVEMENT_DATA_READ16
	PHA
	STY $94
	JSL MOVEMENT_DATA_READ16
	PHA
	STY $94
	JSL MOVEMENT_DATA_READ16
	STY $94
	TAY
	PLX
	PLA
	JSL UNKNOWN_C4EBAD
	RTL