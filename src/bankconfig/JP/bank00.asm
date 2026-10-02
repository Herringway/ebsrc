.SEGMENT "BANK00"
.INCLUDE "common.asm"
.INCLUDE "config.asm"
.INCLUDE "eventmacros.asm"
.INCLUDE "structs.asm"
.INCLUDE "symbols/bank00.inc.asm"
.INCLUDE "symbols/bank01.inc.asm"
.INCLUDE "symbols/bank02.inc.asm"
.INCLUDE "symbols/bank03.inc.asm"
.INCLUDE "symbols/bank04.inc.asm"
.INCLUDE "symbols/bank2f.inc.asm"
.INCLUDE "symbols/doors.inc.asm"
.INCLUDE "symbols/globals.inc.asm"
.INCLUDE "symbols/map.inc.asm"
.INCLUDE "symbols/misc.inc.asm"
.INCLUDE "symbols/sram.inc.asm"
.INCLUDE "symbols/text.inc.asm"

.INCLUDE "overworld/actionscript/clear_entity_draw_sorting_table.asm"

.INCLUDE "overworld/setup_vram.asm"

.INCLUDE "overworld/initialize.asm"

.INCLUDE "system/load_tileset_anim.asm"

.INCLUDE "system/animate_tileset.asm"

.INCLUDE "system/load_palette_anim.asm"

.INCLUDE "system/animate_palette.asm"

.INCLUDE "unused/C0035B.asm"

.INCLUDE "system/get_colour_average.asm"

.INCLUDE "overworld/adjust_single_colour.asm"

.INCLUDE "overworld/adjust_sprite_palettes_by_average.asm"

.INCLUDE "overworld/prepare_average_for_sprite_palettes.asm"

.INCLUDE "overworld/load_tile_collision.asm"

.INCLUDE "overworld/replace_block.asm"

.INCLUDE "overworld/load_map_block_event_changes.asm"

.INCLUDE "overworld/load_special_sprite_palette.asm"

.INCLUDE "overworld/load_map_palette.asm"

.INCLUDE "overworld/load_map_at_sector.asm"

.INCLUDE "overworld/load_sector_attributes.asm"

.INCLUDE "overworld/load_map_row.asm"

.INCLUDE "overworld/load_map_column.asm"

.INCLUDE "overworld/load_collision_row.asm"

.INCLUDE "overworld/load_collision_column.asm"

.INCLUDE "overworld/load_map_row_vram.asm"

.INCLUDE "overworld/load_map_column_vram.asm"

.INCLUDE "unknown/C0/C01181.asm"

.INCLUDE "unknown/C0/C0122A.asm"

.INCLUDE "overworld/reload_map_at_position.asm"

.INCLUDE "overworld/load_map_at_position.asm"

.INCLUDE "overworld/refresh_map_at_position.asm"

.INCLUDE "unknown/C0/C01731.asm"

.INCLUDE "system/debug/map_viewer.asm"

.INCLUDE "overworld/reload_map.asm"

.INCLUDE "overworld/initialize_map.asm"

.INCLUDE "overworld/reload_map_current_location.asm"

.INCLUDE "overworld/rerender_row.asm"

.INCLUDE "overworld/initialize_misc_object_data.asm"

.INCLUDE "overworld/clear_sprite_table.asm"

.INCLUDE "overworld/find_free_space_7E4682.asm"

.INCLUDE "system/free_spritemap.asm"

.INCLUDE "system/sprite_vram_table_overwrite.asm"

.INCLUDE "system/alloc_sprite_mem.asm"

.INCLUDE "system/reserve_overworld_sprite_vram.asm"

.INCLUDE "system/prepare_spritemap.asm"

.INCLUDE "overworld/get_overworld_sprite_tile_size.asm"

.INCLUDE "overworld/create_entity.asm"

.INCLUDE "overworld/actionscript/active_script_cleanup_self.asm"

.INCLUDE "overworld/delete_overworld_entity.asm"

.INCLUDE "overworld/clear_entities.asm"

.INCLUDE "overworld/clear_entities_including_party.asm"

.INCLUDE "overworld/try_spawn_npcs-jp.asm"

.INCLUDE "overworld/spawn_npcs_row.asm"

.INCLUDE "overworld/spawn_npcs_column.asm"

.INCLUDE "overworld/get_encounter_group_id.asm"

.INCLUDE "overworld/spawn_enemies_from_group.asm"

.INCLUDE "overworld/spawn_horizontal.asm"

.INCLUDE "overworld/spawn_vertical.asm"

.INCLUDE "overworld/initialize_movement_speeds.asm"

.INCLUDE "overworld/update_mushroomized_walking.asm"

.INCLUDE "overworld/reset_mushroomized_walking.asm"

.INCLUDE "overworld/mushroomization_movement_swap.asm"

.INCLUDE "overworld/clear_party.asm"

.INCLUDE "overworld/adjust_position_horizontal.asm"

.INCLUDE "overworld/adjust_position_vertical.asm"

.INCLUDE "unused/reset_character_afflictions.asm"

.INCLUDE "overworld/update_party_npcs-jp.asm"

.INCLUDE "overworld/update_party-jp.asm"

.INCLUDE "misc/increment_party_member_indices-jp.asm"

.INCLUDE "misc/decrement_party_member_indices.asm"

.INCLUDE "overworld/set_follower_entity_to_leader_position.asm"

.INCLUDE "unknown/C0/C03A24.asm"

.INCLUDE "unknown/C0/C03A94.asm"

.INCLUDE "overworld/sector_music_update.asm"

.INCLUDE "overworld/collision/check_bicycle_collision_flags.asm"

.INCLUDE "overworld/get_on_bicycle.asm"

.INCLUDE "overworld/get_off_bicycle.asm"

