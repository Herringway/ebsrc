
LEVEL_UP_CHAR: ;$C1D109
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 31
	STX $1D
	TAX
	TXY
	DEY
	STY $1B
	TYA
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	STA $19
	CLC
	ADC #.LOWORD(CHAR_STRUCT)+char_struct::level
	STA $02
	LDX $02
	SEP #PROC_FLAGS::ACCUM8
	LDA a:.LOWORD(RAM),X
	STA $18
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	STA $04
	STA $16
	SEP #PROC_FLAGS::ACCUM8
	LDA $18
	INC
	LDX $02
	STA a:.LOWORD(RAM),X
	REP #PROC_FLAGS::ACCUM8
	LDA $1D
	BEQ @UNKNOWN0
	LDA #$0001
	JSR a:.LOWORD(ENABLE_BLINKING_TRIANGLE)
	LDX #$0005
	LDA $19
	CLC
	ADC #.LOWORD(CHAR_STRUCT)
	JSR a:.LOWORD(UNKNOWN_C1ACA1)
	LDX $02
	SEP #PROC_FLAGS::ACCUM8
	LDA a:.LOWORD(RAM),X
	STORE_INT832 $06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	JSR a:.LOWORD(UNKNOWN_C1AD0A)
	DISPLAY_TEXT_PTR MSG_BTL_LEVEL_UP
	LDA #$0002
	JSR a:.LOWORD(ENABLE_BLINKING_TRIANGLE)
@UNKNOWN0:
	LDY $1B
	TYA
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)+char_struct::base_offense
	TAX
	STX $14
	LDY $1B
	TYA
	OPTIMIZED_MULT $04, 7
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA f:STATS_GROWTH_VARS,X
	STA $0E
	LDX $14
	LDA a:.LOWORD(RAM),X
	STA $0F
	REP #PROC_FLAGS::ACCUM8
	LDA $16
	STA $04
	JSR a:.LOWORD(UNKNOWN_C1D08B)
	STA $02
	CLC
	SBC #$0000
	BRANCHLTEQS @UNKNOWN4
	LDA $02
	SEP #PROC_FLAGS::ACCUM8
	STA $00
	LDX $14
	LDA a:.LOWORD(RAM),X
	CLC
	ADC $00
	STA a:.LOWORD(RAM),X
	LDY $1B
	REP #PROC_FLAGS::ACCUM8
	TYA
	INC
	JSL RECALC_CHARACTER_POSTMATH_OFFENSE
	REP #PROC_FLAGS::ACCUM8
	LDA $1D
	BEQ @UNKNOWN4
	MOVE_INT1632S $02, $06
	MOVE_INT $06, $0E
	JSR a:.LOWORD(UNKNOWN_C1AD0A)
	DISPLAY_TEXT_PTR MSG_BTL_LV_OFFENSE_UP
@UNKNOWN4:
	LDY $1B
	TYA
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)+char_struct::base_defense
	TAX
	STX $14
	LDY $1B
	TYA
	OPTIMIZED_MULT $04, 7
	TAX
	INX
	SEP #PROC_FLAGS::ACCUM8
	LDA f:STATS_GROWTH_VARS,X
	STA $0E
	LDX $14
	LDA a:.LOWORD(RAM),X
	STA $0F
	REP #PROC_FLAGS::ACCUM8
	LDA $16
	STA $04
	JSR a:.LOWORD(UNKNOWN_C1D08B)
	STA $02
	CLC
	SBC #$0000
	BRANCHLTEQS @UNKNOWN8
	LDA $02
	SEP #PROC_FLAGS::ACCUM8
	STA $00
	LDX $14
	LDA a:.LOWORD(RAM),X
	CLC
	ADC $00
	STA a:.LOWORD(RAM),X
	LDY $1B
	REP #PROC_FLAGS::ACCUM8
	TYA
	INC
	JSL RECALC_CHARACTER_POSTMATH_DEFENSE
	REP #PROC_FLAGS::ACCUM8
	LDA $1D
	BEQ @UNKNOWN8
	MOVE_INT1632S $02, $06
	MOVE_INT $06, $0E
	JSR a:.LOWORD(UNKNOWN_C1AD0A)
	DISPLAY_TEXT_PTR MSG_BTL_LV_DEFENSE_UP
