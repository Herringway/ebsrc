
UPDATE_PARTY:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_ARRAY 6, 2 ;int[6]
	STACK_RESERVE_ARRAY 6, 2 ;int[6]
	STACK_RESERVE_ARRAY 6, 2 ;int[6]
	STACK_RESERVE_ARRAY 6, 2 ;int[6]
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16 "PARTY_COUNT"
	END_STACK_VARS
	LDA GAME_STATE+game_state::party_count
	AND #$00FF
	STA @PARTY_COUNT
	LDA #0
	STA @LOCAL08
	BRA @UNKNOWN1
@UNKNOWN0:
	ASL
	PHA
	LDA @LOCAL08
	CLC
	ADC #.LOWORD(GAME_STATE)
	TAX
	LDA a:game_state::player_controlled_party_members,X
	AND #$00FF
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA PARTY_CHARACTERS+char_struct::position_index,X
	PLX
	STA @LOCAL00,X
	LDA @LOCAL08
	INC
	STA @LOCAL08
@UNKNOWN1:
	CMP @PARTY_COUNT
	BCC @UNKNOWN0
	LDX #0
	STX @LOCAL07
	JMP @UNKNOWN6
@UNKNOWN2:
	TXA
	CLC
	ADC #.LOWORD(GAME_STATE)
	TAX
	LDA a:game_state::unknown96,X
	AND #$00FF
	STA @LOCAL06
	CMP #5
	BCC @UNKNOWN3
	CLC
	ADC #$0300
	STA @LOCAL06
	BRA @UNKNOWN5
@UNKNOWN3:
	LDX @LOCAL07
	TXA
	ASL
	CLC
	ADC #.LOWORD(GAME_STATE)
	TAX
	LDA a:game_state::unknownA2,X
	ASL
	TAX
	LDA ENTITY_SCRIPT_VAR1_TABLE,X
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA PARTY_CHARACTERS+char_struct::afflictions,X
	AND #$00FF
	TAY
	CPY #1
	BEQ @UNKNOWN4
	CPY #2
	BNE @UNKNOWN5
@UNKNOWN4:
	LDA @LOCAL06
	CLC
	ADC #$0100
	STA @LOCAL06
@UNKNOWN5:
	LDX @LOCAL07
	TXA
	ASL
	TAY
	LDA @LOCAL06
	TYX
	STA @LOCAL01,X
	TYA
	CLC
	ADC #.LOWORD(GAME_STATE)
	TAX
	LDA a:game_state::unknownA2,X
	TAX
	STX @LOCAL02,Y
	LDX @LOCAL07
	TXA
	CLC
	ADC #.LOWORD(GAME_STATE)
	TAX
	LDA a:game_state::player_controlled_party_members,X
	AND #$00FF
	TAX
	STX @LOCAL03,Y
	LDX @LOCAL07
	INX
	STX @LOCAL07
@UNKNOWN6:
	CPX @PARTY_COUNT
	BCCL @UNKNOWN2
	STZ_BADOPT @VIRTUAL04
	JMP @UNKNOWN12
@UNKNOWN8:
	LDX #0
	STX @LOCAL08
	BRA @UNKNOWN11
@UNKNOWN9:
	TXA
	ASL
	TAY
	TYX
	LDA @LOCAL01,X
	STA @LOCAL05
	STY @VIRTUAL02
	INC @VIRTUAL02
	INC @VIRTUAL02
	LDX @VIRTUAL02
	LDA @LOCAL01,X
	STA @LOCAL04
	LDA @LOCAL05
	CMP @LOCAL04
	BLTEQ @UNKNOWN10
	LDX @LOCAL08
	TXA
	ASL
	TAX
	LDA @LOCAL04
	STA @LOCAL01,X
	LDX @LOCAL08
	TXA
	ASL
	TAX
	INX
	INX
	LDA @LOCAL05
	STA @LOCAL01,X
	TYX
	LDA @LOCAL02,X
	STA @LOCAL05
	LDX @LOCAL08
	TXA
	ASL
	PHA
	LDX @VIRTUAL02
	LDA @LOCAL02,X
	PLX
	STA @LOCAL02,X
	LDX @LOCAL08
	TXA
	ASL
	TAX
	INX
	INX
	LDA @LOCAL05
	STA @LOCAL02,X
	LDX @LOCAL03,Y
	TXY
	LDX @LOCAL08
	TXA
	ASL
	PHA
	LDX @VIRTUAL02
	LDA @LOCAL03,X
	PLX
	STA @LOCAL03,X
	LDX @LOCAL08
	TXA
	ASL
	TAX
	INX
	INX
	STY @LOCAL03,X
@UNKNOWN10:
	LDX @LOCAL08
	INX
	STX @LOCAL08
@UNKNOWN11:
	LDA @PARTY_COUNT
	DEC
	STA @VIRTUAL02
	TXA
	CMP @VIRTUAL02
	BCC @UNKNOWN9
	INC @VIRTUAL04
@UNKNOWN12:
	LDA @PARTY_COUNT
	DEC
	STA @VIRTUAL02
	LDA @VIRTUAL04
	CMP @VIRTUAL02
	BCCL @UNKNOWN8
	LDA #0
	STA @LOCAL06
	BRA @UNKNOWN15
@UNKNOWN14:
	CLC
	ADC #.LOWORD(GAME_STATE)
	TAY
	LDA @LOCAL06
	ASL
	STA @VIRTUAL02
	LDX @VIRTUAL02
	SEP #PROC_FLAGS::ACCUM8
	LDA @LOCAL01,X
	STA a:game_state::unknown96,Y
	REP #PROC_FLAGS::ACCUM8
	LDA @VIRTUAL02
	CLC
	ADC #.LOWORD(GAME_STATE)
	CLC
	ADC #game_state::unknownA2
	TAX
	STX @LOCAL08
	LDX @VIRTUAL02
	LDA @LOCAL02,X
	LDX @LOCAL08
	STA __BSS_START__,X
	LDX @VIRTUAL02
	SEP #PROC_FLAGS::ACCUM8
	LDA @LOCAL03,X
	STA a:game_state::player_controlled_party_members,Y
	REP #PROC_FLAGS::ACCUM8
	LDA @LOCAL06
	ASL
	TAX
	LDA @LOCAL03,X
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	PHA
	LDX @VIRTUAL02
	LDA @LOCAL00,X
	PLX
	STA PARTY_CHARACTERS+char_struct::position_index,X
	LDX @LOCAL08
	LDA __BSS_START__,X
	ASL
	TAX
	LDA @VIRTUAL02
	STA ENTITY_SCRIPT_VAR5_TABLE,X
	LDA @LOCAL06
	INC
	STA @LOCAL06
@UNKNOWN15:
	CMP @PARTY_COUNT
	BCC @UNKNOWN14
	LDA GAME_STATE +game_state::unknownA2
	STA GAME_STATE+game_state::current_party_members
	JSL UNKNOWN_C032EC
	JSL UNKNOWN_C02C3E
	JSL UNKNOWN_C47F87
	END_C_FUNCTION
