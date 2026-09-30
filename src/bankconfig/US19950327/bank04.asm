.SEGMENT "BANK04"
.INCLUDE "eventmacros.asm"
.INCLUDE "common.asm"
.INCLUDE "config.asm"
.INCLUDE "structs.asm"
.INCLUDE "symbols/bank00.inc.asm"
.INCLUDE "symbols/bank01.inc.asm"
.INCLUDE "symbols/bank02.inc.asm"
.INCLUDE "symbols/bank03.inc.asm"
.INCLUDE "symbols/bank04.inc.asm"
.INCLUDE "symbols/bank2f.inc.asm"
.INCLUDE "symbols/audiopacks.inc.asm"
.INCLUDE "symbols/doors.inc.asm"
.INCLUDE "symbols/globals.inc.asm"
.INCLUDE "symbols/map.inc.asm"
.INCLUDE "symbols/misc.inc.asm"
.INCLUDE "symbols/text.inc.asm"
LOCALEINCLUDE "flyovers.symbols.asm"

.INCLUDE "unused/set_inidisp.asm"

.INCLUDE "unused/restore_inidisp.asm"

.INCLUDE "overworld/actionscript/is_entity_onscreen_reset_animation.asm"

.INCLUDE "overworld/actionscript/sleep_slot_frames.asm"

.INCLUDE "text/upload_text_tile.asm"

.INCLUDE "system/reserve_bg2_tile.asm"

.INCLUDE "data/events/script_pointers.asm"

.INCLUDE "system/prepare_game_failure.asm"

.INCLUDE "system/game_failure_loop.asm"

.INCLUDE "data/map/footstep_sound_table.asm"

.INCLUDE "data/graphics/blank_tiles.asm"

.INCLUDE "data/text/manpu_table.asm"

.INCLUDE "data/events/scripts/785.asm"

.INCLUDE "data/events/entity_overlays.asm"

.INCLUDE "data/events/tasks/C40F18.asm"

.INCLUDE "data/events/naming_screen/naming_screen_cleanup.asm"

.INCLUDE "data/events/naming_screen/initialize_naming_screen_character.asm"

.INCLUDE "data/events/naming_screen/initialize_naming_screen_animation.asm"

.INCLUDE "data/events/scripts/502.asm"

.INCLUDE "data/events/scripts/503.asm"

.INCLUDE "data/events/scripts/504.asm"

.INCLUDE "data/events/scripts/505.asm"

.INCLUDE "data/events/scripts/506.asm"

.INCLUDE "data/events/scripts/507.asm"

.INCLUDE "data/events/scripts/508.asm"

.INCLUDE "data/events/scripts/509.asm"

.INCLUDE "data/events/scripts/510.asm"

.INCLUDE "data/events/scripts/511.asm"

.INCLUDE "data/events/scripts/512.asm"

.INCLUDE "data/events/scripts/513.asm"

.INCLUDE "data/events/scripts/514.asm"

.INCLUDE "data/events/scripts/515.asm"

.INCLUDE "data/events/scripts/516.asm"

.INCLUDE "data/events/scripts/517.asm"

.INCLUDE "data/events/scripts/518.asm"

.INCLUDE "data/events/scripts/519.asm"

.INCLUDE "data/events/scripts/520.asm"

.INCLUDE "data/events/scripts/521.asm"

.INCLUDE "data/events/scripts/522.asm"

.INCLUDE "data/events/scripts/523.asm"

.INCLUDE "data/events/scripts/524.asm"

.INCLUDE "data/events/scripts/525.asm"

.INCLUDE "data/events/scripts/526.asm"

.INCLUDE "data/events/scripts/527.asm"

.INCLUDE "data/events/scripts/528.asm"

.INCLUDE "data/events/scripts/529.asm"

.INCLUDE "data/events/scripts/530.asm"

.INCLUDE "data/events/scripts/534.asm"

.INCLUDE "data/events/naming_screen/anim_naming_screen_ness.asm"

.INCLUDE "data/events/naming_screen/anim_naming_screen_ness_pose.asm"

.INCLUDE "data/events/naming_screen/anim_naming_screen_ness_surprised.asm"

.INCLUDE "data/events/naming_screen/anim_naming_screen_ness_shadow.asm"

.INCLUDE "data/events/naming_screen/anim_naming_screen_ness_surprise_mark.asm"

.INCLUDE "data/events/naming_screen/anim_naming_screen_paula.asm"

.INCLUDE "data/events/naming_screen/anim_naming_screen_paula_surprised.asm"

.INCLUDE "data/events/naming_screen/anim_naming_screen_paula_shadow.asm"

.INCLUDE "data/events/naming_screen/anim_naming_screen_paula_music_notes.asm"

