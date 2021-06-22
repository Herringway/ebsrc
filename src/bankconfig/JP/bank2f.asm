.SEGMENT "BANK2F"
.INCLUDE "common.asm"
.INCLUDE "config.asm"
.INCLUDE "structs.asm"

AUDIO_PACK_23: ;$EF0000
        AUDIOPACKBIN $160, $5800, "audiopacks/23-1.bin"
        AUDIOPACKBIN $2B5, $6000, "audiopacks/23-2.bin"
        AUDIOPACK 0

AUDIO_PACK_11: ;$EF041F
        AUDIOPACKBIN $40D, $5800, "audiopacks/11.bin"
        AUDIOPACK 0

AUDIO_PACK_142: ;$EF0832
        AUDIOPACKBIN $40B, $4800, "audiopacks/142.bin"
        AUDIOPACK 0

AUDIO_PACK_160: ;$EF0C43
        AUDIOPACKBIN $405, $5800, "audiopacks/160.bin"
        AUDIOPACK 0

AUDIO_PACK_101: ;$EF104E
        AUDIOPACKBIN $3F6, $4800, "audiopacks/101.bin"
        AUDIOPACK 0

AUDIO_PACK_103: ;$EF144A
        AUDIOPACKBIN $1A6, $4800, "audiopacks/103-1.bin"
        AUDIOPACKBIN $FB, $4C00, "audiopacks/103-2.bin"
        AUDIOPACKBIN $14A, $5200, "audiopacks/103-3.bin"
        AUDIOPACK 0

AUDIO_PACK_51: ;$EF1843
        AUDIOPACKBIN $3B4, $5800, "audiopacks/51.bin"
        AUDIOPACK 0

AUDIO_PACK_18: ;$EF1BFD
        AUDIOPACKBIN $36F, $5800, "audiopacks/18.bin"
        AUDIOPACK 0

AUDIO_PACK_29: ;$EF1F72
        AUDIOPACKBIN $35C, $5800, "audiopacks/29.bin"
        AUDIOPACK 0

AUDIO_PACK_93: ;$EF22D4
        AUDIOPACKBIN $35B, $5800, "audiopacks/93.bin"
        AUDIOPACK 0

AUDIO_PACK_95: ;$EF2635
        AUDIOPACKBIN $8, $6C68, "audiopacks/95-1.bin"
        AUDIOPACKBIN $330, $95B0, "audiopacks/95-2.bin"
        AUDIOPACKBIN $C, $6E9C, "audiopacks/95-3.bin"
        AUDIOPACK 0

AUDIO_PACK_164: ;$EF2987
        AUDIOPACKBIN $33A, $4800, "audiopacks/164.bin"
        AUDIOPACK 0

AUDIO_PACK_151: ;$EF2CC7
        AUDIOPACKBIN $325, $5800, "audiopacks/151.bin"
        AUDIOPACK 0

AUDIO_PACK_143: ;$EF2FF2
        AUDIOPACKBIN $2F1, $5800, "audiopacks/143.bin"
        AUDIOPACK 0

AUDIO_PACK_12: ;$EF32E9
        AUDIOPACKBIN $2C8, $4800, "audiopacks/12.bin"
        AUDIOPACK 0

AUDIO_PACK_135: ;$EF35B7
        AUDIOPACKBIN $2AB, $5800, "audiopacks/135.bin"
        AUDIOPACK 0

AUDIO_PACK_83: ;$EF3868
        AUDIOPACKBIN $F7, $4800, "audiopacks/83-1.bin"
        AUDIOPACKBIN $6F, $5200, "audiopacks/83-2.bin"
        AUDIOPACKBIN $133, $5300, "audiopacks/83-3.bin"
        AUDIOPACK 0

AUDIO_PACK_88: ;$EF3B0F
        AUDIOPACKBIN $291, $4800, "audiopacks/88.bin"
        AUDIOPACK 0

AUDIO_PACK_155: ;$EF3DA6
        AUDIOPACKBIN $261, $5800, "audiopacks/155.bin"
        AUDIOPACK 0

AUDIO_PACK_31: ;$EF400D
        AUDIOPACKBIN $25D, $5800, "audiopacks/31.bin"
        AUDIOPACK 0

AUDIO_PACK_129: ;$EF4270
        AUDIOPACKBIN $25A, $5800, "audiopacks/129.bin"
        AUDIOPACK 0

