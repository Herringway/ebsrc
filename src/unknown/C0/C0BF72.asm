
UNKNOWN_C0BF72: ;$C0BF72
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 42
	LDA CURRENT_ENTITY_SLOT
	STA $28
	LDA #.LOWORD(UNKNOWN_7EF200)
	STA $26
	LDA #$0038
	STA UNKNOWN_7EF200 + pathfinding::radius
	STA UNKNOWN_7EF200 + pathfinding::radius + 2
	LDA UNKNOWN_7EF200 + pathfinding::radius
	LSR
	STA $04
	STA UNKNOWN_7E4A92
	LDA UNKNOWN_7EF200 + pathfinding::radius + 2
	LSR
	STA $24
	STA UNKNOWN_7E4A94
	LDA $28
	ASL
	STA $28
	CLC
	ADC #.LOWORD(ENTITY_ABS_X_TABLE)
	STA $02
	STA $22
	LOADPTR UNKNOWN_C42A1F, $1E
	LDA $28
	CLC
	ADC #.LOWORD(ENTITY_SIZES)
	TAX
	STX $1C
	LDA RAM,X
	ASL
	TAY
	LDX $02
	LDA RAM,X
	SEC
	SBC [$1E],Y
	LSR
	LSR
	LSR
	STA UNKNOWN_7E4A8E
	LDA $28
	CLC
	ADC #.LOWORD(ENTITY_ABS_Y_TABLE)
	TAY
	STY $28
	LOADPTR UNKNOWN_C42A41, $0A
	LDX $1C
	LDA RAM,X
	ASL
	STA $1A
	LOADPTR UNKNOWN_C42AEB, $06
	MOVE_INT $06, $16
	LDA $1A
	CLC
	ADC $06
	STA $06
	LDA [$06]
	PHA
	LDA $1A
	PHA
	MOVE_INT $0A, $06
	PLA
	CLC
	ADC $06
	STA $06
	LDA [$06]
	STA $02
	LDA RAM,Y
	SEC
	SBC $02
	PLY
	STY $02
	CLC
	ADC $02
	LSR
	LSR
	LSR
	STA UNKNOWN_7E4A90
	LDA RAM,X
	ASL
	STA $1C
	TAY
	LDA $22
	STA $02
	LDX $02
	LDA RAM,X
	SEC
	SBC [$1E],Y
	LSR
	LSR
	LSR
	SEC
	SBC $04
	TAX
	LDA $1C
	MOVE_INTY $16, $06
	CLC
	ADC $06
	STA $06
	LDA [$06]
	PHA
	LDA $1C
	MOVE_INTY $0A, $06
	CLC
	ADC $06
	STA $06
	LDA [$06]
	STA $02
	LDY $28
	LDA RAM,Y
	SEC
	SBC $02
	PLY
	STY $02
	CLC
	ADC $02
	LSR
	LSR
	LSR
	SEC
	SBC $24
	STA $28
	LDA $04
	AND #$003F
	STA UNKNOWN_7EF200 + pathfinding::targets + 2
	LDA UNKNOWN_7E4A94
	AND #$003F
	STA UNKNOWN_7EF200 + pathfinding::targets
	LDA $28
	STA $0E
	LDA #$0001
	STA $10
	LDA #$00FC
	STA $12
	LDA #$0032
	STA $14
	TXY
	LDX #$0001
	LDA $26
	JSR UNKNOWN_C0BA35
	PLD
	RTL
