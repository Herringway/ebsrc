.SEGMENT "BANK02"
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
.INCLUDE "symbols/battle_bgs.inc.asm"
.INCLUDE "symbols/battle_sprites.inc.asm"
.INCLUDE "symbols/globals.inc.asm"
.INCLUDE "symbols/misc.inc.asm"
.INCLUDE "symbols/text.inc.asm"

.INCLUDE "overworld/inflict_sunstroke_check.asm"

.INCLUDE "data/unknown/C200B9.asm"

.INCLUDE "unknown/C2/C200D9.asm"

.INCLUDE "unknown/C2/C20266.asm"

.INCLUDE "unknown/C2/C20293.asm"

.INCLUDE "unknown/C2/C202AC.asm"

.INCLUDE "text/set_window_title.asm"

.INCLUDE "unknown/C2/C2038B.asm"

.INCLUDE "text/hp_pp_window/draw.asm"

.INCLUDE "unknown/C2/C2077D.asm"

.INCLUDE "unknown/C2/C207B6.asm"

.INCLUDE "text/hp_pp_window/undraw.asm"

.INCLUDE "unknown/C2/C2087C.asm"

.INCLUDE "unknown/C2/C208B8.asm"

.INCLUDE "data/text/the.asm"

.INCLUDE "unknown/C2/C20A20.asm"

.INCLUDE "unknown/C2/C20ABC.asm"

.INCLUDE "unknown/C2/C20B65.asm"

.INCLUDE "text/hp_pp_window/separate_decimal_digits.asm"

.INCLUDE "text/hp_pp_window/fill_tile_buffer_x.asm"

.INCLUDE "text/hp_pp_window/fill_tile_buffer.asm"

.INCLUDE "text/hp_pp_window/fill_character_hp_tile_buffer.asm"

.INCLUDE "text/hp_pp_window/fill_character_pp_tile_buffer.asm"

.INCLUDE "unknown/C2/C20F58.asm"

.INCLUDE "misc/reset_hppp_rolling.asm"

.INCLUDE "unknown/C2/C21034.asm"

.INCLUDE "unknown/C2/C2108C.asm"

.INCLUDE "misc/hp_pp_roller.asm"

.INCLUDE "text/update_hppp_meter_tiles.asm"

.INCLUDE "text/get_event_flag.asm"

.INCLUDE "text/set_event_flag.asm"

.INCLUDE "unknown/C2/C216AD.asm"

.INCLUDE "audio/stop_music_redirect.asm"

.INCLUDE "audio/play_sound_and_unknown.asm"

.INCLUDE "unknown/C2/C216DB.asm"

.INCLUDE "misc/recalc_character_postmath_offense.asm"

.INCLUDE "misc/recalc_character_postmath_defense.asm"

.INCLUDE "misc/recalc_character_postmath_speed.asm"

.INCLUDE "misc/recalc_character_postmath_guts.asm"

.INCLUDE "misc/recalc_character_postmath_luck.asm"

.INCLUDE "misc/recalc_character_postmath_vitality.asm"

.INCLUDE "misc/recalc_character_postmath_iq.asm"

.INCLUDE "battle/recalc_character_miss_rate.asm"

.INCLUDE "battle/calc_resistances.asm"

.INCLUDE "misc/increase_wallet_balance.asm"

.INCLUDE "misc/decrease_wallet_balance.asm"

.INCLUDE "text/get_party_character_name.asm"

.INCLUDE "unknown/C2/C22351.asm"

.INCLUDE "unknown/C2/C2239D.asm"

.INCLUDE "unknown/C2/C223D9.asm"

.INCLUDE "unknown/C2/C22474.asm"

.INCLUDE "inventory/get_item_subtype.asm"

.INCLUDE "inventory/get_item_subtype2.asm"

.INCLUDE "unknown/C2/C22562.asm"

.INCLUDE "unknown/C2/C225AC.asm"

.INCLUDE "unknown/C2/C2260D.asm"

.INCLUDE "unknown/C2/C22673.asm"

.INCLUDE "unknown/C2/C226C5.asm"

.INCLUDE "unknown/C2/C226E6.asm"

