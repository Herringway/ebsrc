
BATTLE_SELECTION_MENU:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	STX @VIRTUAL04
	STA @LOCAL09
	STZ @LOCAL08
	LDA #0
	JSL UNKNOWN_C2FEF9
	LDA @LOCAL09
	DEC
	OPTIMIZED_MULT @VIRTUAL04, .SIZEOF(char_struct)
	CLC
	ADC #.LOWORD(PARTY_CHARACTERS)
	STA @LOCAL07
	LDY #char_struct::afflictions
	LDA (@LOCAL07),Y
	AND #$00FF
	CMP #STATUS_0::PARALYZED
	BEQ @UNKNOWN0
	LDY #char_struct::afflictions+2
	LDA (@LOCAL07),Y
	AND #$00FF
	CMP #STATUS_2::IMMOBILIZED
	BNE @UNKNOWN1
@UNKNOWN0:
	LDA #2
	STA @LOCAL06
	BRA @UNKNOWN4
@UNKNOWN1:
	LDY #char_struct::equipment+EQUIPMENT_SLOT::WEAPON
	LDA (@LOCAL07),Y
	AND #$00FF
	BEQ @UNKNOWN2
	DEC
	CLC
	ADC @LOCAL07
	TAX
	LDA __BSS_START__ + char_struct::items,X
	AND #$00FF
@UNKNOWN2:
	CMP #0
	BEQ @UNKNOWN3
	LDY #.SIZEOF(item)
	JSL MULT168
	CLC
	ADC #item::type
	TAX
	LDA f:ITEM_CONFIGURATION_TABLE,X
	AND #$00FF
	AND #$0003
	CMP #1
	BNE @UNKNOWN3
	LDA #1
	STA @LOCAL06
	BRA @UNKNOWN4
@UNKNOWN3:
	STZ @LOCAL06
@UNKNOWN4:
	LDA GAME_STATE+game_state::auto_fight_enable
	AND #$00FF
	BEQL @UNKNOWN43
	LDY #char_struct::afflictions+4
	LDA (@LOCAL07),Y
	AND #$00FF
	BNEL @UNKNOWN38
	LDY #char_struct::afflictions+3
	LDA (@LOCAL07),Y
	AND #$00FF
	CMP #STATUS_3::STRANGE
	BEQL @UNKNOWN38
	LDY #char_struct::afflictions+1
	LDA (@LOCAL07),Y
	AND #$00FF
	CMP #STATUS_1::MUSHROOMIZED
	BEQL @UNKNOWN38
	LDA @LOCAL09
	CMP #PARTY_MEMBER::NESS
	BEQ @UNKNOWN9
	LDA @LOCAL09
	CMP #PARTY_MEMBER::POO
	BNEL @UNKNOWN38
@UNKNOWN9:
	SEP #PROC_FLAGS::ACCUM8
	LDA #1
	STA BATTLE_MENU_SELECTION + battle_menu_selection::targetting
	LDA #26
	STA BATTLE_MENU_SELECTION + battle_menu_selection::param1
	REP #PROC_FLAGS::ACCUM8
	LDA #35
	STA BATTLE_MENU_SELECTION + battle_menu_selection::selected_action
	LDX #26
	LDA @LOCAL09
	JSL CHECK_IF_PSI_KNOWN
	CMP #0
	BEQ @UNKNOWN15
	LDY #char_struct::current_pp_target
	LDA f:BATTLE_ACTION_TABLE + (.SIZEOF(battle_action) * BATTLE_ACTIONS::PSI_LIFEUP_OMEGA) + battle_action::pp_cost
	AND #$00FF
	CMP (@LOCAL07),Y
	BGT @UNKNOWN15
	LDA #0
	JSL COUNT_CHARS
	CMP #2
	BCC @UNKNOWN15
	LDY #0
	STY @LOCAL05
	BRA @UNKNOWN14
@UNKNOWN11:
	LDA GAME_STATE + game_state::party_members,Y
	AND #$00FF
	TAX
	CPX #1
	BCC @UNKNOWN13
	CPX #4
	BGT @UNKNOWN13
	TXA
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA PARTY_CHARACTERS+char_struct::max_hp,X
	LSR
	LSR
	CMP PARTY_CHARACTERS+char_struct::current_hp_target,X
	BLTEQ @UNKNOWN15
@UNKNOWN13:
	LDY @LOCAL05
	INY
	STY @LOCAL05
@UNKNOWN14:
	CPY #6
	BCC @UNKNOWN11
	SEP #PROC_FLAGS::ACCUM8
	LDA #4
	STA BATTLE_MENU_SELECTION + battle_menu_selection::targetting
	JMP @UNKNOWN21
