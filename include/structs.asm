
.STRUCT nothing
.ENDSTRUCT

.STRUCT fixed_point
	fraction .word ;0
	integer .word ;2
.ENDSTRUCT

.STRUCT coords
	x_coord .word ;0
	y_coord .word ;2
.ENDSTRUCT

.STRUCT char_struct
.IF .DEFINED(JPN)
	name .byte 4 ;0
.ELSE
	name .byte 5 ;0
.ENDIF
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
	unknown53 .word ;53
	unknown55 .word ;55
	unknown57 .word ;57
	unknown59 .word ;59
	position_index .word ;61
	unknown63 .word ;63
	unknown65 .word ;65
	current_hp_fraction .word ;67
	current_hp .word ;69
	current_hp_target .word ;71
	current_pp_fraction .word ;73
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
	unknown92 .byte ;92
	unknown93 .byte ;93
	unknown94 .byte ;94
.ENDSTRUCT

.STRUCT photo_state
	.word ;0
	party .byte 6 ;2
.ENDSTRUCT

.STRUCT game_state
	mother2_playername .byte 12 ;0
	earthbound_playername .byte 24 ;12
	pet_name .byte 6 ;36
	favourite_food .byte 6 ;42
.IF .DEFINED(JPN)
	favourite_thing .byte 9 ;48
.ELSEIF .DEFINED(PROTOTYPE19950327)
	favourite_thing .byte 11 ;48
.ELSE
	favourite_thing .byte 12 ;48
.ENDIF
	money_carried .dword ;60
	bank_balance .dword ;64
	party_psi .byte ;68
	party_npc_1 .byte ;69
	party_npc_2 .byte ;70
	party_npc_1_hp .word ;71
	party_npc_2_hp .word ;73
	party_status .byte ;75
	party_npc_1_id_copy .byte ;76
	party_npc_2_id_copy .byte ;77
	party_npc_1_hp_copy .word ;78
	party_npc_2_hp_copy .word ;80
	wallet_backup .dword ;82
	escargo_express_items .byte 36 ;86
	party_members .byte 6 ;122
	unknown80 .word ;128
	leader_x_coord .word ;130
	unknown84 .word ;132
	leader_y_coord .word ;134
	unknown88 .word ;136
	leader_direction .word ;138
	trodden_tile_type .word ;140
	walking_style .word ;142
	unknown90 .word ;144
	unknown92 .word ;146
	current_party_members .word ;148
	unknown96 .byte 6 ;150
	player_controlled_party_members .byte ;156
	unknown9D .byte 5 ;157
	unknownA2 .byte 12 ;162
	party_count .byte ;174
	player_controlled_party_count .byte ;175
	unknownB0 .word ;176
	unknownB2 .word ; 178
	unknownB4 .byte 2 ;180
	unknownB6 .byte 3 ;182
	unknownB8 .byte 3 ;185
	auto_fight_enable .byte ;188
	exit_mouse_x_coord .word ;189
	exit_mouse_y_coord .word ;191
	text_speed .byte ;193
	sound_setting .byte ;194
	unknownC3 .byte ;195
	unknownC4 .byte 4 ;196
	active_hotspot_modes .byte 2 ;200
	active_hotspot_ids .byte 2 ;202
	active_hotspot_pointers .byte 2 * 4 ;204
	saved_photo_states .byte NUM_PHOTOS * .SIZEOF(photo_state) ;212
	timer .dword ;468
	text_flavour .byte ;472
.ENDSTRUCT

.STRUCT enemy_data
.IFDEF USA
	the_flag .byte ;0
	name .byte 25 ;1
	gender .byte ;26
.ELSE
	name .byte 10 ;0
.ENDIF
	type .byte ;27
	battle_sprite .word ;28
	overworld_sprite .word ;30
	run_flag .byte ;32
	hp .word ;33
	pp .word ;35
	exp .dword ;37
	money .word ;41
	event_script .word ;43
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
	actions .word 4 ;70
	final_action .word ;78
	action_args .byte 4 ;80
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
	id .word ;0
	sprite .byte ;2
	unknown03 .byte ;3
	current_action .word ;4
	action_order_var .byte ;6
	action_item_slot .byte ;7
	current_action_argument .byte ;8
	action_targetting .byte ;9
	current_target .byte ;10
	the_flag .byte ;11
	consciousness .byte ;12
	has_taken_turn .byte ;13
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
	exp .dword ;63
	vram_sprite_index .byte ;67
	sprite_x .byte ;68
	sprite_y .byte ;69
	initiative .byte ;70
	unknown71 .byte ;71
	unknown72 .byte ;72
	unknown73 .byte ;73
	unknown74 .byte ;74
	use_alt_spritemap .byte ;75
	unknown76 .byte ;76
	id2 .byte ;77
