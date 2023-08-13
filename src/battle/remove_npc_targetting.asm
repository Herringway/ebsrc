
REMOVE_NPC_TARGETTING: ;$C26E77
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 16
	LDX #.LOWORD(BATTLERS_TABLE)
	LDA #$0000
	STA $0E
	BRA @UNKNOWN2
@UNKNOWN0:
	LDA a:battler::consciousness,X
	AND #$00FF
	BEQ @UNKNOWN1
	LDA a:battler::npc_id,X
	AND #$00FF
	BEQ @UNKNOWN1
	LOADPTR POWERS_OF_TWO_32BIT, $06
	LDA $0E
	ASL
	ASL
	CLC
	ADC $06
	STA $06
	DEREFERENCE_PTR_TO $06, $0A
	LDA $0A
	EOR #$FFFF
	STA $0A
	LDA $0C
	EOR #$FFFF
	STA $0C
	MOVE_INT BATTLER_TARGET_FLAGS, $06
	AND_INT_ASSIGN $06 ,$0A
	MOVE_INT $06, BATTLER_TARGET_FLAGS
@UNKNOWN1:
	TXA
	CLC
	ADC #.SIZEOF(battler)
	TAX
	LDA $0E
	INC
	STA $0E
@UNKNOWN2:
	CMP #$0020
	BCC @UNKNOWN0
	PLD
	RTL