@UNKNOWN15:
	SEP #PROC_FLAGS::ACCUM8
	LDA #25
	STA BATTLE_MENU_SELECTION + battle_menu_selection::param1
	REP #PROC_FLAGS::ACCUM8
	LDA #34
	STA BATTLE_MENU_SELECTION + battle_menu_selection::selected_action
	LDX #25
	LDA @LOCAL09
	JSL CHECK_IF_PSI_KNOWN
	CMP #0
	BEQ @UNKNOWN17
	LDY #char_struct::current_pp_target
	LDA f:BATTLE_ACTION_TABLE + (.SIZEOF(battle_action) * BATTLE_ACTIONS::PSI_LIFEUP_GAMMA) + battle_action::pp_cost
	AND #$00FF
	CMP (@LOCAL07),Y
	BGT @UNKNOWN17
	JSL AUTOLIFEUP
	SEP #PROC_FLAGS::ACCUM8
	STA BATTLE_MENU_SELECTION + battle_menu_selection::selected_target
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BNEL @UNKNOWN21
@UNKNOWN17:
	SEP #PROC_FLAGS::ACCUM8
	LDA #24
	STA BATTLE_MENU_SELECTION + battle_menu_selection::param1
	REP #PROC_FLAGS::ACCUM8
	LDA #33
	STA BATTLE_MENU_SELECTION + battle_menu_selection::selected_action
	LDX #24
	LDA @LOCAL09
	JSL CHECK_IF_PSI_KNOWN
	CMP #0
	BEQ @UNKNOWN19
	LDY #char_struct::current_pp_target
	LDA f:BATTLE_ACTION_TABLE + (.SIZEOF(battle_action) * BATTLE_ACTIONS::PSI_LIFEUP_BETA) + battle_action::pp_cost
	AND #$00FF
	CMP (@LOCAL07),Y
	BGT @UNKNOWN19
	JSL AUTOLIFEUP
	SEP #PROC_FLAGS::ACCUM8
	STA BATTLE_MENU_SELECTION + battle_menu_selection::selected_target
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BNE @UNKNOWN21
@UNKNOWN19:
	SEP #PROC_FLAGS::ACCUM8
	LDA #23
	STA BATTLE_MENU_SELECTION + battle_menu_selection::param1
	REP #PROC_FLAGS::ACCUM8
	LDA #32
	STA BATTLE_MENU_SELECTION + battle_menu_selection::selected_action
	LDX #23
	LDA @LOCAL09
	JSL CHECK_IF_PSI_KNOWN
	CMP #0
	BEQ @UNKNOWN22
	LDY #char_struct::current_pp_target
	LDA f:BATTLE_ACTION_TABLE + (.SIZEOF(battle_action) * BATTLE_ACTIONS::PSI_LIFEUP_ALPHA) + battle_action::pp_cost
	AND #$00FF
	CMP (@LOCAL07),Y
	BGT @UNKNOWN22
	JSL AUTOLIFEUP
	SEP #PROC_FLAGS::ACCUM8
	STA BATTLE_MENU_SELECTION + battle_menu_selection::selected_target
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BEQ @UNKNOWN22
@UNKNOWN21:
	REP #PROC_FLAGS::ACCUM8
	LDA @LOCAL09
	SEP #PROC_FLAGS::ACCUM8
	STA BATTLE_MENU_SELECTION
	REP #PROC_FLAGS::ACCUM8
	LDA BATTLE_MENU_SELECTION + battle_menu_selection::selected_action
	JMP @UNKNOWN113
