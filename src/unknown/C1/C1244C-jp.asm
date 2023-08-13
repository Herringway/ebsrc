
UNKNOWN_C1244C: ;$C1244C
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 42
	STY $28
	STX $26
	STA $24
	JSR GET_ACTIVE_WINDOW_ADDRESS
	STA $22
	CLC
	ADC #$001B
	TAY
	MOVE_INT_YPTRSRC RAM, $0A
	MOVE_INT $0A, $1E
	LDA $26
	CMP #$0001
	BNEL @UNKNOWN7
	LDA #.LOWORD(UNKNOWN_7E9C8A)
	JSL UNKNOWN_C20A20
	LDA GAME_STATE+game_state::player_controlled_party_count
	AND #$00FF
	CMP #$0001
	BNE @UNKNOWN1
	LDX #$0033
	BRA @UNKNOWN2
@UNKNOWN1:
	CLC
	ADC #WINDOW::UNKNOWN28
	TAX
	DEX
@UNKNOWN2:
	STX $1C
	CREATE_WINDOW_NEAR $1C
	LDA #$0000
	STA $02
	JMP @UNKNOWN4
@UNKNOWN3:
	LDA $02
	CLC
	ADC #.LOWORD(GAME_STATE)
	CLC
	ADC #game_state::party_members
	STA $04
	STA $1A
	LDX $04
	LDA RAM,X
	AND #$00FF
	JSL GET_PARTY_CHARACTER_NAME
	MOVE_INT $06, $0E
	LDX #$0004
	LDA #.LOWORD(UNKNOWN_7E9C9F)
	JSL MEMCPY16
	SEP #PROC_FLAGS::ACCUM8
	STZ UNKNOWN_7E9C9F+4
	REP #PROC_FLAGS::ACCUM8
	PROMOTENEARPTR UNKNOWN_7E9C9F, $06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	LDA $02
	ASL
	ASL
	CLC
	ADC $24
	TAY
	MOVE_INT_YPTRSRC RAM, $06
	MOVE_INT $06, $12
	LDY #$0000
	LDA $02
	STA $04
	ASL
	ADC $04
	ASL
	TAX
	STX $18
	LDA $1A
	STA $04
	LDX $04
	LDA RAM,X
	AND #$00FF
	LDX $18
	JSR UNKNOWN_C1153B
	INC $02
@UNKNOWN4:
	LDA GAME_STATE+game_state::player_controlled_party_count
	AND #$00FF
	CLC
	SBC $02
	JUMPGTS @UNKNOWN3
	JSR PRINT_MENU_ITEMS
	LDA $28
	JSR SELECTION_MENU
	TAX
	STX $1A
	LDA $1C
	JSR CLOSE_WINDOW
	LDA #.LOWORD(UNKNOWN_7E9C8A)
	JSL UNKNOWN_C20ABC
	JMP @UNKNOWN42
@UNKNOWN7:
	LDX #$0000
	BRA @UNKNOWN9
@UNKNOWN8:
	TXA
	ASL
	ASL
	STA $1C
	CLC
	ADC $24
	TAY
	MOVE_INT_YPTRSRC RAM, $06
	LDA $1C
	CLC
	ADC #.LOWORD(UNKNOWN_7E9631)
	TAY
	MOVE_INT_YPTRDEST $06, RAM
	INX
@UNKNOWN9:
	CPX #$0004
	BNE @UNKNOWN8
	LDA BATTLE_MENU_CURRENT_CHARACTER_ID
	CMP #$FFFF
	BNE @UNKNOWN10
	LDX #$0000
	BRA @UNKNOWN11
@UNKNOWN10:
	LDX BATTLE_MENU_CURRENT_CHARACTER_ID
@UNKNOWN11:
	STX $04
	LDA $04
	CLC
	ADC #.LOWORD(GAME_STATE)
	TAX
	LDA a:game_state::party_members,X
	AND #$00FF
	DEC
	ASL
	ASL
	CLC
	ADC #.LOWORD(UNKNOWN_7E9631)
	TAY
	MOVE_INT_YPTRSRC RAM, $06
	MOVE_INT_CONSTANT NULL, $0A
	CMP32 $06, $0A
	BEQ @UNKNOWN13
	MOVE_INT $06, $0E
	JSL DISPLAY_TEXT
@UNKNOWN13:
	STZ UNKNOWN_7E5E7C
	LDA #$000A
	STA $02
	STA $1C
@UNKNOWN14:
	LDA $26
	BNE @UNKNOWN15
	LDA $04
	JSR UNKNOWN_C43573
@UNKNOWN15:
	JSR CLEAR_INSTANT_PRINTING
	JSL WINDOW_TICK
	LDA $04
	STA $24
	LDA UNKNOWN_7E5E7A
	CMP #$FFFF
	BEQ @UNKNOWN16
	LDA UNKNOWN_7E5E7A
	ASL
	TAX
	LDA WINDOW_EXISTENCE_TABLE,X
	CMP #$FFFF
	BEQ @UNKNOWN16
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	CLC
	ADC #.LOWORD(WINDOW_STATS_TABLE)
	STA $16