.INCLUDE "overworld/actionscript/initialize_party_member.asm"

.INCLUDE "unused/C03E25-jp.asm"

.INCLUDE "overworld/get_character_position_index-jp.asm"

.INCLUDE "overworld/get_position_index_delta.asm"

.INCLUDE "overworld/get_new_position_index.asm"

.INCLUDE "overworld/actionscript/move_party_to_leader_position-jp.asm"

.INCLUDE "overworld/set_leader_position.asm"

.INCLUDE "system/center_screen.asm"

.INCLUDE "system/demos/start_auto_movement_demo.asm"

.INCLUDE "system/demos/stop_auto_movement_demo.asm"

.INCLUDE "overworld/map_input_to_direction.asm"

.INCLUDE "overworld/find_checkable_npc.asm"

.INCLUDE "overworld/test_nearby_checkable_npc.asm"

.INCLUDE "overworld/find_nearby_checkable_npc.asm"

.INCLUDE "overworld/face_opposite_leader.asm"

.INCLUDE "overworld/find_talkable_npc.asm"

.INCLUDE "overworld/test_nearby_talkable_npc.asm"

.INCLUDE "overworld/find_nearby_talkable_npc.asm"

.INCLUDE "overworld/handle_normal_movement.asm"

.INCLUDE "overworld/camera/move_camera_to_entity.asm"

.INCLUDE "overworld/handle_escalator_movement.asm"

.INCLUDE "overworld/handle_bicycle_movement-jp.asm"

.INCLUDE "overworld/camera/restore_camera_mode.asm"

.INCLUDE "overworld/camera/switch_to_camera_mode_3.asm"

.INCLUDE "overworld/camera/handle_camera_mode_3.asm"

.INCLUDE "overworld/camera/handle_special_camera.asm"

.INCLUDE "overworld/move_party_leader.asm"

.INCLUDE "overworld/party_member_tick.asm"

.INCLUDE "overworld/restore_background_layers.asm"

.INCLUDE "overworld/red_flash.asm"

.INCLUDE "overworld/try_show_hp_alert.asm"

.INCLUDE "overworld/deal_overworld_damage.asm"

.INCLUDE "overworld/party_leader_tick.asm"

.INCLUDE "battle/init_common.asm"

.INCLUDE "unknown/C0/C052D4.asm"

.INCLUDE "overworld/get_total_party_level.asm"

.INCLUDE "overworld/collision/get_collision_at_loaded_tile.asm"

.INCLUDE "overworld/collision/check_vertical_up_tile_collision.asm"

.INCLUDE "overworld/collision/check_vertical_down_tile_collision.asm"

.INCLUDE "overworld/collision/check_horizontal_left_tile_collision.asm"

.INCLUDE "overworld/collision/check_horizontal_right_tile_collision.asm"

.INCLUDE "overworld/collision/perform_collision_checks.asm"

.INCLUDE "overworld/collision/check_north_movement_map_collision.asm"

.INCLUDE "overworld/collision/check_south_movement_map_collision.asm"

.INCLUDE "overworld/collision/check_west_movement_map_collision.asm"

.INCLUDE "overworld/collision/check_east_movement_map_collision.asm"

.INCLUDE "overworld/collision/check_diagonal_movement_collision.asm"

.INCLUDE "overworld/collision/check_movement_map_collision.asm"

.INCLUDE "overworld/collision/get_movement_collision_flags.asm"

.INCLUDE "overworld/collision/get_collision_flags.asm"

.INCLUDE "overworld/collision/check_enemy_can_move.asm"

.INCLUDE "overworld/collision/update_entity_collision.asm"

.INCLUDE "overworld/actionscript/get_active_entity_map_collision_prospective.asm"

.INCLUDE "overworld/actionscript/update_entity_enemy_collision.asm"

.INCLUDE "overworld/actionscript/update_flying_entity_enemy_collision.asm"

.INCLUDE "overworld/collision/get_surface_flags_horizontal.asm"

.INCLUDE "overworld/collision/get_surface_flags_vertical.asm"

.INCLUDE "unknown/C0/C05FD1.asm"

.INCLUDE "overworld/collision/npc_collision_check.asm"

.INCLUDE "overworld/collision/npc_entity_collision_check.asm"

.INCLUDE "overworld/collision/enemy_entity_collision_check.asm"

.INCLUDE "overworld/actionscript/set_entity_to_entity_collision_prospective_enemy.asm"

.INCLUDE "overworld/actionscript/set_entity_to_entity_collision_prospective_npc.asm"

.INCLUDE "overworld/unqueue_interaction.asm"

.INCLUDE "overworld/queue_interaction.asm"

.INCLUDE "overworld/get_last_queued_interaction_type.asm"

.INCLUDE "overworld/get_last_queued_interaction_pointer.asm"

.INCLUDE "overworld/queue_entity_creation_request.asm"

.INCLUDE "overworld/process_entity_creation_requests.asm"

.INCLUDE "unknown/C0/C065C2.asm"

.INCLUDE "overworld/screen_transition.asm"

.INCLUDE "overworld/get_screen_transition_sound_effect.asm"

.INCLUDE "overworld/load_sector_music.asm"

.INCLUDE "overworld/change_map_music.asm"

.INCLUDE "overworld/change_map_music_immediately.asm"

.INCLUDE "overworld/get_default_music.asm"

.INCLUDE "overworld/reload_map_music.asm"

.INCLUDE "overworld/interact_map_switch.asm"

.INCLUDE "overworld/interact_object.asm"

.INCLUDE "overworld/interact_map_npc.asm"

.INCLUDE "overworld/interact_rope_ladder.asm"

.INCLUDE "overworld/interact_door.asm"

.INCLUDE "overworld/spawn_buzz_buzz.asm"

