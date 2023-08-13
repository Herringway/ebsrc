.SEGMENT "RAM1"
.INCLUDE "config.asm"
.INCLUDE "enums.asm"
.INCLUDE "hardware.asm"
.INCLUDE "structs.asm"
.INCLUDE "symbols.asm"

RAM: ;For pointers.
UNKNOWN_7E0000:
	.RES 1
UNKNOWN_7E0001:
	.RES 1
UNKNOWN_7E0002:
	.RES 1
OAM_ADDR:
	.RES 2
OAM_END_ADDR:
	.RES 2
OAM_HIGH_TABLE_ADDR:
	.RES 2
UNKNOWN_7E0009:
	.RES 1
UNKNOWN_7E000A:
	.RES 1
UNKNOWN_7E000B:
	.RES 2
INIDISP_MIRROR:
	.RES 1
OBSEL_MIRROR:
	.RES 1
UNKNOWN_7E000F:
	.RES 1
MOSAIC_MIRROR:
	.RES 1
UNKNOWN_7E0011:
	.RES 1
UNKNOWN_7E0012:
	.RES 1
UNKNOWN_7E0013:
	.RES 1
UNKNOWN_7E0014:
	.RES 1
BG12NBA_MIRROR:
	.RES 1
UNKNOWN_7E0016:
	.RES 1
UNUSED_WH2_MIRROR:
	.RES 1
UNKNOWN_7E0018:
	.RES 2
TM_MIRROR:
	.RES 1
TD_MIRROR:
	.RES 1
;unused
	.RES 1
UNKNOWN_7E001D:
	.RES 1
UNKNOWN_7E001E:
	.RES 1
HDMAEN_MIRROR:
	.RES 1
IRQ_CALLBACK:
	.RES 2
UNKNOWN_7E0022:
	.RES 1
UNKNOWN_7E0023:
	.RES 1
RAND_A:
	.RES 2
RAND_B:
	.RES 2
UNKNOWN_7E0028:
	.RES 1
UNKNOWN_7E0029:
	.RES 1
UNKNOWN_7E002A:
	.RES 1
UNKNOWN_7E002B:
	.RES 1
;the ID of the frame being/about to be displayed, multiplied by 2
NEXT_FRAME_DISPLAY_ID:
	.RES 1
UNKNOWN_7E002D:
	.RES 1
;the ID of the next frame to buffer as a byte offset - 0 for buffer 0, 2 for buffer 1
NEXT_FRAME_BUF_ID:
	.RES 1
UNKNOWN_7E002F:
	.RES 1
UNKNOWN_7E0030:
	.RES 1
BG1_X_POS:
	.RES 2
BG1_Y_POS:
	.RES 2
BG2_X_POS:
	.RES 2
BG2_Y_POS:
	.RES 2
BG3_X_POS:
	.RES 2
BG3_Y_POS:
	.RES 2
BG4_X_POS:
	.RES 2
BG4_Y_POS:
	.RES 2
BG1_X_POS_BUF:
	.RES 4
BG1_Y_POS_BUF:
	.RES 4
BG2_X_POS_BUF:
	.RES 4
BG2_Y_POS_BUF:
	.RES 4
BG3_X_POS_BUF:
	.RES 4
BG3_Y_POS_BUF:
	.RES 4
BG4_X_POS_BUF:
	.RES 4
BG4_Y_POS_BUF:
	.RES 4
UNKNOWN_7E0061:
	.RES 2
UNKNOWN_7E0063:
	.RES 2
PAD_STATE:
	.RES 2 * 2
PAD_HELD:
	.RES 2 * 2
PAD_PRESS:
	.RES 2 * 2
UNKNOWN_7E0071:
	.RES 2 * 2
UNKNOWN_7E0075:
	.RES 2
UNKNOWN_7E0077:
	.RES 2 * 2
UNKNOWN_7E007B:
	.RES 1
UNKNOWN_7E007C:
	.RES 1
UNKNOWN_7E007D:
	.RES 2
UNKNOWN_7E007F:
	.RES 1
UNKNOWN_7E0080:
	.RES 1
UNKNOWN_7E0081:
	.RES 2
UNKNOWN_7E0083:
	.RES 2
UNKNOWN_7E0085:
	.RES 2
UNKNOWN_7E0087:
	.RES 2
UNKNOWN_7E0089:
	.RES 2
UNKNOWN_7E008B:
	.RES 2
UNKNOWN_7E008D:
	.RES 2
UNKNOWN_7E008F:
	.RES 2
UNKNOWN_7E0091:
	.RES 1
DMA_COPY_SIZE:
	.RES 2
DMA_COPY_RAM_SRC:
	.RES 3
DMA_COPY_VRAM_DEST:
	.RES 2
UNKNOWN_7E0099:
	.RES 2
UNKNOWN_7E009B:
	.RES 2
UNKNOWN_7E009D:
	.RES 2
UNKNOWN_7E009F:
	.RES 2
CURRENT_HEAP_ADDRESS:
	.RES 2
BASE_HEAP_ADDRESS:
	.RES 2
UNKNOWN_7E00A5:
	.RES 1
UNKNOWN_7E00A6:
	.RES 1
TIMER:
	.RES 4
UNKNOWN_7E00AB:
	.RES 1
UNKNOWN_7E00AC:
	.RES 1
UNKNOWN_7E00AD:
	.RES 1
UNKNOWN_7E00AE:
	.RES 2
UNKNOWN_7E00B0:
	.RES 1
UNKNOWN_7E00B1:
	.RES 1
UNKNOWN_7E00B2:
	.RES 2
TEMP_DIVIDEND:
	.RES 1
UNKNOWN_7E00B5:
	.RES 1
UNKNOWN_7E00B6:
	.RES 1
UNKNOWN_7E00B7:
	.RES 1
UNKNOWN_7E00B8:
	.RES 1
UNKNOWN_7E00B9:
	.RES 1
UNKNOWN_7E00BA:
	.RES 2
UNKNOWN_7E00BC:
	.RES 2
UNKNOWN_7E00BE:
	.RES 2
UNKNOWN_7E00C0:
	.RES 2
;unused
	.RES 2
UNKNOWN_7E00C4:
	.RES 2
SPC_DATA_PTR:
	.RES 2
UNKNOWN_7E00C8:
	.RES 2
SOUND_EFFECT_QUEUE_END_INDEX:
	.RES 1
SOUND_EFFECT_QUEUE_INDEX:
	.RES 1
UNKNOWN_7E00CC:
	.RES 2
UNKNOWN_7E00CE:
	.RES 1
UNKNOWN_7E00CF:
	.RES 2
UNKNOWN_7E00D1:
	.RES 1
UNKNOWN_7E00D2:
	.RES 1
UNKNOWN_7E00D3:
	.RES 2
;unused
	.RES 299
CUR_TEXT_PAL:
	.RES TEXT_PALETTES_SIZE
CUR_MAP_PAL:
	.RES MAP_PALETTES_SIZE
CUR_SPRITE_PALS:
	.RES NPC_PALETTES_SIZE
CUR_PARTY_PAL:
	.RES PARTY_PALETTES_SIZE
