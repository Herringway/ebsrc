
UNKNOWN_C02668: ;$C02668
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 50
	STY $30
	STX $2E
	STA $2C
	LDA DEBUG
	BEQ @UNKNOWN0
	JSL UNKNOWN_EFE759
	CMP #$0000
	BEQ @UNKNOWN0
	JSL RAND
	CMP #$0010
	BCS @UNKNOWN0
	STZ $2A
	LOADPTR ENEMY_BATTLE_GROUPS_TABLE, $0A
	JMP @UNKNOWN31
@UNKNOWN0:
	LDA UNKNOWN_7E4A7A
	INC
	STA UNKNOWN_7E4A7A
	AND #$000F
	BNEL @UNKNOWN10
	LDA $2C
	ASL
	ASL
	ASL
	LSR
	LSR
	LSR
	LSR
	LSR
	ASL
	STA $04
	LDA $2E
	ASL
	ASL
	ASL
	LSR
	LSR
	LSR
	LSR
	ASL
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC $04
	TAX
	LDA f:MAP_DATA_PER_SECTOR_ATTRIBUTES_TABLE,X
	AND #$0007
	BEQ @UNKNOWN2
	CMP #$0001
	BEQ @UNKNOWN3
	CMP #$0002
	BEQ @UNKNOWN4
	CMP #$0003
	BEQ @UNKNOWN5
	CMP #$0004
	BEQ @UNKNOWN6
	CMP #$0005
	BEQ @UNKNOWN7
	BRA @UNKNOWN8
@UNKNOWN2:
	LDA #$0002
	STA $02
	STA $28
	BRA @UNKNOWN8
@UNKNOWN3:
	LDA #$0000
	STA $02
	STA $28
	BRA @UNKNOWN8
@UNKNOWN4:
	LDA #$0001
	STA $02
	STA $28
	BRA @UNKNOWN8
@UNKNOWN5:
	LDA #$0000
	STA $02
	STA $28
	BRA @UNKNOWN8
@UNKNOWN6:
	LDA #$0005
	STA $02
	STA $28
	BRA @UNKNOWN8
@UNKNOWN7:
	LDA #$0001
	STA $02
	STA $28
@UNKNOWN8:
	JSL RAND
	LDX $28
	STX $02
	LDY #$0064
	JSL MODULUS16
	CMP $02
	BCC @UNKNOWN9
	JMP @UNKNOWN32
@UNKNOWN9:
	LDA #MAGIC_BUTTERFLY_BATTLEGROUP
	STA $2A
	STA UNKNOWN_7E4A72
	MOVE_INT f:BTL_ENTRY_PTR_TABLE +.SIZEOF(battle_entry_ptr_entry) * MAGIC_BUTTERFLY_BATTLEGROUP + battle_entry_ptr_entry::pointer, $0A
	JMP @UNKNOWN31
@UNKNOWN10:
	LDY $30
	BEQL @UNKNOWN32
	LDA $2C
	ASL
	ASL
	ASL
	LSR
	LSR
	LSR
	LSR
	LSR
	STA $02
	LDA $2E
	ASL
	ASL
	ASL
	LSR
	LSR
	LSR
	LSR
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC $02
	TAX
	LDA f:GLOBAL_MAP_TILESETPALETTE_DATA,X
	AND #$00FF
	LSR
	LSR
	LSR
	CMP UNKNOWN_7E436E
	BNEL @UNKNOWN32
	STY UNKNOWN_7E4A6C
	LOADPTR ENEMY_PLACEMENT_GROUPS_PTR_TABLE, $06
	TYA
	ASL
	ASL
	CLC
	ADC $06
	STA $06
	DEREFERENCE_PTR_TO $06, $0A
	MOVE_INT $0A, $06
	LDA [$06]
	STA $26
	LDA #$0004
	MOVE_INTX $0A, $06
	CLC
	ADC $06
	STA $06
	STA $22
	LDA $08
	STA $24
	MOVE_INT $0A, $06
	INC $06
	INC $06
	MOVE_INT $06, $1E
	LDA [$1E]
	AND #$00FF
	STA UNKNOWN_7E4A70
	LDX #$0000
	STX $1C
	LDA $26
	BEQ @UNKNOWN13
	JSL GET_EVENT_FLAG
	CMP #$0000
	BEQ @UNKNOWN13
	SEP #PROC_FLAGS::ACCUM8
	LDY #$0003
	LDA [$0A],Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	STA UNKNOWN_7E4A70
	LDA [$1E]
	AND #$00FF
	BEQ @UNKNOWN13
	LDX #$0008
	STX $1C
@UNKNOWN13:
	LDY UNKNOWN_7E4A70
	STY $26
	LDA PIRACY_FLAG
	BNE @UNKNOWN14
	JSL RAND
	LDY $26
	STY $02
	LDY #$0064
	JSL MULT168
	XBA
	AND #$00FF
	CMP $02
	BCC @UNKNOWN14
	JMP @UNKNOWN32
@UNKNOWN14:
	JSL RAND
	AND #$0007
	STA $02
	LDX $1C
	TXA
	CLC
	ADC $02
	STA $1A
	LDX #$0000
@UNKNOWN15:
	MOVE_INT $22, $06
	MOVE_INT $06, $0A
	LDA [$0A]
	AND #$00FF
	STA $02
	TXA
	CLC
	ADC $02
	TAX
	STX $02
	LDA $1A
	CMP $02
	BCC @UNKNOWN16
	LDA #$0003
	CLC
	ADC $06
	STA $06
	STA $22
	LDA $08
	STA $24
	BRA @UNKNOWN15
