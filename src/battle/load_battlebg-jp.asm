;A: Layer 1 ID, X: Layer 2 ID, Y: Letterbox style
LOAD_BATTLE_BG: ;$C2D121
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 50
	STY $30
	STX $04
	STX $2E
	STA $02
	STZ .LOWORD(RED_FLASH_DURATION)
	STZ .LOWORD(GREEN_FLASH_DURATION)
	STZ .LOWORD(SHAKE_DURATION)
	STZ .LOWORD(WOBBLE_DURATION)
	STZ .LOWORD(UNKNOWN_7EAD90)
	STZ .LOWORD(VERTICAL_SHAKE_HOLD_DURATION)
	STZ .LOWORD(VERTICAL_SHAKE_DURATION)
	LDA $30
	AND #$0003
	BEQ @NO_LETTERBOX
	CMP #LETTERBOX_STYLE::LARGE
	BEQ @LARGE_LETTERBOX
	CMP #LETTERBOX_STYLE::MEDIUM
	BEQ @MEDIUM_LETTERBOX
	CMP #LETTERBOX_STYLE::SMALL
	BEQ @SMALL_LETTERBOX
	BRA @LETTERBOX_SETUP_DONE
@NO_LETTERBOX:
	STZ .LOWORD(UNKNOWN_7EADB2)
	LDA #SCREEN_Y_RESOLUTION
	STA .LOWORD(UNKNOWN_7EADB4)
	BRA @LETTERBOX_SETUP_DONE
@LARGE_LETTERBOX:
	LDA #LETTERBOX_SIZE_LARGE - 1
	STA .LOWORD(UNKNOWN_7EADB2)
	LDA #SCREEN_Y_RESOLUTION - LETTERBOX_SIZE_LARGE
	STA .LOWORD(UNKNOWN_7EADB4)
	BRA @LETTERBOX_SETUP_DONE
@MEDIUM_LETTERBOX:
	LDA #LETTERBOX_SIZE_MEDIUM - 1
	STA .LOWORD(UNKNOWN_7EADB2)
	LDA #SCREEN_Y_RESOLUTION - LETTERBOX_SIZE_MEDIUM
	STA .LOWORD(UNKNOWN_7EADB4)
	BRA @LETTERBOX_SETUP_DONE
@SMALL_LETTERBOX:
	LDA #LETTERBOX_SIZE_SMALL - 1
	STA .LOWORD(UNKNOWN_7EADB2)
	LDA #SCREEN_Y_RESOLUTION - LETTERBOX_SIZE_SMALL
	STA .LOWORD(UNKNOWN_7EADB4)
@LETTERBOX_SETUP_DONE:
	STZ .LOWORD(UNKNOWN_7EADB6)
	LDX #$7000
	STX .LOWORD(UNKNOWN_7EADCE)
	STX .LOWORD(UNKNOWN_7EADCC)
	STZ .LOWORD(UNKNOWN_7EADD0)
	LDA #$FFFF
	STA .LOWORD(UNKNOWN_7EADD2)
	LOADPTR UNKNOWN_7F0000, $06
	MOVE_INT $06, $2A
	LOADPTR BATTLEBG_GFX_POINTERS, $06
	LDA $02
	OPTIMIZED_MULT $04, .SIZEOF(bg_layer_config_entry)
	TAX
	LDA f:BG_DATA_TABLE,X
	AND #$00FF
	ASL
	ASL
	CLC
	ADC $06
	STA $06
	DEREFERENCE_PTR_TO $06, $0A
	MOVE_INT $0A, $0E
	MOVE_INT $2A, $06
	MOVE_INT $06, $12
	JSL DECOMP
	LDA .LOWORD(CURRENT_BATTLE_GROUP)
	CMP #$01DE ;GIYGAS_5 + POKEY
	BNE @UNKNOWN5
	LDY #$3000
	LDX #$5C00
	LDA #BG_TILEMAP_SIZE::NORMAL
	JSL SET_BG2_VRAM_LOCATION
	COPY_TO_VRAM1P $06, $3000, $5000, $00
	BRA @UNKNOWN6
