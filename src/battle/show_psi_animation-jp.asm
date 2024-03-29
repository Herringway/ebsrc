
SHOW_PSI_ANIMATION:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	STA @VIRTUAL02
	LDA LOADED_BG_DATA_LAYER1 + loaded_bg_data::bitdepth
	AND #$00FF
	CMP #2
	BNE @UNKNOWN1
	LOADPTR BUFFER + $8000, @VIRTUAL06
	LOADPTR PSI_ANIM_GFX_SET_1 & $FF0000, @VIRTUAL0A
	LDA @VIRTUAL02
	OPTIMIZED_MULT @VIRTUAL04, 12
	TAX
	LDA f:PSI_ANIM_CFG,X
	CLC
	ADC @VIRTUAL0A
	STA @VIRTUAL0A
	STA @LOCAL00
	LDA @VIRTUAL0A+2
	STA @LOCAL00+2
	MOVE_INT @VIRTUAL06, @LOCAL01
	JSL DECOMP
	COPY_TO_VRAM3P @VIRTUAL06, $0000, $1000, 0
	.A16
	LDA #.LOWORD(PALETTES) + BPP4PALETTE_SIZE * 3
	STA PSI_ANIMATION_STATE + psi_animation_state::displayed_palette
	JMP @UNKNOWN6
@UNKNOWN1:
	LOADPTR BUFFER, @VIRTUAL06
	LOADPTR PSI_ANIM_GFX_SET_1 & $FF0000, @VIRTUAL0A
	LDA @VIRTUAL02
	OPTIMIZED_MULT @VIRTUAL04, 12
	TAX
	LDA f:PSI_ANIM_CFG,X
	CLC
	ADC @VIRTUAL0A
	STA @VIRTUAL0A
	STA @LOCAL00
	LDA @VIRTUAL0A+2
	STA @LOCAL00+2
	MOVE_INT @VIRTUAL06, @LOCAL01
	JSL DECOMP
	LOADPTR BUFFER + $8000, @VIRTUAL0A
	LDX #0
	JMP @UNKNOWN4
@UNKNOWN2:
	LDA [@VIRTUAL06]
	STA [@VIRTUAL0A]
	INC @VIRTUAL06
	INC @VIRTUAL06
	INC @VIRTUAL0A
	INC @VIRTUAL0A
	LDA [@VIRTUAL06]
	STA [@VIRTUAL0A]
	INC @VIRTUAL06
	INC @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL06
	MOVE_INT @VIRTUAL0A, @VIRTUAL06
	INC @VIRTUAL06
	INC @VIRTUAL06
	LDA [@LOCAL06]
	STA [@VIRTUAL06]
	MOVE_INT @LOCAL06, @VIRTUAL0A
	INC @VIRTUAL0A
	INC @VIRTUAL0A
	INC @VIRTUAL06
	INC @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL05
	LDA [@VIRTUAL0A]
	STA [@LOCAL05]
	MOVE_INT @VIRTUAL0A, @VIRTUAL06
	INC @VIRTUAL06
	INC @VIRTUAL06
	MOVE_INT @LOCAL05, @VIRTUAL0A
	INC @VIRTUAL0A
	INC @VIRTUAL0A
	LDA [@VIRTUAL06]
	STA [@VIRTUAL0A]
	INC @VIRTUAL06
	INC @VIRTUAL06
	INC @VIRTUAL0A
	INC @VIRTUAL0A
	LDA [@VIRTUAL06]
	STA [@VIRTUAL0A]
	INC @VIRTUAL06
	INC @VIRTUAL06
	INC @VIRTUAL0A
	INC @VIRTUAL0A
	LDA [@VIRTUAL06]
	STA [@VIRTUAL0A]
	INC @VIRTUAL06
	INC @VIRTUAL06
	INC @VIRTUAL0A
	INC @VIRTUAL0A
	LDA [@VIRTUAL06]
	STA [@VIRTUAL0A]
	INC @VIRTUAL06
	INC @VIRTUAL06
	INC @VIRTUAL0A
	INC @VIRTUAL0A
	LDA #0
	STA [@VIRTUAL0A]
	INC @VIRTUAL0A
	INC @VIRTUAL0A
	STA [@VIRTUAL0A]
	INC @VIRTUAL0A
	INC @VIRTUAL0A
	STA [@VIRTUAL0A]
	INC @VIRTUAL0A
	INC @VIRTUAL0A
	STA [@VIRTUAL0A]
	INC @VIRTUAL0A
	INC @VIRTUAL0A
	STA [@VIRTUAL0A]
	INC @VIRTUAL0A
	INC @VIRTUAL0A
	STA [@VIRTUAL0A]
	INC @VIRTUAL0A
	INC @VIRTUAL0A
	STA [@VIRTUAL0A]
	INC @VIRTUAL0A
	INC @VIRTUAL0A
	STA [@VIRTUAL0A]
	INC @VIRTUAL0A
	INC @VIRTUAL0A
	INX
