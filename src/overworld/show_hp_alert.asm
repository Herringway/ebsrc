
SHOW_HP_ALERT: ;$C1DBBB
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
.IF .DEFINED(JPN)
	RESERVE_STACK_SPACE 20
	TAY
	STY $12
.ELSE
	RESERVE_STACK_SPACE 98
	TAY
	STY $60
	LDA .LOWORD(CURRENT_ATTACKER)
	STA $02
	SEP #PROC_FLAGS::ACCUM8
	STZ $20
	STY $12
	REP #PROC_FLAGS::ACCUM8
	TDC
	CLC
	ADC #$0012
	STA .LOWORD(CURRENT_ATTACKER)
.ENDIF
	JSL UNKNOWN_C0943C
	CREATE_WINDOW_NEAR #WINDOW::TEXT_STANDARD
	LDX #.SIZEOF(char_struct::name)
.IF .DEFINED(JPN)
	LDY $12
.ELSE
	LDY $60
.ENDIF
	TYA
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)
	JSR a:.LOWORD(UNKNOWN_C1AC4A)
	DISPLAY_TEXT_PTR MSG_SYS_MAP_CRITICAL_SITUATION
	JSR a:.LOWORD(CLOSE_FOCUS_WINDOW)
	JSL WINDOW_TICK
	JSL UNKNOWN_C09451
.IF .DEFINED(USA)
	LDA $02
	STA .LOWORD(CURRENT_ATTACKER)
.ENDIF
	PLD
	RTL
