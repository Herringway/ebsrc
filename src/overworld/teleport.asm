
TELEPORT:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	STA @LOCAL03
	LDA OVERWORLD_STATUS_SUPPRESSION
	STA @LOCAL02
	LDA #1
	STA OVERWORLD_STATUS_SUPPRESSION
	LOADPTR TELEPORT_DESTINATION_TABLE, @VIRTUAL0A
	LDA @LOCAL03
	OPTIMIZED_MULT @VIRTUAL04, .SIZEOF(teleport_destination)
	CLC
	ADC @VIRTUAL0A
	STA @VIRTUAL0A
	STA @LOCAL01
	LDA @VIRTUAL0A+2
	STA @LOCAL01+2
	LDY #1
	STY @LOCAL03
	BRA @UNKNOWN1
@UNKNOWN0:
	LDX #0
	TYA
	JSL SET_EVENT_FLAG
	LDY @LOCAL03
	INY
	STY @LOCAL03
@UNKNOWN1:
	CPY #10
	BLTEQ @UNKNOWN0
	JSL UNKNOWN_C06B3D
	LDA #teleport_destination::screen_transition
	MOVE_INTX @VIRTUAL0A, @VIRTUAL06
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	LDX #1
	LDA [@VIRTUAL06]
	AND #$00FF
	JSL GET_SCREEN_TRANSITION_SOUND_EFFECT
	JSL PLAY_SOUND
	LDA DISABLED_TRANSITIONS
	BEQ @UNKNOWN2
	LDX #1
	TXA
	JSL FADE_OUT
	BRA @UNKNOWN3
@UNKNOWN2:
	LDX #1
	LDA [@VIRTUAL06]
	AND #$00FF
	JSL SCREEN_TRANSITION
@UNKNOWN3:
	MOVE_INT @VIRTUAL0A, @VIRTUAL06
	LDA [@VIRTUAL06] ;teleport_destination::x_coord
	ASL
	ASL
	ASL
	STA @LOCAL03
	LDY #teleport_destination::y_coord
	LDA [@VIRTUAL0A],Y
	ASL
	ASL
	ASL
	STA @VIRTUAL04
	LDA #teleport_destination::direction
	MOVE_INTX @VIRTUAL0A, @VIRTUAL06
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	LDA [@VIRTUAL06]
	AND #$00FF
	AND #$007F
	DEC
	STA @VIRTUAL02
	LDX @VIRTUAL04
	LDA @LOCAL03
	JSL LOAD_MAP_AT_POSITION
	STZ PLAYER_HAS_MOVED_SINCE_MAP_LOAD
	LDY @VIRTUAL02
	LDX @VIRTUAL04
	LDA @LOCAL03
	JSL UNKNOWN_C03FA9
	LDA [@VIRTUAL06]
	AND #$00FF
	AND #$0080
	BEQ @UNKNOWN4
	LDA @VIRTUAL02
	JSL UNKNOWN_C052D4
@UNKNOWN4:
	LDX @VIRTUAL04
	LDA @LOCAL03
	JSL UNKNOWN_C068F4
	JSL UNKNOWN_C069AF
	MOVE_INT_CONSTANT NULL, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
	MOVE_INT @VIRTUAL06, @VIRTUAL0A
	MOVE_INT POST_TELEPORT_CALLBACK, @VIRTUAL06
	CMP @VIRTUAL0A+2
	BNE @UNKNOWN5
	LDA @VIRTUAL06
	CMP @VIRTUAL0A
@UNKNOWN5:
	BEQ @UNKNOWN6
	MOVE_INT POST_TELEPORT_CALLBACK, @VIRTUAL06
	PHA
	MOVE_INT @VIRTUAL06, TEMP_FUNCTION_POINTER
	PLA
	JSL UNKNOWN_C09279
	MOVE_INT @LOCAL00, @VIRTUAL06
	MOVE_INT @VIRTUAL06, POST_TELEPORT_CALLBACK
@UNKNOWN6:
	JSL UNKNOWN_C065A3
	LDA #teleport_destination::screen_transition
	MOVE_INTX @LOCAL01, @VIRTUAL0A
	MOVE_INTX @VIRTUAL0A, @VIRTUAL06
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	LDX #0
	LDA [@VIRTUAL06]
	AND #$00FF
	JSL GET_SCREEN_TRANSITION_SOUND_EFFECT
	JSL PLAY_SOUND
	LDA DISABLED_TRANSITIONS
	BEQ @UNKNOWN7
	LDX #1
	TXA
	JSL FADE_IN
	BRA @UNKNOWN8
@UNKNOWN7:
	LDX #0
	LDA [@VIRTUAL06]
	AND #$00FF
	JSL SCREEN_TRANSITION
@UNKNOWN8:
	LDA #.LOWORD(-1)
	STA STAIRS_DIRECTION
	JSL SPAWN_BUZZ_BUZZ
	LDA @LOCAL02
	STA OVERWORLD_STATUS_SUPPRESSION
	END_C_FUNCTION
