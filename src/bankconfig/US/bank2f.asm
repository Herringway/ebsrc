.SEGMENT "BANK2F"
.INCLUDE "common.asm"
.INCLUDE "config.asm"
.INCLUDE "structs.asm"
.INCLUDE "symbols/bank00.inc.asm"
.INCLUDE "symbols/bank01.inc.asm"
.INCLUDE "symbols/bank02.inc.asm"
.INCLUDE "symbols/bank03.inc.asm"
.INCLUDE "symbols/bank04.inc.asm"
.INCLUDE "symbols/bank2f.inc.asm"
.INCLUDE "symbols/globals.inc.asm"
.INCLUDE "symbols/map.inc.asm"
.INCLUDE "symbols/misc.inc.asm"
.INCLUDE "symbols/overworld_sprites.inc.asm"
.INCLUDE "symbols/sram.inc.asm"
.INCLUDE "symbols/text.inc.asm"

.INCLUDE "battle/enemy_flashing_off.asm"

.INCLUDE "battle/enemy_flashing_on.asm"

.INCLUDE "unknown/EF/EF00BB.asm"

.INCLUDE "unknown/EF/EF00E6.asm"

.INCLUDE "unknown/EF/EF0115.asm"

.INCLUDE "unknown/EF/EF016F.asm"

.INCLUDE "unknown/EF/EF01D2.asm"

.INCLUDE "audio/pause_music.asm"

.INCLUDE "unknown/EF/EF0262.asm"

.INCLUDE "audio/resume_music.asm"

.INCLUDE "unknown/EF/EF027D.asm"

.INCLUDE "unknown/EF/EF02C4.asm"

.INCLUDE "unknown/EF/EF031E.asm"

.INCLUDE "unknown/EF/EF04DC.asm"

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

.INCLUDE "unknown/EF/EF0C3D.asm"

.INCLUDE "unknown/EF/EF0C87.asm"

.INCLUDE "unknown/EF/EF0C97.asm"

.INCLUDE "unknown/EF/EF0CA7.asm"

.INCLUDE "unknown/EF/EF0D23.asm"

.INCLUDE "unknown/EF/EF0D46.asm"

.INCLUDE "unknown/EF/EF0D73.asm"

.INCLUDE "unknown/EF/EF0D8D.asm"

.INCLUDE "unknown/EF/EF0DFA.asm"

.INCLUDE "unknown/EF/EF0E67.asm"

.INCLUDE "unknown/EF/EF0E8A.asm"

.INCLUDE "unknown/EF/EF0EAD.asm"

.INCLUDE "unknown/EF/EF0EE8.asm"

.INCLUDE "unknown/EF/EF0F60.asm"

.INCLUDE "unknown/EF/EF0FDB.asm"

.INCLUDE "unknown/EF/EF0FF6.asm"

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

;$EF4E20
.INCLUDE "bin/US/text_data/EEXPLPSI.ebtxt"
;$EF57EB
.INCLUDE "bin/US/text_data/E16DKFD.ebtxt"
;$EF617B
.INCLUDE "bin/US/text_data/E07GPFT.ebtxt"
;$EF69A1
.INCLUDE "bin/US/text_data/EBATTLE5.ebtxt"
;$EF7186
.INCLUDE "bin/US/text_data/EBATTLE4.ebtxt"
;$EF77FD
.INCLUDE "bin/US/text_data/EBATTLE8.ebtxt"
;$EF7E25
.INCLUDE "bin/US/text_data/EBATTLE2.ebtxt"
;$EF8445
.INCLUDE "bin/US/text_data/EBATTLE0.ebtxt"
;$EF89FE
.INCLUDE "bin/US/text_data/EBATTLE3.ebtxt"
;$EF8FCB
.INCLUDE "bin/US/text_data/EBATTLE9.ebtxt"
;$EF952E
.INCLUDE "bin/US/text_data/E04GRFD.ebtxt"
;$EF9A47
.INCLUDE "bin/US/text_data/EBATTLE1.ebtxt"
;$EF9EF4
.INCLUDE "bin/US/text_data/EGOODS2.ebtxt"
;$EFA2FA
.INCLUDE "bin/US/text_data/UNKNOWN_EFA2FA.ebtxt"

.INCLUDE "data/command_window_text.asm"

.INCLUDE "data/status_window_text.asm"

NAME_INPUT_WINDOW_SELECTION_LAYOUT_0: ;$EFA460
	BINARY "name_input_layouts/0.bin"

NAME_INPUT_WINDOW_SELECTION_LAYOUT_1: ;$EFA4E3
	BINARY "name_input_layouts/1.bin"

NAME_INPUT_WINDOW_SELECTION_LAYOUT_2: ;$EFA566
	BINARY "name_input_layouts/2.bin"

NAME_INPUT_WINDOW_SELECTION_LAYOUT_3: ;$EFA5E9
	BINARY "name_input_layouts/3.bin"

NAME_INPUT_WINDOW_SELECTION_LAYOUT_4: ;$EFA66C
	BINARY "name_input_layouts/4.bin"

NAME_INPUT_WINDOW_SELECTION_LAYOUT_5: ;$EFA6A7
	BINARY "name_input_layouts/5.bin"

.INCLUDE "data/name_input_window_selection_layout_pointers.asm"

;$EFA6EB
.INCLUDE "bin/US/text_data/UNKNOWN7.ebtxt"

.INCLUDE "data/map/per_sector_town_map_data.asm"

.INCLUDE "data/map/town_map_mapping.asm"

.INCLUDE "data/unknown/EFC51B.asm"

.INCLUDE "data/unknown/EFCD1B.asm"

.INCLUDE "data/debug/sound_menu_option_strings.asm"

.INCLUDE "unknown/EF/EFD56F.asm"

.INCLUDE "unknown/EF/EFD5D9.asm"

.INCLUDE "unknown/EF/EFD6D4.asm"

.INCLUDE "data/debug/menu_option_strings.asm"

.INCLUDE "unknown/EF/EFD95E.asm"

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

.INCLUDE "unknown/EF/EFE175.asm"

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

.INCLUDE "unknown/EF/EFE8C7.asm"

.INCLUDE "unknown/EF/EFEA23.asm"

.INCLUDE "unknown/EF/EFEA4A.asm"

.INCLUDE "unknown/EF/EFEA9E.asm"

.INCLUDE "unknown/EF/EFEAA4.asm"

.INCLUDE "unknown/EF/EFEAC8.asm"

.INCLUDE "data/unknown/EFEB1D.asm"

.INCLUDE "unknown/EF/EFEB2A.asm"

.INCLUDE "data/unknown/EFEB3D.asm"

DEBUG_MENU_FONT: ;$EFEB5F
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
