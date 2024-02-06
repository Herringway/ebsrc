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

.INCLUDE "unknown/C0/C0035B.asm"

.INCLUDE "system/get_colour_average.asm"

.INCLUDE "unknown/C0/C00434.asm"

.INCLUDE "unknown/C0/C00480.asm"

.INCLUDE "unknown/C0/C005E7.asm"

.INCLUDE "overworld/load_tile_collision.asm"

.INCLUDE "unknown/C0/C0067E.asm"

.INCLUDE "unknown/C0/C006F2.asm"

.INCLUDE "overworld/load_special_sprite_palette.asm"

.INCLUDE "overworld/load_map_palette.asm"

.INCLUDE "overworld/load_map_at_sector.asm"

.INCLUDE "overworld/load_sector_attributes.asm"

.INCLUDE "unknown/C0/C00AC5.asm"

.INCLUDE "unknown/C0/C00BDC.asm"

.INCLUDE "overworld/load_collision_row.asm"

.INCLUDE "overworld/load_collision_column.asm"

.INCLUDE "unknown/C0/C00E16.asm"

.INCLUDE "unknown/C0/C00FCB.asm"

.INCLUDE "unknown/C0/C01181.asm"

.INCLUDE "unknown/C0/C0122A.asm"

.INCLUDE "overworld/reload_map_at_position.asm"

.INCLUDE "overworld/load_map_at_position.asm"

.INCLUDE "overworld/refresh_map_at_position.asm"

.INCLUDE "unknown/C0/C01731.asm"

.INCLUDE "unknown/C0/C017EA.asm"

.INCLUDE "overworld/reload_map.asm"

.INCLUDE "overworld/initialize_map.asm"

.INCLUDE "unknown/C0/C019E2.asm"

.INCLUDE "unknown/C0/C01A63.asm"

.INCLUDE "overworld/initialize_misc_object_data.asm"

.INCLUDE "unknown/C0/C01A86.asm"

.INCLUDE "overworld/find_free_space_7E4682.asm"

.INCLUDE "unknown/C0/C01B15.asm"

.INCLUDE "unknown/C0/C01B96.asm"

.INCLUDE "system/alloc_sprite_mem.asm"

.INCLUDE "unknown/C0/C01C52.asm"

.INCLUDE "unknown/C0/C01D38.asm"

.INCLUDE "unknown/C0/C01DED.asm"

.INCLUDE "overworld/create_entity.asm"

.INCLUDE "unknown/C0/C020F1.asm"

.INCLUDE "unknown/C0/C02140.asm"

.INCLUDE "unknown/C0/C02194.asm"

.INCLUDE "unknown/C0/C021E6.asm"

.INCLUDE "unknown/C0/C0222B-jp.asm"

.INCLUDE "unknown/C0/C0255C.asm"

.INCLUDE "unknown/C0/C025CF.asm"

.INCLUDE "unknown/C0/C0263D.asm"

.INCLUDE "unknown/C0/C02668.asm"

.INCLUDE "overworld/spawn_horizontal.asm"

.INCLUDE "overworld/spawn_vertical.asm"

.INCLUDE "overworld/velocity_store.asm"

.INCLUDE "unknown/C0/C02C3E.asm"

.INCLUDE "overworld/reset_mushroomized_walking.asm"

.INCLUDE "overworld/mushroomization_movement_swap.asm"

.INCLUDE "unknown/C0/C02D29.asm"

.INCLUDE "overworld/adjust_position_horizontal.asm"

.INCLUDE "overworld/adjust_position_vertical.asm"

.INCLUDE "unknown/C0/C0329F.asm"

.INCLUDE "unknown/C0/C032EC-jp.asm"

.INCLUDE "overworld/update_party-jp.asm"

.INCLUDE "unknown/C0/C0369B-jp.asm"

.INCLUDE "unknown/C0/C03903.asm"

.INCLUDE "unknown/C0/C039E5.asm"

.INCLUDE "unknown/C0/C03A24.asm"

.INCLUDE "unknown/C0/C03A94.asm"

.INCLUDE "unknown/C0/C03C25.asm"

.INCLUDE "unknown/C0/C03C4B.asm"

