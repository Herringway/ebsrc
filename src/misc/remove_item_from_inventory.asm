
REMOVE_ITEM_FROM_INVENTORY: ;$C18C27
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 20
	TXY
	STY $12
	TAX
	DEC
	STA $02
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA CHAR_STRUCT+char_struct::equipment+EQUIPMENT_SLOT::WEAPON,X
	AND #$00FF
	STA $04
	LDY $12
	TYA
	CMP $04
	BNE @UNKNOWN0
	LDX #$0000
	LDA $02
	INC
	JSL CHANGE_EQUIPPED_WEAPON
	BRA @UNKNOWN3
@UNKNOWN0:
	LDA CHAR_STRUCT+char_struct::equipment+EQUIPMENT_SLOT::BODY,X
	AND #$00FF
	STA $04
	TYA
	CMP $04
	BNE @UNKNOWN1
	LDX #$0000
	LDA $02
	INC
	JSL CHANGE_EQUIPPED_BODY
	BRA @UNKNOWN3
@UNKNOWN1:
	LDA CHAR_STRUCT+char_struct::equipment+EQUIPMENT_SLOT::ARMS,X
	AND #$00FF
	STA $04
	TYA
	CMP $04
	BNE @UNKNOWN2
	LDX #$0000
	LDA $02
	INC
	JSL CHANGE_EQUIPPED_ARMS
	BRA @UNKNOWN3
@UNKNOWN2:
	LDA CHAR_STRUCT+char_struct::equipment+EQUIPMENT_SLOT::OTHER,X
	AND #$00FF
	STA $04
	TYA
	CMP $04
	BNE @UNKNOWN3
	LDX #$0000
	LDA $02
	INC
	JSL CHANGE_EQUIPPED_OTHER
@UNKNOWN3:
	LDA $02
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)+char_struct::equipment+EQUIPMENT_SLOT::WEAPON
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA RAM,X
	STA $11
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	STA $04
	LDY $12
	TYA
	CMP $04
	BCS @UNKNOWN4
	SEP #PROC_FLAGS::ACCUM8
	LDA $11
	DEC
	STA RAM,X
@UNKNOWN4:
	REP #PROC_FLAGS::ACCUM8
	LDA $02
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)+char_struct::equipment+EQUIPMENT_SLOT::BODY
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA RAM,X
	STA $11
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	STA $04
	LDY $12
	TYA
	CMP $04
	BCS @UNKNOWN5
	SEP #PROC_FLAGS::ACCUM8
	LDA $11
	DEC
	STA RAM,X
@UNKNOWN5:
	REP #PROC_FLAGS::ACCUM8
	LDA $02
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)+char_struct::equipment+EQUIPMENT_SLOT::ARMS
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA RAM,X
	STA $11
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	STA $04
	LDY $12
	TYA
	CMP $04
	BCS @UNKNOWN6
	SEP #PROC_FLAGS::ACCUM8
	LDA $11
	DEC
	STA RAM,X
@UNKNOWN6:
	REP #PROC_FLAGS::ACCUM8
	LDA $02
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)+char_struct::equipment+EQUIPMENT_SLOT::OTHER
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA RAM,X
	STA $11
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	STA $04
	LDY $12
	TYA
	CMP $04
	BCS @UNKNOWN7
	SEP #PROC_FLAGS::ACCUM8
	LDA $11
	DEC
	STA RAM,X
@UNKNOWN7:
	REP #PROC_FLAGS::ACCUM8
	TYA
	DEC
	STA $04
	LDA $02
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)+char_struct::items
	CLC
	ADC $04
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA RAM,X
	STA $00
	BRA @UNKNOWN9
@UNKNOWN8:
	TYA
	DEC
	STA $04
	LDX $0F
	TXA
	CLC
	ADC $04
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA $0E
	STA RAM,X
	INY
	STY $12
@UNKNOWN9:
	LDY $12
	CPY #$000E
	BCS @UNKNOWN10
	REP #PROC_FLAGS::ACCUM8
	LDA $02
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)+char_struct::items
	TAX
	STX $0F
	LDY $12
	STY $04
	TXA
	CLC
	ADC $04
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA RAM,X
	STA $0E
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BNE @UNKNOWN8
@UNKNOWN10:
	REP #PROC_FLAGS::ACCUM8
	TYA
	DEC
	STA $04
	LDA $02
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)+char_struct::items
	CLC
	ADC $04
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	STA RAM,X
	REP #PROC_FLAGS::ACCUM8
	LOADPTR ITEM_CONFIGURATION_TABLE, $06
	LDA $00
	AND #$00FF
	OPTIMIZED_MULT $04, .SIZEOF(item)
	STA $12
	CLC
	ADC #item::type
	MOVE_INTX $06, $0A
	CLC
	ADC $0A
	STA $0A
	LDA [$0A]
	AND #$00FF
	CMP #ITEM_TYPE::TEDDY_BEAR
	BNE @UNKNOWN11
	LDA $12
	CLC
	ADC #item::strength
	CLC
	ADC $06
	STA $06
	SEP #PROC_FLAGS::ACCUM8
	LDA [$06]
	REP #PROC_FLAGS::ACCUM8
	SEC
	AND #$00FF
	SBC #$0080
	EOR #$FF80
	JSL REMOVE_CHAR_FROM_PARTY
	JSL UNKNOWN_C216DB
@UNKNOWN11:
	LDA $00
	AND #$00FF
	OPTIMIZED_MULT $04, .SIZEOF(item)
	CLC
	ADC #item::flags
	TAX
	LDA f:ITEM_CONFIGURATION_TABLE,X
	AND #$00FF
	AND #ITEM_FLAGS::TRANSFORM
	BEQ @UNKNOWN12
	SEP #PROC_FLAGS::ACCUM8
	LDA $00
	JSL UNKNOWN_C3EB1C
@UNKNOWN12:
	LDA $02
	INC
	PLD
	RTS