.INCLUDE "unknown/C2/C226F0.asm"

.INCLUDE "unknown/C2/C2272F.asm"

.INCLUDE "unknown/C2/C2277C.asm"

.INCLUDE "misc/learn_special_psi.asm"

.INCLUDE "misc/atm_deposit.asm"

.INCLUDE "misc/atm_withdraw.asm"

.INCLUDE "misc/party_add_char.asm"

.INCLUDE "misc/party_remove_char.asm"

.INCLUDE "misc/save_game.asm"

.INCLUDE "unknown/C2/C22A3A.asm"

.INCLUDE "battle/init_scripted.asm"

.INCLUDE "unknown/C2/C23008.asm"

.INCLUDE "unknown/C2/C2307B.asm"

.INCLUDE "misc/set_teleport_box_destination.asm"

.INCLUDE "data/battle/consolation_item_table.asm"

.INCLUDE "battle/menu_handler.asm"

.INCLUDE "text/copy_enemy_name.asm"

.INCLUDE "text/fix_attacker_name.asm"

.INCLUDE "text/fix_target_name.asm"

.INCLUDE "unknown/C2/C23E32.asm"

.INCLUDE "unknown/C2/C23E8A.asm"

.INCLUDE "battle/find_targettable_npc.asm"

.INCLUDE "battle/get_shield_targetting.asm"

.INCLUDE "battle/feeling_strange_retargetting.asm"

.INCLUDE "unknown/C2/C240A4.asm"

.INCLUDE "battle/remove_status_untargettable_targets.asm"

.INCLUDE "battle/find_stealable_items.asm"

.INCLUDE "battle/select_stealable_item.asm"

.INCLUDE "unknown/C2/C24348.asm"

.INCLUDE "unknown/C2/C2437E.asm"

.INCLUDE "unknown/C2/C24434.asm"

.INCLUDE "battle/choose_target.asm"

.INCLUDE "unknown/C2/C24703.asm"

.INCLUDE "battle/main_battle_routine.asm"

.INCLUDE "unknown/C2/C26189.asm"

.INCLUDE "battle/instant_win_handler.asm"

.INCLUDE "unknown/C2/C2654C.asm"

.INCLUDE "battle/instant_win_check.asm"

.INCLUDE "battle/get_battle_action_type.asm"

.INCLUDE "battle/get_enemy_type.asm"

.INCLUDE "system/wait.asm"

.INCLUDE "unknown/C2/C269DE.asm"

.INCLUDE "system/math/rand_long.asm"

.INCLUDE "system/math/truncate_16_to_8.asm"

.INCLUDE "system/math/rand_limit.asm"

.INCLUDE "battle/50_percent_variance.asm"

.INCLUDE "battle/25_percent_variance.asm"

.INCLUDE "battle/success_255.asm"

.INCLUDE "battle/success_500.asm"

.INCLUDE "battle/target_allies.asm"

.INCLUDE "battle/target_all_enemies.asm"

.INCLUDE "battle/target_row.asm"

.INCLUDE "battle/target_all.asm"

.INCLUDE "battle/remove_npc_targetting.asm"

.INCLUDE "battle/random_targetting.asm"

.INCLUDE "battle/target_battler.asm"

.INCLUDE "battle/is_char_targetted.asm"

.INCLUDE "battle/remove_target.asm"

.INCLUDE "battle/remove_dead_targetting.asm"

.INCLUDE "battle/set_hp.asm"

.INCLUDE "battle/set_pp.asm"

.INCLUDE "battle/reduce_hp.asm"

.INCLUDE "battle/reduce_pp.asm"

.INCLUDE "battle/inflict_status.asm"

.INCLUDE "battle/recover_hp.asm"

.INCLUDE "battle/recover_pp.asm"

.INCLUDE "battle/revive_target.asm"

.INCLUDE "battle/ko_target.asm"

.INCLUDE "battle/success_luck80.asm"

.INCLUDE "battle/success_speed.asm"

.INCLUDE "battle/fail_attack_on_npcs.asm"

.INCLUDE "battle/increase_offense_16th.asm"

.INCLUDE "battle/increase_defense_16th.asm"

