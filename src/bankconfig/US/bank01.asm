.SEGMENT "BANK01"
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
.INCLUDE "symbols/misc.inc.asm"
.INCLUDE "symbols/text.inc.asm"

.INCLUDE "text/hide_hppp_windows_redirect_alt.asm"

.INCLUDE "text/display_interaction_text.asm"

.INCLUDE "text/enable_blinking_triangle.asm"

.INCLUDE "text/clear_blinking_prompt.asm"

.INCLUDE "text/get_blinking_prompt.asm"

.INCLUDE "text/set_text_sound_mode.asm"

.INCLUDE "system/finish_frame.asm"

.INCLUDE "text/get_window_focus.asm"

.INCLUDE "text/set_window_focus.asm"

.INCLUDE "text/close_focus_window.asm"

.INCLUDE "text/close_all_windows.asm"

.INCLUDE "text/lock_input.asm"

.INCLUDE "text/unlock_input.asm"

.INCLUDE "text/text_wait.asm"

.INCLUDE "text/text_wait_cancellable.asm"

.INCLUDE "text/ccs/halt.asm"

.INCLUDE "text/wait_for_actionscript.asm"

.INCLUDE "text/get_active_window_address.asm"

.INCLUDE "text/transfer_active_mem_storage.asm"

.INCLUDE "text/transfer_storage_mem_active.asm"

.INCLUDE "text/get_argument_memory.asm"

.INCLUDE "text/get_secondary_memory.asm"

.INCLUDE "text/get_working_memory.asm"

.INCLUDE "text/increment_secondary_memory.asm"

.INCLUDE "text/set_secondary_memory.asm"

.INCLUDE "text/set_working_memory.asm"

.INCLUDE "text/set_argument_memory.asm"

.INCLUDE "text/get_text_x.asm"

.INCLUDE "text/get_text_y.asm"

.INCLUDE "text/create_window.asm"

.INCLUDE "text/hp_pp_window/upload_hp_pp_meter_area.asm"

.INCLUDE "text/draw_window.asm"

.INCLUDE "text/show_hppp_windows.asm"

.INCLUDE "text/hide_hppp_windows.asm"

.INCLUDE "text/draw_tall_text_tile.asm"

.INCLUDE "text/draw_tall_text_tile_focused.asm"

.INCLUDE "text/ccs/clear_line.asm"

.INCLUDE "text/close_all_windows_redirect.asm"

.INCLUDE "text/create_new_menu_option_at_position_with_user_data_far.asm"

.INCLUDE "text/get_menu_option_count_redirect.asm"

.INCLUDE "text/determine_string_length_redirect.asm"

.INCLUDE "text/split_decimal_by_digits_redirect.asm"

.INCLUDE "text/move_current_text_cursor_redirect.asm"

.INCLUDE "text/print_newline_redirect.asm"

.INCLUDE "text/draw_tall_text_tile_focused_redirect.asm"

.INCLUDE "text/print_letter_vwf_redirect.asm"

.INCLUDE "text/print_string_redirect.asm"

.INCLUDE "text/move_text_up_one_line_redirect.asm"

.INCLUDE "text/print_letter_vwf.asm"

.INCLUDE "text/draw_tall_text_tile_focused_redraw.asm"

.INCLUDE "text/split_decimal_by_digits.asm"

.INCLUDE "text/print_number.asm"

.INCLUDE "text/set_current_window_padding.asm"

.INCLUDE "text/print_special_graphics.asm"

.INCLUDE "text/print_string.asm"

.INCLUDE "text/clear_window.asm"

.INCLUDE "text/clear_focus_window.asm"

.INCLUDE "text/change_current_window_font.asm"

.INCLUDE "text/window_set_text_color.asm"

.INCLUDE "text/num_select_prompt.asm"

.INCLUDE "text/open_hp_and_wallet.asm"

.INCLUDE "text/find_free_menu_option.asm"

.INCLUDE "text/reset_current_window_menu.asm"

.INCLUDE "text/get_menu_option_count.asm"

.INCLUDE "text/create_new_menu_option_active.asm"

.INCLUDE "text/create_new_menu_option_at_position.asm"

.INCLUDE "text/create_new_menu_option_at_position_with_user_data.asm"

.INCLUDE "text/create_new_menu_option_at_position_with_user_data_sfx.asm"

.INCLUDE "text/create_new_menu_option_with_user_data.asm"

.INCLUDE "text/print_menu_items.asm"

.INCLUDE "text/determine_string_length.asm"

