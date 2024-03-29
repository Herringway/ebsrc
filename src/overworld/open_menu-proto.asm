
OPEN_MENU_BUTTON:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	STACK_RESERVE_INT8
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT32
	END_STACK_VARS
	JSL UNKNOWN_C0943C
	LDA #SFX::CURSOR1
	JSL PLAY_SOUND
	CREATE_WINDOW_NEAR #WINDOW::UNKNOWN00
	LDA #1
	STA @VIRTUAL02
	JMP @UNKNOWN7
@UNKNOWN1:
	LDA @VIRTUAL02
	CMP #3
	BNE @UNKNOWN2
	JSR UNKNOWN_C1C373
	CMP #0
	BEQL @UNKNOWN6
@UNKNOWN2:
	LDA @VIRTUAL02
	CMP #1
	BEQ @UNKNOWN3
	LDA @VIRTUAL02
	CMP #5
	BEQ @UNKNOWN3
	LDA @VIRTUAL02
	CMP #2
	BNE @UNKNOWN4
	LDA GAME_STATE+game_state::player_controlled_party_count
	AND #$00FF
	CMP #1
	BNE @UNKNOWN4
	LDX #1
	LDA GAME_STATE + game_state::party_members
	AND #$00FF
	JSL GET_CHARACTER_ITEM
	CMP #0
	BNE @UNKNOWN4
@UNKNOWN3:
	LDX #1
	BRA @UNKNOWN5
@UNKNOWN4:
	LDX #27
@UNKNOWN5:
	LDY @VIRTUAL02
	DEY
	LOADPTR DEBUG_MENU_ELEMENT_SPACING_DATA, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL09
	TYA
	ASL
	STA @LOCAL08
	LOADPTR CMD_WINDOW_TEXT, @VIRTUAL06
	TYA
	OPTIMIZED_MULT @VIRTUAL04, 10
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL00
	LDA @VIRTUAL06+2
	STA @LOCAL00+2
	MOVE_INT_CONSTANT NULL, @LOCAL01
	TXA
	SEP #PROC_FLAGS::ACCUM8
	STA @LOCAL02
	REP #PROC_FLAGS::ACCUM8
	LDA @LOCAL08
	INC
	MOVE_INTX @LOCAL09, @VIRTUAL06
	MOVE_INTX @VIRTUAL06, @VIRTUAL0A
	CLC
	ADC @VIRTUAL0A
	STA @VIRTUAL0A
	LDA [@VIRTUAL0A]
	AND #$00FF
	TAY
	LDA @LOCAL08
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	LDA [@VIRTUAL06]
	AND #$00FF
	TAX
	LDA @VIRTUAL02
	JSR UNKNOWN_C11596
@UNKNOWN6:
	INC @VIRTUAL02
@UNKNOWN7:
	LDA @VIRTUAL02
	CMP #7
	BCCL @UNKNOWN1
	JSR PRINT_MENU_ITEMS
@MAIN_PAUSE_MENU:
	REP #PROC_FLAGS::ACCUM8
	LDA #0
	JSR SET_WINDOW_FOCUS
	LDA #1
	JSR SELECTION_MENU
	STORE_INT1632 @VIRTUAL06
	LDA @VIRTUAL06
	CMP #MENU_OPTIONS::TALK_TO
	BEQ @TALK_TO
	CMP #MENU_OPTIONS::GOODS
	BEQ @GOODS
	CMP #MENU_OPTIONS::PSI
	BEQL @PSI
	CMP #MENU_OPTIONS::EQUIP
	BEQL @EQUIP
	CMP #MENU_OPTIONS::CHECK
	BEQL @CHECK
	CMP #MENU_OPTIONS::STATUS
	BEQL @STATUS
	JMP @UNKNOWN75
@TALK_TO:
	JSL TALK_TO
	MOVE_INT_CONSTANT NULL, @VIRTUAL0A
	CMP32 @VIRTUAL06, @VIRTUAL0A
	BNE @T012
	LOADPTR MSG_SYS_HANASU_NG, @VIRTUAL06
@T012:
	MOVE_INT @VIRTUAL06, @LOCAL00
	JSL DISPLAY_TEXT
	JMP @UNKNOWN75
@GOODS:
	JSR UNKNOWN_C1134B