.INCLUDE "battle/decrease_offense_16th.asm"

.INCLUDE "battle/decrease_defense_16th.asm"

.INCLUDE "battle/swap_attacker_with_target.asm"

.INCLUDE "battle/calc_damage.asm"

.INCLUDE "battle/calc_damage_reduction.asm"

.INCLUDE "battle/miss_calc.asm"

.INCLUDE "battle/smaaaash.asm"

.INCLUDE "battle/determine_dodge.asm"

.INCLUDE "battle/actions/level_2_attack.asm"

.INCLUDE "battle/heal_strangeness.asm"

.INCLUDE "battle/actions/bash.asm"

.INCLUDE "battle/actions/level_4_attack.asm"

.INCLUDE "battle/actions/level_3_attack.asm"

.INCLUDE "battle/actions/level_1_attack.asm"

.INCLUDE "battle/actions/shoot.asm"

.INCLUDE "battle/actions/spy.asm"

.INCLUDE "battle/actions/null01.asm"

.INCLUDE "battle/actions/steal.asm"

.INCLUDE "battle/actions/freeze_time.asm"

.INCLUDE "battle/actions/diamondize.asm"

.INCLUDE "battle/actions/paralyze.asm"

.INCLUDE "battle/actions/nauseate.asm"

.INCLUDE "battle/actions/poison.asm"

.INCLUDE "battle/actions/cold.asm"

.INCLUDE "battle/actions/mushroomize.asm"

.INCLUDE "battle/actions/possess.asm"

.INCLUDE "battle/actions/crying.asm"

.INCLUDE "battle/actions/immobilize.asm"

.INCLUDE "battle/actions/solidify.asm"

.INCLUDE "battle/actions/brainshock_alpha_redirect.asm"

.INCLUDE "battle/success_luck40.asm"

.INCLUDE "battle/actions/distract.asm"

.INCLUDE "battle/actions/feel_strange.asm"

.INCLUDE "battle/actions/crying2.asm"

.INCLUDE "battle/actions/hypnosis_alpha_redirect.asm"

.INCLUDE "battle/actions/reduce_pp.asm"

.INCLUDE "battle/actions/cut_guts.asm"

.INCLUDE "battle/actions/reduce_offense_defense.asm"

.INCLUDE "battle/actions/level_2_attack_poison.asm"

.INCLUDE "battle/actions/bash_twice.asm"

.INCLUDE "battle/actions/null01_redirect.asm"

.INCLUDE "battle/actions/350_fire_damage.asm"

.INCLUDE "battle/actions/level_3_attack_copy.asm"

.INCLUDE "battle/actions/null02.asm"

.INCLUDE "battle/actions/null03.asm"

.INCLUDE "battle/actions/null04.asm"

.INCLUDE "battle/actions/null05.asm"

.INCLUDE "battle/actions/null06.asm"

.INCLUDE "battle/actions/null07.asm"

.INCLUDE "battle/actions/null08.asm"

.INCLUDE "battle/actions/null09.asm"

.INCLUDE "battle/actions/null10.asm"

.INCLUDE "battle/actions/null11.asm"

.INCLUDE "battle/actions/neutralize.asm"

.INCLUDE "unknown/C2/C290C6.asm"

.INCLUDE "battle/actions/level_2_attack_diamondize.asm"

.INCLUDE "battle/actions/reduce_offense.asm"

.INCLUDE "battle/actions/clumsy_robot_death.asm"

.INCLUDE "battle/actions/enemy_extend.asm"

.INCLUDE "battle/actions/master_barf_death.asm"

.INCLUDE "battle/psi_shield_nullify.asm"

.INCLUDE "battle/weaken_shield.asm"

.INCLUDE "battle/actions/psi_rockin_common.asm"

.INCLUDE "battle/actions/psi_rockin_alpha.asm"

.INCLUDE "battle/actions/psi_rockin_beta.asm"

.INCLUDE "battle/actions/psi_rockin_gamma.asm"

.INCLUDE "battle/actions/psi_rockin_omega.asm"

.INCLUDE "battle/actions/psi_fire_common.asm"

.INCLUDE "battle/actions/psi_fire_alpha.asm"

