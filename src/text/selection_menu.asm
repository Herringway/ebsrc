
SELECTION_MENU: ;$C1196A
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	PHA
	TDC
	ADC #$FFD6
	TCD
	PLA
	STA $28
	LDA .LOWORD(CURRENT_FOCUS_WINDOW)
	STA $26
	CMP #$FFFF
	BNE @UNKNOWN0
	LDA #$0000
	JMP a:.LOWORD(@UNKNOWN44)
@UNKNOWN0:
	LDA .LOWORD(CURRENT_FOCUS_WINDOW)
	ASL
	TAX
	LDA .LOWORD(WINDOW_EXISTENCE_TABLE),X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	CLC
	ADC #.LOWORD(WINDOW_STATS_TABLE)
	STA $24
	LDA .LOWORD(UNKNOWN_7E5E79)
	AND #$00FF
	BEQ @UNKNOWN1
	LDA .LOWORD(UNKNOWN_7E9688)
	LDY #window_stats::argument_memory_storage
	STA ($24),Y
	LDA .LOWORD(UNKNOWN_7E968A)
	LDY #window_stats::secondary_memory_storage
	STA ($24),Y
@UNKNOWN1:
	LDY #window_stats::secondary_memory_storage
	LDA ($24),Y
	CMP #$FFFF
	BEQ @UNKNOWN4
	TAX
	STX $22
	STA $20
	LDY #window_stats::argument_memory_storage
	LDA ($24),Y
	LDY #.SIZEOF(u89D4_entry)
	JSL MULT168
	CLC
	ADC #.LOWORD(UNKNOWN_7E89D4)
	STA $04
	BRA @UNKNOWN3
@UNKNOWN2:
	DEX
	STX $22
	LDX $04
	LDA a:.LOWORD(RAM)+2,X
	LDY #.SIZEOF(u89D4_entry)
	JSL MULT168
	CLC
	ADC #.LOWORD(UNKNOWN_7E89D4)
	STA $04
@UNKNOWN3:
	LDX $22
	BNE @UNKNOWN2
	JSL SET_9622_ONE
	LDX $04
	LDY a:.LOWORD(RAM)+10,X
	LDX $04
	LDA a:.LOWORD(RAM)+8,X
	TAX
	INX
	LDA $04
	JSL UNKNOWN_C43CD2
	LDA $04
	CLC
	ADC #$0013
	STA $06
	PHB
	SEP #PROC_FLAGS::ACCUM8
	PLA
	STA $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	LDA $06
	STA $0E
	LDA $08
	STA $10
	LDX #$0000
	LDA #$FFFF
	JSL UNKNOWN_C43BB9
	BRA @UNKNOWN5
@UNKNOWN4:
	STZ $20
	LDY #window_stats::argument_memory_storage
	LDA ($24),Y
	LDY #.SIZEOF(u89D4_entry)
	JSL MULT168
	CLC
	ADC #.LOWORD(UNKNOWN_7E89D4)
	STA $04
@UNKNOWN5:
	STZ $22
	LDA $04
	CLC
	ADC #$000F
	TAY
	STY $1E
	LDA #$0000
	STA $0A
	LDA #$0000
	STA $0C
	LDA a:.LOWORD(RAM),Y
	STA $06
	LDA a:.LOWORD(RAM)+2,Y
	STA $08
	CMP $0C
	BNE @UNKNOWN6
	LDA $06
	CMP $0A
@UNKNOWN6:
	BEQ @UNKNOWN7
	JSL SET_9622_ONE
	LDY $1E
	LDA a:.LOWORD(RAM),Y
	STA $06
	LDA a:.LOWORD(RAM)+2,Y
	STA $08
	LDA $06
	STA $0E
	LDA $08
	STA $10
	JSL DISPLAY_TEXT
@UNKNOWN7:
	LDA #$0000
	STA $0A
	LDA #$0000
	STA $0C
	LDA $24
	CLC
	ADC #$0037
	TAY
	LDA a:.LOWORD(RAM),Y
	STA $06
	LDA a:.LOWORD(RAM)+2,Y
	STA $08
	CMP $0C
	BNE @UNKNOWN8
	LDA $06
	CMP $0A