.INCLUDE "overworld/remove_nontransition_surviving_interactions.asm"

.INCLUDE "overworld/door_transition.asm"

.INCLUDE "data/map/escalator_entry_offsets_x.asm"

.INCLUDE "data/map/escalator_exit_offsets_x.asm"

.INCLUDE "data/map/stair_input_direction_map.asm"

.INCLUDE "overworld/end_stair_movement.asm"

.INCLUDE "overworld/enter_escalator.asm"

.INCLUDE "overworld/exit_escalator.asm"

.INCLUDE "overworld/interact_escalator-jp.asm"

.INCLUDE "overworld/get_on_stairs.asm"

.INCLUDE "overworld/get_off_stairs.asm"

.INCLUDE "overworld/determine_stair_movement_direction.asm"

.INCLUDE "overworld/interact_stairs.asm"

.INCLUDE "overworld/disable_hotspot.asm"

.INCLUDE "overworld/reload_hotspots.asm"

.INCLUDE "overworld/activate_hotspot.asm"

.INCLUDE "overworld/queue_hotspot_interaction.asm"

.INCLUDE "overworld/get_map_object_at.asm"

.INCLUDE "overworld/interact_map_object.asm"

.INCLUDE "overworld/process_queued_interactions.asm"

.INCLUDE "overworld/restore_party_speed.asm"

.INCLUDE "overworld/boost_party_speed.asm"

.INCLUDE "overworld/create_mini_ghost_entity.asm"

.INCLUDE "overworld/delete_mini_ghost_entity.asm"

.INCLUDE "overworld/update_mini_ghost_position.asm"

.INCLUDE "overworld/determine_party_member_sprite.asm"

.INCLUDE "ending/get_credits_photograph_party_sprite.asm"

.INCLUDE "unknown/C0/C07A31.asm"

.INCLUDE "overworld/party_movement_frame.asm"

.INCLUDE "unknown/C0/C07B52.asm"

.INCLUDE "overworld/party_intangibility_flash.asm"

.SEGMENT "BANK00B"

.INCLUDE "system/reset.asm"

.INCLUDE "system/reset_vector.asm"

.INCLUDE "system/nmi_vector.asm"

.INCLUDE "system/irq_vector.asm"

.INCLUDE "system/irq_nmi.asm"

.INCLUDE "system/test_sram_size.asm"

.INCLUDE "system/demos/demo_recording_end.asm"

.INCLUDE "system/demos/demo_recording_start.asm"

.INCLUDE "system/demos/demo_replay_start.asm"

.INCLUDE "system/read_joypad.asm"

.INCLUDE "system/demos/demo_record_buttons.asm"

.INCLUDE "system/update_pad_state.asm"

.INCLUDE "system/process_sfx_queue.asm"

.INCLUDE "system/execute_irq_callback.asm"

.INCLUDE "system/default_irq_callback.asm"

.INCLUDE "system/set_irq_callback.asm"

.INCLUDE "system/reset_irq_callback.asm"

.INCLUDE "unused/C08529.asm"

.INCLUDE "system/prepare_palette_upload.asm"

.INCLUDE "unused/C08573.asm"

.INCLUDE "system/transfer_to_vram.asm"

.INCLUDE "system/prepare_vram_copy.asm"

.INCLUDE "system/copy_to_vram_redirect.asm"

.INCLUDE "system/copy_to_vram.asm"

.INCLUDE "system/sbrk.asm"

.INCLUDE "system/enable_nmi_joypad.asm"

.INCLUDE "system/prepare_for_immediate_dma.asm"

.INCLUDE "system/set_force_blank.asm"

.INCLUDE "system/wait_until_next_frame.asm"

.INCLUDE "system/wait_n_frames.asm"

.INCLUDE "system/set_inidisp_far.asm"

.INCLUDE "system/set_inidisp.asm"

.INCLUDE "system/set_mosaic_fade_redirect.asm"

.INCLUDE "system/set_mosaic_fade.asm"

.INCLUDE "system/fade_in_with_mosaic.asm"

.INCLUDE "system/fade_out_with_mosaic.asm"

.INCLUDE "system/fade_in.asm"

.INCLUDE "system/fade_out.asm"

.INCLUDE "system/wait_for_fade_to_finish_no_actionscript.asm"

.INCLUDE "system/sprites/set_spritemap_bank.asm"

.INCLUDE "system/oam_clear.asm"

.INCLUDE "system/render_first_frame.asm"

.INCLUDE "system/update_screen.asm"

.INCLUDE "system/sprites/render_sprites_to_oam.asm"

.INCLUDE "system/debug/render_sprite.asm"

.INCLUDE "system/sprites/draw_sprite_redirect.asm"

.INCLUDE "system/sprites/draw_sprite.asm"

.INCLUDE "data/draw_sprite_pointers.asm"

.INCLUDE "system/sprites/add_priority_0_sprite.asm"

.INCLUDE "system/sprites/add_priority_1_sprite.asm"

.INCLUDE "system/sprites/add_priority_2_sprite.asm"

.INCLUDE "system/sprites/add_priority_3_sprite.asm"

.INCLUDE "system/sprites/render_sprite_to_oam.asm"

.INCLUDE "system/set_bg_mode.asm"

.INCLUDE "system/set_oam_size.asm"

.INCLUDE "system/set_bg1_vram_location.asm"

.INCLUDE "system/set_bg2_vram_location.asm"

.INCLUDE "system/set_bg3_vram_location.asm"

.INCLUDE "system/set_bg4_vram_location.asm"

.INCLUDE "system/math/rand.asm"

.INCLUDE "system/memcpy16.asm"

.INCLUDE "system/memcpy24.asm"

.INCLUDE "system/memset16.asm"

.INCLUDE "system/memset24.asm"