AUDIO_PACK_22: ;$EF44D0
        AUDIOPACKBIN $251, $5800, "audiopacks/22.bin"
        AUDIOPACK 0

AUDIO_PACK_17: ;$EF4727
        AUDIOPACKBIN $24B, $4800, "audiopacks/17.bin"
        AUDIOPACK 0

AUDIO_PACK_91: ;$EF4978
        AUDIOPACKBIN $244, $4800, "audiopacks/91.bin"
        AUDIOPACK 0

AUDIO_PACK_81: ;$EF4BC2
        AUDIOPACKBIN $10D, $4800, "audiopacks/81-1.bin"
        AUDIOPACKBIN $10D, $5200, "audiopacks/81-2.bin"
        AUDIOPACK 0

AUDIO_PACK_147: ;$EF4DE6
        AUDIOPACKBIN $219, $4800, "audiopacks/147.bin"
        AUDIOPACK 0

AUDIO_PACK_152: ;$EF5005
        AUDIOPACKBIN $1F4, $5800, "audiopacks/152.bin"
        AUDIOPACK 0

AUDIO_PACK_159: ;$EF51FF
        AUDIOPACKBIN $18D, $5800, "audiopacks/159.bin"
        AUDIOPACK 0

AUDIO_PACK_49: ;$EF5392
        AUDIOPACKBIN $17E, $5800, "audiopacks/49.bin"
        AUDIOPACK 0

AUDIO_PACK_9: ;$EF5516
        AUDIOPACKBIN $175, $5800, "audiopacks/9.bin"
        AUDIOPACK 0

AUDIO_PACK_145: ;$EF5691
        AUDIOPACKBIN $151, $4800, "audiopacks/145.bin"
        AUDIOPACK 0

AUDIO_PACK_69: ;$EF57E8
        AUDIOPACKBIN $14E, $5800, "audiopacks/69.bin"
        AUDIOPACK 0

AUDIO_PACK_167: ;$EF593C
        AUDIOPACKBIN $141, $4800, "audiopacks/167.bin"
        AUDIOPACK 0

AUDIO_PACK_130: ;$EF5A83
        AUDIOPACKBIN $137, $4800, "audiopacks/130.bin"
        AUDIOPACK 0

AUDIO_PACK_168: ;$EF5BC0
        AUDIOPACKBIN $12E, $4800, "audiopacks/168.bin"
        AUDIOPACK 0

AUDIO_PACK_75: ;$EF5CF4
        AUDIOPACKBIN $124, $5800, "audiopacks/75.bin"
        AUDIOPACK 0

AUDIO_PACK_137: ;$EF5E1E
        AUDIOPACKBIN $123, $4800, "audiopacks/137.bin"
        AUDIOPACK 0

AUDIO_PACK_59: ;$EF5F47
        AUDIOPACKBIN $FC, $4800, "audiopacks/59.bin"
        AUDIOPACK 0

AUDIO_PACK_41: ;$EF6049
        AUDIOPACKBIN $FC, $5800, "audiopacks/41.bin"
        AUDIOPACK 0

AUDIO_PACK_7: ;$EF614B
        AUDIOPACKBIN $CC, $4800, "audiopacks/7.bin"
        AUDIOPACK 0

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

.INCLUDE "data/map/town_map_mapping-jp.asm"

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

.INCLUDE "unknown/EF/EFDB95.asm"

.INCLUDE "unknown/EF/EFDBF0.asm"

.INCLUDE "unknown/EF/EFDC69.asm"

.INCLUDE "unknown/EF/EFDCBC.asm"

.INCLUDE "unknown/EF/EFDE1A.asm"

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

.INCLUDE "data/unknown/EFEB5F.asm"

DEBUG_MENU_FONT: ;$EFEB70
	BINARY "fonts/debug.gfx"

.INCLUDE "data/unknown/EFEF70.asm"

KIRBY: ;$EFEFB7
	BINARY "kirby.gfx"

.INCLUDE "data/unknown/EFF0D7.asm"

.INCLUDE "data/unknown/EFF1BB.asm"

.INCLUDE "data/unknown_version_string.asm"

.INCLUDE "data/unknown/EFF3DB.asm"

.INCLUDE "data/unknown/EFF511.asm"

.INCLUDE "data/unknown/EFF53B.asm"

.INCLUDE "data/unknown/EFF5BB.asm"
