
EAT_FOOD: ;$C2B27D
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 26
	LDX .LOWORD(CURRENT_TARGET)
	LDA a:battler::id,X
	TAX
	STX $18
	TXA
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::afflictions,X
	AND #$00FF
	CMP #STATUS_0::UNCONSCIOUS
	BNE @UNKNOWN0
	DISPLAY_BATTLE_TEXT_PTR MSG_BTL_KIKANAI
	JMP @UNKNOWN36
@UNKNOWN0:
	JSR a:.LOWORD(APPLY_CONDIMENT)
	LDX $18
	CPX #$0004
	BNE @UNKNOWN1
	LDA #$0002
	BRA @UNKNOWN2
@UNKNOWN1:
	LDA #$0001
@UNKNOWN2:
	MOVE_INTX $06, $0A
	CLC
	ADC $0A
	STA $0A
	LDA [$0A]
	AND #$00FF
	TAY
	STY $16
	MOVE_INT $06, $0A
	LDA [$0A]
	AND #$00FF
	BEQ @UNKNOWN12
	CMP #$0001
	BEQ @UNKNOWN15
	CMP #$0002
	BEQL @UNKNOWN18
	CMP #$0003
	BEQL @UNKNOWN23
	CMP #$0004
	BEQL @UNKNOWN28
	CMP #$0005
	BEQL @UNKNOWN29
	CMP #$0006
	BEQL @UNKNOWN30
	CMP #$0007
	BEQL @UNKNOWN31
	CMP #$0008
	BEQL @UNKNOWN32
	CMP #$0009
	BEQL @UNKNOWN33
	CMP #$000A
	BEQL @UNKNOWN34
	JMP @UNKNOWN35
@UNKNOWN12:
	CPY #$0000
	BEQ @UNKNOWN13
	TYA
	OPTIMIZED_MULT $04, 6
	JSR a:.LOWORD(TWENTY_FIVE_PERCENT_VARIANCE)
	TAX
	BRA @UNKNOWN14
@UNKNOWN13:
	LDX #$7530
@UNKNOWN14:
	LDA .LOWORD(CURRENT_TARGET)
	JSR a:.LOWORD(RECOVER_HP)
	JMP @UNKNOWN35
@UNKNOWN15:
	CPY #$0000
	BEQ @UNKNOWN16
	TYA
	JSR a:.LOWORD(TWENTY_FIVE_PERCENT_VARIANCE)
	TAX
	BRA @UNKNOWN17
@UNKNOWN16:
	LDX #$7530
@UNKNOWN17:
	LDA .LOWORD(CURRENT_TARGET)
	JSR a:.LOWORD(RECOVER_PP)
	JMP @UNKNOWN35
@UNKNOWN18:
	CPY #$0000
	BEQ @UNKNOWN19
	TYA
	OPTIMIZED_MULT $04, 6
	JSR a:.LOWORD(TWENTY_FIVE_PERCENT_VARIANCE)
	TAX
	BRA @UNKNOWN20
@UNKNOWN19:
	LDX #$7530
@UNKNOWN20:
	LDA .LOWORD(CURRENT_TARGET)
	JSR a:.LOWORD(RECOVER_HP)
	LDY $16
	BEQ @UNKNOWN21
	TYA
	JSR a:.LOWORD(TWENTY_FIVE_PERCENT_VARIANCE)
	TAX
	BRA @UNKNOWN22
@UNKNOWN21:
	LDX #$7530
@UNKNOWN22:
	LDA .LOWORD(CURRENT_TARGET)
	JSR a:.LOWORD(RECOVER_PP)
	JMP @UNKNOWN35
@UNKNOWN23:
	LDA #$0004
	JSR a:.LOWORD(RAND_LIMIT)
	CMP #$0000
	BEQ @UNKNOWN28
	CMP #$0001
	BEQL @UNKNOWN29
	CMP #$0002
	BEQL @UNKNOWN30
	CMP #$0003
	BEQL @UNKNOWN31
	CMP #$0004
	BEQL @UNKNOWN32
	JMP @UNKNOWN35
@UNKNOWN28:
	LDA .LOWORD(CURRENT_TARGET)
	CLC
	ADC #battler::iq
	LDY $16
	SEP #PROC_FLAGS::INDEX8
	STY $00
	PHA
	REP #PROC_FLAGS::INDEX8
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA a:.LOWORD(RAM),X
	CLC
	ADC $00
	PLX
	STA a:.LOWORD(RAM),X
	LDX $18
	REP #PROC_FLAGS::ACCUM8
	TXA
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)+char_struct::boosted_iq
	PHA
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA a:.LOWORD(RAM),X
	CLC
	ADC $00
	PLX
	STA a:.LOWORD(RAM),X
	LDX $18
	REP #PROC_FLAGS::ACCUM8
	TXA
	JSL RECALC_CHARACTER_POSTMATH_IQ
	REP #PROC_FLAGS::ACCUM8
	LOADPTR MSG_BTL_IQ_UP, $0E
	LDY $16
	TYA
	STORE_INT1632 $0A
	MOVE_INT $0A, $12
	JSL DISPLAY_TEXT_WAIT
	JMP @UNKNOWN35