@UNKNOWN8:
	BEQ @UNKNOWN11
	LDX $04
	LDA a:.LOWORD(RAM),X
	CMP #$0001
	BNE @UNKNOWN9
	LDA $20
	INC
	BRA @UNKNOWN10
@UNKNOWN9:
	LDX $04
	LDA a:.LOWORD(RAM)+12,X
@UNKNOWN10:
	STA $1C
	LDA $24
	CLC
	ADC #$0037
	TAY
	LDA a:.LOWORD(RAM),Y
	STA $06
	LDA a:.LOWORD(RAM)+2,Y
	STA $08
	LDA $1C
	PHA
	LDA $06
	STA a:.LOWORD(UNKNOWN_7E00BC)
	LDA $08
	STA a:.LOWORD(UNKNOWN_7E00BE)
	PLA
	JSL UNKNOWN_C09279
	LDA $26
	JSR a:.LOWORD(SET_WINDOW_FOCUS)
@UNKNOWN11:
	JSL CLEAR_9622
	LDA .LOWORD(UNKNOWN_7E5E79)
	AND #$00FF
	BEQ @UNKNOWN12
	LDA .LOWORD(UNKNOWN_7E9684)
	LDX $04
	STA a:.LOWORD(RAM)+8,X
	LDA .LOWORD(UNKNOWN_7E9686)
	LDX $04
	STA a:.LOWORD(RAM)+10,X
@UNKNOWN12:
	LDX $04
	LDY a:.LOWORD(RAM)+10,X
	LDX $04
	LDA a:.LOWORD(RAM)+8,X
	TAX
	LDA $04
	JSL UNKNOWN_C43CD2
	LDA #$0001
	JSR a:.LOWORD(UNKNOWN_C10FEA)
	LDA #$0021
	JSR a:.LOWORD(UNKNOWN_C10D60)
	LDA #$0000
	JSR a:.LOWORD(UNKNOWN_C10FEA)
	JSL UNKNOWN_C12DD5
	LDA #$0001
	STA $02
@UNKNOWN13:
	LDA $02
	EOR #$0001
	STA $02
	STA $1A
	LDY #window_stats::text_y
	LDA ($24),Y
	ASL
	LDY #window_stats::window_y
	CLC
	ADC ($24),Y
	ASL
	ASL
	ASL
	ASL
	ASL
	STA $02
	LDY #window_stats::window_x
	LDA ($24),Y
	LDY #window_stats::text_x
	CLC
	ADC ($24),Y
	CLC
	ADC $02
	CLC
	ADC #$7C20
	STA $1E
	LDA $1A
	STA $02
	ASL
	STA $18
	LOADPTR UNKNOWN_C3E3F8+14, $06
	LDA $18
	CLC
	ADC $06
	STA $06
	STA $0E
	LDA $08
	STA $10
	LDY $1E
	LDX #$0002
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	JSL PREPARE_VRAM_COPY
	.A16
	LOADPTR UNKNOWN_C3E3F8+18, $06
	LDA $18
	CLC
	ADC $06
	STA $06
	STA $0E
	LDA $08
	STA $10
	LDA $1E
	CLC
	ADC #$0020
	TAY
	LDX #$0002
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	JSL PREPARE_VRAM_COPY
	.A16
	LDX #$0000
	STX $1E
	JMP a:.LOWORD(@UNKNOWN37)
@UNKNOWN14:
	JSL UNKNOWN_C12E42
	LDA a:.LOWORD(PAD_1_PRESS)
	AND #PAD::UP
	BEQ @UNKNOWN15
	LDX $04
	LDA a:.LOWORD(RAM)+8,X
	STA $1E
	STZ $0E
	LDA #SFX::UNKNOWN03
	STA $10
	LDA $1E
	STA $12
	LDY #window_stats::height
	LDA ($24),Y
	LSR
	STA $14
	LDY #$FFFF
	LDX $04
	LDA a:.LOWORD(RAM)+10,X
	TAX
	LDA $1E
	JSL MOVE_CURSOR
	STA $1C
	JMP a:.LOWORD(@UNKNOWN39)