@UNKNOWN4:
	CPX #256
	BCCL @UNKNOWN2
	COPY_TO_VRAM3 BUFFER + $8000, $0000, $2000, 0
	.A16
	LDA #.LOWORD(PALETTES) + BPP4PALETTE_SIZE * 4
	STA PSI_ANIMATION_STATE + psi_animation_state::displayed_palette
@UNKNOWN6:
	JSL WAIT_UNTIL_NEXT_FRAME
	LOADPTR PSI_ANIM_PALETTES, @VIRTUAL06
	LDA @VIRTUAL02
	ASL
	ASL
	ASL
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL00
	LDA @VIRTUAL06+2
	STA @LOCAL00+2
	LDX #8
	LDA #.LOWORD(PSI_ANIMATION_STATE) + psi_animation_state::palette
	JSL MEMCPY16
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDX #8
	LDA PSI_ANIMATION_STATE + psi_animation_state::displayed_palette
	JSL MEMCPY16
	LOADPTR BUFFER, @VIRTUAL0A
	MOVE_INT @VIRTUAL0A, @VIRTUAL06
	MOVE_INT @VIRTUAL06, PSI_ANIMATION_STATE + psi_animation_state::frame_data
	SEP #PROC_FLAGS::ACCUM8
	LDA #1
	STA PSI_ANIMATION_STATE + psi_animation_state::time_until_next_frame
	REP #PROC_FLAGS::ACCUM8
	LOADPTR PSI_ANIM_CFG, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL05
	LDA @VIRTUAL02
	OPTIMIZED_MULT @VIRTUAL04, 12
	STA @LOCAL04
	INC
	INC
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	SEP #PROC_FLAGS::ACCUM8
	LDA [@VIRTUAL06]
	STA PSI_ANIMATION_STATE + psi_animation_state::frame_hold_frames
	REP #PROC_FLAGS::ACCUM8
	LDA @LOCAL04
	CLC
	ADC #6
	MOVE_INTX @LOCAL05, @VIRTUAL06
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	SEP #PROC_FLAGS::ACCUM8
	LDA [@VIRTUAL06]
	STA PSI_ANIMATION_STATE + psi_animation_state::total_frames
	REP #PROC_FLAGS::ACCUM8
	LDA @LOCAL04
	INC
	INC
	INC
	MOVE_INTX @LOCAL05, @VIRTUAL06
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	SEP #PROC_FLAGS::ACCUM8
	LDA [@VIRTUAL06]
	STA PSI_ANIMATION_STATE + psi_animation_state::palette_animation_frames
	REP #PROC_FLAGS::ACCUM8
	LDA @LOCAL04
	INC
	INC
	INC
	INC
	MOVE_INTX @LOCAL05, @VIRTUAL06
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	SEP #PROC_FLAGS::ACCUM8
	LDA [@VIRTUAL06]
	STA PSI_ANIMATION_STATE + psi_animation_state::palette_animation_lower_index
	REP #PROC_FLAGS::ACCUM8
	LDA @LOCAL04
	CLC
	ADC #5
	MOVE_INTX @LOCAL05, @VIRTUAL06
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	SEP #PROC_FLAGS::ACCUM8
	LDA [@VIRTUAL06]
	STA PSI_ANIMATION_STATE + psi_animation_state::palette_animation_upper_index
	STZ PSI_ANIMATION_STATE + psi_animation_state::palette_animation_current_index
	LDA #1
	STA PSI_ANIMATION_STATE + psi_animation_state::palette_animation_time_until_next_frame
	REP #PROC_FLAGS::ACCUM8
	LDA @LOCAL04
	CLC
	ADC #8
	MOVE_INTX @LOCAL05, @VIRTUAL06
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	LDA [@VIRTUAL06]
	AND #$00FF
	STA PSI_ANIMATION_STATE + psi_animation_state::enemy_colour_change_start_frames_left
	LDA @LOCAL04
	CLC
	ADC #9
	MOVE_INTX @LOCAL05, @VIRTUAL06
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	LDA [@VIRTUAL06]
	AND #$00FF
	STA PSI_ANIMATION_STATE + psi_animation_state::enemy_colour_change_frames_left
	LDA @LOCAL04
	CLC
	ADC #10
	MOVE_INTX @LOCAL05, @VIRTUAL06
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	LDA [@VIRTUAL06]
	AND #$001F
	STA PSI_ANIMATION_STATE + psi_animation_state::enemy_colour_change_red
	LDA [@VIRTUAL06]
	LSR
	LSR
	LSR
	LSR
	LSR
	AND #$001F
	STA PSI_ANIMATION_STATE + psi_animation_state::enemy_colour_change_green
	SEP #PROC_FLAGS::INDEX8
	LDY #10
	LDA [@VIRTUAL06]
	JSL ASR8_UNKNOWN1
	AND #$001F
	STA PSI_ANIMATION_STATE + psi_animation_state::enemy_colour_change_blue
	LOADPTR PSI_ANIM_POINTERS, @VIRTUAL06
	LDA @VIRTUAL02
	ASL
	ASL
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	REP #PROC_FLAGS::INDEX8
	DEREFERENCE_PTR_TO @VIRTUAL06, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
	MOVE_INT @VIRTUAL0A, @LOCAL01
	JSL DECOMP
	JSL UNKNOWN_C2DE0F
	PROMOTENEARPTR PALETTES + BPP4PALETTE_SIZE * 8, @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDX #128
	LDA #.LOWORD(PALETTES) + BPP4PALETTE_SIZE * 12
	JSL MEMCPY16
	LDA #0
	STA @LOCAL04
	BRA @UNKNOWN8