.INCLUDE "system/strlen.asm"

.INCLUDE "system/strcmp.asm"

.INCLUDE "system/setjmp.asm"

.INCLUDE "system/longjmp.asm"

.INCLUDE "data/palette_dma_parameters.asm"

.INCLUDE "data/dma_table.asm"

.INCLUDE "data/unknown/C08FE6.asm"

.INCLUDE "system/math/mult8.asm"

.INCLUDE "system/math/mult168.asm"

.INCLUDE "system/math/mult16.asm"

.INCLUDE "system/math/mult32.asm"

.INCLUDE "system/math/division8.asm"

.INCLUDE "system/math/division16.asm"

.INCLUDE "system/math/division32.asm"

.INCLUDE "system/math/division8s.asm"

.INCLUDE "system/math/division16s.asm"

.INCLUDE "system/math/division32s.asm"

.INCLUDE "system/math/modulus8s.asm"

.INCLUDE "system/math/modulus16s.asm"

.INCLUDE "system/math/modulus32s.asm"

.INCLUDE "system/math/modulus8.asm"

.INCLUDE "system/math/modulus16.asm"

.INCLUDE "system/math/modulus32.asm"

.INCLUDE "system/math/asl16.asm"

.INCLUDE "system/math/asl32.asm"

.INCLUDE "system/math/asr8.asm"

.INCLUDE "system/math/asr16.asm"

.INCLUDE "system/math/asr32.asm"

.INCLUDE "system/jump_to_temporary_pointer.asm"

.INCLUDE "overworld/init_entity_subsystem-jp.asm"

.INCLUDE "overworld/init_entity.asm"

.INCLUDE "unknown/C0/C09403.asm"

.INCLUDE "overworld/freeze_entities.asm"

.INCLUDE "overworld/unfreeze_entities.asm"

.INCLUDE "overworld/actionscript/run_actionscript_frame.asm"

.INCLUDE "overworld/run_entity_scripts.asm"

.INCLUDE "overworld/run_entity_script.asm"

.INCLUDE "data/movement_control_codes_pointer_table.asm"

.INCLUDE "overworld/actionscript/script/00.asm"

.INCLUDE "overworld/actionscript/script/01.asm"

.INCLUDE "overworld/actionscript/script/24.asm"

.INCLUDE "overworld/actionscript/script/02.asm"

.INCLUDE "overworld/actionscript/script/19.asm"

.INCLUDE "overworld/actionscript/script/03.asm"

.INCLUDE "overworld/actionscript/script/1A.asm"

.INCLUDE "overworld/actionscript/script/1B.asm"

.INCLUDE "overworld/actionscript/script/04.asm"

.INCLUDE "overworld/actionscript/script/05.asm"

.INCLUDE "overworld/actionscript/script/06.asm"

.INCLUDE "overworld/actionscript/script/3B_45.asm"

.INCLUDE "overworld/actionscript/script/28.asm"

.INCLUDE "overworld/actionscript/script/29.asm"

.INCLUDE "overworld/actionscript/script/2A.asm"

.INCLUDE "overworld/actionscript/script/3F_49.asm"

.INCLUDE "overworld/actionscript/script/40_4A.asm"

.INCLUDE "overworld/actionscript/script/41_4B.asm"

.INCLUDE "overworld/actionscript/script/2E.asm"

.INCLUDE "overworld/actionscript/script/2F.asm"

.INCLUDE "overworld/actionscript/script/30.asm"

.INCLUDE "overworld/actionscript/script/31.asm"

.INCLUDE "overworld/actionscript/script/32.asm"

.INCLUDE "overworld/actionscript/script/33.asm"

.INCLUDE "overworld/actionscript/script/34.asm"

.INCLUDE "overworld/actionscript/script/35.asm"

.INCLUDE "overworld/actionscript/script/36.asm"

.INCLUDE "overworld/actionscript/script/2B.asm"

.INCLUDE "overworld/actionscript/script/2C.asm"

.INCLUDE "overworld/actionscript/script/2D.asm"

.INCLUDE "overworld/actionscript/script/37.asm"

.INCLUDE "overworld/actionscript/script/38.asm"

.INCLUDE "overworld/actionscript/script/39.asm"

.INCLUDE "overworld/reset_entity_delta.asm"

.INCLUDE "overworld/actionscript/script/3A.asm"

.INCLUDE "overworld/actionscript/script/43.asm"

.INCLUDE "overworld/actionscript/script/42_4C.asm"

.INCLUDE "overworld/actionscript/script/0A.asm"

.INCLUDE "overworld/actionscript/script/0B.asm"

.INCLUDE "overworld/actionscript/script/10.asm"

.INCLUDE "overworld/actionscript/script/11.asm"

.INCLUDE "overworld/actionscript/script/0C.asm"

.INCLUDE "overworld/actionscript/script/07.asm"

.INCLUDE "overworld/actionscript/script/13.asm"

.INCLUDE "overworld/actionscript/script/08.asm"

.INCLUDE "overworld/actionscript/script/09.asm"

.INCLUDE "overworld/actionscript/script/3C_46.asm"

.INCLUDE "overworld/actionscript/script/3D_47.asm"

.INCLUDE "overworld/actionscript/script/3E_48.asm"

.INCLUDE "overworld/actionscript/script/18.asm"

.INCLUDE "overworld/actionscript/script/14.asm"

.INCLUDE "overworld/actionscript/script/27.asm"

.INCLUDE "overworld/actionscript/script/0D.asm"

.INCLUDE "data/binop_pointers.asm"

.INCLUDE "overworld/actionscript/binop_and.asm"

.INCLUDE "overworld/actionscript/binop_or.asm"

.INCLUDE "overworld/actionscript/binop_add.asm"