.INCLUDE "data/events/naming_screen/anim_naming_screen_jeff.asm"

.INCLUDE "data/events/naming_screen/anim_naming_screen_jeff_surprise_mark.asm"

.INCLUDE "data/events/naming_screen/anim_naming_screen_jeff_sweat.asm"

.INCLUDE "data/events/naming_screen/anim_naming_screen_jeff_lightbulb.asm"

.INCLUDE "data/events/naming_screen/anim_naming_screen_poo_cloud.asm"

.INCLUDE "data/events/naming_screen/anim_naming_screen_poo_leaves.asm"

.INCLUDE "data/events/naming_screen/anim_naming_screen_poo_meditating.asm"

.INCLUDE "data/events/naming_screen/anim_naming_screen_poo.asm"

.INCLUDE "data/events/naming_screen/anim_naming_screen_poo_climbing.asm"

.INCLUDE "data/events/naming_screen/anim_naming_screen_ness_dog.asm"

.INCLUDE "data/events/naming_screen/anim_naming_screen_dog.asm"

.INCLUDE "data/events/naming_screen/anim_naming_screen_dog_sleeping.asm"

.INCLUDE "data/events/naming_screen/anim_naming_screen_favorite_food.asm"

.INCLUDE "data/events/naming_screen/anim_naming_screen_favorite_food_leaves.asm"

.INCLUDE "data/events/naming_screen/anim_naming_screen_plate.asm"

.INCLUDE "data/events/naming_screen/anim_naming_screen_plate_leaves.asm"

.INCLUDE "data/events/naming_screen/anim_naming_screen_favorite_thing.asm"

.INCLUDE "data/events/naming_screen/anim_naming_screen_favorite_thing_leaves.asm"

.INCLUDE "data/events/naming_screen/anim_naming_screen_twinkling_stars.asm"

.INCLUDE "system/decomp.asm"

.INCLUDE "unknown/C4/C41DB6.asm"

.INCLUDE "data/unknown/C41EB9.asm"

.INCLUDE "data/unknown/C41EC9.asm"

.INCLUDE "data/unknown/C41ED9.asm"

.INCLUDE "unknown/C4/C41EE9.asm"

.INCLUDE "unknown/C4/C41EF4.asm"

.INCLUDE "overworld/get_screen_angle.asm"

.INCLUDE "data/cardinal_angles.asm"

.INCLUDE "data/unknown/C41FDF.asm"

.INCLUDE "overworld/angle_to_vector.asm"

.INCLUDE "data/angle_to_vector_sine_cosine.asm"

.INCLUDE "system/math/multiply_with_divisor_256.asm"

.INCLUDE "data/events/scripts/787.asm"

.INCLUDE "data/events/scripts/860.asm"

.INCLUDE "data/events/misc/title_screen_common_init.asm"

.INCLUDE "data/events/tasks/title_screen_flash.asm"

.INCLUDE "data/events/scripts/789-proto.asm"

.INCLUDE "data/events/scripts/788.asm"

.INCLUDE "data/events/scripts/790.asm"

.INCLUDE "data/events/scripts/791.asm"

.INCLUDE "data/events/scripts/792.asm"

.INCLUDE "data/events/scripts/793.asm"

.INCLUDE "data/events/scripts/794.asm"

.INCLUDE "data/events/scripts/795.asm"

.INCLUDE "data/events/scripts/796.asm"

.INCLUDE "data/events/scripts/797.asm"

.INCLUDE "data/events/scripts/798.asm"

.INCLUDE "overworld/actionscript/bunbuun_beam_initialization.asm"

.INCLUDE "overworld/actionscript/elevator_initialization.asm"

.INCLUDE "system/set_coldata_cgad_sub.asm"

.INCLUDE "overworld/actionscript/rectangle_window_enable_hdma.asm"

.INCLUDE "overworld/actionscript/rectangle_window_disable_hdma.asm"

.INCLUDE "system/set_window_brightness.asm"

.INCLUDE "overworld/actionscript/darken_screen.asm"

.INCLUDE "unused/C42509.asm"

.INCLUDE "system/enable_brightness_hdma.asm"

.INCLUDE "unused/set_cgad_sub_to_51.asm"

.INCLUDE "unused/set_cgad_sub_to_179.asm"

.INCLUDE "system/disable_brightness_hdma.asm"

.INCLUDE "overworld/actionscript/darken_screen_2_window.asm"

.INCLUDE "overworld/actionscript/enable_spotlight_hdma1.asm"

.INCLUDE "overworld/actionscript/disable_spotlight_hdma1.asm"

.INCLUDE "overworld/actionscript/enable_spotlight_hdma2.asm"

.INCLUDE "overworld/actionscript/disable_spotlight_hdma2.asm"

.INCLUDE "system/background_slide_initialization.asm"

