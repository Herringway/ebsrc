.SEGMENT "BANK00"
.INCLUDE "common.asm"
.INCLUDE "config.asm"
.INCLUDE "structs.asm"

.INCLUDE "overworld/events/clear_entity_draw_sorting_table.asm"

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

.INCLUDE "unknown/C0/C00CF3.asm"

.INCLUDE "unknown/C0/C00D7E.asm"

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

.INCLUDE "unknown/C0/C0222B.asm"

.INCLUDE "unknown/C0/C0255C.asm"

.INCLUDE "unknown/C0/C025CF.asm"

.INCLUDE "unknown/C0/C0263D.asm"

.INCLUDE "unknown/C0/C02668.asm"

.INCLUDE "overworld/spawn_horizontal.asm"

.INCLUDE "overworld/spawn_vertical.asm"

.INCLUDE "unknown/C0/C02C3E.asm"

.INCLUDE "overworld/reset_mushroomized_walking.asm"

.INCLUDE "overworld/mushroomization_movement_swap.asm"

.INCLUDE "unknown/C0/C02D29.asm"

.INCLUDE "overworld/adjust_position_horizontal.asm"

.INCLUDE "overworld/adjust_position_vertical.asm"

.INCLUDE "unknown/C0/C0329F.asm"

.INCLUDE "unknown/C0/C032EC.asm"

.INCLUDE "overworld/update_party.asm"

.INCLUDE "unknown/C0/C0369B.asm"

.INCLUDE "unknown/C0/C03903.asm"

.INCLUDE "unknown/C0/C039E5.asm"

.INCLUDE "unknown/C0/C03A24.asm"

.INCLUDE "unknown/C0/C03A94.asm"

.INCLUDE "unknown/C0/C03C25.asm"

.INCLUDE "unknown/C0/C03C4B.asm"

.INCLUDE "overworld/get_on_bicycle.asm"

.INCLUDE "unknown/C0/C03CFD.asm"

.INCLUDE "unknown/C0/C03DAA.asm"

.INCLUDE "unknown/C0/C03E25.asm"

.INCLUDE "unknown/C0/C03E5A.asm"

.INCLUDE "unknown/C0/C03E9D.asm"

.INCLUDE "unknown/C0/C03EC3.asm"

.INCLUDE "unknown/C0/C03F1E.asm"

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

.INCLUDE "unknown/C0/C048D3.asm"

.INCLUDE "unknown/C0/C04A7B.asm"

.INCLUDE "unknown/C0/C04A88.asm"

.INCLUDE "unknown/C0/C04AAD.asm"

.INCLUDE "unknown/C0/C04B53.asm"

.INCLUDE "unknown/C0/C04C45.asm"

.INCLUDE "unknown/C0/C04D78.asm"

.INCLUDE "unknown/C0/C04EF0.asm"

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

.INCLUDE "unknown/C0/C068AF.asm"

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

.INCLUDE "unknown/C0/C06BFF.asm"

.INCLUDE "data/unknown/C06E02.asm"

.INCLUDE "unknown/C0/C06E1A.asm"

.INCLUDE "unknown/C0/C06E2C.asm"

.INCLUDE "unknown/C0/C06E4A.asm"

.INCLUDE "unknown/C0/C06E6E.asm"

.INCLUDE "unknown/C0/C06F82.asm"

.INCLUDE "unknown/C0/C06FED.asm"

.INCLUDE "unknown/C0/C0705F.asm"

.INCLUDE "unknown/C0/C070CB.asm"

.INCLUDE "unknown/C0/C071E5.asm"

.INCLUDE "unknown/C0/C07213.asm"

.INCLUDE "unknown/C0/C072CF.asm"

.INCLUDE "unknown/C0/C073C0.asm"

.INCLUDE "unknown/C0/C07477.asm"

.INCLUDE "unknown/C0/C07526.asm"

.INCLUDE "overworld/dad_phone.asm"

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

.INCLUDE "system/strcat.asm"
