
UNKNOWN_C47143: ;$C47143
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 24
	TXY
	STY $16
	STA $04
	LDA CURRENT_ENTITY_SLOT
	STA $02
	STA $14
	LDA $02
	ASL
	TAX
	LDA ENTITY_SCRIPT_VAR6_TABLE,X
	SEC
	SBC ENTITY_ABS_X_TABLE,X
	STA $12
	STA $02
	LDA #$0000
	CLC
	SBC $02
	BRANCHLTEQS @UNKNOWN2
	LDA $12
	EOR #$FFFF
	INC
	STA $12
	BRA @UNKNOWN3
@UNKNOWN2:
	LDA $12
	STA $12
@UNKNOWN3:
	LDA $14
	STA $02
	ASL
	TAX
	LDA $12
	CMP ENTITY_SCRIPT_VAR5_TABLE,X
	BCS @UNKNOWN8
	LDA ENTITY_SCRIPT_VAR7_TABLE,X
	SEC
	SBC ENTITY_ABS_Y_TABLE,X
	STA $12
	STA $02
	LDA #$0000
	CLC
	SBC $02
	BRANCHLTEQS @UNKNOWN6
	LDA $12
	EOR #$FFFF
	INC
	STA $12
	BRA @UNKNOWN7
@UNKNOWN6:
	LDA $12
	STA $12
@UNKNOWN7:
	LDA $14
	STA $02
	ASL
	TAX
	LDA $12
	CMP ENTITY_SCRIPT_VAR5_TABLE,X
	BCS @UNKNOWN8
	LDA #$0001
	BRA @UNKNOWN11
@UNKNOWN8:
	JSL UNKNOWN_C46ADB
	TAX
	STX $12
	TXA
	JSL UNKNOWN_C47044
	LDY $16
	BNE @UNKNOWN10
	LDX $12
	TXA
	JSL UNKNOWN_C46B0A
	TAX
	STX $10
	LDA $04
	BEQ @UNKNOWN9
	TXA
	JSL UNKNOWN_C46B37
	TAX
	STX $10
@UNKNOWN9:
	LDA $02
	ASL
	CLC
	ADC #.LOWORD(ENTITY_DIRECTIONS)
	TAY
	LDA RAM,Y
	STA $0E
	TXA
	STA RAM,Y
	LDA $0E
	JSL UNKNOWN_C46AA3
	TAY
	STY $16
	LDX $10
	TXA
	JSL UNKNOWN_C46AA3
	STA $04
	LDY $16
	TYA
	CMP $04
	BEQ @UNKNOWN10
	LDA $02
	JSL UNKNOWN_C0A443_ENTRY2
@UNKNOWN10:
	LDA #$0000
@UNKNOWN11:
	PLD
	RTL
