
EVENT_684: ;$C38146
	EVENT_SET_PHYSICS_CALLBACK .LOWORD(UNKNOWN_C09FAE_ENTRY4)
	EVENT_SET_ANIMATION $00
	EVENT_SET_VELOCITIES_ZERO
	EVENT_UNKNOWN_C0C7DB
	EVENT_UNKNOWN_C0A443_ME2
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V1, $0088
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V2, $000C
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V3, $000C
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0000
@UNKNOWN1: ;$C38164
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V0, $0120
	EVENT_PAUSE 1*SECOND
	EVENT_UNKNOWN_C46E74
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN2)
	EVENT_ADD ACTIONSCRIPT_VARS::V4, $0001
	EVENT_WRITE_VAR_TO_TEMPVAR ACTIONSCRIPT_VARS::V4
	EVENT_ADD_TEMPVAR $FFF9
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(@UNKNOWN4)
	EVENT_EXEC_TEXT_BLOCK TEXT_EVENT_684
	EVENT_PAUSE 1*THIRTIETH_OF_A_SECOND
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN3)
@UNKNOWN2: ;$C3818C
	EVENT_WRITE_VAR_TO_TEMPVAR ACTIONSCRIPT_VARS::V4
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN4)
	EVENT_ADD_TEMPVAR $FFFF
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN3)
	EVENT_ADD_TEMPVAR $FFFF
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN3)
	EVENT_ADD ACTIONSCRIPT_VARS::V4, $FFFD
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN4)
@UNKNOWN3: ;$C381A7
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0000
@UNKNOWN4: ;$C381AB
	EVENT_WRITE_VAR_TO_TEMPVAR ACTIONSCRIPT_VARS::V4
	EVENT_WRITE_TEMPVAR_TO_VAR ACTIONSCRIPT_VARS::V0
	EVENT_UNKNOWN_C47499
	EVENT_PAUSE 1*FRAME
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN1)