@UNKNOWN9:
	LDA GAME_STATE+game_state::player_controlled_party_count
	AND #$00FF
	CMP #1
	BNE @GOODS_MANY_PARTY_MEMBERS
	LDY #.LOWORD(GAME_STATE) + game_state::party_members
	STY @LOCAL07
	LDX #1
	LDA __BSS_START__,Y
	AND #$00FF
	JSL GET_CHARACTER_ITEM
	CMP #0
	BEQL @MAIN_PAUSE_MENU
	LDX #2
	LDY @LOCAL07
	LDA __BSS_START__,Y
	AND #$00FF
	JSR INVENTORY_GET_ITEM_NAME
	LDY @LOCAL07
	SEP #PROC_FLAGS::ACCUM8
	LDA __BSS_START__,Y
	STORE_INT832 @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL06
	LDA #0
	JSL UNKNOWN_C43573
	BRA @UNKNOWN12
@GOODS_MANY_PARTY_MEMBERS:
	LDA #0
	JSR UNKNOWN_C193E7
	LOADPTR UNKNOWN_C1339E, @LOCAL00
	MOVE_INT_CONSTANT NULL, @LOCAL01
	LDX #1
	LDA #0
	JSR CHAR_SELECT_PROMPT
	STORE_INT1632 @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL06
@UNKNOWN12:
	MOVE_INT_CONSTANT NULL, @VIRTUAL0A
	CMP32 @VIRTUAL06, @VIRTUAL0A
	BNE @UNKNOWN14
	LDA #WINDOW::INVENTORY
	JSL CLOSE_WINDOW
	JSR UNKNOWN_C19437
	JMP @MAIN_PAUSE_MENU
@UNKNOWN14:
	LDX #1
	LDA @VIRTUAL06
	JSL GET_CHARACTER_ITEM
	CMP #0
	BEQL @UNKNOWN9
@UNKNOWN15:
	LDA #1
	JSR UNKNOWN_C193E7
	LDA #WINDOW::INVENTORY
	JSR SET_WINDOW_FOCUS
	LDA #1
	JSR SELECTION_MENU
	STA @VIRTUAL04
	STA @LOCAL05
	JSR UNKNOWN_C19437
	LDA @VIRTUAL04
	BNE @GOODS_ITEM_SELECTED
	LDA GAME_STATE+game_state::player_controlled_party_count
	AND #$00FF
	CMP #1
	BNEL @UNKNOWN9
	LDX #1
	LDA GAME_STATE + game_state::party_members
	AND #$00FF
	JSL GET_CHARACTER_ITEM
	CMP #0
	BEQ @UNKNOWN17
	LDA #SFX::MENU_OPEN_CLOSE
	JSL PLAY_SOUND
	JSL UNKNOWN_C3E6F8
@UNKNOWN17:
	LDA #WINDOW::INVENTORY
	JSL CLOSE_WINDOW
	JMP @MAIN_PAUSE_MENU
@GOODS_ITEM_SELECTED:
	CREATE_WINDOW_NEAR #WINDOW::INVENTORY_MENU
	MOVE_INT @LOCAL06, @VIRTUAL06
	LDA @VIRTUAL06
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA PARTY_CHARACTERS+char_struct::afflictions,X
	AND #$00FF
	TAX
	BEQ @GOODS_ITEM_SELECTED_ALIVE
	STX @VIRTUAL02
	LDA #4
	CLC
	SBC @VIRTUAL02
	BRANCHLTEQS @GOODS_ITEM_SELECTED_ALIVE
	LDX #1
	BRA @UNKNOWN22
@GOODS_ITEM_SELECTED_ALIVE:
	LDX #0
@UNKNOWN22:
	TXY
	STY @LOCAL04
	TYX
	LDA #0
	JSL UNKNOWN_C438A5
	BRA @UNKNOWN24
@UNKNOWN23:
	TYX
	INX
	STX @LOCAL03
	LOADPTR ITEM_USE_MENU_STRINGS, @VIRTUAL06
	TYA
	OPTIMIZED_MULT @VIRTUAL04, 6
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL00
	LDA @VIRTUAL06+2
	STA @LOCAL00+2
	MOVE_INT_CONSTANT NULL, @LOCAL01
	TXA
	JSR UNKNOWN_C115F4
	LDX @LOCAL03
	TXY
	STY @LOCAL04
