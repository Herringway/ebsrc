
UNKNOWN_C05200:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	END_STACK_VARS
	LDA BATTLE_MODE
	BNEL @UNKNOWN9
	LDA POSSESSED_PLAYER_COUNT
	BEQ @UNKNOWN1
	LDA MINI_GHOST_ENTITY_ID
	CMP #.LOWORD(-1)
	BNE @UNKNOWN2
	JSL UNKNOWN_C07716
	BRA @UNKNOWN2
@UNKNOWN1:
	LDA MINI_GHOST_ENTITY_ID
	CMP #.LOWORD(-1)
	BEQ @UNKNOWN2
	JSL UNKNOWN_C0777A
@UNKNOWN2:
	LDA LOADED_ANIMATED_TILE_COUNT
	BEQ @UNKNOWN3
	JSL ANIMATE_TILESET
@UNKNOWN3:
	LDA MAP_PALETTE_ANIMATION_LOADED
	BEQ @UNKNOWN4
	JSL ANIMATE_PALETTE
@UNKNOWN4:
	LDA ITEM_TRANSFORMATIONS_LOADED
	BEQ @UNKNOWN5
	JSL PROCESS_ITEM_TRANSFORMATIONS
@UNKNOWN5:
	JSL UNKNOWN_C04C45
	LDA GAME_STATE+game_state::leader_x_coord
	XBA
	AND #$00FF
	STA @LOCAL00
	LDA GAME_STATE+game_state::leader_y_coord
	XBA
	AND #$00FF
	TAX
	LDA @LOCAL00
	EOR LAST_SECTOR_X
	BNE @UNKNOWN6
	TXA
	EOR LAST_SECTOR_Y
	BEQ @UNKNOWN7
@UNKNOWN6:
	LDA @LOCAL00
	STA LAST_SECTOR_X
	STX LAST_SECTOR_Y
	LDA ENABLE_AUTO_SECTOR_MUSIC_CHANGES
	BEQ @UNKNOWN7
	JSR UNKNOWN_C03C25
@UNKNOWN7:
	LDA DAD_PHONE_TIMER
	BNE @UNKNOWN8
	LDA GAME_STATE + game_state::unknownB0
	CMP #2
	BEQ @UNKNOWN8
	JSL LOAD_DAD_PHONE
@UNKNOWN8:
	STZ POSSESSED_PLAYER_COUNT
	LDA GAME_STATE+game_state::leader_direction
	STA CURRENT_LEADER_DIRECTION
	LDA GAME_STATE+game_state::current_party_members
	ASL
	STA CURRENT_LEADING_PARTY_MEMBER_ENTITY
	LDA GAME_STATE + game_state::unknown90
	BEQ @UNKNOWN9
	LDA #1
	STA PLAYER_HAS_DONE_SOMETHING_THIS_FRAME
@UNKNOWN9:
	END_C_FUNCTION