.INCLUDE "system/background_slide_frame_advance.asm"

.INCLUDE "system/background_slide_sprite_frame_advance.asm"

.INCLUDE "system/update_palette_fade.asm"

.INCLUDE "data/events/scripts/859.asm"

.INCLUDE "data/events/tasks/run_blink_effect.asm"

.INCLUDE "data/events/tasks/run_h_stripe_effect.asm"

.INCLUDE "data/events/tasks/run_v_stripe_effect.asm"

.INCLUDE "data/events/tasks/run_dots_effect.asm"

.INCLUDE "system/init_entity_fade_buffer8.asm"

.INCLUDE "system/init_entity_fade_buffer4.asm"

.INCLUDE "system/copy_pixel_row.asm"

.INCLUDE "system/copy_pixel_column.asm"

.INCLUDE "data/graphics/pixel_plane_masks.asm"

.INCLUDE "system/copy_pixel.asm"

.INCLUDE "system/upload_entity_frame_fade.asm"

.INCLUDE "system/enable_letterbox_hdma.asm"

.INCLUDE "data/collision_widths.asm"

.INCLUDE "data/collision_heights.asm"

.INCLUDE "data/pixel_widths.asm"

.INCLUDE "data/pixel_heights.asm"

.INCLUDE "data/hitbox_widths.asm"

.INCLUDE "data/hitbox_heights.asm"

.INCLUDE "data/collision_heights2.asm"

.INCLUDE "data/overworld_sprite_template_pointers.asm"

.INCLUDE "data/graphics/overworld_sprite_templates.asm"

.INCLUDE "overworld/set_party_tick_callbacks.asm"

.INCLUDE "data/map/tile_table_chunks_table.asm"

.INCLUDE "data/graphics/overworld_sprite_vram_offsets.asm"

.INCLUDE "data/graphics/overworld_sprite_oam_tile_numbers.asm"

.INCLUDE "overworld/initialize_movement_speeds.asm"

.INCLUDE "overworld/clear_party_status.asm"

.INCLUDE "system/initialize_party_pointers.asm"

.INCLUDE "overworld/set_overworld_status_suppression.asm"

.INCLUDE "overworld/find_map_object.asm"

.INCLUDE "overworld/save_photo_state.asm"

.INCLUDE "data/item_use_menu_strings.asm"

.INCLUDE "battle/finish_battle_frame.asm"

.INCLUDE "text/hp_pp_window/reset_active_party_member_hp_pp_window-proto.asm"

.INCLUDE "misc/swap_raised_hp_pp_window.asm"

.INCLUDE "battle/row_enemy_flashing_off.asm"

.INCLUDE "battle/row_enemy_flashing_on.asm"

.INCLUDE "text/clear_text_line.asm"

.INCLUDE "text/clear_current_text_line.asm"

.INCLUDE "text/move_text_up_one_line.asm"

.INCLUDE "text/move_text_cursor.asm"

.INCLUDE "text/move_current_text_cursor.asm"

.INCLUDE "text/print_newline.asm"

.INCLUDE "data/text/name_entry_grid_character_offset_table.asm"

.INCLUDE "data/map/reserved_bg2_tilemap.asm"

.INCLUDE "data/text/locked_tiles.asm"

.INCLUDE "text/fill_rest_of_window_line.asm"

.INCLUDE "text/clear_text_tile_attributes.asm"

.INCLUDE "text/set_text_tile_attributes.asm"

.INCLUDE "text/set_text_highlighting.asm"

.INCLUDE "text/next_vwf_tile.asm"

.INCLUDE "text/move_current_text_cursor_option.asm"

.INCLUDE "text/vwf_text_move.asm"

.INCLUDE "text/force_pixel_alignment.asm"

.INCLUDE "text/align_number.asm"

.INCLUDE "text/print_option_start.asm"

.INCLUDE "text/get_string_rendering_width.asm"

.INCLUDE "text/set_centre_alignment.asm"

.INCLUDE "system/initialize_used_bg2_tilemap.asm"

.INCLUDE "text/print_letter.asm"

.INCLUDE "text/get_character_at_cursor_position.asm"

.INCLUDE "text/prefill_keyboard_input-proto.asm"

.INCLUDE "text/empty_keyboard_input.asm"

.INCLUDE "text/write_character_to_keyboard_input_buffers.asm"

.INCLUDE "text/keyboard_input_single_character.asm"

.INCLUDE "text/render_small_text_to_vram.asm"

.INCLUDE "text/print_auto_new_line.asm"

.INCLUDE "text/print_string_auto_new_line.asm"

.INCLUDE "text/print_words_onto_newline-proto.asm"

.INCLUDE "text/load_window_graphics.asm"

.INCLUDE "data/graphics/used_bg2_tilemap_masks.asm"