@UNKNOWN24:
	LDY @LOCAL04
	CPY #4
	BCC @UNKNOWN23
	LDY #0
	TYX
	LDA #1
	JSL UNKNOWN_C451FA
	LDA #0
	STA @VIRTUAL02
@UNKNOWN25:
	LDA @VIRTUAL02
	BEQ @UNKNOWN26
	LDA #2
	JSR SET_WINDOW_FOCUS
	JSR PRINT_MENU_ITEMS
	BRA @UNKNOWN27
@UNKNOWN26:
	LDA #3
	JSR SET_WINDOW_FOCUS
	JSR PRINT_MENU_ITEMS
@UNKNOWN27:
	LDA #3
	JSR SET_WINDOW_FOCUS
	LDA #1
	JSR SELECTION_MENU
	STORE_INT1632 @VIRTUAL0A
	LDA @VIRTUAL0A
	BEQ @UNKNOWN30
	CMP #1
	BEQ @GOODS_ITEM_USE
	CMP #4
	BEQ @GOODS_ITEM_HELP
	CMP #2
	BEQL @UNKNOWN34
	CMP #3
	BEQL @UNKNOWN63
	JMP @UNKNOWN75
@UNKNOWN30:
	JSR CLOSE_FOCUS_WINDOW
	LDA #2
	JSR SET_WINDOW_FOCUS
	JMP @UNKNOWN15
@GOODS_ITEM_USE:
	LDA #1
	STA @VIRTUAL02
	LDY #0
	LDA @LOCAL05
	STA @VIRTUAL04
	LDX @VIRTUAL04
	MOVE_INT @LOCAL06, @VIRTUAL06
	LDA @VIRTUAL06
	JSR OVERWORLD_USE_ITEM
	CMP #0
	BEQ @UNKNOWN25
	JMP @UNKNOWN75
@GOODS_ITEM_HELP:
	CREATE_WINDOW_NEAR #WINDOW::TEXT_STANDARD
	LDA @LOCAL05
	STA @VIRTUAL04
	LDX @VIRTUAL04
	MOVE_INT @LOCAL06, @VIRTUAL06
	LDA @VIRTUAL06
	JSL GET_CHARACTER_ITEM
	STA @LOCAL05
	LOADPTR ITEM_CONFIGURATION_TABLE, @VIRTUAL0A
	LDA @LOCAL05
	LDY #.SIZEOF(item)
	JSL MULT168
	CLC
	ADC #item::help_text
	CLC
	ADC @VIRTUAL0A
	STA @VIRTUAL0A
	DEREFERENCE_PTR_TO @VIRTUAL0A, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
	JSL DISPLAY_TEXT
	LDA #WINDOW::TEXT_STANDARD
	JSL CLOSE_WINDOW
	LDA #WINDOW::INVENTORY_MENU
	JSL CLOSE_WINDOW
	LDA #WINDOW::INVENTORY
	JSR SET_WINDOW_FOCUS
	JMP @UNKNOWN15
@UNKNOWN34:
	LDA #WINDOW::INVENTORY
	JSR SET_WINDOW_FOCUS
	JSR UNKNOWN_C10FA3
	LDA #1
	STA @VIRTUAL02
	LDA #3
	JSR UNKNOWN_C193E7
	LOADPTR UNKNOWN_C133A7, @LOCAL00
	MOVE_INT_CONSTANT NULL, @LOCAL01
	LDX #1
	LDA #2
	JSR CHAR_SELECT_PROMPT
	STA @LOCAL07
	JSR UNKNOWN_C19437
	LDA #WINDOW::UNKNOWN2C
	JSL CLOSE_WINDOW
	LDA @LOCAL07
	BEQL @UNKNOWN25
	MOVE_INT @LOCAL06, @VIRTUAL06
	MOVE_INT1632 @LOCAL07, @VIRTUAL0A
	CMP32 @VIRTUAL0A, @VIRTUAL06
	BEQ @UNKNOWN37
	LDA @LOCAL05
	STA @VIRTUAL04
	LDX @VIRTUAL04
	LDA @VIRTUAL06
	JSL GET_CHARACTER_ITEM
	LDY #.SIZEOF(item)
	JSL MULT168
	.A16
	CLC
	ADC #item::flags
	TAX
	LDA f:ITEM_CONFIGURATION_TABLE,X
	AND #$00FF
	AND #ITEM_FLAGS::CANNOT_GIVE
	BEQ @UNKNOWN37
	CREATE_WINDOW_NEAR #WINDOW::TEXT_STANDARD
	MOVE_INT @VIRTUAL06, @LOCAL00
	JSR SET_WORKING_MEMORY
	MOVE_INT1632 @VIRTUAL04, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
	JSR SET_ARGUMENT_MEMORY
	DISPLAY_TEXT_PTR MSG_SYS_GOODS_NOCARRY
	LDA #WINDOW::TEXT_STANDARD
	JSL CLOSE_WINDOW
	JMP @UNKNOWN25
