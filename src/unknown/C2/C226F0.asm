
UNKNOWN_C226F0: ;$C226F0
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 16
	LDA #$0000
	STA $0E
	BRA @UNKNOWN1
@UNKNOWN0:
	INC
	STA $0E
@UNKNOWN1:
	TAX
	LDA GAME_STATE + game_state::unknown96,X
	AND #$00FF
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA CHAR_STRUCT+char_struct::afflictions,X
	AND #$00FF
	CMP #$0001
	BEQ @UNKNOWN2
	LDA GAME_STATE+game_state::player_controlled_party_count
	AND #$00FF
	STA $02
	LDA $0E
	CMP $02
	BCC @UNKNOWN0
@UNKNOWN2:
	LDA $0E
	PLD
	RTL
