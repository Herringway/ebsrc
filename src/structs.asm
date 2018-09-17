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

.STRUCT enemy_data
	the_flag .byte ;0
	name .byte 25 ;1
	gender .byte ;26
	type .byte ;27
	battle_sprite .word ;28
	overworld_sprite .word ;30
	run_flag .byte ;32
	hp .word ;33
	pp .word ;35
	exp .dword ;37
	money .word ;41
	movement_pattern .word ;43
	encounter_text_ptr .dword ;45
	death_text_ptr .dword ;49
	battle_sprite_palette .byte ;53
	level .byte ;54
	music .byte ;55
	offense .word ;56
	defense .word ;58
	speed .byte ;60
	guts .byte ;61
	luck .byte ;62
	fire_vulnerability .byte ;63
	freeze_vulnerability .byte ;64
	flash_vulnerability .byte ;65
	paralysis_vulnerability .byte ;66
	hypnosis_brainshock_vulnerability .byte ;67
	miss_rate .byte ;68
	action_order .byte ;69
	action_1 .word ;70
	action_2 .word ;72
	action_3 .word ;74
	action_4 .word ;76
	final_action .word ;78
	action_1_arg .byte ;80
	action_2_arg .byte ;81
	action_3_arg .byte ;82
	action_4_arg .byte ;83
	final_action_arg .byte ;84
	iq .byte ;85
	boss .byte ;86
	item_drop_rate .byte ;87
	item_dropped .byte ;88
	initial_status .byte ;89
	death_type .byte ;90
	row .byte ;91
	max_called .byte ;92
	mirror_success .byte ;93
.ENDSTRUCT

.STRUCT battler
	id .byte ;0
	unknown0 .byte ;1
	sprite .byte ;2
	unknown1 .byte ;3
	current_action .word ;4
	action_order_var .byte ;6
	unknown2 .byte ;7
	current_action_argument .byte ;8
	unknown3 .byte ;9
	current_target .byte ;10
	the_flag .byte ;11
	consciousness .byte ;12
	unknown4 .byte ;13
	ally_or_enemy .byte ;14
	npc_id .byte ;15
	unknown5 .byte ;16
	hp .word ;17
	hp_target .word ;19
	hp_max .word ;21
	pp .word ;23
	pp_target .word ;25
	pp_max .word ;27
	afflictions .byte 6 ;29
	shield .byte ;35
	guarding .byte ;36
	shield_hp .byte ;37
	offense .word ;38
	defense .word ;40
	speed .word ;42
	guts .word ;44
	luck .word ;46
	vitality .byte ;48
	iq .byte ;49
	base_offense .byte ;50
	base_defense .byte ;51
	base_speed .byte ;52
	base_guts .byte ;53
	base_luck .byte ;54
	paralysis_resist .byte ;55
	freeze_resist .byte ;56
	flash_resist .byte ;57
	fire_resist .byte ;58
	brainshock_resist .byte ;59
	hypnosis_resist .byte ;60
	money .word ;61
	exp .word ;63
	vram_sprite_index .byte ;65
	sprite_x .byte ;66
	sprite_y .byte ;67
	initiative .byte ;68
	unknown6 .byte ;69
	unknown7 .byte 4 ;70
	unknown8 .byte ;74
	id2 .byte ;75
	unknown9 .byte 2;76
.ENDSTRUCT

.STRUCT window_stats
	unknown0 .byte 4 ;0
	id .word ;4
	window_x .word ;6
	window_y .word ;8
	width .word ;10
	height .word ;12
	text_x .word ;14
	text_y .word ;16
	text_width .word ;18
	text_height .word ;20
	unknown1 .byte ;22
	unknown2 .byte ;23
	unknown3 .byte ;24
	font .byte ;25
	working_memory .byte 4 ;26
	argument_memory .byte 4 ;30
	secondary_memory .byte 4 ;34
	working_memory_storage .byte 4 ;38
	argument_memory_storage .byte 4 ;42
	secondary_memory_storage .byte 4 ;46
	unknown4 .byte 32 ;50
.ENDSTRUCT
