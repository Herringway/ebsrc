
ASR8:
	.A8
	CMP #$0000
	BPL ASR8_UNKNOWN1
	BMI ASR8_UNKNOWN3
ASR8_UNKNOWN0:
	LSR
ASR8_UNKNOWN1:
	DEY
	BPL ASR8_UNKNOWN0
	RTL
ASR8_UNKNOWN2:
	SEC
	ROR
ASR8_UNKNOWN3:
	DEY
	BPL ASR8_UNKNOWN2
	RTL