UNKNOWN_7E0400:
	.RES 8 * 32
; OAM data for every odd frame
OAM1:
	.RES .SIZEOF(oam_entry) * 128
OAM1_HIGH_TABLE:
	.RES 32
; unused
	.RES 224
; Same as OAM1, but used for every other frame
OAM2:
	.RES .SIZEOF(oam_entry) * 128
OAM2_HIGH_TABLE:
	.RES 32
JMP_BUF1:
	.RES 10
JMP_BUF2:
	.RES 10
UNKNOWN_7E0A34:
	.RES 2
UNKNOWN_7E0A36:
	.RES 2
NEW_ENTITY_VAR0:
	.RES 2
NEW_ENTITY_VAR1:
	.RES 2
NEW_ENTITY_VAR2:
	.RES 2
NEW_ENTITY_VAR3:
	.RES 2
NEW_ENTITY_VAR4:
	.RES 2
NEW_ENTITY_VAR5:
	.RES 2
NEW_ENTITY_VAR6:
	.RES 2
NEW_ENTITY_VAR7:
	.RES 2
NEW_ENTITY_POS_Z:
	.RES 2
NEW_ENTITY_PRIORITY:
	.RES 2
ENTITY_ALLOCATION_MIN_SLOT:
	.RES 2
ENTITY_ALLOCATION_MAX_SLOT:
	.RES 2
FIRST_ENTITY:
	.RES 2
UNKNOWN_7E0A52:
	.RES 2
UNKNOWN_7E0A54:
	.RES 2
UNKNOWN_7E0A56:
	.RES 2
UNKNOWN_7E0A58:
	.RES 2
MOVEMENT_42_LOADED_PTR:
	.RES 4
UNKNOWN_7E0A5E:
	.RES 2
UNKNOWN_7E0A60:
	.RES 2
ENTITY_SCRIPT_TABLE:
	.RES MAX_ENTITIES*2
ENTITY_NEXT_ENTITY_TABLE:
	.RES MAX_ENTITIES*2
ENTITY_SCRIPT_INDEX_TABLE:
	.RES MAX_ENTITIES*2
ENTITY_SCREEN_X_TABLE:
	.RES MAX_ENTITIES*2
ENTITY_SCREEN_Y_TABLE:
	.RES MAX_ENTITIES*2
ENTITY_ABS_X_TABLE:
	.RES MAX_ENTITIES*2
ENTITY_ABS_Y_TABLE:
	.RES MAX_ENTITIES*2
ENTITY_ABS_Z_TABLE:
	.RES MAX_ENTITIES*2
ENTITY_ABS_X_FRACTION_TABLE:
	.RES MAX_ENTITIES*2
ENTITY_ABS_Y_FRACTION_TABLE:
	.RES MAX_ENTITIES*2
ENTITY_ABS_Z_FRACTION_TABLE:
	.RES MAX_ENTITIES*2
ENTITY_DELTA_X_TABLE:
	.RES MAX_ENTITIES*2
ENTITY_DELTA_Y_TABLE:
	.RES MAX_ENTITIES*2
ENTITY_DELTA_Z_TABLE:
	.RES MAX_ENTITIES*2
ENTITY_DELTA_X_FRACTION_TABLE:
	.RES MAX_ENTITIES*2
ENTITY_DELTA_Y_FRACTION_TABLE:
	.RES MAX_ENTITIES*2
ENTITY_DELTA_Z_FRACTION_TABLE:
	.RES MAX_ENTITIES*2
ENTITY_SCRIPT_VAR0_TABLE:
	.RES MAX_ENTITIES*2
ENTITY_SCRIPT_VAR1_TABLE:
	.RES MAX_ENTITIES*2
ENTITY_SCRIPT_VAR2_TABLE:
	.RES MAX_ENTITIES*2
ENTITY_SCRIPT_VAR3_TABLE:
	.RES MAX_ENTITIES*2
ENTITY_SCRIPT_VAR4_TABLE:
	.RES MAX_ENTITIES*2
ENTITY_SCRIPT_VAR5_TABLE:
	.RES MAX_ENTITIES*2
ENTITY_SCRIPT_VAR6_TABLE:
	.RES MAX_ENTITIES*2
ENTITY_SCRIPT_VAR7_TABLE:
	.RES MAX_ENTITIES*2
ENTITY_DRAW_PRIORITY:
	.RES MAX_ENTITIES*2
ENTITY_TICK_CALLBACK_LOW:
	.RES MAX_ENTITIES*2
ENTITY_TICK_CALLBACK_HIGH:
	.RES MAX_ENTITIES*2
ENTITY_ANIMATION_FRAME:
	.RES MAX_ENTITIES*2
ENTITY_SPRITEMAP_POINTER_LOW:
	.RES MAX_ENTITIES*2
ENTITY_SPRITEMAP_POINTER_HIGH:
	.RES MAX_ENTITIES*2
ENTITY_SCREEN_POSITION_CALLBACK:
	.RES MAX_ENTITIES*2
ENTITY_DRAW_CALLBACK:
	.RES MAX_ENTITIES*2
ENTITY_MOVE_CALLBACK:
	.RES MAX_ENTITIES*2
UNKNOWN_7E125A:
	.RES MAX_SCRIPTS*2
UNKNOWN_7E12E6:
	.RES MAX_SCRIPTS*2
ENTITY_SLEEP_FRAMES:
	.RES MAX_SCRIPTS*2
ENTITY_PROGRAM_COUNTER:
	.RES MAX_SCRIPTS*2
ENTITY_PROGRAM_COUNTER_BANK:
	.RES MAX_SCRIPTS*2
ENTITY_TEMPVARS:
	.RES MAX_SCRIPTS*2
UNKNOWN_7E15A2:
	.RES MAX_SCRIPTS*16
UNKNOWN_7E1A02:
	.RES 8
UNKNOWN_7E1A0A:
	.RES 8
UNKNOWN_7E1A12:
	.RES 8
UNKNOWN_7E1A1A:
	.RES 8
UNKNOWN_7E1A22:
	.RES 8
UNKNOWN_7E1A2A:
	.RES 8
UNKNOWN_7E1A32:
	.RES 8
UNKNOWN_7E1A3A:
	.RES 8
CURRENT_ENTITY_SLOT:
	.RES 2
CURRENT_ENTITY_OFFSET:
	.RES 2
CURRENT_SCRIPT_SLOT:
	.RES 2
CURRENT_SCRIPT_OFFSET:
	.RES 2
UNKNOWN_7E1A4A:
	.RES MAX_ENTITIES * 2
UNKNOWN_7E1A86:
	.RES MAX_ENTITIES * 2
SOUND_EFFECT_QUEUE:
	.RES 8
UNKNOWN_7E1ACA:
	.RES 1
UNKNOWN_7E1ACB:
	.RES 1
UNKNOWN_7E1ACC:
	.RES 2
UNKNOWN_7E1ACE:
	.RES 2
;unused
	.RES 2
UNKNOWN_7E1AD2:
	.RES 2
UNKNOWN_7E1AD4:
	.RES 2