.INCLUDE "overworld/actionscript/binop_xor.asm"

.INCLUDE "overworld/actionscript/script/0E.asm"

.INCLUDE "data/events/entity_script_var_tables.asm"

.INCLUDE "overworld/actionscript/script/0F.asm"

.INCLUDE "overworld/actionscript/script/12.asm"

.INCLUDE "overworld/actionscript/script/15.asm"

.INCLUDE "overworld/actionscript/script/16.asm"

.INCLUDE "overworld/actionscript/script/17.asm"

.INCLUDE "overworld/actionscript/script/1C.asm"

.INCLUDE "overworld/actionscript/script/1D.asm"

.INCLUDE "overworld/actionscript/script/1E.asm"

.INCLUDE "overworld/actionscript/script/1F.asm"

.INCLUDE "overworld/actionscript/script/20.asm"

.INCLUDE "overworld/actionscript/script/44.asm"

.INCLUDE "overworld/actionscript/script/21.asm"

.INCLUDE "overworld/actionscript/script/26.asm"

.INCLUDE "overworld/actionscript/script/22.asm"

.INCLUDE "overworld/actionscript/script/23.asm"

.INCLUDE "overworld/actionscript/script/25.asm"

.INCLUDE "overworld/allocate_entity.asm"

.INCLUDE "overworld/delete_entity.asm"

.INCLUDE "overworld/delete_entity_offset.asm"

.INCLUDE "overworld/append_active_entity.asm"

.INCLUDE "overworld/delete_active_entry.asm"

.INCLUDE "unknown/C0/C09C8F.asm"

.INCLUDE "unknown/C0/C09C99.asm"

.INCLUDE "overworld/search_next_entity_table.asm"

.INCLUDE "unknown/C0/C09CD7.asm"

.INCLUDE "overworld/allocate_script.asm"

.INCLUDE "unknown/C0/C09D12.asm"

.INCLUDE "unknown/C0/C09D1F.asm"

.INCLUDE "unknown/C0/C09D3E.asm"

.INCLUDE "unused/find_entity_script.asm"

.INCLUDE "unused/C09D78.asm"

.INCLUDE "overworld/actionscript/script/read8.asm"

.INCLUDE "overworld/actionscript/script/read8_copy.asm"

.INCLUDE "overworld/actionscript/script/read16.asm"

.INCLUDE "overworld/actionscript/script/read16_copy.asm"

.INCLUDE "overworld/actionscript/jump_to_loaded_movement_pointer.asm"

.INCLUDE "overworld/actionscript/clear_sprite_tick_callback.asm"

.INCLUDE "unused/init_entity_extra_common.asm"

.INCLUDE "unused/C09E0A.asm"

.INCLUDE "unused/C09E18.asm"

.INCLUDE "unused/C09E25.asm"

.INCLUDE "unused/C09E3B.asm"

.INCLUDE "overworld/actionscript/create_title_screen_entity.asm"

.INCLUDE "unused/C09E79.asm"

.INCLUDE "unused/C09E8E.asm"

.INCLUDE "unused/C09E98.asm"

.INCLUDE "unused/C09EAC.asm"

.INCLUDE "unused/C09ECE.asm"

.INCLUDE "overworld/test_entity_movement_active.asm"

.INCLUDE "overworld/backup_entity_callback_flags_and_disable.asm"

.INCLUDE "overworld/actionscript/restore_entity_callback_flags.asm"

.INCLUDE "overworld/actionscript/choose_random.asm"

.INCLUDE "overworld/actionscript/generate_random_angle.asm"

.INCLUDE "overworld/actionscript/fade_in.asm"

.INCLUDE "overworld/actionscript/fade_out.asm"

.INCLUDE "overworld/actionscript/update_entity_position_2d.asm"

.INCLUDE "overworld/update_entity_position_3d.asm"

.INCLUDE "overworld/update_entity_position_3d_ignore_surface.asm"

.INCLUDE "system/update_screen_position_bg12d.asm"

.INCLUDE "system/update_screen_position_bg13d.asm"

.INCLUDE "system/update_screen_position_bg32d.asm"

.INCLUDE "overworld/actionscript/move_relative_to_bg3.asm"

.INCLUDE "unused/move_relative_to_bg3.asm"

.INCLUDE "system/update_screen_position_bg13d_dupe.asm"

.INCLUDE "overworld/update_entity_position_absolute.asm"

.INCLUDE "overworld/actionscript/draw_entity.asm"

.INCLUDE "unknown/C0/C0A0E3.asm"

.INCLUDE "unknown/C0/C0A0FA.asm"

.INCLUDE "system/check_hardware.asm"

.INCLUDE "overworld/load_map_block_redirect.asm"

.INCLUDE "overworld/load_map_block.asm"

.INCLUDE "data/unknown/C0A1AE.asm"

.INCLUDE "unknown/C0/C0A1CE.asm"

.INCLUDE "system/copy_map_palette_fade.asm"

.INCLUDE "data/animated_map_palette_buffers.asm"

.INCLUDE "overworld/find_npc_entity.asm"

.INCLUDE "unused/C0A230.asm"

.INCLUDE "overworld/recalculate_entity_screen_position.asm"

.INCLUDE "overworld/party_member_update_screen_position.asm"

.INCLUDE "data/party_slot_distance_cardinal.asm"

.INCLUDE "overworld/party_get_distance_adjustment_up_down.asm"

.INCLUDE "overworld/party_get_distance_adjustment_left_right.asm"

.INCLUDE "data/party_slot_distance_diagonal.asm"

.INCLUDE "overworld/party_get_distance_adjustment_diagonal.asm"

.INCLUDE "data/party_distance_adjustment_pointers.asm"

.INCLUDE "overworld/update_position_callback_pathfinding_enabled.asm"