.INCLUDE "battle/actions/psi_fire_beta.asm"

.INCLUDE "battle/actions/psi_fire_gamma.asm"

.INCLUDE "battle/actions/psi_fire_omega.asm"

.INCLUDE "battle/actions/psi_freeze_common.asm"

.INCLUDE "battle/actions/psi_freeze_alpha.asm"

.INCLUDE "battle/actions/psi_freeze_beta.asm"

.INCLUDE "battle/actions/psi_freeze_gamma.asm"

.INCLUDE "battle/actions/psi_freeze_omega.asm"

.INCLUDE "battle/actions/psi_thunder_common.asm"

.INCLUDE "battle/actions/psi_thunder_alpha.asm"

.INCLUDE "battle/actions/psi_thunder_beta.asm"

.INCLUDE "battle/actions/psi_thunder_gamma.asm"

.INCLUDE "battle/actions/psi_thunder_omega.asm"

.INCLUDE "battle/actions/psi_flash_immunity_test.asm"

.INCLUDE "battle/actions/psi_flash_feeling_strange.asm"

.INCLUDE "battle/actions/psi_flash_paralysis.asm"

.INCLUDE "battle/actions/psi_flash_crying.asm"

.INCLUDE "battle/actions/psi_flash_alpha.asm"

.INCLUDE "battle/actions/psi_flash_beta.asm"

.INCLUDE "battle/actions/psi_flash_gamma.asm"

.INCLUDE "battle/actions/psi_flash_omega.asm"

.INCLUDE "battle/actions/psi_starstorm_common.asm"

.INCLUDE "battle/actions/psi_starstorm_alpha.asm"

.INCLUDE "battle/actions/psi_starstorm_omega.asm"

.INCLUDE "battle/actions/lifeup_common.asm"

.INCLUDE "battle/actions/lifeup_alpha.asm"

.INCLUDE "battle/actions/lifeup_beta.asm"

.INCLUDE "battle/actions/lifeup_gamma.asm"

.INCLUDE "battle/actions/lifeup_omega.asm"

.INCLUDE "battle/actions/healing_alpha.asm"

.INCLUDE "battle/actions/healing_beta.asm"

.INCLUDE "battle/actions/healing_gamma.asm"

.INCLUDE "battle/actions/healing_omega.asm"

.INCLUDE "battle/actions/shield_common.asm"

.INCLUDE "battle/actions/shield_alpha.asm"

.INCLUDE "battle/actions/shield_alpha_redirect.asm"

.INCLUDE "battle/actions/shield_beta.asm"

.INCLUDE "battle/actions/shield_beta_redirect.asm"

.INCLUDE "battle/actions/psi_shield_alpha.asm"

.INCLUDE "battle/actions/psi_shield_alpha_redirect.asm"

.INCLUDE "battle/actions/psi_shield_beta.asm"

.INCLUDE "battle/actions/psi_shield_beta_redirect.asm"

.INCLUDE "battle/actions/offense_up_alpha.asm"

.INCLUDE "battle/actions/offense_up_alpha_redirect.asm"

.INCLUDE "battle/actions/defense_down_alpha.asm"

.INCLUDE "battle/actions/defense_down_alpha_redirect.asm"

.INCLUDE "battle/actions/hypnosis_alpha.asm"

.INCLUDE "battle/actions/hypnosis_alpha_redirect_copy.asm"

.INCLUDE "battle/actions/magnet_alpha.asm"

.INCLUDE "battle/actions/magnet_omega.asm"

.INCLUDE "battle/actions/paralysis_alpha.asm"

.INCLUDE "battle/actions/paralysis_alpha_redirect.asm"

.INCLUDE "battle/actions/brainshock_alpha.asm"

.INCLUDE "battle/actions/brainshock_alpha_redirect_copy.asm"

.INCLUDE "battle/actions/hp_recovery_1d4.asm"

.INCLUDE "battle/actions/hp_recovery_50.asm"

.INCLUDE "battle/actions/hp_recovery_200.asm"

.INCLUDE "battle/actions/pp_recovery_20.asm"

.INCLUDE "battle/actions/pp_recovery_80.asm"