.ENDSTRUCT

.STRUCT window_stats
	prev .word ;0 - index into WINDOW_STATS
	next .word ;2 - index into WINDOW_STATS
	id .word ;4
	window_x .word ;6
	window_y .word ;8
	width .word ;10
	height .word ;12
	text_x .word ;14
	text_y .word ;16
	number_padding .byte ;18
	curr_tile_attributes .word ;19
	font .word ;21
	working_memory .dword ;23
	argument_memory .dword ;27
	secondary_memory .word ;31
	working_memory_storage .dword ;33
	argument_memory_storage .dword ;37
	secondary_memory_storage .word ;41
	current_option .word ;43 - 89D4 entry number
	option_count .word ;45
	selected_option .word ;47
	unknown49 .word ;49
	menu_page_number .word ;51
	tilemap_address .word ;53
	cursor_move_callback .dword ;55
	unknown59 .byte ;59
.IFDEF USA
	title .byte 22 ;60
.ELSE
	title .byte 16 ;60
.ENDIF
.ENDSTRUCT

.STRUCT npc_config
	type .byte ;0
	sprite .word ;1
	direction .byte ;3
	event_script .word ;4
	event_flag .word ;6
	appearance_style .byte ;8
	text_pointer .dword ;9
	.UNION ;13
		item .byte
		text_pointer2 .dword
	.ENDUNION
.ENDSTRUCT

.STRUCT menu_option
	unknown0 .word ;0
	next .word ;2
	previous .word ;4
	page .word ;6
	text_x .word ;8
	text_y .word ;10
	userdata .word ;12
	sound_effect .byte ;14
	script .dword ;15
	label .byte 25 ;19
.IFDEF USA
	pixel_align .byte ;44
.ENDIF
.ENDSTRUCT

.STRUCT item
.IFDEF USA
	name .byte 25 ;0
.ELSE
	name .byte 10 ;0
.ENDIF
	type .byte ;25
	cost .word ;26
	flags .byte ;28
	effect .word ;29
	params .dword ;31
	help_text .dword ;35
.ENDSTRUCT

.STRUCT item_parameters
	strength .byte ;0
	epi .byte ;1
	ep .byte ;2
	special .byte ;3
.ENDSTRUCT


.STRUCT photographer_config_entry_object
	tile_x .word ;0
	tile_y .word ;2
	sprite .word ;4
.ENDSTRUCT ;6

.STRUCT photographer_config_entry
	event_flag .word ;0
	;Coordinates for something
	map_x .word ;2
	map_y .word ;4
	credits_map_palettes_offset .word ;6
	slide_direction .byte ;8
	slide_distance .byte ;9
	photographer_x .word ;10
	photographer_y .word ;12
	party_config .byte 6 * .SIZEOF(coords) ;14
	object_config .byte 4 * .SIZEOF(photographer_config_entry_object) ;38
.ENDSTRUCT ;62

.STRUCT sprite_grouping
	height .byte ;0
	width .byte ;1
	size .byte ;2
	palette .byte ;3
	hitbox_width_ud .byte ;4
	hitbox_height_ud .byte ;5
	hitbox_width_lr .byte ;6
	hitbox_height_lr .byte ;7
	spritebank .byte ;8
	;The number of sprite pointers varies.
	spritepointerarray .word ;9
.ENDSTRUCT

.STRUCT sprite_placement
	id .word ;0
	x_coord .byte ;2
	y_coord .byte ;3
.ENDSTRUCT

.STRUCT enemy_placement
	event_flag .word ;0
	spawn_chance .byte ;2
	spawn_chance_alt .byte ;3
	groups .tag nothing ;4
.ENDSTRUCT

.STRUCT enemy_group
	slots .byte ;0
	group .word ;1
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
.IFDEF USA
	name .byte 25 ;0
.ELSE
	name .byte 10 ;0
.ENDIF
	event_flag .word ;25
	dest_x .word ;27
	dest_y .word ;29
.ENDSTRUCT