@UNKNOWN8:
	LDY $1B
	TYA
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)+char_struct::base_speed
	STA $02
	LDY $1B
	TYA
	OPTIMIZED_MULT $04, 7
	TAX
	INX
	INX
	SEP #PROC_FLAGS::ACCUM8
	LDA f:STATS_GROWTH_VARS,X
	STA $0E
	LDX $02
	LDA a:.LOWORD(RAM),X
	STA $0F
	REP #PROC_FLAGS::ACCUM8
	LDA $16
	STA $04
	JSR a:.LOWORD(UNKNOWN_C1D08B)
	TAX
	STX $14
	TXA
	CLC
	SBC #$0000
	BRANCHLTEQS @UNKNOWN12
	SEP #PROC_FLAGS::INDEX8
	STX $00
	REP #PROC_FLAGS::INDEX8
	LDX $02
	SEP #PROC_FLAGS::ACCUM8
	LDA a:.LOWORD(RAM),X
	CLC
	ADC $00
	LDX $02
	STA a:.LOWORD(RAM),X
	LDY $1B
	REP #PROC_FLAGS::ACCUM8
	TYA
	INC
	JSL RECALC_CHARACTER_POSTMATH_SPEED
	REP #PROC_FLAGS::ACCUM8
	LDA $1D
	BEQ @UNKNOWN12
	LDX $14
	TXA
	STORE_INT1632S $06
	MOVE_INT $06, $0E
	JSR a:.LOWORD(UNKNOWN_C1AD0A)
	DISPLAY_TEXT_PTR MSG_BTL_LV_SPEED_UP
@UNKNOWN12:
	LDY $1B
	TYA
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)+char_struct::base_guts
	TAX
	STX $14
	LDY $1B
	TYA
	OPTIMIZED_MULT $04, 7
	TAX
	INX
	INX
	INX
	SEP #PROC_FLAGS::ACCUM8
	LDA f:STATS_GROWTH_VARS,X
	STA $0E
	LDX $14
	LDA a:.LOWORD(RAM),X
	STA $0F
	REP #PROC_FLAGS::ACCUM8
	LDA $16
	STA $04
	JSR a:.LOWORD(UNKNOWN_C1D08B)
	STA $02
	CLC
	SBC #$0000
	BRANCHLTEQS @UNKNOWN16
	LDA $02
	SEP #PROC_FLAGS::ACCUM8
	STA $00
	LDX $14
	LDA a:.LOWORD(RAM),X
	CLC
	ADC $00
	STA a:.LOWORD(RAM),X
	LDY $1B
	REP #PROC_FLAGS::ACCUM8
	TYA
	INC
	JSL RECALC_CHARACTER_POSTMATH_GUTS
	REP #PROC_FLAGS::ACCUM8
	LDA $1D
	BEQ @UNKNOWN16
	MOVE_INT1632S $02, $06
	MOVE_INT $06, $0E
	JSR a:.LOWORD(UNKNOWN_C1AD0A)
	DISPLAY_TEXT_PTR MSG_BTL_LV_GUTS_UP
@UNKNOWN16:
	LDA #$000A
	CLC
	SBC $04
	BRANCHLTEQS @UNKNOWN19
	LDY $1B
	TYA
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::base_vitality,X
	AND #$00FF
	DEC
	DEC
	OPTIMIZED_MULT $04, 10
	STA $02
	LDY $1B
	TYA
	OPTIMIZED_MULT $04, 7
	TAX
	INX
	INX
	INX
	INX
	LDA f:STATS_GROWTH_VARS,X
	AND #$00FF
	TAY
	LDA $16
	STA $04
	JSL MULT16
	SEC
	SBC $02
	LDY #10
	JSL DIVISION16
	BRA @UNKNOWN20
