;A = battler* target, Y = ??
REVIVE_TARGET: ;$C27397
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 26
	TXY
	STY $18
	STA $04
	DISPLAY_BATTLE_TEXT_PTR MSG_BTL_IKIKAERI
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	LDX $04
	STA a:battler::afflictions + STATUS_GROUP::SHIELD,X
	LDX $04
	STA a:battler::afflictions + STATUS_GROUP::HOMESICKNESS,X
	LDX $04
	STA a:battler::afflictions + STATUS_GROUP::CONCENTRATION,X
	LDX $04
	STA a:battler::afflictions + STATUS_GROUP::STRANGENESS,X
	LDX $04
	STA a:battler::afflictions + STATUS_GROUP::TEMPORARY,X
	LDX $04
	STA a:battler::afflictions + STATUS_GROUP::PERSISTENT_HARDHEAL,X
	LDX $04
	STA a:battler::afflictions + STATUS_GROUP::PERSISTENT_EASYHEAL,X
	LDX $04
	REP #PROC_FLAGS::ACCUM8
	STZ a:battler::current_action,X
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0001
	LDX $04
	STA a:.LOWORD(RAM)+13,X
	LDY $18
	TYX
	REP #PROC_FLAGS::ACCUM8
	LDA $04
	JSR a:.LOWORD(SET_HP)
	LDX $04
	LDA a:battler::ally_or_enemy,X
	AND #$00FF
	BNE @UNKNOWN0
	LDX $04
	LDA a:battler::npc_id,X
	AND #$00FF
	BNE @UNKNOWN0
	LDA $04
	CLC
	ADC #$0010
	TAX
	STX $16
	LDA a:.LOWORD(RAM),X
	AND #$00FF
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDY $18
	TYA
	STA .LOWORD(CHAR_STRUCT)+char_struct::current_hp_target,X
	LDX $16
	LDA a:.LOWORD(RAM),X
	AND #$00FF
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA #$0001
	STA .LOWORD(CHAR_STRUCT)+char_struct::current_hp,X
@UNKNOWN0:
	LDX $04
	LDA a:battler::ally_or_enemy,X
	AND #$00FF
	CMP #$0001
	BNEL @UNKNOWN11
	LDX $04
	LDA a:battler::npc_id,X
	AND #$00FF
	BNEL @UNKNOWN11
	LDA #.LOWORD(BATTLERS_TABLE)
	LDX #$0000
	STX $18
	BRA @UNKNOWN4
@UNKNOWN3:
	TAX
	SEP #PROC_FLAGS::ACCUM8
	STZ a:battler::use_alt_spritemap,X
	CLC
	REP #PROC_FLAGS::ACCUM8
	ADC #.SIZEOF(battler)
	LDX $18
	INX
	STX $18
@UNKNOWN4:
	CPX #$0020
	BCC @UNKNOWN3
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0001
	LDX $04
	STA a:battler::use_alt_spritemap,X
	LDX #$0001
	STX $18
	BRA @UNKNOWN6
@UNKNOWN5:
	STX $02
	LDX $04
	REP #PROC_FLAGS::ACCUM8
	LDA a:battler::vram_sprite_index,X
	AND #$00FF
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC $02
	ASL
	TAX
	STZ .LOWORD(CUR_SPRITE_PALS) + $80,X
	LDX $18
	INX
	STX $18
@UNKNOWN6:
	CPX #$0010
	BCC @UNKNOWN5
	REP #PROC_FLAGS::ACCUM8
	LDA #$000A
	JSL UNKNOWN_C2FAD8
	LDA #$0001
	STA $02
	BRA @UNKNOWN8
@UNKNOWN7:
	LDA #$001F
	STA $0E
	TAY
	TAX
	STX $14
	LDX $04
	LDA a:battler::vram_sprite_index,X
	AND #$00FF
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC $02
	LDX $14
	JSL UNKNOWN_C2FB35
	INC $02
@UNKNOWN8:
	LDA $02
	CMP #$0010
	BCC @UNKNOWN7
	LDA #1*SIXTH_OF_A_SECOND
	JSR a:.LOWORD(WAIT)
	LDA #$0014
	JSL UNKNOWN_C2FAD8
	LDA #$0001
	STA $02
	BRA @UNKNOWN10
@UNKNOWN9:
	LDX $04
	LDA a:battler::vram_sprite_index,X
	AND #$00FF
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC $02
	STA $14
	ASL
	TAX
	LDA .LOWORD(CUR_SPRITE_PALS),X
	TAX
	STX $12
	SEP #PROC_FLAGS::ACCUM8
	LDA #$000A
	PHA
	REP #PROC_FLAGS::ACCUM8
	TXA
	SEP #PROC_FLAGS::INDEX8
	PLY
	JSL ASR8_UNKNOWN1
	AND #$001F
	STA $0E
	REP #PROC_FLAGS::INDEX8
	LDX $12
	TXA
	LSR
	LSR
	LSR
	LSR
	LSR
	AND #$001F
	TAY
	TXA
	AND #$001F
	TAX
	LDA $14
	JSL UNKNOWN_C2FB35
	INC $02
@UNKNOWN10:
	LDA $02
	CMP #$0010
	BCC @UNKNOWN9
	LDA #2*SIXTHS_OF_A_SECOND
	JSR a:.LOWORD(WAIT)
@UNKNOWN11:
	LDA #$0001
	PLD
	RTS