.INCLUDE "text/print_menu_option_table.asm"

.INCLUDE "text/print_menu_option_table_preselected.asm"

.INCLUDE "text/print_menu_items_preselected.asm"

.INCLUDE "text/move_cursor_wrap.asm"

.INCLUDE "text/selection_menu.asm"

.INCLUDE "text/set_menu_callback.asm"

.INCLUDE "text/reset_menu_callback.asm"

.INCLUDE "battle/get_battler_position_x.asm"

.INCLUDE "battle/get_targetting_allowed.asm"

.INCLUDE "battle/get_next_target_right.asm"

.INCLUDE "battle/get_next_target_left.asm"

.INCLUDE "text/print_target_name.asm"

.INCLUDE "battle/pick_target_single.asm"

.INCLUDE "battle/pick_target_row.asm"

.INCLUDE "battle/pick_target.asm"

.INCLUDE "unknown/C1/C1244C.asm"

.INCLUDE "text/character_select_prompt.asm"

.INCLUDE "unknown/C1/C12BD5.asm"

.INCLUDE "text/print_smaaaash.asm"

.INCLUDE "text/print_you_won.asm"

.INCLUDE "unused/integer_to_string.asm"

.INCLUDE "text/hp_pp_window/flipout.asm"

.INCLUDE "text/window_tick.asm"

.INCLUDE "text/window_tick_minimal.asm"

.INCLUDE "system/debug/y_button_menu.asm"

.INCLUDE "overworld/talk_to.asm"

.INCLUDE "overworld/check.asm"

.INCLUDE "text/create_inventory_window.asm"

.INCLUDE "text/create_item_targetting_window.asm"

.INCLUDE "text/populate_command_menu.asm"

.INCLUDE "overworld/open_menu.asm"

.INCLUDE "overworld/open_menu_check_talk.asm"

.INCLUDE "text/open_hppp_display.asm"

.INCLUDE "overworld/show_town_map.asm"

.INCLUDE "overworld/debug/y_button_flag.asm"

.INCLUDE "overworld/debug/y_button_guide.asm"

.INCLUDE "overworld/debug/set_char_level.asm"

.INCLUDE "overworld/debug/y_button_goods.asm"

.INCLUDE "text/push_peek_text_stack.asm"

.INCLUDE "text/pop_text_stack.asm"

.INCLUDE "text/eb_strcmp.asm"

.INCLUDE "text/ccs/print_stat.asm"

.INCLUDE "text/ccs/print_party_or_hint_new_line.asm"

.INCLUDE "text/ccs/set_window_padding.asm"

.INCLUDE "text/ccs/text_effects.asm"

.INCLUDE "text/ccs/jump.asm"

.INCLUDE "text/ccs/jump_multi.asm"

.INCLUDE "text/ccs/set_event_flag.asm"

.INCLUDE "text/ccs/clear_event_flag.asm"

.INCLUDE "text/ccs/jump_event_flag.asm"

.INCLUDE "text/ccs/get_event_flag.asm"

.INCLUDE "text/ccs/print_special_graphics.asm"

.INCLUDE "text/ccs/open_window.asm"

.INCLUDE "text/ccs/switch_to_window.asm"

.INCLUDE "text/ccs/call.asm"

.INCLUDE "text/ccs/create_number_selector.asm"

.INCLUDE "text/ccs/force_text_alignment.asm"

.INCLUDE "text/ccs/check_equal.asm"

.INCLUDE "text/ccs/check_not_equal.asm"

.INCLUDE "text/ccs/print_horizontal_strings.asm"

.INCLUDE "text/ccs/copy_to_argmem.asm"

.INCLUDE "text/ccs/set_secmem.asm"

.INCLUDE "text/ccs/party_selection_menu_uncancellable.asm"

.INCLUDE "text/ccs/party_selection_menu.asm"

.INCLUDE "text/ccs/print_item_name.asm"

.INCLUDE "text/ccs/print_teleport_destination_name.asm"

.INCLUDE "text/ccs/get_character_number.asm"

.INCLUDE "text/ccs/play_music.asm"

.INCLUDE "text/ccs/stop_music.asm"

.INCLUDE "text/ccs/play_sfx.asm"

.INCLUDE "text/ccs/get_letter_from_character_name.asm"

.INCLUDE "text/ccs/get_letter_from_stat.asm"

.INCLUDE "text/ccs/print_character.asm"

.INCLUDE "text/ccs/test_inventory_full.asm"