.INCLUDE "overworld/update_position_callback_no_collision_update.asm"

.INCLUDE "unknown/C0/C0A3A4.asm"

.INCLUDE "overworld/actionscript/update_entity_sprite.asm"

.INCLUDE "overworld/update_sprite_tile_row.asm"

.INCLUDE "data/sprite_direction_mapping_4_direction.asm"

.INCLUDE "data/sprite_direction_mapping_8_direction.asm"

.INCLUDE "system/math/rand_0_3.asm"

.INCLUDE "system/math/rand_0_7.asm"

.INCLUDE "overworld/actionscript/set_direction16.asm"

.INCLUDE "overworld/actionscript/set_direction8.asm"

.INCLUDE "overworld/actionscript/set_direction.asm"

.INCLUDE "overworld/actionscript/set_self_direction.asm"

.INCLUDE "overworld/actionscript/get_self_direction.asm"

.INCLUDE "overworld/actionscript/set_surface_flags.asm"

.INCLUDE "overworld/actionscript/set_movement_speed_constant.asm"

.INCLUDE "overworld/actionscript/get_movement_speed.asm"

.INCLUDE "unused/C0A697.asm"

.INCLUDE "overworld/actionscript/sleep_until_cardinal_pixels_moved.asm"

.INCLUDE "overworld/actionscript/sleep_until_pixels_moved.asm"

.INCLUDE "overworld/actionscript/test_collision_enabled.asm"

.INCLUDE "overworld/actionscript/get_obstacle_flags.asm"

.INCLUDE "overworld/actionscript/get_pathfinding_state.asm"

.INCLUDE "overworld/actionscript/disable_current_entity_collision.asm"

.INCLUDE "overworld/actionscript/clear_current_entity_collision.asm"

.INCLUDE "unknown/C0/C0A6E3.asm"

.INCLUDE "overworld/update_entity_sprite_frame.asm"

.INCLUDE "overworld/update_entity_sprite_frame_current.asm"

.INCLUDE "overworld/actionscript/disable_current_entity_collision2.asm"

.INCLUDE "overworld/actionscript/clear_current_entity_collision2.asm"

.INCLUDE "overworld/actionscript/play_sfx.asm"

.INCLUDE "overworld/actionscript/get_event_flag.asm"

.INCLUDE "overworld/actionscript/set_event_flag.asm"

.INCLUDE "overworld/actionscript/move_entity_to_party_member.asm"

.INCLUDE "overworld/actionscript/move_entity_to_sprite.asm"

.INCLUDE "overworld/actionscript/move_entity_to_location_bg1_relative.asm"

.INCLUDE "overworld/actionscript/queue_interaction_talk_to.asm"

.INCLUDE "overworld/actionscript/display_text_now.asm"

.INCLUDE "overworld/actionscript/copy_adjusted_xy_to_vars.asm"

.INCLUDE "overworld/actionscript/move_active_entity_towards_destination.asm"

.INCLUDE "overworld/actionscript/move_active_entity_towards_destination_face_opposite.asm"

.INCLUDE "overworld/actionscript/move_active_entity_towards_destination_no_dir_change.asm"

.INCLUDE "overworld/actionscript/spiral_movement.asm"

.INCLUDE "overworld/actionscript/spiral_movement_2.asm"

.INCLUDE "overworld/actionscript/prepare_new_entity_at_self.asm"

.INCLUDE "overworld/actionscript/prepare_new_entity_at_party_leader.asm"

.INCLUDE "overworld/actionscript/prepare_new_entity_at_teleport_destination.asm"

.INCLUDE "overworld/actionscript/prepare_new_entity.asm"

.INCLUDE "overworld/actionscript/find_npc_location_for_active_entity.asm"

.INCLUDE "overworld/actionscript/find_sprite_location_for_active_entity.asm"

.INCLUDE "overworld/actionscript/get_position_of_party_member.asm"

.INCLUDE "overworld/actionscript/make_npc_look_at_active_entity.asm"

.INCLUDE "overworld/actionscript/make_sprite_look_at_active_entity.asm"

.INCLUDE "overworld/actionscript/set_entity_boundaries.asm"

.INCLUDE "overworld/actionscript/load_battlebg.asm"

.INCLUDE "overworld/actionscript/spawn_entity_at_self.asm"

.INCLUDE "overworld/actionscript/create_entity_at_v01_plus_bg3y.asm"

.INCLUDE "overworld/actionscript/print_cast_name.asm"

.INCLUDE "overworld/actionscript/print_cast_name_party.asm"

.INCLUDE "overworld/actionscript/print_cast_name_entity_var0.asm"

.INCLUDE "overworld/actionscript/fade_out_with_mosaic.asm"

.INCLUDE "overworld/actionscript/enable_stage_hdma.asm"

.INCLUDE "overworld/actionscript/set_coldata_cgad_sub.asm"

.INCLUDE "overworld/actionscript/update_sprite_direction.asm"

.INCLUDE "overworld/actionscript/update_entity_sprite_frame_current.asm"

.INCLUDE "overworld/actionscript/perform_palette_fade.asm"

.INCLUDE "overworld/actionscript/set_x_register_to_2.asm"

.INCLUDE "overworld/actionscript/set_x_register_to_4.asm"

.INCLUDE "overworld/actionscript/jump_to_label_n_times.asm"

.INCLUDE "unknown/C0/C0AAFD.asm"

.INCLUDE "audio/load_spc700_data.asm"

.INCLUDE "audio/wait_for_spc700.asm"

.INCLUDE "audio/set_apuio0.asm"

.INCLUDE "audio/stop_music.asm"

.INCLUDE "audio/play_sound.asm"

.INCLUDE "audio/music_effect.asm"

.INCLUDE "audio/get_apuio0.asm"