@UNKNOWN5:
	COPY_TO_VRAM1P $06, $1000, $2000, $00
@UNKNOWN6:
	.A16
	LOADPTR UNKNOWN_7F0000, $06
	MOVE_INT $06, $2A
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	STA [$06]
	REP #PROC_FLAGS::ACCUM8
	COPY_TO_VRAM1P $06, $5800, $800, $03
	COPY_TO_VRAM1P $06, $0000, $800, $03
	.A16
	LOADPTR BG_DATA_TABLE, $0A
	LDA $02
	OPTIMIZED_MULT $04, 17
	STA $28
	MOVE_INTX $0A, $06
	CLC
	ADC $06
	STA $06
	LDA [$06]
	AND #$00FF
	OPTIMIZED_MULT $04, 4
	PHA
	LOADPTR BATTLEBG_ARR_POINTERS, $06
	PLA
	CLC
	ADC $06
	STA $06
	DEREFERENCE_PTR_TO $06, $06
	MOVE_INT $06, $0E
	MOVE_INT $2A, $06
	MOVE_INT $06, $12
	JSL DECOMP
	LDA $28
	INC
	INC
	MOVE_INTX $0A, $06
	CLC
	ADC $06
	STA $06
	LDA [$06]
	AND #$00FF
	CMP #$0004
	BEQ @UNKNOWN7
	JMP a:.LOWORD(@UNKNOWN15)
@UNKNOWN7:
	LDA #$0009
	JSL UNKNOWN_C08D79
	LDA #$0000
	STA $28
	BRA @UNKNOWN9
@UNKNOWN8:
	STA $06
	STZ $08
	CLC
	VAR_ADD_CONST_INT_ASSIGN $7F0001, $06
	SEP #PROC_FLAGS::ACCUM8
	LDA [$06]
	AND #$00DF
	ORA #$0008
	STA [$06]
	REP #PROC_FLAGS::ACCUM8
	LDA $28
	INC
	INC
	STA $28
@UNKNOWN9:
	CMP #$0800
	BCC @UNKNOWN8
	LOADPTR UNKNOWN_7F0000, $0A
	COPY_TO_VRAM1P $0A, $5C00, $800, $00
	.A16
	LOADPTR BG_DATA_TABLE, $06
	MOVE_INT $06, $24
	LDA $02
	OPTIMIZED_MULT $04, .SIZEOF(bg_layer_config_entry)
	TAX
	STX $22
	TXA
	CLC
	ADC $06
	STA $06
	STA $0E
	LDA $08
	STA $10
	LDA #.LOWORD(LOADED_BG_DATA_LAYER1)
	JSL UNKNOWN_C2CFE5
	LDA #.LOWORD(LOADED_BG_DATA_LAYER1) + loaded_bg_data::palette_pointer
	STA $02
	LDA #.LOWORD(CUR_MAP_PAL)
	LDX $02
	STA a:.LOWORD(RAM),X
	LDY #.LOWORD(LOADED_BG_DATA_LAYER1) + loaded_bg_data::palette
	STY $20
	LOADPTR BATTLEBG_PALETTE_POINTERS, $1C
	LDX $22
	TXA
	INC
	MOVE_INTX $24, $06
	CLC
	ADC $06
	STA $06
	STA $18
	LDA $08
	STA $1A
	MOVE_INT $1C, $06
	LDA [$18]
	AND #$00FF
	ASL
	ASL
	CLC
	ADC $06
	STA $06
	DEREFERENCE_PTR_TO $06, $06
	MOVE_INT $06, $0E
	LDX #.SIZEOF(loaded_bg_data::palette)
	LDY $20
	TYA
	JSL MEMCPY16
	MOVE_INT $1C, $06
	LDA [$18]
	AND #$00FF
	ASL
	ASL
	CLC
	ADC $06
	STA $06
	DEREFERENCE_PTR_TO $06, $06
	MOVE_INT $06, $0E
	LDX #.SIZEOF(loaded_bg_data::palette2)
	LDA #.LOWORD(LOADED_BG_DATA_LAYER1) + loaded_bg_data::palette2
	JSL MEMCPY16
	LDY $20
	TYA
	STA $06
	PHB
	SEP #PROC_FLAGS::ACCUM8
	PLA
	STA $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	LDX #$0020
	STX $28
	LDX $02
	LDA a:.LOWORD(RAM),X
	LDX $28
	JSL MEMCPY16
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0002
	STA .LOWORD(LOADED_BG_DATA_LAYER1)
	LDX #$0000
	REP #PROC_FLAGS::ACCUM8
	LDA #.LOWORD(LOADED_BG_DATA_LAYER1)
	JSL GENERATE_BATTLEBG_FRAME
	LDX #.LOWORD(LOADED_BG_DATA_LAYER2)
	STX $20
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	STA a:.LOWORD(RAM),X
	REP #PROC_FLAGS::ACCUM8
	LDA #$0001
	STA .LOWORD(UNKNOWN_7EAD8A)
	JSL UNKNOWN_C0AFCD
	LDA #$0017
	STA .LOWORD(UNKNOWN_7EADAE)
	LDA #$0015
	STA .LOWORD(UNKNOWN_7EADB0)
	LDA $2E
	STA $04
	BNE @UNKNOWN10
	JMP a:.LOWORD(@UNKNOWN23)
