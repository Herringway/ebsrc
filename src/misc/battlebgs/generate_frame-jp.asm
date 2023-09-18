
;Responsible for animating battle bgs? A: Pointer to bg data, X: layer ID
GENERATE_BATTLEBG_FRAME: ;$C2C92D
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 31
	STX $1D
	STA $1B
	LDA ($1B)
	AND #$00FF
	STA $19
	LDY #loaded_bg_data::freeze_palette_scrolling
	LDA ($1B),Y
	AND #$00FF
	BNEL @TARGET_BG_LAYER_SELECTION_COMPLETE
	LDA $1B
	CLC
	ADC #loaded_bg_data::palette_change_duration_left
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA __BSS_START__,X
	STA $18
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BEQL @UNKNOWN23
	SEP #PROC_FLAGS::ACCUM8
	LDA $18
	DEC
	STA __BSS_START__,X
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BNEL @UNKNOWN23
	LDY #loaded_bg_data::palette_change_speed
	SEP #PROC_FLAGS::ACCUM8
	LDA ($1B),Y
	STA __BSS_START__,X
	LDY #loaded_bg_data::palette_shifting_style
	REP #PROC_FLAGS::ACCUM8
	LDA ($1B),Y
	AND #$00FF
	CMP #$0002
	BEQ @PALETTE_SHIFTING_STYLE2
	CMP #$0001
	BEQL @PALETTE_SHIFTING_STYLE1
	CMP #$0003
	BEQL @PALETTE_SHIFTING_STYLE3
	JMP @PALETTE_SHIFTING_DONE
@PALETTE_SHIFTING_STYLE2:
	LDY #loaded_bg_data::palette_cycle_2_last
	SEP #PROC_FLAGS::ACCUM8
	LDA ($1B),Y
	LDY #loaded_bg_data::palette_cycle_2_first
	SEC
	SBC ($1B),Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	STA $02
	INC $02
	LDX #$0000
	STX $16
	BRA @UNKNOWN9
@UNKNOWN6:
	LDY #loaded_bg_data::palette_cycle_2_step
	LDA ($1B),Y
	AND #$00FF
	STA $04
	TXA
	CMP $04
	BCS @UNKNOWN7
	TXA
	CLC
	ADC $02
	SEC
	SBC $04
	STA $14
	BRA @UNKNOWN8
@UNKNOWN7:
	TXA
	SEC
	SBC $04
	STA $14
@UNKNOWN8:
	LDY #loaded_bg_data::palette_cycle_2_first
	LDA ($1B),Y
	AND #$00FF
	TAY
	STY $12
	STX $04
	TYA
	CLC
	ADC $04
	ASL
	LDY #loaded_bg_data::palette_pointer
	CLC
	ADC ($1B),Y
	PHA
	LDA $14
	STA $04
	LDY $12
	TYA
	CLC
	ADC $04
	ASL
	CLC
	ADC $1B
	TAX
	LDA __BSS_START__+12,X
	PLX
	STA __BSS_START__,X
	LDX $16
	INX
	STX $16
@UNKNOWN9:
	TXA
	CMP $02
	BCC @UNKNOWN6
	LDA $1B
	CLC
	ADC #loaded_bg_data::palette_cycle_2_step
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA __BSS_START__,X
	INC
	STA __BSS_START__,X
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	CMP $02
	BCC @PALETTE_SHIFTING_STYLE1
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	STA __BSS_START__,X
@PALETTE_SHIFTING_STYLE1:
	LDY #loaded_bg_data::palette_cycle_1_last
	SEP #PROC_FLAGS::ACCUM8
	LDA ($1B),Y
	LDY #loaded_bg_data::palette_cycle_1_first
	SEC
	SBC ($1B),Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	STA $02
	INC $02
	LDX #$0000
	STX $16
	BRA @UNKNOWN14
@UNKNOWN11:
	LDY #loaded_bg_data::palette_cycle_1_step
	LDA ($1B),Y
	AND #$00FF
	STA $04
	TXA
	CMP $04
	BCS @UNKNOWN12
	TXA
	CLC
	ADC $02
	SEC
	SBC $04
	STA $14
	BRA @UNKNOWN13
@UNKNOWN12:
	TXA
	SEC
	SBC $04
	STA $14
