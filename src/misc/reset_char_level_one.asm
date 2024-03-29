
RESET_CHAR_LEVEL_ONE:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	STY @VIRTUAL04
	STX @VIRTUAL02
	TAX
	DEX
	TXA
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAY
	SEP #PROC_FLAGS::ACCUM8
	LDA #STARTING_LEVEL
	STA PARTY_CHARACTERS+char_struct::level,Y
	LDA #STARTING_STATS
	STA PARTY_CHARACTERS+char_struct::base_offense,Y
	STA PARTY_CHARACTERS+char_struct::base_defense,Y
	STA PARTY_CHARACTERS+char_struct::base_speed,Y
	STA PARTY_CHARACTERS+char_struct::base_guts,Y
	STA PARTY_CHARACTERS+char_struct::base_luck,Y
	STA PARTY_CHARACTERS+char_struct::base_vitality,Y
	STA PARTY_CHARACTERS+char_struct::base_iq,Y
	REP #PROC_FLAGS::ACCUM8
	LDA #STARTING_HP
	STA PARTY_CHARACTERS+char_struct::max_hp,Y
	STA PARTY_CHARACTERS+char_struct::current_hp_target,Y
	STA PARTY_CHARACTERS+char_struct::current_hp,Y
	CPX #2
	BEQ @UNKNOWN0
	LDA #STARTING_PP
	STA @LOCAL01
	BRA @UNKNOWN1
@UNKNOWN0:
	LDA #STARTING_PP_JEFF
	STA @LOCAL01
@UNKNOWN1:
	TXA
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAY
	LDA @LOCAL01
	STA PARTY_CHARACTERS+char_struct::max_pp,Y
	STA PARTY_CHARACTERS+char_struct::current_pp_target,Y
	STA PARTY_CHARACTERS+char_struct::current_pp,Y
	TXY
	INY
	STY @LOCAL00
	TYA
	JSL RECALC_CHARACTER_POSTMATH_OFFENSE
	LDY @LOCAL00
	REP #PROC_FLAGS::ACCUM8
	TYA
	JSL RECALC_CHARACTER_POSTMATH_DEFENSE
	LDY @LOCAL00
	REP #PROC_FLAGS::ACCUM8
	TYA
	JSL RECALC_CHARACTER_POSTMATH_SPEED
	LDY @LOCAL00
	REP #PROC_FLAGS::ACCUM8
	TYA
	JSL RECALC_CHARACTER_POSTMATH_GUTS
	LDY @LOCAL00
	REP #PROC_FLAGS::ACCUM8
	TYA
	JSL RECALC_CHARACTER_POSTMATH_LUCK
	LDY @LOCAL00
	REP #PROC_FLAGS::ACCUM8
	TYA
	JSL RECALC_CHARACTER_POSTMATH_VITALITY
	LDY @LOCAL00
	REP #PROC_FLAGS::ACCUM8
	TYA
	JSL RECALC_CHARACTER_POSTMATH_IQ
	BRA @UNKNOWN3
@UNKNOWN2:
	LDX #0
	LDY @LOCAL00
	TYA
	JSR LEVEL_UP_CHAR
@UNKNOWN3:
	REP #PROC_FLAGS::ACCUM8
	LDA @VIRTUAL02
	DEC
	STA @VIRTUAL02
	BNE @UNKNOWN2
	LDA @VIRTUAL04
	BEQ @UNKNOWN4
	LDY @LOCAL00
	TYX
	DEX
	STX @LOCAL01
	TXA
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	STA @LOCAL00
	LOADPTR EXP_TABLE, @VIRTUAL0A
	LDA @LOCAL00
	TAX
	LDA PARTY_CHARACTERS+char_struct::level,X
	AND #$00FF
	OPTIMIZED_MULT @VIRTUAL04, 4
	STA @VIRTUAL02
	LDY #(MAX_LEVEL+1) * 4
	LDX @LOCAL01
	TXA
	JSL MULT16
	CLC
	ADC @VIRTUAL02
	CLC
	ADC @VIRTUAL0A
	STA @VIRTUAL0A
	DEREFERENCE_PTR_TO @VIRTUAL0A, @VIRTUAL06
	LDA @LOCAL00
	CLC
	ADC #.LOWORD(PARTY_CHARACTERS) + char_struct::exp
	TAY
	MOVE_INT_YPTRDEST @VIRTUAL06, __BSS_START__
@UNKNOWN4:
	END_C_FUNCTION