@UNKNOWN15:
	LDA a:.LOWORD(PAD_1_PRESS)
	AND #PAD::LEFT
	BEQ @UNKNOWN16
	LDX $04
	LDA a:.LOWORD(RAM)+10,X
	STA $22
	LDA #$FFFF
	STA $0E
	LDA #SFX::CURSOR2
	STA $10
	LDY #window_stats::width
	LDA ($24),Y
	STA $12
	LDA $22
	STA $14
	LDY #$0000
	TAX
	STX $16
	LDX $04
	LDA a:.LOWORD(RAM)+8,X
	LDX $16
	JSL MOVE_CURSOR
	STA $1C
	JMP a:.LOWORD(@UNKNOWN39)
@UNKNOWN16:
	LDA a:.LOWORD(PAD_1_PRESS)
	AND #PAD::DOWN
	BEQ @UNKNOWN17
	LDX $04
	LDA a:.LOWORD(RAM)+8,X
	STA $1E
	STZ $0E
	LDA #SFX::UNKNOWN03
	STA $10
	LDA $1E
	STA $12
	LDA #$FFFF
	STA $14
	LDY #$0001
	LDX $04
	LDA a:.LOWORD(RAM)+10,X
	TAX
	LDA $1E
	JSL MOVE_CURSOR
	STA $1C
	JMP a:.LOWORD(@UNKNOWN39)
@UNKNOWN17:
	LDA a:.LOWORD(PAD_1_PRESS)
	AND #PAD::RIGHT
	BEQ @UNKNOWN18
	LDX $04
	LDA a:.LOWORD(RAM)+10,X
	STA $22
	LDA #$0001
	STA $0E
	LDA #SFX::CURSOR2
	STA $10
	LDA #$FFFF
	STA $12
	LDA $22
	STA $14
	LDY #$0000
	TAX
	STX $1C
	LDX $04
	LDA a:.LOWORD(RAM)+8,X
	LDX $1C
	JSL MOVE_CURSOR
	STA $1C
	JMP a:.LOWORD(@UNKNOWN39)
@UNKNOWN18:
	LDA a:.LOWORD(PAD_1_HELD)
	AND #PAD::UP
	BEQ @UNKNOWN19
	STZ $0E
	LDA #SFX::UNKNOWN03
	STA $10
	LDY #$FFFF
	LDX $04
	LDA a:.LOWORD(RAM)+10,X
	TAX
	STX $1A
	LDX $04
	LDA a:.LOWORD(RAM)+8,X
	LDX $1A
	JSL UNKNOWN_C20B65
	STA $1C
	JMP a:.LOWORD(@UNKNOWN39)
@UNKNOWN19:
	LDA a:.LOWORD(PAD_1_HELD)
	AND #PAD::LEFT
	BEQ @UNKNOWN20
	LDA #$FFFF
	STA $0E
	LDA #SFX::CURSOR2
	STA $10
	LDY #$0000
	LDX $04
	LDA a:.LOWORD(RAM)+10,X
	TAX
	STX $1A
	LDX $04
	LDA a:.LOWORD(RAM)+8,X
	LDX $1A
	JSL UNKNOWN_C20B65
	STA $1C
	JMP a:.LOWORD(@UNKNOWN39)
@UNKNOWN20:
	LDA a:.LOWORD(PAD_1_HELD)
	AND #PAD::DOWN
	BEQ @UNKNOWN21
	STZ $0E
	LDA #SFX::UNKNOWN03
	STA $10
	LDY #$0001
	LDX $04
	LDA a:.LOWORD(RAM)+10,X
	TAX
	STX $16
	LDX $04
	LDA a:.LOWORD(RAM)+8,X
	LDX $16
	JSL UNKNOWN_C20B65
	STA $1C
	JMP a:.LOWORD(@UNKNOWN39)
