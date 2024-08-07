
RELOAD_MAP_AT_POSITION:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16 ;int x
	STACK_RESERVE_PARAM_INT16 ;int y
	END_STACK_VARS
	STA SCREEN_X_PIXELS
	STA SCREEN_X_PIXELS_COPY
	STX SCREEN_Y_PIXELS
	STX SCREEN_Y_PIXELS_COPY
	LSR
	LSR
	LSR
	TAY
	STY @LOCAL03
	TXA
	LSR
	LSR
	LSR
	STA @VIRTUAL02
	LDA #.LOWORD(-1)
	STA LOADED_MAP_PALETTE
	STA LOADED_MAP_TILE_COMBO
	LDA @VIRTUAL02
	LSR
	LSR
	LSR
	LSR
	TAX
	TYA
	LSR
	LSR
	LSR
	LSR
	LSR
	JSR LOAD_MAP_AT_SECTOR
	LDY @LOCAL03
	TYA
	SEC
	SBC #16
	STA @LOCAL02
	LDA @VIRTUAL02
	SEC
	SBC #14
	STA @LOCAL01
	TYA
	SEC
	SBC #32
	STA @VIRTUAL04
	LDA @VIRTUAL02
	SEC
	SBC #32
	STA @VIRTUAL02
	STA @LOCAL00
	LDX #0
	BRA @UNKNOWN1
@UNKNOWN0:
	SEP #PROC_FLAGS::ACCUM8
	LDA #>-1
	STA LOADED_COLUMNS_Y,X
	STA LOADED_COLUMNS_X,X
	STA LOADED_ROWS_Y,X
	STA LOADED_ROWS_X,X
	INX
@UNKNOWN1:
	CPX #16
	BCC @UNKNOWN0
	LDY #0
	STY @LOCAL03
	BRA @UNKNOWN3
@UNKNOWN2:
	REP #PROC_FLAGS::ACCUM8
	LDA @LOCAL00
	STA @VIRTUAL02
	STY @VIRTUAL02
	CLC
	ADC @VIRTUAL02
	TAX
	LDA @VIRTUAL04
	JSR LOAD_MAP_ROW
	LDY @LOCAL03
	INY
	STY @LOCAL03
@UNKNOWN3:
	CPY #60
	BCC @UNKNOWN2
	LDY #0
	STY @LOCAL03
	BRA @UNKNOWN5
@UNKNOWN4:
	REP #PROC_FLAGS::ACCUM8
	LDA @LOCAL00
	STA @VIRTUAL02
	STY @VIRTUAL02
	CLC
	ADC @VIRTUAL02
	TAX
	LDA @VIRTUAL04
	JSR LOAD_COLLISION_ROW
	LDY @LOCAL03
	INY
	STY @LOCAL03
@UNKNOWN5:
	CPY #60
	BCC @UNKNOWN4
	LDY #.LOWORD(-1)
	STY @LOCAL03
	BRA @UNKNOWN7
@UNKNOWN6:
	REP #PROC_FLAGS::ACCUM8
	TYA
	CLC
	ADC @LOCAL01
	TAX
	LDA @LOCAL02
	JSR UNKNOWN_C00E16
	LDY @LOCAL03
	INY
	STY @LOCAL03
@UNKNOWN7:
	CPY #31
	BNE @UNKNOWN6
@UNKNOWN8:
	REP #PROC_FLAGS::ACCUM8
	LDA FADE_PARAMETERS + fade_parameters::step
	AND #$00FF
	BNE @UNKNOWN8
	LDA SCREEN_X_PIXELS
	SEC
	SBC #128
	STA BG2_X_POS
	STA BG1_X_POS
	LDA SCREEN_Y_PIXELS
	SEC
	SBC #112
	STA BG2_Y_POS
	STA BG1_Y_POS
	LDA @LOCAL02
	STA SCREEN_LEFT_X
	LDA @LOCAL01
	STA SCREEN_TOP_Y
	END_C_FUNCTION