@UNKNOWN22:
	SEP #PROC_FLAGS::ACCUM8
	LDA #30
	STA BATTLE_MENU_SELECTION + battle_menu_selection::param1
	REP #PROC_FLAGS::ACCUM8
	LDA #39
	STA BATTLE_MENU_SELECTION + battle_menu_selection::selected_action
	LDX #30
	LDA @LOCAL09
	JSL CHECK_IF_PSI_KNOWN
	CMP #0
	BEQ @UNKNOWN24
	LDY #char_struct::current_pp_target
	LDA f:BATTLE_ACTION_TABLE + (.SIZEOF(battle_action) * BATTLE_ACTIONS::PSI_HEALING_OMEGA) + battle_action::pp_cost
	AND #$00FF
	CMP (@LOCAL07),Y
	BGT @UNKNOWN24
	LDX #1
	LDA #0
	JSL AUTOHEALING
	SEP #PROC_FLAGS::ACCUM8
	STA BATTLE_MENU_SELECTION + battle_menu_selection::selected_target
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BNE @UNKNOWN21
@UNKNOWN24:
	SEP #PROC_FLAGS::ACCUM8
	LDA #29
	STA BATTLE_MENU_SELECTION + battle_menu_selection::param1
	REP #PROC_FLAGS::ACCUM8
	LDA #38
	STA BATTLE_MENU_SELECTION + battle_menu_selection::selected_action
	LDX #29
	LDA @LOCAL09
	JSL CHECK_IF_PSI_KNOWN
	CMP #0
	BEQ @UNKNOWN28
	LDY #char_struct::current_pp_target
	LDA f:BATTLE_ACTION_TABLE + (.SIZEOF(battle_action) * BATTLE_ACTIONS::PSI_HEALING_GAMMA) + battle_action::pp_cost
	AND #$00FF
	CMP (@LOCAL07),Y
	BGT @UNKNOWN28
	LDX #3
	LDA #0
	JSL AUTOHEALING
	SEP #PROC_FLAGS::ACCUM8
	LDY #.LOWORD(BATTLE_MENU_SELECTION) + battle_menu_selection::selected_target
	STY @LOCAL05
	STA __BSS_START__,Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BNEL @UNKNOWN21
	LDX #2
	LDA #0
	JSL AUTOHEALING
	SEP #PROC_FLAGS::ACCUM8
	LDY @LOCAL05
	STA __BSS_START__,Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BNEL @UNKNOWN21
	LDX #1
	LDA #0
	JSL AUTOHEALING
	SEP #PROC_FLAGS::ACCUM8
	LDY @LOCAL05
	STA __BSS_START__,Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BNEL @UNKNOWN21
@UNKNOWN28:
	SEP #PROC_FLAGS::ACCUM8
	LDA #28
	STA BATTLE_MENU_SELECTION + battle_menu_selection::param1
	REP #PROC_FLAGS::ACCUM8
	LDA #37
	STA BATTLE_MENU_SELECTION + battle_menu_selection::selected_action
	LDX #28
	LDA @LOCAL09
	JSL CHECK_IF_PSI_KNOWN
	CMP #0
	BEQL @UNKNOWN34
	LDY #char_struct::current_pp_target
	LDA f:BATTLE_ACTION_TABLE + (.SIZEOF(battle_action) * BATTLE_ACTIONS::PSI_HEALING_BETA) + battle_action::pp_cost
	AND #$00FF
	CMP (@LOCAL07),Y
	BGT @UNKNOWN34
	LDX #5
	LDA #0
	JSL AUTOHEALING
	SEP #PROC_FLAGS::ACCUM8
	LDY #.LOWORD(BATTLE_MENU_SELECTION) + battle_menu_selection::selected_target
	STY @LOCAL04
	STA __BSS_START__,Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BNEL @UNKNOWN21
	LDX #4
	LDA #0
	JSL AUTOHEALING
	SEP #PROC_FLAGS::ACCUM8
	LDY @LOCAL04
	STA __BSS_START__,Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BNEL @UNKNOWN21
	LDX #2
	TXA
	JSL AUTOHEALING
	SEP #PROC_FLAGS::ACCUM8
	LDY @LOCAL04
	STA __BSS_START__,Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BNEL @UNKNOWN21
	LDX #1
	LDA #3
	JSL AUTOHEALING
	SEP #PROC_FLAGS::ACCUM8
	LDY @LOCAL04
	STA __BSS_START__,Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BNEL @UNKNOWN21
@UNKNOWN34:
	SEP #PROC_FLAGS::ACCUM8
	LDA #27
	STA BATTLE_MENU_SELECTION + battle_menu_selection::param1
	REP #PROC_FLAGS::ACCUM8
	LDA #36
	STA BATTLE_MENU_SELECTION + battle_menu_selection::selected_action
	LDX #27
	LDA @LOCAL09
	JSL CHECK_IF_PSI_KNOWN
	CMP #0
	BEQ @UNKNOWN38
	LDY #char_struct::current_pp_target
	LDA f:BATTLE_ACTION_TABLE + (.SIZEOF(battle_action) * BATTLE_ACTIONS::PSI_HEALING_ALPHA) + battle_action::pp_cost
	AND #$00FF
	CMP (@LOCAL07),Y
	BGT @UNKNOWN38
	LDX #7
	LDA #0
	JSL AUTOHEALING
	SEP #PROC_FLAGS::ACCUM8
	LDY #.LOWORD(BATTLE_MENU_SELECTION) + battle_menu_selection::selected_target
	STY @LOCAL05
	STA __BSS_START__,Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BNEL @UNKNOWN21
	LDX #6
	LDA #0
	JSL AUTOHEALING
	SEP #PROC_FLAGS::ACCUM8
	LDY @LOCAL05
	STA __BSS_START__,Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BNEL @UNKNOWN21
	LDX #1
	LDA #2
	JSL AUTOHEALING
	SEP #PROC_FLAGS::ACCUM8
	LDY @LOCAL05
	STA __BSS_START__,Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BNEL @UNKNOWN21