.INCLUDE "overworld/get_on_bicycle.asm"

.INCLUDE "unknown/C0/C03CFD.asm"

.INCLUDE "unknown/C0/C03DAA.asm"

.INCLUDE "unknown/C0/C03E25-jp.asm"

.INCLUDE "unknown/C0/C03E5A-jp.asm"

.INCLUDE "unknown/C0/C03E9D.asm"

.INCLUDE "unknown/C0/C03EC3.asm"

.INCLUDE "unknown/C0/C03F1E-jp.asm"

.INCLUDE "unknown/C0/C03FA9.asm"

.INCLUDE "system/center_screen.asm"

.INCLUDE "unknown/C0/C0402B.asm"

.INCLUDE "unknown/C0/C04049.asm"

.INCLUDE "overworld/map_input_to_direction.asm"

.INCLUDE "unknown/C0/C04116.asm"

.INCLUDE "unknown/C0/C041E3.asm"

.INCLUDE "overworld/find_nearby_checkable_tpt_entry.asm"

.INCLUDE "unknown/C0/C042C2.asm"

.INCLUDE "unknown/C0/C042EF.asm"

.INCLUDE "unknown/C0/C043BC.asm"

.INCLUDE "overworld/find_nearby_talkable_tpt_entry.asm"

.INCLUDE "unknown/C0/C0449B.asm"

.INCLUDE "unknown/C0/C0476D.asm"

.INCLUDE "unknown/C0/C047CF.asm"

.INCLUDE "unknown/C0/C048D3-jp.asm"

.INCLUDE "unknown/C0/C04A7B.asm"

.INCLUDE "unknown/C0/C04A88.asm"

.INCLUDE "unknown/C0/C04AAD.asm"

.INCLUDE "unknown/C0/C04B53.asm"

.INCLUDE "unknown/C0/C04C45.asm"

.INCLUDE "unknown/C0/C04D78.asm"

.INCLUDE "unknown/C0/C04F47.asm"

.INCLUDE "unknown/C0/C04F60.asm"

.INCLUDE "unknown/C0/C04F9F.asm"

.INCLUDE "unknown/C0/C04FFE.asm"

.INCLUDE "unknown/C0/C05200.asm"

.INCLUDE "battle/init_common.asm"

.INCLUDE "unknown/C0/C052D4.asm"

.INCLUDE "unknown/C0/C0546B.asm"

.INCLUDE "unknown/C0/C054C9.asm"

.INCLUDE "unknown/C0/C05503.asm"

.INCLUDE "unknown/C0/C0559C.asm"

.INCLUDE "unknown/C0/C05639.asm"

.INCLUDE "unknown/C0/C056D0.asm"

.INCLUDE "unknown/C0/C05769.asm"

.INCLUDE "unknown/C0/C057E8.asm"

.INCLUDE "unknown/C0/C0583C.asm"

.INCLUDE "unknown/C0/C05890.asm"

.INCLUDE "unknown/C0/C059EF.asm"

.INCLUDE "unknown/C0/C05B4E.asm"

.INCLUDE "unknown/C0/C05B7B.asm"

.INCLUDE "unknown/C0/C05CD7.asm"

.INCLUDE "unknown/C0/C05D8B.asm"

.INCLUDE "unknown/C0/C05DE7.asm"

.INCLUDE "unknown/C0/C05E3B.asm"

.INCLUDE "unknown/C0/C05E76.asm"

.INCLUDE "unknown/C0/C05E82.asm"

.INCLUDE "unknown/C0/C05ECE.asm"

.INCLUDE "unknown/C0/C05F33.asm"

.INCLUDE "unknown/C0/C05F82.asm"

.INCLUDE "unknown/C0/C05FD1.asm"

.INCLUDE "overworld/npc_collision_check.asm"

.INCLUDE "unknown/C0/C0613C.asm"

.INCLUDE "unknown/C0/C06267.asm"

.INCLUDE "unknown/C0/C06478.asm"

.INCLUDE "unknown/C0/C064A6.asm"

.INCLUDE "unknown/C0/C064D4.asm"

.INCLUDE "unknown/C0/C064E3.asm"

