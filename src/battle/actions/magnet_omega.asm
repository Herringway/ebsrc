
BTLACT_MAGNET_O: ;$C29FE1
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	LDX CURRENT_TARGET
	LDA a:battler::ally_or_enemy,X
	AND #$00FF
	BNE @UNKNOWN0
	LDX CURRENT_TARGET
	LDA RAM,X
	CMP #$0003
	BEQ @UNKNOWN1
@UNKNOWN0:
	JSL BTLACT_MAGNET_A
@UNKNOWN1:
	RTL
