
UNKNOWN_C4E51E: ;$C4E51E
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 20
	LOADPTR UNKNOWN_7F7F00+$FE, $06
	LDA CURRENT_ENTITY_SLOT
	ASL
	TAX
	LDY ENTITY_ABS_Y_TABLE,X
	STY BG3_Y_POS
	TXA
	CLC
	ADC #.LOWORD(ENTITY_SCRIPT_VAR7_TABLE)
	TAX
	LDA RAM,X
	STY $02
	CMP $02
	BCS @UNKNOWN0
	CLC
	ADC #$0008
	STA RAM,X
	LDA BG3_Y_POS
	LSR
	LSR
	LSR
	DEC
	AND #$001F
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC #$7C00
	STA $12
	LDA #$0000
	STA [$06]
	MOVE_INT $06, $0E
	LDA $12
	TAY
	LDX #$0040
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0003
	JSL PREPARE_VRAM_COPY
@UNKNOWN0:
	PLD
	RTL