@UNKNOWN10:
	LDA $30
	AND #$0004
	BNE @UNKNOWN11
	JMP a:.LOWORD(@UNKNOWN14)
@UNKNOWN11:
	LDA #$0007
	STA .LOWORD(UNKNOWN_7EAD8A)
	JSL UNKNOWN_C0AFCD
	LDA $04
	OPTIMIZED_MULT $04, 17
	MOVE_INTX $24, $06
	CLC
	ADC $06
	STA $06
	STA $24
	LDA $08
	STA $26
	LDA [$06]
	AND #$00FF
	ASL
	ASL
	PHA
	LOADPTR BATTLEBG_GFX_POINTERS, $06
	PLA
	CLC
	ADC $06
	STA $06
	DEREFERENCE_PTR_TO $06, $06
	MOVE_INT $06, $0E
	MOVE_INT $0A, $12
	JSL DECOMP
	COPY_TO_VRAM1P $0A, $0000, $2000, $00
	.A16
	MOVE_INT $24, $06
	LDA [$06]
	AND #$00FF
	ASL
	ASL
	PHA
	LOADPTR BATTLEBG_ARR_POINTERS, $06
	PLA
	CLC
	ADC $06
	STA $06
	DEREFERENCE_PTR_TO $06, $06
	MOVE_INT $06, $0E
	MOVE_INT $0A, $12
	JSL DECOMP
	LDA #$0000
	STA $30
	BRA @UNKNOWN13
@UNKNOWN12:
	STA $06
	STZ $08
	CLC
	VAR_ADD_CONST_INT_ASSIGN $7F0001, $06
	SEP #PROC_FLAGS::ACCUM8
	LDA [$06]
	AND #$00DF
	ORA #$0010
	STA [$06]
	REP #PROC_FLAGS::ACCUM8
	LDA $30
	INC
	INC
	STA $30
