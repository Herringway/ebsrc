
RESET_POST_BATTLE_STATS:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	END_STACK_VARS
	LDA #0
	STA @LOCAL00
	BRA @UNKNOWN2
@UNKNOWN0:
	LDY #.SIZEOF(battler)
	JSL MULT168
	TAX
	LDA BATTLERS_TABLE+battler::consciousness,X
	AND #$00FF
	BEQ @UNKNOWN1
	LDA BATTLERS_TABLE+battler::ally_or_enemy,X
	AND #$00FF
	BNE @UNKNOWN1
	LDA BATTLERS_TABLE+battler::npc_id,X
	AND #$00FF
	BNE @UNKNOWN1
	LDA BATTLERS_TABLE+battler::row,X
	AND #$00FF
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(PARTY_CHARACTERS)
	TAX
	SEP #PROC_FLAGS::ACCUM8
	STZ a:char_struct::afflictions+6,X
	STZ a:char_struct::afflictions+4,X
	STZ a:char_struct::afflictions+3,X
	STZ a:char_struct::afflictions+2,X
@UNKNOWN1:
	REP #PROC_FLAGS::ACCUM8
	LDA @LOCAL00
	INC
	STA @LOCAL00
@UNKNOWN2:
	CMP #TOTAL_PARTY_COUNT
	BCC @UNKNOWN0
	END_C_FUNCTION