@UNKNOWN7:
	ASL
	TAX
	STZ PSI_ANIMATION_ENEMY_TARGETS,X
	LDA @LOCAL04
	INC
	STA @LOCAL04
@UNKNOWN8:
	CMP #4
	BCC @UNKNOWN7
	LDX CURRENT_TARGET
	LDA a:battler::consciousness,X
	AND #$00FF
	BEQL @UNKNOWN26
	LDX CURRENT_TARGET
	LDA a:battler::ally_or_enemy,X
	AND #$00FF
	CMP #1
	BNEL @UNKNOWN26
	STZ PSI_ANIMATION_X_OFFSET
	LDA @VIRTUAL02
	OPTIMIZED_MULT @VIRTUAL04, 12
	CLC
	ADC #7
	TAX
	LDA f:PSI_ANIM_CFG,X
	AND #$00FF
	BEQ @UNKNOWN12
	CMP #3
	BEQ @UNKNOWN12
	CMP #1
	BEQ @UNKNOWN14
	CMP #2
	BEQL @UNKNOWN20
	JMP @UNKNOWN24
@UNKNOWN12:
	LDX CURRENT_TARGET
	LDA a:battler::sprite_x,X
	AND #$00FF
	STA @VIRTUAL02
	LDA #128
	SEC
	SBC @VIRTUAL02
	STA PSI_ANIMATION_X_OFFSET
	LDX CURRENT_TARGET
	LDA a:battler::sprite_y,X
	AND #$00FF
	STA @VIRTUAL02
	LDA #144
	SEC
	SBC @VIRTUAL02
	STA PSI_ANIMATION_Y_OFFSET
	LDX CURRENT_TARGET
	LDA a:battler::sprite,X
	JSR GET_BATTLE_SPRITE_HEIGHT
	CMP #8
	BNE @UNKNOWN13
	LDA PSI_ANIMATION_Y_OFFSET
	CLC
	ADC #16
	STA PSI_ANIMATION_Y_OFFSET
@UNKNOWN13:
	SEP #PROC_FLAGS::ACCUM8
	LDA #1
	LDX CURRENT_TARGET
	STA a:battler::use_alt_spritemap,X
	LDX CURRENT_TARGET
	REP #PROC_FLAGS::ACCUM8
	LDA a:battler::vram_sprite_index,X
	AND #$00FF
	ASL
	TAX
	LDA #1
	STA PSI_ANIMATION_ENEMY_TARGETS,X
	JMP @UNKNOWN24
@UNKNOWN14:
	LDX CURRENT_TARGET
	LDA a:battler::sprite_y,X
	AND #$00FF
	STA @VIRTUAL02
	LDA #144
	SEC
	SBC @VIRTUAL02
	STA PSI_ANIMATION_Y_OFFSET
	LDY #0
	STY @LOCAL04
	LDA #.LOWORD(BATTLERS_TABLE) + (.SIZEOF(battler) * 8)
	STA @VIRTUAL02
	LDX #8
	STX @LOCAL03
	BRA @UNKNOWN18
