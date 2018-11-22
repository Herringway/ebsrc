
PSI_ABILITY_TABLE: ;$D58A50
	.BYTE $00 ;Name
	.BYTE $00 ;Level
	.BYTE $00 ;Type
	.BYTE $00 ;Target
	.WORD $0000 ;Effect
	.BYTE $00 ;Level (Ness)
	.BYTE $00 ;Level (Paula)
	.BYTE $00 ;Level (Poo)
	.BYTE $00 ;Position in PSI menu (X)
	.BYTE $00 ;Position in PSI menu (Y)
	.DWORD NULL

	.BYTE PSI_ID::ROCKIN ;Name
	.BYTE PSI_LEVEL::ALPHA ;Level
	.BYTE PSI_CATEGORY::OFFENSE ;Type
	.BYTE PSI_TARGET::ENEMIES ;Target
	.WORD $000A ;Effect
	.BYTE $08 ;Level (Ness)
	.BYTE $00 ;Level (Paula)
	.BYTE $00 ;Level (Poo)
	.BYTE $09 ;Position in PSI menu (X)
	.BYTE $00 ;Position in PSI menu (Y)
	.DWORD TEXT_BLOCK_EF4E20

	.BYTE PSI_ID::ROCKIN ;Name
	.BYTE PSI_LEVEL::BETA ;Level
	.BYTE PSI_CATEGORY::OFFENSE ;Type
	.BYTE PSI_TARGET::ENEMIES ;Target
	.WORD $000B ;Effect
	.BYTE $16 ;Level (Ness)
	.BYTE $00 ;Level (Paula)
	.BYTE $00 ;Level (Poo)
	.BYTE $0B ;Position in PSI menu (X)
	.BYTE $00 ;Position in PSI menu (Y)
	.DWORD TEXT_BLOCK_EF4E38

	.BYTE PSI_ID::ROCKIN ;Name
	.BYTE PSI_LEVEL::GAMMA ;Level
	.BYTE PSI_CATEGORY::OFFENSE ;Type
	.BYTE PSI_TARGET::ENEMIES ;Target
	.WORD $000C ;Effect
	.BYTE $31 ;Level (Ness)
	.BYTE $00 ;Level (Paula)
	.BYTE $00 ;Level (Poo)
	.BYTE $0D ;Position in PSI menu (X)
	.BYTE $00 ;Position in PSI menu (Y)
	.DWORD TEXT_BLOCK_EF4E51

	.BYTE PSI_ID::ROCKIN ;Name
	.BYTE PSI_LEVEL::OMEGA ;Level
	.BYTE PSI_CATEGORY::OFFENSE ;Type
	.BYTE PSI_TARGET::ENEMIES ;Target
	.WORD $000D ;Effect
	.BYTE $4B ;Level (Ness)
	.BYTE $00 ;Level (Paula)
	.BYTE $00 ;Level (Poo)
	.BYTE $0F ;Position in PSI menu (X)
	.BYTE $00 ;Position in PSI menu (Y)
	.DWORD TEXT_BLOCK_EF4E6A

	.BYTE PSI_ID::FIRE ;Name
	.BYTE PSI_LEVEL::ALPHA ;Level
	.BYTE PSI_CATEGORY::OFFENSE ;Type
	.BYTE PSI_TARGET::ENEMIES ;Target
	.WORD $000E ;Effect
	.BYTE $00 ;Level (Ness)
	.BYTE $03 ;Level (Paula)
	.BYTE $00 ;Level (Poo)
	.BYTE $09 ;Position in PSI menu (X)
	.BYTE $00 ;Position in PSI menu (Y)
	.DWORD TEXT_BLOCK_EF4E83

	.BYTE PSI_ID::FIRE ;Name
	.BYTE PSI_LEVEL::BETA ;Level
	.BYTE PSI_CATEGORY::OFFENSE ;Type
	.BYTE PSI_TARGET::ENEMIES ;Target
	.WORD $000F ;Effect
	.BYTE $00 ;Level (Ness)
	.BYTE $13 ;Level (Paula)
	.BYTE $00 ;Level (Poo)
	.BYTE $0B ;Position in PSI menu (X)
	.BYTE $00 ;Position in PSI menu (Y)
	.DWORD TEXT_BLOCK_EF4E99

	.BYTE PSI_ID::FIRE ;Name
	.BYTE PSI_LEVEL::GAMMA ;Level
	.BYTE PSI_CATEGORY::OFFENSE ;Type
	.BYTE PSI_TARGET::ENEMIES ;Target
	.WORD $0010 ;Effect
	.BYTE $00 ;Level (Ness)
	.BYTE $25 ;Level (Paula)
	.BYTE $00 ;Level (Poo)
	.BYTE $0D ;Position in PSI menu (X)
	.BYTE $00 ;Position in PSI menu (Y)
	.DWORD TEXT_BLOCK_EF4EB0

	.BYTE PSI_ID::FIRE ;Name
	.BYTE PSI_LEVEL::OMEGA ;Level
	.BYTE PSI_CATEGORY::OFFENSE ;Type
	.BYTE PSI_TARGET::ENEMIES ;Target
	.WORD $0011 ;Effect
	.BYTE $00 ;Level (Ness)
	.BYTE $40 ;Level (Paula)
	.BYTE $00 ;Level (Poo)
	.BYTE $0F ;Position in PSI menu (X)
	.BYTE $00 ;Position in PSI menu (Y)
	.DWORD TEXT_BLOCK_EF4EC7

	.BYTE PSI_ID::FREEZE ;Name
	.BYTE PSI_LEVEL::ALPHA ;Level
	.BYTE PSI_CATEGORY::OFFENSE ;Type
	.BYTE PSI_TARGET::ENEMIES ;Target
	.WORD $0012 ;Effect
	.BYTE $00 ;Level (Ness)
	.BYTE $01 ;Level (Paula)
	.BYTE $01 ;Level (Poo)
	.BYTE $09 ;Position in PSI menu (X)
	.BYTE $01 ;Position in PSI menu (Y)
	.DWORD TEXT_BLOCK_EF4EDE

	.BYTE PSI_ID::FREEZE ;Name
	.BYTE PSI_LEVEL::BETA ;Level
	.BYTE PSI_CATEGORY::OFFENSE ;Type
	.BYTE PSI_TARGET::ENEMIES ;Target
	.WORD $0013 ;Effect
	.BYTE $00 ;Level (Ness)
	.BYTE $0B ;Level (Paula)
	.BYTE $01 ;Level (Poo)
	.BYTE $0B ;Position in PSI menu (X)
	.BYTE $01 ;Position in PSI menu (Y)
	.DWORD TEXT_BLOCK_EF4F06

	.BYTE PSI_ID::FREEZE ;Name
	.BYTE PSI_LEVEL::GAMMA ;Level
	.BYTE PSI_CATEGORY::OFFENSE ;Type
	.BYTE PSI_TARGET::ENEMIES ;Target
	.WORD $0014 ;Effect
	.BYTE $00 ;Level (Ness)
	.BYTE $1F ;Level (Paula)
	.BYTE $21 ;Level (Poo)
	.BYTE $0D ;Position in PSI menu (X)
	.BYTE $01 ;Position in PSI menu (Y)
	.DWORD TEXT_BLOCK_EF4F2E

	.BYTE PSI_ID::FREEZE ;Name
	.BYTE PSI_LEVEL::OMEGA ;Level
	.BYTE PSI_CATEGORY::OFFENSE ;Type
	.BYTE PSI_TARGET::ENEMIES ;Target
	.WORD $0015 ;Effect
	.BYTE $00 ;Level (Ness)
	.BYTE $2E ;Level (Paula)
	.BYTE $00 ;Level (Poo)
	.BYTE $0F ;Position in PSI menu (X)
	.BYTE $01 ;Position in PSI menu (Y)
	.DWORD TEXT_BLOCK_EF4F56

	.BYTE PSI_ID::THUNDER ;Name
	.BYTE PSI_LEVEL::ALPHA ;Level
	.BYTE PSI_CATEGORY::OFFENSE ;Type
	.BYTE PSI_TARGET::ENEMIES ;Target
	.WORD $0016 ;Effect
	.BYTE $00 ;Level (Ness)
	.BYTE $08 ;Level (Paula)
	.BYTE $01 ;Level (Poo)
	.BYTE $09 ;Position in PSI menu (X)
	.BYTE $02 ;Position in PSI menu (Y)
	.DWORD TEXT_BLOCK_EF4F7E

	.BYTE PSI_ID::THUNDER ;Name
	.BYTE PSI_LEVEL::BETA ;Level
	.BYTE PSI_CATEGORY::OFFENSE ;Type
	.BYTE PSI_TARGET::ENEMIES ;Target
	.WORD $0017 ;Effect
	.BYTE $00 ;Level (Ness)
	.BYTE $19 ;Level (Paula)
	.BYTE $01 ;Level (Poo)
	.BYTE $0B ;Position in PSI menu (X)
	.BYTE $02 ;Position in PSI menu (Y)
	.DWORD TEXT_BLOCK_EF4FA6

	.BYTE PSI_ID::THUNDER ;Name
	.BYTE PSI_LEVEL::GAMMA ;Level
	.BYTE PSI_CATEGORY::OFFENSE ;Type
	.BYTE PSI_TARGET::ENEMIES ;Target
	.WORD $0018 ;Effect
	.BYTE $00 ;Level (Ness)
	.BYTE $39 ;Level (Paula)
	.BYTE $29 ;Level (Poo)
	.BYTE $0D ;Position in PSI menu (X)
	.BYTE $02 ;Position in PSI menu (Y)
	.DWORD TEXT_BLOCK_EF4FDC

	.BYTE PSI_ID::THUNDER ;Name
	.BYTE PSI_LEVEL::OMEGA ;Level
	.BYTE PSI_CATEGORY::OFFENSE ;Type
	.BYTE PSI_TARGET::ENEMIES ;Target
	.WORD $0019 ;Effect
	.BYTE $00 ;Level (Ness)
	.BYTE $00 ;Level (Paula)
	.BYTE $37 ;Level (Poo)
	.BYTE $0F ;Position in PSI menu (X)
	.BYTE $02 ;Position in PSI menu (Y)
	.DWORD TEXT_BLOCK_EF5013

	.BYTE PSI_ID::FLASH ;Name
	.BYTE PSI_LEVEL::ALPHA ;Level
	.BYTE PSI_CATEGORY::OFFENSE ;Type
	.BYTE PSI_TARGET::ENEMIES ;Target
	.WORD $001A ;Effect
	.BYTE $12 ;Level (Ness)
	.BYTE $00 ;Level (Paula)
	.BYTE $00 ;Level (Poo)
	.BYTE $09 ;Position in PSI menu (X)
	.BYTE $01 ;Position in PSI menu (Y)
	.DWORD TEXT_BLOCK_EF5049

	.BYTE PSI_ID::FLASH ;Name
	.BYTE PSI_LEVEL::BETA ;Level
	.BYTE PSI_CATEGORY::OFFENSE ;Type
	.BYTE PSI_TARGET::ENEMIES ;Target
	.WORD $001B ;Effect
	.BYTE $26 ;Level (Ness)
	.BYTE $00 ;Level (Paula)
	.BYTE $00 ;Level (Poo)
	.BYTE $0B ;Position in PSI menu (X)
	.BYTE $01 ;Position in PSI menu (Y)
	.DWORD TEXT_BLOCK_EF506B

	.BYTE PSI_ID::FLASH ;Name
	.BYTE PSI_LEVEL::GAMMA ;Level
	.BYTE PSI_CATEGORY::OFFENSE ;Type
	.BYTE PSI_TARGET::ENEMIES ;Target
	.WORD $001C ;Effect
	.BYTE $3D ;Level (Ness)
	.BYTE $00 ;Level (Paula)
	.BYTE $00 ;Level (Poo)
	.BYTE $0D ;Position in PSI menu (X)
	.BYTE $01 ;Position in PSI menu (Y)
	.DWORD TEXT_BLOCK_EF50AF

	.BYTE PSI_ID::FLASH ;Name
	.BYTE PSI_LEVEL::OMEGA ;Level
	.BYTE PSI_CATEGORY::OFFENSE ;Type
	.BYTE PSI_TARGET::ENEMIES ;Target
	.WORD $001D ;Effect
	.BYTE $43 ;Level (Ness)
	.BYTE $00 ;Level (Paula)
	.BYTE $00 ;Level (Poo)
	.BYTE $0F ;Position in PSI menu (X)
	.BYTE $01 ;Position in PSI menu (Y)
	.DWORD TEXT_BLOCK_EF50E1

	.BYTE PSI_ID::STARSTORM ;Name
	.BYTE PSI_LEVEL::ALPHA ;Level
	.BYTE PSI_CATEGORY::OFFENSE ;Type
	.BYTE PSI_TARGET::ENEMIES ;Target
	.WORD $001E ;Effect
	.BYTE $00 ;Level (Ness)
	.BYTE $00 ;Level (Paula)
	.BYTE $00 ;Level (Poo)
	.BYTE $09 ;Position in PSI menu (X)
	.BYTE $00 ;Position in PSI menu (Y)
	.DWORD TEXT_BLOCK_EF5131

	.BYTE PSI_ID::STARSTORM ;Name
	.BYTE PSI_LEVEL::OMEGA ;Level
	.BYTE PSI_CATEGORY::OFFENSE ;Type
	.BYTE PSI_TARGET::ENEMIES ;Target
	.WORD $001F ;Effect
	.BYTE $00 ;Level (Ness)
	.BYTE $00 ;Level (Paula)
	.BYTE $00 ;Level (Poo)
	.BYTE $0B ;Position in PSI menu (X)
	.BYTE $00 ;Position in PSI menu (Y)
	.DWORD TEXT_BLOCK_EF5152

	.BYTE PSI_ID::LIFEUP ;Name
	.BYTE PSI_LEVEL::ALPHA ;Level
	.BYTE PSI_CATEGORY::RECOVER ;Type
	.BYTE PSI_TARGET::ALLIES ;Target
	.WORD $0020 ;Effect
	.BYTE $02 ;Level (Ness)
	.BYTE $00 ;Level (Paula)
	.BYTE $01 ;Level (Poo)
	.BYTE $09 ;Position in PSI menu (X)
	.BYTE $00 ;Position in PSI menu (Y)
	.DWORD TEXT_BLOCK_EF5173

	.BYTE PSI_ID::LIFEUP ;Name
	.BYTE PSI_LEVEL::BETA ;Level
	.BYTE PSI_CATEGORY::RECOVER ;Type
	.BYTE PSI_TARGET::ALLIES ;Target
	.WORD $0021 ;Effect
	.BYTE $14 ;Level (Ness)
	.BYTE $00 ;Level (Paula)
	.BYTE $01 ;Level (Poo)
	.BYTE $0B ;Position in PSI menu (X)
	.BYTE $00 ;Position in PSI menu (Y)
	.DWORD TEXT_BLOCK_EF5189

	.BYTE PSI_ID::LIFEUP ;Name
	.BYTE PSI_LEVEL::GAMMA ;Level
	.BYTE PSI_CATEGORY::RECOVER ;Type
	.BYTE PSI_TARGET::ALLIES ;Target
	.WORD $0022 ;Effect
	.BYTE $27 ;Level (Ness)
	.BYTE $00 ;Level (Paula)
	.BYTE $2E ;Level (Poo)
	.BYTE $0D ;Position in PSI menu (X)
	.BYTE $00 ;Position in PSI menu (Y)
	.DWORD TEXT_BLOCK_EF519F

	.BYTE PSI_ID::LIFEUP ;Name
	.BYTE PSI_LEVEL::OMEGA ;Level
	.BYTE PSI_CATEGORY::RECOVER ;Type
	.BYTE PSI_TARGET::ALLIES ;Target
	.WORD $0023 ;Effect
	.BYTE $46 ;Level (Ness)
	.BYTE $00 ;Level (Paula)
	.BYTE $00 ;Level (Poo)
	.BYTE $0F ;Position in PSI menu (X)
	.BYTE $00 ;Position in PSI menu (Y)
	.DWORD TEXT_BLOCK_EF51BB

	.BYTE PSI_ID::HEALING ;Name
	.BYTE PSI_LEVEL::ALPHA ;Level
	.BYTE PSI_CATEGORY::RECOVER ;Type
	.BYTE PSI_TARGET::ALLIES ;Target
	.WORD $0024 ;Effect
	.BYTE $0A ;Level (Ness)
	.BYTE $00 ;Level (Paula)
	.BYTE $01 ;Level (Poo)
	.BYTE $09 ;Position in PSI menu (X)
	.BYTE $01 ;Position in PSI menu (Y)
	.DWORD TEXT_BLOCK_EF51CF

	.BYTE PSI_ID::HEALING ;Name
	.BYTE PSI_LEVEL::BETA ;Level
	.BYTE PSI_CATEGORY::RECOVER ;Type
	.BYTE PSI_TARGET::ALLIES ;Target
	.WORD $0025 ;Effect
	.BYTE $18 ;Level (Ness)
	.BYTE $00 ;Level (Paula)
	.BYTE $01 ;Level (Poo)
	.BYTE $0B ;Position in PSI menu (X)
	.BYTE $01 ;Position in PSI menu (Y)
	.DWORD TEXT_BLOCK_EF51F0

	.BYTE PSI_ID::HEALING ;Name
	.BYTE PSI_LEVEL::GAMMA ;Level
	.BYTE PSI_CATEGORY::RECOVER ;Type
	.BYTE PSI_TARGET::ALLIES ;Target
	.WORD $0026 ;Effect
	.BYTE $35 ;Level (Ness)
	.BYTE $00 ;Level (Paula)
	.BYTE $24 ;Level (Poo)
	.BYTE $0D ;Position in PSI menu (X)
	.BYTE $01 ;Position in PSI menu (Y)
	.DWORD TEXT_BLOCK_EF5239

	.BYTE PSI_ID::HEALING ;Name
	.BYTE PSI_LEVEL::OMEGA ;Level
	.BYTE PSI_CATEGORY::RECOVER ;Type
	.BYTE PSI_TARGET::ALLIES ;Target
	.WORD $0027 ;Effect
	.BYTE $00 ;Level (Ness)
	.BYTE $00 ;Level (Paula)
	.BYTE $34 ;Level (Poo)
	.BYTE $0F ;Position in PSI menu (X)
	.BYTE $01 ;Position in PSI menu (Y)
	.DWORD TEXT_BLOCK_EF52A5

	.BYTE PSI_ID::SHIELD ;Name
	.BYTE PSI_LEVEL::ALPHA ;Level
	.BYTE PSI_CATEGORY::ASSIST ;Type
	.BYTE PSI_TARGET::ENEMIES ;Target
	.WORD $0028 ;Effect
	.BYTE $0C ;Level (Ness)
	.BYTE $00 ;Level (Paula)
	.BYTE $0E ;Level (Poo)
	.BYTE $09 ;Position in PSI menu (X)
	.BYTE $00 ;Position in PSI menu (Y)
	.DWORD TEXT_BLOCK_EF5301

	.BYTE PSI_ID::SHIELD ;Name
	.BYTE PSI_LEVEL::SIGMA ;Level
	.BYTE PSI_CATEGORY::ASSIST ;Type
	.BYTE PSI_TARGET::ENEMIES ;Target
	.WORD $002A ;Effect
	.BYTE $00 ;Level (Ness)
	.BYTE $00 ;Level (Paula)
	.BYTE $0F ;Level (Poo)
	.BYTE $0B ;Position in PSI menu (X)
	.BYTE $00 ;Position in PSI menu (Y)
	.DWORD TEXT_BLOCK_EF5361

	.BYTE PSI_ID::SHIELD ;Name
	.BYTE PSI_LEVEL::BETA ;Level
	.BYTE PSI_CATEGORY::ASSIST ;Type
	.BYTE PSI_TARGET::ENEMIES ;Target
	.WORD $0029 ;Effect
	.BYTE $22 ;Level (Ness)
	.BYTE $00 ;Level (Paula)
	.BYTE $10 ;Level (Poo)
	.BYTE $0D ;Position in PSI menu (X)
	.BYTE $00 ;Position in PSI menu (Y)
	.DWORD TEXT_BLOCK_EF53C0

	.BYTE PSI_ID::SHIELD ;Name
	.BYTE PSI_LEVEL::OMEGA ;Level
	.BYTE PSI_CATEGORY::ASSIST ;Type
	.BYTE PSI_TARGET::ENEMIES ;Target
	.WORD $002B ;Effect
	.BYTE $00 ;Level (Ness)
	.BYTE $00 ;Level (Paula)
	.BYTE $33 ;Level (Poo)
	.BYTE $0F ;Position in PSI menu (X)
	.BYTE $00 ;Position in PSI menu (Y)
	.DWORD TEXT_BLOCK_EF5428

	.BYTE PSI_ID::PSI_SHIELD ;Name
	.BYTE PSI_LEVEL::ALPHA ;Level
	.BYTE PSI_CATEGORY::ASSIST ;Type
	.BYTE PSI_TARGET::ENEMIES ;Target
	.WORD $002C ;Effect
	.BYTE $00 ;Level (Ness)
	.BYTE $06 ;Level (Paula)
	.BYTE $00 ;Level (Poo)
	.BYTE $09 ;Position in PSI menu (X)
	.BYTE $00 ;Position in PSI menu (Y)
	.DWORD TEXT_BLOCK_EF548F

	.BYTE PSI_ID::PSI_SHIELD ;Name
	.BYTE PSI_LEVEL::SIGMA ;Level
	.BYTE PSI_CATEGORY::ASSIST ;Type
	.BYTE PSI_TARGET::ENEMIES ;Target
	.WORD $002E ;Effect
	.BYTE $00 ;Level (Ness)
	.BYTE $1B ;Level (Paula)
	.BYTE $00 ;Level (Poo)
	.BYTE $0B ;Position in PSI menu (X)
	.BYTE $00 ;Position in PSI menu (Y)
	.DWORD TEXT_BLOCK_EF54E6

	.BYTE PSI_ID::PSI_SHIELD ;Name
	.BYTE PSI_LEVEL::BETA ;Level
	.BYTE PSI_CATEGORY::ASSIST ;Type
	.BYTE PSI_TARGET::ENEMIES ;Target
	.WORD $002D ;Effect
	.BYTE $00 ;Level (Ness)
	.BYTE $33 ;Level (Paula)
	.BYTE $00 ;Level (Poo)
	.BYTE $0D ;Position in PSI menu (X)
	.BYTE $00 ;Position in PSI menu (Y)
	.DWORD TEXT_BLOCK_EF553C

	.BYTE PSI_ID::PSI_SHIELD ;Name
	.BYTE PSI_LEVEL::OMEGA ;Level
	.BYTE PSI_CATEGORY::ASSIST ;Type
	.BYTE PSI_TARGET::ENEMIES ;Target
	.WORD $002F ;Effect
	.BYTE $00 ;Level (Ness)
	.BYTE $3C ;Level (Paula)
	.BYTE $00 ;Level (Poo)
	.BYTE $0F ;Position in PSI menu (X)
	.BYTE $00 ;Position in PSI menu (Y)
	.DWORD TEXT_BLOCK_EF55A0

	.BYTE PSI_ID::OFFENSE_UP ;Name
	.BYTE PSI_LEVEL::ALPHA ;Level
	.BYTE PSI_CATEGORY::ASSIST ;Type
	.BYTE PSI_TARGET::ENEMIES ;Target
	.WORD $0030 ;Effect
	.BYTE $00 ;Level (Ness)
	.BYTE $15 ;Level (Paula)
	.BYTE $00 ;Level (Poo)
	.BYTE $09 ;Position in PSI menu (X)
	.BYTE $01 ;Position in PSI menu (Y)
	.DWORD TEXT_BLOCK_EF5603

	.BYTE PSI_ID::OFFENSE_UP ;Name
	.BYTE PSI_LEVEL::OMEGA ;Level
	.BYTE PSI_CATEGORY::ASSIST ;Type
	.BYTE PSI_TARGET::ENEMIES ;Target
	.WORD $0031 ;Effect
	.BYTE $00 ;Level (Ness)
	.BYTE $28 ;Level (Paula)
	.BYTE $00 ;Level (Poo)
	.BYTE $0B ;Position in PSI menu (X)
	.BYTE $01 ;Position in PSI menu (Y)
	.DWORD TEXT_BLOCK_EF562E

	.BYTE PSI_ID::DEFENSE_DOWN ;Name
	.BYTE PSI_LEVEL::ALPHA ;Level
	.BYTE PSI_CATEGORY::ASSIST ;Type
	.BYTE PSI_TARGET::ENEMIES ;Target
	.WORD $0032 ;Effect
	.BYTE $00 ;Level (Ness)
	.BYTE $1D ;Level (Paula)
	.BYTE $00 ;Level (Poo)
	.BYTE $09 ;Position in PSI menu (X)
	.BYTE $02 ;Position in PSI menu (Y)
	.DWORD TEXT_BLOCK_EF5658

	.BYTE PSI_ID::DEFENSE_DOWN ;Name
	.BYTE PSI_LEVEL::OMEGA ;Level
	.BYTE PSI_CATEGORY::ASSIST ;Type
	.BYTE PSI_TARGET::ENEMIES ;Target
	.WORD $0033 ;Effect
	.BYTE $00 ;Level (Ness)
	.BYTE $36 ;Level (Paula)
	.BYTE $00 ;Level (Poo)
	.BYTE $0B ;Position in PSI menu (X)
	.BYTE $02 ;Position in PSI menu (Y)
	.DWORD TEXT_BLOCK_EF5687

	.BYTE PSI_ID::HYPNOSIS ;Name
	.BYTE PSI_LEVEL::ALPHA ;Level
	.BYTE PSI_CATEGORY::ASSIST ;Type
	.BYTE PSI_TARGET::ENEMIES ;Target
	.WORD $0034 ;Effect
	.BYTE $04 ;Level (Ness)
	.BYTE $00 ;Level (Paula)
	.BYTE $00 ;Level (Poo)
	.BYTE $09 ;Position in PSI menu (X)
	.BYTE $01 ;Position in PSI menu (Y)
	.DWORD TEXT_BLOCK_EF56B9

	.BYTE PSI_ID::HYPNOSIS ;Name
	.BYTE PSI_LEVEL::OMEGA ;Level
	.BYTE PSI_CATEGORY::ASSIST ;Type
	.BYTE PSI_TARGET::ENEMIES ;Target
	.WORD $0035 ;Effect
	.BYTE $1B ;Level (Ness)
	.BYTE $00 ;Level (Paula)
	.BYTE $00 ;Level (Poo)
	.BYTE $0B ;Position in PSI menu (X)
	.BYTE $01 ;Position in PSI menu (Y)
	.DWORD TEXT_BLOCK_EF56D0

	.BYTE PSI_ID::MAGNET ;Name
	.BYTE PSI_LEVEL::ALPHA ;Level
	.BYTE PSI_CATEGORY::RECOVER ;Type
	.BYTE PSI_TARGET::ENEMIES ;Target
	.WORD $0036 ;Effect
	.BYTE $00 ;Level (Ness)
	.BYTE $0F ;Level (Paula)
	.BYTE $15 ;Level (Poo)
	.BYTE $09 ;Position in PSI menu (X)
	.BYTE $02 ;Position in PSI menu (Y)
	.DWORD TEXT_BLOCK_EF56EB

	.BYTE PSI_ID::MAGNET ;Name
	.BYTE PSI_LEVEL::OMEGA ;Level
	.BYTE PSI_CATEGORY::RECOVER ;Type
	.BYTE PSI_TARGET::ENEMIES ;Target
	.WORD $0037 ;Effect
	.BYTE $00 ;Level (Ness)
	.BYTE $18 ;Level (Paula)
	.BYTE $1B ;Level (Poo)
	.BYTE $0B ;Position in PSI menu (X)
	.BYTE $02 ;Position in PSI menu (Y)
	.DWORD TEXT_BLOCK_EF5712

	.BYTE PSI_ID::PARALYSIS ;Name
	.BYTE PSI_LEVEL::ALPHA ;Level
	.BYTE PSI_CATEGORY::ASSIST ;Type
	.BYTE PSI_TARGET::ENEMIES ;Target
	.WORD $0038 ;Effect
	.BYTE $0E ;Level (Ness)
	.BYTE $00 ;Level (Paula)
	.BYTE $00 ;Level (Poo)
	.BYTE $09 ;Position in PSI menu (X)
	.BYTE $02 ;Position in PSI menu (Y)
	.DWORD TEXT_BLOCK_EF5739

	.BYTE PSI_ID::PARALYSIS ;Name
	.BYTE PSI_LEVEL::OMEGA ;Level
	.BYTE PSI_CATEGORY::ASSIST ;Type
	.BYTE PSI_TARGET::ENEMIES ;Target
	.WORD $0039 ;Effect
	.BYTE $1D ;Level (Ness)
	.BYTE $00 ;Level (Paula)
	.BYTE $00 ;Level (Poo)
	.BYTE $0B ;Position in PSI menu (X)
	.BYTE $02 ;Position in PSI menu (Y)
	.DWORD TEXT_BLOCK_EF574E

	.BYTE PSI_ID::BRAINSHOCK ;Name
	.BYTE PSI_LEVEL::ALPHA ;Level
	.BYTE PSI_CATEGORY::ASSIST ;Type
	.BYTE PSI_TARGET::ENEMIES ;Target
	.WORD $003A ;Effect
	.BYTE $00 ;Level (Ness)
	.BYTE $00 ;Level (Paula)
	.BYTE $18 ;Level (Poo)
	.BYTE $09 ;Position in PSI menu (X)
	.BYTE $01 ;Position in PSI menu (Y)
	.DWORD TEXT_BLOCK_EF5766

	.BYTE PSI_ID::BRAINSHOCK ;Name
	.BYTE PSI_LEVEL::OMEGA ;Level
	.BYTE PSI_CATEGORY::ASSIST ;Type
	.BYTE PSI_TARGET::ENEMIES ;Target
	.WORD $003B ;Effect
	.BYTE $00 ;Level (Ness)
	.BYTE $00 ;Level (Paula)
	.BYTE $2C ;Level (Poo)
	.BYTE $0B ;Position in PSI menu (X)
	.BYTE $01 ;Position in PSI menu (Y)
	.DWORD TEXT_BLOCK_EF5777

	.BYTE PSI_ID::TELEPORT ;Name
	.BYTE PSI_LEVEL::ALPHA ;Level
	.BYTE PSI_CATEGORY::OTHER ;Type
	.BYTE PSI_TARGET::NOBODY ;Target
	.WORD $003C ;Effect
	.BYTE $00 ;Level (Ness)
	.BYTE $00 ;Level (Paula)
	.BYTE $11 ;Level (Poo)
	.BYTE $09 ;Position in PSI menu (X)
	.BYTE $02 ;Position in PSI menu (Y)
	.DWORD TEXT_BLOCK_EF578B

	.BYTE PSI_ID::TELEPORT ;Name
	.BYTE PSI_LEVEL::BETA ;Level
	.BYTE PSI_CATEGORY::OTHER ;Type
	.BYTE PSI_TARGET::NOBODY ;Target
	.WORD $003D ;Effect
	.BYTE $00 ;Level (Ness)
	.BYTE $00 ;Level (Paula)
	.BYTE $12 ;Level (Poo)
	.BYTE $0B ;Position in PSI menu (X)
	.BYTE $02 ;Position in PSI menu (Y)
	.DWORD TEXT_BLOCK_EF57AE

	.BYTE $00 ;Name
	.BYTE $00 ;Level
	.BYTE $00 ;Type
	.BYTE $00 ;Target
	.WORD $0000 ;Effect
	.BYTE $00 ;Level (Ness)
	.BYTE $00 ;Level (Paula)
	.BYTE $00 ;Level (Poo)
	.BYTE $00 ;Position in PSI menu (X)
	.BYTE $00 ;Position in PSI menu (Y)
	.DWORD NULL