UNKNOWN_7E1AD6:
	.RES 64 * 2
UNKNOWN_7E1B56:
	.RES 24
UNKNOWN_7E1B6E:
	.RES 24
UNKNOWN_7E1B86:
	.RES 24
UNKNOWN_7E1B9E:
	.RES 2
UNKNOWN_7E1BA0:
	.RES 1
UNKNOWN_7E1BA1:
	.RES 4
UNKNOWN_7E1BA5:
	.RES 1
UNKNOWN_7E1BA6:
	.RES 1
UNKNOWN_7E1BA7:
	.RES 1
UNKNOWN_7E1BA8:
	.RES 1
UNKNOWN_7E1BA9:
	.RES 1
UNKNOWN_7E1BAA:
	.RES 2 * 16
UNKNOWN_7E1BCA:
	.RES 2
UNKNOWN_7E1BCC:
	.RES 2
UNKNOWN_7E1BCE:
	.RES 2
UNKNOWN_7E1BD0:
	.RES 2
UNKNOWN_7E1BD2:
	.RES 2
UNKNOWN_7E1BD4:
	.RES 2
;unused
	.RES 42
STACK_START:
	.RES 768
STACK_END:
STACK_65816_START:
	.RES 255
STACK_65816_END:
	.RES 1
HEAP:
	.RES HEAPSIZE
HEAP_ALT:
	.RES HEAPSIZE
UNKNOWN_7E2400:
	.RES 2
UNKNOWN_7E2402:
	.RES 2
UNKNOWN_7E2404:
	.RES 2 * 32
UNKNOWN_7E2444:
	.RES 2 * 32
UNKNOWN_7E2484:
	.RES 2 * 32
UNKNOWN_7E24C4:
	.RES 2 * 32
UNKNOWN_7E2504:
	.RES 2
UNKNOWN_7E2506:
	.RES 2 * 32
UNKNOWN_7E2546:
	.RES 2 * 32
UNKNOWN_7E2586:
	.RES 2 * 32
UNKNOWN_7E25C6:
	.RES 2 * 32
UNKNOWN_7E2606:
	.RES 2
UNKNOWN_7E2608:
	.RES 2 * 32
UNKNOWN_7E2648:
	.RES 2 * 32
UNKNOWN_7E2688:
	.RES 2 * 32
UNKNOWN_7E26C8:
	.RES 2 * 32
UNKNOWN_7E2708:
	.RES 2
UNKNOWN_7E270A:
	.RES 2 * 32
UNKNOWN_7E274A:
	.RES 2 * 32
UNKNOWN_7E278A:
	.RES 2 * 32
UNKNOWN_7E27CA:
	.RES 2 * 32
UNKNOWN_7E280A:
	.RES 2
ENTITY_DRAW_SORTING:
	.RES MAX_ENTITIES*2
UNKNOWN_7E2848:
	.RES 2
UNKNOWN_7E284A:
	.RES 2
ENTITY_UNKNOWN_284C:
	.RES MAX_ENTITIES*2
UNKNOWN_7E2888:
	.RES 2
UNKNOWN_7E288A:
	.RES 2
UNKNOWN_7E288C:
	.RES 2
UNKNOWN_7E288E:
	.RES 2
UNKNOWN_7E2890:
	.RES 2
UNKNOWN_7E2892:
	.RES 2
UNKNOWN_7E2894:
	.RES 2
UNKNOWN_7E2896:
	.RES 2
UNKNOWN_7E2898:
	.RES 2
FOOTSTEP_SOUND_ID:
	.RES 2
FOOTSTEP_SOUND_ID_OVERRIDE:
	.RES 2
ENTITY_COLLIDED_OBJECTS:
	.RES MAX_ENTITIES*2
ENTITY_OBSTACLE_FLAGS:
	.RES MAX_ENTITIES*2
ENTITY_UNKNOWN_2916:
	.RES MAX_ENTITIES*2
ENTITY_UNKNOWN_2952:
	.RES MAX_ENTITIES*2
ENTITY_VRAM_ADDRESS:
	.RES MAX_ENTITIES*2
ENTITY_GRAPHICS_PTR_LOW:
	.RES MAX_ENTITIES*2
ENTITY_GRAPHICS_PTR_HIGH:
	.RES MAX_ENTITIES*2
UNKNOWN_30X2_TABLE_31:
	.RES MAX_ENTITIES*2
ENTITY_BYTE_WIDTHS:
	.RES MAX_ENTITIES*2
ENTITY_TILE_HEIGHTS:
	.RES MAX_ENTITIES*2
ENTITY_DIRECTIONS:
	.RES MAX_ENTITIES*2
UNKNOWN_30X2_TABLE_35:
	.RES MAX_ENTITIES*2
ENTITY_SIZES:
	.RES MAX_ENTITIES*2
ENTITY_SURFACE_FLAGS:
	.RES MAX_ENTITIES*2
UNKNOWN_30X2_TABLE_38:
	.RES MAX_ENTITIES*2
UNKNOWN_30X2_TABLE_40:
	.RES MAX_ENTITIES*2
UNKNOWN_30X2_TABLE_41:
	.RES MAX_ENTITIES*2
ENTITY_TPT_ENTRIES:
	.RES MAX_ENTITIES*2
ENTITY_TPT_ENTRY_SPRITES:
	.RES MAX_ENTITIES*2
ENTITY_ENEMY_ID:
	.RES MAX_ENTITIES*2
UNKNOWN_30X2_TABLE_43:
	.RES MAX_ENTITIES*2
UNKNOWN_30X2_TABLE_44:
	.RES MAX_ENTITIES*2
UNKNOWN_30X2_TABLE_45:
	.RES MAX_ENTITIES*2
UNKNOWN_30X2_TABLE_46:
	.RES MAX_ENTITIES*2
UNKNOWN_7E2E3E:
	.RES MAX_ENTITIES*2
UNKNOWN_7E2E7A:
	.RES MAX_ENTITIES*2
ENTITY_MUSHROOMIZED_OVERLAY_PTRS:
	.RES MAX_ENTITIES*2
UNKNOWN_7E2EF2:
	.RES MAX_ENTITIES*2
UNKNOWN_7E2F2E:
	.RES MAX_ENTITIES*2
ENTITY_SWEATING_OVERLAY_PTRS:
	.RES MAX_ENTITIES*2
UNKNOWN_7E2FA6:
	.RES MAX_ENTITIES*2
UNKNOWN_7E2FE2:
	.RES MAX_ENTITIES*2
ENTITY_RIPPLE_OVERLAY_PTRS:
	.RES MAX_ENTITIES*2
UNKNOWN_7E305A:
	.RES MAX_ENTITIES*2
UNKNOWN_7E3096:
	.RES MAX_ENTITIES*2
ENTITY_BIG_RIPPLE_OVERLAY_PTRS:
	.RES MAX_ENTITIES*2
UNKNOWN_7E310E:
	.RES MAX_ENTITIES*2
UNKNOWN_7E314A:
	.RES MAX_ENTITIES*2
UNKNOWN_7E3186:
	.RES MAX_ENTITIES*2