.INCLUDE "unknown/C0/C06537.asm"

.INCLUDE "unknown/C0/C0654E.asm"

.INCLUDE "unknown/C0/C06578.asm"

.INCLUDE "unknown/C0/C065A3.asm"

.INCLUDE "unknown/C0/C065C2.asm"

.INCLUDE "overworld/screen_transition.asm"

.INCLUDE "overworld/get_screen_transition_sound_effect.asm"

.INCLUDE "unknown/C0/C068F4.asm"

.INCLUDE "unknown/C0/C069AF.asm"

.INCLUDE "overworld/change_music_5DD6.asm"

.INCLUDE "unknown/C0/C069F7.asm"

.INCLUDE "unknown/C0/C06A07.asm"

.INCLUDE "unknown/C0/C06A1B.asm"

.INCLUDE "unknown/C0/C06A8B.asm"

.INCLUDE "unknown/C0/C06A8E.asm"

.INCLUDE "unknown/C0/C06A91.asm"

.INCLUDE "unknown/C0/C06ACA.asm"

.INCLUDE "overworld/spawn_buzz_buzz.asm"

.INCLUDE "unknown/C0/C06B3D.asm"

.INCLUDE "overworld/door_transition.asm"

.INCLUDE "data/unknown/C06E02.asm"

.INCLUDE "unknown/C0/C06E1A.asm"

.INCLUDE "unknown/C0/C06E2C.asm"

.INCLUDE "unknown/C0/C06E4A.asm"

.INCLUDE "unknown/C0/C06E6E-jp.asm"

.INCLUDE "unknown/C0/C06F82.asm"

.INCLUDE "unknown/C0/C06FED.asm"

.INCLUDE "unknown/C0/C0705F.asm"

.INCLUDE "unknown/C0/C070CB.asm"

.INCLUDE "overworld/disable_hotspot.asm"

.INCLUDE "overworld/reload_hotspots.asm"

.INCLUDE "overworld/activate_hotspot.asm"

.INCLUDE "unknown/C0/C073C0.asm"

.INCLUDE "unknown/C0/C07477.asm"

.INCLUDE "unknown/C0/C07526.asm"

.INCLUDE "overworld/process_queued_interactions.asm"

.INCLUDE "unknown/C0/C0769C.asm"

.INCLUDE "unknown/C0/C076C8.asm"

.INCLUDE "unknown/C0/C07716.asm"

.INCLUDE "unknown/C0/C0777A.asm"

.INCLUDE "unknown/C0/C0778A.asm"

.INCLUDE "unknown/C0/C0780F.asm"

.INCLUDE "unknown/C0/C079EC.asm"

.INCLUDE "unknown/C0/C07A31.asm"

.INCLUDE "unknown/C0/C07A56.asm"

.INCLUDE "unknown/C0/C07B52.asm"

.INCLUDE "unknown/C0/C07C5B.asm"

.SEGMENT "BANK00B"

.INCLUDE "system/reset.asm"

.INCLUDE "system/reset_vector.asm"

.INCLUDE "system/nmi_vector.asm"

.INCLUDE "system/irq_vector.asm"

.INCLUDE "system/irq_nmi.asm"

.INCLUDE "system/test_sram_size.asm"

.INCLUDE "unknown/C0/C083B8.asm"

.INCLUDE "unknown/C0/C083C1.asm"

.INCLUDE "unknown/C0/C083E3.asm"

.INCLUDE "system/read_joypad.asm"

.INCLUDE "unknown/C0/C08456.asm"

.INCLUDE "unknown/C0/C08496.asm"

.INCLUDE "system/process_sfx_queue.asm"

.INCLUDE "system/execute_irq_callback.asm"

.INCLUDE "system/default_irq_callback.asm"

.INCLUDE "system/set_irq_callback.asm"

.INCLUDE "system/reset_irq_callback.asm"

.INCLUDE "unknown/C0/C08529.asm"

.INCLUDE "unknown/C0/C0856B.asm"

.INCLUDE "unknown/C0/C08573.asm"

.INCLUDE "system/transfer_to_vram.asm"

.INCLUDE "system/prepare_vram_copy.asm"