@UNKNOWN19:
	LDY $1B
	TYA
	OPTIMIZED_MULT $04, 7
	TAX
	INX
	INX
	INX
	INX
	SEP #PROC_FLAGS::ACCUM8
	LDA f:STATS_GROWTH_VARS,X
	STA $0E
	REP #PROC_FLAGS::ACCUM8
	TYA
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(CHAR_STRUCT)+char_struct::base_vitality,X
	STA $0F
	REP #PROC_FLAGS::ACCUM8
	LDA $16
	STA $04
	JSR a:.LOWORD(UNKNOWN_C1D08B)
@UNKNOWN20:
	STA $02
	CLC
	SBC #$0000
	BRANCHLTEQS @UNKNOWN24
	LDY $1B
	TYA
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)+char_struct::base_vitality
	TAX
	LDA $02
	SEP #PROC_FLAGS::ACCUM8
	STA $00
	LDA a:.LOWORD(RAM),X
	CLC
	ADC $00
	STA a:.LOWORD(RAM),X
	LDY $1B
	REP #PROC_FLAGS::ACCUM8
	TYA
	INC
	JSL RECALC_CHARACTER_POSTMATH_VITALITY
	REP #PROC_FLAGS::ACCUM8
	LDA $1D
	BEQ @UNKNOWN24
	MOVE_INT1632S $02, $06
	MOVE_INT $06, $0E
	JSR a:.LOWORD(UNKNOWN_C1AD0A)
	DISPLAY_TEXT_PTR MSG_BTL_LV_VITA_UP
@UNKNOWN24:
	LDA #$000A
	CLC
	SBC $04
	BRANCHLTEQS @UNKNOWN27
	LDY $1B
	TYA
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::base_iq,X
	AND #$00FF
	DEC
	DEC
	OPTIMIZED_MULT $04, 10
	STA $02
	LDY $1B
	TYA
	OPTIMIZED_MULT $04, 7
	CLC
	ADC #$0005
	TAX
	LDA f:STATS_GROWTH_VARS,X
	AND #$00FF
	TAY
	LDA $16
	STA $04
	JSL MULT16
	SEC
	SBC $02
	LDY #$000A
	JSL DIVISION16
	BRA @UNKNOWN28
@UNKNOWN27:
	LDY $1B
	TYA
	OPTIMIZED_MULT $04, 7
	CLC
	ADC #$0005
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA f:STATS_GROWTH_VARS,X
	STA $0E
	REP #PROC_FLAGS::ACCUM8
	TYA
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(CHAR_STRUCT)+char_struct::base_iq,X
	STA $0F
	REP #PROC_FLAGS::ACCUM8
	LDA $16
	STA $04
	JSR a:.LOWORD(UNKNOWN_C1D08B)
@UNKNOWN28:
	STA $02
	CLC
	SBC #$0000
	BRANCHLTEQS @UNKNOWN32
	LDY $1B
	TYA
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)+char_struct::base_iq
	TAX
	LDA $02
	SEP #PROC_FLAGS::ACCUM8
	STA $00
	LDA a:.LOWORD(RAM),X
	CLC
	ADC $00
	STA a:.LOWORD(RAM),X
	LDY $1B
	REP #PROC_FLAGS::ACCUM8
	TYA
	INC
	JSL RECALC_CHARACTER_POSTMATH_IQ
	REP #PROC_FLAGS::ACCUM8
	LDA $1D
	BEQ @UNKNOWN32
	MOVE_INT1632S $02, $06
	MOVE_INT $06, $0E
	JSR a:.LOWORD(UNKNOWN_C1AD0A)
	DISPLAY_TEXT_PTR MSG_BTL_LV_IQ_UP
