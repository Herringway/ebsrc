
UNKNOWN_C03A24: ;$C03A24
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 16
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	STA .LOWORD(GAME_STATE)+game_state::player_controlled_party_count
	STA .LOWORD(GAME_STATE)+game_state::party_count
	REP #PROC_FLAGS::ACCUM8
	LDA #$0000
	STA $0E
	BRA @UNKNOWN1
@UNKNOWN0:
	CLC
	ADC #.LOWORD(GAME_STATE)
	TAX
	SEP #PROC_FLAGS::ACCUM8
	STZ a:.LOWORD(RAM)+game_state::unknown96,X
	STZ a:.LOWORD(RAM)+game_state::player_controlled_party_members,X
	REP #PROC_FLAGS::ACCUM8
	LDA $0E
	ASL
	TAX
	STZ .LOWORD(GAME_STATE) + game_state::unknownA2,X
	LDA $0E
	INC
	STA $0E
@UNKNOWN1:
	CMP #$0006
	BCC @UNKNOWN0
	LDA #$0001
	STA .LOWORD(UNKNOWN_7E5D7E)
	LDX #$0000
	STX $0E
	BRA @UNKNOWN3
@UNKNOWN2:
	LDA .LOWORD(GAME_STATE) + game_state::party_members,X
	AND #$00FF
	BEQ @UNKNOWN4
	AND #$00FF
	JSL UNKNOWN_C0369B
	LDX $0E
	INX
	STX $0E
@UNKNOWN3:
	CPX #$0006
	BCC @UNKNOWN2
@UNKNOWN4:
	STZ .LOWORD(UNKNOWN_7E5D7E)
	LDA .LOWORD(GAME_STATE) + game_state::unknown92
	ASL
	STA .LOWORD(UNKNOWN_7E289A)
	STZ .LOWORD(UNKNOWN_7E289C)
	PLD
	RTL
