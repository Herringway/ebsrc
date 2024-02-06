
ENEMY_CONFIGURATION_TABLE:
  .BYTE $00 ;The Flag
  PADDEDEBTEXT "null", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0000 ;Battle sprite
  .WORD OVERWORLD_SPRITE::NONE
  .BYTE $07 ;Run flag
  .WORD 0 ;HP
  .WORD 0 ;PP
  .DWORD 0 ;Experience
  .WORD 0 ;Money
  .WORD EVENT_SCRIPT::EVENT_000
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_NULL
  .BYTE $00 ;Palette
  .BYTE 0 ;Level
  .BYTE MUSIC::NONE
  .WORD 0 ;Offense
  .WORD 0 ;Defense
  .BYTE 0 ;Speed
  .BYTE 0 ;Guts
  .BYTE 0 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $00 ;Weakness to ice
  .BYTE $00 ;Weakness to flash
  .BYTE $00 ;Weakness to paralysis
  .BYTE $00 ;Weakness to hypnosis/brainshock
  .BYTE $00 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::NO_EFFECT
  .WORD BATTLE_ACTIONS::NO_EFFECT
  .WORD BATTLE_ACTIONS::NO_EFFECT
  .WORD BATTLE_ACTIONS::NO_EFFECT
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 0 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Insane Cultist", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $003F ;Battle sprite
  .WORD OVERWORLD_SPRITE::INSANE_CULTIST
  .BYTE $07 ;Run flag
  .WORD 94 ;HP
  .WORD 0 ;PP
  .DWORD 353 ;Experience
  .WORD 33 ;Money
  .WORD EVENT_SCRIPT::EVENT_021
  .DWORD MSG_BTL_AP_TSUKAMATTA
  .DWORD MSG_BTL_KIZETU_ON_WARENI
  .BYTE $03 ;Palette
  .BYTE 13 ;Level
  .BYTE MUSIC::VS_CAVE_BOY
  .WORD 19 ;Offense
  .WORD 25 ;Defense
  .BYTE 8 ;Speed
  .BYTE 20 ;Guts
  .BYTE 64 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::PAINT_ATTACK
  .WORD BATTLE_ACTIONS::CALL_FOR_HELP
  .WORD BATTLE_ACTIONS::PAINT_ATTACK
  .WORD BATTLE_ACTIONS::PAINT_ATTACK
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE ENEMY::INSANE_CULTIST_1 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $01 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::PSI_CARAMEL ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $03 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $00 ;The Flag
  PADDEDEBTEXT "Dept. Store Spook", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $003D ;Battle sprite
  .WORD OVERWORLD_SPRITE::WHIRLING_ROBO
  .BYTE $07 ;Run flag
  .WORD 610 ;HP
  .WORD 290 ;PP
  .DWORD 24291 ;Experience
  .WORD 1648 ;Money
  .WORD EVENT_SCRIPT::EVENT_023
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_M
  .BYTE $16 ;Palette
  .BYTE 42 ;Level
  .BYTE MUSIC::VS_CAVE_BOY
  .WORD 82 ;Offense
  .WORD 135 ;Defense
  .BYTE 19 ;Speed
  .BYTE 24 ;Guts
  .BYTE 62 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $02 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $00 ;Miss rate
  .BYTE $03 ;Action order
  .WORD BATTLE_ACTIONS::PSI_FREEZE_ALPHA
  .WORD BATTLE_ACTIONS::PSI_FIRE_ALPHA
  .WORD BATTLE_ACTIONS::PSI_LIFEUP_ALPHA
  .WORD BATTLE_ACTIONS::ENEMY_EXTENDER
  .WORD NULL ;Final action
  .BYTE $09 ;Action 1 argument
  .BYTE $05 ;Action 2 argument
  .BYTE $17 ;Action 3 argument
  .BYTE ENEMY::DEPT_STORE_SPOOK_2 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $01 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $01 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Armored Frog", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0003 ;Battle sprite
  .WORD OVERWORLD_SPRITE::ARMORED_FROG
  .BYTE $07 ;Run flag
  .WORD 202 ;HP
  .WORD 0 ;PP
  .DWORD 1566 ;Experience
  .WORD 77 ;Money
  .WORD EVENT_SCRIPT::EVENT_021
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $09 ;Palette
  .BYTE 22 ;Level
  .BYTE MUSIC::VS_STRUTTIN_EVIL_MUSHROOM
  .WORD 37 ;Offense
  .WORD 108 ;Defense
  .BYTE 7 ;Speed
  .BYTE 5 ;Guts
  .BYTE 8 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $00 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::SPIN_SOMETHING
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $04 ;Item drop rate
  .BYTE ITEM::BROKEN_SPRAY_CAN ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Bad Buffalo", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $004A ;Battle sprite
  .WORD OVERWORLD_SPRITE::BAD_BUFFALO
  .BYTE $07 ;Run flag
  .WORD 341 ;HP
  .WORD 0 ;PP
  .DWORD 4108 ;Experience
  .WORD 172 ;Money
  .WORD EVENT_SCRIPT::EVENT_029
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $07 ;Palette
  .BYTE 34 ;Level
  .BYTE MUSIC::VS_CAVE_BOY
  .WORD 64 ;Offense
  .WORD 104 ;Defense
  .BYTE 11 ;Speed
  .BYTE 5 ;Guts
  .BYTE 5 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $00 ;Weakness to paralysis
  .BYTE $02 ;Weakness to hypnosis/brainshock
  .BYTE $02 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::TRAMPLE
  .WORD BATTLE_ACTIONS::TEAR_INTO
  .WORD BATTLE_ACTIONS::TRAMPLE
  .WORD BATTLE_ACTIONS::KNIT_BROW
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $02 ;Item drop rate
  .BYTE ITEM::WET_TOWEL ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Black Antoid", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::INSECT
  .WORD $0001 ;Battle sprite
  .WORD OVERWORLD_SPRITE::BLACK_ANTOID
  .BYTE $07 ;Run flag
  .WORD 34 ;HP
  .WORD 25 ;PP
  .DWORD 37 ;Experience
  .WORD 7 ;Money
  .WORD EVENT_SCRIPT::EVENT_020
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $08 ;Palette
  .BYTE 7 ;Level
  .BYTE MUSIC::VS_CRANKY_LADY
  .WORD 14 ;Offense
  .WORD 13 ;Defense
  .BYTE 4 ;Speed
  .BYTE 3 ;Guts
  .BYTE 0 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $00 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $00 ;Weakness to paralysis
  .BYTE $00 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::CALL_FOR_HELP
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::PSI_LIFEUP_ALPHA
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE ENEMY::BLACK_ANTOID_1 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $17 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 1 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $05 ;Item drop rate
  .BYTE ITEM::COOKIE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $03 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Red Antoid", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::INSECT
  .WORD $0001 ;Battle sprite
  .WORD OVERWORLD_SPRITE::BLACK_ANTOID
  .BYTE $07 ;Run flag
  .WORD 112 ;HP
  .WORD 30 ;PP
  .DWORD 1175 ;Experience
  .WORD 35 ;Money
  .WORD EVENT_SCRIPT::EVENT_020
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $10 ;Palette
  .BYTE 20 ;Level
  .BYTE MUSIC::VS_CRANKY_LADY
  .WORD 29 ;Offense
  .WORD 27 ;Defense
  .BYTE 10 ;Speed
  .BYTE 4 ;Guts
  .BYTE 0 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $00 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $00 ;Weakness to paralysis
  .BYTE $00 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::CALL_FOR_HELP
  .WORD BATTLE_ACTIONS::BITE
  .WORD BATTLE_ACTIONS::PSI_DEFENSE_DOWN_ALPHA
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE ENEMY::RED_ANTOID ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $29 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $04 ;Item drop rate
  .BYTE ITEM::SUGAR_PACKET ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $03 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Ramblin' Evil Mushroom", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0005 ;Battle sprite
  .WORD OVERWORLD_SPRITE::RAMBLIN_EVIL_MUSHROOM
  .BYTE $07 ;Run flag
  .WORD 60 ;HP
  .WORD 0 ;PP
  .DWORD 95 ;Experience
  .WORD 15 ;Money
  .WORD EVENT_SCRIPT::EVENT_024
  .DWORD MSG_BTL_AP_ATTESHIMATTA
  .DWORD MSG_BTL_KIZETU_ON_UGOKANAKU
  .BYTE $09 ;Palette
  .BYTE 7 ;Level
  .BYTE MUSIC::VS_STRUTTIN_EVIL_MUSHROOM
  .WORD 15 ;Offense
  .WORD 10 ;Defense
  .BYTE 5 ;Speed
  .BYTE 5 ;Guts
  .BYTE 1 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $00 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $03 ;Weakness to hypnosis/brainshock
  .BYTE $02 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::SCATTER_SPORES
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 1 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $03 ;Item drop rate
  .BYTE ITEM::KETCHUP_PACKET ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Struttin' Evil Mushroom", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0005 ;Battle sprite
  .WORD OVERWORLD_SPRITE::RAMBLIN_EVIL_MUSHROOM
  .BYTE $07 ;Run flag
  .WORD 157 ;HP
  .WORD 0 ;PP
  .DWORD 1492 ;Experience
  .WORD 95 ;Money
  .WORD EVENT_SCRIPT::EVENT_024
  .DWORD MSG_BTL_AP_ATTESHIMATTA
  .DWORD MSG_BTL_KIZETU_ON_UGOKANAKU
  .BYTE $0D ;Palette
  .BYTE 17 ;Level
  .BYTE MUSIC::VS_STRUTTIN_EVIL_MUSHROOM
  .WORD 29 ;Offense
  .WORD 22 ;Defense
  .BYTE 28 ;Speed
  .BYTE 7 ;Guts
  .BYTE 1 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $00 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $03 ;Weakness to hypnosis/brainshock
  .BYTE $02 ;Miss rate
  .BYTE $03 ;Action order
  .WORD BATTLE_ACTIONS::SCATTER_SPORES
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::SCATTER_SPORES_2
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $03 ;Item drop rate
  .BYTE ITEM::RUST_PROMOTER ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Mobile Sprout", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::NORMAL
  .WORD $005A ;Battle sprite
  .WORD OVERWORLD_SPRITE::MOBILE_SPROUT
  .BYTE $06 ;Run flag
  .WORD 79 ;HP
  .WORD 9 ;PP
  .DWORD 133 ;Experience
  .WORD 13 ;Money
  .WORD EVENT_SCRIPT::EVENT_024
  .DWORD MSG_BTL_AP_FUSAGARETA
  .DWORD MSG_BTL_KIZETU_ON_UGOKANAKU
  .BYTE $06 ;Palette
  .BYTE 10 ;Level
  .BYTE MUSIC::VS_CRANKY_LADY
  .WORD 17 ;Offense
  .WORD 12 ;Defense
  .BYTE 6 ;Speed
  .BYTE 5 ;Guts
  .BYTE 1 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $00 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $00 ;Weakness to paralysis
  .BYTE $03 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::PSI_MAGNET_ALPHA
  .WORD BATTLE_ACTIONS::SOW_SEEDS
  .WORD BATTLE_ACTIONS::PSI_LIFEUP_ALPHA
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $2D ;Action 2 argument
  .BYTE ENEMY::MOBILE_SPROUT ;Action 3 argument
  .BYTE $17 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 1 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $02 ;Item drop rate
  .BYTE ITEM::CROISSANT ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $03 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Tough Mobile Sprout", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::NORMAL
  .WORD $005A ;Battle sprite
  .WORD OVERWORLD_SPRITE::MOBILE_SPROUT
  .BYTE $07 ;Run flag
  .WORD 179 ;HP
  .WORD 13 ;PP
  .DWORD 1865 ;Experience
  .WORD 119 ;Money
  .WORD EVENT_SCRIPT::EVENT_024
  .DWORD MSG_BTL_AP_FUSAGARETA
  .DWORD MSG_BTL_KIZETU_ON_UGOKANAKU
  .BYTE $02 ;Palette
  .BYTE 21 ;Level
  .BYTE MUSIC::VS_CRANKY_LADY
  .WORD 33 ;Offense
  .WORD 27 ;Defense
  .BYTE 18 ;Speed
  .BYTE 6 ;Guts
  .BYTE 1 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $00 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $00 ;Weakness to paralysis
  .BYTE $03 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::SOW_SEEDS
  .WORD BATTLE_ACTIONS::PSI_MAGNET_ALPHA
  .WORD BATTLE_ACTIONS::PSI_LIFEUP_ALPHA
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE ENEMY::TOUGH_MOBILE_SPROUT ;Action 2 argument
  .BYTE $2D ;Action 3 argument
  .BYTE $17 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $03 ;Item drop rate
  .BYTE ITEM::SPRIG_OF_PARSLEY ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $03 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Enraged Fire Plug", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::NORMAL
  .WORD $003B ;Battle sprite
  .WORD OVERWORLD_SPRITE::ROBO_PUMP
  .BYTE $07 ;Run flag
  .WORD 309 ;HP
  .WORD 0 ;PP
  .DWORD 4321 ;Experience
  .WORD 346 ;Money
  .WORD EVENT_SCRIPT::EVENT_027
  .DWORD MSG_BTL_AP_FUSAGARETA
  .DWORD MSG_BTL_KIZETU_ON_UGOKANAKU
  .BYTE $03 ;Palette
  .BYTE 32 ;Level
  .BYTE MUSIC::VS_CRANKY_LADY
  .WORD 60 ;Offense
  .WORD 81 ;Defense
  .BYTE 14 ;Speed
  .BYTE 5 ;Guts
  .BYTE 4 ;Luck
  .BYTE $03 ;Weakness to fire
  .BYTE $00 ;Weakness to ice
  .BYTE $03 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $03 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::SPRAY_WATER_BLAST
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::SPRAY_WATER_BLAST
  .WORD BATTLE_ACTIONS::SPRAY_WATER_BLAST
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::SUDDEN_GUTS_PILL ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Mystical Record", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::NORMAL
  .WORD $002E ;Battle sprite
  .WORD OVERWORLD_SPRITE::GIFT_BOX
  .BYTE $07 ;Run flag
  .WORD 263 ;HP
  .WORD 35 ;PP
  .DWORD 2736 ;Experience
  .WORD 310 ;Money
  .WORD EVENT_SCRIPT::EVENT_031
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_UGOKANAKU
  .BYTE $02 ;Palette
  .BYTE 33 ;Level
  .BYTE MUSIC::VS_STRUTTIN_EVIL_MUSHROOM
  .WORD 63 ;Offense
  .WORD 78 ;Defense
  .BYTE 20 ;Speed
  .BYTE 12 ;Guts
  .BYTE 7 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $03 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $03 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $03 ;Action order
  .WORD BATTLE_ACTIONS::CHARGE
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::PSI_LIFEUP_ALPHA
  .WORD BATTLE_ACTIONS::CHARGE
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $17 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 1 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $01 ;Item drop rate
  .BYTE ITEM::PIZZA ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Atomic Power Robot", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::METAL
  .WORD $0069 ;Battle sprite
  .WORD OVERWORLD_SPRITE::WHIRLING_ROBO
  .BYTE $07 ;Run flag
  .WORD 594 ;HP
  .WORD 0 ;PP
  .DWORD 26937 ;Experience
  .WORD 730 ;Money
  .WORD EVENT_SCRIPT::EVENT_023
  .DWORD MSG_BTL_AP_FUSAGARETA
  .DWORD MSG_BTL_KIZETU_ON_KUDAKERU
  .BYTE $02 ;Palette
  .BYTE 56 ;Level
  .BYTE MUSIC::VS_KRAKEN
  .WORD 119 ;Offense
  .WORD 133 ;Defense
  .BYTE 25 ;Speed
  .BYTE 8 ;Guts
  .BYTE 12 ;Luck
  .BYTE $03 ;Weakness to fire
  .BYTE $00 ;Weakness to ice
  .BYTE $02 ;Weakness to flash
  .BYTE $03 ;Weakness to paralysis
  .BYTE $02 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::REPLENISH_FUEL
  .WORD BATTLE_ACTIONS::FIRE_BEAM
  .WORD BATTLE_ACTIONS::REPLENISH_FUEL
  .WORD BATTLE_ACTIONS::REPLENISH_FUEL
  .WORD BATTLE_ACTIONS::EXPLODE ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $03 ;Item drop rate
  .BYTE ITEM::SUPER_BOMB ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Nuclear Reactor Robot", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::METAL
  .WORD $0069 ;Battle sprite
  .WORD OVERWORLD_SPRITE::WHIRLING_ROBO
  .BYTE $07 ;Run flag
  .WORD 798 ;HP
  .WORD 0 ;PP
  .DWORD 53142 ;Experience
  .WORD 820 ;Money
  .WORD EVENT_SCRIPT::EVENT_023
  .DWORD MSG_BTL_AP_FUSAGARETA
  .DWORD MSG_BTL_KIZETU_ON_KUDAKERU
  .BYTE $18 ;Palette
  .BYTE 64 ;Level
  .BYTE MUSIC::VS_KRAKEN
  .WORD 142 ;Offense
  .WORD 185 ;Defense
  .BYTE 46 ;Speed
  .BYTE 8 ;Guts
  .BYTE 12 ;Luck
  .BYTE $03 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $02 ;Weakness to flash
  .BYTE $03 ;Weakness to paralysis
  .BYTE $02 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::REPLENISH_FUEL
  .WORD BATTLE_ACTIONS::FIRE_BEAM
  .WORD BATTLE_ACTIONS::REPLENISH_FUEL
  .WORD BATTLE_ACTIONS::REPLENISH_FUEL
  .WORD BATTLE_ACTIONS::EXPLODE ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $04 ;Item drop rate
  .BYTE ITEM::SUPER_BOMB ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Guardian Hieroglyph", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0046 ;Battle sprite
  .WORD OVERWORLD_SPRITE::GUARDIAN_HIEROGLYPH
  .BYTE $07 ;Run flag
  .WORD 470 ;HP
  .WORD 126 ;PP
  .DWORD 13064 ;Experience
  .WORD 470 ;Money
  .WORD EVENT_SCRIPT::EVENT_021
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_M
  .BYTE $04 ;Palette
  .BYTE 48 ;Level
  .BYTE MUSIC::VS_CRANKY_LADY
  .WORD 94 ;Offense
  .WORD 106 ;Defense
  .BYTE 20 ;Speed
  .BYTE 20 ;Guts
  .BYTE 38 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $02 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $00 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $03 ;Action order
  .WORD BATTLE_ACTIONS::COUGH
  .WORD BATTLE_ACTIONS::PSI_THUNDER_ALPHA
  .WORD BATTLE_ACTIONS::PSI_FLASH_ALPHA
  .WORD BATTLE_ACTIONS::PSI_THUNDER_BETA
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $0D ;Action 2 argument
  .BYTE $11 ;Action 3 argument
  .BYTE $0E ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $03 ;Item drop rate
  .BYTE ITEM::PHARAOHS_CURSE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Lethal Asp Hieroglyph", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0043 ;Battle sprite
  .WORD OVERWORLD_SPRITE::LETHAL_ASP_HIEROGLYPH
  .BYTE $07 ;Run flag
  .WORD 458 ;HP
  .WORD 0 ;PP
  .DWORD 11321 ;Experience
  .WORD 625 ;Money
  .WORD EVENT_SCRIPT::EVENT_020
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_M
  .BYTE $04 ;Palette
  .BYTE 46 ;Level
  .BYTE MUSIC::VS_STRUTTIN_EVIL_MUSHROOM
  .WORD 89 ;Offense
  .WORD 94 ;Defense
  .BYTE 21 ;Speed
  .BYTE 5 ;Guts
  .BYTE 36 ;Luck
  .BYTE $02 ;Weakness to fire
  .BYTE $00 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $00 ;Weakness to paralysis
  .BYTE $00 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::BITING_ATTACK
  .WORD BATTLE_ACTIONS::BITE
  .WORD BATTLE_ACTIONS::BITE
  .WORD BATTLE_ACTIONS::COIL_AROUND
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $02 ;Item drop rate
  .BYTE ITEM::PHARAOHS_CURSE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Electro Swoosh", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0016 ;Battle sprite
  .WORD OVERWORLD_SPRITE::ELECTRO_SWOOSH
  .BYTE $07 ;Run flag
  .WORD 543 ;HP
  .WORD 338 ;PP
  .DWORD 17075 ;Experience
  .WORD 791 ;Money
  .WORD EVENT_SCRIPT::EVENT_027
  .DWORD MSG_BTL_AP_ATTESHIMATTA
  .DWORD MSG_BTL_KIZETU_ON_M
  .BYTE $01 ;Palette
  .BYTE 62 ;Level
  .BYTE MUSIC::VS_SPINNING_ROBO
  .WORD 140 ;Offense
  .WORD 156 ;Defense
  .BYTE 40 ;Speed
  .BYTE 5 ;Guts
  .BYTE 10 ;Luck
  .BYTE $02 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $00 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $02 ;Action order
  .WORD BATTLE_ACTIONS::GREET
  .WORD BATTLE_ACTIONS::ELECTRIC_SHOCK
  .WORD BATTLE_ACTIONS::ELECTRIC_SHOCK
  .WORD BATTLE_ACTIONS::CHARGE
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $02 ;Item drop rate
  .BYTE ITEM::SUDDEN_GUTS_PILL ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $04 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Conducting Menace", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0024 ;Battle sprite
  .WORD OVERWORLD_SPRITE::THUNDER_MITE
  .BYTE $07 ;Run flag
  .WORD 445 ;HP
  .WORD 238 ;PP
  .DWORD 14792 ;Experience
  .WORD 574 ;Money
  .WORD EVENT_SCRIPT::EVENT_023
  .DWORD MSG_BTL_AP_FUSAGARETA
  .DWORD MSG_BTL_KIZETU_ON_M
  .BYTE $1A ;Palette
  .BYTE 52 ;Level
  .BYTE MUSIC::VS_SPINNING_ROBO
  .WORD 107 ;Offense
  .WORD 107 ;Defense
  .BYTE 20 ;Speed
  .BYTE 5 ;Guts
  .BYTE 8 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $03 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $02 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::PSI_FLASH_ALPHA
  .WORD BATTLE_ACTIONS::PSI_FLASH_BETA
  .WORD BATTLE_ACTIONS::PSI_THUNDER_ALPHA
  .WORD BATTLE_ACTIONS::PSI_THUNDER_BETA
  .WORD NULL ;Final action
  .BYTE $11 ;Action 1 argument
  .BYTE $12 ;Action 2 argument
  .BYTE $0D ;Action 3 argument
  .BYTE $0E ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $02 ;Item drop rate
  .BYTE ITEM::BOTTLE_OF_WATER ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Conducting Spirit", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0024 ;Battle sprite
  .WORD OVERWORLD_SPRITE::THUNDER_MITE
  .BYTE $07 ;Run flag
  .WORD 587 ;HP
  .WORD 329 ;PP
  .DWORD 30390 ;Experience
  .WORD 804 ;Money
  .WORD EVENT_SCRIPT::EVENT_023
  .DWORD MSG_BTL_AP_FUSAGARETA
  .DWORD MSG_BTL_KIZETU_ON_M
  .BYTE $01 ;Palette
  .BYTE 59 ;Level
  .BYTE MUSIC::VS_SPINNING_ROBO
  .WORD 130 ;Offense
  .WORD 139 ;Defense
  .BYTE 26 ;Speed
  .BYTE 5 ;Guts
  .BYTE 8 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $03 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $02 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::PSI_FLASH_ALPHA
  .WORD BATTLE_ACTIONS::PSI_FLASH_BETA
  .WORD BATTLE_ACTIONS::PSI_THUNDER_BETA
  .WORD BATTLE_ACTIONS::PSI_THUNDER_GAMMA
  .WORD NULL ;Final action
  .BYTE $11 ;Action 1 argument
  .BYTE $12 ;Action 2 argument
  .BYTE $0E ;Action 3 argument
  .BYTE $0F ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::BRAIN_FOOD_LUNCH ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Evil Elemental", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0030 ;Battle sprite
  .WORD OVERWORLD_SPRITE::ROBO_PUMP
  .BYTE $07 ;Run flag
  .WORD 564 ;HP
  .WORD 0 ;PP
  .DWORD 35737 ;Experience
  .WORD 853 ;Money
  .WORD EVENT_SCRIPT::EVENT_027
  .DWORD MSG_BTL_AP_ATTESHIMATTA
  .DWORD MSG_BTL_KIZETU_ON_KAKIKIERU
  .BYTE $0B ;Palette
  .BYTE 57 ;Level
  .BYTE MUSIC::VS_KRAKEN
  .WORD 121 ;Offense
  .WORD 136 ;Defense
  .BYTE 30 ;Speed
  .BYTE 7 ;Guts
  .BYTE 16 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $03 ;Weakness to ice
  .BYTE $00 ;Weakness to flash
  .BYTE $03 ;Weakness to paralysis
  .BYTE $00 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::DISRUPT_SENSES
  .WORD BATTLE_ACTIONS::POSSESS
  .WORD BATTLE_ACTIONS::BASH
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $01 ;Item drop rate
  .BYTE ITEM::LUXURY_JERKY ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $00 ;The Flag
  PADDEDEBTEXT "|'s Nightmare", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::NORMAL
  .WORD $004F ;Battle sprite
  .WORD OVERWORLD_SPRITE::EVIL_MANI_MANI
  .BYTE $07 ;Run flag
  .WORD 1654 ;HP
  .WORD 882 ;PP
  .DWORD 89004 ;Experience
  .WORD 4442 ;Money
  .WORD EVENT_SCRIPT::EVENT_000
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_UGOKANAKU
  .BYTE $05 ;Palette
  .BYTE 71 ;Level
  .BYTE MUSIC::VS_STARMAN_JR
  .WORD 172 ;Offense
  .WORD 253 ;Defense
  .BYTE 31 ;Speed
  .BYTE 1 ;Guts
  .BYTE 80 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $02 ;Weakness to ice
  .BYTE $02 ;Weakness to flash
  .BYTE $03 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $00 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::ENEMY_EXTENDER
  .WORD BATTLE_ACTIONS::PSI_ROCKIN_ALPHA
  .WORD BATTLE_ACTIONS::GLORIOUS_LIGHT
  .WORD BATTLE_ACTIONS::PSI_SHIELD_BETA
  .WORD NULL ;Final action
  .BYTE ENEMY::YOUR_NIGHTMARE_2 ;Action 1 argument
  .BYTE $01 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $21 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $01 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::PSI_SHIELD
  .BYTE $01 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Annoying Old Party Man", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0022 ;Battle sprite
  .WORD OVERWORLD_SPRITE::ANNOYING_OLD_PARTY_MAN
  .BYTE $07 ;Run flag
  .WORD 99 ;HP
  .WORD 0 ;PP
  .DWORD 130 ;Experience
  .WORD 32 ;Money
  .WORD EVENT_SCRIPT::EVENT_021
  .DWORD MSG_BTL_AP_TSUKAMATTA
  .DWORD MSG_BTL_KIZETU_ON_WARENI
  .BYTE $08 ;Palette
  .BYTE 13 ;Level
  .BYTE MUSIC::VS_RUNAWAY_DOG
  .WORD 20 ;Offense
  .WORD 25 ;Defense
  .BYTE 6 ;Speed
  .BYTE 50 ;Guts
  .BYTE 15 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $06 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::GRUMBLE_ABOUT_YOUTH
  .WORD BATTLE_ACTIONS::WOBBLE
  .WORD BATTLE_ACTIONS::REEL
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $01 ;Item drop rate
  .BYTE ITEM::PROTEIN_DRINK ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Annoying Reveler", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0022 ;Battle sprite
  .WORD OVERWORLD_SPRITE::ANNOYING_OLD_PARTY_MAN
  .BYTE $07 ;Run flag
  .WORD 288 ;HP
  .WORD 0 ;PP
  .DWORD 2373 ;Experience
  .WORD 268 ;Money
  .WORD EVENT_SCRIPT::EVENT_021
  .DWORD MSG_BTL_AP_TSUKAMATTA
  .DWORD MSG_BTL_KIZETU_ON_WARENI
  .BYTE $10 ;Palette
  .BYTE 31 ;Level
  .BYTE MUSIC::VS_CAVE_BOY
  .WORD 58 ;Offense
  .WORD 77 ;Defense
  .BYTE 17 ;Speed
  .BYTE 50 ;Guts
  .BYTE 15 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $06 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::GRUMBLE_ABOUT_YOUTH
  .WORD BATTLE_ACTIONS::LECTURE
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::WOBBLE
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $03 ;Item drop rate
  .BYTE ITEM::PROTEIN_DRINK ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Unassuming Local Guy", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0023 ;Battle sprite
  .WORD OVERWORLD_SPRITE::UNASSUMING_LOCAL_GUY_ENEMY
  .BYTE $07 ;Run flag
  .WORD 73 ;HP
  .WORD 0 ;PP
  .DWORD 146 ;Experience
  .WORD 19 ;Money
  .WORD EVENT_SCRIPT::EVENT_021
  .DWORD MSG_BTL_AP_TSUKAMATTA
  .DWORD MSG_BTL_KIZETU_ON_WARENI
  .BYTE $01 ;Palette
  .BYTE 9 ;Level
  .BYTE MUSIC::VS_CRANKY_LADY
  .WORD 18 ;Offense
  .WORD 13 ;Defense
  .BYTE 5 ;Speed
  .BYTE 1 ;Guts
  .BYTE 14 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::BECOME_FRIENDLY
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $04 ;Item drop rate
  .BYTE ITEM::TOOTHBRUSH ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "New Age Retro Hippie", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $006B ;Battle sprite
  .WORD OVERWORLD_SPRITE::NEW_AGE_RETRO_HIPPIE_ENEMY
  .BYTE $07 ;Run flag
  .WORD 87 ;HP
  .WORD 0 ;PP
  .DWORD 160 ;Experience
  .WORD 23 ;Money
  .WORD EVENT_SCRIPT::EVENT_021
  .DWORD MSG_BTL_AP_TSUKAMATTA
  .DWORD MSG_BTL_KIZETU_ON_WARENI
  .BYTE $01 ;Palette
  .BYTE 11 ;Level
  .BYTE MUSIC::VS_NEW_AGE_RETRO_HIPPIE
  .WORD 19 ;Offense
  .WORD 14 ;Defense
  .BYTE 5 ;Speed
  .BYTE 10 ;Guts
  .BYTE 16 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::LOSE_TEMPER
  .WORD BATTLE_ACTIONS::TOOTHBRUSH
  .WORD BATTLE_ACTIONS::RULER
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $9A ;Action 3 argument
  .BYTE $8C ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $03 ;Item drop rate
  .BYTE ITEM::RULER ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $00 ;The Flag
  PADDEDEBTEXT "Mr. Carpainter", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0021 ;Battle sprite
  .WORD OVERWORLD_SPRITE::MR_CARPAINTER
  .BYTE $07 ;Run flag
  .WORD 262 ;HP
  .WORD 70 ;PP
  .DWORD 1412 ;Experience
  .WORD 195 ;Money
  .WORD EVENT_SCRIPT::EVENT_021
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_WARENI
  .BYTE $01 ;Palette
  .BYTE 21 ;Level
  .BYTE MUSIC::VS_STARMAN_JR
  .WORD 33 ;Offense
  .WORD 45 ;Defense
  .BYTE 8 ;Speed
  .BYTE 13 ;Guts
  .BYTE 72 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $02 ;Action order
  .WORD BATTLE_ACTIONS::CRASHING_BOOM_BANG
  .WORD BATTLE_ACTIONS::PSI_LIFEUP_ALPHA
  .WORD BATTLE_ACTIONS::PAINT_ATTACK
  .WORD BATTLE_ACTIONS::ENEMY_EXTENDER
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $17 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE ENEMY::MR_CARPAINTER_2 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $01 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $01 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $00 ;The Flag
  PADDEDEBTEXT "Carbon Dog", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0028 ;Battle sprite
  .WORD OVERWORLD_SPRITE::YOUR_SANCTUARY_POINT_BOSS
  .BYTE $07 ;Run flag
  .WORD 1672 ;HP
  .WORD 0 ;PP
  .DWORD 0 ;Experience
  .WORD 0 ;Money
  .WORD EVENT_SCRIPT::EVENT_023
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $01 ;Palette
  .BYTE 70 ;Level
  .BYTE MUSIC::VS_YOUR_SANCTUARY_BOSS
  .WORD 159 ;Offense
  .WORD 174 ;Defense
  .BYTE 31 ;Speed
  .BYTE 52 ;Guts
  .BYTE 53 ;Luck
  .BYTE $03 ;Weakness to fire
  .BYTE $02 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $02 ;Weakness to paralysis
  .BYTE $02 ;Weakness to hypnosis/brainshock
  .BYTE $00 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::SPEW_FIREBALL
  .WORD BATTLE_ACTIONS::ENEMY_EXTENDER
  .WORD BATTLE_ACTIONS::HOWL
  .WORD BATTLE_ACTIONS::BITING_ATTACK
  .WORD BATTLE_ACTIONS::GIVE_OFF_RAINBOW ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE ENEMY::CARBON_DOG_2 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE ENEMY::DIAMOND_DOG_1 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $01 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $01 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Mighty Bear", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0068 ;Battle sprite
  .WORD OVERWORLD_SPRITE::MIGHTY_BEAR
  .BYTE $07 ;Run flag
  .WORD 167 ;HP
  .WORD 0 ;PP
  .DWORD 609 ;Experience
  .WORD 49 ;Money
  .WORD EVENT_SCRIPT::EVENT_029
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $07 ;Palette
  .BYTE 16 ;Level
  .BYTE MUSIC::VS_CRANKY_LADY
  .WORD 29 ;Offense
  .WORD 31 ;Defense
  .BYTE 7 ;Speed
  .BYTE 1 ;Guts
  .BYTE 5 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $02 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $03 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::CLAW
  .WORD BATTLE_ACTIONS::BITE
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::BASH
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $01 ;Item drop rate
  .BYTE ITEM::TEDDY_BEAR ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Mighty Bear Seven", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0068 ;Battle sprite
  .WORD OVERWORLD_SPRITE::MIGHTY_BEAR
  .BYTE $07 ;Run flag
  .WORD 367 ;HP
  .WORD 0 ;PP
  .DWORD 8884 ;Experience
  .WORD 440 ;Money
  .WORD EVENT_SCRIPT::EVENT_029
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $15 ;Palette
  .BYTE 42 ;Level
  .BYTE MUSIC::VS_CRANKY_LADY
  .WORD 85 ;Offense
  .WORD 76 ;Defense
  .BYTE 11 ;Speed
  .BYTE 1 ;Guts
  .BYTE 4 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $02 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $03 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::CLAW
  .WORD BATTLE_ACTIONS::BITE
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::BASH
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::SUPER_PLUSH_BEAR ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $02 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Putrid Moldyman", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $000A ;Battle sprite
  .WORD OVERWORLD_SPRITE::STINKY_GHOST
  .BYTE $07 ;Run flag
  .WORD 203 ;HP
  .WORD 0 ;PP
  .DWORD 830 ;Experience
  .WORD 53 ;Money
  .WORD EVENT_SCRIPT::EVENT_024
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_M
  .BYTE $09 ;Palette
  .BYTE 21 ;Level
  .BYTE MUSIC::VS_STRUTTIN_EVIL_MUSHROOM
  .WORD 36 ;Offense
  .WORD 41 ;Defense
  .BYTE 9 ;Speed
  .BYTE 5 ;Guts
  .BYTE 17 ;Luck
  .BYTE $03 ;Weakness to fire
  .BYTE $00 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $02 ;Weakness to paralysis
  .BYTE $00 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::MOLD_SPORES
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::BASH
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $02 ;Item drop rate
  .BYTE ITEM::CROISSANT ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Thunder Mite", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::NORMAL
  .WORD $001E ;Battle sprite
  .WORD OVERWORLD_SPRITE::THUNDER_MITE
  .BYTE $07 ;Run flag
  .WORD 293 ;HP
  .WORD 200 ;PP
  .DWORD 10798 ;Experience
  .WORD 430 ;Money
  .WORD EVENT_SCRIPT::EVENT_023
  .DWORD MSG_BTL_AP_FUSAGARETA
  .DWORD MSG_BTL_KIZETU_ON_KIESARU
  .BYTE $01 ;Palette
  .BYTE 43 ;Level
  .BYTE MUSIC::VS_SPINNING_ROBO
  .WORD 85 ;Offense
  .WORD 83 ;Defense
  .BYTE 20 ;Speed
  .BYTE 13 ;Guts
  .BYTE 8 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $00 ;Weakness to ice
  .BYTE $03 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::PSI_THUNDER_ALPHA
  .WORD BATTLE_ACTIONS::PSI_THUNDER_ALPHA
  .WORD BATTLE_ACTIONS::PSI_THUNDER_BETA
  .WORD BATTLE_ACTIONS::PSI_THUNDER_BETA
  .WORD NULL ;Final action
  .BYTE $0D ;Action 1 argument
  .BYTE $0D ;Action 2 argument
  .BYTE $0E ;Action 3 argument
  .BYTE $0E ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $02 ;Item drop rate
  .BYTE ITEM::BOTTLE_OF_WATER ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Cranky Lady", 25
  .BYTE GENDER::FEMALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0063 ;Battle sprite
  .WORD OVERWORLD_SPRITE::CRANKY_LADY
  .BYTE $07 ;Run flag
  .WORD 95 ;HP
  .WORD 0 ;PP
  .DWORD 200 ;Experience
  .WORD 17 ;Money
  .WORD EVENT_SCRIPT::EVENT_021
  .DWORD MSG_BTL_AP_TSUKAMATTA
  .DWORD MSG_BTL_KIZETU_ON_WARENI
  .BYTE $03 ;Palette
  .BYTE 8 ;Level
  .BYTE MUSIC::VS_CRANKY_LADY
  .WORD 16 ;Offense
  .WORD 18 ;Defense
  .BYTE 6 ;Speed
  .BYTE 3 ;Guts
  .BYTE 32 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::WIELD_SHOPPING_BAG
  .WORD BATTLE_ACTIONS::SCOWL
  .WORD BATTLE_ACTIONS::GRIN
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $01 ;Item drop rate
  .BYTE ITEM::HANDBAG_STRAP ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Extra Cranky Lady", 25
  .BYTE GENDER::FEMALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0063 ;Battle sprite
  .WORD OVERWORLD_SPRITE::CRANKY_LADY
  .BYTE $07 ;Run flag
  .WORD 277 ;HP
  .WORD 0 ;PP
  .DWORD 3651 ;Experience
  .WORD 134 ;Money
  .WORD EVENT_SCRIPT::EVENT_021
  .DWORD MSG_BTL_AP_TSUKAMATTA
  .DWORD MSG_BTL_KIZETU_ON_WARENI
  .BYTE $07 ;Palette
  .BYTE 27 ;Level
  .BYTE MUSIC::VS_CRANKY_LADY
  .WORD 48 ;Offense
  .WORD 70 ;Defense
  .BYTE 17 ;Speed
  .BYTE 5 ;Guts
  .BYTE 32 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::SCOWL
  .WORD BATTLE_ACTIONS::CONTINUOUS_ATTACK
  .WORD BATTLE_ACTIONS::WIELD_SHOPPING_BAG
  .WORD BATTLE_ACTIONS::SCARY_WORDS
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $04 ;Item drop rate
  .BYTE ITEM::HANDBAG_STRAP ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $00 ;The Flag
  PADDEDEBTEXT "Giygas", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0000 ;Battle sprite
  .WORD OVERWORLD_SPRITE::WHIRLING_ROBO
  .BYTE $07 ;Run flag
  .WORD 3600 ;HP
  .WORD 0 ;PP
  .DWORD 0 ;Experience
  .WORD 0 ;Money
  .WORD EVENT_SCRIPT::EVENT_023
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_M
  .BYTE $00 ;Palette
  .BYTE 73 ;Level
  .BYTE MUSIC::GIYGAS_AWAKENS
  .WORD 203 ;Offense
  .WORD 300 ;Defense
  .BYTE 52 ;Speed
  .BYTE 1 ;Guts
  .BYTE 80 ;Luck
  .BYTE $02 ;Weakness to fire
  .BYTE $02 ;Weakness to ice
  .BYTE $02 ;Weakness to flash
  .BYTE $03 ;Weakness to paralysis
  .BYTE $02 ;Weakness to hypnosis/brainshock
  .BYTE $00 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::BASH
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $01 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $01 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Wetnosaur", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::NORMAL
  .WORD $000E ;Battle sprite
  .WORD OVERWORLD_SPRITE::WETNOSAUR
  .BYTE $07 ;Run flag
  .WORD 1030 ;HP
  .WORD 0 ;PP
  .DWORD 33098 ;Experience
  .WORD 745 ;Money
  .WORD EVENT_SCRIPT::EVENT_029
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $09 ;Palette
  .BYTE 59 ;Level
  .BYTE MUSIC::VS_KRAKEN
  .WORD 126 ;Offense
  .WORD 172 ;Defense
  .BYTE 17 ;Speed
  .BYTE 2 ;Guts
  .BYTE 16 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $02 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $03 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::STOMP
  .WORD BATTLE_ACTIONS::SWING_TAIL
  .WORD BATTLE_ACTIONS::BITE
  .WORD BATTLE_ACTIONS::LOUD_RUMBLE
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $01 ;Item drop rate
  .BYTE ITEM::LUXURY_JERKY ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Chomposaur", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0041 ;Battle sprite
  .WORD OVERWORLD_SPRITE::CHOMPOSAUR
  .BYTE $07 ;Run flag
  .WORD 1288 ;HP
  .WORD 320 ;PP
  .DWORD 44378 ;Experience
  .WORD 896 ;Money
  .WORD EVENT_SCRIPT::EVENT_029
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $03 ;Palette
  .BYTE 62 ;Level
  .BYTE MUSIC::VS_CAVE_BOY
  .WORD 139 ;Offense
  .WORD 183 ;Defense
  .BYTE 17 ;Speed
  .BYTE 3 ;Guts
  .BYTE 16 ;Luck
  .BYTE $03 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $02 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $02 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::PSI_FIRE_ALPHA
  .WORD BATTLE_ACTIONS::PSI_FIRE_BETA
  .WORD BATTLE_ACTIONS::SWING_TAIL
  .WORD BATTLE_ACTIONS::ENEMY_EXTENDER
  .WORD NULL ;Final action
  .BYTE $05 ;Action 1 argument
  .BYTE $06 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE ENEMY::CHOMPOSAUR_2 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::MAGIC_FRY_PAN ;Item dropped
  .BYTE INITIAL_STATUS::SHIELD_POWER
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $00 ;The Flag
  PADDEDEBTEXT "Titanic Ant", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::INSECT
  .WORD $0049 ;Battle sprite
  .WORD OVERWORLD_SPRITE::YOUR_SANCTUARY_POINT_BOSS
  .BYTE $07 ;Run flag
  .WORD 235 ;HP
  .WORD 102 ;PP
  .DWORD 685 ;Experience
  .WORD 150 ;Money
  .WORD EVENT_SCRIPT::EVENT_023
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $04 ;Palette
  .BYTE 13 ;Level
  .BYTE MUSIC::VS_YOUR_SANCTUARY_BOSS
  .WORD 19 ;Offense
  .WORD 23 ;Defense
  .BYTE 6 ;Speed
  .BYTE 9 ;Guts
  .BYTE 72 ;Luck
  .BYTE $02 ;Weakness to fire
  .BYTE $02 ;Weakness to ice
  .BYTE $02 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $00 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::ENEMY_EXTENDER
  .WORD BATTLE_ACTIONS::BITING_ATTACK
  .WORD BATTLE_ACTIONS::PSI_DEFENSE_DOWN_ALPHA
  .WORD BATTLE_ACTIONS::PSI_MAGNET_ALPHA
  .WORD NULL ;Final action
  .BYTE ENEMY::TITANIC_ANT_2 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $29 ;Action 3 argument
  .BYTE $2D ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $01 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $01 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Gigantic Ant", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::INSECT
  .WORD $0049 ;Battle sprite
  .WORD OVERWORLD_SPRITE::GIGANTIC_ANT
  .BYTE $07 ;Run flag
  .WORD 308 ;HP
  .WORD 81 ;PP
  .DWORD 3980 ;Experience
  .WORD 304 ;Money
  .WORD EVENT_SCRIPT::EVENT_020
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $01 ;Palette
  .BYTE 30 ;Level
  .BYTE MUSIC::VS_CAVE_BOY
  .WORD 54 ;Offense
  .WORD 112 ;Defense
  .BYTE 17 ;Speed
  .BYTE 5 ;Guts
  .BYTE 6 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $00 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::PSI_MAGNET_ALPHA
  .WORD BATTLE_ACTIONS::POISON_STING
  .WORD BATTLE_ACTIONS::BITING_ATTACK
  .WORD BATTLE_ACTIONS::ENEMY_EXTENDER
  .WORD NULL ;Final action
  .BYTE $2D ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE ENEMY::GIGANTIC_ANT_2 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $02 ;Item drop rate
  .BYTE ITEM::DOUBLE_BURGER ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $02 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $00 ;The Flag
  PADDEDEBTEXT "Shrooom!", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::NORMAL
  .WORD $000B ;Battle sprite
  .WORD OVERWORLD_SPRITE::YOUR_SANCTUARY_POINT_BOSS
  .BYTE $07 ;Run flag
  .WORD 1700 ;HP
  .WORD 112 ;PP
  .DWORD 96323 ;Experience
  .WORD 4086 ;Money
  .WORD EVENT_SCRIPT::EVENT_023
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $09 ;Palette
  .BYTE 48 ;Level
  .BYTE MUSIC::VS_YOUR_SANCTUARY_BOSS
  .WORD 95 ;Offense
  .WORD 154 ;Defense
  .BYTE 18 ;Speed
  .BYTE 32 ;Guts
  .BYTE 72 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $02 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $03 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $00 ;Miss rate
  .BYTE $02 ;Action order
  .WORD BATTLE_ACTIONS::SCATTER_SPORES
  .WORD BATTLE_ACTIONS::PSI_LIFEUP_ALPHA
  .WORD BATTLE_ACTIONS::SCATTER_SPORES_2
  .WORD BATTLE_ACTIONS::ENEMY_EXTENDER
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $17 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE ENEMY::SHROOOM_2 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $01 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $01 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $00 ;The Flag
  PADDEDEBTEXT "Plague Rat of Doom", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $004B ;Battle sprite
  .WORD OVERWORLD_SPRITE::YOUR_SANCTUARY_POINT_BOSS
  .BYTE $07 ;Run flag
  .WORD 1827 ;HP
  .WORD 60 ;PP
  .DWORD 115272 ;Experience
  .WORD 4464 ;Money
  .WORD EVENT_SCRIPT::EVENT_023
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $04 ;Palette
  .BYTE 47 ;Level
  .BYTE MUSIC::VS_YOUR_SANCTUARY_BOSS
  .WORD 71 ;Offense
  .WORD 180 ;Defense
  .BYTE 19 ;Speed
  .BYTE 250 ;Guts
  .BYTE 45 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $02 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $02 ;Weakness to paralysis
  .BYTE $02 ;Weakness to hypnosis/brainshock
  .BYTE $00 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::POISONOUS_BITE
  .WORD BATTLE_ACTIONS::ENEMY_EXTENDER
  .WORD BATTLE_ACTIONS::BITE
  .WORD BATTLE_ACTIONS::BASH
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE ENEMY::PLAGUE_RAT_OF_DOOM_2 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $01 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $01 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $00 ;The Flag
  PADDEDEBTEXT "Mondo Mole", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0053 ;Battle sprite
  .WORD OVERWORLD_SPRITE::YOUR_SANCTUARY_POINT_BOSS
  .BYTE $07 ;Run flag
  .WORD 498 ;HP
  .WORD 161 ;PP
  .DWORD 5791 ;Experience
  .WORD 400 ;Money
  .WORD EVENT_SCRIPT::EVENT_023
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $05 ;Palette
  .BYTE 23 ;Level
  .BYTE MUSIC::VS_YOUR_SANCTUARY_BOSS
  .WORD 37 ;Offense
  .WORD 50 ;Defense
  .BYTE 9 ;Speed
  .BYTE 15 ;Guts
  .BYTE 36 ;Luck
  .BYTE $02 ;Weakness to fire
  .BYTE $03 ;Weakness to ice
  .BYTE $00 ;Weakness to flash
  .BYTE $00 ;Weakness to paralysis
  .BYTE $02 ;Weakness to hypnosis/brainshock
  .BYTE $00 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::PSI_LIFEUP_ALPHA
  .WORD BATTLE_ACTIONS::TEAR_INTO
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::ENEMY_EXTENDER
  .WORD NULL ;Final action
  .BYTE $17 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE ENEMY::MONDO_MOLE_2 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $01 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $01 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Guardian Digger", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0053 ;Battle sprite
  .WORD OVERWORLD_SPRITE::YOUR_SANCTUARY_POINT_BOSS
  .BYTE $07 ;Run flag
  .WORD 386 ;HP
  .WORD 110 ;PP
  .DWORD 17301 ;Experience
  .WORD 1467 ;Money
  .WORD EVENT_SCRIPT::EVENT_023
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $15 ;Palette
  .BYTE 32 ;Level
  .BYTE MUSIC::VS_YOUR_SANCTUARY_BOSS
  .WORD 59 ;Offense
  .WORD 129 ;Defense
  .BYTE 17 ;Speed
  .BYTE 21 ;Guts
  .BYTE 55 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $00 ;Weakness to flash
  .BYTE $02 ;Weakness to paralysis
  .BYTE $02 ;Weakness to hypnosis/brainshock
  .BYTE $00 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::CLAW
  .WORD BATTLE_ACTIONS::ENEMY_EXTENDER
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::PSI_SHIELD_BETA
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE ENEMY::GUARDIAN_DIGGER_2 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $21 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $01 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::SHIELD_POWER
  .BYTE $01 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Scalding Coffee Cup", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::NORMAL
  .WORD $002C ;Battle sprite
  .WORD OVERWORLD_SPRITE::GIFT_BOX
  .BYTE $07 ;Run flag
  .WORD 190 ;HP
  .WORD 0 ;PP
  .DWORD 2462 ;Experience
  .WORD 280 ;Money
  .WORD EVENT_SCRIPT::EVENT_031
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_UGOKANAKU
  .BYTE $02 ;Palette
  .BYTE 30 ;Level
  .BYTE MUSIC::VS_STRUTTIN_EVIL_MUSHROOM
  .WORD 55 ;Offense
  .WORD 20 ;Defense
  .BYTE 23 ;Speed
  .BYTE 5 ;Guts
  .BYTE 1 ;Luck
  .BYTE $02 ;Weakness to fire
  .BYTE $00 ;Weakness to ice
  .BYTE $02 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $02 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::HOT_ESPRESSO
  .WORD BATTLE_ACTIONS::HOT_ESPRESSO
  .WORD BATTLE_ACTIONS::HOT_ESPRESSO
  .WORD BATTLE_ACTIONS::HOT_ESPRESSO
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 1 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $06 ;Item drop rate
  .BYTE ITEM::CUP_OF_COFFEE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Loaded Dice", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::NORMAL
  .WORD $003A ;Battle sprite
  .WORD OVERWORLD_SPRITE::GIFT_BOX
  .BYTE $07 ;Run flag
  .WORD 307 ;HP
  .WORD 0 ;PP
  .DWORD 10672 ;Experience
  .WORD 703 ;Money
  .WORD EVENT_SCRIPT::EVENT_031
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $03 ;Palette
  .BYTE 59 ;Level
  .BYTE MUSIC::VS_CRANKY_LADY
  .WORD 146 ;Offense
  .WORD 113 ;Defense
  .BYTE 77 ;Speed
  .BYTE 75 ;Guts
  .BYTE 6 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $00 ;Weakness to ice
  .BYTE $02 ;Weakness to flash
  .BYTE $00 ;Weakness to paralysis
  .BYTE $03 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::CALL_FOR_HELP
  .WORD BATTLE_ACTIONS::CALL_FOR_HELP
  .WORD BATTLE_ACTIONS::CALL_FOR_HELP
  .WORD BATTLE_ACTIONS::CALL_FOR_HELP
  .WORD NULL ;Final action
  .BYTE ENEMY::CARE_FREE_BOMB ;Action 1 argument
  .BYTE ENEMY::BEAUTIFUL_UFO ;Action 2 argument
  .BYTE ENEMY::HIGH_CLASS_UFO ;Action 3 argument
  .BYTE ENEMY::CARE_FREE_BOMB ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 1 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $02 ;Item drop rate
  .BYTE ITEM::PSI_CARAMEL ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $03 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Slimy Little Pile", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::NORMAL
  .WORD $005B ;Battle sprite
  .WORD OVERWORLD_SPRITE::SLIMY_LITTLE_PILE
  .BYTE $07 ;Run flag
  .WORD 224 ;HP
  .WORD 0 ;PP
  .DWORD 1978 ;Experience
  .WORD 124 ;Money
  .WORD EVENT_SCRIPT::EVENT_020
  .DWORD MSG_BTL_AP_ATTESHIMATTA
  .DWORD MSG_BTL_KIZETU_ON_M
  .BYTE $06 ;Palette
  .BYTE 24 ;Level
  .BYTE MUSIC::VS_MASTER_BARF
  .WORD 42 ;Offense
  .WORD 61 ;Defense
  .BYTE 15 ;Speed
  .BYTE 7 ;Guts
  .BYTE 38 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $00 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::STINKY_BREATH
  .WORD BATTLE_ACTIONS::CALL_FOR_HELP
  .WORD BATTLE_ACTIONS::STICKY_MUCUS
  .WORD BATTLE_ACTIONS::BASH
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE ENEMY::SLIMY_LIL_PILE ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $01 ;Boss flag
  .BYTE $02 ;Item drop rate
  .BYTE ITEM::BOMB ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $04 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Even Slimier Little Pile", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::NORMAL
  .WORD $005B ;Battle sprite
  .WORD OVERWORLD_SPRITE::SLIMY_LITTLE_PILE
  .BYTE $07 ;Run flag
  .WORD 326 ;HP
  .WORD 0 ;PP
  .DWORD 15075 ;Experience
  .WORD 579 ;Money
  .WORD EVENT_SCRIPT::EVENT_020
  .DWORD MSG_BTL_AP_ATTESHIMATTA
  .DWORD MSG_BTL_KIZETU_ON_M
  .BYTE $0E ;Palette
  .BYTE 49 ;Level
  .BYTE MUSIC::VS_MASTER_BARF
  .WORD 103 ;Offense
  .WORD 101 ;Defense
  .BYTE 22 ;Speed
  .BYTE 9 ;Guts
  .BYTE 39 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $00 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::CALL_FOR_HELP
  .WORD BATTLE_ACTIONS::STICKY_MUCUS
  .WORD BATTLE_ACTIONS::STINKY_BREATH
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE ENEMY::EVEN_SLIMIER_LITTLE_PILE ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $02 ;Item drop rate
  .BYTE ITEM::MULTI_BOTTLE_ROCKET ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $03 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Arachnid!", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::INSECT
  .WORD $004D ;Battle sprite
  .WORD OVERWORLD_SPRITE::ARACHNID
  .BYTE $07 ;Run flag
  .WORD 216 ;HP
  .WORD 0 ;PP
  .DWORD 4933 ;Experience
  .WORD 296 ;Money
  .WORD EVENT_SCRIPT::EVENT_020
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $05 ;Palette
  .BYTE 32 ;Level
  .BYTE MUSIC::VS_CAVE_BOY
  .WORD 61 ;Offense
  .WORD 30 ;Defense
  .BYTE 23 ;Speed
  .BYTE 3 ;Guts
  .BYTE 0 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $00 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $00 ;Weakness to paralysis
  .BYTE $03 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::SPIDER_SILK
  .WORD BATTLE_ACTIONS::POISON_STING
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 1 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $04 ;Item drop rate
  .BYTE ITEM::JAR_OF_HOT_SAUCE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Arachnid!!!", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::INSECT
  .WORD $004D ;Battle sprite
  .WORD OVERWORLD_SPRITE::ARACHNID
  .BYTE $07 ;Run flag
  .WORD 344 ;HP
  .WORD 0 ;PP
  .DWORD 10449 ;Experience
  .WORD 412 ;Money
  .WORD EVENT_SCRIPT::EVENT_020
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $1F ;Palette
  .BYTE 45 ;Level
  .BYTE MUSIC::VS_CAVE_BOY
  .WORD 87 ;Offense
  .WORD 86 ;Defense
  .BYTE 20 ;Speed
  .BYTE 4 ;Guts
  .BYTE 0 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $00 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $00 ;Weakness to paralysis
  .BYTE $03 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::POISON_STING
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::SPIDER_SILK
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $02 ;Item drop rate
  .BYTE ITEM::BEEF_JERKY ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $00 ;The Flag
  PADDEDEBTEXT "Kraken", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0029 ;Battle sprite
  .WORD OVERWORLD_SPRITE::KRAKEN
  .BYTE $07 ;Run flag
  .WORD 1097 ;HP
  .WORD 176 ;PP
  .DWORD 79267 ;Experience
  .WORD 3049 ;Money
  .WORD EVENT_SCRIPT::EVENT_029
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_M
  .BYTE $01 ;Palette
  .BYTE 54 ;Level
  .BYTE MUSIC::VS_KRAKEN
  .WORD 105 ;Offense
  .WORD 166 ;Defense
  .BYTE 21 ;Speed
  .BYTE 1 ;Guts
  .BYTE 32 ;Luck
  .BYTE $02 ;Weakness to fire
  .BYTE $02 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $02 ;Weakness to hypnosis/brainshock
  .BYTE $00 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::FIRE_BREATH
  .WORD BATTLE_ACTIONS::EMIT_PALE_GREEN_LIGHT
  .WORD BATTLE_ACTIONS::CRASHING_BOOM_BANG
  .WORD BATTLE_ACTIONS::ENEMY_EXTENDER
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE ENEMY::KRAKEN_2 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $01 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Bionic Kraken", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0029 ;Battle sprite
  .WORD OVERWORLD_SPRITE::WHIRLING_ROBO
  .BYTE $07 ;Run flag
  .WORD 900 ;HP
  .WORD 60 ;PP
  .DWORD 50308 ;Experience
  .WORD 960 ;Money
  .WORD EVENT_SCRIPT::EVENT_023
  .DWORD MSG_BTL_AP_FUSAGARETA
  .DWORD MSG_BTL_KIZETU_ON_M
  .BYTE $18 ;Palette
  .BYTE 70 ;Level
  .BYTE MUSIC::VS_KRAKEN
  .WORD 155 ;Offense
  .WORD 195 ;Defense
  .BYTE 42 ;Speed
  .BYTE 1 ;Guts
  .BYTE 32 ;Luck
  .BYTE $02 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $02 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::GENERATE_TORNADO
  .WORD BATTLE_ACTIONS::CRASHING_BOOM_BANG
  .WORD BATTLE_ACTIONS::FIRE_BREATH
  .WORD BATTLE_ACTIONS::EMIT_PALE_GREEN_LIGHT
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::GUTSY_BAT ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Spinning Robo", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::METAL
  .WORD $0034 ;Battle sprite
  .WORD OVERWORLD_SPRITE::WHIRLING_ROBO
  .BYTE $06 ;Run flag
  .WORD 113 ;HP
  .WORD 17 ;PP
  .DWORD 297 ;Experience
  .WORD 21 ;Money
  .WORD EVENT_SCRIPT::EVENT_023
  .DWORD MSG_BTL_AP_FUSAGARETA
  .DWORD MSG_BTL_KIZETU_ON_HAKAI
  .BYTE $02 ;Palette
  .BYTE 14 ;Level
  .BYTE MUSIC::VS_SPINNING_ROBO
  .WORD 21 ;Offense
  .WORD 22 ;Defense
  .BYTE 7 ;Speed
  .BYTE 5 ;Guts
  .BYTE 12 ;Luck
  .BYTE $03 ;Weakness to fire
  .BYTE $00 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $03 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::FIRE_BEAM
  .WORD BATTLE_ACTIONS::FIRE_BEAM
  .WORD BATTLE_ACTIONS::NIGHT_TIME_STUFFINESS_BEAM
  .WORD BATTLE_ACTIONS::PSI_SHIELD_ALPHA
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $1F ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $01 ;Item drop rate
  .BYTE ITEM::METEORNIUM ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Whirling Robo", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::METAL
  .WORD $0034 ;Battle sprite
  .WORD OVERWORLD_SPRITE::WHIRLING_ROBO
  .BYTE $07 ;Run flag
  .WORD 374 ;HP
  .WORD 36 ;PP
  .DWORD 5782 ;Experience
  .WORD 256 ;Money
  .WORD EVENT_SCRIPT::EVENT_023
  .DWORD MSG_BTL_AP_FUSAGARETA
  .DWORD MSG_BTL_KIZETU_ON_HAKAI
  .BYTE $1C ;Palette
  .BYTE 39 ;Level
  .BYTE MUSIC::VS_SPINNING_ROBO
  .WORD 78 ;Offense
  .WORD 90 ;Defense
  .BYTE 18 ;Speed
  .BYTE 5 ;Guts
  .BYTE 12 ;Luck
  .BYTE $03 ;Weakness to fire
  .BYTE $00 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $03 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::FIRE_BEAM
  .WORD BATTLE_ACTIONS::NIGHT_TIME_STUFFINESS_BEAM
  .WORD BATTLE_ACTIONS::NEUTRALIZER
  .WORD BATTLE_ACTIONS::PSI_SHIELD_ALPHA
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $C3 ;Action 3 argument
  .BYTE $1F ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::METEOTITE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Hyper Spinning Robo", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::METAL
  .WORD $0034 ;Battle sprite
  .WORD OVERWORLD_SPRITE::WHIRLING_ROBO
  .BYTE $07 ;Run flag
  .WORD 553 ;HP
  .WORD 83 ;PP
  .DWORD 28866 ;Experience
  .WORD 756 ;Money
  .WORD EVENT_SCRIPT::EVENT_023
  .DWORD MSG_BTL_AP_FUSAGARETA
  .DWORD MSG_BTL_KIZETU_ON_HAKAI
  .BYTE $18 ;Palette
  .BYTE 56 ;Level
  .BYTE MUSIC::VS_SPINNING_ROBO
  .WORD 122 ;Offense
  .WORD 130 ;Defense
  .BYTE 28 ;Speed
  .BYTE 5 ;Guts
  .BYTE 12 ;Luck
  .BYTE $03 ;Weakness to fire
  .BYTE $00 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $03 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::FIRE_BEAM
  .WORD BATTLE_ACTIONS::FIRE_BEAM
  .WORD BATTLE_ACTIONS::DISRUPT_SENSES
  .WORD BATTLE_ACTIONS::PSI_SHIELD_BETA
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $21 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::METEOTITE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $04 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Cop", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0033 ;Battle sprite
  .WORD OVERWORLD_SPRITE::POLICE
  .BYTE $07 ;Run flag
  .WORD 75 ;HP
  .WORD 0 ;PP
  .DWORD 86 ;Experience
  .WORD 18 ;Money
  .WORD EVENT_SCRIPT::EVENT_021
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_WARENI
  .BYTE $02 ;Palette
  .BYTE 7 ;Level
  .BYTE MUSIC::VS_RUNAWAY_DOG
  .WORD 15 ;Offense
  .WORD 18 ;Defense
  .BYTE 5 ;Speed
  .BYTE 7 ;Guts
  .BYTE 16 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::CRUSHING_CHOP
  .WORD BATTLE_ACTIONS::CRUSHING_CHOP
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::BASH
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $01 ;Boss flag
  .BYTE $04 ;Item drop rate
  .BYTE ITEM::HAMBURGER ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $03 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Coil Snake", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0019 ;Battle sprite
  .WORD OVERWORLD_SPRITE::THIRSTY_COIL_SNAKE
  .BYTE $07 ;Run flag
  .WORD 18 ;HP
  .WORD 0 ;PP
  .DWORD 1 ;Experience
  .WORD 4 ;Money
  .WORD EVENT_SCRIPT::EVENT_020
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $01 ;Palette
  .BYTE 1 ;Level
  .BYTE MUSIC::VS_CRANKY_LADY
  .WORD 3 ;Offense
  .WORD 4 ;Defense
  .BYTE 2 ;Speed
  .BYTE 0 ;Guts
  .BYTE 6 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $00 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $00 ;Weakness to paralysis
  .BYTE $00 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::BITING_ATTACK
  .WORD BATTLE_ACTIONS::BITING_ATTACK
  .WORD BATTLE_ACTIONS::BITING_ATTACK
  .WORD BATTLE_ACTIONS::COIL_AROUND
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $02 ;Item drop rate
  .BYTE ITEM::COOKIE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Thirsty Coil Snake", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0019 ;Battle sprite
  .WORD OVERWORLD_SPRITE::THIRSTY_COIL_SNAKE
  .BYTE $07 ;Run flag
  .WORD 270 ;HP
  .WORD 0 ;PP
  .DWORD 2786 ;Experience
  .WORD 276 ;Money
  .WORD EVENT_SCRIPT::EVENT_020
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $19 ;Palette
  .BYTE 28 ;Level
  .BYTE MUSIC::VS_CRANKY_LADY
  .WORD 52 ;Offense
  .WORD 80 ;Defense
  .BYTE 18 ;Speed
  .BYTE 5 ;Guts
  .BYTE 7 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $00 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $00 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::POISONOUS_BITE
  .WORD BATTLE_ACTIONS::BITING_ATTACK
  .WORD BATTLE_ACTIONS::BITING_ATTACK
  .WORD BATTLE_ACTIONS::COIL_AROUND
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $03 ;Item drop rate
  .BYTE ITEM::CHICK ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Mr. Batty", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0013 ;Battle sprite
  .WORD OVERWORLD_SPRITE::MR_BATTY
  .BYTE $07 ;Run flag
  .WORD 86 ;HP
  .WORD 0 ;PP
  .DWORD 304 ;Experience
  .WORD 30 ;Money
  .WORD EVENT_SCRIPT::EVENT_025
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $01 ;Palette
  .BYTE 15 ;Level
  .BYTE MUSIC::VS_CRANKY_LADY
  .WORD 25 ;Offense
  .WORD 5 ;Defense
  .BYTE 29 ;Speed
  .BYTE 4 ;Guts
  .BYTE 3 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $00 ;Weakness to paralysis
  .BYTE $03 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::SIZE_UP_SITUATION
  .WORD BATTLE_ACTIONS::BECOME_FRIENDLY
  .WORD BATTLE_ACTIONS::SIZE_UP_SITUATION
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 1 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $01 ;Item drop rate
  .BYTE ITEM::JAR_OF_HOT_SAUCE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Elder Batty", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0013 ;Battle sprite
  .WORD OVERWORLD_SPRITE::MR_BATTY
  .BYTE $07 ;Run flag
  .WORD 294 ;HP
  .WORD 0 ;PP
  .DWORD 4177 ;Experience
  .WORD 371 ;Money
  .WORD EVENT_SCRIPT::EVENT_025
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $1A ;Palette
  .BYTE 35 ;Level
  .BYTE MUSIC::VS_CRANKY_LADY
  .WORD 66 ;Offense
  .WORD 72 ;Defense
  .BYTE 33 ;Speed
  .BYTE 8 ;Guts
  .BYTE 4 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $00 ;Weakness to paralysis
  .BYTE $03 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::SIZE_UP_SITUATION
  .WORD BATTLE_ACTIONS::BECOME_FRIENDLY
  .WORD BATTLE_ACTIONS::BITE
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $02 ;Item drop rate
  .BYTE ITEM::DOUBLE_BURGER ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $03 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Violent Roach", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::INSECT
  .WORD $0050 ;Battle sprite
  .WORD OVERWORLD_SPRITE::ARACHNID
  .BYTE $07 ;Run flag
  .WORD 209 ;HP
  .WORD 0 ;PP
  .DWORD 1757 ;Experience
  .WORD 80 ;Money
  .WORD EVENT_SCRIPT::EVENT_020
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $05 ;Palette
  .BYTE 18 ;Level
  .BYTE MUSIC::VS_STRUTTIN_EVIL_MUSHROOM
  .WORD 30 ;Offense
  .WORD 26 ;Defense
  .BYTE 35 ;Speed
  .BYTE 9 ;Guts
  .BYTE 24 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $00 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $00 ;Weakness to paralysis
  .BYTE $03 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::KNIT_BROW
  .WORD BATTLE_ACTIONS::VENT_ODOR
  .WORD BATTLE_ACTIONS::LEAP_FORWARD_AND_SPREAD_WINGS
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::SECRET_HERB ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $02 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Filthy Attack Roach", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::INSECT
  .WORD $0050 ;Battle sprite
  .WORD OVERWORLD_SPRITE::ARACHNID
  .BYTE $07 ;Run flag
  .WORD 399 ;HP
  .WORD 0 ;PP
  .DWORD 10543 ;Experience
  .WORD 432 ;Money
  .WORD EVENT_SCRIPT::EVENT_020
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $1D ;Palette
  .BYTE 42 ;Level
  .BYTE MUSIC::VS_STRUTTIN_EVIL_MUSHROOM
  .WORD 84 ;Offense
  .WORD 33 ;Defense
  .BYTE 77 ;Speed
  .BYTE 9 ;Guts
  .BYTE 24 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $00 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $00 ;Weakness to paralysis
  .BYTE $03 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::KNIT_BROW
  .WORD BATTLE_ACTIONS::CONTINUOUS_ATTACK
  .WORD BATTLE_ACTIONS::LEAP_FORWARD_AND_SPREAD_WINGS
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $03 ;Item drop rate
  .BYTE ITEM::SECRET_HERB ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Crazed Sign", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::METAL
  .WORD $001A ;Battle sprite
  .WORD OVERWORLD_SPRITE::CRAZED_SIGN
  .BYTE $07 ;Run flag
  .WORD 295 ;HP
  .WORD 98 ;PP
  .DWORD 3618 ;Experience
  .WORD 244 ;Money
  .WORD EVENT_SCRIPT::EVENT_028
  .DWORD MSG_BTL_AP_FUSAGARETA
  .DWORD MSG_BTL_KIZETU_ON_UGOKANAKU
  .BYTE $01 ;Palette
  .BYTE 34 ;Level
  .BYTE MUSIC::VS_STRUTTIN_EVIL_MUSHROOM
  .WORD 64 ;Offense
  .WORD 96 ;Defense
  .BYTE 17 ;Speed
  .BYTE 5 ;Guts
  .BYTE 11 ;Luck
  .BYTE $02 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $03 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $00 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::PSI_PARALYSIS_ALPHA
  .WORD BATTLE_ACTIONS::PSI_HYPNOSIS_ALPHA
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $2F ;Action 3 argument
  .BYTE $2B ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 1 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $01 ;Item drop rate
  .BYTE ITEM::BIG_BOTTLE_ROCKET ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Wooly Shambler", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::METAL
  .WORD $000D ;Battle sprite
  .WORD OVERWORLD_SPRITE::WHIRLING_ROBO
  .BYTE $07 ;Run flag
  .WORD 391 ;HP
  .WORD 140 ;PP
  .DWORD 5397 ;Experience
  .WORD 458 ;Money
  .WORD EVENT_SCRIPT::EVENT_023
  .DWORD MSG_BTL_AP_ATTESHIMATTA
  .DWORD MSG_BTL_KIZETU_ON_KIESARU
  .BYTE $1B ;Palette
  .BYTE 40 ;Level
  .BYTE MUSIC::VS_SPINNING_ROBO
  .WORD 81 ;Offense
  .WORD 91 ;Defense
  .BYTE 18 ;Speed
  .BYTE 5 ;Guts
  .BYTE 63 ;Luck
  .BYTE $02 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $02 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::FIRE_BEAM
  .WORD BATTLE_ACTIONS::FIRE_BEAM
  .WORD BATTLE_ACTIONS::PSI_PSI_SHIELD_ALPHA
  .WORD BATTLE_ACTIONS::PSI_FLASH_ALPHA
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $23 ;Action 3 argument
  .BYTE $11 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $01 ;Item drop rate
  .BYTE ITEM::MULTI_BOTTLE_ROCKET ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Wild 'n Wooly Shambler", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::METAL
  .WORD $000D ;Battle sprite
  .WORD OVERWORLD_SPRITE::WHIRLING_ROBO
  .BYTE $07 ;Run flag
  .WORD 722 ;HP
  .WORD 212 ;PP
  .DWORD 33818 ;Experience
  .WORD 906 ;Money
  .WORD EVENT_SCRIPT::EVENT_023
  .DWORD MSG_BTL_AP_ATTESHIMATTA
  .DWORD MSG_BTL_KIZETU_ON_KIESARU
  .BYTE $09 ;Palette
  .BYTE 65 ;Level
  .BYTE MUSIC::VS_SPINNING_ROBO
  .WORD 144 ;Offense
  .WORD 171 ;Defense
  .BYTE 38 ;Speed
  .BYTE 5 ;Guts
  .BYTE 63 ;Luck
  .BYTE $02 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $02 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::FIRE_BEAM
  .WORD BATTLE_ACTIONS::FIRE_BEAM
  .WORD BATTLE_ACTIONS::PSI_PSI_SHIELD_BETA
  .WORD BATTLE_ACTIONS::PSI_FLASH_BETA
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $25 ;Action 3 argument
  .BYTE $12 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $03 ;Item drop rate
  .BYTE ITEM::MULTI_BOTTLE_ROCKET ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Skate Punk", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0064 ;Battle sprite
  .WORD OVERWORLD_SPRITE::SKATE_PUNK
  .BYTE $07 ;Run flag
  .WORD 31 ;HP
  .WORD 0 ;PP
  .DWORD 12 ;Experience
  .WORD 17 ;Money
  .WORD EVENT_SCRIPT::EVENT_021
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_WARENI
  .BYTE $07 ;Palette
  .BYTE 3 ;Level
  .BYTE MUSIC::VS_STRUTTIN_EVIL_MUSHROOM
  .WORD 7 ;Offense
  .WORD 8 ;Defense
  .BYTE 5 ;Speed
  .BYTE 0 ;Guts
  .BYTE 13 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $02 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::SHRED_ON_SKATEBOARD
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::CALL_FOR_HELP
  .WORD BATTLE_ACTIONS::CALL_FOR_HELP
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE ENEMY::YES_MAN_JUNIOR ;Action 3 argument
  .BYTE ENEMY::POGO_PUNK ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::PIZZA ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $02 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Skelpion", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::INSECT
  .WORD $005C ;Battle sprite
  .WORD OVERWORLD_SPRITE::SKELPION
  .BYTE $07 ;Run flag
  .WORD 137 ;HP
  .WORD 21 ;PP
  .DWORD 1823 ;Experience
  .WORD 140 ;Money
  .WORD EVENT_SCRIPT::EVENT_020
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $0E ;Palette
  .BYTE 24 ;Level
  .BYTE MUSIC::VS_CAVE_BOY
  .WORD 41 ;Offense
  .WORD 23 ;Defense
  .BYTE 37 ;Speed
  .BYTE 80 ;Guts
  .BYTE 7 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $00 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $00 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::POISON_STING
  .WORD BATTLE_ACTIONS::EDGE_CLOSER
  .WORD BATTLE_ACTIONS::PSI_THUNDER_ALPHA
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $0D ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 1 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $02 ;Item drop rate
  .BYTE ITEM::VIAL_OF_SERUM ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Dread Skelpion", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::INSECT
  .WORD $005C ;Battle sprite
  .WORD OVERWORLD_SPRITE::SKELPION
  .BYTE $07 ;Run flag
  .WORD 214 ;HP
  .WORD 125 ;PP
  .DWORD 9908 ;Experience
  .WORD 609 ;Money
  .WORD EVENT_SCRIPT::EVENT_020
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $0B ;Palette
  .BYTE 41 ;Level
  .BYTE MUSIC::VS_CAVE_BOY
  .WORD 82 ;Offense
  .WORD 57 ;Defense
  .BYTE 40 ;Speed
  .BYTE 88 ;Guts
  .BYTE 8 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $00 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $00 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::POISON_STING
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::PSI_THUNDER_ALPHA
  .WORD BATTLE_ACTIONS::PSI_THUNDER_BETA
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $0D ;Action 3 argument
  .BYTE $0E ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $04 ;Item drop rate
  .BYTE ITEM::KETCHUP_PACKET ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Starman", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0037 ;Battle sprite
  .WORD OVERWORLD_SPRITE::STARMAN
  .BYTE $07 ;Run flag
  .WORD 545 ;HP
  .WORD 155 ;PP
  .DWORD 23396 ;Experience
  .WORD 720 ;Money
  .WORD EVENT_SCRIPT::EVENT_026
  .DWORD MSG_BTL_AP_FUSAGARETA
  .DWORD MSG_BTL_KIZETU_ON_M
  .BYTE $02 ;Palette
  .BYTE 55 ;Level
  .BYTE MUSIC::VS_SPINNING_ROBO
  .WORD 103 ;Offense
  .WORD 126 ;Defense
  .BYTE 24 ;Speed
  .BYTE 25 ;Guts
  .BYTE 16 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $02 ;Weakness to flash
  .BYTE $02 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::FIRE_BEAM
  .WORD BATTLE_ACTIONS::ON_GUARD
  .WORD BATTLE_ACTIONS::PSI_MAGNET_ALPHA
  .WORD BATTLE_ACTIONS::ENEMY_EXTENDER
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $2D ;Action 3 argument
  .BYTE ENEMY::STARMAN_2 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::BRAIN_FOOD_LUNCH ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $02 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Starman Super", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0037 ;Battle sprite
  .WORD OVERWORLD_SPRITE::STARMAN
  .BYTE $07 ;Run flag
  .WORD 568 ;HP
  .WORD 310 ;PP
  .DWORD 30145 ;Experience
  .WORD 735 ;Money
  .WORD EVENT_SCRIPT::EVENT_026
  .DWORD MSG_BTL_AP_FUSAGARETA
  .DWORD MSG_BTL_KIZETU_ON_M
  .BYTE $1A ;Palette
  .BYTE 56 ;Level
  .BYTE MUSIC::VS_SPINNING_ROBO
  .WORD 112 ;Offense
  .WORD 129 ;Defense
  .BYTE 24 ;Speed
  .BYTE 25 ;Guts
  .BYTE 16 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $02 ;Weakness to flash
  .BYTE $02 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::FIRE_BEAM
  .WORD BATTLE_ACTIONS::CALL_FOR_HELP
  .WORD BATTLE_ACTIONS::ON_GUARD
  .WORD BATTLE_ACTIONS::ENEMY_EXTENDER
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE ENEMY::STARMAN_1 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE ENEMY::STARMAN_SUPER_2 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::SWORD_OF_KINGS ;Item dropped
  .BYTE INITIAL_STATUS::PSI_SHIELD_POWER
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $02 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Ghost of Starman", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0037 ;Battle sprite
  .WORD OVERWORLD_SPRITE::WHIRLING_ROBO
  .BYTE $07 ;Run flag
  .WORD 750 ;HP
  .WORD 462 ;PP
  .DWORD 48695 ;Experience
  .WORD 807 ;Money
  .WORD EVENT_SCRIPT::EVENT_023
  .DWORD MSG_BTL_AP_FUSAGARETA
  .DWORD MSG_BTL_KIZETU_ON_M
  .BYTE $0C ;Palette
  .BYTE 68 ;Level
  .BYTE MUSIC::VS_SPINNING_ROBO
  .WORD 152 ;Offense
  .WORD 170 ;Defense
  .BYTE 46 ;Speed
  .BYTE 43 ;Guts
  .BYTE 16 ;Luck
  .BYTE $02 ;Weakness to fire
  .BYTE $02 ;Weakness to ice
  .BYTE $02 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $02 ;Action order
  .WORD BATTLE_ACTIONS::PSI_STARSTORM_ALPHA
  .WORD BATTLE_ACTIONS::FLASH_SMILE
  .WORD BATTLE_ACTIONS::WHISPER_3
  .WORD BATTLE_ACTIONS::ENEMY_EXTENDER
  .WORD NULL ;Final action
  .BYTE $15 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE ENEMY::GHOST_OF_STARMAN_2 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::GODDESS_RIBBON ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $02 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Smilin' Sphere", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::METAL
  .WORD $0004 ;Battle sprite
  .WORD OVERWORLD_SPRITE::SMILIN_SPHERE
  .BYTE $07 ;Run flag
  .WORD 233 ;HP
  .WORD 60 ;PP
  .DWORD 2218 ;Experience
  .WORD 191 ;Money
  .WORD EVENT_SCRIPT::EVENT_023
  .DWORD MSG_BTL_AP_ATTESHIMATTA
  .DWORD MSG_BTL_KIZETU_ON_PONKOTSU
  .BYTE $09 ;Palette
  .BYTE 27 ;Level
  .BYTE MUSIC::VS_KRAKEN
  .WORD 50 ;Offense
  .WORD 65 ;Defense
  .BYTE 17 ;Speed
  .BYTE 5 ;Guts
  .BYTE 13 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $03 ;Weakness to ice
  .BYTE $03 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $00 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::PSI_FIRE_ALPHA
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::LAUGH_MANIACALLY
  .WORD BATTLE_ACTIONS::EXPLODE ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $05 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::METEORNIUM ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $02 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Uncontrollable Sphere", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::METAL
  .WORD $0004 ;Battle sprite
  .WORD OVERWORLD_SPRITE::SMILIN_SPHERE
  .BYTE $07 ;Run flag
  .WORD 577 ;HP
  .WORD 180 ;PP
  .DWORD 20389 ;Experience
  .WORD 796 ;Money
  .WORD EVENT_SCRIPT::EVENT_023
  .DWORD MSG_BTL_AP_ATTESHIMATTA
  .DWORD MSG_BTL_KIZETU_ON_PONKOTSU
  .BYTE $11 ;Palette
  .BYTE 56 ;Level
  .BYTE MUSIC::VS_KRAKEN
  .WORD 116 ;Offense
  .WORD 134 ;Defense
  .BYTE 27 ;Speed
  .BYTE 5 ;Guts
  .BYTE 15 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $03 ;Weakness to ice
  .BYTE $03 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $00 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::PSI_FIRE_ALPHA
  .WORD BATTLE_ACTIONS::PSI_FIRE_BETA
  .WORD BATTLE_ACTIONS::LAUGH_MANIACALLY
  .WORD BATTLE_ACTIONS::EXPLODE ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $05 ;Action 2 argument
  .BYTE $06 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::BROKEN_ANTENNA ;Item dropped
  .BYTE INITIAL_STATUS::PSI_SHIELD
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Petrified Royal Guard", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0057 ;Battle sprite
  .WORD OVERWORLD_SPRITE::PETRIFIED_ROYAL_GUARD
  .BYTE $07 ;Run flag
  .WORD 573 ;HP
  .WORD 0 ;PP
  .DWORD 19163 ;Experience
  .WORD 628 ;Money
  .WORD EVENT_SCRIPT::EVENT_028
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_UGOKANAKU
  .BYTE $05 ;Palette
  .BYTE 53 ;Level
  .BYTE MUSIC::VS_CAVE_BOY
  .WORD 106 ;Offense
  .WORD 173 ;Defense
  .BYTE 12 ;Speed
  .BYTE 5 ;Guts
  .BYTE 5 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $02 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $00 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $02 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::COME_OUT_SWINGING
  .WORD BATTLE_ACTIONS::COME_OUT_SWINGING
  .WORD BATTLE_ACTIONS::CHARGE
  .WORD BATTLE_ACTIONS::WAR_CRY
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $02 ;Item drop rate
  .BYTE ITEM::SUDDEN_GUTS_PILL ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $00 ;The Flag
  PADDEDEBTEXT "Guardian General", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0057 ;Battle sprite
  .WORD OVERWORLD_SPRITE::PETRIFIED_ROYAL_GUARD
  .BYTE $07 ;Run flag
  .WORD 831 ;HP
  .WORD 6 ;PP
  .DWORD 95390 ;Experience
  .WORD 3235 ;Money
  .WORD EVENT_SCRIPT::EVENT_028
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_UGOKANAKU
  .BYTE $13 ;Palette
  .BYTE 55 ;Level
  .BYTE MUSIC::VS_YOUR_SANCTUARY_BOSS
  .WORD 109 ;Offense
  .WORD 214 ;Defense
  .BYTE 21 ;Speed
  .BYTE 1 ;Guts
  .BYTE 7 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $02 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $02 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $00 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::COME_OUT_SWINGING
  .WORD BATTLE_ACTIONS::SPIN_SOMETHING
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::ENEMY_EXTENDER
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE ENEMY::GUARDIAN_GENERAL_2 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $01 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $01 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Starman Deluxe", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $006A ;Battle sprite
  .WORD OVERWORLD_SPRITE::WHIRLING_ROBO
  .BYTE $07 ;Run flag
  .WORD 1400 ;HP
  .WORD 418 ;PP
  .DWORD 160524 ;Experience
  .WORD 3827 ;Money
  .WORD EVENT_SCRIPT::EVENT_023
  .DWORD MSG_BTL_AP_FUSAGARETA
  .DWORD MSG_BTL_KIZETU_ON_M
  .BYTE $02 ;Palette
  .BYTE 65 ;Level
  .BYTE MUSIC::VS_SPINNING_ROBO
  .WORD 143 ;Offense
  .WORD 186 ;Defense
  .BYTE 27 ;Speed
  .BYTE 43 ;Guts
  .BYTE 21 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $02 ;Weakness to ice
  .BYTE $03 ;Weakness to flash
  .BYTE $02 ;Weakness to paralysis
  .BYTE $02 ;Weakness to hypnosis/brainshock
  .BYTE $00 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::ENEMY_EXTENDER
  .WORD BATTLE_ACTIONS::FIRE_BEAM
  .WORD BATTLE_ACTIONS::PSI_STARSTORM_ALPHA
  .WORD BATTLE_ACTIONS::CALL_FOR_HELP
  .WORD NULL ;Final action
  .BYTE ENEMY::STARMAN_DELUXE_2 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $15 ;Action 3 argument
  .BYTE ENEMY::STARMAN_SUPER_1 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $01 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::PSI_SHIELD_POWER
  .BYTE $01 ;Death style
  .BYTE $01 ;Row
  .BYTE $02 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Final Starman", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $006A ;Battle sprite
  .WORD OVERWORLD_SPRITE::WHIRLING_ROBO
  .BYTE $07 ;Run flag
  .WORD 840 ;HP
  .WORD 860 ;PP
  .DWORD 61929 ;Experience
  .WORD 915 ;Money
  .WORD EVENT_SCRIPT::EVENT_023
  .DWORD MSG_BTL_AP_FUSAGARETA
  .DWORD MSG_BTL_KIZETU_ON_M
  .BYTE $10 ;Palette
  .BYTE 71 ;Level
  .BYTE MUSIC::VS_SPINNING_ROBO
  .WORD 178 ;Offense
  .WORD 187 ;Defense
  .BYTE 47 ;Speed
  .BYTE 25 ;Guts
  .BYTE 24 ;Luck
  .BYTE $02 ;Weakness to fire
  .BYTE $02 ;Weakness to ice
  .BYTE $02 ;Weakness to flash
  .BYTE $02 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $03 ;Action order
  .WORD BATTLE_ACTIONS::PSI_SHIELD_BETA
  .WORD BATTLE_ACTIONS::PSI_BRAINSHOCK_OMEGA
  .WORD BATTLE_ACTIONS::PSI_STARSTORM_ALPHA
  .WORD BATTLE_ACTIONS::ENEMY_EXTENDER
  .WORD NULL ;Final action
  .BYTE $21 ;Action 1 argument
  .BYTE $32 ;Action 2 argument
  .BYTE $15 ;Action 3 argument
  .BYTE ENEMY::FINAL_STARMAN_2 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $02 ;Item drop rate
  .BYTE ITEM::PSI_CARAMEL ;Item dropped
  .BYTE INITIAL_STATUS::PSI_SHIELD_POWER
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Urban Zombie", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0048 ;Battle sprite
  .WORD OVERWORLD_SPRITE::URBAN_ZOMBIE
  .BYTE $07 ;Run flag
  .WORD 171 ;HP
  .WORD 0 ;PP
  .DWORD 700 ;Experience
  .WORD 58 ;Money
  .WORD EVENT_SCRIPT::EVENT_021
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_TSUCHINI
  .BYTE $04 ;Palette
  .BYTE 19 ;Level
  .BYTE MUSIC::VS_CRANKY_LADY
  .WORD 31 ;Offense
  .WORD 24 ;Defense
  .BYTE 10 ;Speed
  .BYTE 15 ;Guts
  .BYTE 24 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $03 ;Weakness to ice
  .BYTE $00 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::LAUGH_HYSTERICALLY
  .WORD BATTLE_ACTIONS::COLD_BREATH
  .WORD BATTLE_ACTIONS::SOMETHING_MYSTERIOUS
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $02 ;Item drop rate
  .BYTE ITEM::HAMBURGER ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $02 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Zombie Possessor", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0032 ;Battle sprite
  .WORD OVERWORLD_SPRITE::ZOMBIE_POSSESSOR
  .BYTE $07 ;Run flag
  .WORD 176 ;HP
  .WORD 0 ;PP
  .DWORD 950 ;Experience
  .WORD 81 ;Money
  .WORD EVENT_SCRIPT::EVENT_027
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_KAKIKIERU
  .BYTE $02 ;Palette
  .BYTE 17 ;Level
  .BYTE MUSIC::VS_CAVE_BOY
  .WORD 28 ;Offense
  .WORD 19 ;Defense
  .BYTE 30 ;Speed
  .BYTE 9 ;Guts
  .BYTE 6 ;Luck
  .BYTE $03 ;Weakness to fire
  .BYTE $00 ;Weakness to ice
  .BYTE $00 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $03 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::REACH_WITH_ICY_HAND
  .WORD BATTLE_ACTIONS::CALL_FOR_HELP
  .WORD BATTLE_ACTIONS::POSSESS
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE ENEMY::ZOMBIE_POSSESSOR ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $01 ;Item drop rate
  .BYTE ITEM::SECRET_HERB ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $02 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Zombie Dog", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0042 ;Battle sprite
  .WORD OVERWORLD_SPRITE::ZOMBIE_DOG
  .BYTE $07 ;Run flag
  .WORD 210 ;HP
  .WORD 0 ;PP
  .DWORD 1354 ;Experience
  .WORD 54 ;Money
  .WORD EVENT_SCRIPT::EVENT_022
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_TSUCHINI
  .BYTE $04 ;Palette
  .BYTE 22 ;Level
  .BYTE MUSIC::VS_CRANKY_LADY
  .WORD 39 ;Offense
  .WORD 51 ;Defense
  .BYTE 30 ;Speed
  .BYTE 10 ;Guts
  .BYTE 11 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $00 ;Weakness to ice
  .BYTE $00 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $00 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::BITING_ATTACK
  .WORD BATTLE_ACTIONS::HOWL
  .WORD BATTLE_ACTIONS::BITING_ATTACK
  .WORD BATTLE_ACTIONS::POISONOUS_BITE
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $02 ;Item drop rate
  .BYTE ITEM::BOTTLE_ROCKET ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Crooked Cop", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0045 ;Battle sprite
  .WORD OVERWORLD_SPRITE::CROOKED_COP
  .BYTE $07 ;Run flag
  .WORD 140 ;HP
  .WORD 0 ;PP
  .DWORD 492 ;Experience
  .WORD 159 ;Money
  .WORD EVENT_SCRIPT::EVENT_021
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_M
  .BYTE $08 ;Palette
  .BYTE 13 ;Level
  .BYTE MUSIC::VS_CAVE_BOY
  .WORD 20 ;Offense
  .WORD 24 ;Defense
  .BYTE 15 ;Speed
  .BYTE 8 ;Guts
  .BYTE 18 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $02 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::SUBMISSION_HOLD
  .WORD BATTLE_ACTIONS::COME_OUT_SWINGING
  .WORD BATTLE_ACTIONS::ON_GUARD
  .WORD BATTLE_ACTIONS::LOSE_TEMPER
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $01 ;Boss flag
  .BYTE $02 ;Item drop rate
  .BYTE ITEM::BOILED_EGG ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $03 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Over Zealous Cop", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0045 ;Battle sprite
  .WORD OVERWORLD_SPRITE::CROOKED_COP
  .BYTE $07 ;Run flag
  .WORD 325 ;HP
  .WORD 0 ;PP
  .DWORD 7448 ;Experience
  .WORD 420 ;Money
  .WORD EVENT_SCRIPT::EVENT_021
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_WARENI
  .BYTE $0A ;Palette
  .BYTE 36 ;Level
  .BYTE MUSIC::VS_CAVE_BOY
  .WORD 69 ;Offense
  .WORD 75 ;Defense
  .BYTE 18 ;Speed
  .BYTE 7 ;Guts
  .BYTE 16 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $02 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::SUBMISSION_HOLD
  .WORD BATTLE_ACTIONS::COME_OUT_SWINGING
  .WORD BATTLE_ACTIONS::ON_GUARD
  .WORD BATTLE_ACTIONS::LOSE_TEMPER
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $02 ;Item drop rate
  .BYTE ITEM::DOUBLE_BURGER ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Territorial Oak", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $005F ;Battle sprite
  .WORD OVERWORLD_SPRITE::TERRITORIAL_OAK
  .BYTE $06 ;Run flag
  .WORD 145 ;HP
  .WORD 41 ;PP
  .DWORD 356 ;Experience
  .WORD 29 ;Money
  .WORD EVENT_SCRIPT::EVENT_029
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_UGOKANAKU
  .BYTE $06 ;Palette
  .BYTE 15 ;Level
  .BYTE MUSIC::VS_CRANKY_LADY
  .WORD 26 ;Offense
  .WORD 30 ;Defense
  .BYTE 5 ;Speed
  .BYTE 9 ;Guts
  .BYTE 4 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $02 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $02 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::PSI_BRAINSHOCK_ALPHA
  .WORD BATTLE_ACTIONS::VACUUM_ATTACK
  .WORD BATTLE_ACTIONS::BURST_INTO_FLAMES ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $31 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::PSI_CARAMEL ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Hostile Elder Oak", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $005F ;Battle sprite
  .WORD OVERWORLD_SPRITE::TERRITORIAL_OAK
  .BYTE $07 ;Run flag
  .WORD 609 ;HP
  .WORD 76 ;PP
  .DWORD 17567 ;Experience
  .WORD 690 ;Money
  .WORD EVENT_SCRIPT::EVENT_029
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_UGOKANAKU
  .BYTE $0E ;Palette
  .BYTE 59 ;Level
  .BYTE MUSIC::VS_CAVE_BOY
  .WORD 134 ;Offense
  .WORD 146 ;Defense
  .BYTE 14 ;Speed
  .BYTE 11 ;Guts
  .BYTE 5 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $02 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $02 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::PSI_BRAINSHOCK_ALPHA
  .WORD BATTLE_ACTIONS::PSI_MAGNET_ALPHA
  .WORD BATTLE_ACTIONS::BURST_INTO_FLAMES ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $31 ;Action 3 argument
  .BYTE $2D ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $04 ;Item drop rate
  .BYTE ITEM::VIPER ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $03 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $00 ;The Flag
  PADDEDEBTEXT "Diamond Dog", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $004C ;Battle sprite
  .WORD OVERWORLD_SPRITE::YOUR_SANCTUARY_POINT_BOSS
  .BYTE $07 ;Run flag
  .WORD 3344 ;HP
  .WORD 154 ;PP
  .DWORD 337738 ;Experience
  .WORD 6968 ;Money
  .WORD EVENT_SCRIPT::EVENT_023
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $04 ;Palette
  .BYTE 70 ;Level
  .BYTE MUSIC::VS_SPINNING_ROBO
  .WORD 167 ;Offense
  .WORD 230 ;Defense
  .BYTE 31 ;Speed
  .BYTE 10 ;Guts
  .BYTE 47 ;Luck
  .BYTE $02 ;Weakness to fire
  .BYTE $02 ;Weakness to ice
  .BYTE $03 ;Weakness to flash
  .BYTE $03 ;Weakness to paralysis
  .BYTE $02 ;Weakness to hypnosis/brainshock
  .BYTE $00 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::BITING_ATTACK
  .WORD BATTLE_ACTIONS::ENEMY_EXTENDER
  .WORD BATTLE_ACTIONS::PSI_SHIELD_BETA
  .WORD BATTLE_ACTIONS::GLORIOUS_LIGHT
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE ENEMY::DIAMOND_DOG_2 ;Action 2 argument
  .BYTE $21 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $01 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::SHIELD_POWER
  .BYTE $01 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Marauder Octobot", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::METAL
  .WORD $0007 ;Battle sprite
  .WORD OVERWORLD_SPRITE::WHIRLING_ROBO
  .BYTE $07 ;Run flag
  .WORD 482 ;HP
  .WORD 0 ;PP
  .DWORD 14475 ;Experience
  .WORD 499 ;Money
  .WORD EVENT_SCRIPT::EVENT_023
  .DWORD MSG_BTL_AP_FUSAGARETA
  .DWORD MSG_BTL_KIZETU_ON_PONKOTSU
  .BYTE $02 ;Palette
  .BYTE 49 ;Level
  .BYTE MUSIC::VS_SPINNING_ROBO
  .WORD 99 ;Offense
  .WORD 121 ;Defense
  .BYTE 23 ;Speed
  .BYTE 8 ;Guts
  .BYTE 24 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $02 ;Weakness to ice
  .BYTE $03 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $02 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::FIRE_BEAM
  .WORD BATTLE_ACTIONS::FIRE_BEAM
  .WORD BATTLE_ACTIONS::STEAL
  .WORD BATTLE_ACTIONS::COIL_AROUND
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $01 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Military Octobot", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::METAL
  .WORD $0007 ;Battle sprite
  .WORD OVERWORLD_SPRITE::WHIRLING_ROBO
  .BYTE $07 ;Run flag
  .WORD 604 ;HP
  .WORD 0 ;PP
  .DWORD 25607 ;Experience
  .WORD 637 ;Money
  .WORD EVENT_SCRIPT::EVENT_023
  .DWORD MSG_BTL_AP_FUSAGARETA
  .DWORD MSG_BTL_KIZETU_ON_PONKOTSU
  .BYTE $15 ;Palette
  .BYTE 61 ;Level
  .BYTE MUSIC::VS_SPINNING_ROBO
  .WORD 138 ;Offense
  .WORD 147 ;Defense
  .BYTE 26 ;Speed
  .BYTE 8 ;Guts
  .BYTE 18 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $02 ;Weakness to ice
  .BYTE $03 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $02 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::FIRE_BEAM
  .WORD BATTLE_ACTIONS::FIRE_BEAM
  .WORD BATTLE_ACTIONS::STEAL
  .WORD BATTLE_ACTIONS::COIL_AROUND
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::METEOTITE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Mechanical Octobot", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::METAL
  .WORD $0007 ;Battle sprite
  .WORD OVERWORLD_SPRITE::WHIRLING_ROBO
  .BYTE $07 ;Run flag
  .WORD 768 ;HP
  .WORD 0 ;PP
  .DWORD 41738 ;Experience
  .WORD 744 ;Money
  .WORD EVENT_SCRIPT::EVENT_023
  .DWORD MSG_BTL_AP_FUSAGARETA
  .DWORD MSG_BTL_KIZETU_ON_PONKOTSU
  .BYTE $0A ;Palette
  .BYTE 66 ;Level
  .BYTE MUSIC::VS_SPINNING_ROBO
  .WORD 147 ;Offense
  .WORD 176 ;Defense
  .BYTE 43 ;Speed
  .BYTE 8 ;Guts
  .BYTE 24 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $02 ;Weakness to ice
  .BYTE $03 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $02 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::FIRE_BEAM
  .WORD BATTLE_ACTIONS::FIRE_BEAM
  .WORD BATTLE_ACTIONS::STEAL
  .WORD BATTLE_ACTIONS::ELECTRIC_FIELD
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::METEOTITE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $02 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Ultimate Octobot", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::METAL
  .WORD $0007 ;Battle sprite
  .WORD OVERWORLD_SPRITE::WHIRLING_ROBO
  .BYTE $07 ;Run flag
  .WORD 792 ;HP
  .WORD 0 ;PP
  .DWORD 47876 ;Experience
  .WORD 815 ;Money
  .WORD EVENT_SCRIPT::EVENT_023
  .DWORD MSG_BTL_AP_FUSAGARETA
  .DWORD MSG_BTL_KIZETU_ON_PONKOTSU
  .BYTE $03 ;Palette
  .BYTE 70 ;Level
  .BYTE MUSIC::VS_SPINNING_ROBO
  .WORD 163 ;Offense
  .WORD 181 ;Defense
  .BYTE 44 ;Speed
  .BYTE 8 ;Guts
  .BYTE 24 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $02 ;Weakness to ice
  .BYTE $03 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $02 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::FIRE_BEAM
  .WORD BATTLE_ACTIONS::ELECTRIC_FIELD
  .WORD BATTLE_ACTIONS::STEAL
  .WORD BATTLE_ACTIONS::ELECTRIC_FIELD
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $04 ;Item drop rate
  .BYTE ITEM::PSI_CARAMEL ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $02 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Mad Duck", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0012 ;Battle sprite
  .WORD OVERWORLD_SPRITE::MAD_DUCK
  .BYTE $07 ;Run flag
  .WORD 51 ;HP
  .WORD 0 ;PP
  .DWORD 41 ;Experience
  .WORD 12 ;Money
  .WORD EVENT_SCRIPT::EVENT_021
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $01 ;Palette
  .BYTE 8 ;Level
  .BYTE MUSIC::VS_RUNAWAY_DOG
  .WORD 12 ;Offense
  .WORD 24 ;Defense
  .BYTE 30 ;Speed
  .BYTE 5 ;Guts
  .BYTE 1 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $00 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $02 ;Weakness to hypnosis/brainshock
  .BYTE $05 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::DISRUPT_SENSES
  .WORD BATTLE_ACTIONS::FALL_DOWN
  .WORD BATTLE_ACTIONS::SPIN_SOMETHING
  .WORD BATTLE_ACTIONS::PECK
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 0 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $03 ;Item drop rate
  .BYTE ITEM::FRESH_EGG ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $04 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Dali's Clock", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::NORMAL
  .WORD $005D ;Battle sprite
  .WORD OVERWORLD_SPRITE::DALIS_CLOCK
  .BYTE $07 ;Run flag
  .WORD 296 ;HP
  .WORD 0 ;PP
  .DWORD 2503 ;Experience
  .WORD 314 ;Money
  .WORD EVENT_SCRIPT::EVENT_027
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_M
  .BYTE $06 ;Palette
  .BYTE 34 ;Level
  .BYTE MUSIC::VS_STRUTTIN_EVIL_MUSHROOM
  .WORD 65 ;Offense
  .WORD 66 ;Defense
  .BYTE 4 ;Speed
  .BYTE 5 ;Guts
  .BYTE 4 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $03 ;Weakness to paralysis
  .BYTE $00 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::FREEZE_IN_TIME
  .WORD BATTLE_ACTIONS::FREEZE_IN_TIME
  .WORD BATTLE_ACTIONS::FREEZE_IN_TIME
  .WORD BATTLE_ACTIONS::TICK_TOCK
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 1 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::PSI_CARAMEL ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $00 ;The Flag
  PADDEDEBTEXT "Trillionage Sprout", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0058 ;Battle sprite
  .WORD OVERWORLD_SPRITE::YOUR_SANCTUARY_POINT_BOSS
  .BYTE $07 ;Run flag
  .WORD 1048 ;HP
  .WORD 240 ;PP
  .DWORD 30303 ;Experience
  .WORD 1358 ;Money
  .WORD EVENT_SCRIPT::EVENT_023
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $05 ;Palette
  .BYTE 29 ;Level
  .BYTE MUSIC::VS_YOUR_SANCTUARY_BOSS
  .WORD 54 ;Offense
  .WORD 88 ;Defense
  .BYTE 16 ;Speed
  .BYTE 21 ;Guts
  .BYTE 71 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $02 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $03 ;Weakness to paralysis
  .BYTE $02 ;Weakness to hypnosis/brainshock
  .BYTE $00 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::ENEMY_EXTENDER
  .WORD BATTLE_ACTIONS::PSI_FLASH_ALPHA
  .WORD BATTLE_ACTIONS::PSI_PARALYSIS_ALPHA
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE ENEMY::TRILLIONAGE_SPROUT_2 ;Action 2 argument
  .BYTE $11 ;Action 3 argument
  .BYTE $2F ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $01 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $01 ;Death style
  .BYTE $00 ;Row
  .BYTE $03 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Musica", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0008 ;Battle sprite
  .WORD OVERWORLD_SPRITE::GIFT_BOX
  .BYTE $07 ;Run flag
  .WORD 292 ;HP
  .WORD 0 ;PP
  .DWORD 3748 ;Experience
  .WORD 341 ;Money
  .WORD EVENT_SCRIPT::EVENT_031
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_UGOKANAKU
  .BYTE $09 ;Palette
  .BYTE 35 ;Level
  .BYTE MUSIC::VS_STRUTTIN_EVIL_MUSHROOM
  .WORD 69 ;Offense
  .WORD 85 ;Defense
  .BYTE 21 ;Speed
  .BYTE 20 ;Guts
  .BYTE 8 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $02 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::ELECTRIC_SHOCK
  .WORD BATTLE_ACTIONS::HAUNTING_MELODY
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::ELECTRIC_SHOCK
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 1 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::SUDDEN_GUTS_PILL ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Desert Wolf", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0067 ;Battle sprite
  .WORD OVERWORLD_SPRITE::RUNAWAY_DOG
  .BYTE $07 ;Run flag
  .WORD 247 ;HP
  .WORD 0 ;PP
  .DWORD 3740 ;Experience
  .WORD 114 ;Money
  .WORD EVENT_SCRIPT::EVENT_022
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $07 ;Palette
  .BYTE 30 ;Level
  .BYTE MUSIC::VS_CRANKY_LADY
  .WORD 57 ;Offense
  .WORD 67 ;Defense
  .BYTE 33 ;Speed
  .BYTE 2 ;Guts
  .BYTE 11 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $00 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::BITING_ATTACK
  .WORD BATTLE_ACTIONS::HOWL
  .WORD BATTLE_ACTIONS::BITING_ATTACK
  .WORD BATTLE_ACTIONS::POISONOUS_BITE
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $01 ;Item drop rate
  .BYTE ITEM::SUDDEN_GUTS_PILL ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $00 ;The Flag
  PADDEDEBTEXT "Master Belch", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0062 ;Battle sprite
  .WORD OVERWORLD_SPRITE::MASTER_BELCH
  .BYTE $07 ;Run flag
  .WORD 650 ;HP
  .WORD 0 ;PP
  .DWORD 12509 ;Experience
  .WORD 664 ;Money
  .WORD EVENT_SCRIPT::EVENT_029
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_M
  .BYTE $06 ;Palette
  .BYTE 27 ;Level
  .BYTE MUSIC::VS_MASTER_BELCH
  .WORD 50 ;Offense
  .WORD 88 ;Defense
  .BYTE 16 ;Speed
  .BYTE 20 ;Guts
  .BYTE 61 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $02 ;Weakness to paralysis
  .BYTE $00 ;Weakness to hypnosis/brainshock
  .BYTE $00 ;Miss rate
  .BYTE $02 ;Action order
  .WORD BATTLE_ACTIONS::NAUSEATING_BURP
  .WORD BATTLE_ACTIONS::NAUSEATING_BURP
  .WORD BATTLE_ACTIONS::CALL_FOR_HELP
  .WORD BATTLE_ACTIONS::ENEMY_EXTENDER
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE ENEMY::SLIMY_LIL_PILE ;Action 3 argument
  .BYTE ENEMY::MASTER_BELCH_3 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $01 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $01 ;Death style
  .BYTE $00 ;Row
  .BYTE $03 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Big Pile of Puke", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0062 ;Battle sprite
  .WORD OVERWORLD_SPRITE::MASTER_BELCH
  .BYTE $07 ;Run flag
  .WORD 631 ;HP
  .WORD 0 ;PP
  .DWORD 19659 ;Experience
  .WORD 728 ;Money
  .WORD EVENT_SCRIPT::EVENT_029
  .DWORD MSG_BTL_AP_FUSAGARETA
  .DWORD MSG_BTL_KIZETU_ON_M
  .BYTE $05 ;Palette
  .BYTE 57 ;Level
  .BYTE MUSIC::VS_MASTER_BELCH
  .WORD 120 ;Offense
  .WORD 158 ;Defense
  .BYTE 16 ;Speed
  .BYTE 26 ;Guts
  .BYTE 32 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $02 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $02 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::STINKY_BREATH
  .WORD BATTLE_ACTIONS::STICKY_MUCUS
  .WORD BATTLE_ACTIONS::NAUSEATING_BURP
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $01 ;Item drop rate
  .BYTE ITEM::METEOTITE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $00 ;The Flag
  PADDEDEBTEXT "Master Barf", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0062 ;Battle sprite
  .WORD OVERWORLD_SPRITE::MASTER_BELCH
  .BYTE $07 ;Run flag
  .WORD 1319 ;HP
  .WORD 0 ;PP
  .DWORD 125056 ;Experience
  .WORD 3536 ;Money
  .WORD EVENT_SCRIPT::EVENT_029
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_M
  .BYTE $13 ;Palette
  .BYTE 60 ;Level
  .BYTE MUSIC::VS_MASTER_BELCH
  .WORD 136 ;Offense
  .WORD 177 ;Defense
  .BYTE 24 ;Speed
  .BYTE 39 ;Guts
  .BYTE 64 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $02 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $02 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $00 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::NAUSEATING_BURP
  .WORD BATTLE_ACTIONS::CONTINUOUS_ATTACK
  .WORD BATTLE_ACTIONS::STINKY_BREATH
  .WORD BATTLE_ACTIONS::ENEMY_EXTENDER
  .WORD BATTLE_ACTIONS::MASTER_BARF_DEFEAT ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE ENEMY::MASTER_BARF_2 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $01 ;Boss flag
  .BYTE $07 ;Item drop rate
  .BYTE ITEM::CASEY_BAT ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $01 ;Death style
  .BYTE $00 ;Row
  .BYTE $03 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Kiss of Death", 25
  .BYTE GENDER::FEMALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0015 ;Battle sprite
  .WORD OVERWORLD_SPRITE::THUNDER_MITE
  .BYTE $07 ;Run flag
  .WORD 333 ;HP
  .WORD 0 ;PP
  .DWORD 10354 ;Experience
  .WORD 528 ;Money
  .WORD EVENT_SCRIPT::EVENT_023
  .DWORD MSG_BTL_AP_FUSAGARETA
  .DWORD MSG_BTL_KIZETU_ON_M
  .BYTE $01 ;Palette
  .BYTE 46 ;Level
  .BYTE MUSIC::VS_CRANKY_LADY
  .WORD 91 ;Offense
  .WORD 100 ;Defense
  .BYTE 19 ;Speed
  .BYTE 7 ;Guts
  .BYTE 16 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $02 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $00 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::KISS_OF_DEATH
  .WORD BATTLE_ACTIONS::BASH
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $01 ;Item drop rate
  .BYTE ITEM::JAR_OF_DELISAUCE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "French Kiss of Death", 25
  .BYTE GENDER::FEMALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0015 ;Battle sprite
  .WORD OVERWORLD_SPRITE::FRENCH_KISS_OF_DEATH
  .BYTE $07 ;Run flag
  .WORD 588 ;HP
  .WORD 0 ;PP
  .DWORD 19210 ;Experience
  .WORD 879 ;Money
  .WORD EVENT_SCRIPT::EVENT_027
  .DWORD MSG_BTL_AP_ATTESHIMATTA
  .DWORD MSG_BTL_KIZETU_ON_M
  .BYTE $12 ;Palette
  .BYTE 70 ;Level
  .BYTE MUSIC::VS_CRANKY_LADY
  .WORD 160 ;Offense
  .WORD 160 ;Defense
  .BYTE 30 ;Speed
  .BYTE 7 ;Guts
  .BYTE 16 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $02 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $00 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::KISS_OF_DEATH
  .WORD BATTLE_ACTIONS::KISS_OF_DEATH
  .WORD BATTLE_ACTIONS::KISS_OF_DEATH
  .WORD BATTLE_ACTIONS::KISS_OF_DEATH
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $01 ;Item drop rate
  .BYTE ITEM::HORN_OF_LIFE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Foppy", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0011 ;Battle sprite
  .WORD OVERWORLD_SPRITE::FOBBY
  .BYTE $07 ;Run flag
  .WORD 120 ;HP
  .WORD 10 ;PP
  .DWORD 1311 ;Experience
  .WORD 93 ;Money
  .WORD EVENT_SCRIPT::EVENT_021
  .DWORD MSG_BTL_AP_FUSAGARETA
  .DWORD MSG_BTL_KIZETU_ON_M
  .BYTE $01 ;Palette
  .BYTE 16 ;Level
  .BYTE MUSIC::VS_STRUTTIN_EVIL_MUSHROOM
  .WORD 29 ;Offense
  .WORD 9 ;Defense
  .BYTE 1 ;Speed
  .BYTE 5 ;Guts
  .BYTE 3 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $00 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $00 ;Weakness to paralysis
  .BYTE $03 ;Weakness to hypnosis/brainshock
  .BYTE $02 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::BE_ABSENTMINDED
  .WORD BATTLE_ACTIONS::PSI_BRAINSHOCK_ALPHA
  .WORD BATTLE_ACTIONS::PSI_MAGNET_ALPHA
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $31 ;Action 3 argument
  .BYTE $2D ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $01 ;Item drop rate
  .BYTE ITEM::PSI_CARAMEL ;Item dropped
  .BYTE INITIAL_STATUS::CANT_CONCENTRATE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Fobby", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0011 ;Battle sprite
  .WORD OVERWORLD_SPRITE::FOBBY
  .BYTE $07 ;Run flag
  .WORD 240 ;HP
  .WORD 19 ;PP
  .DWORD 18348 ;Experience
  .WORD 620 ;Money
  .WORD EVENT_SCRIPT::EVENT_021
  .DWORD MSG_BTL_AP_FUSAGARETA
  .DWORD MSG_BTL_KIZETU_ON_M
  .BYTE $05 ;Palette
  .BYTE 48 ;Level
  .BYTE MUSIC::VS_STRUTTIN_EVIL_MUSHROOM
  .WORD 98 ;Offense
  .WORD 84 ;Defense
  .BYTE 5 ;Speed
  .BYTE 5 ;Guts
  .BYTE 3 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $00 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $00 ;Weakness to paralysis
  .BYTE $03 ;Weakness to hypnosis/brainshock
  .BYTE $04 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::HP_SUCKER
  .WORD BATTLE_ACTIONS::PSI_BRAINSHOCK_ALPHA
  .WORD BATTLE_ACTIONS::PSI_MAGNET_ALPHA
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $87 ;Action 2 argument
  .BYTE $31 ;Action 3 argument
  .BYTE $2D ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $02 ;Item drop rate
  .BYTE ITEM::PSI_CARAMEL ;Item dropped
  .BYTE INITIAL_STATUS::CANT_CONCENTRATE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $04 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Zap Eel", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0044 ;Battle sprite
  .WORD OVERWORLD_SPRITE::ZAP_EEL
  .BYTE $07 ;Run flag
  .WORD 370 ;HP
  .WORD 0 ;PP
  .DWORD 12170 ;Experience
  .WORD 611 ;Money
  .WORD EVENT_SCRIPT::EVENT_020
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $04 ;Palette
  .BYTE 48 ;Level
  .BYTE MUSIC::VS_MASTER_BELCH
  .WORD 97 ;Offense
  .WORD 93 ;Defense
  .BYTE 29 ;Speed
  .BYTE 5 ;Guts
  .BYTE 8 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $02 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::ELECTRIC_SHOCK
  .WORD BATTLE_ACTIONS::ELECTRIC_SHOCK
  .WORD BATTLE_ACTIONS::ELECTRIC_SHOCK
  .WORD BATTLE_ACTIONS::ELECTRIC_SHOCK
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $01 ;Item drop rate
  .BYTE ITEM::PSI_CARAMEL ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $04 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Tangoo", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0052 ;Battle sprite
  .WORD OVERWORLD_SPRITE::THUNDER_MITE
  .BYTE $07 ;Run flag
  .WORD 371 ;HP
  .WORD 5 ;PP
  .DWORD 14718 ;Experience
  .WORD 572 ;Money
  .WORD EVENT_SCRIPT::EVENT_023
  .DWORD MSG_BTL_AP_ATTESHIMATTA
  .DWORD MSG_BTL_KIZETU_ON_M
  .BYTE $05 ;Palette
  .BYTE 48 ;Level
  .BYTE MUSIC::VS_STRUTTIN_EVIL_MUSHROOM
  .WORD 96 ;Offense
  .WORD 99 ;Defense
  .BYTE 19 ;Speed
  .BYTE 20 ;Guts
  .BYTE 16 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $00 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::BREATHE_THROUGH_FLUTE
  .WORD BATTLE_ACTIONS::PLAY_POISON_FLUTE
  .WORD BATTLE_ACTIONS::BREATHE_THROUGH_FLUTE
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $04 ;Item drop rate
  .BYTE ITEM::SNAKE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $00 ;The Flag
  PADDEDEBTEXT "Boogey Tent", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0056 ;Battle sprite
  .WORD OVERWORLD_SPRITE::NONE
  .BYTE $07 ;Run flag
  .WORD 579 ;HP
  .WORD 56 ;PP
  .DWORD 5500 ;Experience
  .WORD 407 ;Money
  .WORD EVENT_SCRIPT::EVENT_000
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_M
  .BYTE $05 ;Palette
  .BYTE 25 ;Level
  .BYTE MUSIC::VS_CAVE_BOY
  .WORD 43 ;Offense
  .WORD 69 ;Defense
  .BYTE 10 ;Speed
  .BYTE 16 ;Guts
  .BYTE 32 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $03 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $03 ;Weakness to paralysis
  .BYTE $02 ;Weakness to hypnosis/brainshock
  .BYTE $00 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::DEFENSE_SPRAY
  .WORD BATTLE_ACTIONS::SPEW_FLY_HONEY
  .WORD BATTLE_ACTIONS::ENEMY_EXTENDER
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $A1 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE ENEMY::BOOGEY_TENT_2 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $01 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $01 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Squatter Demon", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0056 ;Battle sprite
  .WORD OVERWORLD_SPRITE::WHIRLING_ROBO
  .BYTE $07 ;Run flag
  .WORD 774 ;HP
  .WORD 60 ;PP
  .DWORD 48311 ;Experience
  .WORD 897 ;Money
  .WORD EVENT_SCRIPT::EVENT_023
  .DWORD MSG_BTL_AP_ATTESHIMATTA
  .DWORD MSG_BTL_KIZETU_ON_M
  .BYTE $1E ;Palette
  .BYTE 69 ;Level
  .BYTE MUSIC::VS_CAVE_BOY
  .WORD 158 ;Offense
  .WORD 192 ;Defense
  .BYTE 45 ;Speed
  .BYTE 25 ;Guts
  .BYTE 32 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $03 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $03 ;Weakness to paralysis
  .BYTE $02 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::POISONOUS_BITE
  .WORD BATTLE_ACTIONS::DIAMONDIZING_BITE
  .WORD BATTLE_ACTIONS::SHIELD_KILLER
  .WORD BATTLE_ACTIONS::PSI_HYPNOSIS_ALPHA
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $84 ;Action 3 argument
  .BYTE $2B ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $01 ;Item drop rate
  .BYTE ITEM::HORN_OF_LIFE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Crested Booka", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $000C ;Battle sprite
  .WORD OVERWORLD_SPRITE::CRESTED_BOOKA
  .BYTE $07 ;Run flag
  .WORD 265 ;HP
  .WORD 0 ;PP
  .DWORD 3011 ;Experience
  .WORD 130 ;Money
  .WORD EVENT_SCRIPT::EVENT_020
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_M
  .BYTE $09 ;Palette
  .BYTE 28 ;Level
  .BYTE MUSIC::VS_STRUTTIN_EVIL_MUSHROOM
  .WORD 53 ;Offense
  .WORD 73 ;Defense
  .BYTE 17 ;Speed
  .BYTE 24 ;Guts
  .BYTE 37 ;Luck
  .BYTE $03 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $02 ;Weakness to paralysis
  .BYTE $00 ;Weakness to hypnosis/brainshock
  .BYTE $04 ;Miss rate
  .BYTE $03 ;Action order
  .WORD BATTLE_ACTIONS::GRIN
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::WAR_CRY
  .WORD BATTLE_ACTIONS::BASH
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $02 ;Item drop rate
  .BYTE ITEM::PICNIC_LUNCH ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Great Crested Booka", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $000C ;Battle sprite
  .WORD OVERWORLD_SPRITE::CRESTED_BOOKA
  .BYTE $07 ;Run flag
  .WORD 452 ;HP
  .WORD 0 ;PP
  .DWORD 16365 ;Experience
  .WORD 604 ;Money
  .WORD EVENT_SCRIPT::EVENT_020
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_M
  .BYTE $03 ;Palette
  .BYTE 49 ;Level
  .BYTE MUSIC::VS_STRUTTIN_EVIL_MUSHROOM
  .WORD 100 ;Offense
  .WORD 110 ;Defense
  .BYTE 20 ;Speed
  .BYTE 28 ;Guts
  .BYTE 40 ;Luck
  .BYTE $03 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $02 ;Weakness to paralysis
  .BYTE $00 ;Weakness to hypnosis/brainshock
  .BYTE $04 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::GRIN
  .WORD BATTLE_ACTIONS::WAR_CRY
  .WORD BATTLE_ACTIONS::CHARGE
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $01 ;Item drop rate
  .BYTE ITEM::BEEF_JERKY ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Lesser Mook", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::NORMAL
  .WORD $003D ;Battle sprite
  .WORD OVERWORLD_SPRITE::WHIRLING_ROBO
  .BYTE $07 ;Run flag
  .WORD 401 ;HP
  .WORD 190 ;PP
  .DWORD 7640 ;Experience
  .WORD 467 ;Money
  .WORD EVENT_SCRIPT::EVENT_023
  .DWORD MSG_BTL_AP_ATTESHIMATTA
  .DWORD MSG_BTL_KIZETU_ON_M
  .BYTE $0B ;Palette
  .BYTE 39 ;Level
  .BYTE MUSIC::VS_SPINNING_ROBO
  .WORD 76 ;Offense
  .WORD 102 ;Defense
  .BYTE 17 ;Speed
  .BYTE 7 ;Guts
  .BYTE 16 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $03 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $02 ;Weakness to paralysis
  .BYTE $00 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::PSI_FREEZE_ALPHA
  .WORD BATTLE_ACTIONS::PSI_FREEZE_BETA
  .WORD BATTLE_ACTIONS::PSI_HYPNOSIS_ALPHA
  .WORD BATTLE_ACTIONS::EERIE_GLARE
  .WORD NULL ;Final action
  .BYTE $09 ;Action 1 argument
  .BYTE $0A ;Action 2 argument
  .BYTE $2B ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $01 ;Item drop rate
  .BYTE ITEM::PSI_CARAMEL ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Mook Senior", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::NORMAL
  .WORD $003D ;Battle sprite
  .WORD OVERWORLD_SPRITE::WHIRLING_ROBO
  .BYTE $07 ;Run flag
  .WORD 501 ;HP
  .WORD 700 ;PP
  .DWORD 21056 ;Experience
  .WORD 715 ;Money
  .WORD EVENT_SCRIPT::EVENT_023
  .DWORD MSG_BTL_AP_ATTESHIMATTA
  .DWORD MSG_BTL_KIZETU_ON_M
  .BYTE $0D ;Palette
  .BYTE 54 ;Level
  .BYTE MUSIC::VS_SPINNING_ROBO
  .WORD 108 ;Offense
  .WORD 122 ;Defense
  .BYTE 25 ;Speed
  .BYTE 7 ;Guts
  .BYTE 16 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $03 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $02 ;Weakness to paralysis
  .BYTE $00 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::PSI_FREEZE_BETA
  .WORD BATTLE_ACTIONS::PSI_FIRE_ALPHA
  .WORD BATTLE_ACTIONS::PSI_LIFEUP_ALPHA
  .WORD BATTLE_ACTIONS::EERIE_GLARE
  .WORD NULL ;Final action
  .BYTE $0A ;Action 1 argument
  .BYTE $05 ;Action 2 argument
  .BYTE $17 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $02 ;Item drop rate
  .BYTE ITEM::PSI_CARAMEL ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $02 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Smelly Ghost", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0035 ;Battle sprite
  .WORD OVERWORLD_SPRITE::STINKY_GHOST
  .BYTE $07 ;Run flag
  .WORD 194 ;HP
  .WORD 50 ;PP
  .DWORD 606 ;Experience
  .WORD 71 ;Money
  .WORD EVENT_SCRIPT::EVENT_024
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_KAKIKIERU
  .BYTE $02 ;Palette
  .BYTE 21 ;Level
  .BYTE MUSIC::VS_STRUTTIN_EVIL_MUSHROOM
  .WORD 35 ;Offense
  .WORD 89 ;Defense
  .BYTE 10 ;Speed
  .BYTE 2 ;Guts
  .BYTE 9 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $02 ;Weakness to ice
  .BYTE $00 ;Weakness to flash
  .BYTE $00 ;Weakness to paralysis
  .BYTE $00 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::GRIN
  .WORD BATTLE_ACTIONS::PSI_LIFEUP_ALPHA
  .WORD BATTLE_ACTIONS::VENT_ODOR
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $17 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $03 ;Item drop rate
  .BYTE ITEM::BROKEN_IRON ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Stinky Ghost", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0035 ;Battle sprite
  .WORD OVERWORLD_SPRITE::STINKY_GHOST
  .BYTE $07 ;Run flag
  .WORD 444 ;HP
  .WORD 0 ;PP
  .DWORD 13179 ;Experience
  .WORD 541 ;Money
  .WORD EVENT_SCRIPT::EVENT_024
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_KAKIKIERU
  .BYTE $0D ;Palette
  .BYTE 46 ;Level
  .BYTE MUSIC::VS_STRUTTIN_EVIL_MUSHROOM
  .WORD 90 ;Offense
  .WORD 179 ;Defense
  .BYTE 18 ;Speed
  .BYTE 4 ;Guts
  .BYTE 7 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $02 ;Weakness to ice
  .BYTE $00 ;Weakness to flash
  .BYTE $00 ;Weakness to paralysis
  .BYTE $00 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::GRIN
  .WORD BATTLE_ACTIONS::POSSESS
  .WORD BATTLE_ACTIONS::VENT_ODOR
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $01 ;Item drop rate
  .BYTE ITEM::LARGE_PIZZA ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $00 ;The Flag
  PADDEDEBTEXT "Everdred", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0020 ;Battle sprite
  .WORD OVERWORLD_SPRITE::EVERDRED
  .BYTE $07 ;Run flag
  .WORD 182 ;HP
  .WORD 0 ;PP
  .DWORD 986 ;Experience
  .WORD 171 ;Money
  .WORD EVENT_SCRIPT::EVENT_021
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_WARENI
  .BYTE $01 ;Palette
  .BYTE 15 ;Level
  .BYTE MUSIC::VS_STRUTTIN_EVIL_MUSHROOM
  .WORD 25 ;Offense
  .WORD 35 ;Defense
  .BYTE 6 ;Speed
  .BYTE 10 ;Guts
  .BYTE 40 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::KNIT_BROW
  .WORD BATTLE_ACTIONS::STEAL
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::ENEMY_EXTENDER
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE ENEMY::EVERDRED_2 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $01 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $01 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Attack Slug", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::INSECT
  .WORD $002F ;Battle sprite
  .WORD OVERWORLD_SPRITE::BLACK_ANTOID
  .BYTE $07 ;Run flag
  .WORD 30 ;HP
  .WORD 6 ;PP
  .DWORD 27 ;Experience
  .WORD 6 ;Money
  .WORD EVENT_SCRIPT::EVENT_020
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $02 ;Palette
  .BYTE 5 ;Level
  .BYTE MUSIC::VS_CRANKY_LADY
  .WORD 9 ;Offense
  .WORD 2 ;Defense
  .BYTE 1 ;Speed
  .BYTE 0 ;Guts
  .BYTE 3 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $00 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $00 ;Weakness to paralysis
  .BYTE $03 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::EDGE_CLOSER
  .WORD BATTLE_ACTIONS::PSI_HYPNOSIS_ALPHA
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $2B ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 1 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::BOMB ;Item dropped
  .BYTE INITIAL_STATUS::CANT_CONCENTRATE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Pit Bull Slug", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::INSECT
  .WORD $002F ;Battle sprite
  .WORD OVERWORLD_SPRITE::BLACK_ANTOID
  .BYTE $07 ;Run flag
  .WORD 217 ;HP
  .WORD 11 ;PP
  .DWORD 9994 ;Experience
  .WORD 543 ;Money
  .WORD EVENT_SCRIPT::EVENT_020
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $03 ;Palette
  .BYTE 39 ;Level
  .BYTE MUSIC::VS_CRANKY_LADY
  .WORD 79 ;Offense
  .WORD 77 ;Defense
  .BYTE 2 ;Speed
  .BYTE 5 ;Guts
  .BYTE 7 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $00 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $00 ;Weakness to paralysis
  .BYTE $03 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::VACUUM_ATTACK
  .WORD BATTLE_ACTIONS::PSI_HYPNOSIS_ALPHA
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $2B ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $05 ;Item drop rate
  .BYTE ITEM::SALT_PACKET ;Item dropped
  .BYTE INITIAL_STATUS::CANT_CONCENTRATE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Rowdy Mouse", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0014 ;Battle sprite
  .WORD OVERWORLD_SPRITE::ROWDY_MOUSE
  .BYTE $07 ;Run flag
  .WORD 36 ;HP
  .WORD 0 ;PP
  .DWORD 34 ;Experience
  .WORD 9 ;Money
  .WORD EVENT_SCRIPT::EVENT_020
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $01 ;Palette
  .BYTE 6 ;Level
  .BYTE MUSIC::VS_RUNAWAY_DOG
  .WORD 7 ;Offense
  .WORD 20 ;Defense
  .BYTE 5 ;Speed
  .BYTE 225 ;Guts
  .BYTE 2 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $00 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $02 ;Weakness to hypnosis/brainshock
  .BYTE $03 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::BITING_ATTACK
  .WORD BATTLE_ACTIONS::BITING_ATTACK
  .WORD BATTLE_ACTIONS::BITING_ATTACK
  .WORD BATTLE_ACTIONS::BITING_ATTACK
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 1 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $02 ;Item drop rate
  .BYTE ITEM::BREAD_ROLL ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Deadly Mouse", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0014 ;Battle sprite
  .WORD OVERWORLD_SPRITE::ROWDY_MOUSE
  .BYTE $07 ;Run flag
  .WORD 416 ;HP
  .WORD 0 ;PP
  .DWORD 9225 ;Experience
  .WORD 406 ;Money
  .WORD EVENT_SCRIPT::EVENT_020
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $17 ;Palette
  .BYTE 38 ;Level
  .BYTE MUSIC::VS_CAVE_BOY
  .WORD 63 ;Offense
  .WORD 98 ;Defense
  .BYTE 18 ;Speed
  .BYTE 225 ;Guts
  .BYTE 13 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $02 ;Weakness to hypnosis/brainshock
  .BYTE $03 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::POISONOUS_BITE
  .WORD BATTLE_ACTIONS::BITING_ATTACK
  .WORD BATTLE_ACTIONS::BITING_ATTACK
  .WORD BATTLE_ACTIONS::BITING_ATTACK
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $01 ;Item drop rate
  .BYTE ITEM::RUST_PROMOTER_DX ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $02 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Care Free Bomb", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::METAL
  .WORD $0006 ;Battle sprite
  .WORD OVERWORLD_SPRITE::FRENCH_KISS_OF_DEATH
  .BYTE $07 ;Run flag
  .WORD 504 ;HP
  .WORD 0 ;PP
  .DWORD 14941 ;Experience
  .WORD 641 ;Money
  .WORD EVENT_SCRIPT::EVENT_027
  .DWORD MSG_BTL_AP_ATTESHIMATTA
  .DWORD MSG_BTL_KIZETU_ON_KUDAKERU
  .BYTE $09 ;Palette
  .BYTE 60 ;Level
  .BYTE MUSIC::VS_CRANKY_LADY
  .WORD 135 ;Offense
  .WORD 215 ;Defense
  .BYTE 31 ;Speed
  .BYTE 15 ;Guts
  .BYTE 8 ;Luck
  .BYTE $02 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $02 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::BOMB
  .WORD BATTLE_ACTIONS::BOMB
  .WORD BATTLE_ACTIONS::BOMB
  .WORD BATTLE_ACTIONS::SUPER_BOMB
  .WORD NULL ;Final action
  .BYTE $93 ;Action 1 argument
  .BYTE $93 ;Action 2 argument
  .BYTE $93 ;Action 3 argument
  .BYTE $94 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $02 ;Item drop rate
  .BYTE ITEM::SUPER_BOMB ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $04 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $00 ;The Flag
  PADDEDEBTEXT "Electro Specter", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0039 ;Battle sprite
  .WORD OVERWORLD_SPRITE::YOUR_SANCTUARY_POINT_BOSS
  .BYTE $07 ;Run flag
  .WORD 3092 ;HP
  .WORD 80 ;PP
  .DWORD 261637 ;Experience
  .WORD 6564 ;Money
  .WORD EVENT_SCRIPT::EVENT_023
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $02 ;Palette
  .BYTE 67 ;Level
  .BYTE MUSIC::VS_KRAKEN
  .WORD 148 ;Offense
  .WORD 203 ;Defense
  .BYTE 29 ;Speed
  .BYTE 47 ;Guts
  .BYTE 56 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $03 ;Weakness to flash
  .BYTE $03 ;Weakness to paralysis
  .BYTE $02 ;Weakness to hypnosis/brainshock
  .BYTE $00 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::ELECTRIC_SHOCK
  .WORD BATTLE_ACTIONS::ENEMY_EXTENDER
  .WORD BATTLE_ACTIONS::ELECTRIC_SHOCK
  .WORD BATTLE_ACTIONS::HUNGRY_HP_SUCKER
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE ENEMY::ELECTRO_SPECTER_2 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $88 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $01 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::PSI_SHIELD_POWER
  .BYTE $01 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Handsome Tom", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $001C ;Battle sprite
  .WORD OVERWORLD_SPRITE::HANDSOME_TOM
  .BYTE $07 ;Run flag
  .WORD 133 ;HP
  .WORD 16 ;PP
  .DWORD 520 ;Experience
  .WORD 45 ;Money
  .WORD EVENT_SCRIPT::EVENT_024
  .DWORD MSG_BTL_AP_ATTESHIMATTA
  .DWORD MSG_BTL_KIZETU_ON_UGOKANAKU
  .BYTE $03 ;Palette
  .BYTE 16 ;Level
  .BYTE MUSIC::VS_CAVE_BOY
  .WORD 27 ;Offense
  .WORD 25 ;Defense
  .BYTE 11 ;Speed
  .BYTE 5 ;Guts
  .BYTE 8 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $02 ;Weakness to ice
  .BYTE $00 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $03 ;Weakness to hypnosis/brainshock
  .BYTE $02 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::REEL
  .WORD BATTLE_ACTIONS::PSI_HYPNOSIS_ALPHA
  .WORD BATTLE_ACTIONS::PSI_BRAINSHOCK_ALPHA
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $2B ;Action 3 argument
  .BYTE $31 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $03 ;Item drop rate
  .BYTE ITEM::TIN_OF_COCOA ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Smilin' Sam", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $001C ;Battle sprite
  .WORD OVERWORLD_SPRITE::HANDSOME_TOM
  .BYTE $07 ;Run flag
  .WORD 161 ;HP
  .WORD 55 ;PP
  .DWORD 712 ;Experience
  .WORD 48 ;Money
  .WORD EVENT_SCRIPT::EVENT_024
  .DWORD MSG_BTL_AP_ATTESHIMATTA
  .DWORD MSG_BTL_KIZETU_ON_UGOKANAKU
  .BYTE $01 ;Palette
  .BYTE 20 ;Level
  .BYTE MUSIC::VS_CAVE_BOY
  .WORD 34 ;Offense
  .WORD 44 ;Defense
  .BYTE 17 ;Speed
  .BYTE 16 ;Guts
  .BYTE 16 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $02 ;Weakness to ice
  .BYTE $00 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::REEL
  .WORD BATTLE_ACTIONS::PSI_DEFENSE_DOWN_ALPHA
  .WORD BATTLE_ACTIONS::PSI_LIFEUP_ALPHA
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $29 ;Action 3 argument
  .BYTE $17 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $02 ;Item drop rate
  .BYTE ITEM::REFRESHING_HERB ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $02 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Manly Fish", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $001F ;Battle sprite
  .WORD OVERWORLD_SPRITE::MANLY_FISH
  .BYTE $07 ;Run flag
  .WORD 500 ;HP
  .WORD 0 ;PP
  .DWORD 15826 ;Experience
  .WORD 624 ;Money
  .WORD EVENT_SCRIPT::EVENT_021
  .DWORD MSG_BTL_AP_TSUKAMATTA
  .DWORD MSG_BTL_KIZETU_ON_M
  .BYTE $01 ;Palette
  .BYTE 42 ;Level
  .BYTE MUSIC::VS_MASTER_BELCH
  .WORD 83 ;Offense
  .WORD 114 ;Defense
  .BYTE 22 ;Speed
  .BYTE 9 ;Guts
  .BYTE 20 ;Luck
  .BYTE $03 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $02 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::SPEAR_JAB
  .WORD BATTLE_ACTIONS::SPEAR_JAB
  .WORD BATTLE_ACTIONS::SPEAR_JAB
  .WORD BATTLE_ACTIONS::SPEAR_JAB
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $02 ;Item drop rate
  .BYTE ITEM::BEEF_JERKY ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Manly Fish's Brother", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $001F ;Battle sprite
  .WORD OVERWORLD_SPRITE::MANLY_FISH
  .BYTE $07 ;Run flag
  .WORD 526 ;HP
  .WORD 210 ;PP
  .DWORD 15970 ;Experience
  .WORD 686 ;Money
  .WORD EVENT_SCRIPT::EVENT_021
  .DWORD MSG_BTL_AP_TSUKAMATTA
  .DWORD MSG_BTL_KIZETU_ON_M
  .BYTE $0E ;Palette
  .BYTE 56 ;Level
  .BYTE MUSIC::VS_YOUR_SANCTUARY_BOSS
  .WORD 114 ;Offense
  .WORD 123 ;Defense
  .BYTE 24 ;Speed
  .BYTE 11 ;Guts
  .BYTE 24 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $03 ;Weakness to ice
  .BYTE $02 ;Weakness to flash
  .BYTE $02 ;Weakness to paralysis
  .BYTE $02 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::PSI_HYPNOSIS_ALPHA
  .WORD BATTLE_ACTIONS::PSI_PARALYSIS_ALPHA
  .WORD BATTLE_ACTIONS::PSI_FREEZE_BETA
  .WORD BATTLE_ACTIONS::PSI_HEALING_OMEGA
  .WORD NULL ;Final action
  .BYTE $2B ;Action 1 argument
  .BYTE $2F ;Action 2 argument
  .BYTE $0A ;Action 3 argument
  .BYTE $1E ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::HORN_OF_LIFE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $02 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Runaway Dog", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0002 ;Battle sprite
  .WORD OVERWORLD_SPRITE::RUNAWAY_DOG
  .BYTE $07 ;Run flag
  .WORD 21 ;HP
  .WORD 0 ;PP
  .DWORD 4 ;Experience
  .WORD 3 ;Money
  .WORD EVENT_SCRIPT::EVENT_022
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $09 ;Palette
  .BYTE 2 ;Level
  .BYTE MUSIC::VS_RUNAWAY_DOG
  .WORD 4 ;Offense
  .WORD 5 ;Defense
  .BYTE 26 ;Speed
  .BYTE 0 ;Guts
  .BYTE 1 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $00 ;Weakness to ice
  .BYTE $00 ;Weakness to flash
  .BYTE $00 ;Weakness to paralysis
  .BYTE $00 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::HOWL
  .WORD BATTLE_ACTIONS::BITING_ATTACK
  .WORD BATTLE_ACTIONS::HOWL
  .WORD BATTLE_ACTIONS::BITING_ATTACK
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 1 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $02 ;Item drop rate
  .BYTE ITEM::BREAD_ROLL ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Trick or Trick Kid", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $001B ;Battle sprite
  .WORD OVERWORLD_SPRITE::TRICK_OR_TRICK_KID
  .BYTE $07 ;Run flag
  .WORD 142 ;HP
  .WORD 0 ;PP
  .DWORD 570 ;Experience
  .WORD 47 ;Money
  .WORD EVENT_SCRIPT::EVENT_021
  .DWORD MSG_BTL_AP_FUSAGARETA
  .DWORD MSG_BTL_KIZETU_ON_M
  .BYTE $01 ;Palette
  .BYTE 18 ;Level
  .BYTE MUSIC::VS_CRANKY_LADY
  .WORD 30 ;Offense
  .WORD 37 ;Defense
  .BYTE 7 ;Speed
  .BYTE 12 ;Guts
  .BYTE 12 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $00 ;Weakness to ice
  .BYTE $00 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $00 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::SPIT_SEEDS
  .WORD BATTLE_ACTIONS::SPIT_SEEDS
  .WORD BATTLE_ACTIONS::SPIT_SEEDS
  .WORD BATTLE_ACTIONS::GRIN
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $02 ;Item drop rate
  .BYTE ITEM::BOMB ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Cave Boy", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0065 ;Battle sprite
  .WORD OVERWORLD_SPRITE::CAVE_BOY
  .BYTE $07 ;Run flag
  .WORD 314 ;HP
  .WORD 0 ;PP
  .DWORD 618 ;Experience
  .WORD 17 ;Money
  .WORD EVENT_SCRIPT::EVENT_029
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $07 ;Palette
  .BYTE 11 ;Level
  .BYTE MUSIC::VS_CAVE_BOY
  .WORD 21 ;Offense
  .WORD 33 ;Defense
  .BYTE 79 ;Speed
  .BYTE 0 ;Guts
  .BYTE 80 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $03 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $03 ;Weakness to paralysis
  .BYTE $02 ;Weakness to hypnosis/brainshock
  .BYTE $00 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::SHOUT
  .WORD BATTLE_ACTIONS::SWING_CLUB
  .WORD BATTLE_ACTIONS::SHOUT
  .WORD BATTLE_ACTIONS::SWING_CLUB
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $02 ;Item drop rate
  .BYTE ITEM::DOUBLE_BURGER ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Abstract Art", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::NORMAL
  .WORD $000F ;Battle sprite
  .WORD OVERWORLD_SPRITE::ABSTRACT_ART
  .BYTE $07 ;Run flag
  .WORD 301 ;HP
  .WORD 60 ;PP
  .DWORD 4361 ;Experience
  .WORD 255 ;Money
  .WORD EVENT_SCRIPT::EVENT_027
  .DWORD MSG_BTL_AP_FUSAGARETA
  .DWORD MSG_BTL_KIZETU_ON_UGOKANAKU
  .BYTE $09 ;Palette
  .BYTE 35 ;Level
  .BYTE MUSIC::VS_STRUTTIN_EVIL_MUSHROOM
  .WORD 67 ;Offense
  .WORD 79 ;Defense
  .BYTE 19 ;Speed
  .BYTE 7 ;Guts
  .BYTE 7 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $00 ;Weakness to paralysis
  .BYTE $02 ;Weakness to hypnosis/brainshock
  .BYTE $02 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::PSI_HYPNOSIS_ALPHA
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $2B ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 1 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $02 ;Item drop rate
  .BYTE ITEM::REFRESHING_HERB ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Shattered Man", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0038 ;Battle sprite
  .WORD OVERWORLD_SPRITE::SHATTERED_MAN
  .BYTE $07 ;Run flag
  .WORD 694 ;HP
  .WORD 0 ;PP
  .DWORD 44690 ;Experience
  .WORD 2630 ;Money
  .WORD EVENT_SCRIPT::EVENT_024
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_M
  .BYTE $12 ;Palette
  .BYTE 51 ;Level
  .BYTE MUSIC::VS_YOUR_SANCTUARY_BOSS
  .WORD 104 ;Offense
  .WORD 138 ;Defense
  .BYTE 18 ;Speed
  .BYTE 25 ;Guts
  .BYTE 38 ;Luck
  .BYTE $02 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $00 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $00 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::LUNGE_FORWARD
  .WORD BATTLE_ACTIONS::HUG
  .WORD BATTLE_ACTIONS::REACH_WITH_ICY_HAND
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $01 ;Boss flag
  .BYTE $06 ;Item drop rate
  .BYTE ITEM::MUMMY_WRAP ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Fierce Shattered Man", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0038 ;Battle sprite
  .WORD OVERWORLD_SPRITE::SHATTERED_MAN
  .BYTE $07 ;Run flag
  .WORD 516 ;HP
  .WORD 0 ;PP
  .DWORD 17423 ;Experience
  .WORD 577 ;Money
  .WORD EVENT_SCRIPT::EVENT_024
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_M
  .BYTE $02 ;Palette
  .BYTE 50 ;Level
  .BYTE MUSIC::VS_CAVE_BOY
  .WORD 101 ;Offense
  .WORD 116 ;Defense
  .BYTE 12 ;Speed
  .BYTE 5 ;Guts
  .BYTE 4 ;Luck
  .BYTE $02 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $00 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $02 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::CONTINUOUS_ATTACK
  .WORD BATTLE_ACTIONS::HUG
  .WORD BATTLE_ACTIONS::REACH_WITH_ICY_HAND
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $06 ;Item drop rate
  .BYTE ITEM::MUMMY_WRAP ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Ego Orb", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0066 ;Battle sprite
  .WORD OVERWORLD_SPRITE::EGO_ORB
  .BYTE $07 ;Run flag
  .WORD 592 ;HP
  .WORD 0 ;PP
  .DWORD 24180 ;Experience
  .WORD 836 ;Money
  .WORD EVENT_SCRIPT::EVENT_030
  .DWORD MSG_BTL_AP_FUSAGARETA
  .DWORD MSG_BTL_KIZETU_ON_UGOKANAKU
  .BYTE $07 ;Palette
  .BYTE 58 ;Level
  .BYTE MUSIC::VS_CAVE_BOY
  .WORD 125 ;Offense
  .WORD 140 ;Defense
  .BYTE 17 ;Speed
  .BYTE 1 ;Guts
  .BYTE 8 ;Luck
  .BYTE $02 ;Weakness to fire
  .BYTE $00 ;Weakness to ice
  .BYTE $02 ;Weakness to flash
  .BYTE $03 ;Weakness to paralysis
  .BYTE $02 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::TEAR_INTO
  .WORD BATTLE_ACTIONS::LUNGE_FORWARD
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::BASH
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $03 ;Item drop rate
  .BYTE ITEM::SKIP_SANDWICH_DX ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $00 ;The Flag
  PADDEDEBTEXT "Thunder and Storm", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0027 ;Battle sprite
  .WORD OVERWORLD_SPRITE::YOUR_SANCTUARY_POINT_BOSS
  .BYTE $07 ;Run flag
  .WORD 2065 ;HP
  .WORD 70 ;PP
  .DWORD 129026 ;Experience
  .WORD 4736 ;Money
  .WORD EVENT_SCRIPT::EVENT_023
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $01 ;Palette
  .BYTE 56 ;Level
  .BYTE MUSIC::VS_KRAKEN
  .WORD 111 ;Offense
  .WORD 178 ;Defense
  .BYTE 21 ;Speed
  .BYTE 35 ;Guts
  .BYTE 55 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $00 ;Weakness to flash
  .BYTE $03 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $00 ;Miss rate
  .BYTE $02 ;Action order
  .WORD BATTLE_ACTIONS::CRASHING_BOOM_BANG
  .WORD BATTLE_ACTIONS::TAKE_DEEP_BREATH
  .WORD BATTLE_ACTIONS::INTERTWINE
  .WORD BATTLE_ACTIONS::ENEMY_EXTENDER
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE ENEMY::THUNDER_AND_STORM_2 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $01 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $01 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Yes Man Junior", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0040 ;Battle sprite
  .WORD OVERWORLD_SPRITE::SKATE_PUNK
  .BYTE $07 ;Run flag
  .WORD 33 ;HP
  .WORD 0 ;PP
  .DWORD 13 ;Experience
  .WORD 18 ;Money
  .WORD EVENT_SCRIPT::EVENT_021
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $03 ;Palette
  .BYTE 4 ;Level
  .BYTE MUSIC::VS_STRUTTIN_EVIL_MUSHROOM
  .WORD 8 ;Offense
  .WORD 9 ;Defense
  .BYTE 4 ;Speed
  .BYTE 0 ;Guts
  .BYTE 14 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $03 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::SWING_HULA_HOOP
  .WORD BATTLE_ACTIONS::SWING_HULA_HOOP
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::LAUGH_HYSTERICALLY
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $02 ;Item drop rate
  .BYTE ITEM::BAG_OF_FRIES ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $02 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $00 ;The Flag
  PADDEDEBTEXT "Frankystein Mark II", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::METAL
  .WORD $0061 ;Battle sprite
  .WORD OVERWORLD_SPRITE::NONE
  .BYTE $07 ;Run flag
  .WORD 91 ;HP
  .WORD 0 ;PP
  .DWORD 76 ;Experience
  .WORD 31 ;Money
  .WORD EVENT_SCRIPT::EVENT_000
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_HAKAI
  .BYTE $06 ;Palette
  .BYTE 7 ;Level
  .BYTE MUSIC::VS_CAVE_BOY
  .WORD 15 ;Offense
  .WORD 18 ;Defense
  .BYTE 4 ;Speed
  .BYTE 0 ;Guts
  .BYTE 40 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $00 ;Weakness to ice
  .BYTE $02 ;Weakness to flash
  .BYTE $02 ;Weakness to paralysis
  .BYTE $02 ;Weakness to hypnosis/brainshock
  .BYTE $00 ;Miss rate
  .BYTE $02 ;Action order
  .WORD BATTLE_ACTIONS::GENERATE_STEAM
  .WORD BATTLE_ACTIONS::PUNCH
  .WORD BATTLE_ACTIONS::GENERATE_STEAM
  .WORD BATTLE_ACTIONS::ENEMY_EXTENDER
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE ENEMY::FRANKYSTEIN_MARK_II_2 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $01 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $01 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $00 ;The Flag
  PADDEDEBTEXT "Frank", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0025 ;Battle sprite
  .WORD OVERWORLD_SPRITE::FRANK
  .BYTE $07 ;Run flag
  .WORD 63 ;HP
  .WORD 0 ;PP
  .DWORD 50 ;Experience
  .WORD 48 ;Money
  .WORD EVENT_SCRIPT::EVENT_021
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $01 ;Palette
  .BYTE 6 ;Level
  .BYTE MUSIC::VS_NEW_AGE_RETRO_HIPPIE
  .WORD 12 ;Offense
  .WORD 17 ;Defense
  .BYTE 7 ;Speed
  .BYTE 5 ;Guts
  .BYTE 32 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $00 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $00 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::BRANDISH_KNIFE
  .WORD BATTLE_ACTIONS::COME_OUT_SWINGING
  .WORD BATTLE_ACTIONS::SAY_SOMETHING_NASTY
  .WORD BATTLE_ACTIONS::BRANDISH_KNIFE
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $01 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $01 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Cute Li'l UFO", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::METAL
  .WORD $0031 ;Battle sprite
  .WORD OVERWORLD_SPRITE::LIL_UFO
  .BYTE $07 ;Run flag
  .WORD 162 ;HP
  .WORD 25 ;PP
  .DWORD 1519 ;Experience
  .WORD 110 ;Money
  .WORD EVENT_SCRIPT::EVENT_023
  .DWORD MSG_BTL_AP_FUSAGARETA
  .DWORD MSG_BTL_KIZETU_ON_HAKAI
  .BYTE $02 ;Palette
  .BYTE 27 ;Level
  .BYTE MUSIC::VS_CRANKY_LADY
  .WORD 49 ;Offense
  .WORD 32 ;Defense
  .BYTE 58 ;Speed
  .BYTE 1 ;Guts
  .BYTE 70 ;Luck
  .BYTE $02 ;Weakness to fire
  .BYTE $02 ;Weakness to ice
  .BYTE $02 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $03 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::FIRE_BEAM
  .WORD BATTLE_ACTIONS::FIRE_BEAM
  .WORD BATTLE_ACTIONS::FIRE_BEAM
  .WORD BATTLE_ACTIONS::PSI_LIFEUP_ALPHA
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $17 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $02 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Beautiful UFO", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::METAL
  .WORD $0031 ;Battle sprite
  .WORD OVERWORLD_SPRITE::LIL_UFO
  .BYTE $07 ;Run flag
  .WORD 339 ;HP
  .WORD 15 ;PP
  .DWORD 8257 ;Experience
  .WORD 426 ;Money
  .WORD EVENT_SCRIPT::EVENT_023
  .DWORD MSG_BTL_AP_FUSAGARETA
  .DWORD MSG_BTL_KIZETU_ON_HAKAI
  .BYTE $13 ;Palette
  .BYTE 44 ;Level
  .BYTE MUSIC::VS_SPINNING_ROBO
  .WORD 86 ;Offense
  .WORD 87 ;Defense
  .BYTE 59 ;Speed
  .BYTE 1 ;Guts
  .BYTE 71 ;Luck
  .BYTE $02 ;Weakness to fire
  .BYTE $02 ;Weakness to ice
  .BYTE $02 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $03 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::FIRE_BEAM
  .WORD BATTLE_ACTIONS::FIRE_BEAM
  .WORD BATTLE_ACTIONS::FIRE_BEAM
  .WORD BATTLE_ACTIONS::PSI_LIFEUP_ALPHA
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $17 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $02 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $04 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Pogo Punk", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0060 ;Battle sprite
  .WORD OVERWORLD_SPRITE::SKATE_PUNK
  .BYTE $07 ;Run flag
  .WORD 35 ;HP
  .WORD 0 ;PP
  .DWORD 15 ;Experience
  .WORD 18 ;Money
  .WORD EVENT_SCRIPT::EVENT_021
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $06 ;Palette
  .BYTE 4 ;Level
  .BYTE MUSIC::VS_CRANKY_LADY
  .WORD 8 ;Offense
  .WORD 10 ;Defense
  .BYTE 3 ;Speed
  .BYTE 0 ;Guts
  .BYTE 15 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $04 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::CHARGE
  .WORD BATTLE_ACTIONS::CHARGE
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::FALL_DOWN
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $07 ;Item drop rate
  .BYTE ITEM::HAMBURGER ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $02 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Tough Guy", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0026 ;Battle sprite
  .WORD OVERWORLD_SPRITE::TOUGH_GUY
  .BYTE $07 ;Run flag
  .WORD 342 ;HP
  .WORD 0 ;PP
  .DWORD 9310 ;Experience
  .WORD 525 ;Money
  .WORD EVENT_SCRIPT::EVENT_021
  .DWORD MSG_BTL_AP_TSUKAMATTA
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $01 ;Palette
  .BYTE 37 ;Level
  .BYTE MUSIC::VS_CAVE_BOY
  .WORD 72 ;Offense
  .WORD 92 ;Defense
  .BYTE 18 ;Speed
  .BYTE 20 ;Guts
  .BYTE 16 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $02 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::COME_OUT_SWINGING
  .WORD BATTLE_ACTIONS::COME_OUT_SWINGING
  .WORD BATTLE_ACTIONS::COME_OUT_SWINGING
  .WORD BATTLE_ACTIONS::LOSE_TEMPER
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $05 ;Item drop rate
  .BYTE ITEM::CHICK ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Mad Taxi", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::METAL
  .WORD $0055 ;Battle sprite
  .WORD OVERWORLD_SPRITE::MAD_TAXI
  .BYTE $07 ;Run flag
  .WORD 253 ;HP
  .WORD 0 ;PP
  .DWORD 2336 ;Experience
  .WORD 216 ;Money
  .WORD EVENT_SCRIPT::EVENT_030
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_PONKOTSU
  .BYTE $05 ;Palette
  .BYTE 28 ;Level
  .BYTE MUSIC::VS_STRUTTIN_EVIL_MUSHROOM
  .WORD 53 ;Offense
  .WORD 68 ;Defense
  .BYTE 38 ;Speed
  .BYTE 5 ;Guts
  .BYTE 8 ;Luck
  .BYTE $02 ;Weakness to fire
  .BYTE $02 ;Weakness to ice
  .BYTE $02 ;Weakness to flash
  .BYTE $00 ;Weakness to paralysis
  .BYTE $02 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::REV_AND_ACCELERATE
  .WORD BATTLE_ACTIONS::REV_AND_ACCELERATE
  .WORD BATTLE_ACTIONS::SPEW_EXHAUST
  .WORD BATTLE_ACTIONS::SPEW_EXHAUST
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::XTERMINATOR_SPRAY ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $00 ;The Flag
  PADDEDEBTEXT "Evil Mani-Mani", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::NORMAL
  .WORD $004F ;Battle sprite
  .WORD OVERWORLD_SPRITE::EVIL_MANI_MANI
  .BYTE $07 ;Run flag
  .WORD 860 ;HP
  .WORD 88 ;PP
  .DWORD 28139 ;Experience
  .WORD 1852 ;Money
  .WORD EVENT_SCRIPT::EVENT_000
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_UGOKANAKU
  .BYTE $03 ;Palette
  .BYTE 45 ;Level
  .BYTE MUSIC::VS_STARMAN_JR
  .WORD 86 ;Offense
  .WORD 145 ;Defense
  .BYTE 15 ;Speed
  .BYTE 1 ;Guts
  .BYTE 80 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $03 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $00 ;Miss rate
  .BYTE $03 ;Action order
  .WORD BATTLE_ACTIONS::PSI_MAGNET_ALPHA
  .WORD BATTLE_ACTIONS::PSI_PARALYSIS_ALPHA
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::ENEMY_EXTENDER
  .WORD NULL ;Final action
  .BYTE $2D ;Action 1 argument
  .BYTE $2F ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE ENEMY::EVIL_MANI_MANI_2 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $01 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $01 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Mr. Molecule", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::NORMAL
  .WORD $002D ;Battle sprite
  .WORD OVERWORLD_SPRITE::FRENCH_KISS_OF_DEATH
  .BYTE $07 ;Run flag
  .WORD 280 ;HP
  .WORD 21 ;PP
  .DWORD 8708 ;Experience
  .WORD 659 ;Money
  .WORD EVENT_SCRIPT::EVENT_027
  .DWORD MSG_BTL_AP_ATTESHIMATTA
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $02 ;Palette
  .BYTE 56 ;Level
  .BYTE MUSIC::VS_STRUTTIN_EVIL_MUSHROOM
  .WORD 118 ;Offense
  .WORD 97 ;Defense
  .BYTE 18 ;Speed
  .BYTE 5 ;Guts
  .BYTE 4 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $00 ;Weakness to ice
  .BYTE $02 ;Weakness to flash
  .BYTE $00 ;Weakness to paralysis
  .BYTE $03 ;Weakness to hypnosis/brainshock
  .BYTE $02 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::PSI_THUNDER_ALPHA
  .WORD BATTLE_ACTIONS::PSI_FLASH_ALPHA
  .WORD BATTLE_ACTIONS::PSI_FIRE_ALPHA
  .WORD BATTLE_ACTIONS::PSI_FREEZE_ALPHA
  .WORD NULL ;Final action
  .BYTE $0D ;Action 1 argument
  .BYTE $11 ;Action 2 argument
  .BYTE $05 ;Action 3 argument
  .BYTE $09 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $01 ;Item drop rate
  .BYTE ITEM::MAGIC_TART ;Item dropped
  .BYTE INITIAL_STATUS::CANT_CONCENTRATE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $06 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Worthless Protoplasm", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::NORMAL
  .WORD $003C ;Battle sprite
  .WORD OVERWORLD_SPRITE::GIFT_BOX
  .BYTE $07 ;Run flag
  .WORD 38 ;HP
  .WORD 0 ;PP
  .DWORD 17 ;Experience
  .WORD 11 ;Money
  .WORD EVENT_SCRIPT::EVENT_031
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $03 ;Palette
  .BYTE 7 ;Level
  .BYTE MUSIC::VS_RUNAWAY_DOG
  .WORD 11 ;Offense
  .WORD 21 ;Defense
  .BYTE 27 ;Speed
  .BYTE 0 ;Guts
  .BYTE 1 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $00 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $00 ;Weakness to paralysis
  .BYTE $03 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::SIZE_UP_SITUATION
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::CALL_FOR_HELP
  .WORD BATTLE_ACTIONS::BASH
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE ENEMY::WORTHLESS_PROTOPLASM ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 0 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $05 ;Item drop rate
  .BYTE ITEM::COOKIE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $02 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Sentry Robot", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::METAL
  .WORD $0036 ;Battle sprite
  .WORD OVERWORLD_SPRITE::SENTRY_ROBOT
  .BYTE $07 ;Run flag
  .WORD 372 ;HP
  .WORD 0 ;PP
  .DWORD 5034 ;Experience
  .WORD 392 ;Money
  .WORD EVENT_SCRIPT::EVENT_030
  .DWORD MSG_BTL_AP_FUSAGARETA
  .DWORD MSG_BTL_KIZETU_ON_HAKAI
  .BYTE $02 ;Palette
  .BYTE 39 ;Level
  .BYTE MUSIC::VS_CRANKY_LADY
  .WORD 77 ;Offense
  .WORD 105 ;Defense
  .BYTE 17 ;Speed
  .BYTE 10 ;Guts
  .BYTE 4 ;Luck
  .BYTE $02 ;Weakness to fire
  .BYTE $02 ;Weakness to ice
  .BYTE $03 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::FIRE_BEAM
  .WORD BATTLE_ACTIONS::TICK_TOCK
  .WORD BATTLE_ACTIONS::CALL_FOR_HELP
  .WORD BATTLE_ACTIONS::BOTTLE_ROCKET
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE ENEMY::SENTRY_ROBOT ;Action 3 argument
  .BYTE $90 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $01 ;Boss flag
  .BYTE $01 ;Item drop rate
  .BYTE ITEM::BIG_BOTTLE_ROCKET ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $02 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $00 ;The Flag
  PADDEDEBTEXT "Heavily Armed Pokey", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::METAL
  .WORD $002A ;Battle sprite
  .WORD OVERWORLD_SPRITE::POKEY
  .BYTE $07 ;Run flag
  .WORD 1746 ;HP
  .WORD 999 ;PP
  .DWORD 0 ;Experience
  .WORD 0 ;Money
  .WORD EVENT_SCRIPT::EVENT_000
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_M
  .BYTE $00 ;Palette
  .BYTE 72 ;Level
  .BYTE MUSIC::NONE
  .WORD 150 ;Offense
  .WORD 274 ;Defense
  .BYTE 51 ;Speed
  .BYTE 45 ;Guts
  .BYTE 55 ;Luck
  .BYTE $02 ;Weakness to fire
  .BYTE $02 ;Weakness to ice
  .BYTE $02 ;Weakness to flash
  .BYTE $03 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $00 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::PSI_FIRE_BETA
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::ENEMY_EXTENDER
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $06 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE ENEMY::HEAVILY_ARMED_POKEY_2 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Psychic Psycho", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $001D ;Battle sprite
  .WORD OVERWORLD_SPRITE::ROBO_PUMP
  .BYTE $07 ;Run flag
  .WORD 591 ;HP
  .WORD 252 ;PP
  .DWORD 30094 ;Experience
  .WORD 682 ;Money
  .WORD EVENT_SCRIPT::EVENT_027
  .DWORD MSG_BTL_AP_ATTESHIMATTA
  .DWORD MSG_BTL_KIZETU_ON_WARENI
  .BYTE $01 ;Palette
  .BYTE 58 ;Level
  .BYTE MUSIC::VS_CAVE_BOY
  .WORD 124 ;Offense
  .WORD 144 ;Defense
  .BYTE 30 ;Speed
  .BYTE 1 ;Guts
  .BYTE 24 ;Luck
  .BYTE $03 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $02 ;Weakness to paralysis
  .BYTE $03 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::PSI_FIRE_ALPHA
  .WORD BATTLE_ACTIONS::PSI_FIRE_BETA
  .WORD BATTLE_ACTIONS::PSI_FIRE_ALPHA
  .WORD BATTLE_ACTIONS::PSI_FIRE_BETA
  .WORD NULL ;Final action
  .BYTE $05 ;Action 1 argument
  .BYTE $06 ;Action 2 argument
  .BYTE $05 ;Action 3 argument
  .BYTE $06 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $02 ;Item drop rate
  .BYTE ITEM::PSI_CARAMEL ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Major Psychic Psycho", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $001D ;Battle sprite
  .WORD OVERWORLD_SPRITE::ROBO_PUMP
  .BYTE $07 ;Run flag
  .WORD 618 ;HP
  .WORD 574 ;PP
  .DWORD 39247 ;Experience
  .WORD 862 ;Money
  .WORD EVENT_SCRIPT::EVENT_027
  .DWORD MSG_BTL_AP_ATTESHIMATTA
  .DWORD MSG_BTL_KIZETU_ON_WARENI
  .BYTE $12 ;Palette
  .BYTE 65 ;Level
  .BYTE MUSIC::VS_CAVE_BOY
  .WORD 145 ;Offense
  .WORD 152 ;Defense
  .BYTE 31 ;Speed
  .BYTE 1 ;Guts
  .BYTE 24 ;Luck
  .BYTE $03 ;Weakness to fire
  .BYTE $02 ;Weakness to ice
  .BYTE $02 ;Weakness to flash
  .BYTE $03 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $03 ;Action order
  .WORD BATTLE_ACTIONS::PSI_FIRE_BETA
  .WORD BATTLE_ACTIONS::PSI_PSI_SHIELD_OMEGA
  .WORD BATTLE_ACTIONS::PSI_PARALYSIS_ALPHA
  .WORD BATTLE_ACTIONS::PSI_FIRE_GAMMA
  .WORD NULL ;Final action
  .BYTE $06 ;Action 1 argument
  .BYTE $26 ;Action 2 argument
  .BYTE $2F ;Action 3 argument
  .BYTE $07 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::STAR_PENDANT ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Mole Playing Rough", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $004E ;Battle sprite
  .WORD OVERWORLD_SPRITE::MOLE_PLAYING_ROUGH
  .BYTE $07 ;Run flag
  .WORD 103 ;HP
  .WORD 0 ;PP
  .DWORD 456 ;Experience
  .WORD 36 ;Money
  .WORD EVENT_SCRIPT::EVENT_020
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $05 ;Palette
  .BYTE 14 ;Level
  .BYTE MUSIC::VS_RUNAWAY_DOG
  .WORD 22 ;Offense
  .WORD 28 ;Defense
  .BYTE 9 ;Speed
  .BYTE 2 ;Guts
  .BYTE 8 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $00 ;Weakness to flash
  .BYTE $00 ;Weakness to paralysis
  .BYTE $02 ;Weakness to hypnosis/brainshock
  .BYTE $03 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::SCRATCH
  .WORD BATTLE_ACTIONS::SIZE_UP_SITUATION
  .WORD BATTLE_ACTIONS::BE_ABSENTMINDED
  .WORD BATTLE_ACTIONS::CLAW
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $02 ;Item drop rate
  .BYTE ITEM::CROISSANT ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $03 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Gruff Goat", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $005E ;Battle sprite
  .WORD OVERWORLD_SPRITE::GRUFF_GOAT
  .BYTE $07 ;Run flag
  .WORD 45 ;HP
  .WORD 0 ;PP
  .DWORD 20 ;Experience
  .WORD 9 ;Money
  .WORD EVENT_SCRIPT::EVENT_022
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $06 ;Palette
  .BYTE 7 ;Level
  .BYTE MUSIC::VS_CRANKY_LADY
  .WORD 8 ;Offense
  .WORD 23 ;Defense
  .BYTE 12 ;Speed
  .BYTE 0 ;Guts
  .BYTE 16 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $00 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $00 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::TRAMPLE
  .WORD BATTLE_ACTIONS::TRAMPLE
  .WORD BATTLE_ACTIONS::TRAMPLE
  .WORD BATTLE_ACTIONS::TEAR_INTO
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $04 ;Item drop rate
  .BYTE ITEM::SALT_PACKET ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $00 ;The Flag
  PADDEDEBTEXT "Clumsy Robot", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::METAL
  .WORD $0047 ;Battle sprite
  .WORD OVERWORLD_SPRITE::CAPSULE
  .BYTE $07 ;Run flag
  .WORD 962 ;HP
  .WORD 0 ;PP
  .DWORD 32378 ;Experience
  .WORD 2081 ;Money
  .WORD EVENT_SCRIPT::EVENT_027
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_UGOKANAKU
  .BYTE $04 ;Palette
  .BYTE 46 ;Level
  .BYTE MUSIC::VS_STARMAN_JR
  .WORD 88 ;Offense
  .WORD 137 ;Defense
  .BYTE 83 ;Speed
  .BYTE 30 ;Guts
  .BYTE 49 ;Luck
  .BYTE $02 ;Weakness to fire
  .BYTE $02 ;Weakness to ice
  .BYTE $02 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $02 ;Weakness to hypnosis/brainshock
  .BYTE $05 ;Miss rate
  .BYTE $03 ;Action order
  .WORD BATTLE_ACTIONS::LOSE_GEAR_AND_BOLTS
  .WORD BATTLE_ACTIONS::REAPPLY_BANDAGE
  .WORD BATTLE_ACTIONS::FIRE_MISSILE_DIZZILY
  .WORD BATTLE_ACTIONS::ENEMY_EXTENDER
  .WORD BATTLE_ACTIONS::RUNAWAY_FIVE_EVENT ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE ENEMY::CLUMSY_ROBOT_2 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $01 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::PSI_SHIELD
  .BYTE $01 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Soul Consuming Flame", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0018 ;Battle sprite
  .WORD OVERWORLD_SPRITE::ROBO_PUMP
  .BYTE $07 ;Run flag
  .WORD 602 ;HP
  .WORD 0 ;PP
  .DWORD 37618 ;Experience
  .WORD 768 ;Money
  .WORD EVENT_SCRIPT::EVENT_027
  .DWORD MSG_BTL_AP_FUSAGARETA
  .DWORD MSG_BTL_KIZETU_ON_UGOKANAKU
  .BYTE $01 ;Palette
  .BYTE 59 ;Level
  .BYTE MUSIC::VS_YOUR_SANCTUARY_BOSS
  .WORD 131 ;Offense
  .WORD 262 ;Defense
  .BYTE 30 ;Speed
  .BYTE 14 ;Guts
  .BYTE 8 ;Luck
  .BYTE $03 ;Weakness to fire
  .BYTE $00 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $02 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::EDGE_CLOSER
  .WORD BATTLE_ACTIONS::FIRE_BREATH
  .WORD BATTLE_ACTIONS::SPEW_FIREBALL
  .WORD BATTLE_ACTIONS::FIRE_SPRAY
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $01 ;Item drop rate
  .BYTE ITEM::METEOTITE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Demonic Petunia", 25
  .BYTE GENDER::FEMALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0017 ;Battle sprite
  .WORD OVERWORLD_SPRITE::DEMONIC_PETUNIA
  .BYTE $07 ;Run flag
  .WORD 478 ;HP
  .WORD 0 ;PP
  .DWORD 15171 ;Experience
  .WORD 724 ;Money
  .WORD EVENT_SCRIPT::EVENT_029
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $01 ;Palette
  .BYTE 50 ;Level
  .BYTE MUSIC::VS_CAVE_BOY
  .WORD 102 ;Offense
  .WORD 111 ;Defense
  .BYTE 26 ;Speed
  .BYTE 5 ;Guts
  .BYTE 9 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $03 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $03 ;Weakness to paralysis
  .BYTE $02 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::EDGE_CLOSER
  .WORD BATTLE_ACTIONS::EXTINGUISHING_BLAST
  .WORD BATTLE_ACTIONS::EDGE_CLOSER
  .WORD BATTLE_ACTIONS::SCATTER_POLLEN
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $01 ;Item drop rate
  .BYTE ITEM::SPICY_JERKY ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $02 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Ranboob", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0009 ;Battle sprite
  .WORD OVERWORLD_SPRITE::RANBOOB
  .BYTE $07 ;Run flag
  .WORD 232 ;HP
  .WORD 42 ;PP
  .DWORD 2486 ;Experience
  .WORD 158 ;Money
  .WORD EVENT_SCRIPT::EVENT_021
  .DWORD MSG_BTL_AP_ATTESHIMATTA
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $09 ;Palette
  .BYTE 24 ;Level
  .BYTE MUSIC::VS_CRANKY_LADY
  .WORD 41 ;Offense
  .WORD 63 ;Defense
  .BYTE 20 ;Speed
  .BYTE 1 ;Guts
  .BYTE 9 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $02 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $03 ;Action order
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::PSI_SHIELD_ALPHA
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::WONDERFUL_POWDER
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $1F ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $01 ;Item drop rate
  .BYTE ITEM::PICNIC_LUNCH ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Li'l UFO", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::METAL
  .WORD $002B ;Battle sprite
  .WORD OVERWORLD_SPRITE::LIL_UFO
  .BYTE $06 ;Run flag
  .WORD 82 ;HP
  .WORD 0 ;PP
  .DWORD 223 ;Experience
  .WORD 14 ;Money
  .WORD EVENT_SCRIPT::EVENT_023
  .DWORD MSG_BTL_AP_FUSAGARETA
  .DWORD MSG_BTL_KIZETU_ON_HAKAI
  .BYTE $02 ;Palette
  .BYTE 12 ;Level
  .BYTE MUSIC::VS_CRANKY_LADY
  .WORD 18 ;Offense
  .WORD 17 ;Defense
  .BYTE 53 ;Speed
  .BYTE 13 ;Guts
  .BYTE 8 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $02 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $03 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::FIRE_BEAM
  .WORD BATTLE_ACTIONS::FIRE_BEAM
  .WORD BATTLE_ACTIONS::NIGHT_TIME_STUFFINESS_BEAM
  .WORD BATTLE_ACTIONS::FIRE_BEAM
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $02 ;Item drop rate
  .BYTE ITEM::SKIP_SANDWICH ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $02 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "High-class UFO", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::METAL
  .WORD $002B ;Battle sprite
  .WORD OVERWORLD_SPRITE::LIL_UFO
  .BYTE $07 ;Run flag
  .WORD 433 ;HP
  .WORD 72 ;PP
  .DWORD 12385 ;Experience
  .WORD 456 ;Money
  .WORD EVENT_SCRIPT::EVENT_023
  .DWORD MSG_BTL_AP_FUSAGARETA
  .DWORD MSG_BTL_KIZETU_ON_HAKAI
  .BYTE $0F ;Palette
  .BYTE 47 ;Level
  .BYTE MUSIC::VS_SPINNING_ROBO
  .WORD 93 ;Offense
  .WORD 103 ;Defense
  .BYTE 60 ;Speed
  .BYTE 15 ;Guts
  .BYTE 24 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $02 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $03 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::FIRE_BEAM
  .WORD BATTLE_ACTIONS::FIRE_BEAM
  .WORD BATTLE_ACTIONS::DISRUPT_SENSES
  .WORD BATTLE_ACTIONS::PSI_PSI_SHIELD_ALPHA
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $23 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $02 ;Item drop rate
  .BYTE ITEM::SKIP_SANDWICH_DX ;Item dropped
  .BYTE INITIAL_STATUS::SHIELD
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $04 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Noose Man", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0051 ;Battle sprite
  .WORD OVERWORLD_SPRITE::NOOSE_MAN
  .BYTE $07 ;Run flag
  .WORD 231 ;HP
  .WORD 0 ;PP
  .DWORD 1990 ;Experience
  .WORD 220 ;Money
  .WORD EVENT_SCRIPT::EVENT_021
  .DWORD MSG_BTL_AP_FUSAGARETA
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $05 ;Palette
  .BYTE 26 ;Level
  .BYTE MUSIC::VS_STRUTTIN_EVIL_MUSHROOM
  .WORD 47 ;Offense
  .WORD 52 ;Defense
  .BYTE 18 ;Speed
  .BYTE 5 ;Guts
  .BYTE 4 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $02 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $03 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::BINDING_ATTACK
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $04 ;Item drop rate
  .BYTE ITEM::CARTON_OF_CREAM ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Robo-pump", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::METAL
  .WORD $003E ;Battle sprite
  .WORD OVERWORLD_SPRITE::ROBO_PUMP
  .BYTE $07 ;Run flag
  .WORD 431 ;HP
  .WORD 0 ;PP
  .DWORD 4797 ;Experience
  .WORD 349 ;Money
  .WORD EVENT_SCRIPT::EVENT_027
  .DWORD MSG_BTL_AP_FUSAGARETA
  .DWORD MSG_BTL_KIZETU_ON_KUDAKERU
  .BYTE $03 ;Palette
  .BYTE 36 ;Level
  .BYTE MUSIC::VS_STRUTTIN_EVIL_MUSHROOM
  .WORD 70 ;Offense
  .WORD 113 ;Defense
  .BYTE 19 ;Speed
  .BYTE 5 ;Guts
  .BYTE 4 ;Luck
  .BYTE $02 ;Weakness to fire
  .BYTE $02 ;Weakness to ice
  .BYTE $02 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $02 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $02 ;Action order
  .WORD BATTLE_ACTIONS::WHISPER_3
  .WORD BATTLE_ACTIONS::MURMUR_2
  .WORD BATTLE_ACTIONS::MUTTER_1
  .WORD BATTLE_ACTIONS::ENEMY_EXTENDER
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE ENEMY::ROBO_PUMP_2 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $01 ;Item drop rate
  .BYTE ITEM::SUPER_BOMB ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Plain Crocodile", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0054 ;Battle sprite
  .WORD OVERWORLD_SPRITE::PLAIN_CROCODILE
  .BYTE $07 ;Run flag
  .WORD 234 ;HP
  .WORD 0 ;PP
  .DWORD 1928 ;Experience
  .WORD 62 ;Money
  .WORD EVENT_SCRIPT::EVENT_029
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $05 ;Palette
  .BYTE 24 ;Level
  .BYTE MUSIC::VS_CRANKY_LADY
  .WORD 40 ;Offense
  .WORD 55 ;Defense
  .BYTE 10 ;Speed
  .BYTE 1 ;Guts
  .BYTE 5 ;Luck
  .BYTE $02 ;Weakness to fire
  .BYTE $00 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $02 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::EDGE_CLOSER
  .WORD BATTLE_ACTIONS::BITE
  .WORD BATTLE_ACTIONS::SWING_TAIL
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::METEORNIUM ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Strong Crocodile", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0054 ;Battle sprite
  .WORD OVERWORLD_SPRITE::PLAIN_CROCODILE
  .BYTE $07 ;Run flag
  .WORD 417 ;HP
  .WORD 0 ;PP
  .DWORD 10122 ;Experience
  .WORD 495 ;Money
  .WORD EVENT_SCRIPT::EVENT_029
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $15 ;Palette
  .BYTE 43 ;Level
  .BYTE MUSIC::VS_CRANKY_LADY
  .WORD 85 ;Offense
  .WORD 131 ;Defense
  .BYTE 17 ;Speed
  .BYTE 5 ;Guts
  .BYTE 6 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $02 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::EDGE_CLOSER
  .WORD BATTLE_ACTIONS::BITE
  .WORD BATTLE_ACTIONS::SWING_TAIL
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $01 ;Item drop rate
  .BYTE ITEM::SUPER_BOMB ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Hard Crocodile", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0054 ;Battle sprite
  .WORD OVERWORLD_SPRITE::PLAIN_CROCODILE
  .BYTE $07 ;Run flag
  .WORD 522 ;HP
  .WORD 0 ;PP
  .DWORD 19484 ;Experience
  .WORD 692 ;Money
  .WORD EVENT_SCRIPT::EVENT_029
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $03 ;Palette
  .BYTE 55 ;Level
  .BYTE MUSIC::VS_MASTER_BELCH
  .WORD 110 ;Offense
  .WORD 128 ;Defense
  .BYTE 23 ;Speed
  .BYTE 10 ;Guts
  .BYTE 4 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $02 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::BITE
  .WORD BATTLE_ACTIONS::SWING_TAIL
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $01 ;Item drop rate
  .BYTE ITEM::SUPER_PLUSH_BEAR ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "No Good Fly", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::INSECT
  .WORD $0059 ;Battle sprite
  .WORD OVERWORLD_SPRITE::NO_GOOD_FLY
  .BYTE $07 ;Run flag
  .WORD 100 ;HP
  .WORD 0 ;PP
  .DWORD 415 ;Experience
  .WORD 26 ;Money
  .WORD EVENT_SCRIPT::EVENT_023
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $15 ;Palette
  .BYTE 15 ;Level
  .BYTE MUSIC::VS_STRUTTIN_EVIL_MUSHROOM
  .WORD 23 ;Offense
  .WORD 13 ;Defense
  .BYTE 10 ;Speed
  .BYTE 3 ;Guts
  .BYTE 0 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $00 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $00 ;Weakness to paralysis
  .BYTE $03 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::SAY_SOMETHING_NASTY
  .WORD BATTLE_ACTIONS::BASH
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 1 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $02 ;Item drop rate
  .BYTE ITEM::BOILED_EGG ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $02 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Mostly Bad Fly", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::INSECT
  .WORD $0059 ;Battle sprite
  .WORD OVERWORLD_SPRITE::NO_GOOD_FLY
  .BYTE $07 ;Run flag
  .WORD 141 ;HP
  .WORD 0 ;PP
  .DWORD 1116 ;Experience
  .WORD 84 ;Money
  .WORD EVENT_SCRIPT::EVENT_023
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $02 ;Palette
  .BYTE 19 ;Level
  .BYTE MUSIC::VS_MASTER_BARF
  .WORD 32 ;Offense
  .WORD 16 ;Defense
  .BYTE 15 ;Speed
  .BYTE 4 ;Guts
  .BYTE 0 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $00 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $00 ;Weakness to paralysis
  .BYTE $02 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::SAY_SOMETHING_NASTY
  .WORD BATTLE_ACTIONS::BASH
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $02 ;Item drop rate
  .BYTE ITEM::PIZZA ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Spiteful Crow", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0010 ;Battle sprite
  .WORD OVERWORLD_SPRITE::SPITEFUL_CROW
  .BYTE $07 ;Run flag
  .WORD 24 ;HP
  .WORD 0 ;PP
  .DWORD 3 ;Experience
  .WORD 5 ;Money
  .WORD EVENT_SCRIPT::EVENT_025
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $01 ;Palette
  .BYTE 27 ;Level
  .BYTE MUSIC::VS_RUNAWAY_DOG
  .WORD 5 ;Offense
  .WORD 3 ;Defense
  .BYTE 77 ;Speed
  .BYTE 0 ;Guts
  .BYTE 1 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $00 ;Weakness to ice
  .BYTE $00 ;Weakness to flash
  .BYTE $00 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::PECK
  .WORD BATTLE_ACTIONS::PECK
  .WORD BATTLE_ACTIONS::GRIN
  .WORD BATTLE_ACTIONS::STEAL
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $07 ;Item drop rate
  .BYTE ITEM::COOKIE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $00 ;The Flag
  PADDEDEBTEXT "my pet", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0000 ;Battle sprite
  .WORD OVERWORLD_SPRITE::NONE
  .BYTE $07 ;Run flag
  .WORD 999 ;HP
  .WORD 0 ;PP
  .DWORD 0 ;Experience
  .WORD 0 ;Money
  .WORD EVENT_SCRIPT::EVENT_000
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_NULL
  .BYTE $00 ;Palette
  .BYTE 5 ;Level
  .BYTE MUSIC::NONE
  .WORD 4 ;Offense
  .WORD 99 ;Defense
  .BYTE 10 ;Speed
  .BYTE 40 ;Guts
  .BYTE 24 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::BITING_ATTACK
  .WORD BATTLE_ACTIONS::LUNGE_FORWARD
  .WORD BATTLE_ACTIONS::CHARGE
  .WORD BATTLE_ACTIONS::BARK
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 0 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $00 ;The Flag
  PADDEDEBTEXT "Pokey", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0000 ;Battle sprite
  .WORD OVERWORLD_SPRITE::NONE
  .BYTE $07 ;Run flag
  .WORD 999 ;HP
  .WORD 0 ;PP
  .DWORD 0 ;Experience
  .WORD 0 ;Money
  .WORD EVENT_SCRIPT::EVENT_000
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_NULL
  .BYTE $00 ;Palette
  .BYTE 5 ;Level
  .BYTE MUSIC::NONE
  .WORD 1 ;Offense
  .WORD 99 ;Defense
  .BYTE 5 ;Speed
  .BYTE 1 ;Guts
  .BYTE 1 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::BE_POKEY
  .WORD BATTLE_ACTIONS::BE_POKEY
  .WORD BATTLE_ACTIONS::BE_POKEY
  .WORD BATTLE_ACTIONS::BE_POKEY
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 0 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $00 ;The Flag
  PADDEDEBTEXT "Picky", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0000 ;Battle sprite
  .WORD OVERWORLD_SPRITE::NONE
  .BYTE $07 ;Run flag
  .WORD 999 ;HP
  .WORD 0 ;PP
  .DWORD 0 ;Experience
  .WORD 0 ;Money
  .WORD EVENT_SCRIPT::EVENT_000
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_NULL
  .BYTE $00 ;Palette
  .BYTE 5 ;Level
  .BYTE MUSIC::NONE
  .WORD 3 ;Offense
  .WORD 99 ;Defense
  .BYTE 25 ;Speed
  .BYTE 10 ;Guts
  .BYTE 1 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::CHANT_SPELL
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 0 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $00 ;The Flag
  PADDEDEBTEXT "Tony", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0000 ;Battle sprite
  .WORD OVERWORLD_SPRITE::NONE
  .BYTE $07 ;Run flag
  .WORD 999 ;HP
  .WORD 0 ;PP
  .DWORD 0 ;Experience
  .WORD 0 ;Money
  .WORD EVENT_SCRIPT::EVENT_000
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_NULL
  .BYTE $00 ;Palette
  .BYTE 5 ;Level
  .BYTE MUSIC::NONE
  .WORD 4 ;Offense
  .WORD 99 ;Defense
  .BYTE 12 ;Speed
  .BYTE 20 ;Guts
  .BYTE 8 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::NO_EFFECT_TONY
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 0 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $00 ;The Flag
  PADDEDEBTEXT "Bubble Monkey", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0000 ;Battle sprite
  .WORD OVERWORLD_SPRITE::NONE
  .BYTE $07 ;Run flag
  .WORD 999 ;HP
  .WORD 0 ;PP
  .DWORD 0 ;Experience
  .WORD 0 ;Money
  .WORD EVENT_SCRIPT::EVENT_000
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_NULL
  .BYTE $00 ;Palette
  .BYTE 5 ;Level
  .BYTE MUSIC::NONE
  .WORD 7 ;Offense
  .WORD 99 ;Defense
  .BYTE 20 ;Speed
  .BYTE 5 ;Guts
  .BYTE 30 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $02 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::SCRATCH_HEAD
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 0 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $00 ;The Flag
  PADDEDEBTEXT "Dungeon Man", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0000 ;Battle sprite
  .WORD OVERWORLD_SPRITE::NONE
  .BYTE $07 ;Run flag
  .WORD 999 ;HP
  .WORD 0 ;PP
  .DWORD 0 ;Experience
  .WORD 0 ;Money
  .WORD EVENT_SCRIPT::EVENT_000
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_NULL
  .BYTE $00 ;Palette
  .BYTE 5 ;Level
  .BYTE MUSIC::NONE
  .WORD 255 ;Offense
  .WORD 99 ;Defense
  .BYTE 1 ;Speed
  .BYTE 30 ;Guts
  .BYTE 1 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::HUG
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 0 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $00 ;The Flag
  PADDEDEBTEXT "Flying Man", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0000 ;Battle sprite
  .WORD OVERWORLD_SPRITE::NONE
  .BYTE $07 ;Run flag
  .WORD 300 ;HP
  .WORD 0 ;PP
  .DWORD 0 ;Experience
  .WORD 0 ;Money
  .WORD EVENT_SCRIPT::EVENT_000
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_SYS_NPCDEAD_FLYINGMAN
  .BYTE $00 ;Palette
  .BYTE 99 ;Level
  .BYTE MUSIC::NONE
  .WORD 95 ;Offense
  .WORD 92 ;Defense
  .BYTE 100 ;Speed
  .BYTE 50 ;Guts
  .BYTE 24 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $02 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::PUNCH
  .WORD BATTLE_ACTIONS::PUNCH
  .WORD BATTLE_ACTIONS::CHARGE
  .WORD BATTLE_ACTIONS::CHARGE
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 0 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Teddy Bear", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0000 ;Battle sprite
  .WORD OVERWORLD_SPRITE::NONE
  .BYTE $07 ;Run flag
  .WORD 100 ;HP
  .WORD 0 ;PP
  .DWORD 0 ;Experience
  .WORD 0 ;Money
  .WORD EVENT_SCRIPT::EVENT_000
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_SYS_NPCDEAD_NUIGURUMI
  .BYTE $00 ;Palette
  .BYTE 5 ;Level
  .BYTE MUSIC::NONE
  .WORD 7 ;Offense
  .WORD 20 ;Defense
  .BYTE 0 ;Speed
  .BYTE 5 ;Guts
  .BYTE 8 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $02 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $03 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::NO_EFFECT
  .WORD BATTLE_ACTIONS::NO_EFFECT
  .WORD BATTLE_ACTIONS::NO_EFFECT
  .WORD BATTLE_ACTIONS::NO_EFFECT
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 0 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Super Plush Bear", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0000 ;Battle sprite
  .WORD OVERWORLD_SPRITE::NONE
  .BYTE $07 ;Run flag
  .WORD 400 ;HP
  .WORD 0 ;PP
  .DWORD 0 ;Experience
  .WORD 0 ;Money
  .WORD EVENT_SCRIPT::EVENT_000
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_SYS_NPCDEAD_NUIGURUMI_S
  .BYTE $00 ;Palette
  .BYTE 5 ;Level
  .BYTE MUSIC::NONE
  .WORD 7 ;Offense
  .WORD 50 ;Defense
  .BYTE 0 ;Speed
  .BYTE 5 ;Guts
  .BYTE 8 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $02 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $03 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::NO_EFFECT
  .WORD BATTLE_ACTIONS::NO_EFFECT
  .WORD BATTLE_ACTIONS::NO_EFFECT
  .WORD BATTLE_ACTIONS::NO_EFFECT
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 0 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $00 ;The Flag
  PADDEDEBTEXT "Master Belch", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0062 ;Battle sprite
  .WORD OVERWORLD_SPRITE::MASTER_BELCH
  .BYTE $07 ;Run flag
  .WORD 650 ;HP
  .WORD 0 ;PP
  .DWORD 12509 ;Experience
  .WORD 664 ;Money
  .WORD EVENT_SCRIPT::EVENT_029
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_M
  .BYTE $06 ;Palette
  .BYTE 27 ;Level
  .BYTE MUSIC::VS_MASTER_BELCH
  .WORD 50 ;Offense
  .WORD 88 ;Defense
  .BYTE 16 ;Speed
  .BYTE 20 ;Guts
  .BYTE 61 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $02 ;Weakness to paralysis
  .BYTE $00 ;Weakness to hypnosis/brainshock
  .BYTE $00 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::WOLFED_DOWN_FLY_HONEY
  .WORD BATTLE_ACTIONS::WOLFED_DOWN_FLY_HONEY
  .WORD BATTLE_ACTIONS::WOLFED_DOWN_FLY_HONEY
  .WORD BATTLE_ACTIONS::WOLFED_DOWN_FLY_HONEY
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $01 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $01 ;Death style
  .BYTE $00 ;Row
  .BYTE $03 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Insane Cultist", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $003F ;Battle sprite
  .WORD OVERWORLD_SPRITE::INSANE_CULTIST
  .BYTE $07 ;Run flag
  .WORD 94 ;HP
  .WORD 0 ;PP
  .DWORD 353 ;Experience
  .WORD 33 ;Money
  .WORD EVENT_SCRIPT::EVENT_021
  .DWORD MSG_BTL_AP_TSUKAMATTA
  .DWORD MSG_BTL_KIZETU_ON_WARENI
  .BYTE $03 ;Palette
  .BYTE 13 ;Level
  .BYTE MUSIC::VS_CAVE_BOY
  .WORD 19 ;Offense
  .WORD 25 ;Defense
  .BYTE 8 ;Speed
  .BYTE 20 ;Guts
  .BYTE 64 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::NO_EFFECT
  .WORD BATTLE_ACTIONS::NO_EFFECT
  .WORD BATTLE_ACTIONS::NO_EFFECT
  .WORD BATTLE_ACTIONS::NO_EFFECT
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 0 ;IQ
  .BYTE $01 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::PSI_CARAMEL ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $03 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $00 ;The Flag
  PADDEDEBTEXT "Dept. Store Spook", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $003D ;Battle sprite
  .WORD OVERWORLD_SPRITE::WHIRLING_ROBO
  .BYTE $07 ;Run flag
  .WORD 610 ;HP
  .WORD 290 ;PP
  .DWORD 24291 ;Experience
  .WORD 1648 ;Money
  .WORD EVENT_SCRIPT::EVENT_023
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_M
  .BYTE $16 ;Palette
  .BYTE 42 ;Level
  .BYTE MUSIC::VS_CAVE_BOY
  .WORD 82 ;Offense
  .WORD 135 ;Defense
  .BYTE 19 ;Speed
  .BYTE 24 ;Guts
  .BYTE 62 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $02 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $00 ;Miss rate
  .BYTE $03 ;Action order
  .WORD BATTLE_ACTIONS::PSI_MAGNET_OMEGA
  .WORD BATTLE_ACTIONS::PSI_BRAINSHOCK_ALPHA
  .WORD BATTLE_ACTIONS::PSI_FREEZE_ALPHA
  .WORD BATTLE_ACTIONS::ENEMY_EXTENDER
  .WORD NULL ;Final action
  .BYTE $2E ;Action 1 argument
  .BYTE $31 ;Action 2 argument
  .BYTE $09 ;Action 3 argument
  .BYTE ENEMY::DEPT_STORE_SPOOK_1 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 0 ;IQ
  .BYTE $01 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $01 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $00 ;The Flag
  PADDEDEBTEXT "|'s Nightmare", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::NORMAL
  .WORD $004F ;Battle sprite
  .WORD OVERWORLD_SPRITE::EVIL_MANI_MANI
  .BYTE $07 ;Run flag
  .WORD 1654 ;HP
  .WORD 882 ;PP
  .DWORD 89004 ;Experience
  .WORD 4442 ;Money
  .WORD EVENT_SCRIPT::EVENT_000
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_UGOKANAKU
  .BYTE $05 ;Palette
  .BYTE 71 ;Level
  .BYTE MUSIC::VS_STARMAN_JR
  .WORD 172 ;Offense
  .WORD 253 ;Defense
  .BYTE 31 ;Speed
  .BYTE 1 ;Guts
  .BYTE 80 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $02 ;Weakness to ice
  .BYTE $02 ;Weakness to flash
  .BYTE $03 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $00 ;Miss rate
  .BYTE $02 ;Action order
  .WORD BATTLE_ACTIONS::PSI_ROCKIN_ALPHA
  .WORD BATTLE_ACTIONS::PSI_LIFEUP_BETA
  .WORD BATTLE_ACTIONS::PSI_ROCKIN_OMEGA
  .WORD BATTLE_ACTIONS::ENEMY_EXTENDER
  .WORD NULL ;Final action
  .BYTE $01 ;Action 1 argument
  .BYTE $18 ;Action 2 argument
  .BYTE $04 ;Action 3 argument
  .BYTE ENEMY::YOUR_NIGHTMARE_1 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $01 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $01 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $00 ;The Flag
  PADDEDEBTEXT "Mr. Carpainter", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0021 ;Battle sprite
  .WORD OVERWORLD_SPRITE::MR_CARPAINTER
  .BYTE $07 ;Run flag
  .WORD 262 ;HP
  .WORD 70 ;PP
  .DWORD 1412 ;Experience
  .WORD 195 ;Money
  .WORD EVENT_SCRIPT::EVENT_021
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_WARENI
  .BYTE $01 ;Palette
  .BYTE 21 ;Level
  .BYTE MUSIC::VS_STARMAN_JR
  .WORD 33 ;Offense
  .WORD 45 ;Defense
  .BYTE 8 ;Speed
  .BYTE 13 ;Guts
  .BYTE 72 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $02 ;Action order
  .WORD BATTLE_ACTIONS::CRASHING_BOOM_BANG
  .WORD BATTLE_ACTIONS::PSI_PSI_SHIELD_ALPHA
  .WORD BATTLE_ACTIONS::PAINT_ATTACK
  .WORD BATTLE_ACTIONS::ENEMY_EXTENDER
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $23 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE ENEMY::MR_CARPAINTER_1 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $01 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $01 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $00 ;The Flag
  PADDEDEBTEXT "Carbon Dog", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0028 ;Battle sprite
  .WORD OVERWORLD_SPRITE::YOUR_SANCTUARY_POINT_BOSS
  .BYTE $07 ;Run flag
  .WORD 1672 ;HP
  .WORD 0 ;PP
  .DWORD 0 ;Experience
  .WORD 0 ;Money
  .WORD EVENT_SCRIPT::EVENT_023
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $01 ;Palette
  .BYTE 70 ;Level
  .BYTE MUSIC::VS_YOUR_SANCTUARY_BOSS
  .WORD 159 ;Offense
  .WORD 174 ;Defense
  .BYTE 31 ;Speed
  .BYTE 52 ;Guts
  .BYTE 53 ;Luck
  .BYTE $03 ;Weakness to fire
  .BYTE $02 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $02 ;Weakness to paralysis
  .BYTE $02 ;Weakness to hypnosis/brainshock
  .BYTE $00 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::FIRE_SPRAY
  .WORD BATTLE_ACTIONS::ENEMY_EXTENDER
  .WORD BATTLE_ACTIONS::CHARGE
  .WORD BATTLE_ACTIONS::HOWL
  .WORD BATTLE_ACTIONS::GIVE_OFF_RAINBOW ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE ENEMY::CARBON_DOG_1 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE ENEMY::DIAMOND_DOG_1 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $01 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $01 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Chomposaur", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::NORMAL
  .WORD $000E ;Battle sprite
  .WORD OVERWORLD_SPRITE::WETNOSAUR
  .BYTE $07 ;Run flag
  .WORD 1288 ;HP
  .WORD 320 ;PP
  .DWORD 44378 ;Experience
  .WORD 896 ;Money
  .WORD EVENT_SCRIPT::EVENT_029
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $09 ;Palette
  .BYTE 62 ;Level
  .BYTE MUSIC::VS_CAVE_BOY
  .WORD 139 ;Offense
  .WORD 183 ;Defense
  .BYTE 17 ;Speed
  .BYTE 3 ;Guts
  .BYTE 16 ;Luck
  .BYTE $03 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $02 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $02 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::STOMP
  .WORD BATTLE_ACTIONS::ENEMY_EXTENDER
  .WORD BATTLE_ACTIONS::PSI_FIRE_BETA
  .WORD BATTLE_ACTIONS::PSI_FIRE_GAMMA
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE ENEMY::CHOMPOSAUR_1 ;Action 2 argument
  .BYTE $06 ;Action 3 argument
  .BYTE $07 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::MAGIC_FRY_PAN ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $00 ;The Flag
  PADDEDEBTEXT "Titanic Ant", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::INSECT
  .WORD $0049 ;Battle sprite
  .WORD OVERWORLD_SPRITE::YOUR_SANCTUARY_POINT_BOSS
  .BYTE $07 ;Run flag
  .WORD 235 ;HP
  .WORD 102 ;PP
  .DWORD 685 ;Experience
  .WORD 150 ;Money
  .WORD EVENT_SCRIPT::EVENT_023
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $04 ;Palette
  .BYTE 13 ;Level
  .BYTE MUSIC::VS_YOUR_SANCTUARY_BOSS
  .WORD 19 ;Offense
  .WORD 23 ;Defense
  .BYTE 6 ;Speed
  .BYTE 9 ;Guts
  .BYTE 72 ;Luck
  .BYTE $02 ;Weakness to fire
  .BYTE $02 ;Weakness to ice
  .BYTE $02 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $00 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::ENEMY_EXTENDER
  .WORD BATTLE_ACTIONS::BITING_ATTACK
  .WORD BATTLE_ACTIONS::BITE
  .WORD BATTLE_ACTIONS::PSI_SHIELD_ALPHA
  .WORD NULL ;Final action
  .BYTE ENEMY::TITANIC_ANT_1 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $1F ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $01 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $01 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Gigantic Ant", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::INSECT
  .WORD $0049 ;Battle sprite
  .WORD OVERWORLD_SPRITE::GIGANTIC_ANT
  .BYTE $07 ;Run flag
  .WORD 308 ;HP
  .WORD 81 ;PP
  .DWORD 3980 ;Experience
  .WORD 304 ;Money
  .WORD EVENT_SCRIPT::EVENT_020
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $01 ;Palette
  .BYTE 30 ;Level
  .BYTE MUSIC::VS_CAVE_BOY
  .WORD 54 ;Offense
  .WORD 112 ;Defense
  .BYTE 17 ;Speed
  .BYTE 5 ;Guts
  .BYTE 6 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $00 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::PSI_PARALYSIS_ALPHA
  .WORD BATTLE_ACTIONS::FLASH_SMILE
  .WORD BATTLE_ACTIONS::CALL_FOR_HELP
  .WORD BATTLE_ACTIONS::ENEMY_EXTENDER
  .WORD NULL ;Final action
  .BYTE $2F ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE ENEMY::GIGANTIC_ANT_1 ;Action 3 argument
  .BYTE ENEMY::GIGANTIC_ANT_1 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $02 ;Item drop rate
  .BYTE ITEM::DOUBLE_BURGER ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $02 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $00 ;The Flag
  PADDEDEBTEXT "Shrooom!", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::NORMAL
  .WORD $000B ;Battle sprite
  .WORD OVERWORLD_SPRITE::YOUR_SANCTUARY_POINT_BOSS
  .BYTE $07 ;Run flag
  .WORD 1700 ;HP
  .WORD 112 ;PP
  .DWORD 96323 ;Experience
  .WORD 4086 ;Money
  .WORD EVENT_SCRIPT::EVENT_023
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $09 ;Palette
  .BYTE 48 ;Level
  .BYTE MUSIC::VS_YOUR_SANCTUARY_BOSS
  .WORD 95 ;Offense
  .WORD 154 ;Defense
  .BYTE 18 ;Speed
  .BYTE 32 ;Guts
  .BYTE 72 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $02 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $03 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $00 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::SCATTER_SPORES
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::DISRUPT_SENSES
  .WORD BATTLE_ACTIONS::ENEMY_EXTENDER
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE ENEMY::SHROOOM_1 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $01 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $01 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $00 ;The Flag
  PADDEDEBTEXT "Plague Rat of Doom", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $004B ;Battle sprite
  .WORD OVERWORLD_SPRITE::YOUR_SANCTUARY_POINT_BOSS
  .BYTE $07 ;Run flag
  .WORD 1827 ;HP
  .WORD 60 ;PP
  .DWORD 115272 ;Experience
  .WORD 4464 ;Money
  .WORD EVENT_SCRIPT::EVENT_023
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $04 ;Palette
  .BYTE 47 ;Level
  .BYTE MUSIC::VS_YOUR_SANCTUARY_BOSS
  .WORD 71 ;Offense
  .WORD 180 ;Defense
  .BYTE 19 ;Speed
  .BYTE 250 ;Guts
  .BYTE 45 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $02 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $02 ;Weakness to paralysis
  .BYTE $02 ;Weakness to hypnosis/brainshock
  .BYTE $00 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::ENEMY_EXTENDER
  .WORD BATTLE_ACTIONS::GRIN
  .WORD BATTLE_ACTIONS::BASH
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE ENEMY::PLAGUE_RAT_OF_DOOM_1 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $01 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $01 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $00 ;The Flag
  PADDEDEBTEXT "Mondo Mole", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0053 ;Battle sprite
  .WORD OVERWORLD_SPRITE::YOUR_SANCTUARY_POINT_BOSS
  .BYTE $07 ;Run flag
  .WORD 498 ;HP
  .WORD 161 ;PP
  .DWORD 5791 ;Experience
  .WORD 400 ;Money
  .WORD EVENT_SCRIPT::EVENT_023
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $05 ;Palette
  .BYTE 23 ;Level
  .BYTE MUSIC::VS_YOUR_SANCTUARY_BOSS
  .WORD 37 ;Offense
  .WORD 50 ;Defense
  .BYTE 9 ;Speed
  .BYTE 15 ;Guts
  .BYTE 36 ;Luck
  .BYTE $02 ;Weakness to fire
  .BYTE $03 ;Weakness to ice
  .BYTE $00 ;Weakness to flash
  .BYTE $00 ;Weakness to paralysis
  .BYTE $02 ;Weakness to hypnosis/brainshock
  .BYTE $00 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::PSI_PSI_SHIELD_ALPHA
  .WORD BATTLE_ACTIONS::PSI_OFFENSE_UP_ALPHA
  .WORD BATTLE_ACTIONS::CLAW
  .WORD BATTLE_ACTIONS::ENEMY_EXTENDER
  .WORD NULL ;Final action
  .BYTE $23 ;Action 1 argument
  .BYTE $27 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE ENEMY::MONDO_MOLE_1 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $01 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $01 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Guardian Digger", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0053 ;Battle sprite
  .WORD OVERWORLD_SPRITE::YOUR_SANCTUARY_POINT_BOSS
  .BYTE $07 ;Run flag
  .WORD 386 ;HP
  .WORD 110 ;PP
  .DWORD 17301 ;Experience
  .WORD 1467 ;Money
  .WORD EVENT_SCRIPT::EVENT_023
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $15 ;Palette
  .BYTE 32 ;Level
  .BYTE MUSIC::VS_YOUR_SANCTUARY_BOSS
  .WORD 59 ;Offense
  .WORD 129 ;Defense
  .BYTE 17 ;Speed
  .BYTE 21 ;Guts
  .BYTE 55 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $00 ;Weakness to flash
  .BYTE $02 ;Weakness to paralysis
  .BYTE $02 ;Weakness to hypnosis/brainshock
  .BYTE $00 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::TEAR_INTO
  .WORD BATTLE_ACTIONS::ENEMY_EXTENDER
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::PSI_LIFEUP_ALPHA
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE ENEMY::GUARDIAN_DIGGER_1 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $17 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $01 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $01 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $00 ;The Flag
  PADDEDEBTEXT "Kraken", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0029 ;Battle sprite
  .WORD OVERWORLD_SPRITE::KRAKEN
  .BYTE $07 ;Run flag
  .WORD 1097 ;HP
  .WORD 176 ;PP
  .DWORD 79267 ;Experience
  .WORD 3049 ;Money
  .WORD EVENT_SCRIPT::EVENT_029
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_M
  .BYTE $01 ;Palette
  .BYTE 54 ;Level
  .BYTE MUSIC::VS_KRAKEN
  .WORD 105 ;Offense
  .WORD 166 ;Defense
  .BYTE 21 ;Speed
  .BYTE 1 ;Guts
  .BYTE 32 ;Luck
  .BYTE $02 ;Weakness to fire
  .BYTE $02 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $02 ;Weakness to hypnosis/brainshock
  .BYTE $00 ;Miss rate
  .BYTE $03 ;Action order
  .WORD BATTLE_ACTIONS::PSI_FLASH_BETA
  .WORD BATTLE_ACTIONS::FIRE_BREATH
  .WORD BATTLE_ACTIONS::GENERATE_TORNADO
  .WORD BATTLE_ACTIONS::ENEMY_EXTENDER
  .WORD NULL ;Final action
  .BYTE $12 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE ENEMY::KRAKEN_1 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $01 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Bionic Kraken", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0029 ;Battle sprite
  .WORD OVERWORLD_SPRITE::WHIRLING_ROBO
  .BYTE $07 ;Run flag
  .WORD 900 ;HP
  .WORD 60 ;PP
  .DWORD 50308 ;Experience
  .WORD 960 ;Money
  .WORD EVENT_SCRIPT::EVENT_023
  .DWORD MSG_BTL_AP_FUSAGARETA
  .DWORD MSG_BTL_KIZETU_ON_M
  .BYTE $18 ;Palette
  .BYTE 70 ;Level
  .BYTE MUSIC::VS_KRAKEN
  .WORD 155 ;Offense
  .WORD 195 ;Defense
  .BYTE 42 ;Speed
  .BYTE 1 ;Guts
  .BYTE 32 ;Luck
  .BYTE $02 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $02 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::NO_EFFECT
  .WORD BATTLE_ACTIONS::NO_EFFECT
  .WORD BATTLE_ACTIONS::NO_EFFECT
  .WORD BATTLE_ACTIONS::NO_EFFECT
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::GUTSY_BAT ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Starman", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0037 ;Battle sprite
  .WORD OVERWORLD_SPRITE::STARMAN
  .BYTE $07 ;Run flag
  .WORD 545 ;HP
  .WORD 155 ;PP
  .DWORD 23396 ;Experience
  .WORD 720 ;Money
  .WORD EVENT_SCRIPT::EVENT_026
  .DWORD MSG_BTL_AP_FUSAGARETA
  .DWORD MSG_BTL_KIZETU_ON_M
  .BYTE $02 ;Palette
  .BYTE 55 ;Level
  .BYTE MUSIC::VS_SPINNING_ROBO
  .WORD 103 ;Offense
  .WORD 126 ;Defense
  .BYTE 24 ;Speed
  .BYTE 25 ;Guts
  .BYTE 16 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $02 ;Weakness to flash
  .BYTE $02 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::PSI_SHIELD_ALPHA
  .WORD BATTLE_ACTIONS::FIRE_BEAM
  .WORD BATTLE_ACTIONS::SUDDEN_GUTS_PILL
  .WORD BATTLE_ACTIONS::ENEMY_EXTENDER
  .WORD NULL ;Final action
  .BYTE $1F ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $9F ;Action 3 argument
  .BYTE ENEMY::STARMAN_1 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::BRAIN_FOOD_LUNCH ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $02 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Starman Super", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0037 ;Battle sprite
  .WORD OVERWORLD_SPRITE::STARMAN
  .BYTE $07 ;Run flag
  .WORD 568 ;HP
  .WORD 310 ;PP
  .DWORD 30145 ;Experience
  .WORD 735 ;Money
  .WORD EVENT_SCRIPT::EVENT_026
  .DWORD MSG_BTL_AP_FUSAGARETA
  .DWORD MSG_BTL_KIZETU_ON_M
  .BYTE $1A ;Palette
  .BYTE 56 ;Level
  .BYTE MUSIC::VS_SPINNING_ROBO
  .WORD 112 ;Offense
  .WORD 129 ;Defense
  .BYTE 24 ;Speed
  .BYTE 25 ;Guts
  .BYTE 16 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $02 ;Weakness to flash
  .BYTE $02 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::PSI_PSI_SHIELD_BETA
  .WORD BATTLE_ACTIONS::PSI_HEALING_OMEGA
  .WORD BATTLE_ACTIONS::FIRE_BEAM
  .WORD BATTLE_ACTIONS::ENEMY_EXTENDER
  .WORD NULL ;Final action
  .BYTE $25 ;Action 1 argument
  .BYTE $1E ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE ENEMY::STARMAN_SUPER_1 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::SWORD_OF_KINGS ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $02 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Ghost of Starman", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0037 ;Battle sprite
  .WORD OVERWORLD_SPRITE::WHIRLING_ROBO
  .BYTE $07 ;Run flag
  .WORD 750 ;HP
  .WORD 462 ;PP
  .DWORD 48695 ;Experience
  .WORD 807 ;Money
  .WORD EVENT_SCRIPT::EVENT_023
  .DWORD MSG_BTL_AP_FUSAGARETA
  .DWORD MSG_BTL_KIZETU_ON_M
  .BYTE $0C ;Palette
  .BYTE 68 ;Level
  .BYTE MUSIC::VS_SPINNING_ROBO
  .WORD 152 ;Offense
  .WORD 170 ;Defense
  .BYTE 46 ;Speed
  .BYTE 43 ;Guts
  .BYTE 16 ;Luck
  .BYTE $02 ;Weakness to fire
  .BYTE $02 ;Weakness to ice
  .BYTE $02 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $02 ;Action order
  .WORD BATTLE_ACTIONS::MURMUR_2
  .WORD BATTLE_ACTIONS::MUTTER_1
  .WORD BATTLE_ACTIONS::PSI_STARSTORM_OMEGA
  .WORD BATTLE_ACTIONS::ENEMY_EXTENDER
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $16 ;Action 3 argument
  .BYTE ENEMY::GHOST_OF_STARMAN_1 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::GODDESS_RIBBON ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Starman Deluxe", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $006A ;Battle sprite
  .WORD OVERWORLD_SPRITE::WHIRLING_ROBO
  .BYTE $07 ;Run flag
  .WORD 1400 ;HP
  .WORD 418 ;PP
  .DWORD 160524 ;Experience
  .WORD 3827 ;Money
  .WORD EVENT_SCRIPT::EVENT_023
  .DWORD MSG_BTL_AP_FUSAGARETA
  .DWORD MSG_BTL_KIZETU_ON_M
  .BYTE $02 ;Palette
  .BYTE 65 ;Level
  .BYTE MUSIC::VS_SPINNING_ROBO
  .WORD 143 ;Offense
  .WORD 186 ;Defense
  .BYTE 27 ;Speed
  .BYTE 43 ;Guts
  .BYTE 21 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $02 ;Weakness to ice
  .BYTE $03 ;Weakness to flash
  .BYTE $02 ;Weakness to paralysis
  .BYTE $02 ;Weakness to hypnosis/brainshock
  .BYTE $00 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::ENEMY_EXTENDER
  .WORD BATTLE_ACTIONS::FIRE_BEAM
  .WORD BATTLE_ACTIONS::PSI_PSI_SHIELD_BETA
  .WORD BATTLE_ACTIONS::CALL_FOR_HELP
  .WORD NULL ;Final action
  .BYTE ENEMY::STARMAN_DELUXE_1 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $25 ;Action 3 argument
  .BYTE ENEMY::STARMAN_1 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $01 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $01 ;Death style
  .BYTE $01 ;Row
  .BYTE $02 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Final Starman", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $006A ;Battle sprite
  .WORD OVERWORLD_SPRITE::WHIRLING_ROBO
  .BYTE $07 ;Run flag
  .WORD 840 ;HP
  .WORD 860 ;PP
  .DWORD 61929 ;Experience
  .WORD 915 ;Money
  .WORD EVENT_SCRIPT::EVENT_023
  .DWORD MSG_BTL_AP_FUSAGARETA
  .DWORD MSG_BTL_KIZETU_ON_M
  .BYTE $10 ;Palette
  .BYTE 71 ;Level
  .BYTE MUSIC::VS_SPINNING_ROBO
  .WORD 178 ;Offense
  .WORD 187 ;Defense
  .BYTE 47 ;Speed
  .BYTE 25 ;Guts
  .BYTE 24 ;Luck
  .BYTE $02 ;Weakness to fire
  .BYTE $02 ;Weakness to ice
  .BYTE $02 ;Weakness to flash
  .BYTE $02 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $03 ;Action order
  .WORD BATTLE_ACTIONS::PSI_STARSTORM_OMEGA
  .WORD BATTLE_ACTIONS::FLASH_SMILE
  .WORD BATTLE_ACTIONS::PSI_HEALING_OMEGA
  .WORD BATTLE_ACTIONS::ENEMY_EXTENDER
  .WORD NULL ;Final action
  .BYTE $16 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $1E ;Action 3 argument
  .BYTE ENEMY::FINAL_STARMAN_1 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $02 ;Item drop rate
  .BYTE ITEM::PSI_CARAMEL ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Urban Zombie", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0048 ;Battle sprite
  .WORD OVERWORLD_SPRITE::URBAN_ZOMBIE
  .BYTE $07 ;Run flag
  .WORD 171 ;HP
  .WORD 0 ;PP
  .DWORD 700 ;Experience
  .WORD 58 ;Money
  .WORD EVENT_SCRIPT::EVENT_021
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_TSUCHINI
  .BYTE $04 ;Palette
  .BYTE 19 ;Level
  .BYTE MUSIC::VS_CRANKY_LADY
  .WORD 31 ;Offense
  .WORD 24 ;Defense
  .BYTE 10 ;Speed
  .BYTE 15 ;Guts
  .BYTE 24 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $03 ;Weakness to ice
  .BYTE $00 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::NO_EFFECT
  .WORD BATTLE_ACTIONS::NO_EFFECT
  .WORD BATTLE_ACTIONS::NO_EFFECT
  .WORD BATTLE_ACTIONS::NO_EFFECT
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $02 ;Item drop rate
  .BYTE ITEM::HAMBURGER ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $02 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $00 ;The Flag
  PADDEDEBTEXT "Diamond Dog", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $004C ;Battle sprite
  .WORD OVERWORLD_SPRITE::YOUR_SANCTUARY_POINT_BOSS
  .BYTE $07 ;Run flag
  .WORD 3344 ;HP
  .WORD 154 ;PP
  .DWORD 337738 ;Experience
  .WORD 6968 ;Money
  .WORD EVENT_SCRIPT::EVENT_023
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $04 ;Palette
  .BYTE 70 ;Level
  .BYTE MUSIC::VS_SPINNING_ROBO
  .WORD 167 ;Offense
  .WORD 230 ;Defense
  .BYTE 31 ;Speed
  .BYTE 10 ;Guts
  .BYTE 47 ;Luck
  .BYTE $02 ;Weakness to fire
  .BYTE $02 ;Weakness to ice
  .BYTE $03 ;Weakness to flash
  .BYTE $03 ;Weakness to paralysis
  .BYTE $02 ;Weakness to hypnosis/brainshock
  .BYTE $00 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::BITE
  .WORD BATTLE_ACTIONS::ENEMY_EXTENDER
  .WORD BATTLE_ACTIONS::HOWL
  .WORD BATTLE_ACTIONS::DIAMONDIZING_BITE
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE ENEMY::DIAMOND_DOG_1 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $01 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $01 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $00 ;The Flag
  PADDEDEBTEXT "Trillionage Sprout", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0058 ;Battle sprite
  .WORD OVERWORLD_SPRITE::YOUR_SANCTUARY_POINT_BOSS
  .BYTE $07 ;Run flag
  .WORD 1048 ;HP
  .WORD 240 ;PP
  .DWORD 30303 ;Experience
  .WORD 1358 ;Money
  .WORD EVENT_SCRIPT::EVENT_023
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $05 ;Palette
  .BYTE 29 ;Level
  .BYTE MUSIC::VS_YOUR_SANCTUARY_BOSS
  .WORD 54 ;Offense
  .WORD 88 ;Defense
  .BYTE 16 ;Speed
  .BYTE 21 ;Guts
  .BYTE 71 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $02 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $03 ;Weakness to paralysis
  .BYTE $02 ;Weakness to hypnosis/brainshock
  .BYTE $00 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::PSI_PSI_SHIELD_ALPHA
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::EERIE_GLARE
  .WORD BATTLE_ACTIONS::ENEMY_EXTENDER
  .WORD NULL ;Final action
  .BYTE $23 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE ENEMY::TRILLIONAGE_SPROUT_1 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $01 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $01 ;Death style
  .BYTE $00 ;Row
  .BYTE $03 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $00 ;The Flag
  PADDEDEBTEXT "Master Belch", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0062 ;Battle sprite
  .WORD OVERWORLD_SPRITE::MASTER_BELCH
  .BYTE $07 ;Run flag
  .WORD 650 ;HP
  .WORD 0 ;PP
  .DWORD 12509 ;Experience
  .WORD 664 ;Money
  .WORD EVENT_SCRIPT::EVENT_029
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_M
  .BYTE $06 ;Palette
  .BYTE 27 ;Level
  .BYTE MUSIC::VS_MASTER_BELCH
  .WORD 50 ;Offense
  .WORD 88 ;Defense
  .BYTE 16 ;Speed
  .BYTE 20 ;Guts
  .BYTE 61 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $02 ;Weakness to paralysis
  .BYTE $00 ;Weakness to hypnosis/brainshock
  .BYTE $00 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::NAUSEATING_BURP
  .WORD BATTLE_ACTIONS::CONTINUOUS_ATTACK
  .WORD BATTLE_ACTIONS::CALL_FOR_HELP
  .WORD BATTLE_ACTIONS::EDGE_CLOSER
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE ENEMY::SLIMY_LIL_PILE ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $01 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $01 ;Death style
  .BYTE $00 ;Row
  .BYTE $03 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Big Pile of Puke", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0062 ;Battle sprite
  .WORD OVERWORLD_SPRITE::MASTER_BELCH
  .BYTE $07 ;Run flag
  .WORD 609 ;HP
  .WORD 76 ;PP
  .DWORD 17567 ;Experience
  .WORD 690 ;Money
  .WORD EVENT_SCRIPT::EVENT_029
  .DWORD MSG_BTL_AP_FUSAGARETA
  .DWORD MSG_BTL_KIZETU_ON_M
  .BYTE $05 ;Palette
  .BYTE 59 ;Level
  .BYTE MUSIC::VS_MASTER_BELCH
  .WORD 134 ;Offense
  .WORD 146 ;Defense
  .BYTE 14 ;Speed
  .BYTE 11 ;Guts
  .BYTE 5 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $02 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $02 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::NO_EFFECT
  .WORD BATTLE_ACTIONS::NO_EFFECT
  .WORD BATTLE_ACTIONS::NO_EFFECT
  .WORD BATTLE_ACTIONS::NO_EFFECT
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $01 ;Item drop rate
  .BYTE ITEM::METEOTITE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $03 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $00 ;The Flag
  PADDEDEBTEXT "Master Barf", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0062 ;Battle sprite
  .WORD OVERWORLD_SPRITE::MASTER_BELCH
  .BYTE $07 ;Run flag
  .WORD 1319 ;HP
  .WORD 0 ;PP
  .DWORD 125056 ;Experience
  .WORD 3536 ;Money
  .WORD EVENT_SCRIPT::EVENT_029
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_M
  .BYTE $13 ;Palette
  .BYTE 60 ;Level
  .BYTE MUSIC::VS_MASTER_BELCH
  .WORD 136 ;Offense
  .WORD 177 ;Defense
  .BYTE 24 ;Speed
  .BYTE 39 ;Guts
  .BYTE 64 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $02 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $02 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $00 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::CALL_FOR_HELP
  .WORD BATTLE_ACTIONS::CONTINUOUS_ATTACK
  .WORD BATTLE_ACTIONS::NAUSEATING_BURP
  .WORD BATTLE_ACTIONS::ENEMY_EXTENDER
  .WORD BATTLE_ACTIONS::MASTER_BARF_DEFEAT ;Final action
  .BYTE ENEMY::EVEN_SLIMIER_LITTLE_PILE ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE ENEMY::MASTER_BARF_1 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $01 ;Boss flag
  .BYTE $07 ;Item drop rate
  .BYTE ITEM::CASEY_BAT ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $01 ;Death style
  .BYTE $00 ;Row
  .BYTE $03 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Loaded Dice", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::NORMAL
  .WORD $003A ;Battle sprite
  .WORD OVERWORLD_SPRITE::GIFT_BOX
  .BYTE $07 ;Run flag
  .WORD 307 ;HP
  .WORD 0 ;PP
  .DWORD 10672 ;Experience
  .WORD 703 ;Money
  .WORD EVENT_SCRIPT::EVENT_031
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $03 ;Palette
  .BYTE 59 ;Level
  .BYTE MUSIC::VS_CRANKY_LADY
  .WORD 146 ;Offense
  .WORD 113 ;Defense
  .BYTE 77 ;Speed
  .BYTE 75 ;Guts
  .BYTE 6 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $00 ;Weakness to ice
  .BYTE $02 ;Weakness to flash
  .BYTE $00 ;Weakness to paralysis
  .BYTE $03 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::CALL_FOR_HELP
  .WORD BATTLE_ACTIONS::CALL_FOR_HELP
  .WORD BATTLE_ACTIONS::CALL_FOR_HELP
  .WORD BATTLE_ACTIONS::CALL_FOR_HELP
  .WORD NULL ;Final action
  .BYTE ENEMY::ELECTRO_SWOOSH ;Action 1 argument
  .BYTE ENEMY::FOBBY ;Action 2 argument
  .BYTE ENEMY::UNCONTROLLABLE_SPHERE ;Action 3 argument
  .BYTE ENEMY::ELECTRO_SWOOSH ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $02 ;Item drop rate
  .BYTE ITEM::PSI_CARAMEL ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Tangoo", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0052 ;Battle sprite
  .WORD OVERWORLD_SPRITE::THUNDER_MITE
  .BYTE $07 ;Run flag
  .WORD 371 ;HP
  .WORD 5 ;PP
  .DWORD 14718 ;Experience
  .WORD 572 ;Money
  .WORD EVENT_SCRIPT::EVENT_023
  .DWORD MSG_BTL_AP_ATTESHIMATTA
  .DWORD MSG_BTL_KIZETU_ON_M
  .BYTE $05 ;Palette
  .BYTE 48 ;Level
  .BYTE MUSIC::VS_STRUTTIN_EVIL_MUSHROOM
  .WORD 96 ;Offense
  .WORD 99 ;Defense
  .BYTE 19 ;Speed
  .BYTE 20 ;Guts
  .BYTE 16 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $00 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::NO_EFFECT
  .WORD BATTLE_ACTIONS::NO_EFFECT
  .WORD BATTLE_ACTIONS::NO_EFFECT
  .WORD BATTLE_ACTIONS::NO_EFFECT
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $04 ;Item drop rate
  .BYTE ITEM::SNAKE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $00 ;The Flag
  PADDEDEBTEXT "Boogey Tent", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0056 ;Battle sprite
  .WORD OVERWORLD_SPRITE::NONE
  .BYTE $07 ;Run flag
  .WORD 579 ;HP
  .WORD 56 ;PP
  .DWORD 5500 ;Experience
  .WORD 407 ;Money
  .WORD EVENT_SCRIPT::EVENT_000
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_M
  .BYTE $05 ;Palette
  .BYTE 25 ;Level
  .BYTE MUSIC::VS_CAVE_BOY
  .WORD 43 ;Offense
  .WORD 69 ;Defense
  .BYTE 10 ;Speed
  .BYTE 16 ;Guts
  .BYTE 32 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $03 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $03 ;Weakness to paralysis
  .BYTE $02 ;Weakness to hypnosis/brainshock
  .BYTE $00 ;Miss rate
  .BYTE $03 ;Action order
  .WORD BATTLE_ACTIONS::EMIT_PALE_GREEN_LIGHT
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::PSI_FLASH_ALPHA
  .WORD BATTLE_ACTIONS::ENEMY_EXTENDER
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $11 ;Action 3 argument
  .BYTE ENEMY::BOOGEY_TENT_1 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $01 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $01 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Squatter Demon", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0056 ;Battle sprite
  .WORD OVERWORLD_SPRITE::WHIRLING_ROBO
  .BYTE $07 ;Run flag
  .WORD 774 ;HP
  .WORD 60 ;PP
  .DWORD 48311 ;Experience
  .WORD 897 ;Money
  .WORD EVENT_SCRIPT::EVENT_023
  .DWORD MSG_BTL_AP_ATTESHIMATTA
  .DWORD MSG_BTL_KIZETU_ON_M
  .BYTE $1E ;Palette
  .BYTE 69 ;Level
  .BYTE MUSIC::VS_CAVE_BOY
  .WORD 158 ;Offense
  .WORD 192 ;Defense
  .BYTE 45 ;Speed
  .BYTE 25 ;Guts
  .BYTE 32 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $03 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $03 ;Weakness to paralysis
  .BYTE $02 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::NO_EFFECT
  .WORD BATTLE_ACTIONS::NO_EFFECT
  .WORD BATTLE_ACTIONS::NO_EFFECT
  .WORD BATTLE_ACTIONS::NO_EFFECT
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $01 ;Item drop rate
  .BYTE ITEM::HORN_OF_LIFE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $00 ;The Flag
  PADDEDEBTEXT "Everdred", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0020 ;Battle sprite
  .WORD OVERWORLD_SPRITE::EVERDRED
  .BYTE $07 ;Run flag
  .WORD 182 ;HP
  .WORD 0 ;PP
  .DWORD 986 ;Experience
  .WORD 171 ;Money
  .WORD EVENT_SCRIPT::EVENT_021
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_WARENI
  .BYTE $01 ;Palette
  .BYTE 15 ;Level
  .BYTE MUSIC::VS_STRUTTIN_EVIL_MUSHROOM
  .WORD 25 ;Offense
  .WORD 35 ;Defense
  .BYTE 6 ;Speed
  .BYTE 10 ;Guts
  .BYTE 40 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::GRIN
  .WORD BATTLE_ACTIONS::BITING_ATTACK
  .WORD BATTLE_ACTIONS::ENEMY_EXTENDER
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE ENEMY::EVERDRED_1 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $01 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $01 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $00 ;The Flag
  PADDEDEBTEXT "Electro Specter", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0039 ;Battle sprite
  .WORD OVERWORLD_SPRITE::YOUR_SANCTUARY_POINT_BOSS
  .BYTE $07 ;Run flag
  .WORD 3092 ;HP
  .WORD 80 ;PP
  .DWORD 261637 ;Experience
  .WORD 6564 ;Money
  .WORD EVENT_SCRIPT::EVENT_023
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $02 ;Palette
  .BYTE 67 ;Level
  .BYTE MUSIC::VS_KRAKEN
  .WORD 148 ;Offense
  .WORD 203 ;Defense
  .BYTE 29 ;Speed
  .BYTE 47 ;Guts
  .BYTE 56 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $03 ;Weakness to flash
  .BYTE $03 ;Weakness to paralysis
  .BYTE $02 ;Weakness to hypnosis/brainshock
  .BYTE $00 ;Miss rate
  .BYTE $03 ;Action order
  .WORD BATTLE_ACTIONS::NEUTRALIZER
  .WORD BATTLE_ACTIONS::SHIELD_KILLER
  .WORD BATTLE_ACTIONS::ELECTRIC_SHOCK
  .WORD BATTLE_ACTIONS::ENEMY_EXTENDER
  .WORD NULL ;Final action
  .BYTE $C3 ;Action 1 argument
  .BYTE $84 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE ENEMY::ELECTRO_SPECTER_1 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $01 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $01 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $00 ;The Flag
  PADDEDEBTEXT "Thunder and Storm", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0027 ;Battle sprite
  .WORD OVERWORLD_SPRITE::YOUR_SANCTUARY_POINT_BOSS
  .BYTE $07 ;Run flag
  .WORD 2065 ;HP
  .WORD 70 ;PP
  .DWORD 129026 ;Experience
  .WORD 4736 ;Money
  .WORD EVENT_SCRIPT::EVENT_023
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $01 ;Palette
  .BYTE 56 ;Level
  .BYTE MUSIC::VS_KRAKEN
  .WORD 111 ;Offense
  .WORD 178 ;Defense
  .BYTE 21 ;Speed
  .BYTE 35 ;Guts
  .BYTE 55 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $00 ;Weakness to flash
  .BYTE $03 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $00 ;Miss rate
  .BYTE $03 ;Action order
  .WORD BATTLE_ACTIONS::SUMMON_STORM
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::CRASHING_BOOM_BANG
  .WORD BATTLE_ACTIONS::ENEMY_EXTENDER
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE ENEMY::THUNDER_AND_STORM_1 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $01 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $01 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $00 ;The Flag
  PADDEDEBTEXT "Frankystein Mark II", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::METAL
  .WORD $0061 ;Battle sprite
  .WORD OVERWORLD_SPRITE::NONE
  .BYTE $07 ;Run flag
  .WORD 91 ;HP
  .WORD 0 ;PP
  .DWORD 76 ;Experience
  .WORD 31 ;Money
  .WORD EVENT_SCRIPT::EVENT_000
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_HAKAI
  .BYTE $06 ;Palette
  .BYTE 7 ;Level
  .BYTE MUSIC::VS_CAVE_BOY
  .WORD 15 ;Offense
  .WORD 18 ;Defense
  .BYTE 4 ;Speed
  .BYTE 0 ;Guts
  .BYTE 40 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $00 ;Weakness to ice
  .BYTE $02 ;Weakness to flash
  .BYTE $02 ;Weakness to paralysis
  .BYTE $02 ;Weakness to hypnosis/brainshock
  .BYTE $00 ;Miss rate
  .BYTE $03 ;Action order
  .WORD BATTLE_ACTIONS::TEAR_INTO
  .WORD BATTLE_ACTIONS::PUNCH
  .WORD BATTLE_ACTIONS::GENERATE_STEAM
  .WORD BATTLE_ACTIONS::ENEMY_EXTENDER
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE ENEMY::FRANKYSTEIN_MARK_II_1 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $01 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $01 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $00 ;The Flag
  PADDEDEBTEXT "Evil Mani-Mani", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::NORMAL
  .WORD $004F ;Battle sprite
  .WORD OVERWORLD_SPRITE::EVIL_MANI_MANI
  .BYTE $07 ;Run flag
  .WORD 860 ;HP
  .WORD 88 ;PP
  .DWORD 28139 ;Experience
  .WORD 1852 ;Money
  .WORD EVENT_SCRIPT::EVENT_000
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_UGOKANAKU
  .BYTE $03 ;Palette
  .BYTE 45 ;Level
  .BYTE MUSIC::VS_STARMAN_JR
  .WORD 86 ;Offense
  .WORD 145 ;Defense
  .BYTE 15 ;Speed
  .BYTE 1 ;Guts
  .BYTE 80 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $03 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $00 ;Miss rate
  .BYTE $03 ;Action order
  .WORD BATTLE_ACTIONS::EMIT_PALE_GREEN_LIGHT
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::GLORIOUS_LIGHT
  .WORD BATTLE_ACTIONS::ENEMY_EXTENDER
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE ENEMY::EVIL_MANI_MANI_1 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $01 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $01 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $00 ;The Flag
  PADDEDEBTEXT "Heavily Armed Pokey", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::METAL
  .WORD $002A ;Battle sprite
  .WORD OVERWORLD_SPRITE::POKEY
  .BYTE $07 ;Run flag
  .WORD 1746 ;HP
  .WORD 999 ;PP
  .DWORD 0 ;Experience
  .WORD 0 ;Money
  .WORD EVENT_SCRIPT::EVENT_021
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_M
  .BYTE $01 ;Palette
  .BYTE 72 ;Level
  .BYTE MUSIC::NONE
  .WORD 150 ;Offense
  .WORD 274 ;Defense
  .BYTE 51 ;Speed
  .BYTE 45 ;Guts
  .BYTE 55 ;Luck
  .BYTE $02 ;Weakness to fire
  .BYTE $02 ;Weakness to ice
  .BYTE $02 ;Weakness to flash
  .BYTE $03 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $00 ;Miss rate
  .BYTE $02 ;Action order
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::ENEMY_EXTENDER
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE ENEMY::HEAVILY_ARMED_POKEY_1 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $00 ;The Flag
  PADDEDEBTEXT "Clumsy Robot", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::METAL
  .WORD $0047 ;Battle sprite
  .WORD OVERWORLD_SPRITE::CAPSULE
  .BYTE $07 ;Run flag
  .WORD 962 ;HP
  .WORD 0 ;PP
  .DWORD 32378 ;Experience
  .WORD 2081 ;Money
  .WORD EVENT_SCRIPT::EVENT_027
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_UGOKANAKU
  .BYTE $04 ;Palette
  .BYTE 46 ;Level
  .BYTE MUSIC::VS_STARMAN_JR
  .WORD 88 ;Offense
  .WORD 137 ;Defense
  .BYTE 83 ;Speed
  .BYTE 30 ;Guts
  .BYTE 49 ;Luck
  .BYTE $02 ;Weakness to fire
  .BYTE $02 ;Weakness to ice
  .BYTE $02 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $02 ;Weakness to hypnosis/brainshock
  .BYTE $05 ;Miss rate
  .BYTE $02 ;Action order
  .WORD BATTLE_ACTIONS::CLUMSY_BEAM
  .WORD BATTLE_ACTIONS::CLEAN_AREA
  .WORD BATTLE_ACTIONS::EAT_BOLOGNA_SANDWICH
  .WORD BATTLE_ACTIONS::ENEMY_EXTENDER
  .WORD BATTLE_ACTIONS::RUNAWAY_FIVE_EVENT ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE ENEMY::CLUMSY_ROBOT_3 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $01 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $01 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Robo-pump", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::METAL
  .WORD $003E ;Battle sprite
  .WORD OVERWORLD_SPRITE::ROBO_PUMP
  .BYTE $07 ;Run flag
  .WORD 431 ;HP
  .WORD 0 ;PP
  .DWORD 4797 ;Experience
  .WORD 349 ;Money
  .WORD EVENT_SCRIPT::EVENT_027
  .DWORD MSG_BTL_AP_FUSAGARETA
  .DWORD MSG_BTL_KIZETU_ON_KUDAKERU
  .BYTE $03 ;Palette
  .BYTE 36 ;Level
  .BYTE MUSIC::VS_STRUTTIN_EVIL_MUSHROOM
  .WORD 70 ;Offense
  .WORD 113 ;Defense
  .BYTE 19 ;Speed
  .BYTE 5 ;Guts
  .BYTE 4 ;Luck
  .BYTE $02 ;Weakness to fire
  .BYTE $02 ;Weakness to ice
  .BYTE $02 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $02 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $02 ;Action order
  .WORD BATTLE_ACTIONS::BOMB
  .WORD BATTLE_ACTIONS::REPLENISH_FUEL
  .WORD BATTLE_ACTIONS::TICK_TOCK
  .WORD BATTLE_ACTIONS::ENEMY_EXTENDER
  .WORD NULL ;Final action
  .BYTE $93 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE ENEMY::ROBO_PUMP_1 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $01 ;Item drop rate
  .BYTE ITEM::SUPER_BOMB ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Foppy", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0011 ;Battle sprite
  .WORD OVERWORLD_SPRITE::FOBBY
  .BYTE $07 ;Run flag
  .WORD 120 ;HP
  .WORD 10 ;PP
  .DWORD 1311 ;Experience
  .WORD 93 ;Money
  .WORD EVENT_SCRIPT::EVENT_021
  .DWORD MSG_BTL_AP_FUSAGARETA
  .DWORD MSG_BTL_KIZETU_ON_M
  .BYTE $01 ;Palette
  .BYTE 16 ;Level
  .BYTE MUSIC::VS_STRUTTIN_EVIL_MUSHROOM
  .WORD 29 ;Offense
  .WORD 9 ;Defense
  .BYTE 1 ;Speed
  .BYTE 5 ;Guts
  .BYTE 3 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $00 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $00 ;Weakness to paralysis
  .BYTE $03 ;Weakness to hypnosis/brainshock
  .BYTE $02 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::NO_EFFECT
  .WORD BATTLE_ACTIONS::NO_EFFECT
  .WORD BATTLE_ACTIONS::NO_EFFECT
  .WORD BATTLE_ACTIONS::NO_EFFECT
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $01 ;Item drop rate
  .BYTE ITEM::PSI_CARAMEL ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $00 ;The Flag
  PADDEDEBTEXT "Guardian General", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0057 ;Battle sprite
  .WORD OVERWORLD_SPRITE::PETRIFIED_ROYAL_GUARD
  .BYTE $07 ;Run flag
  .WORD 831 ;HP
  .WORD 6 ;PP
  .DWORD 95390 ;Experience
  .WORD 3235 ;Money
  .WORD EVENT_SCRIPT::EVENT_028
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_UGOKANAKU
  .BYTE $13 ;Palette
  .BYTE 55 ;Level
  .BYTE MUSIC::VS_YOUR_SANCTUARY_BOSS
  .WORD 109 ;Offense
  .WORD 214 ;Defense
  .BYTE 21 ;Speed
  .BYTE 1 ;Guts
  .BYTE 7 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $02 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $02 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $00 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::CHARGE
  .WORD BATTLE_ACTIONS::WAR_CRY
  .WORD BATTLE_ACTIONS::ENEMY_EXTENDER
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE ENEMY::GUARDIAN_GENERAL_1 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $01 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $01 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Black Antoid", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::INSECT
  .WORD $0001 ;Battle sprite
  .WORD OVERWORLD_SPRITE::BLACK_ANTOID
  .BYTE $07 ;Run flag
  .WORD 34 ;HP
  .WORD 25 ;PP
  .DWORD 37 ;Experience
  .WORD 7 ;Money
  .WORD EVENT_SCRIPT::EVENT_020
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $08 ;Palette
  .BYTE 7 ;Level
  .BYTE MUSIC::VS_CRANKY_LADY
  .WORD 14 ;Offense
  .WORD 13 ;Defense
  .BYTE 4 ;Speed
  .BYTE 3 ;Guts
  .BYTE 0 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $00 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $00 ;Weakness to paralysis
  .BYTE $00 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $03 ;Action order
  .WORD BATTLE_ACTIONS::PSI_LIFEUP_ALPHA
  .WORD BATTLE_ACTIONS::PSI_LIFEUP_ALPHA
  .WORD BATTLE_ACTIONS::PSI_LIFEUP_ALPHA
  .WORD BATTLE_ACTIONS::PSI_LIFEUP_ALPHA
  .WORD NULL ;Final action
  .BYTE $17 ;Action 1 argument
  .BYTE $17 ;Action 2 argument
  .BYTE $17 ;Action 3 argument
  .BYTE $17 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 1 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $03 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Struttin' Evil Mushroom", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0005 ;Battle sprite
  .WORD OVERWORLD_SPRITE::RAMBLIN_EVIL_MUSHROOM
  .BYTE $07 ;Run flag
  .WORD 60 ;HP
  .WORD 0 ;PP
  .DWORD 95 ;Experience
  .WORD 15 ;Money
  .WORD EVENT_SCRIPT::EVENT_024
  .DWORD MSG_BTL_AP_ATTESHIMATTA
  .DWORD MSG_BTL_KIZETU_ON_UGOKANAKU
  .BYTE $09 ;Palette
  .BYTE 7 ;Level
  .BYTE MUSIC::VS_STRUTTIN_EVIL_MUSHROOM
  .WORD 15 ;Offense
  .WORD 10 ;Defense
  .BYTE 5 ;Speed
  .BYTE 5 ;Guts
  .BYTE 1 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $00 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $03 ;Weakness to hypnosis/brainshock
  .BYTE $02 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::BE_ABSENTMINDED
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::BASH
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 1 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $06 ;Item drop rate
  .BYTE ITEM::COOKIE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Runaway Dog", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0002 ;Battle sprite
  .WORD OVERWORLD_SPRITE::RUNAWAY_DOG
  .BYTE $07 ;Run flag
  .WORD 21 ;HP
  .WORD 0 ;PP
  .DWORD 4 ;Experience
  .WORD 3 ;Money
  .WORD EVENT_SCRIPT::EVENT_022
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $09 ;Palette
  .BYTE 73 ;Level
  .BYTE MUSIC::VS_RUNAWAY_DOG
  .WORD 4 ;Offense
  .WORD 5 ;Defense
  .BYTE 26 ;Speed
  .BYTE 0 ;Guts
  .BYTE 1 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $00 ;Weakness to ice
  .BYTE $00 ;Weakness to flash
  .BYTE $00 ;Weakness to paralysis
  .BYTE $00 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::HOWL
  .WORD BATTLE_ACTIONS::BITING_ATTACK
  .WORD BATTLE_ACTIONS::BITING_ATTACK
  .WORD BATTLE_ACTIONS::BITE
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 1 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $06 ;Item drop rate
  .BYTE ITEM::BREAD_ROLL ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Cave Boy", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0065 ;Battle sprite
  .WORD OVERWORLD_SPRITE::CAVE_BOY
  .BYTE $07 ;Run flag
  .WORD 314 ;HP
  .WORD 0 ;PP
  .DWORD 618 ;Experience
  .WORD 17 ;Money
  .WORD EVENT_SCRIPT::EVENT_029
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $07 ;Palette
  .BYTE 11 ;Level
  .BYTE MUSIC::VS_CAVE_BOY
  .WORD 21 ;Offense
  .WORD 33 ;Defense
  .BYTE 5 ;Speed
  .BYTE 0 ;Guts
  .BYTE 80 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $03 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $03 ;Weakness to paralysis
  .BYTE $02 ;Weakness to hypnosis/brainshock
  .BYTE $08 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::BASH
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $07 ;Item drop rate
  .BYTE ITEM::PICNIC_LUNCH ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Tiny Li'l Ghost", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0000 ;Battle sprite
  .WORD OVERWORLD_SPRITE::NONE
  .BYTE $07 ;Run flag
  .WORD 90 ;HP
  .WORD 0 ;PP
  .DWORD 1 ;Experience
  .WORD 162 ;Money
  .WORD EVENT_SCRIPT::EVENT_000
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_KAKIKIERU
  .BYTE $00 ;Palette
  .BYTE 18 ;Level
  .BYTE MUSIC::VS_RUNAWAY_DOG
  .WORD 19 ;Offense
  .WORD 7 ;Defense
  .BYTE 100 ;Speed
  .BYTE 25 ;Guts
  .BYTE 24 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $00 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $00 ;Weakness to hypnosis/brainshock
  .BYTE $04 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::REACH_WITH_ICY_HAND
  .WORD BATTLE_ACTIONS::REACH_WITH_ICY_HAND
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::BASH
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Starman Junior", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0037 ;Battle sprite
  .WORD OVERWORLD_SPRITE::STARMAN
  .BYTE $07 ;Run flag
  .WORD 200 ;HP
  .WORD 999 ;PP
  .DWORD 16 ;Experience
  .WORD 20 ;Money
  .WORD EVENT_SCRIPT::EVENT_026
  .DWORD MSG_BTL_AP_FUSAGARETA
  .DWORD MSG_BTL_KIZETU_ON_M
  .BYTE $02 ;Palette
  .BYTE 6 ;Level
  .BYTE MUSIC::VS_STARMAN_JR
  .WORD 11 ;Offense
  .WORD 10 ;Defense
  .BYTE 1 ;Speed
  .BYTE 0 ;Guts
  .BYTE 80 ;Luck
  .BYTE $03 ;Weakness to fire
  .BYTE $03 ;Weakness to ice
  .BYTE $03 ;Weakness to flash
  .BYTE $03 ;Weakness to paralysis
  .BYTE $02 ;Weakness to hypnosis/brainshock
  .BYTE $00 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::PSI_FIRE_BETA
  .WORD BATTLE_ACTIONS::ON_GUARD
  .WORD BATTLE_ACTIONS::PSI_FREEZE_ALPHA
  .WORD BATTLE_ACTIONS::PSI_FIRE_ALPHA
  .WORD NULL ;Final action
  .BYTE $06 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $09 ;Action 3 argument
  .BYTE $05 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $01 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $00 ;The Flag
  PADDEDEBTEXT "Buzz Buzz", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0000 ;Battle sprite
  .WORD OVERWORLD_SPRITE::NONE
  .BYTE $07 ;Run flag
  .WORD 2000 ;HP
  .WORD 999 ;PP
  .DWORD 0 ;Experience
  .WORD 0 ;Money
  .WORD EVENT_SCRIPT::EVENT_000
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_NULL
  .BYTE $00 ;Palette
  .BYTE 20 ;Level
  .BYTE MUSIC::NONE
  .WORD 40 ;Offense
  .WORD 92 ;Defense
  .BYTE 100 ;Speed
  .BYTE 1 ;Guts
  .BYTE 80 ;Luck
  .BYTE $03 ;Weakness to fire
  .BYTE $03 ;Weakness to ice
  .BYTE $03 ;Weakness to flash
  .BYTE $03 ;Weakness to paralysis
  .BYTE $02 ;Weakness to hypnosis/brainshock
  .BYTE $00 ;Miss rate
  .BYTE $03 ;Action order
  .WORD BATTLE_ACTIONS::PSI_PSI_SHIELD_SIGMA
  .WORD BATTLE_ACTIONS::PSI_PSI_SHIELD_SIGMA
  .WORD BATTLE_ACTIONS::CHARGE
  .WORD BATTLE_ACTIONS::BASH
  .WORD NULL ;Final action
  .BYTE $24 ;Action 1 argument
  .BYTE $24 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 0 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $00 ;The Flag
  PADDEDEBTEXT "Heavily Armed Pokey", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::METAL
  .WORD $002A ;Battle sprite
  .WORD OVERWORLD_SPRITE::POKEY
  .BYTE $07 ;Run flag
  .WORD 2000 ;HP
  .WORD 999 ;PP
  .DWORD 0 ;Experience
  .WORD 0 ;Money
  .WORD EVENT_SCRIPT::EVENT_000
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_NULL
  .BYTE $04 ;Palette
  .BYTE 80 ;Level
  .BYTE MUSIC::POKEY_MEANS_BUSINESS
  .WORD 145 ;Offense
  .WORD 255 ;Defense
  .BYTE 60 ;Speed
  .BYTE 5 ;Guts
  .BYTE 255 ;Luck
  .BYTE $02 ;Weakness to fire
  .BYTE $02 ;Weakness to ice
  .BYTE $03 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $03 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $03 ;Action order
  .WORD BATTLE_ACTIONS::DISCHARGE_STINKY_GAS
  .WORD BATTLE_ACTIONS::DISCHARGE_STINKY_GAS
  .WORD BATTLE_ACTIONS::CHARGE
  .WORD BATTLE_ACTIONS::TEAR_INTO
  .WORD BATTLE_ACTIONS::POKEY_SPEECH_1 ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 0 ;IQ
  .BYTE $01 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $00 ;The Flag
  PADDEDEBTEXT "Heavily Armed Pokey", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::METAL
  .WORD $002A ;Battle sprite
  .WORD OVERWORLD_SPRITE::POKEY
  .BYTE $07 ;Run flag
  .WORD 1746 ;HP
  .WORD 999 ;PP
  .DWORD 0 ;Experience
  .WORD 0 ;Money
  .WORD EVENT_SCRIPT::EVENT_000
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_NULL
  .BYTE $04 ;Palette
  .BYTE 72 ;Level
  .BYTE MUSIC::GIYGAS_AWAKENS
  .WORD 150 ;Offense
  .WORD 274 ;Defense
  .BYTE 51 ;Speed
  .BYTE 45 ;Guts
  .BYTE 55 ;Luck
  .BYTE $02 ;Weakness to fire
  .BYTE $02 ;Weakness to ice
  .BYTE $02 ;Weakness to flash
  .BYTE $03 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $00 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::DISCHARGE_STINKY_GAS
  .WORD BATTLE_ACTIONS::POKEY_ATTACK
  .WORD BATTLE_ACTIONS::CHARGE
  .WORD BATTLE_ACTIONS::TEAR_INTO
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 0 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $5F ;Mirror success rate

  .BYTE $00 ;The Flag
  PADDEDEBTEXT "Giygas", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::METAL
  .WORD $006C ;Battle sprite
  .WORD OVERWORLD_SPRITE::NONE
  .BYTE $07 ;Run flag
  .WORD 9999 ;HP
  .WORD 999 ;PP
  .DWORD 0 ;Experience
  .WORD 0 ;Money
  .WORD EVENT_SCRIPT::EVENT_000
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_M
  .BYTE $14 ;Palette
  .BYTE 80 ;Level
  .BYTE MUSIC::POKEY_MEANS_BUSINESS
  .WORD 255 ;Offense
  .WORD 255 ;Defense
  .BYTE 80 ;Speed
  .BYTE 5 ;Guts
  .BYTE 255 ;Luck
  .BYTE $02 ;Weakness to fire
  .BYTE $02 ;Weakness to ice
  .BYTE $03 ;Weakness to flash
  .BYTE $03 ;Weakness to paralysis
  .BYTE $03 ;Weakness to hypnosis/brainshock
  .BYTE $00 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::PSI_ROCKIN_ALPHA
  .WORD BATTLE_ACTIONS::PSI_ROCKIN_BETA
  .WORD BATTLE_ACTIONS::PSI_ROCKIN_ALPHA
  .WORD BATTLE_ACTIONS::PSI_ROCKIN_BETA
  .WORD NULL ;Final action
  .BYTE $01 ;Action 1 argument
  .BYTE $02 ;Action 2 argument
  .BYTE $01 ;Action 3 argument
  .BYTE $02 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $01 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $01 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $00 ;The Flag
  PADDEDEBTEXT "Giygas", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0000 ;Battle sprite
  .WORD OVERWORLD_SPRITE::NONE
  .BYTE $07 ;Run flag
  .WORD 9999 ;HP
  .WORD 0 ;PP
  .DWORD 0 ;Experience
  .WORD 0 ;Money
  .WORD EVENT_SCRIPT::EVENT_000
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_M
  .BYTE $00 ;Palette
  .BYTE 80 ;Level
  .BYTE MUSIC::GIYGAS_AWAKENS
  .WORD 255 ;Offense
  .WORD 255 ;Defense
  .BYTE 80 ;Speed
  .BYTE 5 ;Guts
  .BYTE 255 ;Luck
  .BYTE $02 ;Weakness to fire
  .BYTE $02 ;Weakness to ice
  .BYTE $03 ;Weakness to flash
  .BYTE $03 ;Weakness to paralysis
  .BYTE $03 ;Weakness to hypnosis/brainshock
  .BYTE $00 ;Miss rate
  .BYTE $02 ;Action order
  .WORD BATTLE_ACTIONS::NO_EFFECT
  .WORD BATTLE_ACTIONS::NO_EFFECT
  .WORD BATTLE_ACTIONS::NO_EFFECT
  .WORD BATTLE_ACTIONS::GIYGAS_ATTACK
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $01 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $01 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $00 ;The Flag
  PADDEDEBTEXT "Giygas", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0000 ;Battle sprite
  .WORD OVERWORLD_SPRITE::NONE
  .BYTE $07 ;Run flag
  .WORD 2000 ;HP
  .WORD 0 ;PP
  .DWORD 0 ;Experience
  .WORD 0 ;Money
  .WORD EVENT_SCRIPT::EVENT_000
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_M
  .BYTE $00 ;Palette
  .BYTE 80 ;Level
  .BYTE MUSIC::GIYGAS_AWAKENS
  .WORD 255 ;Offense
  .WORD 255 ;Defense
  .BYTE 80 ;Speed
  .BYTE 5 ;Guts
  .BYTE 255 ;Luck
  .BYTE $02 ;Weakness to fire
  .BYTE $02 ;Weakness to ice
  .BYTE $03 ;Weakness to flash
  .BYTE $03 ;Weakness to paralysis
  .BYTE $03 ;Weakness to hypnosis/brainshock
  .BYTE $00 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::INCOMPREHENSIBLE_ATTACK_THUNDER_BETA
  .WORD BATTLE_ACTIONS::INCOMPREHENSIBLE_ATTACK_FREEZE_ALPHA
  .WORD BATTLE_ACTIONS::INCOMPREHENSIBLE_ATTACK_FLASH_GAMMA
  .WORD BATTLE_ACTIONS::SAY_PLAYER_NAME
  .WORD BATTLE_ACTIONS::POKEY_SPEECH_2 ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $01 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $01 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $00 ;The Flag
  PADDEDEBTEXT "Giygas", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0000 ;Battle sprite
  .WORD OVERWORLD_SPRITE::NONE
  .BYTE $07 ;Run flag
  .WORD 9999 ;HP
  .WORD 0 ;PP
  .DWORD 0 ;Experience
  .WORD 0 ;Money
  .WORD EVENT_SCRIPT::EVENT_000
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_M
  .BYTE $00 ;Palette
  .BYTE 80 ;Level
  .BYTE MUSIC::GIYGAS_PHASE2
  .WORD 255 ;Offense
  .WORD 255 ;Defense
  .BYTE 80 ;Speed
  .BYTE 5 ;Guts
  .BYTE 255 ;Luck
  .BYTE $02 ;Weakness to fire
  .BYTE $02 ;Weakness to ice
  .BYTE $03 ;Weakness to flash
  .BYTE $03 ;Weakness to paralysis
  .BYTE $03 ;Weakness to hypnosis/brainshock
  .BYTE $00 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::INCOMPREHENSIBLE_ATTACK_THUNDER_BETA_VULNERABLE
  .WORD BATTLE_ACTIONS::INCOMPREHENSIBLE_ATTACK_FREEZE_ALPHA_VULNERABLE
  .WORD BATTLE_ACTIONS::INCOMPREHENSIBLE_ATTACK_FLASH_GAMMA_VULNERABLE
  .WORD BATTLE_ACTIONS::RANDOM_GIYGAS_QUOTE
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $01 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $01 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Farm Zombie", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0048 ;Battle sprite
  .WORD OVERWORLD_SPRITE::URBAN_ZOMBIE
  .BYTE $07 ;Run flag
  .WORD 171 ;HP
  .WORD 0 ;PP
  .DWORD 700 ;Experience
  .WORD 58 ;Money
  .WORD EVENT_SCRIPT::EVENT_021
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_TSUCHINI
  .BYTE $0A ;Palette
  .BYTE 19 ;Level
  .BYTE MUSIC::VS_RUNAWAY_DOG
  .WORD 31 ;Offense
  .WORD 24 ;Defense
  .BYTE 10 ;Speed
  .BYTE 15 ;Guts
  .BYTE 24 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $03 ;Weakness to ice
  .BYTE $00 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::LAUGH_HYSTERICALLY
  .WORD BATTLE_ACTIONS::COLD_BREATH
  .WORD BATTLE_ACTIONS::SOMETHING_MYSTERIOUS
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 2 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $03 ;Item drop rate
  .BYTE ITEM::SKIP_SANDWICH ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $01 ;Row
  .BYTE $02 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Criminal Caterpillar", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::INSECT
  .WORD $006D ;Battle sprite
  .WORD OVERWORLD_SPRITE::CRIMINAL_CATERPILLAR
  .BYTE $07 ;Run flag
  .WORD 250 ;HP
  .WORD 168 ;PP
  .DWORD 30384 ;Experience
  .WORD 0 ;Money
  .WORD EVENT_SCRIPT::EVENT_027
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $01 ;Palette
  .BYTE 23 ;Level
  .BYTE MUSIC::VS_RUNAWAY_DOG
  .WORD 37 ;Offense
  .WORD 16 ;Defense
  .BYTE 134 ;Speed
  .BYTE 0 ;Guts
  .BYTE 0 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $00 ;Weakness to ice
  .BYTE $00 ;Weakness to flash
  .BYTE $00 ;Weakness to paralysis
  .BYTE $00 ;Weakness to hypnosis/brainshock
  .BYTE $00 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::PSI_FIRE_ALPHA
  .WORD BATTLE_ACTIONS::PSI_FIRE_ALPHA
  .WORD BATTLE_ACTIONS::PSI_FIRE_ALPHA
  .WORD BATTLE_ACTIONS::PSI_FIRE_ALPHA
  .WORD NULL ;Final action
  .BYTE $05 ;Action 1 argument
  .BYTE $05 ;Action 2 argument
  .BYTE $05 ;Action 3 argument
  .BYTE $05 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 1 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $0A ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Evil Eye", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::NORMAL
  .WORD $006E ;Battle sprite
  .WORD OVERWORLD_SPRITE::WHIRLING_ROBO
  .BYTE $07 ;Run flag
  .WORD 720 ;HP
  .WORD 400 ;PP
  .DWORD 46376 ;Experience
  .WORD 896 ;Money
  .WORD EVENT_SCRIPT::EVENT_023
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $02 ;Palette
  .BYTE 63 ;Level
  .BYTE MUSIC::VS_CRANKY_LADY
  .WORD 141 ;Offense
  .WORD 162 ;Defense
  .BYTE 38 ;Speed
  .BYTE 25 ;Guts
  .BYTE 16 ;Luck
  .BYTE $03 ;Weakness to fire
  .BYTE $00 ;Weakness to ice
  .BYTE $03 ;Weakness to flash
  .BYTE $02 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $00 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::PSI_BRAINSHOCK_OMEGA
  .WORD BATTLE_ACTIONS::EERIE_GLARE
  .WORD BATTLE_ACTIONS::PSI_PARALYSIS_OMEGA
  .WORD BATTLE_ACTIONS::BASH
  .WORD NULL ;Final action
  .BYTE $32 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $30 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 1 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $03 ;Item drop rate
  .BYTE ITEM::METEOTITE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $14 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Magic Butterfly", 25
  .BYTE GENDER::FEMALE
  .BYTE ENEMYTYPE::INSECT
  .WORD $0000 ;Battle sprite
  .WORD OVERWORLD_SPRITE::MAGIC_BUTTERFLY
  .BYTE $06 ;Run flag
  .WORD 16 ;HP
  .WORD 0 ;PP
  .DWORD 1 ;Experience
  .WORD 0 ;Money
  .WORD EVENT_SCRIPT::EVENT_032
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_NULL
  .BYTE $00 ;Palette
  .BYTE 0 ;Level
  .BYTE MUSIC::NONE
  .WORD 2 ;Offense
  .WORD 2 ;Defense
  .BYTE 25 ;Speed
  .BYTE 0 ;Guts
  .BYTE 0 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $00 ;Weakness to ice
  .BYTE $00 ;Weakness to flash
  .BYTE $00 ;Weakness to paralysis
  .BYTE $00 ;Weakness to hypnosis/brainshock
  .BYTE $00 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::NO_EFFECT
  .WORD BATTLE_ACTIONS::NO_EFFECT
  .WORD BATTLE_ACTIONS::NO_EFFECT
  .WORD BATTLE_ACTIONS::NO_EFFECT
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 0 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Mini Barf", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::NORMAL
  .WORD $005B ;Battle sprite
  .WORD OVERWORLD_SPRITE::SLIMY_LITTLE_PILE
  .BYTE $07 ;Run flag
  .WORD 616 ;HP
  .WORD 0 ;PP
  .DWORD 7521 ;Experience
  .WORD 460 ;Money
  .WORD EVENT_SCRIPT::EVENT_020
  .DWORD MSG_BTL_AP_ATTESHIMATTA
  .DWORD MSG_BTL_KIZETU_ON_M
  .BYTE $13 ;Palette
  .BYTE 26 ;Level
  .BYTE MUSIC::VS_MASTER_BELCH
  .WORD 45 ;Offense
  .WORD 71 ;Defense
  .BYTE 10 ;Speed
  .BYTE 19 ;Guts
  .BYTE 30 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $03 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $03 ;Weakness to paralysis
  .BYTE $02 ;Weakness to hypnosis/brainshock
  .BYTE $00 ;Miss rate
  .BYTE $01 ;Action order
  .WORD BATTLE_ACTIONS::STINKY_BREATH
  .WORD BATTLE_ACTIONS::BASH
  .WORD BATTLE_ACTIONS::VENT_ODOR
  .WORD BATTLE_ACTIONS::STICKY_MUCUS
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $01 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $32 ;Mirror success rate

  .BYTE $01 ;The Flag
  PADDEDEBTEXT "Master Criminal Worm", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::INSECT
  .WORD $006D ;Battle sprite
  .WORD OVERWORLD_SPRITE::MASTER_CRIMINAL_WORM
  .BYTE $07 ;Run flag
  .WORD 377 ;HP
  .WORD 300 ;PP
  .DWORD 82570 ;Experience
  .WORD 0 ;Money
  .WORD EVENT_SCRIPT::EVENT_027
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_OTONASHIKU
  .BYTE $10 ;Palette
  .BYTE 37 ;Level
  .BYTE MUSIC::VS_RUNAWAY_DOG
  .WORD 73 ;Offense
  .WORD 40 ;Defense
  .BYTE 136 ;Speed
  .BYTE 0 ;Guts
  .BYTE 0 ;Luck
  .BYTE $00 ;Weakness to fire
  .BYTE $00 ;Weakness to ice
  .BYTE $00 ;Weakness to flash
  .BYTE $00 ;Weakness to paralysis
  .BYTE $00 ;Weakness to hypnosis/brainshock
  .BYTE $00 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::PSI_FIRE_BETA
  .WORD BATTLE_ACTIONS::PSI_FIRE_ALPHA
  .WORD BATTLE_ACTIONS::PSI_FIRE_ALPHA
  .WORD BATTLE_ACTIONS::PSI_FIRE_ALPHA
  .WORD NULL ;Final action
  .BYTE $06 ;Action 1 argument
  .BYTE $05 ;Action 2 argument
  .BYTE $05 ;Action 3 argument
  .BYTE $05 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 1 ;IQ
  .BYTE $00 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $0A ;Mirror success rate

  .BYTE $00 ;The Flag
  PADDEDEBTEXT "Police Chief Strong", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0045 ;Battle sprite
  .WORD OVERWORLD_SPRITE::CROOKED_COP
  .BYTE $07 ;Run flag
  .WORD 140 ;HP
  .WORD 0 ;PP
  .DWORD 492 ;Experience
  .WORD 159 ;Money
  .WORD EVENT_SCRIPT::EVENT_021
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_M
  .BYTE $08 ;Palette
  .BYTE 13 ;Level
  .BYTE MUSIC::VS_CAVE_BOY
  .WORD 20 ;Offense
  .WORD 24 ;Defense
  .BYTE 15 ;Speed
  .BYTE 8 ;Guts
  .BYTE 18 ;Luck
  .BYTE $01 ;Weakness to fire
  .BYTE $01 ;Weakness to ice
  .BYTE $01 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $01 ;Weakness to hypnosis/brainshock
  .BYTE $02 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::SUBMISSION_HOLD
  .WORD BATTLE_ACTIONS::COME_OUT_SWINGING
  .WORD BATTLE_ACTIONS::ON_GUARD
  .WORD BATTLE_ACTIONS::LOSE_TEMPER
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $01 ;Boss flag
  .BYTE $02 ;Item drop rate
  .BYTE ITEM::BOILED_EGG ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $00 ;Death style
  .BYTE $00 ;Row
  .BYTE $03 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $00 ;The Flag
  PADDEDEBTEXT "Giygas", 25
  .BYTE GENDER::MALE
  .BYTE ENEMYTYPE::NORMAL
  .WORD $0000 ;Battle sprite
  .WORD OVERWORLD_SPRITE::NONE
  .BYTE $07 ;Run flag
  .WORD 9999 ;HP
  .WORD 0 ;PP
  .DWORD 0 ;Experience
  .WORD 0 ;Money
  .WORD EVENT_SCRIPT::EVENT_000
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_M
  .BYTE $00 ;Palette
  .BYTE 80 ;Level
  .BYTE MUSIC::GIYGAS_PHASE2
  .WORD 255 ;Offense
  .WORD 127 ;Defense
  .BYTE 80 ;Speed
  .BYTE 5 ;Guts
  .BYTE 255 ;Luck
  .BYTE $02 ;Weakness to fire
  .BYTE $02 ;Weakness to ice
  .BYTE $03 ;Weakness to flash
  .BYTE $03 ;Weakness to paralysis
  .BYTE $03 ;Weakness to hypnosis/brainshock
  .BYTE $01 ;Miss rate
  .BYTE $00 ;Action order
  .WORD BATTLE_ACTIONS::INCOMPREHENSIBLE_ATTACK_THUNDER_BETA_UNSTABLE
  .WORD BATTLE_ACTIONS::INCOMPREHENSIBLE_ATTACK_FREEZE_ALPHA_UNSTABLE
  .WORD BATTLE_ACTIONS::INCOMPREHENSIBLE_ATTACK_FLASH_GAMMA_UNSTABLE
  .WORD BATTLE_ACTIONS::RANDOM_GIYGAS_QUOTE_TIMES_3
  .WORD NULL ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE $00 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $01 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $01 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $00 ;Mirror success rate

  .BYTE $00 ;The Flag
  PADDEDEBTEXT "Clumsy Robot", 25
  .BYTE GENDER::NEUTRAL
  .BYTE ENEMYTYPE::METAL
  .WORD $0047 ;Battle sprite
  .WORD OVERWORLD_SPRITE::CAPSULE
  .BYTE $07 ;Run flag
  .WORD 962 ;HP
  .WORD 0 ;PP
  .DWORD 32378 ;Experience
  .WORD 2081 ;Money
  .WORD EVENT_SCRIPT::EVENT_027
  .DWORD MSG_BTL_APPEAR
  .DWORD MSG_BTL_KIZETU_ON_UGOKANAKU
  .BYTE $04 ;Palette
  .BYTE 46 ;Level
  .BYTE MUSIC::VS_STARMAN_JR
  .WORD 88 ;Offense
  .WORD 137 ;Defense
  .BYTE 83 ;Speed
  .BYTE 30 ;Guts
  .BYTE 49 ;Luck
  .BYTE $02 ;Weakness to fire
  .BYTE $02 ;Weakness to ice
  .BYTE $02 ;Weakness to flash
  .BYTE $01 ;Weakness to paralysis
  .BYTE $02 ;Weakness to hypnosis/brainshock
  .BYTE $05 ;Miss rate
  .BYTE $03 ;Action order
  .WORD BATTLE_ACTIONS::REEL
  .WORD BATTLE_ACTIONS::WOBBLE
  .WORD BATTLE_ACTIONS::WANT_BATTERY
  .WORD BATTLE_ACTIONS::ENEMY_EXTENDER
  .WORD BATTLE_ACTIONS::RUNAWAY_FIVE_EVENT ;Final action
  .BYTE $00 ;Action 1 argument
  .BYTE $00 ;Action 2 argument
  .BYTE $00 ;Action 3 argument
  .BYTE ENEMY::CLUMSY_ROBOT_1 ;Action 4 argument
  .BYTE $00 ;Final action argument
  .BYTE 3 ;IQ
  .BYTE $01 ;Boss flag
  .BYTE $00 ;Item drop rate
  .BYTE ITEM::NONE ;Item dropped
  .BYTE INITIAL_STATUS::NONE
  .BYTE $01 ;Death style
  .BYTE $01 ;Row
  .BYTE $00 ;Max number of allies called
  .BYTE $00 ;Mirror success rate