.INCLUDE "battle/actions/iq_up_1d4.asm"

.INCLUDE "battle/actions/guts_up_1d4.asm"

.INCLUDE "battle/actions/speed_up_1d4.asm"

.INCLUDE "battle/actions/vitality_up_1d4.asm"

.INCLUDE "battle/actions/luck_up_1d4.asm"

.INCLUDE "battle/actions/hp_recovery_300.asm"

.INCLUDE "battle/actions/random_stat_up_1d4.asm"

.INCLUDE "battle/actions/hp_recovery_10.asm"

.INCLUDE "battle/actions/hp_recovery_100.asm"

.INCLUDE "battle/actions/hp_recovery_10000.asm"

.INCLUDE "battle/actions/heal_poison.asm"

.INCLUDE "battle/actions/counter_psi.asm"

.INCLUDE "battle/actions/shield_killer.asm"

.INCLUDE "battle/actions/hp_sucker.asm"

.INCLUDE "battle/actions/hungry_hp_sucker.asm"

.INCLUDE "battle/actions/mummy_wrap.asm"

.INCLUDE "battle/actions/bottle_rocket_common.asm"

.INCLUDE "battle/actions/bottle_rocket.asm"

.INCLUDE "battle/actions/big_bottle_rocket.asm"

.INCLUDE "battle/actions/multi_bottle_rocket.asm"

.INCLUDE "battle/actions/handbag_strap.asm"

.INCLUDE "battle/actions/bomb_common.asm"

.INCLUDE "battle/actions/bomb.asm"

.INCLUDE "battle/actions/super_bomb.asm"

.INCLUDE "battle/actions/solidify_2.asm"

.INCLUDE "battle/actions/yogurt_dispenser.asm"

.INCLUDE "battle/actions/snake.asm"

.INCLUDE "battle/actions/inflict_solidification.asm"

.INCLUDE "battle/actions/inflict_poison.asm"

.INCLUDE "battle/actions/bag_of_dragonite.asm"

.INCLUDE "battle/actions/insect_spray_common.asm"

.INCLUDE "battle/actions/insecticide_spray.asm"

.INCLUDE "battle/actions/xterminator_spray.asm"

.INCLUDE "battle/actions/rust_promoter_common.asm"

.INCLUDE "battle/actions/rust_promoter.asm"

.INCLUDE "battle/actions/rust_promoter_dx.asm"

.INCLUDE "battle/actions/sudden_guts_pill.asm"

.INCLUDE "battle/actions/defense_spray.asm"

.INCLUDE "battle/actions/defense_shower.asm"

.INCLUDE "battle/boss_battle_check.asm"

.INCLUDE "battle/actions/teleport_box.asm"

.INCLUDE "battle/actions/pray_subtle.asm"

.INCLUDE "battle/actions/pray_warm.asm"

.INCLUDE "battle/actions/pray_golden.asm"

.INCLUDE "battle/actions/pray_mysterious.asm"

.INCLUDE "battle/actions/pray_rainbow.asm"

.INCLUDE "battle/actions/pray_aroma.asm"

.INCLUDE "battle/actions/pray_rending_sound.asm"

.INCLUDE "battle/actions/pray.asm"

.INCLUDE "battle/copy_mirror_data.asm"

.INCLUDE "battle/actions/mirror.asm"

.INCLUDE "battle/apply_condiment.asm"

.INCLUDE "battle/eat_food.asm"

.INCLUDE "battle/calc_psi_damage_modifiers.asm"

.INCLUDE "battle/calc_psi_resistance_modifiers.asm"

.INCLUDE "unknown/C2/C2B66A.asm"

.INCLUDE "battle/init_enemy_stats.asm"

.INCLUDE "battle/init_player_stats.asm"

.INCLUDE "battle/count_chars.asm"

.INCLUDE "battle/check_dead_players.asm"

.INCLUDE "battle/reset_post_battle_stats.asm"

.INCLUDE "unknown/C2/C2BCB9.asm"

.INCLUDE "battle/lose_hp_status.asm"

.INCLUDE "unknown/C2/C2BD13.asm"