@UNKNOWN13:
	LDY #loaded_bg_data::palette_cycle_1_first
	LDA ($1B),Y
	AND #$00FF
	TAY
	STY $12
	STX $04
	TYA
	CLC
	ADC $04
	ASL
	LDY #$004C
	CLC
	ADC ($1B),Y
	PHA
	LDA $14
	STA $04
	LDY $12
	TYA
	CLC
	ADC $04
	ASL
	CLC
	ADC $1B
	TAX
	LDA __BSS_START__+12,X
	PLX
	STA __BSS_START__,X
	LDX $16
	INX
	STX $16
@UNKNOWN14:
	TXA
	CMP $02
	BCC @UNKNOWN11
	LDA $1B
	CLC
	ADC #loaded_bg_data::palette_cycle_1_step
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA __BSS_START__,X
	INC
	STA __BSS_START__,X
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	CMP $02
	BCCL @PALETTE_SHIFTING_DONE
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	STA __BSS_START__,X
	JMP @PALETTE_SHIFTING_DONE
@PALETTE_SHIFTING_STYLE3:
	LDY #loaded_bg_data::palette_cycle_1_last
	SEP #PROC_FLAGS::ACCUM8
	LDA ($1B),Y
	LDY #loaded_bg_data::palette_cycle_1_first
	SEC
	SBC ($1B),Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	INC
	STA $10
	LDY #$0000
	STY $0E
	BRA @UNKNOWN20
@UNKNOWN17:
	LDY #loaded_bg_data::palette_cycle_1_step
	LDA ($1B),Y
	AND #$00FF
	STA $04
	LDY $0E
	TYA
	CLC
	ADC $04
	STA $02
	STA $14
	LDA $10
	ASL
	STA $04
	LDA $02
	CMP $04
	BCC @UNKNOWN18
	LDA $02
	SEC
	SBC $04
	STA $02
	STA $14
	BRA @UNKNOWN19
@UNKNOWN18:
	LDA $10
	PHA
	LDA $02
	PLY
	STY $02
	CMP $02
	BCC @UNKNOWN19
	LDA $14
	STA $02
	LDA $04
	DEC
	SEC
	SBC $02
	STA $02
	STA $14
@UNKNOWN19:
	LDY #loaded_bg_data::palette_cycle_1_first
	LDA ($1B),Y
	AND #$00FF
	TAX
	LDY $0E
	STY $02
	TXA
	CLC
	ADC $02
	ASL
	LDY #$004C
	CLC
	ADC ($1B),Y
	PHA
	LDA $14
	STA $02
	TXA
	CLC
	ADC $02
	ASL
	CLC
	ADC $1B
	TAX
	LDA __BSS_START__+12,X
	PLX
	STA __BSS_START__,X
	LDY $0E
	INY
	STY $0E
@UNKNOWN20:
	LDA $10
	STA $02
	TYA
	CMP $02
	BCCL @UNKNOWN17
	LDA $1B
	CLC
	ADC #loaded_bg_data::palette_cycle_1_step
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA __BSS_START__,X
	STA $00
	INC $00
	LDA $00
	STA __BSS_START__,X
	REP #PROC_FLAGS::ACCUM8
	LDA $10
	ASL
	STA $02
	LDA $00
	AND #$00FF
	CMP $02
	BCC @PALETTE_SHIFTING_DONE
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	STA __BSS_START__,X
@PALETTE_SHIFTING_DONE:
	REP #PROC_FLAGS::ACCUM8
	LDA #$0018
	JSL UNKNOWN_C0856B
@UNKNOWN23:
	LDA GIYGAS_PHASE
	CMP #GIYGAS_PHASES::DEFEATED
	BEQL @RETURN
	LDA $1B
	CLC
	ADC #loaded_bg_data::scrolling_duration_left
	TAX
	LDA __BSS_START__,X
	BEQL @UNKNOWN29
	DEC
	STA __BSS_START__,X
	BNEL @UNKNOWN29
	LDA $1B
	CLC
	ADC #loaded_bg_data::current_scrolling_movement
	TAX
	STX $0E
	SEP #PROC_FLAGS::ACCUM8
	LDA __BSS_START__,X
	INC
	AND #$0003
	STA __BSS_START__,X
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	CLC
	ADC $1B
	TAX
	LDA __BSS_START__+78,X
	AND #$00FF
	STA $10
	BNE @UNKNOWN27
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	LDX $0E
	STA __BSS_START__,X
	LDX $1B
	REP #PROC_FLAGS::ACCUM8
	LDA a:loaded_bg_data::scrolling_movements,X
	AND #$00FF
	STA $10