.INCLUDE "system/copy_to_vram_redirect.asm"

.INCLUDE "system/copy_to_vram.asm"

.INCLUDE "system/sbrk.asm"

.INCLUDE "system/enable_nmi_joypad.asm"

.INCLUDE "unknown/C0/C08726.asm"

.INCLUDE "unknown/C0/C08744.asm"

.INCLUDE "system/wait_until_next_frame.asm"

.INCLUDE "unknown/C0/C0878B.asm"

.INCLUDE "system/set_inidisp_far.asm"

.INCLUDE "system/set_inidisp.asm"

.INCLUDE "unknown/C0/C087AB_redirect.asm"

.INCLUDE "unknown/C0/C087AB.asm"

.INCLUDE "system/fade_in_with_mosaic.asm"

.INCLUDE "system/fade_out_with_mosaic.asm"

.INCLUDE "system/fade_in.asm"

.INCLUDE "system/fade_out.asm"

.INCLUDE "unknown/C0/C0888B.asm"

.INCLUDE "unknown/C0/C088A5.asm"

.INCLUDE "system/oam_clear.asm"

.INCLUDE "unknown/C0/C08B19.asm"

.INCLUDE "unknown/C0/C08B8E.asm"

.INCLUDE "unknown/C0/C08C53.asm"

.INCLUDE "unknown/C0/C08C54.asm"

.INCLUDE "unknown/C0/C08C58.asm"

.INCLUDE "data/C08C58_jumps.asm"

.INCLUDE "unknown/C0/C08C6D.asm"

.INCLUDE "unknown/C0/C08C87.asm"

.INCLUDE "unknown/C0/C08CA1.asm"

.INCLUDE "unknown/C0/C08CBB.asm"

.INCLUDE "unknown/C0/C08CD5.asm"

.INCLUDE "unknown/C0/C08D79.asm"

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

.INCLUDE "data/unknown/C08FC2.asm"

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

.INCLUDE "unknown/C0/C09279.asm"

.INCLUDE "unknown/C0/C0927C-jp.asm"

.INCLUDE "overworld/init_entity.asm"

.INCLUDE "unknown/C0/C0943C.asm"

.INCLUDE "unknown/C0/C09451.asm"

.INCLUDE "overworld/actionscript/run_actionscript_frame.asm"

.INCLUDE "unknown/C0/C094D0.asm"

.INCLUDE "unknown/C0/C09506.asm"

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

.INCLUDE "unknown/C0/C09907.asm"

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

.INCLUDE "data/unknown/C09ABD.asm"

.INCLUDE "unknown/C0/C09AC5.asm"

.INCLUDE "unknown/C0/C09ACC.asm"

.INCLUDE "unknown/C0/C09AD3.asm"

.INCLUDE "unknown/C0/C09ADB.asm"

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

.INCLUDE "unknown/C0/C09C02.asm"

.INCLUDE "unknown/C0/C09C35.asm"

.INCLUDE "unknown/C0/C09C3B.asm"

.INCLUDE "unknown/C0/C09C57.asm"

.INCLUDE "unknown/C0/C09C73.asm"

.INCLUDE "unknown/C0/C09C8F.asm"

.INCLUDE "unknown/C0/C09C99.asm"

.INCLUDE "unknown/C0/C09CB5.asm"

.INCLUDE "unknown/C0/C09CD7.asm"

.INCLUDE "unknown/C0/C09D03.asm"

.INCLUDE "unknown/C0/C09D12.asm"

.INCLUDE "unknown/C0/C09D1F.asm"

.INCLUDE "unknown/C0/C09D3E.asm"

.INCLUDE "unknown/C0/C09D60.asm"

.INCLUDE "unknown/C0/C09D78.asm"

.INCLUDE "overworld/actionscript/script/read8.asm"

.INCLUDE "overworld/actionscript/script/read8_copy.asm"

.INCLUDE "overworld/actionscript/script/read16.asm"

.INCLUDE "overworld/actionscript/script/read16_copy.asm"

.INCLUDE "overworld/actionscript/jump_to_loaded_movement_pointer.asm"

.INCLUDE "overworld/actionscript/clear_sprite_tick_callback.asm"

