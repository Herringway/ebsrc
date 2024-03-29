
; Places player in world after loading a game
SPAWN:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_RETURN_INT16 ;int
	END_STACK_VARS
	LDA RESPAWN_X
	STA @VIRTUAL02
	LDX RESPAWN_Y
	STX @LOCAL03
	JSL UNKNOWN_C0943C
	JSR UNKNOWN_C4C2DE
	JSR UNKNOWN_C4C64D
	STA @VIRTUAL04
	CMP #0
	BEQ @UNKNOWN0
	LDY #0
	LDX #1
	LDA #2
	JSL FADE_OUT_WITH_MOSAIC
	JSL UNKNOWN_C09451
	JMP @UNKNOWN9
@UNKNOWN0:
	LDA #32
	JSL UNKNOWN_C4C58F
	LDA #2
	JSL UNKNOWN_C0AC0C
	SEP #PROC_FLAGS::ACCUM8
	LDA #$17
	STA TM_MIRROR
	REP #PROC_FLAGS::ACCUM8
	LDA #.LOWORD(-1)
	STA LOADED_MAP_TILE_COMBO
	STA CURRENT_MAP_MUSIC_TRACK
	STA CURRENT_MUSIC_TRACK
	LDA #1
	STA WIPE_PALETTES_ON_MAP_LOAD
	.IF .DEFINED(USA) && (!.DEFINED(PROTOTYPE19950327))
		JSL WAIT_UNTIL_NEXT_FRAME
	.ENDIF
	LDY #6
	LDX @LOCAL03
	LDA @VIRTUAL02
	JSL INITIALIZE_MAP
	LDA GAME_STATE + game_state::party_members
	AND #$00FF
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(PARTY_CHARACTERS)
	STA CURRENT_PARTY_MEMBER_TICK
	LDA #0
	STA @LOCAL02
	BRA @UNKNOWN2
@UNKNOWN1:
	CLC
	ADC CURRENT_PARTY_MEMBER_TICK
	TAX
	SEP #PROC_FLAGS::ACCUM8
	STZ a:char_struct::afflictions,X
	REP #PROC_FLAGS::ACCUM8
	LDA @LOCAL02
	INC
	STA @LOCAL02
@UNKNOWN2:
	CMP #6
	BCC @UNKNOWN1
	LDX CURRENT_PARTY_MEMBER_TICK
	LDA a:char_struct::max_hp,X
	LDX CURRENT_PARTY_MEMBER_TICK
	STA a:char_struct::current_hp_target,X
	LDX CURRENT_PARTY_MEMBER_TICK
	STA a:char_struct::current_hp,X
	LDX CURRENT_PARTY_MEMBER_TICK
	STZ a:char_struct::current_pp_target,X
	LDX CURRENT_PARTY_MEMBER_TICK
	STZ a:char_struct::current_pp,X
	LDY #.LOWORD(GAME_STATE) + game_state::money_carried
	STY @LOCAL01
	MOVE_INT_YPTRSRC __BSS_START__, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
	MOVE_INT @VIRTUAL06, @VIRTUAL0A
	MOVE_INT_CONSTANT 1, @VIRTUAL06
	AND_INT_ASSIGN @VIRTUAL0A, @VIRTUAL06
	PHA
	LDA @VIRTUAL0A
	PHA
	MOVE_INT_CONSTANT 2, @VIRTUAL0A
	MOVE_INT @LOCAL00, @VIRTUAL06
	JSL DIVISION32
	PULL32 @VIRTUAL0A
	CLC
	ADD_INT_ASSIGN @VIRTUAL06, @VIRTUAL0A
	LDY @LOCAL01
	MOVE_INT_YPTRDEST @VIRTUAL06, __BSS_START__
	.IF .DEFINED(USA) && (!.DEFINED(PROTOTYPE19950327))
		JSL UNKNOWN_C07B52
	.ENDIF
	LDY #1
	STY @LOCAL03
	BRA @UNKNOWN4
@UNKNOWN3:
	LDX #0
	TYA
	JSL SET_EVENT_FLAG
	LDY @LOCAL03
	INY
	STY @LOCAL03
@UNKNOWN4:
	TYA
	CLC
	SBC #10
	BRANCHLTEQS @UNKNOWN3
	LDA #0
	STA @LOCAL02
	BRA @UNKNOWN8
@UNKNOWN7:
	ASL
	TAX
	LDA #ENTITY_COLLISION_NO_OBJECT
	STA ENTITY_COLLIDED_OBJECTS,X
	LDA @LOCAL02
	INC
	STA @LOCAL02
@UNKNOWN8:
	CMP #MAX_ENTITIES
	BCC @UNKNOWN7
	JSL UNKNOWN_C064D4
	STZ DAD_PHONE_QUEUED
	STZ PLAYER_INTANGIBILITY_FRAMES
	JSL SPAWN_BUZZ_BUZZ
	JSL OAM_CLEAR
	JSL UNKNOWN_C09451
	LDA #32
	JSL UNKNOWN_C4C60E
@UNKNOWN9:
	LDA @VIRTUAL04
	END_C_FUNCTION