.STRUCT hp_pp_window_buffer
	hp1 .word (HPPP_WINDOW_WIDTH - 4) ;0
	hp2 .word (HPPP_WINDOW_WIDTH - 4) ;6
	pp1 .word (HPPP_WINDOW_WIDTH - 4) ;12
	pp2 .word (HPPP_WINDOW_WIDTH - 4) ;18
.ENDSTRUCT

.STRUCT distortion_entry
	duration .word ;0
	style .byte ;2
	ripple_frequency .word ;3
	ripple_amplitude .word ;5
	speed .byte ;7
	compression_rate .word ;8
	ripple_frequency_acceleration .word ;10
	ripple_amplitude_acceleration .word ;12
	speed_acceleration .byte ;14
	compression_acceleration .word;15
.ENDSTRUCT

.STRUCT bg_scrolling_entry
	duration .word ;0
	horizontal_movement .word ;2
	vertical_movement .word ;4
	horizontal_acceleration .word ;6
	vertical_acceleration .word ;8
.ENDSTRUCT

.STRUCT bg_layer_config_entry
	graphics .byte ;0
	palette .byte ;1
	bitdepth .byte ;2
	palette_shifting_style .byte ;3
	palette_cycle_1_first .byte ;4
	palette_cycle_1_last .byte ;5
	palette_cycle_2_first .byte ;6
	palette_cycle_2_last .byte ;7
	palette_change_speed .byte ;8
	scrolling_movement_1 .byte ;9
	scrolling_movement_2 .byte ;10
	scrolling_movement_3 .byte ;11
	scrolling_movement_4 .byte ;12
	distortion_style_1 .byte ;13
	distortion_style_2 .byte ;14
	distortion_style_3 .byte ;15
	distortion_style_4 .byte ;16
.ENDSTRUCT

.STRUCT loaded_bg_data
	target_layer .byte ;0
	bitdepth .byte ;1
	freeze_palette_scrolling .byte ;2
	palette_shifting_style .byte ;3
	palette_cycle_1_first .byte ;4
	palette_cycle_1_last .byte ;5
	palette_cycle_2_first .byte ;6
	palette_cycle_2_last .byte ;7
	palette_cycle_1_step .byte ;8
	palette_cycle_2_step .byte ;9
	palette_change_speed .byte ;10
	palette_change_duration_left .byte ;11
	palette .word 16 ;12
	palette2 .word 16 ;44
	palette_pointer .word ;76
	scrolling_movements .byte 4 ;78
	current_scrolling_movement .byte ;82
	scrolling_duration_left .word ;83
	horizontal_position .word ;85
	vertical_position .word ;87
	horizontal_velocity .word ;89
	vertical_velocity .word ;91
	horizontal_acceleration .word ;93
	vertical_acceleration .word ;95
	distortion_styles .byte 4 ;97
	current_distortion_style_index .byte ;101
	distortion_duration_left .word ;102
	distortion_type .byte ;104
	distortion_ripple_frequency .word ;105
	distortion_ripple_amplitude .word ;107
	distortion_speed .byte ;109
	distortion_compression_rate .word ;110
	distortion_ripple_frequency_acceleration .word ;112
	distortion_ripple_amplitude_acceleration .word ;114
	distortion_speed_acceleration .byte ;116
	distortion_compression_acceleration .word ;117
.ENDSTRUCT

.STRUCT oval_window
	duration .byte ;0
	unused .byte ;1
	centre_x .word ;2
	centre_y .word ;4
	initial_width .word ;6
	initial_height .word ;8
	centre_x_add .word ;10
	centre_y_add .word ;12
	width_velocity .word ;14
	height_velocity .word ;16
	width_acceleration .word ;18
	height_acceleration .word ;20
.ENDSTRUCT

.STRUCT save_header
	signature .byte 28
	checksum .word ;28
	checksum_complement .word ;30
.ENDSTRUCT

.STRUCT movement_speeds
	up .tag fixed_point ;0
	up_right .tag fixed_point ;4
	right .tag fixed_point ;8
	down_right .tag fixed_point ;12
	down .tag fixed_point ;16
	down_left .tag fixed_point ;20
	left .tag fixed_point ;24
	up_left .tag fixed_point ;28
.ENDSTRUCT

.STRUCT queued_interaction
	type .word ;0
	.UNION ;2
		text_ptr .dword
		door_ptr .dword
	.ENDUNION
.ENDSTRUCT

