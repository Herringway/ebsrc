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

.INCLUDE "unknown/C1/C10004.asm"

.INCLUDE "text/enable_blinking_triangle.asm"

.INCLUDE "text/clear_blinking_prompt.asm"

.INCLUDE "text/get_blinking_prompt.asm"

.INCLUDE "text/set_text_sound_mode.asm"

.INCLUDE "unknown/C3/C3E450.asm"

.INCLUDE "unknown/C1/C1004E.asm"

.INCLUDE "text/clear_instant_printing.asm"

.INCLUDE "text/set_instant_printing.asm"

.INCLUDE "unknown/C3/C3E4EF.asm"

.INCLUDE "text/get_window_focus.asm"

.INCLUDE "text/set_window_focus.asm"

.INCLUDE "text/close_window.asm"

.INCLUDE "text/close_focus_window.asm"

.INCLUDE "unknown/C1/C1008E.asm"

.INCLUDE "text/lock_input.asm"

.INCLUDE "text/unlock_input.asm"

.INCLUDE "unknown/C1/C100D6.asm"

.INCLUDE "unknown/C1/C100FE.asm"

.INCLUDE "text/ccs/halt.asm"

.INCLUDE "unknown/C1/C102D0.asm"

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

.INCLUDE "unknown/C1/C1078D.asm"

.INCLUDE "unknown/C1/C107AF-jp.asm"

.INCLUDE "unknown/C3/C3E6F8-jp.asm"

.INCLUDE "unknown/C4/C43573.asm"

.INCLUDE "unknown/C4/C435E4.asm"

.INCLUDE "unknown/C4/C43657.asm"

.INCLUDE "battle/enemy_flashing_off.asm"

.INCLUDE "battle/enemy_flashing_on.asm"

.INCLUDE "text/show_hppp_windows.asm"

.INCLUDE "text/hide_hppp_windows.asm"

.INCLUDE "unknown/C4/C436D7.asm"

.INCLUDE "unknown/C4/C43739-jp.asm"

.INCLUDE "unknown/C4/C437B8-jp.asm"

.INCLUDE "unknown/C1/C10A85-jp.asm"

.INCLUDE "unknown/C1/C10BA1.asm"

.INCLUDE "unknown/C4/C43874.asm"

.INCLUDE "unknown/C4/C438A5.asm"

.INCLUDE "text/print_newline.asm"

.INCLUDE "text/ccs/clear_line-jp.asm"

.INCLUDE "text/print_letter-jp.asm"

.INCLUDE "unknown/C1/C10D60.asm"

.INCLUDE "unknown/C1/C10D7C.asm"

.INCLUDE "text/print_number-jp.asm"

.INCLUDE "unknown/C1/C11404.asm"

.INCLUDE "unknown/C1/C10EB4.asm"

.INCLUDE "unknown/C1/C10EE3.asm"

.INCLUDE "text/print_string-jp.asm"

.INCLUDE "unknown/C1/C10F40.asm"

.INCLUDE "unknown/C1/C10FA3.asm"

.INCLUDE "text/change_current_window_font.asm"

.INCLUDE "unknown/C1/C10FEA.asm"

.INCLUDE "text/num_select_prompt.asm"

.INCLUDE "unknown/C1/C1134B.asm"

.INCLUDE "unknown/C1/C11354.asm"

.INCLUDE "unknown/C3/C3E7E3.asm"

.INCLUDE "unknown/C1/C11383.asm"

.INCLUDE "unknown/C1/C1138D.asm"

.INCLUDE "unknown/C1/C113D1.asm"

.INCLUDE "unknown/C1/C114B1-jp.asm"

.INCLUDE "unknown/C1/C1153B.asm"

.INCLUDE "unknown/C1/C11596.asm"

.INCLUDE "unknown/C1/C115F4.asm"

.INCLUDE "text/print_menu_items-jp.asm"

.INCLUDE "unknown/C1/C117E2.asm"

.INCLUDE "unknown/C4/C451FA-jp.asm"

.INCLUDE "unknown/C1/C1180D.asm"

.INCLUDE "unknown/C1/C1181B.asm"

.INCLUDE "unknown/C1/C11887.asm"

.INCLUDE "text/move_cursor.asm"

.INCLUDE "text/selection_menu-jp.asm"

.INCLUDE "unknown/C1/C11F5A.asm"