; yes, 6 completely unused entity tables
	.RES MAX_ENTITIES*2
	.RES MAX_ENTITIES*2
	.RES MAX_ENTITIES*2
	.RES MAX_ENTITIES*2
	.RES MAX_ENTITIES*2
	.RES MAX_ENTITIES*2
UNKNOWN_7E332A:
	.RES MAX_ENTITIES*2
UNKNOWN_7E3366:
	.RES MAX_ENTITIES*2
UNKNOWN_7E33A2:
	.RES MAX_ENTITIES*2
UNKNOWN_7E33DE:
	.RES MAX_ENTITIES*2
UNKNOWN_7E341A:
	.RES MAX_ENTITIES*2
UNKNOWN_7E3456:
	.RES MAX_ENTITIES*2
VWF_BUFFER:
	.RES 32 * 52
UNKNOWN_7E3B12:
	.RES 8*3
;unused
	.RES 234
UNKNOWN_7E3C14:
	.RES 2
UNKNOWN_7E3C16:
	.RES 2
UNKNOWN_7E3C18:
	.RES 2
UNKNOWN_7E3C1A:
	.RES 2
UNKNOWN_7E3C1C:
	.RES 2
UNKNOWN_7E3C1E:
	.RES 2
UNKNOWN_7E3C20:
	.RES 2
UNKNOWN_7E3C22:
	.RES 2
UNKNOWN_7E3C24:
	.RES 2
UNKNOWN_7E3C26:
	.RES 2
UNKNOWN_7E3C28:
	.RES 2
UNKNOWN_7E3C2A:
	.RES 2
UNKNOWN_7E3C2C:
	.RES 2
UNKNOWN_7E3C2E:
	.RES 2
UNKNOWN_7E3C30:
	.RES 2
UNKNOWN_7E3C32:
	.RES 2
;unused
	.RES 8
UNKNOWN_7E3C3C:
	.RES 2
;unused
	.RES 8
UNKNOWN_7E3C46:
	.RES $C8
UNKNOWN_7E3D0E:
	.RES $F8
UNKNOWN_7E3E06:
	.RES $C8
UNKNOWN_7E3ECE:
	.RES $F8
UNKNOWN_7E3FC6:
	.RES 3 * 3
;unused
	.RES 1
UNKNOWN_7E3FD0:
	.RES 924
DEBUG:
	.RES 2
UNKNOWN_7E436E:
	.RES 2
UNKNOWN_7E4370:
	.RES 2
UNKNOWN_7E4372:
	.RES 2
UNKNOWN_7E4374:
	.RES 2
UNKNOWN_7E4376:
	.RES 2
;unused
	.RES 4
UNKNOWN_7E437C:
	.RES 2
UNKNOWN_7E437E:
	.RES 2
UNKNOWN_7E4380:
	.RES 2
UNKNOWN_7E4382:
	.RES 2
UNKNOWN_7E4384:
	.RES 2
UNKNOWN_7E4386:
	.RES 2
UNKNOWN_7E4388:
	.RES 2
UNKNOWN_7E438A:
	.RES 2
UNKNOWN_7E438C:
	.RES 2
CURRENT_SECTOR_ATTRIBUTES:
	.RES 2
UNKNOWN_7E4390:
	.RES 16
UNKNOWN_7E43A0:
	.RES 16
UNKNOWN_7E43B0:
	.RES 16
UNKNOWN_7E43C0:
	.RES 16
UNKNOWN_7E43D0:
	.RES 2
UNKNOWN_7E43D2:
	.RES 2
UNKNOWN_7E43D4:
	.RES 2
UNKNOWN_7E43D6:
	.RES 2
UNKNOWN_7E43D8:
	.RES 2
UNKNOWN_7E43DA:
	.RES 2
OVERWORLD_TILESET_ANIM:
	.RES .SIZEOF(overworld_tileset_anim) * 8
OVERWORLD_PALETTE_ANIM:
	.RES .SIZEOF(overworld_palette_anim)
LOADED_ANIMATED_TILE_COUNT:
	.RES 2
UNKNOWN_7E4474:
	.RES 2
UNKNOWN_7E4476:
	.RES 2 * 16 * 16
UNKNOWN_7E4676:
	.RES 2
;unused
	.RES 2
;an ID for the UNKNOWN_C42F8C table
UNKNOWN_7E467A:
	.RES 2
UNKNOWN_7E467C:
	.RES 2
SPRITE_TABLE_7E467E:
	.RES .SIZEOF(spritemap) * 179
UNUSED_7E49FD:
	.RES 3
UNKNOWN_7E4A00:
	.RES 88
UNKNOWN_7E4A58:
	.RES 2
UNKNOWN_7E4A5A:
	.RES 2
OVERWORLD_ENEMY_COUNT:
	.RES 2
UNKNOWN_7E4A5E:
	.RES 2
MAGIC_BUTTERFLY:
	.RES 2
UNKNOWN_7E4A62:
	.RES 2
UNKNOWN_7E4A64:
	.RES 2
SHOW_NPC_FLAG:
	.RES 2
UNKNOWN_7E4A68:
	.RES 2
UNKNOWN_7E4A6A:
	.RES 2
UNKNOWN_7E4A6C:
	.RES 2
UNKNOWN_7E4A6E:
	.RES 2
UNKNOWN_7E4A70:
	.RES 2
UNKNOWN_7E4A72:
	.RES 2
UNKNOWN_7E4A74:
	.RES 2
UNKNOWN_7E4A76:
	.RES 4
UNKNOWN_7E4A7A:
	.RES 2
UNKNOWN_7E4A7C:
	.RES 2 * 4
UNKNOWN_7E4A84:
	.RES 2 * 4
CURRENT_BATTLE_GROUP:
	.RES 2
UNKNOWN_7E4A8E:
	.RES 2
UNKNOWN_7E4A90:
	.RES 2
UNKNOWN_7E4A92:
	.RES 2
UNKNOWN_7E4A94:
	.RES 2
UNKNOWN_7E4A96:
	.RES 20 * 10 * 4
TOUCHED_ENEMY:
	.RES 2
UNKNOWN_7E4DB8:
	.RES 2
BATTLE_SWIRL_FLAG:
	.RES 2
BATTLE_INITIATIVE:
	.RES 2
UNKNOWN_7E4DBE:
	.RES 2
UNKNOWN_7E4DC0:
	.RES 2
BATTLE_DEBUG:
	.RES 2
UNKNOWN_7E4DC4:
	.RES 2
UNKNOWN_7E4DC6:
	.RES 2
CHOSEN_FOUR_PTRS:
	.RES 6 * 2
UNKNOWN_7E4DD4:
	.RES 2
HORIZONTAL_MOVEMENT_SPEEDS:
	.RES .SIZEOF(movement_speeds) * 14
VERTICAL_MOVEMENT_SPEEDS:
	.RES .SIZEOF(movement_speeds) * 14
PLAYER_POSITION_BUFFER:
	.RES .SIZEOF(player_position_buffer_entry) * 256
MISC_DEBUG_FLAGS:
	.RES 2
UNKNOWN_7E5D58:
	.RES 2