.STRUCT battle_menu_selection
	user .byte ;0
	param1 .byte ;1
	selected_action .word ;2
	targetting .byte ;4
	selected_target .byte ;5
.ENDSTRUCT

.STRUCT overworld_palette_anim
	timer .word ;0
	index .word ;2
	delays .word 9 ;4
.ENDSTRUCT

.STRUCT overworld_tileset_anim
	unknown0 .word ;0
	frame_delay .word ;2
	copy_size .word ;4
	source_offset .word ;6
	destination_address .word ;8
	frames_until_update .word ;10
	destination_address2 .word ;12
	source_offset2 .word ;14
.ENDSTRUCT

.STRUCT overworld_tileset_anim_entry
	unknown0 .byte ;0
	frame_delay .byte ;1
	copy_size .word ;2
	source_offset .word ;4
	destination_address .word ;6
.ENDSTRUCT

.STRUCT font_table_entry
	data .dword ;0
	graphics .dword ;4
	height .word ;8
	width .word ;10
.ENDSTRUCT

.STRUCT spritemap
	y_offset .byte ;0
	.UNION
		nextmap .word ;1
		.STRUCT
			tile .byte ;1
			flags .byte ;2
		.ENDSTRUCT
	.ENDUNION
	x_offset .byte ;3
	special_flags .byte ;4
.ENDSTRUCT

.STRUCT pathfinder_coords
	y_coord .word ;0
	x_coord .word ;2
.ENDSTRUCT

.STRUCT pathfinder
	from_offscreen .word ;0
	unknown_hitbox .tag pathfinder_coords ;2
	origin .tag pathfinder_coords ;6
	unknown10 .word ;10
	unknown12 .word ;12
	unknown14 .word ;14
	object_index .word ;16
.ENDSTRUCT

.STRUCT pathfinding
	unknown0 .byte 120 ;0
	radius .dword ;120
	targets .dword 8 ;124
	target_count .word ;156
	pathfinder_count .word ;158
	pathfinders .tag pathfinder 8 ;160
.ENDSTRUCT

.STRUCT player_position_buffer_entry
	x_coord .word ;0
	y_coord .word ;2
	tile_flags .word ;4
	walking_style .word ;6
	direction .word ;8
	unknown10 .word ;10
.ENDSTRUCT

.STRUCT character_initial_entity_entry
	overworld_sprite .word ;0
	lost_underworld_sprite .word ;2
	actionscript_id .word ;4
	unknown6 .word ;6
.ENDSTRUCT

.STRUCT pack_table_entry
	primary_sample_pack .byte ;0
	secondary_sample_pack .byte ;1
	sequence_pack .byte ;2
.ENDSTRUCT

.STRUCT music_pack_pointer
	bank .byte ;0
	addr .word ;1
.ENDSTRUCT

.STRUCT door_data
	text .dword ;0
	event_flag .word ;4
	unknown6 .word ;6
	unknown8 .word ;8
	unknown10 .byte ;10
.ENDSTRUCT

.STRUCT active_hotspot
	mode .word ;0
	x1 .word ;2
	y1 .word ;4
	x2 .word ;6
	y2 .word ;8
	pointer .dword ;10
.ENDSTRUCT

.STRUCT predefined_hotspot
	x1 .word ;0
	y1 .word ;2
	x2 .word ;4
	y2 .word ;6
.ENDSTRUCT

.STRUCT screen_transition_config
	duration .byte ;0
	animation_id .byte ;1
	animation_flags .byte ;2
	fade_style .byte ;3
	direction .byte ;4
	unknown5 .byte ;5
	slide_speed .byte ;6
	start_sound_effect .byte ;7
	secondary_duration .byte ;8
	secondary_animation_id .byte ;9
	secondary_animation_flags .byte ;10
	ending_sound_effect .byte ;11
.ENDSTRUCT

.STRUCT teleport_destination
	x_coord .word ;0
	y_coord .word ;2
	direction .byte ;4
	screen_transition .byte ;5
	unknown6 .word ;6
.ENDSTRUCT

.STRUCT  window_text_attributes_copy
	id .word ;0
	text_x .word ;2
	text_y .word ;4
	number_padding .byte ;6
	curr_tile_attributes .word ;7
	font .word ;9
	unknown .byte 10 ;11
.ENDSTRUCT

.STRUCT timed_item_transformation
	item .byte ;0
	sfx .byte ;1
	sfx_frequency .byte ;2
	target_item .byte ;3
	transformation_time .byte ;4