.INCLUDE "unknown/C0/C09DAE.asm"

.INCLUDE "unknown/C0/C09E71.asm"

.INCLUDE "unknown/C0/C09E79.asm"

.INCLUDE "unknown/C0/C09E98.asm"

.INCLUDE "unknown/C0/C09EAC.asm"

.INCLUDE "unknown/C0/C09ECE.asm"

.INCLUDE "unknown/C0/C09EFF.asm"

.INCLUDE "unknown/C0/C09F3B.asm"

.INCLUDE "unknown/C0/C09F71.asm"

.INCLUDE "overworld/actionscript/choose_random.asm"

.INCLUDE "unknown/C0/C09FA8.asm"

.INCLUDE "overworld/actionscript/fade_in.asm"

.INCLUDE "overworld/actionscript/fade_out.asm"

.INCLUDE "unknown/C0/C09FAE.asm"

.INCLUDE "unknown/C0/C09FF1.asm"

.INCLUDE "unknown/C0/C0A00C.asm"

.INCLUDE "unknown/C0/C0A023.asm"

.INCLUDE "unknown/C0/C0A03A.asm"

.INCLUDE "unknown/C0/C0A055.asm"

.INCLUDE "unknown/C0/C0A06C.asm"

.INCLUDE "unknown/C0/C0A089.asm"

.INCLUDE "unknown/C0/C0A0A0.asm"

.INCLUDE "unknown/C0/C0A0BB.asm"

.INCLUDE "unknown/C0/C0A0CA.asm"

.INCLUDE "unknown/C0/C0A0E3.asm"

.INCLUDE "unknown/C0/C0A0FA.asm"

.INCLUDE "system/check_hardware.asm"

.INCLUDE "unknown/C0/C0A156_redirect.asm"

.INCLUDE "unknown/C0/C0A156.asm"

.INCLUDE "data/unknown/C0A1AE.asm"

.INCLUDE "unknown/C0/C0A1CE.asm"

.INCLUDE "unknown/C0/C0A1F2.asm"

.INCLUDE "data/unknown/C0A20C.asm"

.INCLUDE "unknown/C0/C0A21C.asm"

.INCLUDE "unknown/C0/C0A230.asm"

.INCLUDE "unknown/C0/C0A254.asm"

.INCLUDE "unknown/C0/C0A26B.asm"

.INCLUDE "data/unknown/C0A2AB.asm"

.INCLUDE "unknown/C0/C0A2B7.asm"

.INCLUDE "unknown/C0/C0A2E1.asm"

.INCLUDE "data/unknown/C0A30B.asm"

.INCLUDE "unknown/C0/C0A317.asm"

.INCLUDE "data/unknown/C0A350.asm"

.INCLUDE "unknown/C0/C0A360.asm"

.INCLUDE "unknown/C0/C0A384.asm"

.INCLUDE "unknown/C0/C0A3A4.asm"

.INCLUDE "unknown/C0/C0A443.asm"

.INCLUDE "unknown/C0/C0A56E.asm"

.INCLUDE "data/sprite_direction_mapping_4_direction.asm"

.INCLUDE "data/sprite_direction_mapping_8_direction.asm"

.INCLUDE "system/math/rand_0_3.asm"

.INCLUDE "system/math/rand_0_7.asm"

.INCLUDE "unknown/C0/C0A643.asm"

.INCLUDE "overworld/actionscript/set_direction8.asm"

.INCLUDE "overworld/actionscript/set_direction.asm"

.INCLUDE "unknown/C0/C0A66D.asm"

.INCLUDE "unknown/C0/C0A673.asm"

.INCLUDE "overworld/actionscript/set_surface_flags.asm"

.INCLUDE "unknown/C0/C0A685.asm"

.INCLUDE "unknown/C0/C0A691.asm"

.INCLUDE "unknown/C0/C0A697.asm"

.INCLUDE "unknown/C0/C0A6A2.asm"

.INCLUDE "unknown/C0/C0A6AD.asm"

.INCLUDE "unknown/C0/C0A6B8.asm"

.INCLUDE "unknown/C0/C0A6C5.asm"

.INCLUDE "unknown/C0/C0A6CB.asm"

