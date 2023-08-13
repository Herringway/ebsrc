
RECALC_CHARACTER_POSTMATH_LUCK: ;$C21C5D
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 21
	TAX
	DEC
	STA $02
	STA $13
	LDA $02
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA CHAR_STRUCT+char_struct::base_luck,X
	AND #$00FF
	TAY
	STY $11
	LDA CHAR_STRUCT+char_struct::equipment+EQUIPMENT_SLOT::ARMS,X
	AND #$00FF
	BEQ @UNKNOWN0
	DEC
	STA $02
	TXA
	CLC
	ADC #.LOWORD(CHAR_STRUCT) + char_struct::items
	CLC
	ADC $02
	TAX
	LDA RAM,X
	AND #$00FF
	LDY #.SIZEOF(item)
	JSL MULT168
	CLC
	ADC #item::ep
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA f:ITEM_CONFIGURATION_TABLE,X
	REP #PROC_FLAGS::ACCUM8
	SEC
	AND #$00FF
	SBC #$0080
	EOR #$FF80
	STA $04
	LDY $11
	TYA
	CLC
	ADC $04
	TAY
	STY $11
@UNKNOWN0:
	LDA $13
	STA $02
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA CHAR_STRUCT+char_struct::equipment+EQUIPMENT_SLOT::OTHER,X
	AND #$00FF
	BEQ @UNKNOWN1
	DEC
	STA $02
	TXA
	CLC
	ADC #.LOWORD(CHAR_STRUCT) + char_struct::items
	CLC
	ADC $02
	TAX
	LDA RAM,X
	AND #$00FF
	LDY #.SIZEOF(item)
	JSL MULT168
	CLC
	ADC #item::ep
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA f:ITEM_CONFIGURATION_TABLE,X
	REP #PROC_FLAGS::ACCUM8
	SEC
	AND #$00FF
	SBC #$0080
	EOR #$FF80
	STA $04
	LDY $11
	TYA
	CLC
	ADC $04
	TAY
	STY $11
@UNKNOWN1:
	LDA $13
	STA $02
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA CHAR_STRUCT+char_struct::boosted_luck,X
	AND #$00FF
	STA $04
	LDY $11
	TYA
	CLC
	ADC $04
	STA $0F
	STA $04
	LDA #$0000
	CLC
	SBC $04
	BRANCHLTEQS @UNKNOWN4
	LDX #$0000
	BRA @UNKNOWN5
@UNKNOWN4:
	LDA $0F
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	TAX
@UNKNOWN5:
	TXA
	SEP #PROC_FLAGS::ACCUM8
	STA $0E
	REP #PROC_FLAGS::ACCUM8
	LDA $02
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA $0E
	STA CHAR_STRUCT+char_struct::luck,X
	PLD
	RTL