.INCLUDE "text/ccs/wallet_increase.asm"

.INCLUDE "text/ccs/wallet_decrease.asm"

.INCLUDE "text/ccs/recover_hp_by_percent.asm"

.INCLUDE "text/ccs/deplete_hp_by_percent.asm"

.INCLUDE "text/ccs/recover_hp_by_amount.asm"

.INCLUDE "text/ccs/deplete_hp_by_amount.asm"

.INCLUDE "text/ccs/recover_pp_by_percent.asm"

.INCLUDE "text/ccs/deplete_pp_by_percent.asm"

.INCLUDE "text/ccs/recover_pp_by_amount.asm"

.INCLUDE "text/ccs/deplete_pp_by_amount.asm"

.INCLUDE "text/ccs/give_item_to_character.asm"

.INCLUDE "text/ccs/take_item_from_character.asm"

.INCLUDE "text/ccs/test_inventory_not_full.asm"

.INCLUDE "text/ccs/test_character_doesnt_have_item.asm"

.INCLUDE "text/ccs/test_character_has_item.asm"

.INCLUDE "text/ccs/trigger_psi_teleport.asm"

.INCLUDE "text/ccs/trigger_teleport.asm"

.INCLUDE "text/ccs/pause.asm"

.INCLUDE "text/ccs/display_shop_menu.asm"

.INCLUDE "text/ccs/get_item_price.asm"

.INCLUDE "text/ccs/get_item_sell_price.asm"

.INCLUDE "text/ccs/test_character_can_equip_item.asm"

.INCLUDE "text/ccs/print_character_name.asm"

.INCLUDE "text/ccs/get_character_status.asm"

.INCLUDE "text/ccs/inflict_character_status.asm"

.INCLUDE "text/ccs/test_character_status.asm"

.INCLUDE "text/ccs/get_gender_etc.asm"

.INCLUDE "text/ccs/switch_gender_etc.asm"

.INCLUDE "text/ccs/test_equality.asm"

.INCLUDE "text/ccs/get_exp_for_next_level.asm"

.INCLUDE "text/ccs/print_number.asm"

.INCLUDE "text/ccs/pause_cancellable.asm"

.INCLUDE "text/ccs/show_character_inventory.asm"

.INCLUDE "text/ccs/selection_menu_in_window_uncancellable.asm"

.INCLUDE "text/ccs/selection_menu_in_window.asm"

.INCLUDE "text/ccs/print_money_amount.asm"

.INCLUDE "text/ccs/give_item_to_character_2.asm"

.INCLUDE "text/ccs/take_item_from_character_2.asm"

.INCLUDE "text/ccs/test_item_is_equipped.asm"

.INCLUDE "text/ccs/test_item_is_equippable.asm"

.INCLUDE "text/ccs/equip_character_from_inventory.asm"

.INCLUDE "text/ccs/give_to_escargo_express.asm"

.INCLUDE "text/ccs/take_from_escargo_express.asm"

.INCLUDE "text/ccs/get_item_number.asm"

.INCLUDE "text/ccs/test_has_enough_money.asm"

.INCLUDE "text/ccs/get_escargo_express_item.asm"

.INCLUDE "text/ccs/print_character_status.asm"

.INCLUDE "text/ccs/print_vertical_strings.asm"

.INCLUDE "text/ccs/set_argmem.asm"

.INCLUDE "text/ccs/get_loaded_string_count.asm"

.INCLUDE "text/ccs/learn_special_psi.asm"

.INCLUDE "text/ccs/atm_increase.asm"

.INCLUDE "text/ccs/atm_decrease.asm"

.INCLUDE "text/ccs/test_atm_has_enough_money.asm"

.INCLUDE "text/ccs/party_member_add.asm"

.INCLUDE "text/ccs/party_member_remove.asm"

.INCLUDE "inventory/queue_item_for_delivery.asm"

.INCLUDE "text/ccs/queue_delivery_pickup.asm"

.INCLUDE "text/ccs/get_queued_delivery_pickup_item.asm"

.INCLUDE "text/ccs/escargo_express_store.asm"

.INCLUDE "text/ccs/test_item_is_drink.asm"

.INCLUDE "text/ccs/test_party_enough_characters.asm"

.INCLUDE "text/ccs/print_psi_name.asm"

.INCLUDE "text/ccs/get_random_number.asm"

.INCLUDE "unknown/C1/C1621F.asm"

.INCLUDE "text/ccs/jump_multi2.asm"

.INCLUDE "text/ccs/try_fixing_items.asm"

