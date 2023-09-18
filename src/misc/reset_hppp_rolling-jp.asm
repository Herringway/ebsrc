
RESET_HPPP_ROLLING: ;$C20F9A
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 16
	LDA #$0000
	STA $02
	BRA @UNKNOWN4
@UNKNOWN0:
	LDA $02
	CLC
	ADC #.LOWORD(GAME_STATE)
	TAX
	LDA a:game_state::party_members,X
	AND #$00FF
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)
	TAY
	LDA a:char_struct::afflictions,Y
	AND #$00FF
	CMP #$0001
	BEQ @UNKNOWN1
	LDA a:char_struct::current_hp,Y
	BNE @UNKNOWN1
	LDA #$0001
	STA a:char_struct::current_hp_target,Y
@UNKNOWN1:
	LDA a:char_struct::current_hp_fraction,Y
	BEQ @UNKNOWN2
	LDA a:char_struct::current_hp,Y
	STA $0E
	TYA
	CLC
	ADC #char_struct::current_hp_target
	TAX
	LDA __BSS_START__,X
	STA $04
	LDA $0E
	CMP $04
	BLTEQ @UNKNOWN2
	STA __BSS_START__,X
@UNKNOWN2:
	LDA a:char_struct::current_pp_fraction,Y
	BEQ @UNKNOWN3
	LDA a:char_struct::current_pp,Y
	STA $0E
	TYA
	CLC
	ADC #$004C
	TAX
	LDA __BSS_START__,X
	STA $04
	LDA $0E
	CMP $04
	BLTEQ @UNKNOWN3
	STA __BSS_START__,X
@UNKNOWN3:
	INC $02
@UNKNOWN4:
	LDA GAME_STATE+game_state::player_controlled_party_count
	AND #$00FF
	STA $04
	LDA $02
	CMP $04
	BCCL @UNKNOWN0
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0001
	STA UNKNOWN_7E9696
	REP #PROC_FLAGS::ACCUM8
	PLD
	RTL
