
UNKNOWN_C1FF6B: ;$C1FF6B
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	STZ UNKNOWN_7E5E6E
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0001
	STA UNKNOWN_7EB49D
	JSR FILE_MENU_LOOP
	JSL CLEAR_INSTANT_PRINTING
	JSL WINDOW_TICK
	.A16
	STZ UNKNOWN_7EB4B6
	STZ UNKNOWN_7EB4A2
	LDA #$00FF
	STA UNKNOWN_7E5E6E
	SEP #PROC_FLAGS::ACCUM8
	STZ UNKNOWN_7EB49D
	REP #PROC_FLAGS::ACCUM8
	LDA #$0000
	RTL