@UNKNOWN38:
	LDA @LOCAL06
	BEQ @UNKNOWN39
	CMP #1
	BEQ @UNKNOWN40
	CMP #2
	BEQ @UNKNOWN41
	BRA @UNKNOWN42
@UNKNOWN39:
	LDA #4
	STA @LOCAL03
	BRA @UNKNOWN42
@UNKNOWN40:
	LDA #5
	STA @LOCAL03
	BRA @UNKNOWN42
@UNKNOWN41:
	LDA #1
	JMP @UNKNOWN113
@UNKNOWN42:
	LDA @LOCAL09
	SEP #PROC_FLAGS::ACCUM8
	STA BATTLE_MENU_SELECTION
	STZ BATTLE_MENU_SELECTION + battle_menu_selection::param1
	REP #PROC_FLAGS::ACCUM8
	LDA @LOCAL03
	STA BATTLE_MENU_SELECTION + battle_menu_selection::selected_action
	SEP #PROC_FLAGS::ACCUM8
	LDA #17
	STA BATTLE_MENU_SELECTION + battle_menu_selection::targetting
	REP #PROC_FLAGS::ACCUM8
	LDA NUM_BATTLERS_IN_FRONT_ROW
	CLC
	ADC NUM_BATTLERS_IN_BACK_ROW
	JSR RAND_LIMIT
	SEP #PROC_FLAGS::ACCUM8
	INC
	STA BATTLE_MENU_SELECTION + battle_menu_selection::selected_target
	REP #PROC_FLAGS::ACCUM8
	LDA @LOCAL03
	JMP @UNKNOWN113
@UNKNOWN43:
	JSL UNKNOWN_EF0262
	LDA @LOCAL09
	CMP #PARTY_MEMBER::PAULA
	BEQ @UNKNOWN44
	LDA @LOCAL09
	CMP #PARTY_MEMBER::POO
	BNE @UNKNOWN45
@UNKNOWN44:
	LDA #1
	STA @LOCAL03
	BRA @UNKNOWN46
@UNKNOWN45:
	STZ @LOCAL03
@UNKNOWN46:
	LDA @VIRTUAL04
	BNE @UNKNOWN47
	INC @LOCAL03
@UNKNOWN47:
	LOADPTR BATTLE_WINDOW_SIZES, @VIRTUAL06
	LDA @LOCAL03
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL02
	LDA @VIRTUAL06+2
	STA @LOCAL02+2
	LDA [@VIRTUAL06]
	AND #$00FF
	JSL REDIRECT_CREATE_WINDOW
	LDA @LOCAL09
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(PARTY_CHARACTERS)
	PROMOTENEARPTRA @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDX #5
	MOVE_INT @LOCAL02, @VIRTUAL06
	LDA [@VIRTUAL06]
	AND #$00FF
	JSL SET_WINDOW_TITLE
	LDA @LOCAL06
	BEQ @UNKNOWN48
	CMP #1
	BEQ @UNKNOWN49
	CMP #2
	BEQ @UNKNOWN50
	BRA @UNKNOWN51
@UNKNOWN48:
	LOADPTR BATTLE_MENU_TEXT_BASH, @LOCAL00
	MOVE_INT_CONSTANT NULL, @LOCAL01
	LDY #0
	TYX
	LDA #1
	JSL SELECTION_MENU_ITEM_SETUP
	BRA @UNKNOWN51
@UNKNOWN49:
	LOADPTR BATTLE_MENU_TEXT_SHOOT, @LOCAL00
	MOVE_INT_CONSTANT NULL, @LOCAL01
	LDY #0
	TYX
	LDA #1
	JSL SELECTION_MENU_ITEM_SETUP
	BRA @UNKNOWN51
@UNKNOWN50:
	LOADPTR BATTLE_MENU_TEXT_DO_NOTHING, @LOCAL00
	MOVE_INT_CONSTANT NULL, @LOCAL01
	LDY #0
	TYX
	LDA #1
	JSL SELECTION_MENU_ITEM_SETUP
