
UNKNOWN_C09D1F:
	PHX
	JSR UNKNOWN_C09D3E
	LDA ENTITY_SCRIPT_NEXT_SCRIPTS,Y
	CPX #$FFFF
	BEQ @UNKNOWN0
	STA ENTITY_SCRIPT_NEXT_SCRIPTS,X
	PLX
	BRA @UNKNOWN1
@UNKNOWN0:
	PLX
	STA ENTITY_SCRIPT_INDEX_TABLE,X
@UNKNOWN1:
	CPY ACTIONSCRIPT_CURRENT_SCRIPT
	BNE @UNKNOWN2
	STA ACTIONSCRIPT_CURRENT_SCRIPT
@UNKNOWN2:
	RTS
