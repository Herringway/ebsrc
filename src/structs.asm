
.STRUCT char_struct
	name .byte 5 ;0
	level .byte ;5
	exp .dword ;6
	max_hp .word ;10
	max_pp .word ;12
	afflictions .byte AFFLICTION_GROUP_COUNT ;14
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
	.dword 2 ;53
	position_index .word ;61
	.dword ;63
	.word ;67
	current_hp .word ;69
	current_hp_target .word ;71
	.word ;73
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
	.byte ;92
	.byte ;93
	.byte ;94
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
	.byte ;75
	party_status .byte ;76
	.byte ;77
	.word ;78
	.word ;80
	wallet_backup .dword ;82
	escargo_express_items .byte 36 ;86
	.word ;122
	.byte 4 ;124
	.word ;128
	leader_x_coord .word ;130
	.word ;132
	leader_y_coord .word ;134
	.word ;136
	leader_direction .word ;138
	trodden_tile_type .word ;140
	walking_style .word ;142
	.word ;144
	.word ;146
	current_party_members .word ;148
	.byte 6 ;150
	player_controlled_party_members .byte ;156
	.byte 5 ;157
	.byte 12 ;162
	party_count .byte ;174
	player_controlled_party_count .byte ;175
	.word ;176
	.word ; 178
	.byte 2 ;180
	.byte 3 ;182
	.byte 3 ;185
	auto_fight_enable .byte ;188
	exit_mouse_x_coord .word ;189
	exit_mouse_y_coord .word ;191
	text_speed .byte ;193
	sound_setting .byte ;194
	.byte ;195
	.byte 4 ;196
	.byte 12 ;200
	.word ;212
	.byte 254 ;214
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
	.byte ;1
	sprite .byte ;2
	.byte ;3
	current_action .word ;4
	action_order_var .byte ;6
	.byte ;7
	current_action_argument .byte ;8
	.byte ;9
	current_target .byte ;10
	the_flag .byte ;11
	consciousness .byte ;12
	.byte ;13
	ally_or_enemy .byte ;14
	npc_id .byte ;15
	row .byte ;16
	hp .word ;17
	hp_target .word ;19
	hp_max .word ;21
	pp .word ;23
	pp_target .word ;25
	pp_max .word ;27
	afflictions .byte AFFLICTION_GROUP_COUNT ;29
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
	.byte ;69
	.byte 3 ;70
	.byte ;73
	.byte ;74
	id2 .byte ;75
	.byte 2;76
.ENDSTRUCT

.STRUCT window_stats
	.byte 4 ;0
	id .word ;4
	window_x .word ;6
	window_y .word ;8
	width .word ;10
	height .word ;12
	text_x .word ;14
	text_y .word ;16
	text_width .word ;18
	text_height .word ;20
	.byte ;22
	wram_address .word ;23
	font .byte ;25
	.byte ;26
	argument_memory .byte 4 ;27
	working_memory .byte 4 ;31
	secondary_memory .byte 4 ;35
	working_memory_storage .byte 4 ;39
	argument_memory_storage .byte 4 ;43 - may actually be a pair of $7E89D4 entries
	secondary_memory_storage .byte 4 ;47
	.byte 4 ;51
	.dword ;55 - a pointer for something
	.byte 23 ;59
.ENDSTRUCT

.STRUCT npc_config
	type .byte ;0
	sprite .word ;1
	direction .byte ;3
	movement .byte ;4
	.byte ;5
	event_flag .word ;6
	.byte ;8
	text_pointer .dword ;9
	.UNION ;13
		item .byte
		text_pointer2 .dword
	.ENDUNION
.ENDSTRUCT

.STRUCT u89D4_entry
	.word ;0
	.word ;2
	.word ;4
	.word ;6
	.word ;8
	.word ;10
	.word ;12
	.byte ;14 - seems to be a sound effect id
	.byte ;15
	.byte 3 ;16
	.byte 24 ;19
	.word ;43
.ENDSTRUCT

.STRUCT item
	name .byte 25 ;0
	type .byte ;25
	cost .word ;26
	flags .byte ;28
	effect .word ;29
	strength .byte ;31
	epi .byte ;32
	ep .byte ;33
	special .byte ;34
	help_text .dword ;35
.ENDSTRUCT

.STRUCT photographer_config_entry
	event_flag .word ;0
	;Coordinates for something
	.word ;2
	.word ;4
	credits_map_palettes_offset .word ;6
	.byte ;8
	.byte ;9
	photographer_x .word ;10
	photographer_y .word ;12
	.byte 48 ;14
.ENDSTRUCT ;62

.STRUCT packtable_entry
	primarysamplepack .byte ;0
	secondarysamplepack .byte ;1
	sequencepack .byte ;2
.ENDSTRUCT

.STRUCT sprite_grouping
	height .byte ;0
	width .byte ;1
	.byte ;2
	palette .byte ;3
	.byte 4 ;4
	spritebank .byte ;8
	;The number of sprite pointers varies.
	spritepointerarray .word ;9
.ENDSTRUCT

.STRUCT battle_entry_ptr_entry
	pointer .dword ;0
	run_away_flag .word ;4
	run_away_flag_state .byte ;6
	letterbox_style .byte ;7
.ENDSTRUCT

.STRUCT battle_action
	direction .byte ;0
	target .byte ;1
	type .byte ;2
	pp_cost .byte ;3
	description_text_pointer .dword ;4
	battle_function_pointer .dword ;8
.ENDSTRUCT

.STRUCT map_palette_animation_entry
	ptr .dword ;0
	count .byte ;4
	entries .byte ;5 - not always here, actual size varies
.ENDSTRUCT

.STRUCT psi_teleport_destination
	name .byte 25 ;0
	event_flag .word ;25
	dest_x .word ;27
	dest_y .word ;29
.ENDSTRUCT
