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

.INCLUDE "text/clear_text_tile_attributes.asm"

.INCLUDE "text/set_text_tile_attributes.asm"

.INCLUDE "text/remove_window_from_screen.asm"

.INCLUDE "text/backup_menu_selection.asm"

.INCLUDE "text/print_new_line_if_needed.asm"

.INCLUDE "misc/stop_hp_pp_rolling.asm"

.INCLUDE "misc/enable_half_hp_meter_speed.asm"

.INCLUDE "misc/resume_hp_pp_rolling.asm"

.INCLUDE "overworld/actionscript/bubble_monkey_initialize.asm"

.INCLUDE "overworld/pick_next_bubble_monkey_movement_mode.asm"

.INCLUDE "overworld/actionscript/bubble_monkey_tick.asm"

.INCLUDE "intro/cancel_title_screen_sequence.asm"

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

.INCLUDE "unused/EF0C3D.asm"

.INCLUDE "overworld/actionscript/delivery/get_entity_delivery_attempt_count.asm"

.INCLUDE "overworld/actionscript/delivery/clear_entity_delivery_attempt_count.asm"

.INCLUDE "overworld/actionscript/delivery/get_entity_has_delivery_attempts_left.asm"

.INCLUDE "overworld/actionscript/delivery/get_time_between_delivery_attempts.asm"

.INCLUDE "overworld/actionscript/delivery/start_delivery_countdown.asm"

.INCLUDE "overworld/actionscript/delivery/do_delivery_countdown.asm"

.INCLUDE "overworld/actionscript/delivery/start_delivery_success_text.asm"

.INCLUDE "overworld/actionscript/delivery/start_delivery_fail_text.asm"

.INCLUDE "overworld/actionscript/delivery/get_delivery_enter_speed.asm"

.INCLUDE "overworld/actionscript/delivery/get_delivery_exit_speed.asm"

.INCLUDE "overworld/create_delivery_entity.asm"

.INCLUDE "overworld/respawn_delivery_entities.asm"

.INCLUDE "overworld/actionscript/delivery/check_delivery_eligibility.asm"

.INCLUDE "overworld/actionscript/delivery/start_delivery.asm"

.INCLUDE "overworld/actionscript/delivery/finish_delivery.asm"

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

LOCALEINCLUDE "text_data/EEXPLPSI.ebtxt"

LOCALEINCLUDE "text_data/E16DKFD.ebtxt"

LOCALEINCLUDE "text_data/E07GPFT.ebtxt"

LOCALEINCLUDE "text_data/EBATTLE5.ebtxt"

LOCALEINCLUDE "text_data/EBATTLE4.ebtxt"

LOCALEINCLUDE "text_data/EBATTLE8.ebtxt"

LOCALEINCLUDE "text_data/EBATTLE2.ebtxt"

LOCALEINCLUDE "text_data/EBATTLE0.ebtxt"

LOCALEINCLUDE "text_data/EBATTLE3.ebtxt"

LOCALEINCLUDE "text_data/EBATTLE9.ebtxt"

LOCALEINCLUDE "text_data/E04GRFD.ebtxt"

LOCALEINCLUDE "text_data/EBATTLE1.ebtxt"

LOCALEINCLUDE "text_data/EGOODS2.ebtxt"

LOCALEINCLUDE "text_data/UNKNOWN_EFA2FA.ebtxt"

.INCLUDE "data/command_window_text.asm"

.INCLUDE "data/status_window_text.asm"

LOCALEINCLUDE "text_data/KEYBOARD.ebtxt"

.INCLUDE "data/name_input_window_selection_layout_pointers.asm"

LOCALEINCLUDE "text_data/UNKNOWN7.ebtxt"

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

.INCLUDE "system/debug/load_debug_cursor_graphics.asm"

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

DEBUG_MENU_FONT:
	BINARY "fonts/debug.gfx"

.INCLUDE "data/unknown/EFEF70.asm"

.INCLUDE "data/debug/debug_font_palette.asm"

DEBUG_CURSOR_GRAPHICS:
	BINARY "debug_cursor.gfx"

.INCLUDE "data/unknown/EFF0D7.asm"

.INCLUDE "data/unknown/EFF1BB.asm"

.INCLUDE "data/unknown_version_string.asm"

.INCLUDE "data/unused/EFF3DB.asm"

.INCLUDE "data/unused/EFF511.asm"

.INCLUDE "data/unused/EFF53B.asm"

.INCLUDE "data/debug/debug_cursor_spritemap.asm"
