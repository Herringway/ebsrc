
;void AnimateTileset(void)
ANIMATE_TILESET: ;$C00172
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 24
	LDA #.LOWORD(OVERWORLD_TILESET_ANIM)
	STA $16
	STZ $14
	JMP @UNKNOWN4
@UNKNOWN0:
	LDA $16
	CLC
	ADC #overworld_tileset_anim::frames_until_update
	TAX
	LDA RAM,X
	DEC
	STA RAM,X
	BNEL @UNKNOWN3
	LDY #overworld_tileset_anim::frame_delay
	LDA ($16),Y
	STA RAM,X
	LDA $16
	CLC
	ADC #overworld_tileset_anim::destination_address2
	TAX
	LDA RAM,X
	CMP ($16) ;overworld_tileset_anim::unknown0
	BNE @UNKNOWN2
	LDA #$0000
	STA RAM,X
	LDY #overworld_tileset_anim::source_offset
	LDA ($16),Y
	LDY #overworld_tileset_anim::source_offset2
	STA ($16),Y
@UNKNOWN2:
	LDA $16
	STA $04
	INC $04
	INC $04
	INC $04
	INC $04
	LDA $16 ;overworld_tileset_anim::copy_size
	CLC
	ADC #overworld_tileset_anim::source_offset2
	STA $02
	STA $12
	LOADPTR UNKNOWN_7EC000, $06
	LDX $02
	LDA RAM,X
	CLC
	ADC $06
	STA $06
	STA $0E
	LDA $08
	STA $10
	LDY #overworld_tileset_anim::destination_address
	LDA ($16),Y
	TAY
	LDX $04
	LDA RAM,X
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	JSL PREPARE_VRAM_COPY
	.A16
	LDX $04
	LDA RAM,X
	PHA
	LDX $02
	LDA RAM,X
	PLY
	STY $02
	CLC
	ADC $02
	LDX $12
	STX $02
	STA RAM,X
	LDA $16
	CLC
	ADC #overworld_tileset_anim::destination_address2
	TAX
	LDA RAM,X
	INC
	STA RAM,X
@UNKNOWN3:
	LDA $16
	CLC
	ADC #.SIZEOF(overworld_tileset_anim)
	STA $16
	INC $14
@UNKNOWN4:
	LDA LOADED_ANIMATED_TILE_COUNT
	CMP $14
	BGTL @UNKNOWN0
	PLD
	RTL