@UNKNOWN32:
	LDY $1B
	TYA
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)+char_struct::base_luck
	STA $02
	LDY $1B
	TYA
	OPTIMIZED_MULT $04, 7
	CLC
	ADC #$0006
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA f:STATS_GROWTH_VARS,X
	STA $0E
	LDX $02
	LDA a:.LOWORD(RAM),X
	STA $0F
	REP #PROC_FLAGS::ACCUM8
	LDA $16
	STA $04
	JSR a:.LOWORD(UNKNOWN_C1D08B)
	TAX
	STX $14
	TXA
	CLC
	SBC #$0000
	BRANCHLTEQS @UNKNOWN36
	SEP #PROC_FLAGS::INDEX8
	STX $00
	REP #PROC_FLAGS::INDEX8
	LDX $02
	SEP #PROC_FLAGS::ACCUM8
	LDA a:.LOWORD(RAM),X
	CLC
	ADC $00
	LDX $02
	STA a:.LOWORD(RAM),X
	LDY $1B
	REP #PROC_FLAGS::ACCUM8
	TYA
	INC
	JSL RECALC_CHARACTER_POSTMATH_LUCK
	REP #PROC_FLAGS::ACCUM8
	LDA $1D
	BEQ @UNKNOWN36
	LDX $14
	TXA
	STORE_INT1632S $06
	MOVE_INT $06, $0E
	JSR a:.LOWORD(UNKNOWN_C1AD0A)
	DISPLAY_TEXT_PTR MSG_BTL_LV_LUCK_UP
@UNKNOWN36:
	LDY $1B
	TYA
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::vitality,X
	AND #$00FF
	OPTIMIZED_MULT $04, 15
	SEC
	SBC .LOWORD(CHAR_STRUCT)+char_struct::max_hp,X
	STA $14
	CLC
	SBC #$0001
	BRANCHLTEQS @UNKNOWN39
	LDA $14
	TAX
	BRA @UNKNOWN40
@UNKNOWN39:
	LDA #$0002
	JSL RAND_MOD
	TAX
	INX
@UNKNOWN40:
	STX $02
	LDY $1B
	TYA
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	STA $19
	CLC
	ADC #.LOWORD(CHAR_STRUCT)+char_struct::max_hp
	TAX
	LDA a:.LOWORD(RAM),X
	CLC
	ADC $02
	STA a:.LOWORD(RAM),X
	LDA $19
	CLC
	ADC #.LOWORD(CHAR_STRUCT)+char_struct::current_hp_target
	TAX
	LDA a:.LOWORD(RAM),X
	CLC
	ADC $02
	STA a:.LOWORD(RAM),X
	LDA $1D
	BEQ @UNKNOWN42
	MOVE_INT1632S $02, $06
	MOVE_INT $06, $0E
	JSR a:.LOWORD(UNKNOWN_C1AD0A)
	DISPLAY_TEXT_PTR MSG_BTL_LV_MAXHP_UP
@UNKNOWN42:
	LDY $1B
	CPY #$0002
	BEQL @UNKNOWN66
	CPY #$0000
	BNE @UNKNOWN44
	LDA #EVENT_FLAG::FLG_WIN_OSCAR
	JSL GET_EVENT_FLAG
	CMP #$0000
	BEQ @UNKNOWN44
	LDY $1B
	TYA
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::iq,X
	AND #$00FF
	ASL
	BRA @UNKNOWN45
@UNKNOWN44:
	LDY $1B
	TYA
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::iq,X
	AND #$00FF
@UNKNOWN45:
	STA $12
	LDY $1B
	TYA
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA $12
	OPTIMIZED_MULT $04, 5
	SEC
	SBC .LOWORD(CHAR_STRUCT)+char_struct::max_pp,X
	STA $14
	CLC
	SBC #$0001
	BRANCHLTEQS @UNKNOWN48
	LDA $14
	TAX
	BRA @UNKNOWN49
@UNKNOWN48:
	LDA #$0002
	JSL RAND_MOD
	TAX
@UNKNOWN49:
	TXA
	STA $14
	BEQ @UNKNOWN51
	LDY $1B
	TYA
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	STA $02
	STA $19
	LDA $02
	CLC
	ADC #.LOWORD(CHAR_STRUCT)+char_struct::max_pp
	TAX
	LDA $14
	STA $02
	LDA a:.LOWORD(RAM),X
	CLC
	ADC $02
	STA a:.LOWORD(RAM),X
	LDA $19
	STA $02
	CLC
	ADC #.LOWORD(CHAR_STRUCT)+char_struct::current_pp_target
	TAX
	LDA $14
	STA $02
	LDA a:.LOWORD(RAM),X
	CLC
	ADC $02
	STA a:.LOWORD(RAM),X
	LDA $1D
	BEQ @UNKNOWN51
	MOVE_INT1632S $14, $06
	MOVE_INT $06, $0E
	JSR a:.LOWORD(UNKNOWN_C1AD0A)
	DISPLAY_TEXT_PTR MSG_BTL_LV_MAXPP_UP