@UNKNOWN51:
	LDA @LOCAL06
	CMP #2
	BEQL @UNKNOWN53
	LOADPTR BATTLE_MENU_TEXT, @VIRTUAL0A
	MOVE_INT_CONSTANT NULL, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL02
	LDA #16
	MOVE_INTX @VIRTUAL0A, @VIRTUAL06
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL00
	LDA @VIRTUAL06+2
	STA @LOCAL00+2
	MOVE_INT @LOCAL02, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL01
	LDY #0
	LDX #6
	LDA #2
	JSL SELECTION_MENU_ITEM_SETUP
	LDA #64
	MOVE_INTX @VIRTUAL0A, @VIRTUAL06
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL00
	LDA @VIRTUAL06+2
	STA @LOCAL00+2
	MOVE_INT @LOCAL02, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL01
	LDY #1
	LDX #6
	LDA #5
	JSL SELECTION_MENU_ITEM_SETUP
@UNKNOWN53:
	LDA @VIRTUAL04
	BNEL @UNKNOWN59
	LDA @LOCAL03
	CMP #2
	BNE @UNKNOWN55
	LDX #16
	BRA @UNKNOWN56
@UNKNOWN55:
	LDX #11
@UNKNOWN56:
	STX @VIRTUAL04
	LDA @LOCAL09
	CMP #PARTY_MEMBER::PAULA
	BEQ @UNKNOWN57
	LDA @LOCAL09
	CMP #PARTY_MEMBER::POO
	BNE @UNKNOWN58
@UNKNOWN57:
	INC @VIRTUAL04
	INC @VIRTUAL04
@UNKNOWN58:
	LOADPTR BATTLE_MENU_TEXT, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL02
	MOVE_INT_CONSTANT NULL, @VIRTUAL0A
	LDA #32
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL00
	LDA @VIRTUAL06+2
	STA @LOCAL00+2
	MOVE_INT @VIRTUAL0A, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL01
	LDY #0
	LDX @VIRTUAL04
	LDA #3
	JSL SELECTION_MENU_ITEM_SETUP
	LDA #128
	MOVE_INTX @LOCAL02, @VIRTUAL06
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL00
	LDA @VIRTUAL06+2
	STA @LOCAL00+2
	MOVE_INT @VIRTUAL0A, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL01
	LDY #1
	LDX @VIRTUAL04
	LDA #6
	JSL SELECTION_MENU_ITEM_SETUP
@UNKNOWN59:
	LDA @LOCAL09
	CMP #PARTY_MEMBER::JEFF
	BNE @UNKNOWN60
	LOADPTR BATTLE_MENU_TEXT_SPY, @LOCAL00
	MOVE_INT_CONSTANT NULL, @LOCAL01
	LDY #1
	LDX #0
	LDA #4
	JSL SELECTION_MENU_ITEM_SETUP
	BRA @UNKNOWN61
@UNKNOWN60:
	LDY #char_struct::afflictions+4
	LDA (@LOCAL07),Y
	AND #$00FF
	BNE @UNKNOWN61
	LOADPTR BATTLE_MENU_TEXT_PSI, @LOCAL00
	MOVE_INT_CONSTANT NULL, @LOCAL01
	LDY #1
	LDX #0
	LDA #4
	JSL SELECTION_MENU_ITEM_SETUP
@UNKNOWN61:
	LDA @LOCAL09
	CMP #PARTY_MEMBER::PAULA
	BNE @UNKNOWN62
	LOADPTR BATTLE_MENU_TEXT_PRAY, @LOCAL00
	MOVE_INT_CONSTANT NULL, @LOCAL01
	LDY #0
	LDX #11
	LDA #7
	JSL SELECTION_MENU_ITEM_SETUP
@UNKNOWN62:
	LDA @LOCAL09
	CMP #PARTY_MEMBER::POO
	BNE @UNKNOWN63
	LOADPTR BATTLE_MENU_TEXT_MIRROR, @LOCAL00
	MOVE_INT_CONSTANT NULL, @LOCAL01
	LDY #0
	LDX #13
	LDA #7
	JSL SELECTION_MENU_ITEM_SETUP
@UNKNOWN63:
	LDX @LOCAL03
	LDA f:BATTLE_WINDOW_SIZES,X
	AND #$00FF
	JSL REDIRECT_SET_WINDOW_FOCUS
	LDA @LOCAL08
	BNE @UNKNOWN64
	JSL REDIRECT_PRINT_MENU_ITEMS