.INCLUDE "unknown/C1/C11F8A.asm"

.INCLUDE "unknown/C1/C11FBC.asm"

.INCLUDE "unknown/C1/C11FD4.asm"

.INCLUDE "unknown/C1/C12012.asm"

.INCLUDE "unknown/C1/C12070.asm"

.INCLUDE "unknown/C1/C120D6.asm"

.INCLUDE "unknown/C1/C121B8-jp.asm"

.INCLUDE "unknown/C1/C12362.asm"

.INCLUDE "unknown/C1/C1242E.asm"

.INCLUDE "unknown/C1/C1244C-jp.asm"

.INCLUDE "text/character_select_prompt-jp.asm"

.INCLUDE "unknown/C1/C12BD5.asm"

.INCLUDE "unknown/C1/C12BF3.asm"

.INCLUDE "unknown/C1/C12C36.asm"

.INCLUDE "unknown/C1/C12CCC.asm"

.INCLUDE "audio/pause_music.asm"

.INCLUDE "unknown/EF/EF0262.asm"

.INCLUDE "audio/resume_music.asm"

.INCLUDE "unknown/C1/C12D17.asm"

.INCLUDE "text/window_tick-jp.asm"

.INCLUDE "unknown/C1/C12E42.asm"

.INCLUDE "system/debug/y_button_menu.asm"

.INCLUDE "overworld/talk_to.asm"

.INCLUDE "overworld/check.asm"

.INCLUDE "unknown/C1/C1339E.asm"

.INCLUDE "unknown/C1/C133A7.asm"

.INCLUDE "overworld/open_menu-jp.asm"

.INCLUDE "text/open_hppp_display.asm"

.INCLUDE "overworld/show_town_map.asm"

.INCLUDE "overworld/debug/y_button_flag.asm"

.INCLUDE "overworld/debug/y_button_guide.asm"

.INCLUDE "overworld/debug/set_char_level.asm"

.INCLUDE "overworld/debug/y_button_goods.asm"

.INCLUDE "unknown/C1/C14012.asm"

.INCLUDE "unknown/C1/C14049.asm"

.INCLUDE "unknown/C1/C14070.asm"

.INCLUDE "text/ccs/print_stat.asm"

.INCLUDE "text/ccs/unknown_1C_09.asm"

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

.INCLUDE "text/ccs/force_text_alignment-jp.asm"

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

.INCLUDE "text/ccs/print_character_name-jp.asm"

.INCLUDE "text/ccs/get_character_status.asm"

.INCLUDE "text/ccs/inflict_character_status.asm"

.INCLUDE "text/ccs/test_character_status.asm"

.INCLUDE "text/ccs/test_equality.asm"

.INCLUDE "text/ccs/get_exp_for_next_level.asm"

.INCLUDE "text/ccs/print_number.asm"

.INCLUDE "text/ccs/unknown_1F_60.asm"

.INCLUDE "text/ccs/show_character_inventory.asm"

.INCLUDE "text/ccs/unknown_18_08.asm"

.INCLUDE "text/ccs/unknown_18_09.asm"

.INCLUDE "text/ccs/print_money_amount.asm"

.INCLUDE "text/ccs/give_item_to_character_2.asm"

.INCLUDE "text/ccs/take_item_from_character_2.asm"

.INCLUDE "text/ccs/unknown_1D_10.asm"

.INCLUDE "text/ccs/unknown_1D_11.asm"

.INCLUDE "text/ccs/equip_character_from_inventory.asm"

.INCLUDE "text/ccs/unknown_1D_12.asm"

.INCLUDE "text/ccs/unknown_1D_13.asm"

.INCLUDE "text/ccs/get_item_number.asm"

.INCLUDE "text/ccs/test_has_enough_money.asm"

.INCLUDE "text/ccs/unknown_19_1A.asm"

.INCLUDE "text/ccs/unknown_18_0D.asm"

.INCLUDE "text/ccs/print_vertical_strings.asm"

.INCLUDE "text/ccs/set_argmem.asm"

.INCLUDE "text/ccs/unknown_19_1B.asm"

.INCLUDE "text/ccs/learn_special_psi.asm"

.INCLUDE "text/ccs/atm_increase.asm"

.INCLUDE "text/ccs/atm_decrease.asm"

.INCLUDE "text/ccs/test_atm_has_enough_money.asm"