@UNKNOWN27:
	CMP #$0000
	BEQL @UNKNOWN29
	LOADPTR BG_SCROLLING_TABLE, $06
	LDA $10
	OPTIMIZED_MULT $04, 10
	STA $12
	MOVE_INTX $06, $0A
	CLC
	ADC $0A
	STA $0A
	LDA [$0A]
	LDY #loaded_bg_data::scrolling_duration_left
	STA ($1B),Y
	LDA $12
	;bg_scrolling_entry::horizontal_movement
	INC
	INC
	MOVE_INTX $06, $0A
	CLC
	ADC $0A
	STA $0A
	LDA [$0A]
	LDY #loaded_bg_data::horizontal_velocity
	STA ($1B),Y
	LDA $12
	;bg_scrolling_entry::vertical_movement
	INC
	INC
	INC
	INC
	MOVE_INTX $06, $0A
	CLC
	ADC $0A
	STA $0A
	LDA [$0A]
	LDY #loaded_bg_data::vertical_velocity
	STA ($1B),Y
	LDA $12
	CLC
	ADC #bg_scrolling_entry::horizontal_acceleration
	MOVE_INTX $06, $0A
	CLC
	ADC $0A
	STA $0A
	LDA [$0A]
	LDY #loaded_bg_data::horizontal_acceleration
	STA ($1B),Y
	LDA $12
	CLC
	ADC #bg_scrolling_entry::vertical_acceleration
	CLC
	ADC $06
	STA $06
	LDA [$06]
	LDY #loaded_bg_data::vertical_acceleration
	STA ($1B),Y
@UNKNOWN29:
	LDA $1B
	CLC
	ADC #loaded_bg_data::horizontal_position
	STA $02
	LDA $1B
	CLC
	ADC #loaded_bg_data::horizontal_velocity
	TAX
	LDY #loaded_bg_data::horizontal_acceleration
	LDA __BSS_START__,X
	CLC
	ADC ($1B),Y
	STA __BSS_START__,X
	STA $04
	LDX $02
	LDA __BSS_START__,X
	CLC
	ADC $04
	LDX $02
	STA __BSS_START__,X
	LDA $1B
	CLC
	ADC #loaded_bg_data::vertical_position
	TAY
	STY $16
	LDA $1B
	CLC
	ADC #loaded_bg_data::vertical_velocity
	TAX
	LDY #loaded_bg_data::vertical_acceleration
	LDA __BSS_START__,X
	CLC
	ADC ($1B),Y
	STA __BSS_START__,X
	STA $04
	LDY $16
	LDA __BSS_START__,Y
	CLC
	ADC $04
	STA __BSS_START__,Y
	LDA $19
	CMP #BG_LAYER::LAYER_1
	BEQ @AFFECT_LAYER_1
	CMP #BG_LAYER::LAYER_2
	BEQ @AFFECT_LAYER_2
	CMP #BG_LAYER::LAYER_3
	BEQ @AFFECT_LAYER_3
	CMP #BG_LAYER::LAYER_4
	BEQ @AFFECT_LAYER_4
	JMP @TARGET_BG_LAYER_SELECTION_COMPLETE
@AFFECT_LAYER_1:
	LDX $02
	LDA __BSS_START__,X
	XBA
	AND #$00FF
	CLC
	ADC UNKNOWN_7EAD96
	STA BG1_X_POS
	LDA __BSS_START__,Y
	XBA
	AND #$00FF
	CLC
	ADC UNKNOWN_7EAD98
	STA BG1_Y_POS
	BRA @TARGET_BG_LAYER_SELECTION_COMPLETE
@AFFECT_LAYER_2:
	LDX $02
	LDA __BSS_START__,X
	XBA
	AND #$00FF
	CLC
	ADC UNKNOWN_7EAD96
	STA BG2_X_POS
	LDA __BSS_START__,Y
	XBA
	AND #$00FF
	CLC
	ADC UNKNOWN_7EAD98
	STA BG2_Y_POS
	BRA @TARGET_BG_LAYER_SELECTION_COMPLETE
