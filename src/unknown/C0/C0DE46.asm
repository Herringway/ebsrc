
UNKNOWN_C0DE46:
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	JSR UNKNOWN_C0DE16
	JSL RAND
	XBA
	AND #$FF00
	STA PSI_TELEPORT_BETA_ANGLE
	LDA PSI_TELEPORT_STYLE
	CMP #TELEPORT_STYLE::PSI_BETA
	BNE @UNKNOWN0
	LDA #$0004
	STA PSI_TELEPORT_BETA_PROGRESS
	BRA @UNKNOWN1
@UNKNOWN0:
	LDA #$0008
	STA PSI_TELEPORT_BETA_PROGRESS
	STZ PSI_TELEPORT_BETTER_PROGRESS
@UNKNOWN1:
	LDA GAME_STATE+game_state::leader_x_coord
	STA PSI_TELEPORT_BETA_X_ADJUSTMENT
	LDA GAME_STATE+game_state::leader_y_coord
	STA PSI_TELEPORT_BETA_Y_ADJUSTMENT
	RTS
