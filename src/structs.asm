.STRUCT char_struct
	name .byte NAMELEN ;0
	level .byte ;5
	exp .dword ;6
	max_hp .word ;10
	max_pp .word ;12
	afflictions .byte 7 ;14
	offense .byte ;21
	defense .byte ;22
	speed .byte ;23
	guts .byte ;24
	luck .byte ;25
	vitality .byte ;26
	iq .byte ;27
	base_offense .byte ;28
	base_defense .byte ;29
	base_speed .byte ;30
	base_guts .byte ;31
	base_luck .byte ;32
	base_vitality .byte ;33
	base_iq .byte ;34
	items .byte 14 ;35
	equipment .byte 4 ;49
	unknown1 .dword 2 ;53
	position_index .word ;61
	unknown2 .dword ;63
	unknown3 .word ;67
	current_hp .word ;69
	current_hp_target .word ;71
	unknown4 .word ;73
	current_pp .word ;75
	current_pp_target .word ;77
	hp_pp_window_options .word ;79
	miss_rate .byte ;81
	fire_resist .byte ;82
	freeze_resist .byte ;83
	flash_resist .byte ;84
	paralysis_resist .byte ;85
	hypnosis_brainshock_resist .byte ;86
	boosted_speed .byte ;87
	boosted_guts .byte ;88
	boosted_vitality .byte ;89
	boosted_iq .byte ;90
	boosted_luck .byte ;91
	unknown5 .byte ;92
	unknown6 .byte ;93
	unknown7 .byte ;94
.ENDSTRUCT

.STRUCT game_state
	mother2_playername .byte 12 ;0
	earthbound_playername .byte 24 ;12
	pet_name .byte 6 ;36
	favourite_food .byte 6 ;42
	favourite_thing .byte 12 ;48
	money_carried .dword ;60
	bank_balance .dword ;64
	party_psi .byte ;68
	party_npc_1 .byte ;69
	party_npc_2 .byte ;70
	party_npc_1_hp .word ;71
	party_npc_2_hp .word ;73
	unknown1 .byte ;75
	party_status .byte ;76
	unknown2 .byte ;77
	unknown3 .word ;78
	unknown4 .word ;80
	wallet_backup .dword ;82
	escargo_express_items .byte 36 ;86
	unknown5 .byte 6 ;122
	unknown6 .word ;128
	leader_x_coord .word ;130
	unknown7 .word ;132
	leader_y_coord .word ;134
	unknown8 .word ;136
	leader_direction .word ;138
	trodden_tile_type .word ;140
	walking_style .word ;142
	unknown9 .word ;144
	unknown10 .word ;146
	current_party_members .word ;148
	unknown11 .byte 6 ;150
	player_controlled_party_members .byte ;156
	unknown12 .byte 5 ;157
	unknown13 .byte 12 ;162
	party_count .byte ;174
	player_controlled_party_count .byte ;175
	unknown14 .word ;176
	unknown15 .word ; 178
	unknown16 .byte 8 ;180
	auto_fight_enable .byte ;188
	exit_mouse_x_coord .word ;189
	exit_mouse_y_coord .word ;191
	text_speed .byte ;193
	sound_setting .byte ;194
	unknown17 .byte 5 ;195
	unknown18 .byte 12 ;200
	unknown19 .word ;212
	unknown20 .byte 254 ;214
	timer .dword ;468
	text_flavour .byte ;472
.ENDSTRUCT
