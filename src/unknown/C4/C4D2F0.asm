
UNKNOWN_C4D2F0:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	END_STACK_VARS
	LDA GAME_STATE+game_state::leader_x_coord
	XBA
	AND #$00FF
	TAX
	LDY #128
	LDA GAME_STATE+game_state::leader_y_coord
	JSL DIVISION16S_DIVISOR_POSITIVE
	STA @LOCAL03
	LOADPTR MAP_DATA_PER_SECTOR_TOWN_MAP_DATA, @VIRTUAL06
	TXA
	OPTIMIZED_MULT @VIRTUAL04, 3
	STA @VIRTUAL02
	LDA @LOCAL03
	OPTIMIZED_MULT @VIRTUAL04, 96
	CLC
	ADC @VIRTUAL02
	STA @LOCAL02
	INC
	MOVE_INTX @VIRTUAL06, @VIRTUAL0A
	CLC
	ADC @VIRTUAL0A
	STA @VIRTUAL0A
	LDA [@VIRTUAL0A]
	AND #$00FF
	STA @VIRTUAL04
	LDA @LOCAL02
	INC
	INC
	MOVE_INTX @VIRTUAL06, @VIRTUAL0A
	CLC
	ADC @VIRTUAL0A
	STA @VIRTUAL0A
	LDA [@VIRTUAL0A]
	AND #$00FF
	STA @VIRTUAL02
	LDA @LOCAL02
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	LDA [@VIRTUAL06]
	AND #$00FF
	AND #$0070
	BEQL @UNKNOWN5
	CMP #1 << 4
	BEQ @UNKNOWN1
	CMP #2 << 4
	BEQ @UNKNOWN2
	CMP #4 << 4
	BEQ @UNKNOWN3
	CMP #3 << 4
	BEQ @UNKNOWN4
	BRA @UNKNOWN5
@UNKNOWN1:
	LDA @VIRTUAL02
	SEC
	SBC #8
	TAY
	LDX @VIRTUAL04
	STX @LOCAL01
	LDA f:TOWN_MAP_MAPPING+4
	ASL
	TAX
	LDA f:UNKNOWN_E1F44C,X
	LDX @LOCAL01
	JSL REDIRECT_C08C58
	BRA @UNKNOWN5
@UNKNOWN2:
	LDA @VIRTUAL02
	CLC
	ADC #8
	TAY
	LDX @VIRTUAL04
	STX @LOCAL01
	LDA f:TOWN_MAP_MAPPING+6
	ASL
	TAX
	LDA f:UNKNOWN_E1F44C,X
	LDX @LOCAL01
	JSL REDIRECT_C08C58
	BRA @UNKNOWN5
@UNKNOWN3:
	LDY @VIRTUAL02
	LDA @VIRTUAL04
	SEC
	SBC #8
	TAX
	STX @LOCAL02
	LDA f:TOWN_MAP_MAPPING+8
	ASL
	TAX
	LDA f:UNKNOWN_E1F44C,X
	LDX @LOCAL02
	JSL REDIRECT_C08C58
	BRA @UNKNOWN5
@UNKNOWN4:
	LDY @VIRTUAL02
	LDA @VIRTUAL04
	CLC
	ADC #16
	TAX
	STX @LOCAL00
	LDA f:TOWN_MAP_MAPPING+10
	ASL
	TAX
	LDA f:UNKNOWN_E1F44C,X
	LDX @LOCAL00
	JSL REDIRECT_C08C58
@UNKNOWN5:
	LDA TOWN_MAP_PLAYER_ICON_ANIMATION_FRAME
	CMP #10
	BCS @UNKNOWN6
	LDY @VIRTUAL02
	LDX @VIRTUAL04
	STX @LOCAL01
	LDA f:TOWN_MAP_MAPPING+2
	ASL
	TAX
	LDA f:UNKNOWN_E1F44C,X
	LDX @LOCAL01
	JSL REDIRECT_C08C58
	BRA @UNKNOWN7
@UNKNOWN6:
	LDY @VIRTUAL02
	LDX @VIRTUAL04
	STX @LOCAL01
	LDA f:TOWN_MAP_MAPPING
	ASL
	TAX
	LDA f:UNKNOWN_E1F44C,X
	LDX @LOCAL01
	JSL REDIRECT_C08C58
@UNKNOWN7:
	LDX TOWN_MAP_PLAYER_ICON_ANIMATION_FRAME
	DEX
	STX TOWN_MAP_PLAYER_ICON_ANIMATION_FRAME
	BNE @UNKNOWN8
	LDA #20
	STA TOWN_MAP_PLAYER_ICON_ANIMATION_FRAME
@UNKNOWN8:
	END_C_FUNCTION