.INCLUDE "overworld/actionscript/disable_current_entity_collision.asm"

.INCLUDE "overworld/actionscript/clear_current_entity_collision.asm"

.INCLUDE "unknown/C0/C0A6E3.asm"

.INCLUDE "unknown/C0/C0A780.asm"

.INCLUDE "unknown/C0/C0A794.asm"

.INCLUDE "overworld/actionscript/disable_current_entity_collision2.asm"

.INCLUDE "overworld/actionscript/clear_current_entity_collision2.asm"

.INCLUDE "unknown/C0/C0A841.asm"

.INCLUDE "unknown/C0/C0A84C.asm"

.INCLUDE "unknown/C0/C0A857.asm"

.INCLUDE "unknown/C0/C0A864.asm"

.INCLUDE "unknown/C0/C0A86F.asm"

.INCLUDE "unknown/C0/C0A87A.asm"

.INCLUDE "unknown/C0/C0A88D.asm"

.INCLUDE "unknown/C0/C0A8A0.asm"

.INCLUDE "unknown/C0/C0A8B3.asm"

.INCLUDE "unknown/C0/C0A8C6.asm"

.INCLUDE "unknown/C0/C0A8D1.asm"

.INCLUDE "unknown/C0/C0A8DC.asm"

.INCLUDE "unknown/C0/C0A8E7.asm"

.INCLUDE "unknown/C0/C0A8EF.asm"

.INCLUDE "overworld/actionscript/prepare_new_entity_at_self.asm"

.INCLUDE "overworld/actionscript/prepare_new_entity_at_party_leader.asm"

.INCLUDE "overworld/actionscript/prepare_new_entity_at_teleport_destination.asm"

.INCLUDE "overworld/actionscript/prepare_new_entity.asm"

.INCLUDE "unknown/C0/C0A92D.asm"

.INCLUDE "unknown/C0/C0A938.asm"

.INCLUDE "overworld/actionscript/get_position_of_party_member.asm"

.INCLUDE "unknown/C0/C0A94E.asm"

.INCLUDE "unknown/C0/C0A959.asm"

.INCLUDE "unknown/C0/C0A964.asm"

.INCLUDE "battle/load_battlebg_movement.asm"

.INCLUDE "unknown/C0/C0A98B.asm"

.INCLUDE "unknown/C0/C0A99F.asm"

.INCLUDE "unknown/C0/C0A9B3.asm"

.INCLUDE "unknown/C0/C0A9CF.asm"

.INCLUDE "unknown/C0/C0A9EB.asm"

.INCLUDE "overworld/actionscript/fade_out_with_mosaic.asm"

.INCLUDE "unknown/C0/C0AA23.asm"

.INCLUDE "unknown/C0/C0AA3F.asm"

.INCLUDE "unknown/C0/C0AA6E.asm"

.INCLUDE "unknown/C0/C0AAAC.asm"

.INCLUDE "unknown/C0/C0AAB5.asm"

.INCLUDE "unknown/C0/C0AACD.asm"

.INCLUDE "unknown/C0/C0AAD1.asm"

.INCLUDE "unknown/C0/C0AAD5.asm"

.INCLUDE "unknown/C0/C0AAFD.asm"

.INCLUDE "audio/load_spc700_data.asm"

.INCLUDE "audio/wait_for_spc700.asm"

.INCLUDE "unknown/C0/C0ABBD.asm"

.INCLUDE "audio/stop_music.asm"

.INCLUDE "audio/play_sound.asm"

.INCLUDE "unknown/C0/C0AC0C.asm"

.INCLUDE "unknown/C0/C0AC20.asm"

.INCLUDE "data/stereo_mono_data.asm"

.INCLUDE "unknown/C0/C0AC3A.asm"

.INCLUDE "unknown/C0/C0AC43.asm"

.INCLUDE "unknown/C0/C0AD56.asm"

.INCLUDE "data/events/scripts/786.asm"

.INCLUDE "unknown/C0/C0AD9F.asm"

.INCLUDE "misc/battlebgs/do_battlebg_dma.asm"

.INCLUDE "data/dma_flags.asm"

.INCLUDE "data/dma_target_registers.asm"