.INCLUDE "text/ccs/party_member_add.asm"

.INCLUDE "text/ccs/party_member_remove.asm"

.INCLUDE "unknown/C1/C15FB1.asm"

.INCLUDE "text/ccs/unknown_19_1C.asm"

.INCLUDE "text/ccs/unknown_19_1D.asm"

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

.INCLUDE "text/ccs/set_tpt_direction.asm"

.INCLUDE "text/ccs/create_entity_tpt.asm"

.INCLUDE "text/ccs/dummy_1F_18.asm"

.INCLUDE "text/ccs/dummy_1F_19.asm"

.INCLUDE "text/ccs/create_floating_sprite_at_tpt_entity.asm"

.INCLUDE "text/ccs/delete_floating_sprite_at_tpt_entity.asm"

.INCLUDE "text/ccs/create_floating_sprite_at_character.asm"

.INCLUDE "text/ccs/delete_floating_sprite_at_character.asm"

.INCLUDE "text/ccs/set_map_palette.asm"

.INCLUDE "text/ccs/create_entity_sprite.asm"

.INCLUDE "text/ccs/delete_entity_tpt.asm"

.INCLUDE "text/ccs/delete_entity_sprite.asm"

.INCLUDE "text/ccs/get_direction_from_character_to_entity.asm"

.INCLUDE "text/ccs/get_direction_from_tpt_entity_to_entity.asm"

.INCLUDE "text/ccs/enable_blinking_triangle.asm"

.INCLUDE "text/ccs/set_character_level.asm"

.INCLUDE "text/ccs/get_direction_from_sprite_entity_to_entity.asm"

.INCLUDE "text/ccs/set_entity_direction_sprite.asm"

.INCLUDE "text/ccs/set_player_movement_lock.asm"

.INCLUDE "text/ccs/set_tpt_entity_delay.asm"

.INCLUDE "text/ccs/unknown_1F_E7.asm"

.INCLUDE "text/ccs/set_player_movement_lock_if_camera_refocused.asm"

.INCLUDE "text/ccs/unknown_1F_E9.asm"

.INCLUDE "text/ccs/unknown_1F_EA.asm"

.INCLUDE "text/ccs/set_character_invisibility.asm"

.INCLUDE "text/ccs/set_character_visibility.asm"

.INCLUDE "text/ccs/teleport_party_to_tpt_entity.asm"

.INCLUDE "text/ccs/unknown_1F_EF.asm"

.INCLUDE "text/ccs/screen_reload_pointer.asm"

.INCLUDE "text/ccs/set_tpt_entity_movement.asm"

.INCLUDE "text/ccs/set_sprite_entity_movement.asm"

.INCLUDE "text/ccs/test_item_is_condiment.asm"

.INCLUDE "text/ccs/trigger_battle.asm"

.INCLUDE "text/ccs/set_respawn_point.asm"

.INCLUDE "text/ccs/unknown_1D_0C.asm"

.INCLUDE "text/ccs/activate_hotspot.asm"

.INCLUDE "text/ccs/deactivate_hotspot.asm"

.INCLUDE "text/ccs/toggle_text_printing_sound.asm"

.INCLUDE "text/ccs/unknown_1D_24.asm"

.INCLUDE "text/ccs/unknown_1F_40.asm"

.INCLUDE "text/ccs/trigger_special_event.asm"

.INCLUDE "text/ccs/trigger_photographer_event.asm"

.INCLUDE "text/ccs/create_floating_sprite_at_sprite_entity.asm"

.INCLUDE "text/ccs/delete_floating_sprite_at_sprite_entity.asm"

.INCLUDE "text/ccs/display_battle_animation.asm"

.INCLUDE "text/ccs/set_music_effect.asm"

.INCLUDE "text/ccs/trigger_timed_event.asm"

.INCLUDE "text/ccs/increase_character_experience.asm"

.INCLUDE "text/ccs/increase_character_iq.asm"

.INCLUDE "text/ccs/increase_character_guts.asm"

.INCLUDE "text/ccs/increase_character_speed.asm"

.INCLUDE "text/ccs/increase_character_vitality.asm"

.INCLUDE "text/ccs/increase_character_luck.asm"

.INCLUDE "text/ccs/unknown_1D_23.asm"

.INCLUDE "text/ccs/unknown_19_27.asm"

.INCLUDE "unknown/C1/C17796-jp.asm"

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