@UNKNOWN64:
	INC @LOCAL08
	LDA #1
	JSL REDIRECT_SELECTION_MENU
	CMP #0
	BNEL @UNKNOWN74
	LDA DEBUG
	BEQ @UNKNOWN67
	LDA PAD_STATE
	AND #PAD::SELECT_BUTTON | PAD::START_BUTTON
	CMP #PAD::SELECT_BUTTON | PAD::START_BUTTON
	BNE @UNKNOWN66
	JSL RESUME_MUSIC
	LDA #$FFFF
	JMP @UNKNOWN113
@UNKNOWN66:
	LDA PAD_STATE
	AND #PAD::R_BUTTON
	BEQ @UNKNOWN67
	JSL UNKNOWN_E14DE8
	BRA @UNKNOWN63
@UNKNOWN67:
	LDA BATTLE_MODE
	BNE @UNKNOWN73
	LDA PAD_STATE
	AND #PAD::L_BUTTON
	BEQ @UNKNOWN72
	JSL DEBUG_SET_CHAR_LEVEL
	LDY #0
	STY @LOCAL07
	BRA @UNKNOWN71
@UNKNOWN68:
	LDA GAME_STATE + game_state::party_members,Y
	AND #$00FF
	STA @LOCAL04
	BEQ @UNKNOWN70
	CMP #4
	BGT @UNKNOWN70
	TYA
	LDY #.SIZEOF(battler)
	JSL MULT168
	CLC
	ADC #.LOWORD(BATTLERS_TABLE)
	TAX
	LDA @LOCAL04
	JSL BATTLE_INIT_PLAYER_STATS
@UNKNOWN70:
	LDY @LOCAL07
	INY
	STY @LOCAL07
@UNKNOWN71:
	CPY #6
	BCC @UNKNOWN68
	JMP @UNKNOWN63
@UNKNOWN72:
	LDA PAD_STATE
	AND #PAD::SELECT_BUTTON
	BEQ @UNKNOWN73
	JSL DEBUG_Y_BUTTON_GOODS
	JMP @UNKNOWN63
@UNKNOWN73:
	JSL RESUME_MUSIC
	LDA #0
	JMP @UNKNOWN113
@UNKNOWN74:
	SEP #PROC_FLAGS::ACCUM8
	STZ BATTLE_ITEM_USED
	REP #PROC_FLAGS::ACCUM8
	CMP #1
	BEQ @UNKNOWN81
	CMP #2
	BEQL @UNKNOWN88
	CMP #3
	BEQL @UNKNOWN90
	CMP #4
	BEQL @UNKNOWN91
	CMP #5
	BEQL @UNKNOWN95
	CMP #6
	BEQL @UNKNOWN96
	CMP #7
	BEQL @UNKNOWN97
	JMP @UNKNOWN112
@UNKNOWN81:
	LDA @LOCAL06
	BEQ @UNKNOWN82
	CMP #1
	BEQ @UNKNOWN83
	CMP #2
	BEQ @UNKNOWN84
	BRA @UNKNOWN85
@UNKNOWN82:
	LDA #BATTLE_ACTIONS::BASH
	STA @VIRTUAL02
	STA @LOCAL05
	BRA @UNKNOWN85
@UNKNOWN83:
	LDA #BATTLE_ACTIONS::SHOOT
	STA @VIRTUAL02
	STA @LOCAL05
	BRA @UNKNOWN85
@UNKNOWN84:
	LDA #BATTLE_ACTIONS::USE_NO_EFFECT
	STA @VIRTUAL02
	STA @LOCAL05
@UNKNOWN85:
	LDA @LOCAL05
	STA @VIRTUAL02
	STA BATTLE_MENU_SELECTION + battle_menu_selection::selected_action
	SEP #PROC_FLAGS::ACCUM8
	LDA #17
	STA BATTLE_MENU_SELECTION + battle_menu_selection::targetting
	REP #PROC_FLAGS::ACCUM8
	LDA @LOCAL06
	CMP #2
	BEQL @UNKNOWN112
	LDY @VIRTUAL02
	LDX #1
	LDA #0
	JSL REDIRECT_C1242E
	SEP #PROC_FLAGS::ACCUM8
	STA BATTLE_MENU_SELECTION + battle_menu_selection::selected_target
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BEQL @UNKNOWN63
	JMP @UNKNOWN112