@UNKNOWN16:
	LDA UNKNOWN_7E5E7A
	CMP #$FFFF
	BEQ @UNKNOWN17
	LDA UNKNOWN_7E5E7A
	ASL
	TAX
	LDA WINDOW_EXISTENCE_TABLE,X
	CMP #$FFFF
	BEQ @UNKNOWN17
	LOADPTR UNKNOWN_C3E41C_PTR_TABLE, $06
	LDA UNKNOWN_7E5E7C
	ASL
	ASL
	CLC
	ADC $06
	STA $06
	DEREFERENCE_PTR_TO $06, $06
	MOVE_INT $06, $0E
	LDY #$0008
	LDA ($16),Y
	ASL
	ASL
	ASL
	ASL
	ASL
	STA $02
	LDY #$0006
	LDA ($16),Y
	LDY #$000A
	CLC
	ADC ($16),Y
	DEC
	DEC
	DEC
	CLC
	ADC $02
	CLC
	ADC #$7C00
	TAY
	LDX #$0008
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	JSL PREPARE_VRAM_COPY
	.A16
@UNKNOWN17:
	LDA #$0000
	STA $1A
	JMP @UNKNOWN29
@UNKNOWN18:
	JSL UNKNOWN_C12E42
	LDA PAD_PRESS
	AND #PAD::LEFT
	BEQ @UNKNOWN21
	LDX $24
	DEX
	STX $1A
	LDA $26
	BEQ @UNKNOWN19
	LDY #$0002
	BRA @UNKNOWN20
@UNKNOWN19:
	LDY #$001B
@UNKNOWN20:
	LDA #$0002
	STA UNKNOWN_7E5E7C
	JMP @UNKNOWN33
@UNKNOWN21:
	LDA PAD_PRESS
	AND #PAD::RIGHT
	BEQ @UNKNOWN24
	LDX $24
	INX
	STX $1A
	LDA $26
	BEQ @UNKNOWN22
	LDY #SFX::CURSOR2
	BRA @UNKNOWN23
@UNKNOWN22:
	LDY #SFX::MENU_OPEN_CLOSE
@UNKNOWN23:
	LDA #$0003
	STA UNKNOWN_7E5E7C
	JMP @UNKNOWN33
@UNKNOWN24:
	LDA PAD_PRESS
	AND #PAD::A_BUTTON | PAD::L_BUTTON
	BEQ @UNKNOWN25
	LDA $04
	CLC
	ADC #.LOWORD(GAME_STATE)
	TAX
	LDA a:game_state::party_members,X
	AND #$00FF
	TAX
	STX $1A
	LDA #SFX::CURSOR1
	JSL PLAY_SOUND
	JMP @UNKNOWN42
@UNKNOWN25:
	LDA PAD_PRESS
	AND #PAD::B_BUTTON | PAD::SELECT_BUTTON
	BEQ @UNKNOWN28
	LDA $28
	CMP #$0001
	BNE @UNKNOWN28
	LDX #$0000
	STX $1A
	LDA $26
	BEQ @UNKNOWN26
	LDY #SFX::CURSOR2
	BRA @UNKNOWN27
@UNKNOWN26:
	LDY #SFX::MENU_OPEN_CLOSE
@UNKNOWN27:
	TYA
	JSL PLAY_SOUND
	JSR UNKNOWN_C3E6F8
	JMP @UNKNOWN42
@UNKNOWN28:
	LDA $1A
	INC
	STA $1A
@UNKNOWN29:
	LDX $1C
	STX $02
	CMP $02
	BCCL @UNKNOWN18
	LDA UNKNOWN_7E5E7C
	BNE @UNKNOWN31
	LDX #$0001
	BRA @UNKNOWN32
@UNKNOWN31:
	LDX #$0000
@UNKNOWN32:
	STX UNKNOWN_7E5E7C
	LDA #$000A
	STA $02
	STA $1C
	JMP @UNKNOWN16
@UNKNOWN33:
	LDA GAME_STATE+game_state::player_controlled_party_count
	AND #$00FF
	STA $24
	STX $02
	CLC
	SBC $02
	BRANCHGTS @UNKNOWN36
	LDX #$0000
	STX $1A
	BRA @UNKNOWN39
@UNKNOWN36:
	STX $02
	LDA #$0000
	CLC
	SBC $02
	BRANCHLTEQS @UNKNOWN39
	LDA $24
	TAX
	DEX
	STX $1A
@UNKNOWN39:
	TXA
	CMP $04
	BEQ @UNKNOWN41
	TYA
	JSL PLAY_SOUND
	LDX $1A
	STX $04
	LDA $04
	CLC
	ADC #.LOWORD(GAME_STATE)
	TAX
	LDA a:game_state::party_members,X
	AND #$00FF
	DEC
	ASL
	ASL
	CLC
	ADC #.LOWORD(UNKNOWN_7E9631)
	TAY
	MOVE_INT_YPTRSRC RAM, $06
	MOVE_INT_CONSTANT NULL, $0A
	CMP32 $06, $0A
	BEQ @UNKNOWN41
	MOVE_INT $06, $0E
	JSL DISPLAY_TEXT
@UNKNOWN41:
	LDA #$0004
	STA $02
	STA $1C
	JMP @UNKNOWN14
@UNKNOWN42:
	LDA #$FFFF
	STA UNKNOWN_7E5E7C
	MOVE_INT $1E, $0A
	LDA $22
	CLC
	ADC #$001B
	TAY
	MOVE_INT_YPTRDEST $0A, RAM
	LDX $1A
	TXA
	PLD
	RTS