@AFFECT_LAYER_3:
	LDX $02
	LDA __BSS_START__,X
	XBA
	AND #$00FF
	CLC
	ADC UNKNOWN_7EAD96
	STA BG3_X_POS
	LDA __BSS_START__,Y
	XBA
	AND #$00FF
	CLC
	ADC UNKNOWN_7EAD98
	STA BG3_Y_POS
	BRA @TARGET_BG_LAYER_SELECTION_COMPLETE
@AFFECT_LAYER_4:
	LDX $02
	LDA __BSS_START__,X
	XBA
	AND #$00FF
	CLC
	ADC UNKNOWN_7EAD96
	STA BG4_X_POS
	LDA __BSS_START__,Y
	XBA
	AND #$00FF
	CLC
	ADC UNKNOWN_7EAD98
	STA BG4_Y_POS
@TARGET_BG_LAYER_SELECTION_COMPLETE:
	LDA $1B
	CLC
	ADC #loaded_bg_data::distortion_duration_left
	TAX
	LDA __BSS_START__,X
	BEQL @DISTORTION_DMA_DONE
	DEC
	STA __BSS_START__,X
	BNEL @DISTORTION_DMA_DONE
	LDA $1B
	CLC
	ADC #loaded_bg_data::current_distortion_style_index
	TAX
	STX $0E
	SEP #PROC_FLAGS::ACCUM8
	LDA __BSS_START__,X
	INC
	AND #$0003
	STA __BSS_START__,X
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	CLC
	ADC $1B
	TAX
	LDA a:loaded_bg_data::distortion_styles,X
	AND #$00FF
	STA $10
	BNE @UNKNOWN37
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	LDX $0E
	STA __BSS_START__,X
	LDX $1B
	REP #PROC_FLAGS::ACCUM8
	LDA a:loaded_bg_data::distortion_styles,X
	AND #$00FF
	STA $10
@UNKNOWN37:
	CMP #$0000
	BEQL @DISTORTION_DMA_DONE
	LOADPTR BG_DISTORTION_TABLE, $06
	LDA $10
	OPTIMIZED_MULT $04, .SIZEOF(distortion_entry)
	STA $10
	MOVE_INTX $06, $0A
	CLC
	ADC $0A
	STA $0A
	LDA [$0A]
	LDY #loaded_bg_data::distortion_duration_left
	STA ($1B),Y
	LDA $1B
	CLC
	ADC #loaded_bg_data::distortion_type
	TAX
	LDA $10
	;style
	INC
	INC
	MOVE_INTY $06, $0A
	CLC
	ADC $0A
	STA $0A
	SEP #PROC_FLAGS::ACCUM8
	LDA [$0A]
	STA __BSS_START__,X
	REP #PROC_FLAGS::ACCUM8
	LDA $10
	;ripple_frequency
	INC
	INC
	INC
	MOVE_INTY $06, $0A
	CLC
	ADC $0A
	STA $0A
	LDA [$0A]
	LDY #loaded_bg_data::distortion_ripple_frequency
	STA ($1B),Y
	LDA $10
	CLC
	ADC #distortion_entry::ripple_amplitude
	MOVE_INTY $06, $0A
	CLC
	ADC $0A
	STA $0A
	LDA [$0A]
	LDY #loaded_bg_data::distortion_ripple_amplitude
	STA ($1B),Y
	LDA $10
	CLC
	ADC #distortion_entry::speed
	MOVE_INTY $06, $0A
	CLC
	ADC $0A
	STA $0A
	SEP #PROC_FLAGS::ACCUM8
	LDA [$0A]
	LDY #loaded_bg_data::distortion_speed
	STA ($1B),Y
	REP #PROC_FLAGS::ACCUM8
	LDA $10
	CLC
	ADC #distortion_entry::compression_rate
	MOVE_INTY $06, $0A
	CLC
	ADC $0A
	STA $0A
	LDA [$0A]
	LDY #loaded_bg_data::distortion_compression_rate
	STA ($1B),Y
	LDA $10
	CLC
	ADC #distortion_entry::ripple_frequency_acceleration
	MOVE_INTY $06, $0A
	CLC
	ADC $0A
	STA $0A
	LDA [$0A]
	LDY #loaded_bg_data::distortion_ripple_frequency_acceleration
	STA ($1B),Y
	LDA $10
	CLC
	ADC #distortion_entry::ripple_amplitude_acceleration
	MOVE_INTY $06, $0A
	CLC
	ADC $0A
	STA $0A
	LDA [$0A]
	LDY #loaded_bg_data::distortion_ripple_amplitude_acceleration
	STA ($1B),Y
	LDA $10
	CLC
	ADC #distortion_entry::speed_acceleration
	MOVE_INTY $06, $0A
	CLC
	ADC $0A
	STA $0A
	SEP #PROC_FLAGS::ACCUM8
	LDA [$0A]
	LDY #loaded_bg_data::distortion_speed_acceleration
	STA ($1B),Y
	REP #PROC_FLAGS::ACCUM8
	LDA $10
	CLC
	ADC #distortion_entry::compression_acceleration
	CLC
	ADC $06
	STA $06
	LDA [$06]
	LDY #loaded_bg_data::distortion_compression_acceleration
	STA ($1B),Y
	LDA __BSS_START__,X
	AND #$00FF
	CMP #DISTORTION_STYLE::VERTICAL_SMOOTH
	BNE @HORIZONTAL_DISTORTION
	LDY $1D
	LDX $19
	INX
	INX
	INX
	INX
	LDA $1D
	CLC
	ADC #$0005
	JSL DO_BATTLEBG_DMA
	BRA @DISTORTION_DMA_DONE
