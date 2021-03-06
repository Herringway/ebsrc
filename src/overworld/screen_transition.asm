
SCREEN_TRANSITION: ;$C06662
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 33
	TXY
	STY $1F
	STA $1D
	MOVE_INT_CONSTANT SCREEN_TRANSITION_CONFIG_TABLE, $06
	LDA $1D
	STA $04
	ASL
	ADC $04
	ASL
	ASL
	CLC
	ADC $06
	STA $06
	STA $19
	LDA $08
	STA $1B
	MOVE_INT $06, $0A
	LDA [$0A]
	AND #$00FF
	STA $02
	CMP #$00FF
	BNE @NOT_MAX_DURATION
	LDA #$0384
	STA $02
@NOT_MAX_DURATION:
	SEP #PROC_FLAGS::ACCUM8
	LDY #$0004
	LDA [$06],Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	ASL
	ASL
	TAX
	LDY #$0005
	LDA [$06],Y
	JSL UNKNOWN_C42631
	LDY $1F
	CPY #$0001
	BEQ @PLAY_ANIMATION
	JMP a:.LOWORD(@UNKNOWN10)
@PLAY_ANIMATION:
	JSL UNKNOWN_C0943C
	LDA #$0002
	JSL UNKNOWN_C0DD2C
	SEP #PROC_FLAGS::ACCUM8
	LDY #$0001
	LDA [$06],Y
	STA $18
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BEQ @UNKNOWN2
	SEP #PROC_FLAGS::ACCUM8
	LDY #$0002
	LDA [$06],Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	TAX
	INX
	INX
	LDA $18
	AND #$00FF
	JSL UNKNOWN_C4A67E
@UNKNOWN2:
	LDA #$0200
	STA $06
	PHB
	SEP #PROC_FLAGS::ACCUM8
	PLA
	STA $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $12
	LDA #$007E
	STA $14
	MOVE_INT $12, $06
	MOVE_INT $06, $0E
	MOVE_INT $19, $06
	SEP #PROC_FLAGS::ACCUM8
	LDY #$0003
	LDA [$06],Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	JSL UNKNOWN_C4954C
	LDX #$FFFF
	LDA $02
	JSL UNKNOWN_C496E7
	LDA #$0000
	STA $16
	BRA @UNKNOWN5
@UNKNOWN3:
	LDA a:.LOWORD(UNKNOWN_7E0030)
	AND #$00FF
	BEQ @UNKNOWN4
	JSL READ_JOYPAD
@UNKNOWN4:
	JSL UNKNOWN_C426ED
	JSL OAM_CLEAR
	JSL UNKNOWN_C4268A
	JSL UNKNOWN_C426C7
	JSL UNKNOWN_C09466
	JSL UNKNOWN_C08B19_ENTRY_POINT_2
	JSL UNKNOWN_C4A7B0
	JSL READ_JOYPAD
	LDA $16
	INC
	STA $16
@UNKNOWN5:
	CMP $02
	BCC @UNKNOWN3
	SEP #PROC_FLAGS::ACCUM8
	LDY #$0003
	LDA [$06],Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	STA $02
	LDA #$0032
	CLC
	SBC $02
	BVC @UNKNOWN6
	BPL @UNKNOWN8
	BRA @UNKNOWN7
@UNKNOWN6:
	BMI @UNKNOWN8
@UNKNOWN7:
	JSL UNKNOWN_C08726
	BRA @UNKNOWN9
@UNKNOWN8:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$00FF
	STA $0E
	LDX #$0200
	REP #PROC_FLAGS::ACCUM8
	LDA #$0200
	JSL MEMSET16
	LDA #$0018
	JSL UNKNOWN_C0856B
	JSL READ_JOYPAD
	LDA #$0001
	STA .LOWORD(UNKNOWN_7E4676)
@UNKNOWN9:
	JSL UNKNOWN_C09451
	JMP a:.LOWORD(@UNKNOWN22)
@UNKNOWN10:
	LDX #$0000
	SEP #PROC_FLAGS::ACCUM8
	LDY #$0003
	LDA [$06],Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	STA $02
	LDA #$0032
	CLC
	SBC $02
	BVC @UNKNOWN11
	BPL @UNKNOWN13
	BRA @UNKNOWN12
@UNKNOWN11:
	BMI @UNKNOWN13
@UNKNOWN12:
	LDX #$0001
@UNKNOWN13:
	TXY
	STY $1D
	BEQ @UNKNOWN14
	LDX #$0001
	TXA
	JSL UNKNOWN_C0886C
	BRA @UNKNOWN15
@UNKNOWN14:
	LDX #$FFFF
	SEP #PROC_FLAGS::ACCUM8
	LDY #$0008
	LDA [$06],Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	JSL UNKNOWN_C496E7
@UNKNOWN15:
	SEP #PROC_FLAGS::ACCUM8
	LDY #$0009
	LDA [$06],Y
	STA $18
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BEQ @UNKNOWN16
	SEP #PROC_FLAGS::ACCUM8
	LDY #$000A
	LDA [$06],Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	TAX
	LDA $18
	AND #$00FF
	JSL UNKNOWN_C4A67E
@UNKNOWN16:
	LDA #$0000
	STA $16
	BRA @UNKNOWN21
@UNKNOWN17:
	LDY $1D
	BNE @UNKNOWN19
	LDA a:.LOWORD(UNKNOWN_7E0030)
	AND #$00FF
	BEQ @UNKNOWN18
	JSL READ_JOYPAD
@UNKNOWN18:
	JSL UNKNOWN_C426ED
@UNKNOWN19:
	JSL OAM_CLEAR
	JSL UNKNOWN_C09466
	JSL UNKNOWN_C4A7B0
	JSL UNKNOWN_C08B19_ENTRY_POINT_2
	JSL READ_JOYPAD
	LDA $16
	CMP #$0001
	BNE @UNKNOWN20
	JSL UNKNOWN_C0943C
@UNKNOWN20:
	LDA $16
	INC
	STA $16
@UNKNOWN21:
	SEP #PROC_FLAGS::ACCUM8
	LDY #$0008
	LDA [$06],Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	STA $02
	LDA $16
	CMP $02
	BCC @UNKNOWN17
	LDY $1D
	BNE @UNKNOWN22
	JSL UNKNOWN_C49740
@UNKNOWN22:
	LDA .LOWORD(GIYGAS_PHASE)
	CMP #$0004
	BCS @UNKNOWN23
	JSL UNKNOWN_C2EAAA
@UNKNOWN23:
	JSL UNKNOWN_C09451
	STZ .LOWORD(UNKNOWN_7E5DAA)
	STZ .LOWORD(UNKNOWN_7E5DA8)
	PLD
	RTL