@UNKNOWN29:
	LDA .LOWORD(CURRENT_TARGET)
	CLC
	ADC #battler::guts
	PHA
	LDY $16
	STY $02
	TAX
	LDA a:.LOWORD(RAM),X
	CLC
	ADC $02
	PLX
	STA a:.LOWORD(RAM),X
	LDX $18
	TXA
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)+char_struct::boosted_guts
	PHA
	LDY $16
	SEP #PROC_FLAGS::INDEX8
	STY $00
	REP #PROC_FLAGS::INDEX8
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA a:.LOWORD(RAM),X
	CLC
	ADC $00
	PLX
	STA a:.LOWORD(RAM),X
	LDX $18
	REP #PROC_FLAGS::ACCUM8
	TXA
	JSL RECALC_CHARACTER_POSTMATH_GUTS
	REP #PROC_FLAGS::ACCUM8
	LOADPTR MSG_BTL_GUTS_UP, $0E
	LDY $16
	TYA
	STORE_INT1632 $0A
	MOVE_INT $0A, $12
	JSL DISPLAY_TEXT_WAIT
	JMP @UNKNOWN35
@UNKNOWN30:
	LDA .LOWORD(CURRENT_TARGET)
	CLC
	ADC #battler::speed
	PHA
	LDY $16
	STY $02
	TAX
	LDA a:.LOWORD(RAM),X
	CLC
	ADC $02
	PLX
	STA a:.LOWORD(RAM),X
	LDX $18
	TXA
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)+char_struct::boosted_speed
	PHA
	LDY $16
	SEP #PROC_FLAGS::INDEX8
	STY $00
	REP #PROC_FLAGS::INDEX8
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA a:.LOWORD(RAM),X
	CLC
	ADC $00
	PLX
	STA a:.LOWORD(RAM),X
	LDX $18
	REP #PROC_FLAGS::ACCUM8
	TXA
	JSL RECALC_CHARACTER_POSTMATH_SPEED
	REP #PROC_FLAGS::ACCUM8
	LOADPTR MSG_BTL_SPEED_UP, $0E
	LDY $16
	TYA
	STORE_INT1632 $0A
	MOVE_INT $0A, $12
	JSL DISPLAY_TEXT_WAIT
	JMP @UNKNOWN35
@UNKNOWN31:
	LDA .LOWORD(CURRENT_TARGET)
	CLC
	ADC #battler::vitality
	LDY $16
	SEP #PROC_FLAGS::INDEX8
	STY $00
	PHA
	REP #PROC_FLAGS::INDEX8
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA a:.LOWORD(RAM),X
	CLC
	ADC $00
	PLX
	STA a:.LOWORD(RAM),X
	LDX $18
	REP #PROC_FLAGS::ACCUM8
	TXA
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)+char_struct::boosted_vitality
	PHA
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA a:.LOWORD(RAM),X
	CLC
	ADC $00
	PLX
	STA a:.LOWORD(RAM),X
	LDX $18
	REP #PROC_FLAGS::ACCUM8
	TXA
	JSL RECALC_CHARACTER_POSTMATH_VITALITY
	REP #PROC_FLAGS::ACCUM8
	LOADPTR MSG_BTL_VITA_UP, $0E
	LDY $16
	TYA
	STORE_INT1632 $0A
	MOVE_INT $0A, $12
	JSL DISPLAY_TEXT_WAIT
	BRA @UNKNOWN35
@UNKNOWN32:
	LDA .LOWORD(CURRENT_TARGET)
	CLC
	ADC #battler::luck
	PHA
	LDY $16
	STY $02
	TAX
	LDA a:.LOWORD(RAM),X
	CLC
	ADC $02
	PLX
	STA a:.LOWORD(RAM),X
	LDX $18
	TXA
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)+char_struct::boosted_luck
	PHA
	LDY $16
	SEP #PROC_FLAGS::INDEX8
	STY $00
	REP #PROC_FLAGS::INDEX8
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA a:.LOWORD(RAM),X
	CLC
	ADC $00
	PLX
	STA a:.LOWORD(RAM),X
	LDX $18
	REP #PROC_FLAGS::ACCUM8
	TXA
	JSL RECALC_CHARACTER_POSTMATH_LUCK
	REP #PROC_FLAGS::ACCUM8
	LOADPTR MSG_BTL_LUCK_UP, $0E
	LDY $16
	TYA
	STORE_INT1632 $0A
	MOVE_INT $0A, $12
	JSL DISPLAY_TEXT_WAIT
	BRA @UNKNOWN35
@UNKNOWN33:
	JSL BTLACT_HEALING_A
	BRA @UNKNOWN35
@UNKNOWN34:
	JSL HEAL_POISON
@UNKNOWN35:
	SEP #PROC_FLAGS::ACCUM8
	LDY #$0003
	LDA [$06],Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BEQ @UNKNOWN36
	AND #$00FF
	OPTIMIZED_MULT $04, 6
	JSL UNKNOWN_C076C8
@UNKNOWN36:
	PLD
	RTL
