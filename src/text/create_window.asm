
CREATE_WINDOW: ;$C104EE
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 22
	TAY
	STY $14
	TYA
	ASL
	CLC
	ADC #.LOWORD(WINDOW_EXISTENCE_TABLE)
	TAX
	STX $12
	LDA a:.LOWORD(RAM),X
	CMP #$FFFF
	BEQ @UNKNOWN0
	STY .LOWORD(CURRENT_FOCUS_WINDOW)
	JSR a:.LOWORD(UNKNOWN_C11383)
	LDX $12
	LDA a:.LOWORD(RAM),X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	CLC
	ADC #.LOWORD(WINDOW_STATS_TABLE)
	TAX
	STX $10
	JMP a:.LOWORD(@UNKNOWN8)
@UNKNOWN0:
	JSL UNKNOWN_C3E4EF
	STA $0E
	CMP #$FFFF
	BNE @UNKNOWN1
	JMP a:.LOWORD(@UNKNOWN13)
@UNKNOWN1:
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	CLC
	ADC #.LOWORD(WINDOW_STATS_TABLE)
	TAX
	STX $10
	LDY $14
	CPY #$000A
	BNE @UNKNOWN4
	LDA .LOWORD(UNKNOWN_7E88E0)
	CMP #$FFFF
	BNE @UNKNOWN2
	LDA #$FFFF
	STA a:window_stats::unknown2,X
	LDA $0E
	STA .LOWORD(UNKNOWN_7E88E2)
	BRA @UNKNOWN3
@UNKNOWN2:
	LDA .LOWORD(UNKNOWN_7E88E0)
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	LDA $0E
	STA .LOWORD(WINDOW_STATS_TABLE)+window_stats::unknown0,X
	LDA .LOWORD(UNKNOWN_7E88E0)
	LDX $10
	STA a:window_stats::unknown2,X
@UNKNOWN3:
	LDA #$FFFF
	STA a:window_stats::unknown0,X
	LDA $0E
	STA .LOWORD(UNKNOWN_7E88E0)
	BRA @UNKNOWN7
@UNKNOWN4:
	LDA .LOWORD(UNKNOWN_7E88E0)
	CMP #$FFFF
	BNE @UNKNOWN5
	LDA #$FFFF
	STA a:window_stats::unknown0,X
	LDA $0E
	STA .LOWORD(UNKNOWN_7E88E0)
	BRA @UNKNOWN6
@UNKNOWN5:
	LDA .LOWORD(UNKNOWN_7E88E2)
	STA a:window_stats::unknown0,X
	LDA .LOWORD(UNKNOWN_7E88E2)
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	LDA $0E
	STA .LOWORD(WINDOW_STATS_TABLE)+window_stats::unknown2,X
@UNKNOWN6:
	STA .LOWORD(UNKNOWN_7E88E2)
	LDA #$FFFF
	LDX $10
	STA a:window_stats::unknown2,X
@UNKNOWN7:
	LDY $14
	TYA
	STA a:window_stats::id,X
	TYA
	ASL
	TAX
	LDA $0E
	STA .LOWORD(WINDOW_EXISTENCE_TABLE),X
	LOADPTR WINDOW_CONFIGURATION_TABLE, $06
	TYA
	ASL
	ASL
	ASL
	STA $02
	MOVE_INTX $06, $0A
	CLC
	ADC $0A
	STA $0A
	LDA [$0A]
	LDX $10
	STA a:window_stats::window_x,X
	LDA $02
	INC
	INC
	MOVE_INTY $06, $0A
	CLC
	ADC $0A
	STA $0A
	LDA [$0A]
	STA a:window_stats::window_y,X
	LDA $02
	INC
	INC
	INC
	INC
	MOVE_INTY $06, $0A
	CLC
	ADC $0A
	STA $0A
	LDA [$0A]
	DEC
	DEC
	STA a:window_stats::width,X
	LDA $02
	CLC
	ADC #$0006
	CLC
	ADC $06
	STA $06
	LDA [$06]
	DEC
	DEC
	STA a:window_stats::height,X
	LDY #$03F0
	LDA $0E
	JSL MULT16
	CLC
	ADC #.LOWORD(UNKNOWN_7E5E7E)
	STA a:window_stats::tilemap_address,X
	LDY $14
	STY .LOWORD(CURRENT_FOCUS_WINDOW)
