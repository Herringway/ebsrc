
UNKNOWN_C041E3:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	END_STACK_VARS
	LDA GAME_STATE+game_state::leader_direction
	AND #$FFFE
	TAY
	STY @LOCAL01
	TYX
	STX @LOCAL00
	TXA
	JSR UNKNOWN_C04116
	CMP #.LOWORD(-1)
	BEQ @UNKNOWN0
	CMP #0
	BEQ @UNKNOWN0
	LDX @LOCAL00
	TXA
	BRA @UNKNOWN4
@UNKNOWN0:
	LDX @LOCAL00
	TXA
	INC
	INC
	AND #$0007
	TAX
	STX @LOCAL00
	STX GAME_STATE+game_state::leader_direction
	TXA
	JSR UNKNOWN_C04116
	CMP #.LOWORD(-1)
	BEQ @UNKNOWN1
	CMP #0
	BEQ @UNKNOWN1
	LDX @LOCAL00
	TXA
	BRA @UNKNOWN4
@UNKNOWN1:
	LDX @LOCAL00
	TXA
	INC
	INC
	INC
	INC
	AND #$0007
	TAX
	STX @LOCAL00
	STX GAME_STATE+game_state::leader_direction
	TXA
	JSR UNKNOWN_C04116
	CMP #.LOWORD(-1)
	BEQ @UNKNOWN2
	CMP #0
	BEQ @UNKNOWN2
	LDX @LOCAL00
	TXA
	BRA @UNKNOWN4
@UNKNOWN2:
	LDX @LOCAL00
	TXA
	DEC
	DEC
	AND #$0007
	TAX
	STX @LOCAL00
	STX GAME_STATE+game_state::leader_direction
	TXA
	JSR UNKNOWN_C04116
	CMP #.LOWORD(-1)
	BEQ @UNKNOWN3
	CMP #0
	BEQ @UNKNOWN3
	LDX @LOCAL00
	TXA
	BRA @UNKNOWN4
@UNKNOWN3:
	LDY @LOCAL01
	STY GAME_STATE+game_state::leader_direction
	LDA #.LOWORD(-1)
@UNKNOWN4:
	END_C_FUNCTION