.INCLUDE "text/ccs/set_character_direction.asm"

.INCLUDE "text/ccs/set_party_direction.asm"

.INCLUDE "text/ccs/set_npc_direction.asm"

.INCLUDE "text/ccs/create_entity_npc.asm"

.INCLUDE "text/ccs/dummy_1F_18.asm"

.INCLUDE "text/ccs/dummy_1F_19.asm"

.INCLUDE "text/ccs/create_manpu_at_npc_entity.asm"

.INCLUDE "text/ccs/delete_manpu_at_npc_entity.asm"

.INCLUDE "text/ccs/create_manpu_at_character.asm"

.INCLUDE "text/ccs/delete_manpu_at_character.asm"

.INCLUDE "text/ccs/set_map_palette.asm"

.INCLUDE "text/ccs/create_entity_sprite.asm"

.INCLUDE "text/ccs/delete_entity_npc.asm"

.INCLUDE "text/ccs/delete_entity_sprite.asm"

.INCLUDE "text/ccs/get_direction_from_character_to_entity.asm"

.INCLUDE "text/ccs/get_direction_from_npc_entity_to_entity.asm"

.INCLUDE "text/ccs/enable_blinking_triangle.asm"

.INCLUDE "text/ccs/set_character_level.asm"

.INCLUDE "text/ccs/get_direction_from_sprite_entity_to_entity.asm"

.INCLUDE "text/ccs/set_entity_direction_sprite.asm"

.INCLUDE "text/ccs/set_player_movement_lock.asm"

.INCLUDE "text/ccs/set_npc_entity_delay.asm"

.INCLUDE "text/ccs/set_sprite_entity_delay.asm"

.INCLUDE "text/ccs/set_player_movement_lock_if_camera_refocused.asm"

.INCLUDE "text/ccs/enable_npc_entity_movement.asm"

.INCLUDE "text/ccs/enable_sprite_entity_movement.asm"

.INCLUDE "text/ccs/set_character_invisibility.asm"

.INCLUDE "text/ccs/set_character_visibility.asm"

.INCLUDE "text/ccs/teleport_party_to_npc_entity.asm"

.INCLUDE "text/ccs/teleport_party_to_sprite_entity.asm"

.INCLUDE "text/ccs/screen_reload_pointer.asm"

.INCLUDE "text/ccs/set_npc_entity_movement.asm"

.INCLUDE "text/ccs/set_sprite_entity_movement.asm"

.INCLUDE "text/ccs/test_item_is_condiment.asm"

.INCLUDE "text/ccs/trigger_battle.asm"

.INCLUDE "text/ccs/set_respawn_point.asm"

.INCLUDE "text/ccs/test_item_is_storable.asm"

.INCLUDE "text/ccs/activate_hotspot.asm"

.INCLUDE "text/ccs/deactivate_hotspot.asm"

.INCLUDE "text/ccs/toggle_text_printing_sound.asm"

.INCLUDE "text/ccs/get_money_earned_since_last_call.asm"

.INCLUDE "text/ccs/dummy_1F_40.asm"

.INCLUDE "text/ccs/trigger_special_event.asm"

.INCLUDE "text/ccs/trigger_photographer_event.asm"

.INCLUDE "text/ccs/create_manpu_at_sprite_entity.asm"

.INCLUDE "text/ccs/delete_manpu_at_sprite_entity.asm"

.INCLUDE "text/ccs/display_battle_animation.asm"

.INCLUDE "text/ccs/set_music_effect.asm"

.INCLUDE "text/ccs/trigger_timed_event.asm"

.INCLUDE "text/ccs/increase_character_experience.asm"

.INCLUDE "text/ccs/increase_character_iq.asm"

.INCLUDE "text/ccs/increase_character_guts.asm"

.INCLUDE "text/ccs/increase_character_speed.asm"

.INCLUDE "text/ccs/increase_character_vitality.asm"

.INCLUDE "text/ccs/increase_character_luck.asm"

.INCLUDE "text/ccs/test_equipment_offensive_or_defensive.asm"

.INCLUDE "text/ccs/get_number_from_stat.asm"

.INCLUDE "unknown/C1/C17796.asm"

.INCLUDE "unknown/C1/C17889.asm"

.INCLUDE "text/ccs/load_string.asm"

.INCLUDE "text/ccs/tree_18.asm"

.INCLUDE "text/ccs/tree_19.asm"

.INCLUDE "text/ccs/tree_1A.asm"

