
; A = sprite, X = movement ID
CREATE_PREPARED_ENTITY_SPRITE: ;$C46507
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 22
	STA $14
	LDA ENTITY_PREPARED_X_COORDINATE
	STA $0E
	LDA ENTITY_PREPARED_Y_COORDINATE
	STA $10
	LDY #$FFFF
	LDA $14
	JSL CREATE_ENTITY
	STA $12
	ASL
	TAX
	LDA ENTITY_PREPARED_DIRECTION
	STA ENTITY_DIRECTIONS,X
	LDA $12
	PLD
	RTL
