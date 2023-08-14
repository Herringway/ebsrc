.SEGMENT "BANK2F"
.INCLUDE "common.asm"
.INCLUDE "config.asm"
.INCLUDE "structs.asm"
.INCLUDE "symbols/bank00.inc.asm"
.INCLUDE "symbols/bank01.inc.asm"
.INCLUDE "symbols/bank02.inc.asm"
.INCLUDE "symbols/bank04.inc.asm"
.INCLUDE "symbols/bank2f.inc.asm"
.INCLUDE "symbols/audiopacks.inc.asm"
.INCLUDE "symbols/globals.inc.asm"
.INCLUDE "symbols/map.inc.asm"
.INCLUDE "symbols/overworld_sprites.inc.asm"
.INCLUDE "symbols/sram.inc.asm"

AUDIO_PACK_23: ;$EF0000
        AUDIOPACK "audiopacks/23.ebm"

AUDIO_PACK_11: ;$EF041F
        AUDIOPACK "audiopacks/11.ebm"

AUDIO_PACK_142: ;$EF0832
        AUDIOPACK "audiopacks/142.ebm"

AUDIO_PACK_160: ;$EF0C43
        AUDIOPACK "audiopacks/160.ebm"

AUDIO_PACK_101: ;$EF104E
        AUDIOPACK "audiopacks/101.ebm"

AUDIO_PACK_103: ;$EF144A
        AUDIOPACK "audiopacks/103.ebm"

AUDIO_PACK_51: ;$EF1843
        AUDIOPACK "audiopacks/51.ebm"

AUDIO_PACK_18: ;$EF1BFD
        AUDIOPACK "audiopacks/18.ebm"

AUDIO_PACK_29: ;$EF1F72
        AUDIOPACK "audiopacks/29.ebm"

AUDIO_PACK_93: ;$EF22D4
        AUDIOPACK "audiopacks/93.ebm"

AUDIO_PACK_95: ;$EF2635
        AUDIOPACK "audiopacks/95.ebm"

AUDIO_PACK_164: ;$EF2987
        AUDIOPACK "audiopacks/164.ebm"

AUDIO_PACK_151: ;$EF2CC7
        AUDIOPACK "audiopacks/151.ebm"

AUDIO_PACK_143: ;$EF2FF2
        AUDIOPACK "audiopacks/143.ebm"

AUDIO_PACK_12: ;$EF32E9
        AUDIOPACK "audiopacks/12.ebm"

AUDIO_PACK_135: ;$EF35B7
        AUDIOPACK "audiopacks/135.ebm"

AUDIO_PACK_83: ;$EF3868
        AUDIOPACK "audiopacks/83.ebm"

AUDIO_PACK_88: ;$EF3B0F
        AUDIOPACK "audiopacks/88.ebm"

AUDIO_PACK_155: ;$EF3DA6
        AUDIOPACK "audiopacks/155.ebm"

AUDIO_PACK_31: ;$EF400D
        AUDIOPACK "audiopacks/31.ebm"

AUDIO_PACK_129: ;$EF4270
        AUDIOPACK "audiopacks/129.ebm"

AUDIO_PACK_22: ;$EF44D0
        AUDIOPACK "audiopacks/22.ebm"

AUDIO_PACK_17: ;$EF4727
        AUDIOPACK "audiopacks/17.ebm"

AUDIO_PACK_91: ;$EF4978
        AUDIOPACK "audiopacks/91.ebm"

AUDIO_PACK_81: ;$EF4BC2
        AUDIOPACK "audiopacks/81.ebm"

AUDIO_PACK_147: ;$EF4DE6
        AUDIOPACK "audiopacks/147.ebm"

AUDIO_PACK_152: ;$EF5005
        AUDIOPACK "audiopacks/152.ebm"

AUDIO_PACK_159: ;$EF51FF
        AUDIOPACK "audiopacks/159.ebm"

AUDIO_PACK_49: ;$EF5392
        AUDIOPACK "audiopacks/49.ebm"

AUDIO_PACK_9: ;$EF5516
        AUDIOPACK "audiopacks/9.ebm"

AUDIO_PACK_145: ;$EF5691
        AUDIOPACK "audiopacks/145.ebm"

AUDIO_PACK_69: ;$EF57E8
        AUDIOPACK "audiopacks/69.ebm"

AUDIO_PACK_167: ;$EF593C
        AUDIOPACK "audiopacks/167.ebm"

AUDIO_PACK_130: ;$EF5A83
        AUDIOPACK "audiopacks/130.ebm"

AUDIO_PACK_168: ;$EF5BC0
        AUDIOPACK "audiopacks/168.ebm"

AUDIO_PACK_75: ;$EF5CF4
        AUDIOPACK "audiopacks/75.ebm"

AUDIO_PACK_137: ;$EF5E1E
        AUDIOPACK "audiopacks/137.ebm"

AUDIO_PACK_59: ;$EF5F47
        AUDIOPACK "audiopacks/59.ebm"

AUDIO_PACK_41: ;$EF6049
        AUDIOPACK "audiopacks/41.ebm"

AUDIO_PACK_7: ;$EF614B
        AUDIOPACK "audiopacks/7.ebm"

.INCLUDE "data/map/tileset_table.asm"

.INCLUDE "data/map/tileset_graphics_pointer_table.asm"

.INCLUDE "data/map/tileset_arrangement_pointer_table.asm"