@HORIZONTAL_DISTORTION:
	LDY $1D
	LDX $19
	LDA $1D
	CLC
	ADC #$0005
	JSL DO_BATTLEBG_DMA
@DISTORTION_DMA_DONE:
	LDA $1B
	CLC
	ADC #loaded_bg_data::distortion_type
	STA $0E
	TAX
	LDA __BSS_START__,X
	AND #$00FF
	BEQL @RETURN
	LDA $1B
	CLC
	ADC #loaded_bg_data::distortion_ripple_frequency
	TAX
	LDY #loaded_bg_data::distortion_ripple_frequency_acceleration
	LDA __BSS_START__,X
	CLC
	ADC ($1B),Y
	STA __BSS_START__,X
	LDA $1B
	CLC
	ADC #loaded_bg_data::distortion_ripple_amplitude
	TAX
	LDY #loaded_bg_data::distortion_ripple_amplitude_acceleration
	LDA __BSS_START__,X
	CLC
	ADC ($1B),Y
	STA __BSS_START__,X
	LDA $1B
	CLC
	ADC #loaded_bg_data::distortion_speed
	TAX
	LDY #loaded_bg_data::distortion_speed_acceleration
	SEP #PROC_FLAGS::ACCUM8
	LDA __BSS_START__,X
	CLC
	ADC ($1B),Y
	STA __BSS_START__,X
	REP #PROC_FLAGS::ACCUM8
	LDA $1B
	CLC
	ADC #loaded_bg_data::distortion_compression_rate
	STA $02
	LDY #loaded_bg_data::distortion_compression_acceleration
	LDX $02
	LDA __BSS_START__,X
	CLC
	ADC ($1B),Y
	LDX $02
	STA __BSS_START__,X
	LDY $1D
	LDX $19
	STX $14
	LDA $0E
	TAX
	LDA __BSS_START__,X
	AND #$00FF
	DEC
	LDX $14
	JSL LOAD_BG_OFFSET_PARAMETERS
	LDX $02
	LDA __BSS_START__,X
	JSL LOAD_BG_OFFSET_PARAMETERS2
	LDA UNKNOWN_7E0002
	AND #$00FF
	AND #$0001
	CMP $1D
	BEQ @PREPARE_BG_OFFSETS
	LDA UNKNOWN_7EADAC
	BNE @RETURN
@PREPARE_BG_OFFSETS:
	LDY #loaded_bg_data::distortion_speed
	LDA ($1B),Y
	AND #$00FF
	TAY
	STY $10
	LDY #loaded_bg_data::distortion_ripple_amplitude
	LDA ($1B),Y
	XBA
	AND #$00FF
	TAX
	LDY #loaded_bg_data::distortion_ripple_frequency
	LDA ($1B),Y
	LDY $10
	JSL PREPARE_BG_OFFSET_TABLES
@RETURN:
	PLD
	RTL