.INCLUDE "data/unknown/C0AE26.asm"

.INCLUDE "data/unknown/C0AE2D.asm"

.INCLUDE "unknown/C0/C0AE34.asm"

.INCLUDE "data/unknown/C0AE44.asm"

.INCLUDE "misc/battlebgs/load_bg_offset_parameters.asm"

.INCLUDE "misc/battlebgs/load_bg_offset_parameters2.asm"

.INCLUDE "misc/battlebgs/prepare_bg_offset_tables.asm"

.INCLUDE "unknown/C0/C0AFCD.asm"

.INCLUDE "data/unknown/C0AFF1.asm"

.INCLUDE "system/set_coldata.asm"

.INCLUDE "system/set_colour_addsub_mode.asm"

.INCLUDE "system/set_window_mask.asm"

.INCLUDE "data/unknown/C0B0A6.asm"

.INCLUDE "unknown/C0/C0B0AA.asm"

.INCLUDE "unknown/C0/C0B0B8.asm"

.INCLUDE "unknown/C0/C0B0EF.asm"

.INCLUDE "unknown/C0/C0B149.asm"

.INCLUDE "data/unknown/C0B2FF.asm"

.INCLUDE "data/unknown/C0B3FF.asm"

.INCLUDE "system/math/cosine_sine.asm"

.INCLUDE "data/sine_table.asm"

.INCLUDE "system/file_select_init.asm"

.INCLUDE "unknown/C0/C0B65F.asm"

.INCLUDE "unknown/C0/C0B67F.asm"

.INCLUDE "battle/init_overworld.asm"

.INCLUDE "system/main.asm"

.INCLUDE "system/game_init.asm"

.INCLUDE "unknown/C0/C0B9BC.asm"

.INCLUDE "unknown/C0/C0BA35.asm"

.INCLUDE "misc/find_path_to_party.asm"

.INCLUDE "unknown/C0/C0BD96.asm"

.INCLUDE "unknown/C0/C0BF72.asm"

.INCLUDE "unknown/C0/C0C0B4.asm"

.INCLUDE "unknown/C0/C0C19B.asm"

.INCLUDE "unknown/C0/C0C251.asm"

.INCLUDE "unknown/C0/C0C30C.asm"

.INCLUDE "unknown/C0/C0C353.asm"

.INCLUDE "unknown/C0/C0C35D.asm"

.INCLUDE "unknown/C0/C0C363.asm"

.INCLUDE "unknown/C0/C0C3F9.asm"

.INCLUDE "unknown/C0/C0C48F.asm"

.INCLUDE "unknown/C0/C0C4AF.asm"

.INCLUDE "data/unknown/C0C4CF.asm"

.INCLUDE "data/map/opposite_directions.asm"

.INCLUDE "overworld/get_direction_from_player_to_entity.asm"

.INCLUDE "unknown/C0/C0C524.asm"

.INCLUDE "overworld/get_opposite_direction_from_player_to_entity.asm"

.INCLUDE "unknown/C0/C0C615.asm"

.INCLUDE "unknown/C0/C0C62B.asm"

.INCLUDE "overworld/actionscript/get_direction_rotated_clockwise.asm"

.INCLUDE "overworld/actionscript/get_direction_turned_randomly_left_or_right.asm"

.INCLUDE "unknown/C0/C0C6B6.asm"

.INCLUDE "unknown/C0/C0C711.asm"

.INCLUDE "unknown/C0/C0C760.asm"

.INCLUDE "unknown/C0/C0C7AC.asm"

.INCLUDE "unknown/C0/C0C7DB.asm"

.INCLUDE "unknown/C0/C0C808.asm"

.INCLUDE "unknown/C0/C0C83B.asm"

.INCLUDE "unknown/C0/C0CA4E.asm"

.INCLUDE "unknown/C0/C0CBD3.asm"

.INCLUDE "unknown/C0/C0CC11.asm"

.INCLUDE "unknown/C0/C0CCCC.asm"

.INCLUDE "unknown/C0/C0CD50-jp.asm"

.INCLUDE "unknown/C0/C0CEBE.asm"

.INCLUDE "data/unknown/C0CF58.asm"