@UNKNOWN13:
	CMP #$0800
	BCC @UNKNOWN12
	COPY_TO_VRAM1 UNKNOWN_7F0000, $5800, $800, $00
	.A16
	LOADPTR BG_DATA_TABLE, $06
	LDA $2E
	STA $04
	OPTIMIZED_MULT $04, .SIZEOF(bg_layer_config_entry)
	TAX
	STX $20
	LDA #.LOWORD(LOADED_BG_DATA_LAYER2)
	STA $04
	TXA
	MOVE_INTX $06, $0A
	CLC
	ADC $0A
	STA $0A
	STA $0E
	LDA $0C
	STA $10
	LDA $04
	JSL UNKNOWN_C2CFE5
	LDA #.LOWORD(LOADED_BG_DATA_LAYER2) + loaded_bg_data::palette_pointer
	STA $02
	LDA #.LOWORD(CUR_MAP_PAL) + 64
	LDX $02
	STA a:.LOWORD(RAM),X
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0001
	LDX $04
	STA a:.LOWORD(RAM),X
	LDY #.LOWORD(LOADED_BG_DATA_LAYER2) + loaded_bg_data::palette
	STY $30
	REP #PROC_FLAGS::ACCUM8
	LOADPTR BATTLEBG_PALETTE_POINTERS, $0A
	LDX $20
	TXA
	INC
	CLC
	ADC $06
	STA $06
	STA $2A
	LDA $08
	STA $2C
	LDA [$06]
	AND #$00FF
	ASL
	ASL
	MOVE_INTX $0A, $06
	CLC
	ADC $06
	STA $06
	DEREFERENCE_PTR_TO $06, $06
	MOVE_INT $06, $0E
	LDX #.SIZEOF(loaded_bg_data::palette)
	LDY $30
	TYA
	JSL MEMCPY16
	MOVE_INT $2A, $06
	LDA [$06]
	AND #$00FF
	ASL
	ASL
	CLC
	ADC $0A
	STA $0A
	DEREFERENCE_PTR_TO $0A, $06
	MOVE_INT $06, $0E
	LDX #.SIZEOF(loaded_bg_data::palette2)
	LDA #.LOWORD(LOADED_BG_DATA_LAYER2) + loaded_bg_data::palette2
	JSL MEMCPY16
	LDY $30
	TYA
	STA $06
	PHB
	SEP #PROC_FLAGS::ACCUM8
	PLA
	STA $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	LDX #$0020
	STX $28
	LDX $02
	LDA a:.LOWORD(RAM),X
	LDX $28
	JSL MEMCPY16
	LDX #$0001
	LDA $04
	JSL GENERATE_BATTLEBG_FRAME
	LDA #$0215
	STA .LOWORD(UNKNOWN_7EADAE)
	LDA #$0014
	STA .LOWORD(UNKNOWN_7EADB0)
	JMP a:.LOWORD(@UNKNOWN23)
@UNKNOWN14:
	LDA $04
	OPTIMIZED_MULT $04, 17
	MOVE_INTX $24, $06
	CLC
	ADC $06
	STA $06
	STA $0E
	LDA $08
	STA $10
	LDX $20
	TXA
	JSL UNKNOWN_C2CFE5
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0001
	STA .LOWORD(LOADED_BG_DATA_LAYER2) + 2
	LDA #$0002
	LDX $20
	STA a:.LOWORD(RAM),X
	JMP a:.LOWORD(@UNKNOWN23)
@UNKNOWN15:
	.A16
	LDA #$0008
	JSL UNKNOWN_C08D79
	LDY #$6000
	LDX #$7C00
	LDA #BG_TILEMAP_SIZE::NORMAL
	JSL SET_BG1_VRAM_LOCATION
	LDY #$0000
	LDX #$5800
	TYA
	JSL SET_BG2_VRAM_LOCATION
	LDY #$1000
	LDX #$5C00
	LDA #BG_TILEMAP_SIZE::NORMAL
	JSL SET_BG3_VRAM_LOCATION
	LDY #$3000
	LDX #$0C00
	LDA #BG_TILEMAP_SIZE::NORMAL
	JSL SET_BG4_VRAM_LOCATION
	LDA #$0000
	STA $30
	BRA @UNKNOWN17
@UNKNOWN16:
	STA $06
	STZ $08
	CLC
	VAR_ADD_CONST_INT_ASSIGN $7F0001, $06
	SEP #PROC_FLAGS::ACCUM8
	LDA [$06]
	AND #$00DF
	STA [$06]
	REP #PROC_FLAGS::ACCUM8
	LDA $30
	INC
	INC
	STA $30