@UNKNOWN88:
	LDA @LOCAL09
	SEP #PROC_FLAGS::ACCUM8
	STA BATTLE_MENU_SELECTION
	REP #PROC_FLAGS::ACCUM8
	LDA #.LOWORD(BATTLE_MENU_SELECTION)
	JSL REDIRECT_C1CFC6
	TAX
	BEQL @UNKNOWN63
	LDA BATTLE_MENU_SELECTION + battle_menu_selection::param1
	AND #$00FF
	TAX
	LDA @LOCAL09
	JSL GET_CHARACTER_ITEM
	SEP #PROC_FLAGS::ACCUM8
	STA BATTLE_ITEM_USED
	REP #PROC_FLAGS::ACCUM8
	LDA BATTLE_MENU_SELECTION + battle_menu_selection::selected_action
	STA @VIRTUAL02
	STA @LOCAL05
	JMP @UNKNOWN112
@UNKNOWN90:
	SEP #PROC_FLAGS::ACCUM8
	LDA #1
	STA GAME_STATE+game_state::auto_fight_enable
	JSL UNKNOWN_C20266
	.A16
	LDA #BATTLE_ACTIONS::NO_EFFECT
	STA @VIRTUAL02
	STA @LOCAL05
	JMP @UNKNOWN112
@UNKNOWN91:
	LDA @LOCAL09
	CMP #PARTY_MEMBER::JEFF
	BNE @UNKNOWN93
	LDA #BATTLE_ACTIONS::SPY
	STA @VIRTUAL02
	STA @LOCAL05
	LDA @VIRTUAL02
	STA BATTLE_MENU_SELECTION + battle_menu_selection::selected_action
	SEP #PROC_FLAGS::ACCUM8
	LDA #17
	STA BATTLE_MENU_SELECTION + battle_menu_selection::targetting
	LDY @VIRTUAL02
	LDX #1
	REP #PROC_FLAGS::ACCUM8
	LDA #0
	JSL REDIRECT_C1242E
	SEP #PROC_FLAGS::ACCUM8
	STA BATTLE_MENU_SELECTION + battle_menu_selection::selected_target
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BEQL @UNKNOWN63
	JMP @UNKNOWN112
@UNKNOWN93:
	LDA @LOCAL09
	SEP #PROC_FLAGS::ACCUM8
	STA BATTLE_MENU_SELECTION
	REP #PROC_FLAGS::ACCUM8
	LDA #.LOWORD(BATTLE_MENU_SELECTION)
	JSL REDIRECT_BATTLE_PSI_MENU
	TAX
	BEQL @UNKNOWN63
	SEP #PROC_FLAGS::ACCUM8
	STZ BATTLE_ITEM_USED
	REP #PROC_FLAGS::ACCUM8
	LDA BATTLE_MENU_SELECTION + battle_menu_selection::selected_action
	STA @VIRTUAL02
	STA @LOCAL05
	JMP @UNKNOWN112
@UNKNOWN95:
	LDA #BATTLE_ACTIONS::GUARD
	STA @VIRTUAL02
	STA @LOCAL05
	LDA @VIRTUAL02
	STA BATTLE_MENU_SELECTION + battle_menu_selection::selected_action
	SEP #PROC_FLAGS::ACCUM8
	STZ BATTLE_MENU_SELECTION + battle_menu_selection::targetting
	JMP @UNKNOWN112
@UNKNOWN96:
	SEP #PROC_FLAGS::ACCUM8
	LDA #1
	STA BATTLE_MENU_SELECTION + battle_menu_selection::targetting
	REP #PROC_FLAGS::ACCUM8
	LDA @LOCAL09
	SEP #PROC_FLAGS::ACCUM8
	STA BATTLE_MENU_SELECTION + battle_menu_selection::selected_target
	REP #PROC_FLAGS::ACCUM8
	LDA #BATTLE_ACTIONS::RUN_AWAY
	STA @VIRTUAL02
	STA @LOCAL05
	LDA @VIRTUAL02
	STA BATTLE_MENU_SELECTION + battle_menu_selection::selected_action
	JMP @UNKNOWN112
@UNKNOWN97:
	LDX #.LOWORD(BATTLE_MENU_SELECTION) + battle_menu_selection::targetting
	STX @LOCAL04
	SEP #PROC_FLAGS::ACCUM8
	LDA #1
	STA __BSS_START__,X
	REP #PROC_FLAGS::ACCUM8
	LDA #.LOWORD(BATTLE_MENU_SELECTION) + battle_menu_selection::selected_target
	STA @VIRTUAL04
	LDA @LOCAL09
	SEP #PROC_FLAGS::ACCUM8
	LDX @VIRTUAL04
	STA __BSS_START__,X
	REP #PROC_FLAGS::ACCUM8
	LDA @LOCAL09
	CMP #PARTY_MEMBER::PAULA
	BEQ @UNKNOWN99
	CMP #PARTY_MEMBER::POO
	BEQL @UNKNOWN111
	JMP @UNKNOWN112