UNKNOWN_7E5D5A:
	.RES 2
UNKNOWN_7E5D5C:
	.RES 2
UNKNOWN_7E5D5E:
	.RES 2
BATTLE_SWIRL_COUNTDOWN:
	.RES 2
CURRENT_TPT_ENTRY:
	.RES 2
UNKNOWN_7E5D64:
	.RES 2
UNKNOWN_7E5D66:
	.RES 12
UNKNOWN_7E5D72:
	.RES 2
INPUT_DISABLE_FRAME_COUNTER:
	.RES 2
UNKNOWN_7E5D76:
	.RES 2
UNKNOWN_7E5D78:
	.RES 2
UNKNOWN_7E5D7A:
	.RES 2
UNKNOWN_7E5D7C:
	.RES 2
UNKNOWN_7E5D7E:
	.RES 2
;unused
	.RES 12
UNKNOWN_7E5D8C:
	.RES 2 * 6
OVERWORLD_STATUS_SUPPRESSION:
	.RES 2
UNKNOWN_7E5D9A:
	.RES 2
MUSHROOMIZATION_TIMER: ;Time left until next direction swap in frames
	.RES 2
MUSHROOMIZATION_MODIFIER: ;Which set of swapped directions to use
	.RES 2
MUSHROOMIZED_WALKING_FLAG: ;Whether or not to use mushroomized movement logic
	.RES 2
UNKNOWN_7E5DA2:
	.RES 2
UNKNOWN_7E5DA4:
	.RES 2
UNKNOWN_7E5DA6:
	.RES 2
UNKNOWN_7E5DA8:
	.RES 2
UNKNOWN_7E5DAA:
	.RES 2
UNKNOWN_7E5DAC:
	.RES 2
UNKNOWN_7E5DAE:
	.RES 2
;unused
	.RES 4
UNKNOWN_7E5DB4:
	.RES 2
UNKNOWN_7E5DB6:
	.RES 2
UNKNOWN_7E5DB8:
	.RES 2
UNKNOWN_7E5DBA:
	.RES 2
UNKNOWN_7E5DBC:
	.RES 2
UNKNOWN_7E5DBE:
	.RES 2
CURRENT_QUEUED_INTERACTION_TYPE:
	.RES 2
UNKNOWN_7E5DC2:
	.RES 2
UNKNOWN_7E5DC4:
	.RES 2
UNKNOWN_7E5DC6:
	.RES 2
;unused
	.RES 2
UNKNOWN_7E5DCA:
	.RES 2
UNKNOWN_7E5DCC:
	.RES 2
UNKNOWN_7E5DCE:
	.RES 2
UNKNOWN_7E5DD0:
	.RES 2
UNKNOWN_7E5DD2:
	.RES 2
UNKNOWN_7E5DD4:
	.RES 2
UNKNOWN_7E5DD6:
	.RES 2
UNKNOWN_7E5DD8:
	.RES 2
UNKNOWN_7E5DDA:
	.RES 2
UNKNOWN_7E5DDC:
	.RES 2
UNKNOWN_7E5DDE:
	.RES 4
;unused
	.RES 8
QUEUED_INTERACTIONS:
	.RES .SIZEOF(queued_interaction) * 4
CURRENT_QUEUED_INTERACTION:
	.RES 2
NEXT_QUEUED_INTERACTION:
	.RES 2
UNKNOWN_7E5E06:
	.RES 4*12
; An index for the preceding table?
UNKNOWN_7E5E36:
	.RES 2
UNKNOWN_7E5E38:
	.RES 4
ACTIVE_HOTSPOTS:
	.RES .SIZEOF(active_hotspot) * 2
UNKNOWN_7E5E58:
	.RES 19 ;something's not right here
UNKNOWN_7E5E6C:
	.RES 1
UNKNOWN_7E5E6D:
	.RES 1
UNKNOWN_7E5E6E:
	.RES 2
UNKNOWN_7E5E70:
	.RES 1
UNKNOWN_7E5E71:
	.RES 1
UNKNOWN_7E5E72:
	.RES 1
UNKNOWN_7E5E73:
	.RES 1
UNKNOWN_7E5E74:
	.RES 1
UNKNOWN_7E5E75:
	.RES 1
UNKNOWN_7E5E76:
	.RES 1
UNKNOWN_7E5E77:
	.RES 1
UNKNOWN_7E5E78:
	.RES 1
UNKNOWN_7E5E7A:
	.RES 2
UNKNOWN_7E5E7C:
	.RES 2
UNKNOWN_7E5E7E:
	.RES 8 * $3F0
BG2_BUFFER:
	.RES $800
DEFAULT_WINDOW:
	.RES .SIZEOF(window_stats)
WINDOW_STATS_TABLE:
	.RES .SIZEOF(window_stats) * 8
WINDOW_HEAD:
	.RES 2
WINDOW_TAIL:
	.RES 2
WINDOW_EXISTENCE_TABLE:
	.RES 53 * 2
UNKNOWN_7E894E:
	.RES 5 * 2
CURRENT_FOCUS_WINDOW:
	.RES 2
UNKNOWN_7E895A:
	.RES 12
HPPP_WINDOW_DIGIT_BUFFER:
	.RES 3
HPPP_WINDOW_BUFFER:
	.RES .SIZEOF(hp_pp_window_buffer) * 4
UNKNOWN_7E89C9:
	.RES 1
BATTLE_MENU_CURRENT_CHARACTER_ID:
	.RES 2
UNKNOWN_7E89CC:
	.RES 2
UNKNOWN_7E89CE:
	.RES 2
UNKNOWN_7E89D0:
	.RES 2
UNKNOWN_7E89D2:
	.RES 2
MENU_OPTIONS:
	.RES NUM_MENU_OPTIONS*.SIZEOF(menu_option)
UNKNOWN_7E9622:
	.RES 1
UNKNOWN_7E9623:
	.RES 1
UNKNOWN_7E9624:
	.RES 1
SELECTED_TEXT_SPEED:
	.RES 2
UNKNOWN_7E9627:
	.RES 4
;unused
	.RES 6
; Text pointers?
UNKNOWN_7E9631:
	.RES 4*4
UNKNOWN_7E9641:
	.RES 2
BATTLE_MODE_FLAG:
	.RES 2
INPUT_LOCK_FLAG:
	.RES 2
UNKNOWN_7E9647:
	.RES 2
UNKNOWN_7E9649:
	.RES 2
UNKNOWN_7E964B:
	.RES 2
BLINKING_TRIANGLE_FLAG:
	.RES 2
TEXT_SOUND_MODE:
	.RES 2
UNKNOWN_7E9651:
	.RES 1
UNKNOWN_7E9652:
	.RES 6
UNKNOWN_7E9658:
	.RES 2
UNKNOWN_7E965A:
	.RES 2
UNKNOWN_7E965C:
	.RES 2
UNKNOWN_7E9686:
	.RES 2
UNKNOWN_7E9660:
	.RES 2
UNKNOWN_7E9662:
	.RES 2
UNKNOWN_7E968C:
	.RES 1
UNKNOWN_7E968D:
	.RES 4
