
BTLACT_PSI_FLASH_A: ;$C29987
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	JSR a:.LOWORD(ATK_FAIL_CHK)
	CMP #$0000
	BNE @UNKNOWN2
	JSR a:.LOWORD(FLASH_IMMUNITY_TEST)
	CMP #$0000
	BEQ @UNKNOWN1
	JSL RAND
	AND #$0007
	BNE @UNKNOWN0
	JSR a:.LOWORD(FLASH_INFLICT_FEELING_STRANGE)
	BRA @UNKNOWN1
@UNKNOWN0:
	JSR a:.LOWORD(FLASH_INFLICT_CRYING)
@UNKNOWN1:
	JSR a:.LOWORD(WEAKEN_SHIELD)
@UNKNOWN2:
	RTL