
UNKNOWN_C0A88D:
	JSL MOVEMENT_DATA_READ16
	PHA
	STY $94
	JSL MOVEMENT_DATA_READ16
	STY $94
	PLX
	JSL UNKNOWN_C46E4F
	RTL
