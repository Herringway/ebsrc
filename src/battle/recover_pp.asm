
RECOVER_PP: ;$C27318
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 28
	STX $04
	STA $02
	STA $1A
	LDX $02
	LDA a:battler::consciousness,X
	AND #$00FF
	CMP #$0001
	BNE @UNKNOWN2
	LDX $02
	LDA a:battler::afflictions,X
	AND #$00FF
	CMP #$0001
	BEQ @UNKNOWN2
	LDX $02
	LDY a:battler::pp_target,X
	LDX $02
	LDA a:battler::pp_max,X
	STA $18
	STA $02
	TYA
	CLC
	ADC $04
	CMP $02
	BCC @UNKNOWN0
	STY $02
	LDA $18
	SEC
	SBC $02
	BRA @UNKNOWN1
@UNKNOWN0:
	LDA $04
@UNKNOWN1:
	TAY
	STY $16
	LDA $1A
	STA $02
	LDX $02
	LDA $04
	CLC
	ADC a:battler::pp_target,X
	TAX
	LDA $02
	JSR a:.LOWORD(SET_PP)
	LOADPTR MSG_BTL_PP_KAIFUKU, $0E
	LDY $16
	TYA
	STORE_INT1632 $06
	MOVE_INT $06, $12
	JSL DISPLAY_TEXT_WAIT
@UNKNOWN2:
	PLD
	RTS
