
GAME_INIT: ;$C0B99A
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	JSL CHECK_SRAM_INTEGRITY
	JSL INITIALIZE_SPC700
	JSL ENABLE_NMI_JOYPAD
	JSL CHECK_HARDWARE
	JSL WAIT_UNTIL_NEXT_FRAME
	JSL WAIT_UNTIL_NEXT_FRAME
	.IF DEBUG_BUILD
		LDA PAD_STATE
		AND #PAD::DOWN | PAD::L_BUTTON
		BEQ @NORMAL
		LDA #1
		STA DEBUG
		JSL DEBUG_MENU_LOAD
		BRA @RETURN
	.ENDIF
@NORMAL:
	STZ DEBUG
	JSL MAIN_LOOP
@RETURN:
	RTS
