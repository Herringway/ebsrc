.SEGMENT "BANK24"
.INCLUDE "common-jp.asm"

AUDIO_PACK_64: ;$E40000
        AUDIOPACKBIN $18, $6C68, "audiopacks/64-1.bin"
        AUDIOPACKBIN $5100, $95B0, "audiopacks/64-2.bin"
        AUDIOPACKBIN $24, $6E9C, "audiopacks/64-3.bin"
        AUDIOPACK 0

AUDIO_PACK_42: ;$E4514A
        AUDIOPACKBIN $38, $6C68, "audiopacks/42-1.bin"
        AUDIOPACKBIN $5060, $95B0, "audiopacks/42-2.bin"
        AUDIOPACKBIN $42, $6E9C, "audiopacks/42-3.bin"
        AUDIOPACK 0

AUDIO_PACK_126: ;$E4A232
        AUDIOPACKBIN $18, $6C68, "audiopacks/126-1.bin"
        AUDIOPACKBIN $4C60, $95B0, "audiopacks/126-2.bin"
        AUDIOPACKBIN $18, $6E9C, "audiopacks/126-3.bin"
        AUDIOPACK 0

AUDIO_PACK_36: ;$E4EED0
        AUDIOPACKBIN $F56, $5800, "audiopacks/36.bin"
        AUDIOPACK 0

AUDIO_PACK_128: ;$E4FE2C
        AUDIOPACKBIN $1CC, $5800, "audiopacks/128.bin"
        AUDIOPACK 0
