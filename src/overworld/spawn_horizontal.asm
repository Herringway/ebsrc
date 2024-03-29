
SPAWN_HORIZONTAL:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	STX @LOCAL05
	TAY
	STY @LOCAL04
	LDA #EVENT_FLAG::FLG_SYS_MONSTER_OFF
	JSL GET_EVENT_FLAG
	CMP #0
	BNEL @RETURN
	LDA #EVENT_FLAG::FLG_WIN_GIEGU
	JSL GET_EVENT_FLAG
	CMP #0
	BNEL @RETURN
	LDA ENEMY_SPAWNS_ENABLED
	BEQL @RETURN
	LDX @LOCAL05
	TXA
	AND #$0007
	BNEL @RETURN
	CPX #$FFF0
	BCC @UNKNOWN4
	LDX #0
@UNKNOWN4:
	CPX #MAP_HEIGHT_TILES8
	BCC @UNKNOWN5
	JMP @RETURN
@UNKNOWN5:
	LDY @LOCAL04
	TYA
	ASL
	PHP
	LSR
	LSR
	LSR
	LSR
	PLP
	BCC @UNKNOWN6
.IF .DEFINED(JPN)
	ORA #$E000
.ELSE
	ORA #$F000
.ENDIF
@UNKNOWN6:
	STA @LOCAL03
	TXA
	ASL
	PHP
	LSR
	LSR
	LSR
	LSR
	PLP
	BCC @UNKNOWN7
.IF .DEFINED(JPN)
	ORA #$E000
.ELSE
	ORA #$F000
.ENDIF
@UNKNOWN7:
	STA @LOCAL02
	LDA @LOCAL03
	STA @VIRTUAL04
	BRA @UNKNOWN12
@UNKNOWN8:
	LDA @VIRTUAL04
	STA @LOCAL01
	LDA #8
	STA ENEMY_SPAWN_RANGE_WIDTH
	STA ENEMY_SPAWN_RANGE_HEIGHT
	LDA #1
	STA @VIRTUAL02
@UNKNOWN9:
	LDX @LOCAL02
	LDA @VIRTUAL04
	JSL UNKNOWN_C0263D
	STA @LOCAL04
	LDY @VIRTUAL04
	INY
	STY @LOCAL00
	LDX @LOCAL02
	TYA
	JSL UNKNOWN_C0263D
	TAX
	LDA @LOCAL04
	BEQ @UNKNOWN11
	CPX @LOCAL04
	BNE @UNKNOWN11
	LDA ENEMY_SPAWN_RANGE_WIDTH
	CLC
	ADC #8
	STA ENEMY_SPAWN_RANGE_WIDTH
	LDY @LOCAL00
	STY @VIRTUAL04
	INC @VIRTUAL02
	LDA @VIRTUAL02
	CMP #6
	BNE @UNKNOWN9
	BRA @UNKNOWN11
@UNKNOWN10:
	LDY @LOCAL04
	LDX @LOCAL02
	LDA @LOCAL01
	JSR UNKNOWN_C02668
@UNKNOWN11:
	LDX @VIRTUAL02
	LDA @VIRTUAL02
	DEC
	STA @VIRTUAL02
	CPX #0
	BNE @UNKNOWN10
	INC @VIRTUAL04
@UNKNOWN12:
	LDA @LOCAL03
	CLC
	ADC #5
	CLC
	SBC @VIRTUAL04
	BRANCHGTS @UNKNOWN8
@RETURN:
	END_C_FUNCTION
