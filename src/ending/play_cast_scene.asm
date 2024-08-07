
PLAY_CAST_SCENE:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	END_STACK_VARS
	JSL LOAD_CAST_SCENE
	JSL OAM_CLEAR
	LDX #1
	TXA
	JSL FADE_IN
	LDY #0
	TYX
	LDA #EVENT_SCRIPT::EVENT_801
	JSL INIT_ENTITY_WIPE
	STZ ACTIONSCRIPT_STATE
	BRA @UNKNOWN1
@UNKNOWN0:
	JSL UNKNOWN_C1004E
	JSL UNKNOWN_C2DB3F
@UNKNOWN1:
	LDA ACTIONSCRIPT_STATE
	BEQ @UNKNOWN0
	LDY #0
	LDX #1
	TXA
	JSL FADE_OUT_WITH_MOSAIC
	LDX #0
	STX @LOCAL00
	BRA @UNKNOWN4
@UNKNOWN2:
	TXA
	ASL
	TAX
	LDA ENTITY_SCRIPT_TABLE,X
	CMP #EVENT_SCRIPT::EVENT_801
	BNE @UNKNOWN3
	LDX @LOCAL00
	TXA
	JSL UNKNOWN_C09C35
@UNKNOWN3:
	LDX @LOCAL00
	INX
	STX @LOCAL00
@UNKNOWN4:
	CPX #MAX_ENTITIES
	BCC @UNKNOWN2
	LDA #23
	STA ENTITY_ALLOCATION_MIN_SLOT
	LDA #24
	STA ENTITY_ALLOCATION_MAX_SLOT
	LDY #0
	TYX
	LDA #EVENT_SCRIPT::EVENT_001
	JSL INIT_ENTITY
	JSL UNKNOWN_C02D29
	JSL UNKNOWN_C03A24
	JSL UNKNOWN_C08726
	JSL UNDRAW_FLYOVER_TEXT
	SEP #PROC_FLAGS::ACCUM8
	LDA #$17
	STA TM_MIRROR
	REP #PROC_FLAGS::ACCUM8
	END_C_FUNCTION