.INCLUDE "text/free_tile.asm"

.INCLUDE "text/render_text.asm"

.INCLUDE "data/powers_of_two_16.asm"

.INCLUDE "text/finish_text_tile_render.asm"

.INCLUDE "text/upload_text_tile_batch.asm"

.INCLUDE "text/reset_text_render_state.asm"

.INCLUDE "text/free_tile_safe.asm"

.INCLUDE "text/render_vwf_character_to_window.asm"

.INCLUDE "text/get_text_width.asm"

.INCLUDE "text/print_price-proto.asm"

.INCLUDE "text/create_menu_option_table.asm"

.INCLUDE "data/text/battle_to_text.asm"

.INCLUDE "data/text/battle_front_row_text.asm"

.INCLUDE "data/text/battle_back_row_text.asm"

.INCLUDE "data/text/CC_1C_01_data.asm"

.INCLUDE "data/powers_of_two_8.asm"

.INCLUDE "inventory/find_item_in_inventory.asm"

.INCLUDE "inventory/find_item_in_inventory2.asm"

.INCLUDE "inventory/find_inventory_space.asm"

.INCLUDE "inventory/find_inventory_space2.asm"

.INCLUDE "inventory/change_equipped_weapon.asm"

.INCLUDE "inventory/change_equipped_body.asm"

.INCLUDE "inventory/change_equipped_arms.asm"

.INCLUDE "inventory/change_equipped_other.asm"

.INCLUDE "data/item_usable_flags.asm"

.INCLUDE "misc/check_status_group.asm"

.INCLUDE "misc/inflict_status_nonbattle.asm"

.INCLUDE "data/battle/misc_target_text.asm"

.INCLUDE "data/text/phone_call_text.asm"

.INCLUDE "misc/get_required_exp.asm"

.INCLUDE "data/text/status_equip_window_text.asm"

.INCLUDE "data/homesickness_probabilities.asm"

.INCLUDE "unknown/C4/C45C90.asm"

.INCLUDE "unknown/C4/C45DDD.asm"

.INCLUDE "text/reset_vwf_state.asm"

.INCLUDE "misc/check_if_psi_known.asm"

.INCLUDE "system/math/rand_mod.asm"

.INCLUDE "data/map/direction_matrix.asm"

.INCLUDE "overworld/get_direction_to.asm"

.INCLUDE "overworld/find_entity_by_sprite.asm"

.INCLUDE "overworld/find_entity_by_npc_id.asm"

.INCLUDE "overworld/find_entity_by_party_member_id.asm"

.INCLUDE "overworld/fade_npc.asm"

.INCLUDE "overworld/fade_sprite.asm"

.INCLUDE "overworld/change_script_for_entity_by_npc_id.asm"

.INCLUDE "overworld/change_script_for_entity_by_sprite.asm"

.INCLUDE "overworld/find_entity.asm"

.INCLUDE "overworld/get_direction_from_entity_to_entity.asm"

.INCLUDE "overworld/get_direction_from_npc_to.asm"

.INCLUDE "overworld/get_direction_from_sprite_to.asm"

.INCLUDE "overworld/get_direction_from_party_member_to.asm"

.INCLUDE "overworld/set_npc_direction.asm"

.INCLUDE "overworld/set_sprite_direction.asm"

.INCLUDE "overworld/set_party_member_direction.asm"

.INCLUDE "overworld/set_party_direction.asm"

.INCLUDE "overworld/hide_character_or_party.asm"

.INCLUDE "uoverworld/unhide_character_or_party.asm"

.INCLUDE "overworld/create_prepared_entity_npc.asm"

.INCLUDE "overworld/create_prepared_entity_sprite.asm"

.INCLUDE "overworld/spawn_entity_at_self.asm"

.INCLUDE "overworld/disable_entity_by_npc_id.asm"

.INCLUDE "overworld/disable_entity_by_sprite.asm"

.INCLUDE "overworld/disable_entity_by_character_or_party.asm"

.INCLUDE "overworld/enable_entity_by_npc_id.asm"

.INCLUDE "overworld/enable_entity_by_sprite.asm"

.INCLUDE "overworld/enable_entity_by_character_or_party.asm"

.INCLUDE "overworld/camera/focus_camera_on_npc_id.asm"

.INCLUDE "overworld/camera/focus_camera_on_sprite.asm"

.INCLUDE "overworld/camera/clear_camera_focus.asm"

.INCLUDE "overworld/spawn_travelling_photographer.asm"

.INCLUDE "text/display_text_for_actionscript.asm"

.INCLUDE "overworld/actionscript/prepare_party_for_tessie_trip.asm"

.INCLUDE "overworld/actionscript/prepare_party_for_tessie_trip_end.asm"

