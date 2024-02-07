
CC_1C_01_TABLE:
	.BYTE $00
	.WORD NULL

;Things that aren't character-specific
	.BYTE CC_1C_01_STRING_TYPE | .SIZEOF(game_state::mother2_playername)
	.WORD .LOWORD(GAME_STATE) + game_state::mother2_playername

	.BYTE CC_1C_01_STRING_TYPE | .SIZEOF(game_state::earthbound_playername)
	.WORD .LOWORD(GAME_STATE) + game_state::earthbound_playername

	.BYTE CC_1C_01_STRING_TYPE | .SIZEOF(game_state::pet_name)
	.WORD .LOWORD(GAME_STATE) + game_state::pet_name

	.BYTE CC_1C_01_STRING_TYPE | .SIZEOF(game_state::favourite_food)
	.WORD .LOWORD(GAME_STATE) + game_state::favourite_food

	.BYTE CC_1C_01_STRING_TYPE | .SIZEOF(game_state::favourite_thing)
	.WORD .LOWORD(GAME_STATE) + game_state::favourite_thing

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(game_state::money_carried)
	.WORD .LOWORD(GAME_STATE) + game_state::money_carried

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(game_state::bank_balance)
	.WORD .LOWORD(GAME_STATE) + game_state::bank_balance

;Character 0
	.BYTE CC_1C_01_STRING_TYPE | .SIZEOF(char_struct::name)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 0) + char_struct::name

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::level)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 0) + char_struct::level

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::exp)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 0) + char_struct::exp

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::current_hp)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 0) + char_struct::current_hp

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::current_hp_target)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 0) + char_struct::current_hp_target

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::max_hp)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 0) + char_struct::max_hp

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::current_pp)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 0) + char_struct::current_pp

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::current_pp_target)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 0) + char_struct::current_pp_target

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::max_pp)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 0) + char_struct::max_pp

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::offense)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 0) + char_struct::offense

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::defense)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 0) + char_struct::defense

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::speed)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 0) + char_struct::speed

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::guts)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 0) + char_struct::guts

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::luck)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 0) + char_struct::luck

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::vitality)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 0) + char_struct::vitality

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::iq)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 0) + char_struct::iq

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::base_iq)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 0) + char_struct::base_iq

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::base_offense)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 0) + char_struct::base_offense

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::base_defense)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 0) + char_struct::base_defense

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::base_speed)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 0) + char_struct::base_speed

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::base_guts)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 0) + char_struct::base_guts

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::base_luck)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 0) + char_struct::base_luck

;Character 1
	.BYTE CC_1C_01_STRING_TYPE | .SIZEOF(char_struct::name)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 1) + char_struct::name

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::level)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 1) + char_struct::level

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::exp)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 1) + char_struct::exp

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::current_hp)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 1) + char_struct::current_hp

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::current_hp_target)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 1) + char_struct::current_hp_target

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::max_hp)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 1) + char_struct::max_hp

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::current_pp)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 1) + char_struct::current_pp

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::current_pp_target)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 1) + char_struct::current_pp_target

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::max_pp)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 1) + char_struct::max_pp

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::offense)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 1) + char_struct::offense

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::defense)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 1) + char_struct::defense

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::speed)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 1) + char_struct::speed

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::guts)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 1) + char_struct::guts

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::luck)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 1) + char_struct::luck

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::vitality)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 1) + char_struct::vitality

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::iq)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 1) + char_struct::iq

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::base_iq)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 1) + char_struct::base_iq

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::base_offense)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 1) + char_struct::base_offense

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::base_defense)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 1) + char_struct::base_defense

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::base_speed)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 1) + char_struct::base_speed

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::base_guts)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 1) + char_struct::base_guts

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::base_luck)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 1) + char_struct::base_luck

;Character 2
	.BYTE CC_1C_01_STRING_TYPE | .SIZEOF(char_struct::name)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 2) + char_struct::name

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::level)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 2) + char_struct::level

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::exp)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 2) + char_struct::exp

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::current_hp)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 2) + char_struct::current_hp

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::current_hp_target)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 2) + char_struct::current_hp_target

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::max_hp)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 2) + char_struct::max_hp

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::current_pp)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 2) + char_struct::current_pp

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::current_pp_target)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 2) + char_struct::current_pp_target

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::max_pp)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 2) + char_struct::max_pp

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::offense)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 2) + char_struct::offense

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::defense)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 2) + char_struct::defense

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::speed)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 2) + char_struct::speed

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::guts)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 2) + char_struct::guts

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::luck)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 2) + char_struct::luck

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::vitality)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 2) + char_struct::vitality

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::iq)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 2) + char_struct::iq

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::base_iq)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 2) + char_struct::base_iq

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::base_offense)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 2) + char_struct::base_offense

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::base_defense)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 2) + char_struct::base_defense

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::base_speed)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 2) + char_struct::base_speed

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::base_guts)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 2) + char_struct::base_guts

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::base_luck)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 2) + char_struct::base_luck

;Character 3
	.BYTE CC_1C_01_STRING_TYPE | .SIZEOF(char_struct::name)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 3) + char_struct::name

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::level)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 3) + char_struct::level

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::exp)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 3) + char_struct::exp

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::current_hp)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 3) + char_struct::current_hp

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::current_hp_target)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 3) + char_struct::current_hp_target

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::max_hp)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 3) + char_struct::max_hp

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::current_pp)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 3) + char_struct::current_pp

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::current_pp_target)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 3) + char_struct::current_pp_target

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::max_pp)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 3) + char_struct::max_pp

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::offense)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 3) + char_struct::offense

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::defense)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 3) + char_struct::defense

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::speed)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 3) + char_struct::speed

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::guts)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 3) + char_struct::guts

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::luck)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 3) + char_struct::luck

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::vitality)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 3) + char_struct::vitality

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::iq)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 3) + char_struct::iq

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::base_iq)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 3) + char_struct::base_iq

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::base_offense)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 3) + char_struct::base_offense

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::base_defense)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 3) + char_struct::base_defense

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::base_speed)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 3) + char_struct::base_speed

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::base_guts)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 3) + char_struct::base_guts

	.BYTE CC_1C_01_INTEGER_TYPE | .SIZEOF(char_struct::base_luck)
	.WORD .LOWORD(PARTY_CHARACTERS) + (.SIZEOF(char_struct) * 3) + char_struct::base_luck