@UNKNOWN8:
	JSR a:.LOWORD(GET_ACTIVE_WINDOW_ADDRESS)
	STA $12
	LDX $10
	STZ a:window_stats::text_y,X
	STZ a:window_stats::text_x,X
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0080
	STA a:window_stats::unknown18,X
	REP #PROC_FLAGS::ACCUM8
	STZ a:window_stats::curr_tile_attributes,X
	STZ a:window_stats::font,X
	LDA $12
	CLC
	ADC #window_stats::working_memory
	TAY
	MOVE_INT_YPTRSRC a:.LOWORD(RAM), $06
	TXA
	CLC
	ADC #window_stats::working_memory
	TAY
	MOVE_INT_YPTRDEST $06, a:.LOWORD(RAM)
	LDA $12
	CLC
	ADC #window_stats::argument_memory
	TAY
	MOVE_INT_YPTRSRC a:.LOWORD(RAM), $06
	TXA
	CLC
	ADC #window_stats::argument_memory
	TAY
	MOVE_INT_YPTRDEST $06, a:.LOWORD(RAM)
	LDA $12
	CLC
	ADC #window_stats::working_memory_storage
	TAY
	MOVE_INT_YPTRSRC a:.LOWORD(RAM), $06
	TXA
	CLC
	ADC #window_stats::working_memory_storage
	TAY
	MOVE_INT_YPTRDEST $06, a:.LOWORD(RAM)
	LDA $12
	CLC
	ADC #window_stats::argument_memory_storage
	TAY
	MOVE_INT_YPTRSRC a:.LOWORD(RAM), $06
	TXA
	CLC
	ADC #window_stats::argument_memory_storage
	TAY
	MOVE_INT_YPTRDEST $06, a:.LOWORD(RAM)
	LDA $12
	TAX
	LDA a:window_stats::secondary_memory,X
	LDX $10
	STA a:window_stats::secondary_memory,X
	LDA $12
	TAX
	LDA a:window_stats::secondary_memory_storage,X
	LDX $10
	STA a:window_stats::secondary_memory_storage,X
	LDA #$FFFF
	STA a:window_stats::selected_option,X
	STA a:window_stats::option_count,X
	STA a:window_stats::current_option,X
	LDA #$0001
	STA a:window_stats::unknown49,X
	STA a:window_stats::menu_page_number,X
	LDA #$0000
	STA $06
	LDA #$0000
	STA $08
	TXA
	CLC
	ADC #window_stats::cursor_move_callback
	TAY
	MOVE_INT_YPTRDEST $06, a:.LOWORD(RAM)
	LDY a:window_stats::tilemap_address,X
	STY $0E
	LDY a:window_stats::height,X
	LDA a:window_stats::width,X
	JSL MULT16
	STA $02
	BRA @UNKNOWN11
@UNKNOWN9:
	LDY $0E
	LDA a:.LOWORD(RAM),Y
	BEQ @UNKNOWN10
	JSL UNKNOWN_C44E4D
@UNKNOWN10:
	LDA #$0040
	LDY $0E
	STA a:.LOWORD(RAM),Y
	INY
	INY
	STY $0E
	LDA $02
	DEC
	STA $02
@UNKNOWN11:
	LDA $02
	BNE @UNKNOWN9
	LDX $10
	LDA a:window_stats::unknown59,X
	AND #$00FF
	BEQ @UNKNOWN12
	AND #$00FF
	DEC
	ASL
	TAX
	LDA #$FFFF
	STA .LOWORD(WINDOW_EXISTENCE_TABLE)+106,X
@UNKNOWN12:
	LDX $10
	SEP #PROC_FLAGS::ACCUM8
	STZ a:window_stats::title,X
	STZ a:window_stats::unknown59,X
	JSL UNKNOWN_C45E96
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0001
	STA .LOWORD(UNKNOWN_7E9623)
	JSL UNKNOWN_C07C5B
@UNKNOWN13:
	PLD
	RTS