UNKNOWN_7E9691:
	.RES 4
UNKNOWN_7E9695:
	.RES 1
UNKNOWN_7E9696:
	.RES 1
UNKNOWN_7E9697:
	.RES 1
UNKNOWN_7E9698:
	.RES 2
UNKNOWN_7E969A:
	.RES 2*4
UNKNOWN_7E96A2:
	.RES 2*4
DISPLAY_TEXT_STATES:
	.RES .SIZEOF(display_text_state) * 10
UNKNOWN_7E97B8:
	.RES 2
CC_ARGUMENT_STORAGE:
	.RES 16
CC_ARGUMENT_GATHERING_LOOP_COUNTER:
	.RES 2
WRAM_SCRIPT_WORK_MEMORY:
	.RES 4
WRAM_SCRIPT_ARG_MEMORY:
	.RES 4
WRAM_SCRIPT_SEC_MEMORY:
	.RES 1
UNKNOWN_7E97D5:
	.RES 2
UNKNOWN_7E97D7:
	.RES 30
GAME_STATE:
	.RES .SIZEOF(game_state)
CHAR_STRUCT:
	.RES .SIZEOF(char_struct) * (TOTAL_PARTY_COUNT)
EVENT_FLAG:
	.RES (EVENT_FLAG_COUNT/8)
CURRENT_INTERACTING_EVENT_FLAG:
	.RES 2
UNKNOWN_7E9C8A:
	.RES .SIZEOF(window_text_attributes_copy)
UNKNOWN_7E9C9F:
	.RES 1 * 49
UNKNOWN_7E9CD0:
	.RES 1
UNKNOWN_7E9CD1:
	.RES 1
UNKNOWN_7E9CD2:
	.RES 1
UNKNOWN_7E9CD3:
	.RES 1
UNKNOWN_7E9CD4:
	.RES 2
UNKNOWN_7E9CD6:
	.RES 1
UNKNOWN_7E9CD7:
	.RES 30
UNKNOWN_7E9CF5:
	.RES 28
UNKNOWN_7E9D11:
	.RES 1
UNKNOWN_7E9D12:
	.RES 2
UNKNOWN_7E9D14:
	.RES 2
UNKNOWN_7E9D19:
	.RES 2
UNKNOWN_7E9D1B:
	.RES 2
UNKNOWN_7E9D1D:
	.RES 2
RESPAWN_X:
	.RES 2
RESPAWN_Y:
	.RES 2
UNKNOWN_7E9D23:
	.RES 32 * 8
UNKNOWN_7E9E23:
	.RES 2
UNKNOWN_7E9E25:
	.RES 2
UNKNOWN_7E9E27:
	.RES 2
UNKNOWN_7E9E29:
	.RES 2
DMA_TRANSFER_FLAG:
	.RES 2
ENTITY_PREPARED_X_COORDINATE:
	.RES 2
ENTITY_PREPARED_Y_COORDINATE:
	.RES 2
ENTITY_PREPARED_DIRECTION:
	.RES 2
UNKNOWN_7E9E33:
	.RES 2
UNKNOWN_7E9E35:
	.RES 2
UNKNOWN_7E9E37:
	.RES 1
UNKNOWN_7E9E38:
	.RES 1
UNKNOWN_7E9E39:
	.RES 1
UNKNOWN_7E9E3A:
	.RES 2
OVERWORLD_TASKS:
	.RES 6 * 4
DAD_PHONE_TIMER:
	.RES 2
UNKNOWN_7E9E56:
	.RES 2
UNKNOWN_7E9E58:
	.RES 40*3
;unused
	.RES 72
UNKNOWN_7E9F18:
	.RES 2
LOADED_TIMED_ITEM_TRANSFORMATIONS:
	.RES .SIZEOF(loaded_timed_item_transformation) * 4
UNKNOWN_7E9F2A:
	.RES 2
UNKNOWN_7E9F2C:
	.RES 1
UNKNOWN_7E9F2D:
	.RES 2
UNKNOWN_7E9F2F:
	.RES 2
UNKNOWN_7E9F31:
	.RES 2
UNKNOWN_7E9F33:
	.RES 2
UNKNOWN_7E9F35:
	.RES 2
;unused
	.RES 2
UNKNOWN_7E9F39:
	.RES 2
UNKNOWN_7E9F3B:
	.RES 2
UNKNOWN_7E9F3D:
	.RES 2
TELEPORT_DESTINATION:
	.RES 2
TELEPORT_STYLE:
	.RES 2
UNKNOWN_7E9F43:
	.RES 2
UNKNOWN_7E9F45:
	.RES 2
UNKNOWN_7E9F47:
	.RES 2
UNKNOWN_7E9F49:
	.RES 4
UNKNOWN_7E9F4D:
	.RES 4
UNKNOWN_7E9F51:
	.RES 4
UNKNOWN_7E9F55:
	.RES 4
UNKNOWN_7E9F59:
	.RES 2
UNKNOWN_7E9F5B:
	.RES 2
UNKNOWN_7E9F5D:
	.RES 2
UNKNOWN_7E9F5F:
	.RES 2
UNKNOWN_7E9F61:
	.RES 2
UNKNOWN_7E9F63:
	.RES 2
UNKNOWN_7E9F65:
	.RES 2
UNKNOWN_7E9F67:
	.RES 2
UNKNOWN_7E9F69:
	.RES 2
UNKNOWN_7E9F6B:
	.RES 2
UNKNOWN_7E9F6D:
	.RES 2
UNKNOWN_7E9F6F:
	.RES 2
PAJAMA_FLAG:
	.RES 2
UNKNOWN_7E9F73:
	.RES 2
UNKNOWN_7E9F75:
	.RES 2
UNKNOWN_7E9F77:
	.RES 2
UNKNOWN_7E9F79:
	.RES 1
UNKNOWN_7E9F7A:
	.RES 2
UNKNOWN_7E9F7C:
	.RES 2
UNKNOWN_7E9F7E:
	.RES 2
UNKNOWN_7E9F80:
	.RES 2
UNKNOWN_7E9F82:
	.RES 2
UNKNOWN_7E9F84:
	.RES 2
UNKNOWN_7E9F86:
	.RES 2
UNKNOWN_7E9F88:
	.RES 2
ENEMIES_IN_BATTLE:
	.RES 2
UNKNOWN_7E9F8C:
	.RES 2 * 16
BATTLERS_TABLE:
	.RES .SIZEOF(battler) * BATTLER_COUNT
BATTLER_TARGET_FLAGS:
	.RES 4
CURRENT_ATTACKER:
	.RES 2
CURRENT_TARGET:
	.RES 2
BATTLE_EXP_SCRATCH:
	.RES 4
BATTLE_MONEY_SCRATCH:
	.RES 2
GIYGAS_PHASE:
	.RES 2
UNKNOWN_7EA97C:
	.RES 1
UNKNOWN_7EA97D:
	.RES .SIZEOF(unknown_A97D)
ATTACKER_NAME_ADJUST_SCRATCH:
	.RES 27
TARGET_NAME_ADJUST_SCRATCH:
	.RES 27
