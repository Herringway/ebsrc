
UNKNOWN_C01181: ;$C01181
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 20
	STX $02
	LDA #$0040
	JSL SBRK
	TAY
	STY $12
	SEP #PROC_FLAGS::ACCUM8
	STZ_BADOPT $0E
	LDX #$0040
	REP #PROC_FLAGS::ACCUM8
	TYA
	JSL MEMSET16
	LDA $02
	AND #$001F
	ASL
	ASL
	ASL
	ASL
	ASL
	STA $02
	LDY $12
	TYA
	STA $06
	PHB
	SEP #PROC_FLAGS::ACCUM8
	PLA
	STA $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	COPY_TO_VRAM1OFFSET $06, $02, $40, $3800, $00
	.A16
	COPY_TO_VRAM1OFFSET $06, $02, $40, $3C00, $00
	.A16
	COPY_TO_VRAM1OFFSET $06, $02, $40, $5800, $00
	.A16
	COPY_TO_VRAM1OFFSET $06, $02, $40, $5C00, $00
	.A16
	PLD
	RTS
