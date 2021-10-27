
RESET: ;$C08000
	.A8
	.I8
.IF .DEFINED(JPN)
	CLC
	XCE
.ENDIF
	STZ NMITIMEN
	STZ $00
	LDX #$00
	LDY #$01
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8
	LDA #.LOWORD(STACK_65816_END) - 1
	MVN #$00,#$00
	TXS ; .LOWORD(STACK_65816_END)
	LDA #.LOWORD(STACK_END)
	TCD
	SEP #PROC_FLAGS::ACCUM8
	LDA #$80
	STA INIDISP
	STA .LOWORD(INIDISP_MIRROR)
	STZ OBSEL
	STZ OAMADDL
	STZ OAMADDH
	STZ BGMODE
	STZ MOSAIC
	STZ BG1SC
	STZ BG2SC
	STZ BG3SC
	STZ BG4SC
	STZ BG12NBA
	STZ BG34NBA
	STZ BG1HOFS
	STZ BG1HOFS
	STZ BG1VOFS
	STZ BG1VOFS
	STZ BG2HOFS
	STZ BG2HOFS
	STZ BG2VOFS
	STZ BG2VOFS
	STZ BG3HOFS
	STZ BG3HOFS
	STZ BG3VOFS
	STZ BG3VOFS
	STZ BG4HOFS
	STZ BG4HOFS
	STZ BG4VOFS
	STZ BG4VOFS
	LDA #$0080
	STA VMAIN
	STZ VMADDL
	STZ VMADDH
	STZ M7SEL
	STZ M7A
	LDA #$01
	STA M7A
	STZ M7B
	STZ M7B
	STZ M7C
	STZ M7C
	STZ M7D
	STA M7D
	STZ M7X
	STZ M7X
	STZ M7Y
	STZ M7Y
	STZ CGADD
	STZ W12SEL
	STZ W34SEL
	STZ WOBJSEL
	STZ WH0
	STZ WH1
	STZ WH2
	STZ WH3
	STZ WBGLOG
	STZ WOBJLOG
	LDA #$1F
	STA TM
	STZ TD
	STZ TMW
	STZ TSW
	STZ CGWSEL
	STZ CGADSUB
	LDA #$E0
	STA FIXED_COLOR_DATA
	STZ SETINI
	LDA #$FF
	STA WRMPYA
	STZ WRMPYA
	STZ WRMPYB
	STZ WRDIVL
	STZ WRDIVH
	STZ WRDIVB
	STZ HTIMEL
	STZ HTIMEH
	STZ VTIMEL
	STZ VTIMEH
	STZ MDMAEN
	STZ HDMAEN
	LDA #$01
	STA MEMSEL
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8
	LDA #$DFFF
	MVN #^RAM,#^RAM
	LDA #$2000
	STA a:.LOWORD(CURRENT_HEAP_ADDRESS)
	STA a:.LOWORD(BASE_HEAP_ADDRESS)
	LDA #$FFFF
	STA .LOWORD(UNKNOWN_7E2402)
	MOVE_INT_CONSTANT $56781234, a:.LOWORD(RAND_A)
	LDA #$0001
	STA a:.LOWORD(NEXT_FRAME_BUF_ID)
	LDA #$851B
	STA a:.LOWORD(UNKNOWN_7E0020)
	JSL UNKNOWN_C08B19
	JMP f:GAME_INIT