@UNKNOWN16:
	LDY #$0001
	LDA [$06],Y
	STA $2A
	STA UNKNOWN_7E4A72
	LOADPTR BTL_ENTRY_PTR_TABLE, $06
	LDA $2A
	ASL
	ASL
	ASL
	CLC
	ADC $06
	STA $06
	DEREFERENCE_PTR_TO $06, $0A
	LDA $2E
	ASL
	ASL
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC $2C
	STA $1C
	LDY #$0000
	BRA @UNKNOWN19
@UNKNOWN17:
	TYA
	ASL
	TAX
	LDA ENTITY_SCRIPT_TABLE,X
	CMP #$FFFF
	BEQ @UNKNOWN18
	LDA $2A
	CLC
	ADC #$8000
	CMP ENTITY_TPT_ENTRIES,X
	BNE @UNKNOWN18
	LDA $1C
	CMP UNKNOWN_30X2_TABLE_43,X
	BEQL @UNKNOWN32
@UNKNOWN18:
	INY
@UNKNOWN19:
	CPY #$0017
	BNE @UNKNOWN17
	JMP @UNKNOWN31
@UNKNOWN20:
	LDY #$0001
	LDA [$0A],Y
	STA $18
	LOADPTR ENEMY_CONFIGURATION_TABLE, $06
	MOVE_INT $06, $22
	LDA $18
	LDY #.SIZEOF(enemy_data)
	JSL MULT168
	STA $16
.IF .DEFINED(USA)
	INC
.ENDIF
	CLC
	ADC $06
	STA $06
	LDA [$06]
	AND #$00FF
	STA UNKNOWN_7E4A76
	LDA $16
	CLC
	ADC #enemy_data::overworld_sprite
	MOVE_INTX $22, $06
	CLC
	ADC $06
	STA $06
	LDA [$06]
	STA $26
	STA UNKNOWN_7E4A74
	LDA $16
	CLC
	ADC #enemy_data::event_script
	MOVE_INTX $22, $06
	CLC
	ADC $06
	STA $06
	LDA [$06]
	STA $16
	BNEL @UNKNOWN29
	LDA #DEFAULT_ENEMY_MOVEMENT_STYLE
	STA $16
	JMP @UNKNOWN29
@UNKNOWN22:
	LDA $18
	CMP #ENEMY::MAGIC_BUTTERFLY
	BNE @UNKNOWN23
	LDA MAGIC_BUTTERFLY
	BNEL @UNKNOWN29
@UNKNOWN23:
	LDA OVERWORLD_ENEMY_COUNT
	CMP UNKNOWN_7E4A5E
	BNE @UNKNOWN24
	INC UNKNOWN_7E4A68
	JMP @UNKNOWN29
@UNKNOWN24:
	STZ UNKNOWN_7E4A68
	STZ_BADOPT $0E
.IF .DEFINED(USA)
	STZ $10
.ELSE
	STA $10
.ENDIF
	LDY #$FFFF
	LDX $16
	LDA $26
	JSL CREATE_ENTITY
	STA $14
	STZ $1C
	BRA @UNKNOWN27
@UNKNOWN25:
	JSL RAND
	LDY UNKNOWN_7E4A62
	JSL MODULUS16
	STA $02
	LDA $2C
	ASL
	ASL
	ASL
	CLC
	ADC $02
	ASL
	ASL
	ASL
	STA $04
	JSL RAND
	LDY UNKNOWN_7E4A64
	JSL MODULUS16
	STA $02
	LDA $2E
	ASL
	ASL
	ASL
	CLC
	ADC $02
	ASL
	ASL
	ASL
	STA $02
	LDY $14
	LDX $02
	LDA $04
	JSL UNKNOWN_C05F33
	STA $12
	AND #$00D0
	BNE @UNKNOWN26
	LDY $18
	LDX $14
	LDA $12
	JSL UNKNOWN_C05DE7
	CMP #$0000
	BEQ @UNKNOWN28
@UNKNOWN26:
	INC $1C
@UNKNOWN27:
	LDA $1C
	CMP #$0014
	BNE @UNKNOWN25
	LDA $14
	JSL UNKNOWN_C02140
	BRA @UNKNOWN29
@UNKNOWN28:
	LDA $14
	ASL
	TAX
	STX $1C
	LDA $04
	STA ENTITY_ABS_X_TABLE,X
	LDA $02
	STA ENTITY_ABS_Y_TABLE,X
	LDA $2A
	CLC
	ADC #$8000
	STA ENTITY_TPT_ENTRIES,X
	LDA $18
	STA ENTITY_ENEMY_ID,X
	LDA $2E
	ASL
	ASL
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC $2C
	STA UNKNOWN_30X2_TABLE_43,X
	STZ UNKNOWN_30X2_TABLE_41,X
	JSL RAND
	LDX $1C
	STA UNKNOWN_7E3186,X
	INC OVERWORLD_ENEMY_COUNT
	LDA $18
	CMP #ENEMY::MAGIC_BUTTERFLY
	BNE @UNKNOWN29
	LDA #$0001
	STA MAGIC_BUTTERFLY
@UNKNOWN29:
	LDX UNKNOWN_7E4A6E
	DEC UNKNOWN_7E4A6E
	CPX #$0000
	BNEL @UNKNOWN22
	LDA #$0003
	CLC
	ADC $0A
	STA $0A
@UNKNOWN31:
	MOVE_INT $0A, $06
	LDA [$06]
	AND #$00FF
	TAX
	STX UNKNOWN_7E4A6E
	CPX #$00FF
	BNEL @UNKNOWN20
@UNKNOWN32:
	PLD
	RTS
