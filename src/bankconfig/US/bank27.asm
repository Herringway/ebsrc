.SEGMENT "BANK27"
.INCLUDE "common.asm"

AUDIO_PACK_78: ;$E70000
	AUDIOPACKBIN $18, $6C68, "audiopacks/78-1.bin"
	AUDIOPACKBIN $42D0, $95B0, "audiopacks/78-2.bin"
	AUDIOPACKBIN $1E, $6E9C, "audiopacks/78-3.bin"
	AUDIOPACK 0

AUDIO_PACK_82: ;$E74314
	AUDIOPACKBIN $18, $6C68, "audiopacks/82-1.bin"
	AUDIOPACKBIN $4150, $95B0, "audiopacks/82-2.bin"
	AUDIOPACKBIN $12, $6E9C, "audiopacks/82-3.bin"
	AUDIOPACK 0

AUDIO_PACK_8: ;$E7849C
	AUDIOPACKBIN $28, $6C68, "audiopacks/8-1.bin"
	AUDIOPACKBIN $40C0, $95B0, "audiopacks/8-2.bin"
	AUDIOPACKBIN $36, $6E9C, "audiopacks/8-3.bin"
	AUDIOPACK 0

AUDIO_PACK_24: ;$E7C5C8
	AUDIOPACKBIN $28, $6C68, "audiopacks/24-1.bin"
	AUDIOPACKBIN $3930, $95B0, "audiopacks/24-2.bin"
	AUDIOPACKBIN $36, $6E9C, "audiopacks/24-3.bin"
	AUDIOPACK 0