@UNKNOWN17:
	CMP #$0800
	BCC @UNKNOWN16
	LOADPTR UNKNOWN_7F0000, $06
	MOVE_INT $06, $24
	COPY_TO_VRAM1P $06, $5C00, $800, $00
	.A16
	LOADPTR BG_DATA_TABLE, $1C
	LDA $02
	OPTIMIZED_MULT $04, .SIZEOF(bg_layer_config_entry)
	TAX
	STX $22
	MOVE_INT $1C, $0A
	TXA
	CLC
	ADC $0A
	STA $0A
	STA $0E
	LDA $0C
	STA $10
	LDA #.LOWORD(LOADED_BG_DATA_LAYER1)
	JSL UNKNOWN_C2CFE5
	LDA #.LOWORD(LOADED_BG_DATA_LAYER1) + loaded_bg_data::palette_pointer
	STA $02
	LDA #.LOWORD(CUR_MAP_PAL) + 64
	LDX $02
	STA a:.LOWORD(RAM),X
	LDY #.LOWORD(LOADED_BG_DATA_LAYER1) + loaded_bg_data::palette
	STY $30
	LOADPTR BATTLEBG_PALETTE_POINTERS, $18
	MOVE_INT $1C, $0A
	LDX $22
	TXA
	INC
	CLC
	ADC $0A
	STA $0A
	MOVE_INT $18, $06
	LDA [$0A]
	AND #$00FF
	ASL
	ASL
	CLC
	ADC $06
	STA $06
	DEREFERENCE_PTR_TO $06, $06
	MOVE_INT $06, $0E
	LDX #.SIZEOF(loaded_bg_data::palette)
	LDY $30
	TYA
	JSL MEMCPY16
	MOVE_INT $18, $06
	LDA [$0A]
	AND #$00FF
	ASL
	ASL
	CLC
	ADC $06
	STA $06
	DEREFERENCE_PTR_TO $06, $0A
	MOVE_INT $0A, $0E
	LDX #.SIZEOF(loaded_bg_data::palette2)
	LDA #.LOWORD(LOADED_BG_DATA_LAYER1) + loaded_bg_data::palette2
	JSL MEMCPY16
	LDY $30
	TYA
	STA $0A
	PHB
	SEP #PROC_FLAGS::ACCUM8
	PLA
	STA $0C
	STZ $0D
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $0A, $0E
	LDX #$0020
	STX $22
	LDX $02
	LDA a:.LOWORD(RAM),X
	LDX $22
	JSL MEMCPY16
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0003
	STA .LOWORD(LOADED_BG_DATA_LAYER1)
	REP #PROC_FLAGS::ACCUM8
	LDA $2E
	STA $04
	BNE @UNKNOWN18
	JMP a:.LOWORD(@UNKNOWN21)
@UNKNOWN18:
	LDA #$0003
	STA .LOWORD(UNKNOWN_7EAD8A)
	JSL UNKNOWN_C0AFCD
	MOVE_INT $1C, $0A
	LDA $04
	OPTIMIZED_MULT $04, 17
	CLC
	ADC $0A
	STA $0A
	LOADPTR BATTLEBG_GFX_POINTERS, $06
	LDA [$0A]
	AND #$00FF
	OPTIMIZED_MULT $04, 4
	CLC
	ADC $06
	STA $06
	DEREFERENCE_PTR_TO $06, $06
	MOVE_INT $06, $0E
	MOVE_INT $24, $06
	MOVE_INT $06, $12
	JSL DECOMP
	COPY_TO_VRAM1P $06, $3000, $1800, $00
	.A16
	LOADPTR BATTLEBG_ARR_POINTERS, $06
	LDA [$0A]
	AND #$00FF
	ASL
	ASL
	CLC
	ADC $06
	STA $06
	DEREFERENCE_PTR_TO $06, $0A
	MOVE_INT $0A, $0E
	MOVE_INT $24, $06
	MOVE_INT $06, $12
	JSL DECOMP
	LDA #$0000
	STA $30
	BRA @UNKNOWN20