@UNKNOWN99:
	LDA GIYGAS_PHASE
	CMP #GIYGAS_PHASES::START_PRAYING
	BEQ @UNKNOWN100
	CMP #GIYGAS_PHASES::PRAYER_1_USED
	BEQ @UNKNOWN101
	CMP #GIYGAS_PHASES::PRAYER_2_USED
	BEQ @UNKNOWN102
	CMP #GIYGAS_PHASES::PRAYER_3_USED
	BEQ @UNKNOWN103
	CMP #GIYGAS_PHASES::PRAYER_4_USED
	BEQ @UNKNOWN104
	CMP #GIYGAS_PHASES::PRAYER_5_USED
	BEQ @UNKNOWN105
	CMP #GIYGAS_PHASES::PRAYER_6_USED
	BEQ @UNKNOWN106
	CMP #GIYGAS_PHASES::PRAYER_7_USED
	BEQ @UNKNOWN107
	CMP #GIYGAS_PHASES::PRAYER_8_USED
	BEQ @UNKNOWN108
	BRA @UNKNOWN109
@UNKNOWN100:
	LDA #BATTLE_ACTIONS::FINAL_PRAYER_1
	STA @VIRTUAL02
	STA @LOCAL05
	BRA @UNKNOWN110
@UNKNOWN101:
	LDA #BATTLE_ACTIONS::FINAL_PRAYER_2
	STA @VIRTUAL02
	STA @LOCAL05
	BRA @UNKNOWN110
@UNKNOWN102:
	LDA #BATTLE_ACTIONS::FINAL_PRAYER_3
	STA @VIRTUAL02
	STA @LOCAL05
	BRA @UNKNOWN110
@UNKNOWN103:
	LDA #BATTLE_ACTIONS::FINAL_PRAYER_4
	STA @VIRTUAL02
	STA @LOCAL05
	BRA @UNKNOWN110
@UNKNOWN104:
	LDA #BATTLE_ACTIONS::FINAL_PRAYER_5
	STA @VIRTUAL02
	STA @LOCAL05
	BRA @UNKNOWN110
@UNKNOWN105:
	LDA #BATTLE_ACTIONS::FINAL_PRAYER_6
	STA @VIRTUAL02
	STA @LOCAL05
	BRA @UNKNOWN110
@UNKNOWN106:
	LDA #BATTLE_ACTIONS::FINAL_PRAYER_7
	STA @VIRTUAL02
	STA @LOCAL05
	BRA @UNKNOWN110
@UNKNOWN107:
	LDA #BATTLE_ACTIONS::FINAL_PRAYER_8
	STA @VIRTUAL02
	STA @LOCAL05
	BRA @UNKNOWN110
@UNKNOWN108:
	LDA #BATTLE_ACTIONS::FINAL_PRAYER_9
	STA @VIRTUAL02
	STA @LOCAL05
	BRA @UNKNOWN110
@UNKNOWN109:
	LDA #BATTLE_ACTIONS::PRAY
	STA @VIRTUAL02
	STA @LOCAL05
@UNKNOWN110:
	LDA @VIRTUAL02
	STA BATTLE_MENU_SELECTION + battle_menu_selection::selected_action
	BRA @UNKNOWN112
@UNKNOWN111:
	LDA #BATTLE_ACTIONS::MIRROR
	STA @VIRTUAL02
	STA @LOCAL05
	LDA @VIRTUAL02
	STA BATTLE_MENU_SELECTION + battle_menu_selection::selected_action
	SEP #PROC_FLAGS::ACCUM8
	LDA #17
	LDX @LOCAL04
	STA __BSS_START__,X
	LDY @VIRTUAL02
	LDX #1
	REP #PROC_FLAGS::ACCUM8
	LDA #0
	JSL REDIRECT_C1242E
	SEP #PROC_FLAGS::ACCUM8
	LDX @VIRTUAL04
	STA __BSS_START__,X
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BEQL @UNKNOWN63
@UNKNOWN112:
	LDX @LOCAL03
	REP #PROC_FLAGS::ACCUM8
	LDA f:BATTLE_WINDOW_SIZES,X
	AND #$00FF
	JSL REDIRECT_SET_WINDOW_FOCUS
	JSL RESUME_MUSIC
	LDA @LOCAL05
	STA @VIRTUAL02
@UNKNOWN113:
	END_C_FUNCTION