.INCLUDE "overworld/actionscript/generate_random_leaf_delay.asm"

.INCLUDE "overworld/actionscript/generate_random_leaf_delay_2.asm"

.INCLUDE "overworld/actionscript/unfreeze_tessie_leaves.asm"

.INCLUDE "overworld/actionscript/trigger_talk_text.asm"

.INCLUDE "text/display_text_windowless.asm"

.INCLUDE "overworld/actionscript/get_pressed_buttons.asm"

.INCLUDE "overworld/actionscript/test_entity_right_of_x_coord.asm"

.INCLUDE "overworld/actionscript/test_entity_below_y_coord.asm"

.INCLUDE "overworld/actionscript/test_y_coord_below_leader.asm"

.INCLUDE "overworld/actionscript/get_default_direction.asm"

.INCLUDE "overworld/actionscript/face_direction.asm"

.INCLUDE "overworld/make_npc_look_at_active_entity.asm"

.INCLUDE "overworld/make_sprite_look_at_active_entity.asm"

.INCLUDE "data/direction_table_urdl.asm"

.INCLUDE "overworld/actionscript/get_urdl_direction.asm"

.INCLUDE "data/direction_table_4lr.asm"

.INCLUDE "data/direction_Table_4ud.asm"

.INCLUDE "overworld/actionscript/convert_8_direction_to_4_prefer_left_right.asm"

.INCLUDE "overworld/actionscript/convert_8_direction_to_4_prefer_up_down.asm"

.INCLUDE "unknown/C4/C46AAC.asm"

.INCLUDE "overworld/actionscript/entity_angle_to_destination.asm"

.INCLUDE "overworld/actionscript/set_moving_direction_from_angle.asm"

.INCLUDE "overworld/actionscript/convert_direction_to_angle.asm"

.INCLUDE "overworld/actionscript/get_opposite_direction.asm"

.INCLUDE "data/direction_table_rotated_90.asm"

.INCLUDE "overworld/actionscript/get_direction_rotated_angle_90.asm"

.INCLUDE "overworld/actionscript/set_destination_party_leader.asm"

.INCLUDE "overworld/actionscript/set_destination_prepared.asm"

.INCLUDE "overworld/find_npc_location_for_active_entity.asm"

.INCLUDE "overworld/find_sprite_location_for_active_entity.asm"

.INCLUDE "overworld/get_position_of_party_member.asm"

.INCLUDE "overworld/actionscript/copy_xy_to_vars.asm"

.INCLUDE "overworld/copy_adjusted_xy_to_vars.asm"

.INCLUDE "overworld/actionscript/copy_destination_to_location.asm"

.INCLUDE "overworld/move_entity_to_party_member.asm"

.INCLUDE "overworld/move_entity_to_sprite.asm"

.INCLUDE "overworld/move_entity_to_location_bg1_relative.asm"

.INCLUDE "overworld/actionscript/move_entity_to_random_top_of_screen.asm"

.INCLUDE "overworld/actionscript/move_entity_to_prepared_travelling_photographer_location.asm"

.INCLUDE "overworld/prepare_new_entity_at_existing_entity_location.asm"

.INCLUDE "overworld/prepare_new_entity_at_teleport_destination.asm"

.INCLUDE "overworld/prepare_new_entity.asm"

.INCLUDE "overworld/actionscript/yield_to_text.asm"

.INCLUDE "overworld/queue_interaction_talk_to.asm"

.INCLUDE "overworld/actionscript/test_player_in_area.asm"

.INCLUDE "overworld/actionscript/is_leader_close.asm"

.INCLUDE "unknown/C4/C46F7C.asm"

.INCLUDE "overworld/actionscript/set_movement_from_angle.asm"

.INCLUDE "overworld/move_active_entity_towards_destination.asm"

.INCLUDE "overworld/set_entity_boundaries.asm"

.INCLUDE "overworld/actionscript/direction_to_entity_boundaries.asm"

.INCLUDE "overworld/entity_spiral_movement.asm"

.INCLUDE "overworld/actionscript/halve_y_speed.asm"

.INCLUDE "overworld/actionscript/get_party_count.asm"

.INCLUDE "overworld/actionscript/reload_map_block_event_changes.asm"

.INCLUDE "overworld/actionscript/rerender_row.asm"

.INCLUDE "overworld/actionscript/reload_map_current_location.asm"

.INCLUDE "system/load_background_animation.asm"

.INCLUDE "system/colour_clamp.asm"

.INCLUDE "system/do_palette_fade_step.asm"

.INCLUDE "system/do_all_palettes_fade_step.asm"

.INCLUDE "overworld/actionscript/do_all_palettes_fade_step.asm"

.INCLUDE "overworld/actionscript/set_screen_brightness.asm"

