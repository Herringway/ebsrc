
UNKNOWN_C0780F: ;$C0780F
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	PHA
	TDC
	ADC #$FFEC
	TCD
	PLA
	STY $04
	STX $12
	STA $10
	LDY #$0000
	LDA .LOWORD(UNKNOWN_7E9F73)
	STA $02
	LDA $10
	BNE @UNKNOWN0
	LDA .LOWORD(UNKNOWN_7EB4B6)
	BNE @UNKNOWN0
	LDA .LOWORD(PAJAMA_FLAG)
	BEQ @UNKNOWN0
	LDA #$01B5
	JMP a:.LOWORD(@UNKNOWN28)
@UNKNOWN0:
	LDA $02
	CMP #$FFFF
	BEQ @UNKNOWN1
	LDA $02
	ASL
	TAX
	STZ .LOWORD(UNKNOWN_7E2E7A),X
@UNKNOWN1:
	LDA .LOWORD(GAME_STATE)+75
	AND #$00FF
	CMP #$0001
	BNE @UNKNOWN3
	LDA .LOWORD(GAME_STATE)+146
	CMP #$0003
	BEQ @UNKNOWN2
	LDA #$000D
	JMP a:.LOWORD(@UNKNOWN28)
@UNKNOWN2:
	LDA #$0025
	JMP a:.LOWORD(@UNKNOWN28)
@UNKNOWN3:
	LDX $04
	LDA a:.LOWORD(RAM)+14,X
	AND #$00FF
	CMP #$0001
	BEQ @UNKNOWN4
	CMP #$0002
	BEQ @UNKNOWN5
	CMP #$0004
	BEQ @UNKNOWN7
	BRA @UNKNOWN8
@UNKNOWN4:
	LDY #$0001
	BRA @UNKNOWN8
@UNKNOWN5:
	LDA .LOWORD(GAME_STATE)+146
	CMP #$0003
	BEQ @UNKNOWN6
	LDA #$000C
	JMP a:.LOWORD(@UNKNOWN28)
@UNKNOWN6:
	LDA #$0024
	JMP a:.LOWORD(@UNKNOWN28)
@UNKNOWN7:
	LDA $02
	CMP #$FFFF
	BEQ @UNKNOWN8
	LDA $02
	ASL
	CLC
	ADC #.LOWORD(UNKNOWN_7E2E7A)
	TAX
	LDA a:.LOWORD(RAM),X
	ORA #$8000
	STA a:.LOWORD(RAM),X
@UNKNOWN8:
	LDX $04
	LDA a:.LOWORD(RAM)+15,X
	AND #$00FF
	CMP #$0001
	BEQ @UNKNOWN9
	CMP #$0002
	BEQ @UNKNOWN10
	BRA @UNKNOWN11
@UNKNOWN9:
	LDA $02
	CMP #$FFFF
	BEQ @UNKNOWN11
	LDA $02
	ASL
	CLC
	ADC #.LOWORD(UNKNOWN_7E2E7A)
	TAX
	LDA a:.LOWORD(RAM),X
	ORA #$4000
	STA a:.LOWORD(RAM),X
	BRA @UNKNOWN11
@UNKNOWN10:
	INC $9F6F
@UNKNOWN11:
	LDA .LOWORD(GAME_STATE)+146
	CMP #$0006
	BEQ @UNKNOWN12
	CMP #$0004
	BEQ @UNKNOWN13
	BRA @UNKNOWN14
@UNKNOWN12:
	LDA #$0007
	JMP a:.LOWORD(@UNKNOWN28)
@UNKNOWN13:
	LDX $04
	LDA a:.LOWORD(RAM)+53,X
	BNE @UNKNOWN14
	LDA #$0006
	JMP a:.LOWORD(@UNKNOWN28)
@UNKNOWN14:
	CPY #$0000
	BNE @UNKNOWN19
	LDA $12
	BEQ @UNKNOWN15
	CMP #$000C
	BEQ @UNKNOWN15
	CMP #$000D
	BEQ @UNKNOWN15
	CMP #$0004
	BEQ @UNKNOWN16
	CMP #$0007
	BEQ @UNKNOWN17
	CMP #$0008
	BEQ @UNKNOWN18
	BRA @UNKNOWN19
@UNKNOWN15:
	LDY #$0000
	BRA @UNKNOWN19
@UNKNOWN16:
	LDY #$0001
	BRA @UNKNOWN19
@UNKNOWN17:
	LDY #$0002
	BRA @UNKNOWN19
@UNKNOWN18:
	LDY #$0003
@UNKNOWN19:
	LDX .LOWORD(GAME_STATE)+146
	CPX #$0003
	BNE @UNKNOWN20
	INY
	INY
	INY
	INY
	LDA $02
	ASL
	TAX
	STZ .LOWORD(UNKNOWN_7E2E7A),X
	BRA @UNKNOWN21
@UNKNOWN20:
	CPX #$0005
	BNE @UNKNOWN21
	CPY #$0000
	BNE @UNKNOWN21
	TYA
	CLC
	ADC #$0006
	TAY
@UNKNOWN21:
	LDA .LOWORD(GAME_STATE)+75
	AND #$00FF
	CMP #$0003
	BNE @UNKNOWN22
	LDA $02
	ASL
	TAX
	LDA #$0005
	STA .LOWORD(UNKNOWN_30X2_TABLE_6),X
	BRA @UNKNOWN26
@UNKNOWN22:
	LDX $04
	LDA a:.LOWORD(RAM)+14,X
	AND #$00FF
	CMP #$0001
	BNE @UNKNOWN23
	LDA $02
	ASL
	TAX
	LDA #$0010
	STA .LOWORD(UNKNOWN_30X2_TABLE_6),X
	BRA @UNKNOWN26
@UNKNOWN23:
	LDA $02
	ASL
	TAX
	LDA .LOWORD(UNKNOWN_30X2_TABLE_37),X
	STA $0E
	AND #$000C
	CMP #$000C
	BNE @UNKNOWN24
	LDA #$0018
	STA .LOWORD(UNKNOWN_30X2_TABLE_6),X
	BRA @UNKNOWN26
@UNKNOWN24:
	LDA $0E
	AND #$0008
	CMP #$0008
	BNE @UNKNOWN25
	LDA #$0010
	STA .LOWORD(UNKNOWN_30X2_TABLE_6),X
	BRA @UNKNOWN26
@UNKNOWN25:
	LDA #$0008
	STA .LOWORD(UNKNOWN_30X2_TABLE_6),X
@UNKNOWN26:
	LDX $04
	LDA a:.LOWORD(RAM)+14,X
	AND #$00FF
	CMP #$0003
	BNE @UNKNOWN27
	LDA $02
	ASL
	TAX
	LDA #$0038
	STA .LOWORD(UNKNOWN_30X2_TABLE_6),X
@UNKNOWN27:
	TYA
	ASL
	STA $02
	LDA $10
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC $02
	TAX
	LDA f:PLAYABLE_CHAR_GFX_TABLE,X
@UNKNOWN28:
	PLD
	RTL