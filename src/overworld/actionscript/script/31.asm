
MOVEMENT_CODE_31:
	LDA [$80],Y
	AND #$00FF
	ASL
	TAX
	INY
	LDA [$80],Y
	STA ENTITY_BG_HORIZONTAL_OFFSET_LOW,X
	STZ ENTITY_BG_HORIZONTAL_OFFSET_HIGH,X
	INY
	INY
	RTS
