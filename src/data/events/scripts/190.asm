
EVENT_190: ;$C3D423
	EVENT_SET_PHYSICS_CALLBACK .LOWORD(UNKNOWN_C09FAE_ENTRY4)
	EVENT_SET_ANIMATION $00
	EVENT_SET_VELOCITIES_ZERO
	EVENT_START_TASK .LOWORD(EVENT_8_ENTRY_2)
	EVENT_UNKNOWN_C0C7DB
	EVENT_UNKNOWN_C0A3A4_ME2
	EVENT_UNKNOWN_C0A8B3 $0000, $0008
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V2, $0018
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V3, $0010
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB8A)
	EVENT_EXEC_TEXT_BLOCK TEXT_EVENT_190
	EVENT_PREPARE_NEW_ENTITY_AT_PARTY_LEADER
	EVENT_HALT