@UNKNOWN37:
	LDY #0
	STY @LOCAL03
	LDA @VIRTUAL06
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	.A16
	TAX
	LDA PARTY_CHARACTERS + char_struct::afflictions + STATUS_GROUP::PERSISTENT_EASYHEAL,X
	AND #$00FF
	TAX
	CPX #STATUS_0::UNCONSCIOUS
	BEQ @UNKNOWN38
	CPX #STATUS_0::DIAMONDIZED
	BNE @UNKNOWN39
@UNKNOWN38:
	LDY #5
	STY @LOCAL03
@UNKNOWN39:
	MOVE_INT1632 @LOCAL07, @VIRTUAL0A
	CMP32 @VIRTUAL0A, @VIRTUAL06
	.A16
	BEQ @UNKNOWN43
	LDY @LOCAL03
	INY
	STY @LOCAL03
	LDA @LOCAL07
	JSL FIND_INVENTORY_SPACE2
	CMP #0
	BEQ @UNKNOWN41
	LDY @LOCAL03
	INY
	INY
	STY @LOCAL03
@UNKNOWN41:
	LDA @LOCAL07
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA PARTY_CHARACTERS + char_struct::afflictions + STATUS_GROUP::PERSISTENT_EASYHEAL,X
	AND #$00FF
	TAX
	CPX #STATUS_0::UNCONSCIOUS
	BEQ @UNKNOWN42
	CPX #STATUS_0::DIAMONDIZED
	BNE @UNKNOWN43
@UNKNOWN42:
	LDY @LOCAL03
	INY
	STY @LOCAL03
@UNKNOWN43:
	CREATE_WINDOW_NEAR #WINDOW::TEXT_STANDARD
	JSR GET_ACTIVE_WINDOW_ADDRESS
	STA @LOCAL08
	CLC
	ADC #window_stats::working_memory
	TAY
	MOVE_INT_YPTRDEST @VIRTUAL06, __BSS_START__
	MOVE_INT1632 @LOCAL07, @VIRTUAL0A
	LDA @LOCAL08
	CLC
	ADC #window_stats::working_memory_storage
	TAY
	MOVE_INT_YPTRDEST @VIRTUAL0A, __BSS_START__
	LDA @LOCAL05
	STA @VIRTUAL04
	STORE_INT1632 @VIRTUAL0A
	LDA @LOCAL08
	CLC
	ADC #window_stats::argument_memory
	TAY
	MOVE_INT_YPTRDEST @VIRTUAL0A, __BSS_START__
	LDY @LOCAL03
	TYA
	BEQ @GOODS_GIVE_SELF_ALIVE_TEXT
	CMP #1
	BEQ @GOODS_GIVE_ALIVE_TO_ALIVE_FAIL_TEXT
	CMP #2
	BEQ @GOODS_GIVE_ALIVE_TO_DEAD_FAIL_TEXT
	CMP #3
	BEQL @GOODS_GIVE_ALIVE_TO_ALIVE_SUCC_TEXT
	CMP #4
	BEQL @GOODS_GIVE_ALIVE_TO_DEAD_SUCC_TEXT
	CMP #5
	BEQL @GOODS_GIVE_SELF_DEAD_TEXT
	CMP #6
	BEQL @GOODS_GIVE_DEAD_TO_ALIVE_FAIL_TEXT
	CMP #7
	BEQL @GOODS_GIVE_DEAD_TO_DEAD_FAIL_TEXT
	CMP #8
	BEQL @GOODS_GIVE_DEAD_TO_ALIVE_SUCC_TEXT
	CMP #9
	BEQL @GOODS_GIVE_DEAD_TO_DEAD_SUCC_TEXT
	JMP @GOODS_GIVE_INVALID_TEXT
