
UNKNOWN_C3F1EC:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
.IF .DEFINED(JPN)
	STACK_RESERVE_INT16
.ENDIF
	STACK_RESERVE_INT16 "LOCAL01"
	STACK_RESERVE_INT16 "LOCAL02"
	STACK_RESERVE_INT16 "LOCAL03"
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	STA @LOCAL03
	LDA #3
	JSL UNKNOWN_C2239D
	CMP #0
	BNE @UNKNOWN0
	LDA #0
	JMP @UNKNOWN6
@UNKNOWN0:
	LDA #0
	STA @VIRTUAL02
	JMP @UNKNOWN4
@UNKNOWN1:
	LOADPTR ITEM_CONFIGURATION_TABLE, @VIRTUAL06
	TYA
	OPTIMIZED_MULT @VIRTUAL04, .SIZEOF(item)
	TAX
	STX @LOCAL02
	TXA
	CLC
	ADC #item::type
	MOVE_INTY @VIRTUAL06, @VIRTUAL0A
	CLC
	ADC @VIRTUAL0A
	STA @VIRTUAL0A
	LDA [@VIRTUAL0A]
	AND #$00FF
	CMP #8
	BNE @UNKNOWN3
	TXA
	CLC
	ADC #item::params + item_parameters::epi
	MOVE_INTX @VIRTUAL06, @VIRTUAL0A
	CLC
	ADC @VIRTUAL0A
	STA @VIRTUAL0A
	SEP #PROC_FLAGS::ACCUM8
	LDA [@VIRTUAL0A]
	CMP PARTY_CHARACTERS+(.SIZEOF(char_struct) * ITEM_FIXING_CHARACTER) + char_struct::iq
	BGT @UNKNOWN3
	REP #PROC_FLAGS::ACCUM8
	LDA #99
	JSL RAND_MOD
	CMP @LOCAL03
	BCS @UNKNOWN3
	LDX @LOCAL02
	TXA
	CLC
	ADC #item::params + item_parameters::ep
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	SEP #PROC_FLAGS::ACCUM8
	LDA [@VIRTUAL06]
.IF .DEFINED(JPN)
	LDX @LOCAL00
	STX @VIRTUAL04
.ELSE
	LDX @VIRTUAL04
.ENDIF
	STA __BSS_START__,X
	LDY @LOCAL01
	REP #PROC_FLAGS::ACCUM8
	TYA
	BRA @UNKNOWN6
@UNKNOWN3:
	REP #PROC_FLAGS::ACCUM8
	INC @VIRTUAL02
@UNKNOWN4:
	LDA @VIRTUAL02
	CMP #.SIZEOF(char_struct::items)
	BCS @UNKNOWN5
	LDA @VIRTUAL02
	CLC
.IF .DEFINED(JPN)
	ADC #.LOWORD(PARTY_CHARACTERS)
	CLC
	ADC #(.SIZEOF(char_struct) * ITEM_FIXING_CHARACTER) + char_struct::items
.ELSE
	ADC #.LOWORD(PARTY_CHARACTERS)+(.SIZEOF(char_struct) * ITEM_FIXING_CHARACTER) + char_struct::items
.ENDIF
	STA @VIRTUAL04
.IF .DEFINED(JPN)
	STA @LOCAL00
.ENDIF
	LDX @VIRTUAL04
	LDA __BSS_START__,X
	AND #$00FF
	TAY
	STY @LOCAL01
	BNEL @UNKNOWN1
@UNKNOWN5:
	LDA #0
@UNKNOWN6:
	END_C_FUNCTION