.ENDSTRUCT

.STRUCT loaded_timed_item_transformation
	sfx .byte ;0
	sfx_frequency .byte ;1
	sfx_countdown .byte ;2
	transformation_countdown .byte ;3
.ENDSTRUCT

.STRUCT display_text_state
	textptr .dword ;0
	unknown4 .word ;4
	saved_text_attributes .byte .SIZEOF(window_text_attributes_copy) ;6
.ENDSTRUCT

.STRUCT battle_group_entry
	count .byte ;0
	id .word ;1
.ENDSTRUCT

.STRUCT psi_ability
	name .byte ;0
	level .byte ;1
	category .byte ;2
	usability .byte ;3
	battle_action .word ;4
	ness_level .byte ;6
	paula_level .byte ;7
	poo_level .byte ;8
	menu_x .byte ;9
	menu_y .byte ;10
	text .dword ;11
.ENDSTRUCT

.STRUCT naming_screen_entity
	sprite .word ;0
	script .word ;2
.ENDSTRUCT

.STRUCT initial_stats
	unknown0 .word ;0
	unknown2 .word ;2
	money .word ;4
	level .word ;6
	exp .word ;8
	items .byte 10 ;10
.ENDSTRUCT

.STRUCT overworld_task
	frames_left .word ;0
	function .dword ;2
.ENDSTRUCT

.STRUCT sound_stone_playback_state
	state .word ;0
	unknown2 .word ;2
	unknown4 .word ;4
	orbit_sprite_frame .word ;6
	orbit_sprite_position_1 .word ;8
	orbit_sprite_position_2 .word ;10
	unknown12 .word ;12
.ENDSTRUCT

.STRUCT save_block
	header .tag save_header ;0
	game_state .tag game_state ;32
	party_characters .tag char_struct 6 ;504
	event_flags .byte EVENT_FLAG_COUNT / 8 ;1068
	.byte 1280 - (.SIZEOF(game_state) + .SIZEOF(char_struct) * 6 + (EVENT_FLAG_COUNT / 8) + 32) ;1196 - padding
.ENDSTRUCT

.STRUCT floating_sprite
	sprite .word ;0
	unknown2 .byte ;2
	unknown3 .byte ;3
	unknown4 .byte ;4
.ENDSTRUCT

.STRUCT map_tile_event
	event_flag .word ;0
	count .word ;2
	block_pairs .tag nothing ;4 - flexible array member, int pairs
.ENDSTRUCT

.STRUCT telephone_contact
.IF .DEFINED(JPN)
	label .byte 10 ;0
.ELSE
	label .byte 25 ;0
.ENDIF
	event_flag .word ;10/25
	text .dword ;12/27
.ENDSTRUCT

.STRUCT text_renderer_state
	pixels_rendered .word ;0
	upper_vram_position .word ;2
	lower_vram_position .word ;4
.ENDSTRUCT

.STRUCT timed_delivery
	sprite .word ;0
	event_flag .word ;2
	unknown4 .word ;4
	unknown6 .word ;6
	delivery_time .word ;8
	text_pointer_1 .byte 3 ;10
	text_pointer_2 .byte 3 ;13
	enter_speed .word ;16
	exit_speed .word ;18
.ENDSTRUCT

.STRUCT fade_parameters
	step .byte ;0
	delay .byte ;1
.ENDSTRUCT

.STRUCT queued_dma
	mode .byte ;0
	size .word ;1
	src .byte 3 ;3
	dest .word ;6
.ENDSTRUCT

.STRUCT psi_animation_state
	time_until_next_frame .byte ;0
	frame_hold_frames .byte ;1
	total_frames .byte ;2
	frame_data .dword ;3
	palette_animation_lower_index .byte ;7
	palette_animation_upper_index .byte ;8
	palette_animation_current_index .byte ;9
	palette_animation_frames .byte ;10
	palette_animation_time_until_next_frame .byte ;11
	palette .word 16 ;12
	displayed_palette .word ;44
	enemy_colour_change_start_frames_left .word ;46
	enemy_colour_change_frames_left .word ;48
	enemy_colour_change_red .word ;50
	enemy_colour_change_green .word ;52
	enemy_colour_change_blue .word ;54
.ENDSTRUCT

.STRUCT queued_entity_creation
	sprite .word ;0
	script .word ;2
.ENDSTRUCT