@UNKNOWN21:
	LDA a:.LOWORD(PAD_1_HELD)
	AND #PAD::RIGHT
	BEQ @UNKNOWN22
	LDA #$0001
	STA $0E
	LDA #SFX::CURSOR2
	STA $10
	LDY #$0000
	LDX $04
	LDA a:.LOWORD(RAM)+10,X
	TAX
	STX $1C
	LDX $04
	LDA a:.LOWORD(RAM)+8,X
	LDX $1C
	JSL UNKNOWN_C20B65
	STA $1C
	JMP a:.LOWORD(@UNKNOWN39)
@UNKNOWN22:
	LDA a:.LOWORD(PAD_1_PRESS)
	AND #PAD::A_BUTTON | PAD::L_BUTTON
	BNE @UNKNOWN23
	JMP a:.LOWORD(@UNKNOWN33)
@UNKNOWN23:
	JSL SET_9622_ONE
	LDX $04
	LDA a:.LOWORD(RAM)+6,X
	BNE @UNKNOWN24
	JMP a:.LOWORD(@UNKNOWN30)
@UNKNOWN24:
	LDX $04
	LDA a:.LOWORD(RAM)+14,X
	AND #$00FF
	JSL PLAY_SOUND
	LDX $04
	LDY a:.LOWORD(RAM)+10,X
	LDX $04
	LDA a:.LOWORD(RAM)+8,X
	TAX
	LDA $04
	JSL UNKNOWN_C43CD2
	LDA #$002F
	JSR a:.LOWORD(UNKNOWN_C10D60)
	LDA #$0006
	JSR a:.LOWORD(UNKNOWN_C10FEA)
	LDA .LOWORD(UNKNOWN_7E5E6E)
	BEQ @UNKNOWN27
	LDA UNKNOWN_7EB49D
	AND #$00FF
	CMP #$0001
	BNE @UNKNOWN26
	LDA .LOWORD(CURRENT_FOCUS_WINDOW)
	CMP #$0013
	BNE @UNKNOWN25
	JSL UNKNOWN_C43B15
	BRA @UNKNOWN28
@UNKNOWN25:
	LDA $04
	CLC
	ADC #$0013
	STA $06
	PHB
	SEP #PROC_FLAGS::ACCUM8
	PLA
	STA $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	LDA $06
	STA $0E
	LDA $08
	STA $10
	LDX #$0001
	LDA #$0004
	JSL UNKNOWN_C43BB9
	BRA @UNKNOWN28
@UNKNOWN26:
	LDA $04
	CLC
	ADC #$0013
	STA $06
	PHB
	SEP #PROC_FLAGS::ACCUM8
	PLA
	STA $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	LDA $06
	STA $0E
	LDA $08
	STA $10
	LDX #$0001
	LDA #$FFFF
	JSL UNKNOWN_C43BB9
	BRA @UNKNOWN28
@UNKNOWN27:
	JSL UNKNOWN_C43B15
@UNKNOWN28:
	LDA #$0000
	JSR a:.LOWORD(UNKNOWN_C10FEA)
	JSL CLEAR_9622
	LDA $20
	LDY #window_stats::secondary_memory_storage
	STA ($24),Y
	LDX $04
	LDA a:.LOWORD(RAM),X
	CMP #$0001
	BNE @UNKNOWN29
	LDA $20
	INC
	JMP a:.LOWORD(@UNKNOWN44)
@UNKNOWN29:
	LDX $04
	LDA a:.LOWORD(RAM)+12,X
	JMP a:.LOWORD(@UNKNOWN44)
@UNKNOWN30:
	LDA #SFX::CURSOR2
	JSL PLAY_SOUND
	JSR a:.LOWORD(UNKNOWN_C10FA3)
	LDA $24
	CLC
	ADC #$0033
	TAX
	STX $22
	LDA a:.LOWORD(RAM),X
	STA $1E
	LDX $04
	LDA a:.LOWORD(RAM)+4,X
	LDY #.SIZEOF(u89D4_entry)
	JSL MULT168
	TAX
	LDA $1E
	CMP .LOWORD(UNKNOWN_7E89D4)+6,X
	BNE @UNKNOWN31
	LDA #$0001
	LDX $22
	STA a:.LOWORD(RAM),X
	BRA @UNKNOWN32