.INCLUDE "unknown/C0/C0CF97.asm"

.INCLUDE "unknown/C0/C0D0D9.asm"

.INCLUDE "unknown/C0/C0D0E6.asm"

.INCLUDE "unknown/C0/C0D15C.asm"

.INCLUDE "unknown/C0/C0D195.asm"

.INCLUDE "unknown/C0/C0D19B-jp.asm"

.INCLUDE "unknown/C0/C0D4DE.asm"

.INCLUDE "unknown/C0/C0D59B.asm"

.INCLUDE "unknown/C0/C0D5B0.asm"

.INCLUDE "unknown/C0/C0D77F.asm"

.INCLUDE "unknown/C0/C0D7B3.asm"

.INCLUDE "unknown/C0/C0D7C7.asm"

.INCLUDE "unknown/C0/C0D7E0.asm"

.INCLUDE "unknown/C0/C0D7F7.asm"

.INCLUDE "unknown/C0/C0D98F.asm"

.INCLUDE "unknown/C0/C0DA31.asm"

.INCLUDE "unknown/C0/C0DB0F.asm"

.INCLUDE "overworld/schedule_overworld_task.asm"

.INCLUDE "unknown/C0/C0DC38.asm"

.INCLUDE "overworld/process_overworld_tasks.asm"

.INCLUDE "overworld/load_dad_phone.asm"

.INCLUDE "unknown/C0/C0DD0F.asm"

.INCLUDE "unknown/C0/C0DD2C.asm"

.INCLUDE "overworld/set_teleport_state.asm"

.INCLUDE "unknown/C0/C0DD79.asm"

.INCLUDE "unknown/C0/C0DE16.asm"

.INCLUDE "unknown/C0/C0DE46.asm"

.INCLUDE "unknown/C0/C0DE7C.asm"

.INCLUDE "unknown/C0/C0DED9.asm"

.INCLUDE "unknown/C0/C0DF22.asm"

.INCLUDE "unknown/C0/C0E196.asm"

.INCLUDE "unknown/C0/C0E214.asm"

.INCLUDE "unknown/C0/C0E254.asm"

.INCLUDE "unknown/C0/C0E28F.asm"

.INCLUDE "unknown/C0/C0E3C1.asm"

.INCLUDE "unknown/C0/C0E44D.asm"

.INCLUDE "unknown/C0/C0E48A.asm"

.INCLUDE "unknown/C0/C0E516.asm"

.INCLUDE "unknown/C0/C0E674.asm"

.INCLUDE "unknown/C0/C0E6FE.asm"

.INCLUDE "unknown/C0/C0E776.asm"

.INCLUDE "unknown/C0/C0E815.asm"

.INCLUDE "unknown/C0/C0E897.asm"

.INCLUDE "unknown/C0/C0E979.asm"

.INCLUDE "unknown/C0/C0E97C.asm"

.INCLUDE "unknown/C0/C0E9BA.asm"

.INCLUDE "misc/teleport_freezeobjects.asm"

.INCLUDE "misc/teleport_freezeobjects2.asm"

.INCLUDE "misc/teleport_mainloop.asm"

.INCLUDE "unknown/C0/C0EBAA-jp.asm"

.INCLUDE "unknown/C0/C0EBE0-jp.asm"

.INCLUDE "unknown/C0/C0ED41-jp.asm"

.INCLUDE "unknown/C0/C0EE47.asm"

.INCLUDE "unknown/C0/C0EE53.asm"

.INCLUDE "intro/show_title_screen-jp.asm"

.INCLUDE "intro/logo_screen_load.asm"

.INCLUDE "unknown/C0/C0EFE1.asm"

.INCLUDE "intro/logo_screen.asm"

.INCLUDE "intro/gas_station_load.asm"

.INCLUDE "unknown/C0/C0F1D2.asm"

.INCLUDE "unknown/C0/C0F21E.asm"

.INCLUDE "intro/gas_station.asm"

.INCLUDE "unknown/C0/C0F3B2.asm"

.INCLUDE "unknown/C0/C0F3E8.asm"

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

.INCLUDE "unknown/C0/C0F41E-jp.asm"

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