.INCLUDE "data/map/tileset_palette_pointer_table.asm"

.INCLUDE "data/map/tileset_collision_pointer_table.asm"

.INCLUDE "data/map/tileset_animation_pointer_table.asm"

.INCLUDE "data/map/tileset_animation_properties_pointer_table.asm"

.INCLUDE "data/map/tileset_animation_properties/00.asm"

.INCLUDE "data/map/tileset_animation_properties/01.asm"

.INCLUDE "data/map/tileset_animation_properties/02.asm"

.INCLUDE "data/map/tileset_animation_properties/03.asm"

.INCLUDE "data/map/tileset_animation_properties/04.asm"

.INCLUDE "data/map/tileset_animation_properties/05.asm"

.INCLUDE "data/map/tileset_animation_properties/06.asm"

.INCLUDE "data/map/tileset_animation_properties/07.asm"

.INCLUDE "data/map/tileset_animation_properties/08.asm"

.INCLUDE "data/map/tileset_animation_properties/09.asm"

.INCLUDE "data/map/tileset_animation_properties/10.asm"

.INCLUDE "data/map/tileset_animation_properties/11.asm"

.INCLUDE "data/map/tileset_animation_properties/12.asm"

.INCLUDE "data/map/tileset_animation_properties/13.asm"

.INCLUDE "data/map/tileset_animation_properties/14.asm"

.INCLUDE "data/map/tileset_animation_properties/15.asm"

.INCLUDE "data/map/tileset_animation_properties/16.asm"

.INCLUDE "data/map/tileset_animation_properties/17.asm"

.INCLUDE "data/map/tileset_animation_properties/18.asm"

.INCLUDE "data/map/tileset_animation_properties/19.asm"

.INCLUDE "data/sprite_grouping_pointers.asm"

.INCLUDE "data/sprite_grouping_data.asm"

.INCLUDE "data/unknown/EF4A40.asm"



.INCLUDE "data/map/per_sector_town_map_data.asm"

.INCLUDE "data/map/town_map_mapping.asm"

.INCLUDE "data/debug/sound_menu_option_strings.asm"

.INCLUDE "unknown/EF/EFD56F.asm"

.INCLUDE "unknown/EF/EFD5D9-jp.asm"

.INCLUDE "unknown/EF/EFD6D4.asm"

.INCLUDE "data/debug/menu_option_strings.asm"

.INCLUDE "unknown/EF/EFD95E-jp.asm"

.INCLUDE "unknown/EF/EFD9F3.asm"

.INCLUDE "unknown/EF/EFDA05.asm"

.INCLUDE "unknown/EF/EFDABD.asm"

.INCLUDE "system/debug/display_menu_options.asm"

.INCLUDE "system/debug/integer_to_hex_debug_tiles.asm"

.INCLUDE "system/debug/integer_to_decimal_debug_tiles.asm"

.INCLUDE "system/debug/integer_to_binary_debug_tiles.asm"

.INCLUDE "system/debug/display_check_position_debug_overlay.asm"

.INCLUDE "system/debug/display_view_character_debug_overlay.asm"

.INCLUDE "unknown/EF/EFDF0B.asm"

.INCLUDE "unknown/EF/EFDFC4.asm"

.INCLUDE "unknown/EF/EFE07C.asm"

.INCLUDE "unknown/EF/EFE133.asm"

.INCLUDE "unknown/EF/EFE175-jp.asm"

.INCLUDE "system/debug/load_kirby_sprite.asm"

.INCLUDE "system/debug/handle_cursor_movement.asm"

.INCLUDE "system/debug/process_command_selection.asm"

.INCLUDE "system/debug/load_menu.asm"

.INCLUDE "unknown/EF/EFE6CF.asm"

.INCLUDE "unknown/EF/EFE6E2.asm"

.INCLUDE "unknown/EF/EFE708.asm"

.INCLUDE "system/debug/check_view_character_mode.asm"

.INCLUDE "unknown/EF/EFE759.asm"

.INCLUDE "unknown/EF/EFE771.asm"

.INCLUDE "unknown/EF/EFE873.asm"

.INCLUDE "unknown/EF/EFE895.asm"

.INCLUDE "unknown/EF/EFE8C7-jp.asm"

.INCLUDE "unknown/EF/EFEA23.asm"

.INCLUDE "unknown/EF/EFEA4A.asm"

.INCLUDE "unknown/EF/EFEA9E.asm"

.INCLUDE "unknown/EF/EFEAA4.asm"

.INCLUDE "unknown/EF/EFEAC8-jp.asm"

.INCLUDE "data/unknown/EFEB1D.asm"

.INCLUDE "unknown/EF/EFEB2A.asm"

.INCLUDE "data/unknown/EFEB3D.asm"

DEBUG_MENU_FONT: ;$EFEB70
	BINARY "fonts/debug.gfx"

.INCLUDE "data/unknown/EFEF70.asm"

.INCLUDE "data/unknown/EFEF9F.asm"

KIRBY: ;$EFEFB7
	BINARY "kirby.gfx"

.INCLUDE "data/unknown/EFF0D7.asm"

.INCLUDE "data/unknown/EFF1BB.asm"

.INCLUDE "data/unknown_version_string.asm"

.INCLUDE "data/unknown/EFF3DB.asm"

.INCLUDE "data/unknown/EFF511.asm"

.INCLUDE "data/unknown/EFF53B.asm"

.INCLUDE "data/unknown/EFF5BB.asm"
