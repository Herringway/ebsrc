
ASR32:
	LDA $08
	BPL ASR32_UNKNOWN1
	BMI ASR32_UNKNOWN3
ASR32_UNKNOWN0:
	LSR $08
	ROR $06
ASR32_UNKNOWN1:
	DEY
	BPL ASR32_UNKNOWN0
	RTL
ASR32_UNKNOWN2:
	SEC
	ROR $08
	ROR $06
ASR32_UNKNOWN3:
	DEY
	BPL ASR32_UNKNOWN2
	RTL