UNKNOWN_7EA9B9:
	.RES 27
UNKNOWN_7EA9D4:
	.RES 54
;unused
	.RES 2
UNKNOWN_7EAA0C:
	.RES 2
UNKNOWN_7EAA0E:
	.RES 2
ITEM_DROPPED:
	.RES 2
MIRROR_ENEMY:
	.RES 2
UNKNOWN_7EAA14:
	.RES .SIZEOF(battler)
MIRROR_TURN_TIMER:
	.RES 2
UNKNOWN_7EAA66:
	.RES 2 * 6
UNKNOWN_7EAA70:
	.RES 2
UNKNOWN_7EAA72:
	.RES 2
UNKNOWN_7EAA74:
	.RES 2
UNKNOWN_7EAA76:
	.RES 2 * 4
UNKNOWN_7EAA7E:
	.RES 2 * 4
UNKNOWN_7EAA86:
	.RES 2 * 4
UNKNOWN_7EAA8E:
	.RES 2
UNKNOWN_7EAA90:
	.RES 2
UNKNOWN_7EAA92:
	.RES 2
UNKNOWN_7EAA94:
	.RES 2
UNKNOWN_7EAA96:
	.RES 2
UNKNOWN_7EAA98:
	.RES 26
UNKNOWN_7EAAB2:
	.RES 2
UNKNOWN_7EAAB4:
	.RES 2
UNKNOWN_7EAAB6:
	.RES 8
UNKNOWN_7EAABE:
	.RES 8
UNKNOWN_7EAAC6:
	.RES 8
UNKNOWN_7EAACE:
	.RES 8
BATTLE_SPRITEMAPS:
	.RES 80 * 4
ALT_BATTLE_SPRITEMAPS:
	.RES 80 * 4
NUM_BATTLERS_IN_BACK_ROW:
	.RES 2
NUM_BATTLERS_IN_FRONT_ROW:
	.RES 2
UNKNOWN_7EAD5A:
	.RES 8
UNKNOWN_7EAD62:
	.RES 8
UNKNOWN_7EAD6A:
	.RES 8
UNKNOWN_7EAD72:
	.RES 8
BACK_ROW_BATTLERS:
	.RES 8
FRONT_ROW_BATTLERS:
	.RES 8
UNKNOWN_7EAD8A:
	.RES 2
VERTICAL_SHAKE_DURATION:
	.RES 2
VERTICAL_SHAKE_HOLD_DURATION:
	.RES 2
UNKNOWN_7EAD90:
	.RES 2
WOBBLE_DURATION:
	.RES 2
SHAKE_DURATION:
	.RES 2
UNKNOWN_7EAD96:
	.RES 2
UNKNOWN_7EAD98:
	.RES 2
UNKNOWN_7EAD9A:
	.RES 2
UNKNOWN_7EAD9C:
	.RES 2
GREEN_FLASH_DURATION:
	.RES 2
RED_FLASH_DURATION:
	.RES 2
UNKNOWN_7EADA2:
	.RES 2
HP_PP_BOX_BLINK_DURATION:
	.RES 2
HP_PP_BOX_BLINK_TARGET:
	.RES 2
UNKNOWN_7EADA8:
	.RES 2
UNKNOWN_7EADAA:
	.RES 2
UNKNOWN_7EADAC:
	.RES 2
UNKNOWN_7EADAE:
	.RES 2
UNKNOWN_7EADB0:
	.RES 2
UNKNOWN_7EADB2:
	.RES 2
UNKNOWN_7EADB4:
	.RES 2
UNKNOWN_7EADB6:
	.RES 2
UNKNOWN_7EADB8:
	.RES 3 * 6
;unused
	.RES 2
UNKNOWN_7EADCC:
	.RES 2
UNKNOWN_7EADCE:
	.RES 2
UNKNOWN_7EADD0:
	.RES 2
UNKNOWN_7EADD2:
	.RES 2
LOADED_BG_DATA_LAYER1:
	.RES .SIZEOF(loaded_bg_data)
LOADED_BG_DATA_LAYER2:
	.RES .SIZEOF(loaded_bg_data)
UNKNOWN_7EAEC2:
	.RES 1
UNKNOWN_7EAEC3:
	.RES 1
UNKNOWN_7EAEC4:
	.RES 1
UNKNOWN_7EAEC5:
	.RES 1
UNKNOWN_7EAEC6:
	.RES 1
UNKNOWN_7EAEC7:
	.RES 1
UNKNOWN_7EAEC8:
	.RES 1
UNKNOWN_7EAEC9:
	.RES 1
UNKNOWN_7EAECA:
	.RES 1
UNKNOWN_7EAECB:
	.RES 1
UNKNOWN_7EAECC:
	.RES 4
UNKNOWN_7EAED0:
	.RES 2
UNKNOWN_7EAED2:
	.RES 2
UNKNOWN_7EAED4:
	.RES 2
UNKNOWN_7EAED6:
	.RES 2
UNKNOWN_7EAED8:
	.RES 2
UNKNOWN_7EAEDA:
	.RES 2
UNKNOWN_7EAEDC:
	.RES 2
UNKNOWN_7EAEDE:
	.RES 2
UNKNOWN_7EAEE0:
	.RES 2
UNKNOWN_7EAEE2:
	.RES 2
UNKNOWN_7EAEE4:
	.RES 1
UNKNOWN_7EAEE5:
	.RES 1
UNKNOWN_7EAEE6:
	.RES 1
UNKNOWN_7EAEE7:
	.RES 2 * 4
UNKNOWN_7EAEEF:
	.RES 1
UNKNOWN_7EAEF0:
	.RES 2
UNKNOWN_7EAEF2:
	.RES 2
UNKNOWN_7EAEF4:
	.RES 2 * 4
UNKNOWN_7EAEFC:
	.RES 6 * 16 * 4
UNKNOWN_7EB07C:
	.RES 6 * 16 * 4
UNKNOWN_7EB1FC:
	.RES 6 * 16 * 4
;Used as an index for 7EAEF4 table, apparently
UNKNOWN_7EB37C:
	.RES 2
UNKNOWN_7EB37E:
	.RES 14 * 8
UNKNOWN_7EB3EE:
	.RES 5
UNKNOWN_7EB3F3:
	.RES 5
UNKNOWN_7EB3F8:
	.RES 2
UNKNOWN_7EB3FA:
	.RES 2
UNKNOWN_7EB3FC:
	.RES 2
; unused
	.RES 2
UNKNOWN_7EB400:
	.RES 2
UNKNOWN_7EB402:
	.RES 2
UNKNOWN_7EB404:
	.RES 2
UNKNOWN_7EB406:
	.RES 2
UNKNOWN_7EB408:
	.RES 2
UNKNOWN_7EB40A:
	.RES 2
UNKNOWN_7EB40C:
	.RES 2
UNKNOWN_7EB40E:
	.RES 2
UNKNOWN_7EB410:
	.RES 2
UNKNOWN_7EB412:
	.RES 2
UNKNOWN_7EB414:
	.RES 2
UNKNOWN_7EB416:
	.RES 2