@UNKNOWN19:
	STA $06
	STZ $08
	CLC
	VAR_ADD_CONST_INT_ASSIGN $7F0001, $06
	SEP #PROC_FLAGS::ACCUM8
	LDA [$06]
	AND #$00DF
	STA [$06]
	REP #PROC_FLAGS::ACCUM8
	LDA $30
	INC
	INC
	STA $30
@UNKNOWN20:
	CMP #$0800
	BCC @UNKNOWN19
	COPY_TO_VRAM1 UNKNOWN_7F0000, $C00, $800, $00
	.A16
	LOADPTR BG_DATA_TABLE, $06
	LDA $2E
	STA $04
	OPTIMIZED_MULT $04, .SIZEOF(bg_layer_config_entry)
	TAX
	STX $22
	LDY #.LOWORD(LOADED_BG_DATA_LAYER2)
	STY $16
	TXA
	MOVE_INTX $06, $0A
	CLC
	ADC $0A
	STA $0A
	STA $0E
	LDA $0C
	STA $10
	TYA
	JSL UNKNOWN_C2CFE5
	LDA #.LOWORD(LOADED_BG_DATA_LAYER2) + loaded_bg_data::palette_pointer
	STA $04
	LDA #.LOWORD(CUR_MAP_PAL) + 128
	LDX $04
	STA a:.LOWORD(RAM),X
	LDA #.LOWORD(LOADED_BG_DATA_LAYER2) + loaded_bg_data::palette
	STA $02
	LOADPTR BATTLEBG_PALETTE_POINTERS, $0A
	LDX $22
	TXA
	INC
	CLC
	ADC $06
	STA $06
	STA $18
	LDA $08
	STA $1A
	LDA [$06]
	AND #$00FF
	ASL
	ASL
	MOVE_INTX $0A, $06
	CLC
	ADC $06
	STA $06
	DEREFERENCE_PTR_TO $06, $06
	MOVE_INT $06, $0E
	LDX #.SIZEOF(loaded_bg_data::palette)
	LDA $02
	JSL MEMCPY16
	MOVE_INT $18, $06
	LDA [$06]
	AND #$00FF
	ASL
	ASL
	CLC
	ADC $0A
	STA $0A
	DEREFERENCE_PTR_TO $0A, $06
	MOVE_INT $06, $0E
	LDX #.SIZEOF(loaded_bg_data::palette2)
	LDA #.LOWORD(LOADED_BG_DATA_LAYER2) + loaded_bg_data::palette2
	JSL MEMCPY16
	LDA $02
	STA $06
	PHB
	SEP #PROC_FLAGS::ACCUM8
	PLA
	STA $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	LDX #$0020
	STX $22
	LDX $04
	LDA a:.LOWORD(RAM),X
	LDX $22
	JSL MEMCPY16
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0004
	LDY $16
	STA a:.LOWORD(RAM),Y
	BRA @UNKNOWN22
@UNKNOWN21:
	SEP #PROC_FLAGS::ACCUM8
	STZ .LOWORD(LOADED_BG_DATA_LAYER2)
@UNKNOWN22:
	REP #PROC_FLAGS::ACCUM8
	LDA #$0817
	STA .LOWORD(UNKNOWN_7EADAE)
	LDA #$0013
	STA .LOWORD(UNKNOWN_7EADB0)
@UNKNOWN23:
	REP #PROC_FLAGS::ACCUM8
	STZ .LOWORD(UNKNOWN_7EADAC)
	LDA .LOWORD(LOADED_BG_DATA_LAYER2)
	AND #$00FF
	BEQ @UNKNOWN24
	LDA .LOWORD(LOADED_BG_DATA_LAYER2) + loaded_bg_data::distortion_styles
	AND #$00FF
	BEQ @UNKNOWN24
	LDA #$0001
	STA .LOWORD(UNKNOWN_7EADAC)
@UNKNOWN24:
	JSL UNKNOWN_C2D0AC
	LDA .LOWORD(UNKNOWN_7EADB2)
	BEQ @UNKNOWN25
	LDA #$0002
	JSL UNKNOWN_C429E8
@UNKNOWN25:
	JSL UNKNOWN_C2E9ED
	PLD
	RTL