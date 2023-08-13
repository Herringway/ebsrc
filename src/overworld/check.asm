
CHECK: ;$C1323B
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 24
	MOVE_INT_CONSTANT NULL, $0A
	CREATE_WINDOW_NEAR #WINDOW::TEXT_STANDARD
	JSL FIND_NEARBY_CHECKABLE_TPT_ENTRY
	LDA CURRENT_TPT_ENTRY
	BEQL @UNKNOWN9
	LDA CURRENT_TPT_ENTRY
	CMP #$FFFF
	BEQL @UNKNOWN9
	LDA CURRENT_TPT_ENTRY
	CMP #$FFFE
	BNE @UNKNOWN2
	MOVE_INT UNKNOWN_7E5DDE, $0A
	JMP @UNKNOWN9
@UNKNOWN2:
	LOADPTR NPC_CONFIG_TABLE, $06
	MOVE_INT $06, $14
	LDA CURRENT_TPT_ENTRY
	OPTIMIZED_MULT $04, .SIZEOF(npc_config)
	STA $12
	CLC
	ADC $06
	STA $06
	LDA [$06]
	AND #$00FF
	CMP #NPC_TYPE::PERSON
	BEQL @UNKNOWN9
	CMP #NPC_TYPE::ITEM_BOX
	BEQ @UNKNOWN5
	CMP #NPC_TYPE::OBJECT
	BEQL @UNKNOWN8
	JMP @UNKNOWN9
@UNKNOWN5:
	LDA $12
	CLC
	ADC #npc_config::item
	MOVE_INTX $14, $06
	CLC
	ADC $06
	STA $06
	LDA [$06]
	CMP #$0100
	BCS @UNKNOWN6
	STORE_INT1632 $06
	MOVE_INT $06, $0E
	JSR SET_WORKING_MEMORY
	BRA @UNKNOWN7
@UNKNOWN6:
.IF .DEFINED(JPN)
	MOVE_INT $0A, $0E
.ELSE
	MOVE_INT $0A, $06
	MOVE_INT $06, $0E
.ENDIF
	JSR SET_WORKING_MEMORY
	LDA CURRENT_TPT_ENTRY
	OPTIMIZED_MULT $04, .SIZEOF(npc_config)
	CLC
	ADC #npc_config::item
	MOVE_INTX $14, $06
	CLC
	ADC $06
	STA $06
	LDA [$06]
	SEC
	SBC #$0100
	STORE_INT1632 $06
	MOVE_INT $06, $0E
	JSR SET_ARGUMENT_MEMORY
@UNKNOWN7:
	LOADPTR NPC_CONFIG_TABLE, $06
	LDA CURRENT_TPT_ENTRY
	OPTIMIZED_MULT $04, .SIZEOF(npc_config)
	STA $12
	CLC
	ADC #npc_config::event_flag
	MOVE_INTX $06, $0A
	CLC
	ADC $0A
	STA $0A
	LDA [$0A]
	STA CURRENT_INTERACTING_EVENT_FLAG
	LDA $12
	CLC
	ADC #npc_config::text_pointer
	CLC
	ADC $06
	STA $06
	DEREFERENCE_PTR_TO $06, $0A
	BRA @UNKNOWN9
@UNKNOWN8:
	LDA $12
	CLC
	ADC #npc_config::text_pointer
	MOVE_INTX $14, $06
	CLC
	ADC $06
	STA $06
	DEREFERENCE_PTR_TO $06, $0A
@UNKNOWN9:
	MOVE_INT $0A, $1E
	PLD
	RTL
