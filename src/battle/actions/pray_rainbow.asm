
BTLACT_PRAY_RAINBOW: ;$C2AC7B
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	LDX CURRENT_TARGET
	LDA a:battler::afflictions+STATUS_GROUP::PERSISTENT_EASYHEAL,X
	AND #$00FF
	CMP #STATUS_0::UNCONSCIOUS
	BNE @UNKNOWN0
	LDX CURRENT_TARGET
	LDA a:battler::hp_max,X
	TAX
	LDA CURRENT_TARGET
	JSR REVIVE_TARGET
@UNKNOWN0:
	RTL