.INCLUDE "battle/call_for_help_common.asm"

.INCLUDE "battle/actions/sow_seeds.asm"

.INCLUDE "battle/actions/call_for_help.asm"

.INCLUDE "battle/actions/rainbow_of_colours.asm"

.INCLUDE "battle/actions/fly_honey.asm"

.INCLUDE "unknown/C2/C2C21F.asm"

.INCLUDE "unknown/C2/C2C32C.asm"

.INCLUDE "unknown/C2/C2C37A.asm"

.INCLUDE "battle/giygas_hurt_prayer.asm"

.INCLUDE "unknown/C2/C2C41F.asm"

.INCLUDE "battle/actions/pokey_speech_1.asm"

.INCLUDE "battle/actions/null12.asm"

.INCLUDE "battle/actions/pokey_speech_2.asm"

.INCLUDE "battle/actions/giygas_prayer_1.asm"

.INCLUDE "battle/actions/giygas_prayer_2.asm"

.INCLUDE "battle/actions/giygas_prayer_3.asm"

.INCLUDE "battle/actions/giygas_prayer_4.asm"

.INCLUDE "battle/actions/giygas_prayer_5.asm"

.INCLUDE "battle/actions/giygas_prayer_6.asm"

.INCLUDE "battle/actions/giygas_prayer_7.asm"

.INCLUDE "battle/actions/giygas_prayer_8.asm"

.INCLUDE "battle/actions/giygas_prayer_9.asm"

.INCLUDE "battle/load_enemy_battle_sprites.asm"

.INCLUDE "misc/battlebgs/generate_frame.asm"

.INCLUDE "unknown/C2/C2CFE5.asm"

.INCLUDE "unknown/C2/C2D0AC.asm"

.INCLUDE "battle/load_battlebg.asm"

.INCLUDE "unknown/C2/C2DAE3.asm"

.INCLUDE "unknown/C2/C2DB14.asm"

.INCLUDE "unknown/C2/C2DB3F.asm"

.INCLUDE "unknown/C2/C2DE0F.asm"

.INCLUDE "unknown/C2/C2DE96.asm"

.INCLUDE "unknown/C2/C2DF2E.asm"

.INCLUDE "unknown/C2/C2E08E.asm"

.INCLUDE "unknown/C2/C2E0E7.asm"

.INCLUDE "battle/show_psi_animation.asm"

.INCLUDE "unknown/C2/C2E6B3.asm"

.INCLUDE "unknown/C2/C2E8C4.asm"

.INCLUDE "overworld/battle_swirl_sequence.asm"

.INCLUDE "unknown/C2/C2E9C8.asm"

.INCLUDE "unknown/C2/C2E9ED.asm"

.INCLUDE "unknown/C2/C2EA15.asm"

.INCLUDE "unknown/C2/C2EA74.asm"

.INCLUDE "unknown/C2/C2EAAA.asm"

.INCLUDE "unknown/C2/C2EACF.asm"

.INCLUDE "battle/load_battle_sprite.asm"

.INCLUDE "unknown/C2/C2EEE7.asm"

.INCLUDE "battle/get_battle_sprite_width.asm"

.INCLUDE "battle/get_battle_sprite_height.asm"

.INCLUDE "unknown/C2/C2F09F.asm"

.INCLUDE "unknown/C2/C2F0D1.asm"

.INCLUDE "unknown/C2/C2F121.asm"

.INCLUDE "battle/render_battle_sprite_row.asm"

.INCLUDE "unknown/C2/C2F8F9.asm"

.INCLUDE "unknown/C2/C2F917.asm"

.INCLUDE "unknown/C2/C2FAD2.asm"

.INCLUDE "unknown/C2/C2FAD8.asm"

.INCLUDE "unknown/C2/C2FADE.asm"

.INCLUDE "unknown/C2/C2FB35.asm"

.INCLUDE "unknown/C2/C2FCA6.asm"

.INCLUDE "unknown/C2/C2FD99.asm"

.INCLUDE "unknown/C2/C2FEF9.asm"

.INCLUDE "unknown/C2/C2FF9A.asm"

.INCLUDE "data/events/scripts/000.asm"
