
BTLACT_HP_SUCKER: ;$C2A46B
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 24
	JSR SUCCESS_LUCK80
	CMP #$0000
	BEQL @UNKNOWN3
	LDX CURRENT_ATTACKER
	LDA a:battler::hp_target,X
	BEQ @UNKNOWN3
	LDA CURRENT_TARGET
	CMP CURRENT_ATTACKER
	BNE @UNKNOWN1
	DISPLAY_BATTLE_TEXT_PTR MSG_BTL_HPSUCK_ME
	BRA @UNKNOWN4
@UNKNOWN1:
	LDX CURRENT_TARGET
	LDA a:battler::hp_max,X
	JSR FIFTY_PERCENT_VARIANCE
	LSR
	LSR
	LSR
	TAY
	STY $16
	TYX
	LDA CURRENT_TARGET
	JSR REDUCE_HP
	LOADPTR MSG_BTL_HPSUCK_ON, $0E
	LDY $16
	TYA
	STORE_INT1632S $06
	MOVE_INT $06, $12
	JSL DISPLAY_TEXT_WAIT
	LDX CURRENT_ATTACKER
	LDY $16
	TYA
	CLC
	ADC a:battler::hp,X
	TAX
	LDA CURRENT_ATTACKER
	JSR SET_HP
	LDX CURRENT_TARGET
	LDA a:battler::hp,X
	BNE @UNKNOWN4
	LDA CURRENT_TARGET
	JSL KO_TARGET
	BRA @UNKNOWN4
@UNKNOWN3:
	DISPLAY_BATTLE_TEXT_PTR MSG_BTL_KIKANAI
@UNKNOWN4:
	PLD
	RTL
