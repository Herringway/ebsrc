
INIT_BATTLE_SCRIPTED: ;$C22F38
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	PHA
	TDC
	ADC #$FFEE
	TCD
	PLA
	STA $10
	STA .LOWORD(CURRENT_BATTLE_GROUP)
	LOADPTR BTL_ENTRY_PTR_TABLE, $0A
	LDA $10
	ASL
	ASL
	ASL
	CLC
	ADC $0A
	STA $0A
	DEREFERENCE_PTR_TO $0A, $06
	STZ .LOWORD(ENEMIES_IN_BATTLE)
	BRA @UNKNOWN2
@UNKNOWN0:
	LDA .LOWORD(ENEMIES_IN_BATTLE)
	ASL
	TAX
	LDY #$0001
	LDA [$06],Y
	STA .LOWORD(UNKNOWN_7E9F8C),X
	INC .LOWORD(ENEMIES_IN_BATTLE)
@UNKNOWN1:
	LDA $0E
	TAX
	DEC
	STA $0E
	CPX #$0000
	BNE @UNKNOWN0
	LDA #$0003
	CLC
	ADC $06
	STA $06
@UNKNOWN2:
	MOVE_INT $06, $0A
	LDA [$0A]
	AND #$00FF
	STA $0E
	CMP #$00FF
	BNE @UNKNOWN1
	LDA #$FFFF
	STA .LOWORD(BATTLE_DEBUG)
	JSL UNKNOWN_C2E8E0
	BRA @UNKNOWN4
@UNKNOWN3:
	JSL READ_JOYPAD
	JSL UNKNOWN_C4A7B0
@UNKNOWN4:
	JSL UNKNOWN_C2E9C8
	CMP #$0000
	BNE @UNKNOWN3
	JSL INIT_BATTLE_COMMON
	TAX
	STX $10
	LDA .LOWORD(TELEPORT_DESTINATION)
	BNE @UNKNOWN6
	CPX #$0000
	BEQ @UNKNOWN5
	LDA #$0001
	BRA @UNKNOWN9
@UNKNOWN5:
	JSL UNKNOWN_C018F3
	LDX #$0001
	TXA
	JSL UNKNOWN_C0886C
	BRA @UNKNOWN7
@UNKNOWN6:
	JSL UNKNOWN_C0EA99
	LDX $10
	BEQ @UNKNOWN7
	LDA #$0001
	BRA @UNKNOWN9
@UNKNOWN7:
	JSL UNKNOWN_C3EE4D
	LDA .LOWORD(CURRENT_BATTLE_GROUP)
	CMP #$01C0
	BCS @UNKNOWN8
	LDA #$0078
	STA .LOWORD(UNKNOWN_7E5D58)
@UNKNOWN8:
	LDA #$0000
@UNKNOWN9:
	PLD
	RTL
