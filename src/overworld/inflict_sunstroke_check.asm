
INFLICT_SUNSTROKE_CHECK:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	END_STACK_VARS
	LDA OVERWORLD_STATUS_SUPPRESSION
	BNEL @UNKNOWN11
	LDA GAME_STATE+game_state::trodden_tile_type
	AND #$000C
	CMP #4
	BNEL @UNKNOWN11
	LDX #0
	STX @LOCAL01
	JMP @UNKNOWN10
@UNKNOWN2:
	REP #PROC_FLAGS::ACCUM8
	TXA
	CLC
	ADC #.LOWORD(GAME_STATE)
	TAY
	LDA __BSS_START__ + game_state::unknown96,Y
	AND #$00FF
	BEQL @UNKNOWN11
	AND #$00FF
	CLC
	SBC #4
	BRANCHGTS @UNKNOWN11
	LDA __BSS_START__+game_state::player_controlled_party_members,Y
	AND #$00FF
	ASL
	TAX
	LDY CHOSEN_FOUR_PTRS,X
	STY CURRENT_PARTY_MEMBER_TICK
	LDA a:char_struct::afflictions + STATUS_GROUP::PERSISTENT_EASYHEAL,Y
	AND #$00FF
	TAY
	BEQ @UNKNOWN6
	CPY #STATUS_0::COLD
	BNE @UNKNOWN9
@UNKNOWN6:
	LDX CURRENT_PARTY_MEMBER_TICK
	LDA a:char_struct::guts,X
	AND #$00FF
	STA @VIRTUAL02
	LDA #30
	SEC
	SBC @VIRTUAL02
	CMP #$8000
	BLTEQ @UNKNOWN7
	LDA #1
@UNKNOWN7:
	LDY #100
	XBA
	AND #$FF00
	JSL DIVISION16S_DIVISOR_POSITIVE
	STA @LOCAL00
	JSL RAND
	TAY
	LDA @LOCAL00
	STA @VIRTUAL02
	TYA
	CMP @VIRTUAL02
	BGT @UNKNOWN9
	SEP #PROC_FLAGS::ACCUM8
	LDA #STATUS_0::SUNSTROKE
	LDX CURRENT_PARTY_MEMBER_TICK
	STA a:char_struct::afflictions + STATUS_GROUP::PERSISTENT_EASYHEAL,X
@UNKNOWN9:
	LDX @LOCAL01
	INX
	STX @LOCAL01
@UNKNOWN10:
	CPX #6
	BCCL @UNKNOWN2
@UNKNOWN11:
	REP #PROC_FLAGS::ACCUM8
	END_C_FUNCTION
