
UNKNOWN_EF0FF6: ;$EF0FF6
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	STZ .LOWORD(UNKNOWN_7E5D9A)
	LDA #EVENT_FLAG::USE_POSTGAME_MUSIC
	JSL GET_EVENT_FLAG
	STA .LOWORD(OVERWORLD_STATUS_SUPPRESSION)
	LDA .LOWORD(GAME_STATE)+game_state::walking_style
	CMP #WALKING_STYLE::BICYCLE
	BNE @UNKNOWN0
	LDA #MUSIC::BICYCLE
	JSL CHANGE_MUSIC
	BRA @UNKNOWN1
@UNKNOWN0:
	JSL UNKNOWN_C06A07
@UNKNOWN1:
	RTL
