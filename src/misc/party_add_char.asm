
ADD_CHAR_TO_PARTY:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16 ;int character
	END_STACK_VARS
	STA @VIRTUAL04
	LDA #0
	STA @VIRTUAL02
	STA @LOCAL00
	JMP @UNKNOWN14
@UNKNOWN0:
	LDX @VIRTUAL02
	SEP #PROC_FLAGS::ACCUM8
	LDA GAME_STATE + game_state::party_members,X
	STA @VIRTUAL00
	REP #PROC_FLAGS::ACCUM8
	LDA @VIRTUAL00
	AND #$00FF
	CMP @VIRTUAL04
	BEQL @UNKNOWN16
	CMP @VIRTUAL04
	BGT @UNKNOWN3
	LDA @VIRTUAL00
	AND #$00FF
	BNE @UNKNOWN13
@UNKNOWN3:
	LDY @VIRTUAL02
	BRA @UNKNOWN7
@UNKNOWN4:
	STY @VIRTUAL02
	LDA #6
	CLC
	SBC @VIRTUAL02
	BRANCHLTEQS @UNKNOWN16
	INY
@UNKNOWN7:
	LDA GAME_STATE + game_state::party_members,Y
	AND #$00FF
	BNE @UNKNOWN4
	BRA @UNKNOWN9
@UNKNOWN8:
	TYX
	DEX
	SEP #PROC_FLAGS::ACCUM8
	LDA GAME_STATE + game_state::party_members,X
	STA GAME_STATE + game_state::party_members,Y
	TXY
@UNKNOWN9:
	REP #PROC_FLAGS::ACCUM8
	LDA @LOCAL00
	STA @VIRTUAL02
	TYA
	CLC
	SBC @VIRTUAL02
	BRANCHGTS @UNKNOWN8
	LDA @VIRTUAL04
	SEP #PROC_FLAGS::ACCUM8
	LDX @VIRTUAL02
	STA GAME_STATE + game_state::party_members,X
	REP #PROC_FLAGS::ACCUM8
	LDA @VIRTUAL04
	JSL UNKNOWN_C0369B
	ASL
	CLC
	ADC #.LOWORD(ENTITY_TICK_CALLBACK_HIGH)
	TAX
	LDA __BSS_START__,X
	ORA #OBJECT_TICK_DISABLED | OBJECT_MOVE_DISABLED
	STA __BSS_START__,X
	LDA @VIRTUAL04
	CMP #4
	BGT @UNKNOWN16
	JSL UNKNOWN_C216DB
	JSL UNKNOWN_C3EBCA
	BRA @UNKNOWN16
@UNKNOWN13:
	INC @VIRTUAL02
	LDA @VIRTUAL02
	STA @LOCAL00
@UNKNOWN14:
	LDA #6
	CLC
	SBC @VIRTUAL02
	JUMPGTS @UNKNOWN0
@UNKNOWN16:
	END_C_FUNCTION
