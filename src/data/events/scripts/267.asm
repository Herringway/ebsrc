
EVENT_267: ;$C309B0
	EVENT_UNKNOWN_C0A864 $FF
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB26)
	EVENT_UNKNOWN_C0A685 $00, $01
	EVENT_SHORTJUMP_UNKNOWN $0A1F
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0001
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $01F0
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $08E8
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB44)
UNKNOWN_C309D0: ;$C309D0
	EVENT_PAUSE 1*FRAME
	EVENT_UNKNOWN_C0A8C6
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(UNKNOWN_C309D0)
	EVENT_SET_X_VELOCITY $0000
	EVENT_SET_Y_VELOCITY $0000
	EVENT_PAUSE $14*FRAMES
	EVENT_UNKNOWN_C46E46
	EVENT_PAUSE 1*FRAME
	EVENT_PLAY_SOUND SFX::FALLING
	EVENT_SET_Y_VELOCITY $0100
	EVENT_SET_X_VELOCITY $FFC0
	EVENT_SET_Z_VELOCITY $0300
	EVENT_PAUSE 1*FIFTEENTH_OF_A_SECOND
	EVENT_SET_Z_VELOCITY $0200
	EVENT_PAUSE 1*FIFTEENTH_OF_A_SECOND
	EVENT_SET_Z_VELOCITY $0100
	EVENT_PAUSE 1*FIFTEENTH_OF_A_SECOND
	EVENT_SET_Z_VELOCITY $0000
	EVENT_PAUSE 1*FIFTEENTH_OF_A_SECOND
	EVENT_SET_Z_VELOCITY $FF00
	EVENT_PAUSE 1*SIXTH_OF_A_SECOND
	EVENT_SET_Z_VELOCITY $FE00
	EVENT_PAUSE 1*FIFTH_OF_A_SECOND
	EVENT_PLAY_SOUND SFX::TOOK_DAMAGE
	EVENT_SET_VELOCITIES_ZERO
	EVENT_UNKNOWN_C46E46
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
