
EVENT_137: ;$C3C4CF
	EVENT_SET_PHYSICS_CALLBACK .LOWORD(UNKNOWN_C0A37A)
	EVENT_SET_ANIMATION $00
	EVENT_SET_VELOCITIES_ZERO
	EVENT_UNKNOWN_C0C7DB
	EVENT_UNKNOWN_C0A3A4_ME2
	EVENT_UNKNOWN_C0A8B3 $0000, $0008
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V2, $0018
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V3, $0002
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB8A)
	EVENT_EXEC_TEXT_BLOCK TEXT_EVENT_137_138
	EVENT_PREPARE_NEW_ENTITY_AT_PARTY_LEADER
	EVENT_PAUSE 1*FRAME
	EVENT_EXEC_TEXT_BLOCK TEXT_EVENT_137
UNKNOWN_C3C506: ;$C3C506
	EVENT_LOOP $0A
		EVENT_SET_X_RELATIVE $0002
		EVENT_PAUSE 1*FIFTEENTH_OF_A_SECOND
		EVENT_SET_X_RELATIVE $FFFE
		EVENT_PAUSE 1*FIFTEENTH_OF_A_SECOND
		EVENT_SET_X_RELATIVE $FFFE
		EVENT_PAUSE 1*FIFTEENTH_OF_A_SECOND
		EVENT_SET_X_RELATIVE $0002
		EVENT_PAUSE 1*FIFTEENTH_OF_A_SECOND
		EVENT_SET_Y_RELATIVE $FFFE
		EVENT_PAUSE 1*FIFTEENTH_OF_A_SECOND
		EVENT_SET_Y_RELATIVE $0002
		EVENT_PAUSE 1*FIFTEENTH_OF_A_SECOND
		EVENT_SET_Y_RELATIVE $0002
		EVENT_PAUSE 1*FIFTEENTH_OF_A_SECOND
		EVENT_SET_Y_RELATIVE $FFFE
		EVENT_PAUSE 1*FIFTEENTH_OF_A_SECOND
	EVENT_LOOP_END
	EVENT_YIELD_TO_TEXT
	EVENT_SET_Y_VELOCITY $FE00
	EVENT_PAUSE $50*FRAMES
	EVENT_YIELD_TO_TEXT
	EVENT_SET_VELOCITIES_ZERO
	EVENT_HALT