@GOODS_GIVE_SELF_ALIVE_TEXT:
	DISPLAY_TEXT_PTR MSG_SYS_CARRY_SELF_ALIVE
	LDY @VIRTUAL04
	MOVE_INT @LOCAL06, @VIRTUAL06
	LDA @VIRTUAL06
	TAX
	LDA @LOCAL07
	JSL UNKNOWN_C22A3A
	JMP @UNKNOWN62
@GOODS_GIVE_ALIVE_TO_ALIVE_FAIL_TEXT:
	DISPLAY_TEXT_PTR MSG_SYS_CARRY_FAIL_OTHER_ALIVE_ALIVE
	JMP @UNKNOWN62
@GOODS_GIVE_ALIVE_TO_DEAD_FAIL_TEXT:
	DISPLAY_TEXT_PTR MSG_SYS_CARRY_FAIL_OTHER_ALIVE_DEAD
	JMP @UNKNOWN62
@GOODS_GIVE_ALIVE_TO_ALIVE_SUCC_TEXT:
	DISPLAY_TEXT_PTR MSG_SYS_CARRY_OTHER_ALIVE_ALIVE
	LDY @VIRTUAL04
	MOVE_INT @LOCAL06, @VIRTUAL06
	LDA @VIRTUAL06
	TAX
	LDA @LOCAL07
	JSL UNKNOWN_C22A3A
	JMP @UNKNOWN62
@GOODS_GIVE_ALIVE_TO_DEAD_SUCC_TEXT:
	DISPLAY_TEXT_PTR MSG_SYS_CARRY_OTHER_ALIVE_DEAD
	LDY @VIRTUAL04
	MOVE_INT @LOCAL06, @VIRTUAL06
	LDA @VIRTUAL06
	TAX
	LDA @LOCAL07
	JSL UNKNOWN_C22A3A
	JMP @UNKNOWN62
@GOODS_GIVE_SELF_DEAD_TEXT:
	DISPLAY_TEXT_PTR MSG_SYS_CARRY_SELF_DEAD
	LDY @VIRTUAL04
	MOVE_INT @LOCAL06, @VIRTUAL06
	LDA @VIRTUAL06
	TAX
	LDA @LOCAL07
	JSL UNKNOWN_C22A3A
	BRA @UNKNOWN62
@GOODS_GIVE_DEAD_TO_ALIVE_FAIL_TEXT:
	DISPLAY_TEXT_PTR MSG_SYS_CARRY_FAIL_OTHER_DEAD_ALIVE
	BRA @UNKNOWN62
@GOODS_GIVE_DEAD_TO_DEAD_FAIL_TEXT:
	DISPLAY_TEXT_PTR MSG_SYS_CARRY_FAIL_OTHER_DEAD_DEAD
	BRA @UNKNOWN62
@GOODS_GIVE_DEAD_TO_ALIVE_SUCC_TEXT:
	DISPLAY_TEXT_PTR MSG_SYS_CARRY_OTHER_DEAD_ALIVE
	LDY @VIRTUAL04
	MOVE_INT @LOCAL06, @VIRTUAL06
	LDA @VIRTUAL06
	TAX
	LDA @LOCAL07
	JSL UNKNOWN_C22A3A
	BRA @UNKNOWN62
@GOODS_GIVE_DEAD_TO_DEAD_SUCC_TEXT:
	DISPLAY_TEXT_PTR MSG_SYS_CARRY_OTHER_DEAD_DEAD
	LDY @VIRTUAL04
	MOVE_INT @LOCAL06, @VIRTUAL06
	LDA @VIRTUAL06
	TAX
	LDA @LOCAL07
	JSL UNKNOWN_C22A3A
	BRA @UNKNOWN62
@GOODS_GIVE_INVALID_TEXT:
	BRA @GOODS_GIVE_INVALID_TEXT
@UNKNOWN62:
	LDA #WINDOW::TEXT_STANDARD
	JSL CLOSE_WINDOW
	LDA #WINDOW::INVENTORY_MENU
	JSL CLOSE_WINDOW
	LDA #WINDOW::INVENTORY
	JSL CLOSE_WINDOW
	JMP @MAIN_PAUSE_MENU
