
UNKNOWN_C08C87:
	LDX PRIORITY_1_SPRITE_OFFSET
	STA PRIORITY_1_SPRITEMAPS,X
	PLA
	STA PRIORITY_1_SPRITE_X,X
	TYA
	STA PRIORITY_1_SPRITE_Y,X
	LDA SPRITEMAP_BANK
	STA PRIORITY_1_SPRITEMAP_BANKS,X
	INX
	INX
	STX PRIORITY_1_SPRITE_OFFSET
	RTS