.INCLUDE "text/ccs/tree_1B.asm"

.INCLUDE "text/ccs/tree_1C.asm"

.INCLUDE "text/ccs/tree_1D.asm"

.INCLUDE "text/ccs/tree_1E.asm"

.INCLUDE "text/ccs/tree_1F.asm"

.INCLUDE "text/initialize_display_text_state.asm"

.INCLUDE "text/cleanup_text_script.asm"

.INCLUDE "text/display_text.asm"

.INCLUDE "inventory/give_item_to_specific_character.asm"

.INCLUDE "inventory/give_item_to_character.asm"

.INCLUDE "inventory/remove_item_from_inventory.asm"

.INCLUDE "inventory/take_item_from_specific_character.asm"

.INCLUDE "inventory/take_item_from_character.asm"

.INCLUDE "misc/reduce_hp_amtpercent.asm"

.INCLUDE "misc/recover_hp_amtpercent.asm"

.INCLUDE "misc/reduce_pp_amtpercent.asm"

.INCLUDE "misc/recover_pp_amtpercent.asm"

.INCLUDE "inventory/equip_item.asm"

.INCLUDE "text/get_party_member_index.asm"

.INCLUDE "unknown/C1/C190F1.asm"

.INCLUDE "inventory/escargo_express_store.asm"

.INCLUDE "inventory/escargo_express_move.asm"

.INCLUDE "inventory/escargo_express_remove.asm"

.INCLUDE "inventory/give_stored_item_to_character.asm"

.INCLUDE "text/print_item_name.asm"

.INCLUDE "text/display_stat.asm"

.INCLUDE "text/display_character_name.asm"

.INCLUDE "text/open_equip_select_menu.asm"

.INCLUDE "text/close_equip_select_menu.asm"

.INCLUDE "text/open_phone_menu.asm"

.INCLUDE "text/print_all_stats.asm"

.INCLUDE "inventory/get_item_name.asm"

.INCLUDE "unknown/C1/C19A11.asm"

.INCLUDE "text/display_escargo_express_items.asm"

.INCLUDE "text/set_hppp_window_mode_item.asm"

.INCLUDE "unknown/C1/C19CDD.asm"

.INCLUDE "unknown/C1/C19D49.asm"

.INCLUDE "text/item_store_selection.asm"

.INCLUDE "inventory/get_item_type.asm"

.INCLUDE "text/print_equipment.asm"

.INCLUDE "text/print_equipment_stats.asm"

.INCLUDE "text/print_equipment_and_stats.asm"

.INCLUDE "text/handle_equip_menu.asm"

.INCLUDE "text/open_wallet_window.asm"

.INCLUDE "unknown/C1/C1AA5D.asm"

.INCLUDE "overworld/teleport/select_psi_teleport_destination.asm"

.INCLUDE "text/make_phone_call.asm"

.INCLUDE "text/set_battle_attacker_name.asm"

.INCLUDE "battle/return_battle_attacker_address.asm"

.INCLUDE "text/set_battle_target_name.asm"

.INCLUDE "battle/return_battle_target_address.asm"

.INCLUDE "battle/set_citem.asm"

.INCLUDE "battle/get_citem.asm"

.INCLUDE "battle/set_cnum.asm"

.INCLUDE "battle/get_cnum.asm"

.INCLUDE "inventory/find_receive_item_npc.asm"

.INCLUDE "inventory/get_sector_usable_item.asm"

.INCLUDE "battle/determine_targetting.asm"

.INCLUDE "inventory/overworld_use_item.asm"

.INCLUDE "overworld/psi/overworld_psi_menu.asm"

.INCLUDE "unknown/C1/C1BB06.asm"

.INCLUDE "unknown/C1/C1BB71.asm"

.INCLUDE "overworld/teleport.asm"

.INCLUDE "overworld/attempt_homesickness.asm"

.INCLUDE "overworld/get_off_bicycle_with_text.asm"

.INCLUDE "overworld/trigger_special_event.asm"

.INCLUDE "unknown/C1/C1C046.asm"

.INCLUDE "overworld/psi/check_can_character_use_psi_status.asm"

.INCLUDE "overworld/psi/character_knows_psi_types.asm"

.INCLUDE "overworld/psi/check_character_can_currently_use_psi_types.asm"

.INCLUDE "overworld/psi/psi_menu_valid_character.asm"

.INCLUDE "overworld/psi/get_first_party_member_with_psi.asm"

.INCLUDE "overworld/psi/get_party_member_count_with_psi.asm"