.INCLUDE "data/graphics/spotlight_taper_radii.asm"

.INCLUDE "system/initialize_spotlight_window_hdma_table.asm"

.INCLUDE "overworld/actionscript/enable_spotlight1.asm"

.INCLUDE "overworld/actionscript/enable_spotlight2.asm"

.INCLUDE "system/enable_stage_hdma.asm"

.INCLUDE "system/math/clamp_0_upper.asm"

.INCLUDE "system/rectangle_window_add_hdma_entry.asm"

.INCLUDE "system/rectangle_window_configure.asm"

.INCLUDE "overworld/actionscript/bunbuun_beam_configure.asm"

.INCLUDE "overworld/actionscript/elevator_configure.asm"

.INCLUDE "overworld/actionscript/invert_y_position_relative.asm"

.INCLUDE "overworld/actionscript/load_actionscript_animation.asm"

.INCLUDE "overworld/actionscript/update_actionscript_animation_frame.asm"

.INCLUDE "system/prepare_window_graphics.asm"

.INCLUDE "text/load_text_palette.asm"

.INCLUDE "text/undraw_flyover_text.asm"

.INCLUDE "data/text/lumine_hall.asm"

.INCLUDE "text/convert_text_to_tilemap.asm"

.INCLUDE "text/render_whole_character.asm"

.INCLUDE "text/render_lumine_hall_text.asm"

.INCLUDE "overworld/actionscript/prepare_lumine_hall_text_render.asm"

.INCLUDE "overworld/actionscript/scroll_lumine_hall_text_frame.asm"

.INCLUDE "overworld/actionscript/start_psi_teleport_tutorial.asm"

.INCLUDE "overworld/actionscript/make_party_look_at_active_entity.asm"

.INCLUDE "overworld/actionscript/animated_background_callback.asm"

.INCLUDE "overworld/actionscript/simple_screen_position_callback.asm"

.INCLUDE "overworld/actionscript/simple_screen_position_callback_offset.asm"

.INCLUDE "overworld/actionscript/centre_screen_on_entity_callback.asm"

.INCLUDE "overworld/actionscript/centre_screen_on_entity_callback_offset.asm"

.INCLUDE "data/direction_to_button_map.asm"

.INCLUDE "system/demos/clear_auto_movement_demo.asm"

.INCLUDE "system/demos/record_auto_movement_demo_frame.asm"

.INCLUDE "data/unknown/C48D38.asm"

.INCLUDE "system/demos/record_auto_movement_demo.asm"

.INCLUDE "system/demos/record_auto_movement_demo_n_frames_direction.asm"

.INCLUDE "system/demos/finish_auto_movement_demo_and_start.asm"

.INCLUDE "inventory/is_valid_item_transformation.asm"

.INCLUDE "inventory/initialize_item_transformation_entry.asm"

.INCLUDE "inventory/remove_item_transformation_entry.asm"

.INCLUDE "inventory/process_item_transformations.asm"

.INCLUDE "overworld/get_distance_to_magic_truffle.asm"

.INCLUDE "system/get_colour_fade_slope.asm"

.INCLUDE "overworld/initialize_map_palette_fade.asm"

.INCLUDE "overworld/step_map_palette_fade.asm"

.INCLUDE "overworld/change_map_palette.asm"

.INCLUDE "system/multiply_colour.asm"

.INCLUDE "system/multiply_palettes.asm"

.INCLUDE "system/prepare_palette_fade_tables.asm"

.INCLUDE "system/prepare_loaded_palette_fade_tables.asm"

.INCLUDE "unused/prepare_backup_palette_fade_tables.asm"

.INCLUDE "system/prepare_loaded_palette_for_fade.asm"

.INCLUDE "system/finish_palette_fade.asm"

.INCLUDE "overworld/actionscript/backup_palettes.asm"

.INCLUDE "system/perform_palette_fade.asm"

.INCLUDE "overworld/actionscript/clear_bg3_tilemap.asm"

.INCLUDE "overworld/actionscript/open_prayer_window.asm"

.INCLUDE "text/invert_rendered_text.asm"

.INCLUDE "text/render_large_character_internal_common.asm"

.INCLUDE "text/render_large_character_internal.asm"

.INCLUDE "text/flyover_wait_frame.asm"

.INCLUDE "text/prepare_new_flyover_coffeetea_scene.asm"

.INCLUDE "text/flyover_copy_rendered_text.asm"

.INCLUDE "text/finish_line.asm"

.INCLUDE "text/flyover_set_pixel_offset.asm"

.INCLUDE "text/render_flyover_party_member_name-proto.asm"

.INCLUDE "text/render_flyover_characters.asm"

.INCLUDE "text/coffeetea_single_frame_scroll.asm"

.INCLUDE "text/coffee_tea_scene.asm"