@UNKNOWN63:
	CREATE_WINDOW_NEAR #WINDOW::TEXT_STANDARD
	MOVE_INT @LOCAL06, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
	JSR SET_WORKING_MEMORY
	LDA @LOCAL05
	STA @VIRTUAL04
	STORE_INT1632 @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
	JSR SET_ARGUMENT_MEMORY
	DISPLAY_TEXT_PTR MSG_SYS_GOODS_DROP
	LDA #WINDOW::TEXT_STANDARD
	JSL CLOSE_WINDOW
	LDA #WINDOW::INVENTORY_MENU
	JSL CLOSE_WINDOW
	LDA #WINDOW::INVENTORY
	JSL CLOSE_WINDOW
	JMP @MAIN_PAUSE_MENU
@PSI:
	JSR UNKNOWN_C1134B
	JSR UNKNOWN_C1C373
	STORE_INT1632 @VIRTUAL06
	MOVE_INT_CONSTANT NULL, @VIRTUAL0A
	CMP32 @VIRTUAL06, @VIRTUAL0A
	BEQ @UNKNOWN66
	LDA @VIRTUAL06
	DEC
	JSL UNKNOWN_C43573
@UNKNOWN66:
	JSR UNKNOWN_C1B5B6
	CMP #0
	BNEL @UNKNOWN75
	JSR UNKNOWN_C1C3B6
	CMP #1
	BNEL @MAIN_PAUSE_MENU
	LDA #SFX::MENU_OPEN_CLOSE
	JSL PLAY_SOUND
	JSL UNKNOWN_C3E6F8
	JMP @MAIN_PAUSE_MENU
@EQUIP:
	JSR UNKNOWN_C1134B
	JSR UNKNOWN_C1AA5D
	LDA GAME_STATE+game_state::player_controlled_party_count
	AND #$00FF
	CMP #1
	BNEL @MAIN_PAUSE_MENU
	LDA #SFX::MENU_OPEN_CLOSE
	JSL PLAY_SOUND
	JSL UNKNOWN_C3E6F8
	JMP @MAIN_PAUSE_MENU
@CHECK:
	JSL CHECK
	MOVE_INT_CONSTANT NULL, @VIRTUAL0A
	CMP32 @VIRTUAL06, @VIRTUAL0A
	BNE @UNKNOWN73
	LOADPTR MSG_SYS_NOPROBLEM, @VIRTUAL06
@UNKNOWN73:
	MOVE_INT @VIRTUAL06, @LOCAL00
	JSL DISPLAY_TEXT
	BRA @UNKNOWN75
@STATUS:
	JSR UNKNOWN_C1134B
	SEP #PROC_FLAGS::ACCUM8
	LDA #1
	STA FORCE_LEFT_TEXT_ALIGNMENT
	JSR UNKNOWN_C1BB71
	SEP #PROC_FLAGS::ACCUM8
	STZ FORCE_LEFT_TEXT_ALIGNMENT
	JMP @MAIN_PAUSE_MENU
@UNKNOWN75:
	JSL CLEAR_INSTANT_PRINTING
	JSR HIDE_HPPP_WINDOWS
	JSR UNKNOWN_C1008E
@UNKNOWN76:
	JSL WINDOW_TICK
	.A16
	LDA ENTITY_FADE_ENTITY
	CMP #.LOWORD(-1)
	BNE @UNKNOWN76
	JSL UNKNOWN_C09451
	END_C_FUNCTION

OPEN_MENU_BUTTON_CHECKTALK:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	END_STACK_VARS
	JSL UNKNOWN_C0943C
	LDA #SFX::CURSOR1
	JSL PLAY_SOUND
	JSL TALK_TO
	MOVE_INT_CONSTANT NULL, @VIRTUAL0A
	CMP32 @VIRTUAL06, @VIRTUAL0A
	BNE @UNKNOWN79
	JSL CHECK
	CMP32 @VIRTUAL06, @VIRTUAL0A
	BNE @UNKNOWN79
	LOADPTR MSG_SYS_NOPROBLEM, @VIRTUAL06
@UNKNOWN79:
	MOVE_INT @VIRTUAL06, @LOCAL00
	JSL DISPLAY_TEXT
	JSL CLEAR_INSTANT_PRINTING
	JSR HIDE_HPPP_WINDOWS
	JSR UNKNOWN_C1008E
@UNKNOWN80:
	JSL WINDOW_TICK
	LDA ENTITY_FADE_ENTITY
	CMP #.LOWORD(-1)
	BNE @UNKNOWN80
	JSL UNKNOWN_C09451
	END_C_FUNCTION