.INCLUDE "text/get_psi_name.asm"

.INCLUDE "battle/generate_psi_list.asm"

.INCLUDE "text/create_overworld_psi_menu_window.asm"

.INCLUDE "unknown/C1/C1C8BC.asm"

.INCLUDE "text/print_psi_name.asm"

.INCLUDE "unknown/C1/C1CA72.asm"

.INCLUDE "battle/prepare_battle_psi_menu_options.asm"

.INCLUDE "battle/character_knows_any_battle_psi_by_type.asm"

.INCLUDE "battle/battle_psi_menu.asm"

.INCLUDE "battle/battle_select_item_targetting.asm"

.INCLUDE "battle/battle_select_item.asm"

.INCLUDE "inventory/get_fixed_version_of_item.asm"

.INCLUDE "misc/calculate_stat_gain.asm"

.INCLUDE "misc/level_up_char.asm"

.INCLUDE "misc/reset_char_level_one.asm"

.INCLUDE "misc/gain_exp.asm"

.INCLUDE "inventory/find_condiment.asm"

.INCLUDE "overworld/show_hp_alert.asm"

.INCLUDE "text/display_in_battle_text.asm"

.INCLUDE "text/display_text_wait.asm"

.INCLUDE "battle/set_party_level_in_battle.asm"

.INCLUDE "text/show_hppp_windows_redirect.asm"

.INCLUDE "text/hide_hppp_windows_redirect.asm"

.INCLUDE "text/create_window_redirect.asm"

.INCLUDE "text/set_window_focus_redirect.asm"

.INCLUDE "text/clear_focus_window_redirect.asm"

.INCLUDE "text/close_focus_window_redirect.asm"

.INCLUDE "text/close_all_windows_and_hp_pp.asm"

.INCLUDE "text/set_battle_attacker_name_redirect.asm"

.INCLUDE "text/set_battle_target_name_redirect.asm"

.INCLUDE "battle/set_citem_redirect.asm"

.INCLUDE "battle/set_cnum_redirect.asm"

.INCLUDE "unknown/C1/C1DD9F.asm"

.INCLUDE "inventory/remove_item_from_inventory_redirect.asm"

.INCLUDE "misc/swap_raised_hp_pp_window_redirect.asm"

.INCLUDE "text/hp_pp_window/reset_active_party_member_hp_pp_window_redirect.asm"

.INCLUDE "text/selection_menu_setup.asm"

.INCLUDE "text/print_menu_items_redirect.asm"

.INCLUDE "text/selection_menu_redirect.asm"

.INCLUDE "battle/battle_select_item_redirect.asm"

.INCLUDE "battle/pick_target_redirect.asm"

.INCLUDE "battle/battle_psi_menu_redirect.asm"

.INCLUDE "battle/actions/switch_weapon.asm"

.INCLUDE "battle/actions/switch_armor.asm"

.INCLUDE "misc/null/C1E1A2.asm"

.INCLUDE "battle/enemy_select_mode.asm"

.INCLUDE "unknown/C1/C1E48D.asm"

.INCLUDE "text/input_dont_care_name.asm"

.INCLUDE "text/text_input_dialog.asm"

.INCLUDE "text/enter_your_name_please.asm"

.INCLUDE "intro/name_a_character.asm"

.INCLUDE "unknown/C1/C1EC8F.asm"

.INCLUDE "unknown/C1/C1ECD1.asm"

.INCLUDE "system/saves/corruption_check.asm"

.INCLUDE "intro/file_select_menu.asm"

.INCLUDE "unknown/C1/C1F07E.asm"

.INCLUDE "intro/file_select/handle_file_copy_menu.asm"

.INCLUDE "intro/file_select/handle_file_delete_menu.asm"

.INCLUDE "intro/file_select/open_text_speed_menu.asm"

.INCLUDE "unknown/C1/C1F497.asm"

.INCLUDE "intro/file_select/open_sound_menu.asm"

.INCLUDE "unknown/C1/C1F616.asm"

.INCLUDE "intro/file_select/open_flavour_menu.asm"

.INCLUDE "intro/file_select_menu_loop.asm"

.INCLUDE "text/check_text_palette_reload_required.asm"

.INCLUDE "unknown/C1/C1FF6B.asm"

.INCLUDE "unknown/C1/C1FF99.asm"

.INCLUDE "system/antipiracy/sram_check_routine_checksum.asm"

SRAM_CHECK_ROUTINE_CHECKSUM_VALUE:
	.WORD $2AD8