.INCLUDE "unknown/C1/C1866D.asm"

.INCLUDE "unknown/C1/C1869D.asm"

.INCLUDE "text/display_text-jp.asm"

.INCLUDE "misc/give_item_to_specific_character.asm"

.INCLUDE "misc/give_item_to_character.asm"

.INCLUDE "misc/remove_item_from_inventory.asm"

.INCLUDE "misc/take_item_from_specific_character.asm"

.INCLUDE "misc/take_item_from_character.asm"

.INCLUDE "misc/reduce_hp_amtpercent.asm"

.INCLUDE "misc/recover_hp_amtpercent.asm"

.INCLUDE "misc/reduce_pp_amtpercent.asm"

.INCLUDE "misc/recover_pp_amtpercent.asm"

.INCLUDE "misc/equip_item.asm"

.INCLUDE "unknown/C1/C190E6.asm"

.INCLUDE "unknown/C1/C190F1-jp.asm"

.INCLUDE "misc/escargo_express_store.asm"

.INCLUDE "misc/escargo_express_move.asm"

.INCLUDE "unknown/C1/C191B0-jp.asm"

.INCLUDE "unknown/C1/C191F8.asm"

.INCLUDE "unknown/C1/C19216.asm"

.INCLUDE "unknown/C1/C19249.asm"

.INCLUDE "unknown/C1/C1931B-jp.asm"

.INCLUDE "unknown/C1/C193E7.asm"

.INCLUDE "unknown/C1/C19437.asm"

.INCLUDE "unknown/C1/C19441.asm"

.INCLUDE "unknown/C1/C1952F-jp.asm"

.INCLUDE "misc/inventory_get_item_name.asm"

.INCLUDE "unknown/C1/C19A11.asm"

.INCLUDE "unknown/C1/C19A43-jp.asm"

.INCLUDE "text/set_hppp_window_mode_item.asm"

.INCLUDE "unknown/C1/C19CDD.asm"

.INCLUDE "unknown/C1/C19D49.asm"

.INCLUDE "unknown/C1/C19DB5-jp.asm"

.INCLUDE "misc/get_item_type.asm"

.INCLUDE "unknown/C1/C19F29-jp.asm"

.INCLUDE "unknown/C1/C1A1D8-jp.asm"

.INCLUDE "unknown/C1/C1A778.asm"

.INCLUDE "unknown/C1/C1A795-jp.asm"

.INCLUDE "unknown/C1/C1AA18-jp.asm"

.INCLUDE "unknown/C1/C1AA5D-jp.asm"

.INCLUDE "unknown/C1/C1AAFA.asm"

.INCLUDE "unknown/C1/C1AC00.asm"

.INCLUDE "unknown/C1/C1AC4A.asm"

.INCLUDE "battle/return_battle_attacker_address.asm"

.INCLUDE "unknown/C1/C1ACA1.asm"

.INCLUDE "battle/return_battle_target_address.asm"

.INCLUDE "unknown/C1/C1ACF8.asm"

.INCLUDE "unknown/C1/C1AD02.asm"

.INCLUDE "unknown/C1/C1AD0A.asm"

.INCLUDE "unknown/C1/C1AD26.asm"

.INCLUDE "unknown/C1/C1AD42.asm"

.INCLUDE "unknown/C1/C1AD7D.asm"

.INCLUDE "battle/determine_targetting.asm"

.INCLUDE "overworld/use_item.asm"

.INCLUDE "unknown/C1/C1B5B6-jp.asm"

.INCLUDE "unknown/C1/C1BB06.asm"

.INCLUDE "unknown/C1/C1BB71-jp.asm"

.INCLUDE "overworld/teleport.asm"

.INCLUDE "overworld/attempt_homesickness.asm"

.INCLUDE "overworld/get_off_bicycle.asm"

.INCLUDE "unknown/C1/C1BEFC.asm"

.INCLUDE "unknown/C1/C1C046.asm"

.INCLUDE "unknown/C1/C1C165.asm"

.INCLUDE "unknown/C1/C1C1BA.asm"

.INCLUDE "unknown/C1/C1C32A.asm"

.INCLUDE "unknown/C1/C1C367.asm"

.INCLUDE "unknown/C1/C1C373.asm"

.INCLUDE "unknown/C1/C1C3B6.asm"

.INCLUDE "text/get_psi_name.asm"