.INCLUDE "data/text/flyover_text_pointers.asm"

.INCLUDE "overworld/actionscript/run_flyover.asm"

.INCLUDE "data/text/battle_menu_text.asm"

.INCLUDE "data/battle/dead_targettable_actions.asm"

.INCLUDE "battle/autohealing.asm"

.INCLUDE "battle/autolifeup.asm"

.INCLUDE "data/battle/battle_window_sizes.asm"

.INCLUDE "battle/check_if_valid_target.asm"

.INCLUDE "battle/target_enemy_by_battler_index.asm"

.INCLUDE "data/powers_of_two_32.asm"

.INCLUDE "data/battle/prayer_list.asm"

.INCLUDE "data/battle/prayer_text_pointers.asm"

.INCLUDE "data/battle/giygas_death_static_transition_delays.asm"

.INCLUDE "data/battle/final_giygas_prayer_noise_table.asm"

.INCLUDE "intro/setup_giygas_overlay.asm"

.INCLUDE "data/graphics/vertical_shake_offsets.asm"

.INCLUDE "data/graphics/oval_window_swirl.asm"

.INCLUDE "data/graphics/evt_pray_oval_window.asm"

.INCLUDE "data/unknown/C4A626.asm"

.INCLUDE "data/unknown/C4A652.asm"

.INCLUDE "overworld/start_swirl.asm"

.INCLUDE "overworld/update_swirl_frame.asm"

.INCLUDE "data/sound_stone_orbit_pointers.asm"

.INCLUDE "data/sound_stone_unknown1.asm"

.INCLUDE "data/sound_stone_unknown2.asm"

.INCLUDE "data/sound_stone_unknown3.asm"

.INCLUDE "data/sound_stone_unknown4.asm"

.INCLUDE "data/sound_stone_unknown5.asm"

.INCLUDE "data/sound_stone_unknown6.asm"

.INCLUDE "data/music/sound_stone_music.asm"

.INCLUDE "data/sound_stone_unknown7.asm"

.INCLUDE "data/sound_stone_unknown8.asm"

.INCLUDE "data/sound_stone_melody_flags.asm"

.INCLUDE "overworld/use_sound_stone.asm"

.INCLUDE "overworld/allocate_and_upload_overlay_sprite.asm"

.INCLUDE "overworld/load_overlay_sprites.asm"

.INCLUDE "overworld/manpu/adjust_manpu_positioning.asm"

.INCLUDE "overworld/manpu/create_manpu.asm"

.INCLUDE "overworld/manpu/delete_manpu.asm"

.INCLUDE "overworld/manpu/create_manpu_by_party_member.asm"

.INCLUDE "overworld/manpu/delete_manpu_by_party_member.asm"

.INCLUDE "overworld/manpu/create_manpu_by_npc_id.asm"

.INCLUDE "overworld/manpu/delete_manpu_by_npc_id.asm"

.INCLUDE "overworld/manpu/create_manpu_by_sprite.asm"

.INCLUDE "overworld/manpu/delete_manpu_by_sprite.asm"

.INCLUDE "unused/create_manpu_by_constant.asm"

.INCLUDE "unused/delete_manpu_by_constant.asm"

.INCLUDE "overworld/path/sbrk.asm"

.INCLUDE "overworld/path/get_heap_size.asm"

.INCLUDE "overworld/path/main.asm"

.INCLUDE "overworld/path/initialize_path_matrix.asm"

.INCLUDE "overworld/path/initialize_pathers.asm"

.INCLUDE "overworld/path/paint_path_matrix_pass_1.asm"

.INCLUDE "overworld/path/paint_path_matrix_pass_2.asm"

.INCLUDE "overworld/path/build_path_points.asm"

.INCLUDE "overworld/path/trim_redundancies.asm"

.INCLUDE "data/text/file_select_text.asm"

.INCLUDE "game_over/load_game_over_screen.asm"

.INCLUDE "game_over/set_game_over_fade_target_palette.asm"

.INCLUDE "game_over/do_game_over_palette_fade.asm"

.INCLUDE "text/skippable_pause.asm"

.INCLUDE "game_over/game_over_fade_to_white.asm"

.INCLUDE "game_over/game_over_fade_to_map.asm"

.INCLUDE "game_over/game_over_prompt.asm"

.INCLUDE "overworld/spawn.asm"

.INCLUDE "overworld/clear_entity_fade_buffer.asm"

.INCLUDE "overworld/allocate_entity_fade_buffer.asm"

.INCLUDE "overworld/clear_entity_fade_entry.asm"

.INCLUDE "overworld/initialize_entity_fade.asm"

.INCLUDE "overworld/actionscript/clear_all_blinking.asm"

.INCLUDE "overworld/actionscript/blink_visible.asm"