UNKNOWN_7EB418:
	.RES 2
UNKNOWN_7EB41A:
	.RES 2
UNKNOWN_7EB41C:
	.RES 2
UNKNOWN_7EB41E:
	.RES 2
UNKNOWN_7EB420:
	.RES 2
UNKNOWN_7EB422:
	.RES 2
UNKNOWN_7EB424:
	.RES 2
UNKNOWN_7EB426:
	.RES 2
UNKNOWN_7EB428:
	.RES 2
UNKNOWN_7EB42A:
	.RES 2
UNKNOWN_7EB42C:
	.RES 2
UNKNOWN_7EB42E:
	.RES 2
UNKNOWN_7EB430:
	.RES 2
UNKNOWN_7EB432:
	.RES 2
UNKNOWN_7EB434:
	.RES 2
UNKNOWN_7EB436:
	.RES 2
UNKNOWN_7EB438:
	.RES 2
UNKNOWN_7EB43A:
	.RES 2
UNKNOWN_7EB43C:
	.RES 2
;unused
	.RES 95
UNKNOWN_7EB49D:
	.RES 1
UNKNOWN_7EB49E:
	.RES 3
CURRENT_SAVE_SLOT:
	.RES 1
UNKNOWN_7EB4A2:
	.RES 2
UNKNOWN_7EB4A4:
	.RES 2
UNKNOWN_7EB4A6:
	.RES 2
UNKNOWN_7EB4A8:
	.RES 2
UNKNOWN_7EB4AA:
	.RES 2
; unused
	.RES 2
UNKNOWN_7EB4AE:
	.RES 2
UNKNOWN_7EB4B0:
	.RES 2
UNKNOWN_7EB4B2:
	.RES 2
UNKNOWN_7EB4B4:
	.RES 2
UNKNOWN_7EB4B6:
	.RES 2
UNKNOWN_7EB4B8:
	.RES 2
TOTAL_YOUR_SANCTUARY_LOADED_TILESET_TILES:
	.RES 2
YOUR_SANCTUARY_LOADED_TILESET_TILES:
	.RES 2
LOADED_YOUR_SANCTUARY_LOCATIONS:
	.RES 8 * 2
UNKNOWN_7EB4CF:
	.RES 2
UNKNOWN_7EB4D1:
	.RES 2
UNKNOWN_7EB4D3:
	.RES 2
UNKNOWN_7EB4D5:
	.RES 2 * 4
UNKNOWN_7EB4DD:
	.RES 2
;unused
	.RES 4
UNKNOWN_7EB4E3:
	.RES 2
UNKNOWN_7EB4E5:
	.RES 2
UNKNOWN_7EB4E7:
	.RES 4
UNKNOWN_7EB4EB:
	.RES 4
UNKNOWN_7EB4EF:
	.RES 2
CUR_PHOTO_DISPLAY:
	.RES 2
UNKNOWN_7EB4F3:
	.RES 2
UNKNOWN_7EB4F5:
	.RES 2
UNKNOWN_7EB4F7:
	.RES 2
UNKNOWN_7EB4F9:
	.RES 24
UNKNOWN_7EB511:
	.RES 10 * 2
UNKNOWN_7EB525:
	.RES 10 * 2
PIRACY_FLAG:
	.RES 2

; Audio stuff
CURRENT_MUSIC_TRACK:
	.RES 2
CURRENT_PRIMARY_SAMPLE_PACK:
	.RES 2
CURRENT_SECONDARY_SAMPLE_PACK:
	.RES 2
CURRENT_SEQUENCE_PACK:
	.RES 2

UNKNOWN_7EB543:
	.RES 2
UNKNOWN_7EB545:
	.RES 2
UNKNOWN_7EB547:
	.RES 2
SECTOR_BOUNDARY_BEHAVIOUR_FLAG:
	.RES 2
UNKNOWN_7EB54B:
	.RES 2
UNKNOWN_7EB54D:
	.RES 2
UNKNOWN_7EB54F:
	.RES 2
UNKNOWN_7EB551:
	.RES 2
UNKNOWN_7EB553:
	.RES 2
DEBUG_MENU_CURSOR_POSITION:
	.RES 2
UNKNOWN_7EB557:
	.RES 2
DEBUG_MODE_NUMBER:
	.RES 2
;unused
	.RES 2
UNKNOWN_7EB55D:
	.RES 2
UNKNOWN_7EB55F:
	.RES 2
DEBUG_START_POSITION_X:
	.RES 2
DEBUG_START_POSITION_Y:
	.RES 2
; A sprite ID?
DEBUG_UNKNOWN_B565:
	.RES 2
UNKNOWN_7EB567:
	.RES 2
UNKNOWN_7EB569:
	.RES 2
UNKNOWN_7EB56B:
	.RES 2
UNKNOWN_7EB56D:
	.RES 2
UNKNOWN_7EB56F:
	.RES 2
UNKNOWN_7EB571:
	.RES 2
UNKNOWN_7EB573:
	.RES 2
UNKNOWN_7EB575:
	.RES 2

.ORG $7E8000 ;???
INTRO_BG2_BUFFER:

; Unknown memory segment
.SEGMENT "RAM2"
UNKNOWN_7EB800:
	.RES 2048
UNKNOWN_7EC000:
	.RES 8192
UNKNOWN_7EE000:
	.RES 64 * 64
UNKNOWN_7EF000:
	.RES 32 * 16
UNKNOWN_7EF200:
	.RES 512
UNKNOWN_7EF400:
	.RES $C00
UNKNOWN_7F0000:
	.RES $40
UNKNOWN_7F0040:
	.RES $30
UNKNOWN_7F0070:
	.RES $90
UNKNOWN_7F0100:
	.RES $100
UNKNOWN_7F0200:
	.RES $200
UNKNOWN_7F0400:
	.RES $F0
UNKNOWN_7F04F0:
	.RES $100
UNKNOWN_7F05F0:
	.RES $10
UNKNOWN_7F0600:
	.RES $100
UNKNOWN_7F0700:
	.RES $100
UNKNOWN_7F0800:
	.RES $40
UNKNOWN_7F0840:
	.RES $C0
UNKNOWN_7F0900:
	.RES $100
UNKNOWN_7F0A00:
	.RES $200
UNKNOWN_7F0C00:
	.RES $400
UNKNOWN_7F1000:
	.RES $1000
UNKNOWN_7F2000:
	.RES $A00
UNKNOWN_7F2A00:
	.RES $200
UNKNOWN_7F2C00:
	.RES $400
UNKNOWN_7F3000:
	.RES $200
UNKNOWN_7F3200:
	.RES $E00
UNKNOWN_7F4000:
	.RES $3000
UNKNOWN_7F7000:
	.RES $800
UNKNOWN_7F7800:
	.RES $400
UNKNOWN_7F7C00:
	.RES $100
UNKNOWN_7F7D00:
	.RES $100
UNKNOWN_7F7E00:
	.RES $100
UNKNOWN_7F7F00:
	.RES $100
UNKNOWN_7F8000:
	.RES $7800
TILE_COLLISION_BUFFER:
	.RES $800