.INCLUDE "battle/generate_psi_list.asm"

.INCLUDE "unknown/C1/C1C853.asm"

.INCLUDE "unknown/C1/C1C8BC.asm"

.INCLUDE "unknown/C1/C1CA06.asm"

.INCLUDE "unknown/C1/C1CA72-jp.asm"

.INCLUDE "unknown/C1/C1CAF5.asm"

.INCLUDE "unknown/C1/C1CB7F.asm"

.INCLUDE "battle/battle_psi_menu.asm"

.INCLUDE "unknown/C1/C1CE85.asm"

.INCLUDE "unknown/C1/C1CFC6-jp.asm"

.INCLUDE "unknown/C1/C1D038.asm"

.INCLUDE "unknown/C1/C1D08B.asm"

.INCLUDE "misc/level_up_char-jp.asm"

.INCLUDE "misc/reset_char_level_one.asm"

.INCLUDE "misc/gain_exp.asm"

.INCLUDE "misc/find_condiment.asm"

.INCLUDE "overworld/show_hp_alert.asm"

.INCLUDE "text/display_in_battle_text.asm"

.INCLUDE "text/display_text_wait.asm"

.INCLUDE "unknown/C1/C1DCCB.asm"

.INCLUDE "text/show_hppp_windows_redirect.asm"

.INCLUDE "text/hide_hppp_windows_redirect.asm"

.INCLUDE "text/create_window_redirect.asm"

.INCLUDE "text/set_window_focus_redirect.asm"

.INCLUDE "unknown/C1/C10FA3_redirect.asm"

.INCLUDE "text/close_focus_window_redirect.asm"

.INCLUDE "unknown/C1/C1DD5F.asm"

.INCLUDE "unknown/C1/C1AC4A_redirect.asm"

.INCLUDE "unknown/C1/C1ACA1_redirect.asm"

.INCLUDE "unknown/C1/C1ACF8_redirect.asm"

.INCLUDE "unknown/C1/C1DD82.asm"

.INCLUDE "unknown/C1/C1DD9F.asm"

.INCLUDE "misc/remove_item_from_inventory_redirect.asm"

.INCLUDE "unknown/C4/C43573_redirect.asm"

.INCLUDE "unknown/C3/C3E6F8_redirect-jp.asm"

.INCLUDE "text/selection_menu_setup-jp.asm"

.INCLUDE "text/print_menu_items_redirect.asm"

.INCLUDE "text/selection_menu_redirect.asm"

.INCLUDE "unknown/C1/C1CFC6_redirect.asm"

.INCLUDE "unknown/C1/C1242E_redirect.asm"

.INCLUDE "battle/battle_psi_menu_redirect.asm"

.INCLUDE "battle/actions/switch_weapon.asm"

.INCLUDE "battle/actions/switch_armor.asm"

.INCLUDE "misc/null/C1E1A2.asm"

.INCLUDE "battle/enemy_select_mode.asm"

.INCLUDE "unknown/C1/C1E48D-jp.asm"

.INCLUDE "unknown/C1/C1E4BE-jp.asm"

.INCLUDE "text/text_input_dialog-jp.asm"

.INCLUDE "text/enter_your_name_please-jp.asm"

.INCLUDE "intro/name_a_character.asm"

.INCLUDE "unknown/C1/C1EC8F-jp.asm"

.INCLUDE "unknown/C1/C1ECD1.asm"

.INCLUDE "system/saves/corruption_check.asm"

.INCLUDE "intro/file_select_menu-jp.asm"

.INCLUDE "unknown/C1/C1F07E-jp.asm"

.INCLUDE "unknown/C1/C1F14F-jp.asm"

.INCLUDE "unknown/C1/C1F2A8-jp.asm"

.INCLUDE "intro/file_select/open_text_speed_menu-jp.asm"

.INCLUDE "intro/file_select/open_sound_menu-jp.asm"

.INCLUDE "intro/file_select/open_flavour_menu.asm"

.INCLUDE "intro/file_select_menu_loop-jp.asm"

.INCLUDE "unknown/C1/C1FF2C.asm"

.INCLUDE "unknown/C1/C1FF6B.asm"

.INCLUDE "system/antipiracy/sram_check_routine_checksum.asm"

SRAM_CHECK_ROUTINE_CHECKSUM_VALUE:
	.WORD $2AD8