@UNKNOWN31:
	INC
	LDX $22
	STA a:.LOWORD(RAM),X
@UNKNOWN32:
	JSL CLEAR_9622
	LDA $26
	JSL UNKNOWN_EF0115
	JSL UNKNOWN_C12DD5
	JSR a:.LOWORD(PRINT_MENU_ITEMS)
	JSL SET_9622_ONE
	JMP a:.LOWORD(@UNKNOWN5)
@UNKNOWN33:
	LDA a:.LOWORD(PAD_1_PRESS)
	AND #PAD::B_BUTTON | PAD::SELECT_BUTTON
	BEQ @UNKNOWN34
	LDA $28
	CMP #$0001
	BNE @UNKNOWN34
	LDA #SFX::CURSOR2
	JSL PLAY_SOUND
	LDA #$0000
	JMP a:.LOWORD(@UNKNOWN44)
@UNKNOWN34:
	INC $22
	LDA .LOWORD(WINDOW_EXISTENCE_TABLE)
	CMP .LOWORD(UNKNOWN_7E88E2)
	BNE @UNKNOWN36
	LDA $22
	CMP #$003C
	BCC @UNKNOWN36
	BEQ @UNKNOWN36
	LDA .LOWORD(WINDOW_EXISTENCE_TABLE)+20
	CMP #$FFFF
	BNE @UNKNOWN35
	JSR a:.LOWORD(UNKNOWN_C1134B)
@UNKNOWN35:
	LDA #$0000
	JSR a:.LOWORD(SET_WINDOW_FOCUS)
	JMP a:.LOWORD(@UNKNOWN5)
@UNKNOWN36:
	LDX $1E
	INX
	STX $1E
@UNKNOWN37:
	CPX #$000A
	BCS @UNKNOWN38
	BEQ @UNKNOWN38
	JMP a:.LOWORD(@UNKNOWN14)
@UNKNOWN38:
	JMP a:.LOWORD(@UNKNOWN13)
@UNKNOWN39:
	CMP #$FFFF
	BNE @UNKNOWN40
	JMP a:.LOWORD(@UNKNOWN5)
@UNKNOWN40:
	LDA #$0000
	STA $02
	LDY #window_stats::argument_memory_storage
	LDA ($24),Y
	LDY #.SIZEOF(u89D4_entry)
	JSL MULT168
	CLC
	ADC #.LOWORD(UNKNOWN_7E89D4)
	STA $22
	LDA $1C
	AND #$00FF
	TAX
	LDA $1C
	AND #$FF00
	XBA
	AND #$00FF
	STA $1C
	BRA @UNKNOWN42
@UNKNOWN41:
	INC $02
	LDY #$0002
	LDA ($22),Y
	LDY #.SIZEOF(u89D4_entry)
	JSL MULT168
	CLC
	ADC #.LOWORD(UNKNOWN_7E89D4)
	STA $22
@UNKNOWN42:
	LDY #$0008
	TXA
	CMP ($22),Y
	BNE @UNKNOWN41
	LDY #$000A
	LDA $1C
	CMP ($22),Y
	BNE @UNKNOWN41
	LDY #$0006
	LDA ($22),Y
	TAY
	STY $20
	TYA
	LDY #$0033
	CMP ($24),Y
	BEQ @UNKNOWN43
	LDY $20
	BNE @UNKNOWN41
@UNKNOWN43:
	LDX $04
	LDY a:.LOWORD(RAM)+10,X
	LDX $04
	LDA a:.LOWORD(RAM)+8,X
	TAX
	LDA $04
	JSL UNKNOWN_C43CD2
	LDA #$002F
	JSR a:.LOWORD(UNKNOWN_C10D60)
	LDA $02
	STA $20
	LDA $22
	STA $04
	JMP a:.LOWORD(@UNKNOWN5)
@UNKNOWN44:
	PLD
	RTS