.INCLUDE "data/stereo_mono_data.asm"

.INCLUDE "audio/set_static.asm"

.INCLUDE "unknown/C0/C0AC43.asm"

.INCLUDE "overworld/update_overlay_frame.asm"

.INCLUDE "data/events/scripts/786.asm"

.INCLUDE "battle/backgrounds/scroll_bg3.asm"

.INCLUDE "battle/backgrounds/do_battlebg_dma.asm"

.INCLUDE "data/dma_flags.asm"

.INCLUDE "data/dma_target_registers.asm"

.INCLUDE "data/hdma_indirect_table_bg1.asm"

.INCLUDE "data/hdma_indirect_table_bg2.asm"

.INCLUDE "system/hdma_disable.asm"

.INCLUDE "data/hdma_disable_masks.asm"

.INCLUDE "battle/backgrounds/load_bg_offset_parameters.asm"

.INCLUDE "battle/backgrounds/load_bg_offset_parameters2.asm"

.INCLUDE "battle/backgrounds/prepare_bg_offset_tables.asm"

.INCLUDE "battle/backgrounds/set_layer_config.asm"

.INCLUDE "data/layer_config.asm"

.INCLUDE "system/set_coldata.asm"

.INCLUDE "system/set_colour_addsub_mode.asm"

.INCLUDE "system/set_window_mask.asm"

.INCLUDE "data/window_mask_setting_presets.asm"

.INCLUDE "overworld/reset_windows.asm"

.INCLUDE "overworld/enable_window_hdma.asm"

.INCLUDE "overworld/enable_swirl_window_hdma.asm"

.INCLUDE "overworld/generate_swirl_hdma_table.asm"

.INCLUDE "data/unknown/C0B2FF.asm"

.INCLUDE "system/math/cosine_sine.asm"

.INCLUDE "data/sine_table.asm"

.INCLUDE "system/file_select_init.asm"

.INCLUDE "overworld/set_leader_location.asm"

.INCLUDE "unknown/C0/C0B67F.asm"

.INCLUDE "battle/init_overworld.asm"

.INCLUDE "system/main.asm"

.INCLUDE "system/game_init.asm"

.INCLUDE "overworld/path/setup_party_path_targets.asm"

.INCLUDE "overworld/path/perform_entity_pathfinding.asm"

.INCLUDE "overworld/path/find_path_to_party.asm"

.INCLUDE "overworld/path/find_path_to_near_party_leader.asm"

.INCLUDE "overworld/path/find_path_to_self.asm"

.INCLUDE "unknown/C0/C0C0B4.asm"

.INCLUDE "overworld/actionscript/delivery/prepare_delivery_entrance_path.asm"

.INCLUDE "overworld/actionscript/delivery/prepare_delivery_exit_path.asm"

.INCLUDE "overworld/update_gift_box_state.asm"

.INCLUDE "overworld/actionscript/update_active_gift_box_state.asm"

.INCLUDE "overworld/actionscript/test_party_leader_has_moved.asm"

.INCLUDE "overworld/test_party_leader_distance_far.asm"

.INCLUDE "overworld/test_party_leader_distance_close.asm"

.INCLUDE "overworld/actionscript/test_party_leader_distance_far_intangibility.asm"

.INCLUDE "overworld/actionscript/test_party_leader_distance_close_intangibility.asm"

.INCLUDE "data/map/unused_direction_table.asm"

.INCLUDE "data/map/opposite_directions.asm"

.INCLUDE "overworld/get_direction_from_player_to_entity.asm"

.INCLUDE "overworld/is_entity_weak.asm"

.INCLUDE "overworld/get_opposite_direction_from_player_to_entity.asm"

.INCLUDE "overworld/actionscript/get_entity_direction_from_fear.asm"

.INCLUDE "overworld/actionscript/get_angle_towards_destination_unless_weak.asm"

.INCLUDE "overworld/actionscript/get_direction_rotated_clockwise.asm"

.INCLUDE "overworld/actionscript/get_direction_turned_randomly_left_or_right.asm"

.INCLUDE "overworld/actionscript/is_entity_onscreen.asm"

.INCLUDE "overworld/is_entity_sprite_onscreen.asm"

.INCLUDE "unused/C0C760.asm"

.INCLUDE "unused/C0C7AC.asm"

.INCLUDE "overworld/update_entity_surface_flags.asm"

.INCLUDE "overworld/get_entity_surface_flags.asm"

.INCLUDE "overworld/actionscript/move_direction.asm"

.INCLUDE "overworld/sleep_until_cardinal_pixels_moved.asm"

.INCLUDE "overworld/sleep_until_pixels_moved.asm"

.INCLUDE "overworld/actionscript/sleep_until_destination_reached.asm"

.INCLUDE "unknown/C0/C0CCCC.asm"

.INCLUDE "unknown/C0/C0CD50-jp.asm"

.INCLUDE "unknown/C0/C0CEBE.asm"

.INCLUDE "data/clockwise_spiral.asm"

.INCLUDE "overworld/actionscript/search_for_collision.asm"

.INCLUDE "overworld/actionscript/find_hiding_tile.asm"

.INCLUDE "overworld/actionscript/enemy_teleport.asm"

.INCLUDE "overworld/actionscript/test_party_collision.asm"

.INCLUDE "unused/clear_accumulator.asm"

.INCLUDE "unknown/C0/C0D19B-jp.asm"

.INCLUDE "unknown/C0/C0D4DE.asm"

.INCLUDE "overworld/actionscript/test_battle_starting.asm"

.INCLUDE "overworld/actionscript/try_battle_start.asm"

.INCLUDE "unknown/actionscript/freeze_other_entities_except_party_leader.asm"

.INCLUDE "overworld/actionscript/backup_position.asm"

