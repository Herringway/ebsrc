.SEGMENT "BANK2F"
.INCLUDE "common.asm"
.INCLUDE "config.asm"
.INCLUDE "structs.asm"

.INCLUDE "battle/enemy_flashing_off.asm"

.INCLUDE "battle/enemy_flashing_on.asm"

.INCLUDE "unknown/EF00BB.asm"

.INCLUDE "unknown/EF00E6.asm"

.INCLUDE "unknown/EF0115.asm"

.INCLUDE "unknown/EF016F.asm"

.INCLUDE "unknown/EF01D2.asm"

.INCLUDE "audio/pause_music.asm"

.INCLUDE "unknown/EF0262.asm"

.INCLUDE "audio/resume_music.asm"

.INCLUDE "unknown/EF027D.asm"

.INCLUDE "unknown/EF02C4.asm"

.INCLUDE "unknown/EF031E.asm"

.INCLUDE "unknown/EF04DC.asm"

.INCLUDE "data/sram_signature.asm"

.INCLUDE "data/unknown/EF05A6.asm"

.INCLUDE "system/saves/erase_save_block.asm"

.INCLUDE "system/saves/check_block_signature.asm"

.INCLUDE "system/saves/check_all_blocks_signature.asm"

.INCLUDE "system/saves/copy_save_block.asm"

.INCLUDE "system/saves/calc_save_block_checksum.asm"

.INCLUDE "system/saves/calc_save_block_checksum_complement.asm"

.INCLUDE "system/saves/validate_save_block_checksums.asm"

.INCLUDE "system/saves/check_save_corruption.asm"

.INCLUDE "system/saves/save_game_block.asm"

.INCLUDE "system/saves/save_game_slot.asm"

.INCLUDE "system/saves/load_game_slot.asm"

.INCLUDE "system/saves/check_sram_integrity.asm"

.INCLUDE "system/saves/erase_save_slot.asm"

.INCLUDE "system/saves/copy_save_slot.asm"

.INCLUDE "unknown/EF0C3D.asm"

.INCLUDE "unknown/EF0C87.asm"

.INCLUDE "unknown/EF0C97.asm"

.INCLUDE "unknown/EF0CA7.asm"

.INCLUDE "unknown/EF0D23.asm"

.INCLUDE "unknown/EF0D46.asm"

.INCLUDE "unknown/EF0D73.asm"

.INCLUDE "unknown/EF0D8D.asm"

.INCLUDE "unknown/EF0DFA.asm"

.INCLUDE "unknown/EF0E67.asm"

.INCLUDE "unknown/EF0E8A.asm"

.INCLUDE "unknown/EF0EAD.asm"

.INCLUDE "unknown/EF0EE8.asm"

.INCLUDE "unknown/EF0F60.asm"

.INCLUDE "unknown/EF0FDB.asm"

.INCLUDE "unknown/EF0FF6.asm"

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

.INCLUDE "bin/text_data/6.ebtxt"

.INCLUDE "data/command_window_text.asm"

.INCLUDE "data/status_window_text.asm"

.INCLUDE "data/name_input_window_selection_layouts.asm"

.INCLUDE "data/name_input_window_selection_layout_pointers.asm"

.INCLUDE "data/unknown/EFA6EB.asm"

.INCLUDE "data/map/per_sector_town_map_data.asm"

.INCLUDE "data/map/town_map_mapping.asm"

.INCLUDE "data/debug/sound_menu_option_strings.asm"

.INCLUDE "unknown/EFD56F.asm"

.INCLUDE "unknown/EFD5D9.asm"

.INCLUDE "unknown/EFD6D4.asm"

.INCLUDE "data/debug/menu_option_strings.asm"

.INCLUDE "unknown/EFD95E.asm"

.INCLUDE "unknown/EFD9F3.asm"

.INCLUDE "unknown/EFDA05.asm"

.INCLUDE "unknown/EFDABD.asm"

.INCLUDE "system/debug/display_menu_options.asm"

.INCLUDE "unknown/EFDB95.asm"

.INCLUDE "unknown/EFDBF0.asm"

.INCLUDE "unknown/EFDC69.asm"

.INCLUDE "unknown/EFDCBC.asm"

.INCLUDE "unknown/EFDE1A.asm"

.INCLUDE "unknown/EFDF0B.asm"

.INCLUDE "unknown/EFDFC4.asm"

.INCLUDE "unknown/EFE07C.asm"

.INCLUDE "unknown/EFE133.asm"

.INCLUDE "unknown/EFE175.asm"

.INCLUDE "system/debug/load_kirby_sprite.asm"

.INCLUDE "system/debug/handle_cursor_movement.asm"

.INCLUDE "system/debug/process_command_selection.asm"

.INCLUDE "system/debug/load_menu.asm"

.INCLUDE "unknown/EFE6CF.asm"

.INCLUDE "unknown/EFE6E2.asm"

.INCLUDE "unknown/EFE708.asm"

.INCLUDE "system/debug/check_view_character_mode.asm"

.INCLUDE "unknown/EFE759.asm"

.INCLUDE "unknown/EFE771.asm"

.INCLUDE "unknown/EFE873.asm"

.INCLUDE "unknown/EFE895.asm"

.INCLUDE "unknown/EFE8C7.asm"

.INCLUDE "unknown/EFEA23.asm"

.INCLUDE "unknown/EFEA4A.asm"

.INCLUDE "unknown/EFEA9E.asm"

.INCLUDE "unknown/EFEAA4.asm"

.INCLUDE "unknown/EFEAC8.asm"

.INCLUDE "data/unknown/EFEB1D.asm"

.INCLUDE "unknown/EFEB2A.asm"

.INCLUDE "data/unknown/EFEB3D.asm"

.INCLUDE "data/unknown/EFEB5F.asm"

.INCLUDE "data/debug/font.asm"

.INCLUDE "data/unknown/EFEF70.asm"

.INCLUDE "data/debug/kirby.asm"

.INCLUDE "data/unknown/EFF0D7.asm"

.INCLUDE "data/unknown/EFF1BB.asm"

.INCLUDE "data/unknown_version_string.asm"

.INCLUDE "data/unknown/EFF3DB.asm"

.INCLUDE "data/unknown/EFF511.asm"

.INCLUDE "data/unknown/EFF53B.asm"

.INCLUDE "data/unknown/EFF5BB.asm"
