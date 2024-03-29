
UNKNOWN_C2EEE7:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	END_STACK_VARS
	STZ CURRENT_BATTLE_SPRITES_ALLOCATED
	STZ CURRENT_BATTLE_SPRITEMAPS_ALLOCATED
	LOADPTR BTL_ENTRY_PTR_TABLE, @VIRTUAL0A
	LDA CURRENT_BATTLE_GROUP
	ASL
	ASL
	ASL
	CLC
	ADC @VIRTUAL0A
	STA @VIRTUAL0A
	DEREFERENCE_PTR_TO @VIRTUAL0A, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL04
	JMP @UNKNOWN1
@UNKNOWN0:
	LOADPTR ENEMY_CONFIGURATION_TABLE, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL03
	MOVE_INT @LOCAL04, @VIRTUAL0A
	INC @VIRTUAL0A
	LDA [@VIRTUAL0A]
	LDY #.SIZEOF(enemy_data)
	JSL MULT168
	STA @LOCAL02
	CLC
	ADC #enemy_data::battle_sprite
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	LDA [@VIRTUAL06]
	TAY
	STY @LOCAL01
	LDA @LOCAL02
	CLC
	ADC #enemy_data::battle_sprite_palette
	MOVE_INTX @LOCAL03, @VIRTUAL06
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	LDA [@VIRTUAL06]
	AND #$00FF
	ASL
	ASL
	ASL
	ASL
	ASL
	PHA
	LOADPTR BATTLE_SPRITE_PALETTES, @VIRTUAL06
	PLA
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL00
	LDA @VIRTUAL06+2
	STA @LOCAL00+2
	LDX #32
	LDA CURRENT_BATTLE_SPRITES_ALLOCATED
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
.IF .DEFINED(JPN)
	ADC #$0200
	CLC
	ADC #$0100
.ELSE
	ADC #$0300
.ENDIF
	JSL MEMCPY16
	LDA CURRENT_BATTLE_SPRITES_ALLOCATED
	ASL
	TAX
	LDA [@VIRTUAL0A]
	STA CURRENT_BATTLE_SPRITE_ENEMY_IDS,X
	LDY @LOCAL01
	TYA
	JSR LOAD_BATTLE_SPRITE
	MOVE_INT @LOCAL04, @VIRTUAL06
	LDA #3
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL04
	LDA @VIRTUAL06+2
	STA @LOCAL04+2
@UNKNOWN1:
	LDY #0
	LDA [@LOCAL04],Y
	AND #$00FF
	TAX
	CPX #$00FF
	BNEL @UNKNOWN0
	LDA CURRENT_BATTLE_SPRITEMAPS_ALLOCATED
	CMP #16
	BLTEQ @UNKNOWN3
	LDX #$3000
	BRA @UNKNOWN4
@UNKNOWN3:
	LDX #$2000
@UNKNOWN4:
	LOADPTR BUFFER, @LOCAL00
	LDY #$2000
	SEP #PROC_FLAGS::ACCUM8
	LDA #0
	JSL PREPARE_VRAM_COPY
	END_C_FUNCTION