.INCLUDE "overworld/actionscript/restore_position_backup.asm"

.INCLUDE "unknown/C0/C0D7E0.asm"

.INCLUDE "overworld/actionscript/pathfinding_override.asm"

.INCLUDE "unknown/C0/C0D98F.asm"

.INCLUDE "overworld/actionscript/draw_entities_alt.asm"

.INCLUDE "overworld/actionscript/draw_entities.asm"

.INCLUDE "overworld/schedule_overworld_task.asm"

.INCLUDE "overworld/end_overworld_task.asm"

.INCLUDE "overworld/process_overworld_tasks.asm"

.INCLUDE "overworld/load_dad_phone.asm"

.INCLUDE "overworld/wait_for_fade_to_finish.asm"

.INCLUDE "overworld/teleport/psi_teleport_wait_n_frames.asm"

.INCLUDE "overworld/teleport/set_teleport_state.asm"

.INCLUDE "overworld/teleport/psi_teleport_load_destination.asm"

.INCLUDE "overworld/teleport/setup_teleporting_entites.asm"

.INCLUDE "overworld/teleport/initialize_psi_teleportation.asm"

.INCLUDE "overworld/teleport/psi_teleport_restore_control.asm"

.INCLUDE "overworld/teleport/psi_teleport_check_collision.asm"

.INCLUDE "overworld/teleport/psi_teleport_update_speed.asm"

.INCLUDE "overworld/teleport/write_party_leader_state_to_position_buffer.asm"

.INCLUDE "overworld/teleport/psi_teleport_get_position_index.asm"

.INCLUDE "overworld/teleport/psi_teleport_update_animation_speed.asm"

.INCLUDE "overworld/teleport/psi_teleport_alpha_leader_tick.asm"

.INCLUDE "overworld/teleport/psi_teleport_follower_tick.asm"

.INCLUDE "overworld/teleport/adjust_psi_teleport_beta_direction.asm"

.INCLUDE "overworld/teleport/psi_teleport_beta_update_speed.asm"

.INCLUDE "overworld/teleport/psi_teleport_beta_leader_tick.asm"

.INCLUDE "overworld/teleport/psi_teleport_success_depart_leader_tick.asm"

.INCLUDE "unused/C0E6FE.asm"

.INCLUDE "overworld/teleport/psi_teleport_success_arrive_leader_tick.asm"

.INCLUDE "overworld/teleport/psi_teleport_depart.asm"

.INCLUDE "overworld/teleport/psi_teleport_arrive.asm"

.INCLUDE "overworld/teleport/psi_teleport_fail_leader_tick.asm"

.INCLUDE "overworld/teleport/psi_teleport_fail_follower_tick.asm"

.INCLUDE "overworld/teleport/psi_teleport_fail.asm"

.INCLUDE "overworld/teleport/psi_teleport_freeze_objects.asm"

.INCLUDE "overworld/teleport/psi_teleport_freeze_objects2.asm"

.INCLUDE "overworld/teleport/teleport_mainloop.asm"

.INCLUDE "unknown/mother2/C0EBAA-jp.asm"

.INCLUDE "intro/load_title_screen_graphics-jp.asm"

.INCLUDE "unknown/mother2/C0ED41-jp.asm"

.INCLUDE "unknown/C0/C0EE47.asm"

.INCLUDE "overworld/actionscript/enable_drawing.asm"

.INCLUDE "intro/show_title_screen-jp.asm"

.INCLUDE "intro/logo_screen_load.asm"

.INCLUDE "unknown/C0/C0EFE1.asm"

.INCLUDE "intro/logo_screen.asm"

.INCLUDE "intro/gas_station_load.asm"

.INCLUDE "unknown/C0/C0F1D2.asm"

.INCLUDE "intro/run_gas_station_skippable_portion.asm"

.INCLUDE "intro/gas_station.asm"

.INCLUDE "intro/load_gas_station_flash_palette.asm"

.INCLUDE "intro/load_gas_station_palette.asm"

.INCLUDE "data/sram_signature.asm"

.INCLUDE "data/sram_slot_bitmasks.asm"

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

.INCLUDE "unused/load_save_3_and_spawn_player.asm"

.INCLUDE "ending/credits_scroll_frame-jp.asm"

.SEGMENT "HEADER"
snes_header:
	.BYTE "01MB  " ;Game Code
	.WORD $0000 ; Padding
	.WORD $0000 ; Padding
	.WORD $0000 ; Padding
	.WORD $0000 ; Padding
	.WORD $0000 ; Padding
	.BYTE "MOTHER-2             " ; Title
	.BYTE $31		; HiROM + FastROM
	.BYTE $02		; ROM only
	.BYTE $0C		; ROM Size = 0x300000
	.BYTE $03		; RAM Size
	.BYTE $00		; Japan
	.BYTE $33		; Licensee Code
	.BYTE $00		; Version
	.WORD $5D3C	; Checksum Complement
	.WORD $A2C3	; Checksum
	.WORD $0000	; Unused
	.WORD $0000	; Unused
	.WORD $5FFF	; Native-mode COP
	.WORD $5FFF	; Native-mode BRK
	.WORD $5FFF	; Native-mode ABORT
	.ADDR NMI_VECTOR	; Native-mode NMI
	.WORD $0000	; Native-mode RESET
	.ADDR IRQ_VECTOR	; Native-mode IRQ
	.WORD $0000	; Unused
	.WORD $0000	; Unused
	.WORD	$5FFF	; Emulation-mode COP
	.WORD $0000	; Unused
	.WORD $5FFF	; Emulation-mode ABORT
	.WORD $5FFF	; Emulation-mode NMI
	.ADDR RESET_VECTOR ; Emulation-mode RESET
	.WORD $5FFF	; Emulation-mode IRQ
