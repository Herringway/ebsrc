
MOVEMENT_CODE_3A:
	LDA [$80],Y
	AND #$00FF
	ASL
	TAX
	STZ ENTITY_BG_HORIZONTAL_VELOCITY_HIGH,X
	STZ ENTITY_BG_HORIZONTAL_VELOCITY_LOW,X
	STZ ENTITY_BG_VERTICAL_VELOCITY_HIGH,X
	STZ ENTITY_BG_VERTICAL_VELOCITY_LOW,X
	INY
	RTS