.INCLUDE "overworld/actionscript/blink_invisible.asm"

.INCLUDE "overworld/actionscript/end_fade.asm"

.INCLUDE "overworld/actionscript/h_stripe.asm"

.INCLUDE "overworld/actionscript/v_stripe.asm"

.INCLUDE "overworld/actionscript/obj_fx_clear_dot_buffer.asm"

.INCLUDE "overworld/actionscript/obj_fx_dots.asm"

.INCLUDE "text/transliterate_consonant_vowel_pair.asm"

.INCLUDE "text/transliterate_string.asm"

.INCLUDE "overworld/get_town_map_id.asm"

.INCLUDE "overworld/animate_town_map_icon_palette.asm"

.INCLUDE "overworld/draw_town_map_player_icon.asm"

.INCLUDE "overworld/draw_town_map_icons.asm"

.INCLUDE "overworld/load_town_map_data.asm"

.INCLUDE "overworld/display_town_map.asm"

.INCLUDE "overworld/debug/town_map_debug.asm"

.INCLUDE "intro/display_animated_naming_sprite.asm"

.INCLUDE "intro/exit_animated_naming_sprite.asm"

.INCLUDE "intro/create_naming_summary_entities.asm"

.INCLUDE "intro/run_attract_mode_scene.asm"

.INCLUDE "intro/init_intro.asm"

.INCLUDE "intro/set_decompressed_arrangement_priority_bit.asm"

.INCLUDE "intro/decomp_itoi_production.asm"

.INCLUDE "intro/decomp_nintendo_presentation.asm"

.INCLUDE "data/map/your_sanctuary_locations.asm"

.INCLUDE "overworld/initialize_your_sanctuary_display.asm"

.INCLUDE "overworld/enable_your_sanctuary_display.asm"

.INCLUDE "overworld/prepare_your_sanctuary_location_palette_data.asm"

.INCLUDE "overworld/prepare_your_sanctuary_location_tile_arrangement_data.asm"

.INCLUDE "overworld/prepare_your_sanctuary_location_tileset_data.asm"

.INCLUDE "overworld/load_your_sanctuary_location_data.asm"

.INCLUDE "overworld/load_your_sanctuary_location.asm"

.INCLUDE "overworld/display_your_sanctuary_location.asm"

.INCLUDE "overworld/test_your_sanctuary_display.asm"

.INCLUDE "system/strcat.asm"

.INCLUDE "ending/load_cast_scene-proto.asm"

.INCLUDE "ending/set_cast_scroll_threshold.asm"

.INCLUDE "ending/check_cast_scroll_threshold.asm"

.INCLUDE "ending/handle_cast_scrolling.asm"

.INCLUDE "ending/render_cast_name_text-proto.asm"

.INCLUDE "data/character_guardian_text.asm"

.INCLUDE "ending/prepare_dynamic_cast_name_text.asm"

.INCLUDE "ending/prepare_cast_name_tilemap.asm"

.INCLUDE "ending/copy_cast_name_tilemap.asm"

.INCLUDE "ending/print_cast_name.asm"

.INCLUDE "ending/print_cast_name_party.asm"

.INCLUDE "ending/print_cast_name_entity_var0.asm"

.INCLUDE "ending/upload_special_cast_palette.asm"

.INCLUDE "ending/create_entity_at_v01_plus_bg3y.asm"

.INCLUDE "ending/is_entity_still_on_cast_screen.asm"

.INCLUDE "ending/play_cast_scene.asm"

.INCLUDE "unused/C4EDA3.asm"

.INCLUDE "unused/C4EE9D.asm"

.INCLUDE "ending/enqueue_credits_dma.asm"

.INCLUDE "ending/process_credits_dma_queue.asm"

.INCLUDE "ending/initialize_credits_scene.asm"

.INCLUDE "ending/try_rendering_photograph.asm"

.INCLUDE "ending/count_photo_flags.asm"

.INCLUDE "ending/slide_credits_photograph.asm"

.INCLUDE "ending/play_credits.asm"

.INCLUDE "overworld/actionscript/delivery/get_entity_delivery_attempt_count.asm"

.INCLUDE "overworld/actionscript/delivery/clear_entity_delivery_attempt_count.asm"

.INCLUDE "overworld/actionscript/delivery/get_entity_has_delivery_attempts_left-proto.asm"

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

.INCLUDE "data/music/dataset_table.asm"

.INCLUDE "data/music/pack_pointer_table.asm"

.INCLUDE "audio/get_audio_bank.asm"

.INCLUDE "audio/initialize_music_subsystem.asm"

.INCLUDE "audio/change_music.asm"

.INCLUDE "audio/set_num_channels.asm"

.INCLUDE "overworld/set_auto_sector_music_changes.asm"