@UNKNOWN15:
	LDX @VIRTUAL02
	LDA a:battler::consciousness,X
	AND #$00FF
	BEQ @UNKNOWN17
	LDX @VIRTUAL02
	LDA a:battler::ally_or_enemy,X
	AND #$00FF
	CMP #1
	BNE @UNKNOWN17
	LDX @VIRTUAL02
	LDA a:battler::afflictions + STATUS_GROUP::PERSISTENT_EASYHEAL,X
	AND #$00FF
	CMP #1
	BEQ @UNKNOWN17
	LDX @VIRTUAL02
	SEP #PROC_FLAGS::ACCUM8
	LDA a:battler::sprite_y,X
	LDX CURRENT_TARGET
	CMP a:battler::sprite_y,X
	BNE @UNKNOWN17
	LDX @VIRTUAL02
	REP #PROC_FLAGS::ACCUM8
	LDA a:battler::sprite,X
	JSR GET_BATTLE_SPRITE_HEIGHT
	CMP #8
	BNE @UNKNOWN16
	LDY #1
	STY @LOCAL04
@UNKNOWN16:
	SEP #PROC_FLAGS::ACCUM8
	LDA #1
	LDX @VIRTUAL02
	STA a:battler::use_alt_spritemap,X
	LDX @VIRTUAL02
	REP #PROC_FLAGS::ACCUM8
	LDA a:battler::vram_sprite_index,X
	AND #$00FF
	ASL
	TAX
	LDA #1
	STA PSI_ANIMATION_ENEMY_TARGETS,X
@UNKNOWN17:
	REP #PROC_FLAGS::ACCUM8
	LDA @VIRTUAL02
	CLC
	ADC #.SIZEOF(battler)
	STA @VIRTUAL02
	LDX @LOCAL03
	INX
	STX @LOCAL03
@UNKNOWN18:
	CPX #32
	BCCL @UNKNOWN15
	LDY @LOCAL04
	BEQ @UNKNOWN24
	LDA PSI_ANIMATION_Y_OFFSET
	CLC
	ADC #16
	STA PSI_ANIMATION_Y_OFFSET
	BRA @UNKNOWN24
@UNKNOWN20:
	LDA #16
	STA PSI_ANIMATION_Y_OFFSET
	LDY #.LOWORD(BATTLERS_TABLE) + .SIZEOF(battler) * 8
	LDX #8
	STX @LOCAL02
	BRA @UNKNOWN23
@UNKNOWN21:
	LDA a:battler::consciousness,Y
	AND #$00FF
	BEQ @UNKNOWN22
	LDA a:battler::ally_or_enemy,Y
	AND #$00FF
	CMP #1
	BNE @UNKNOWN22
	LDA a:battler::afflictions + STATUS_GROUP::PERSISTENT_EASYHEAL,Y
	AND #$00FF
	CMP #1
	BEQ @UNKNOWN22
	SEP #PROC_FLAGS::ACCUM8
	LDA #1
	STA a:battler::use_alt_spritemap,Y
	REP #PROC_FLAGS::ACCUM8
	LDA a:battler::vram_sprite_index,Y
	AND #$00FF
	ASL
	TAX
	LDA #1
	STA PSI_ANIMATION_ENEMY_TARGETS,X
@UNKNOWN22:
	TYA
	CLC
	ADC #.SIZEOF(battler)
	TAY
	LDX @LOCAL02
	INX
	STX @LOCAL02
@UNKNOWN23:
	CPX #32
	BCC @UNKNOWN21
@UNKNOWN24:
	LDA LOADED_BG_DATA_LAYER1 + loaded_bg_data::bitdepth
	AND #$00FF
	CMP #2
	BNE @UNKNOWN25
	LDA PSI_ANIMATION_X_OFFSET
	STA BG2_X_POS
	LDA PSI_ANIMATION_Y_OFFSET
	STA BG2_Y_POS
	BRA @UNKNOWN26
@UNKNOWN25:
	LDA PSI_ANIMATION_X_OFFSET
	STA BG1_X_POS
	LDA PSI_ANIMATION_Y_OFFSET
	STA BG1_Y_POS
@UNKNOWN26:
	END_C_FUNCTION