@UNKNOWN51:
	LDA $1D
	BEQL @UNKNOWN66
	LDA $16
	STA $04
	STA $02
	INC $02
	LDY $1B
	TYA
	BEQ @UNKNOWN54
	CMP #$0001
	BEQ @UNKNOWN58
	CMP #$0003
	BEQL @UNKNOWN62
	JMP @UNKNOWN66
@UNKNOWN54:
	LDX #$0001
	STX $1B
	BRA @UNKNOWN57
@UNKNOWN55:
	LDA $16
	CLC
	ADC #$0006
	CLC
	ADC $06
	STA $06
	LDA [$06]
	AND #$00FF
	CMP $02
	BNE @UNKNOWN56
	TXA
	SEP #PROC_FLAGS::ACCUM8
	JSR a:.LOWORD(UNKNOWN_C1ACF8)
	.A16
	DISPLAY_TEXT_PTR MSG_BTL_LEARN_PSI
@UNKNOWN56:
	.A8
	LDX $1B
	INX
	STX $1B
@UNKNOWN57:
	.A16
	LOADPTR PSI_ABILITY_TABLE, $06
	TXA
	OPTIMIZED_MULT $04, 15
	STA $16
	MOVE_INTY $06, $0A
	CLC
	ADC $0A
	STA $0A
	LDA [$0A]
	AND #$00FF
	BNE @UNKNOWN55
	JMP @UNKNOWN66
@UNKNOWN58:
	LDX #$0001
	STX $1B
	BRA @UNKNOWN61
@UNKNOWN59:
	LDA $16
	CLC
	ADC #$0007
	CLC
	ADC $06
	STA $06
	LDA [$06]
	AND #$00FF
	CMP $02
	BNE @UNKNOWN60
	TXA
	SEP #PROC_FLAGS::ACCUM8
	JSR a:.LOWORD(UNKNOWN_C1ACF8)
	.A16
	DISPLAY_TEXT_PTR MSG_BTL_LEARN_PSI
@UNKNOWN60:
	.A8
	LDX $1B
	INX
	STX $1B
@UNKNOWN61:
	.A16
	LOADPTR PSI_ABILITY_TABLE, $06
	TXA
	OPTIMIZED_MULT $04, 15
	STA $16
	MOVE_INTY $06, $0A
	CLC
	ADC $0A
	STA $0A
	LDA [$0A]
	AND #$00FF
	BNE @UNKNOWN59
	BRA @UNKNOWN66
@UNKNOWN62:
	LDX #$0001
	STX $1B
	BRA @UNKNOWN65
@UNKNOWN63:
	LDA $16
	CLC
	ADC #$0008
	CLC
	ADC $06
	STA $06
	LDA [$06]
	AND #$00FF
	CMP $02
	BNE @UNKNOWN64
	TXA
	SEP #PROC_FLAGS::ACCUM8
	JSR a:.LOWORD(UNKNOWN_C1ACF8)
	.A16
	DISPLAY_TEXT_PTR MSG_BTL_LEARN_PSI
@UNKNOWN64:
	.A8
	LDX $1B
	INX
	STX $1B
@UNKNOWN65:
	.A16
	LOADPTR PSI_ABILITY_TABLE, $06
	TXA
	OPTIMIZED_MULT $04, 15
	STA $16
	MOVE_INTY $06, $0A
	CLC
	ADC $0A
	STA $0A
	LDA [$0A]
	AND #$00FF
	BNE @UNKNOWN63
@UNKNOWN66:
	LDA $1D
	BEQ @UNKNOWN67
	JSR a:.LOWORD(CLEAR_BLINKING_PROMPT)
@UNKNOWN67:
	PLD
	RTS
