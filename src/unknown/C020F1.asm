
UNKNOWN_C020F1: ;$C020F1
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	TDC
	ADC #$FFF0
	TCD
	LDA .LOWORD(UNKNOWN_7E1A42)
	STA $02
	ASL
	TAY
	STY $0E
	LDA .LOWORD(UNKNOWN_30X2_TABLE_15),Y
	JSL UNKNOWN_C01B15
	LDX #$0000
	LDA $02
	JSL ALLOC_SPRITE_MEM
	LDY $0E
	LDA .LOWORD(LOADED_TPT_ENTRIES),Y
	AND #$F000
	CMP #$8000
	BNE @UNKNOWN0
	DEC .LOWORD(UNKNOWN_7E4A5C)
@UNKNOWN0:
	LDA $02
	ASL
	TAX
	LDA .LOWORD(UNKNOWN_30X2_TABLE_42),X
	CMP #$00E1
	BNE @UNKNOWN1
	STZ .LOWORD(MAGIC_BUTTERFLY)
@UNKNOWN1:
	LDA $02
	ASL
	TAX
	LDA #$FFFF
	STA .LOWORD(LOADED_TPT_ENTRIES_SPRITES),X
	STA .LOWORD(LOADED_TPT_ENTRIES),X
	PLD
	RTL
