.SEGMENT "BANK29"
.INCLUDE "common-jp.asm"

AUDIO_PACK_27: ;$E90000
        AUDIOPACKBIN $18, $6C68, "audiopacks/27-1.bin"
        AUDIOPACKBIN $3A30, $95B0, "audiopacks/27-2.bin"
        AUDIOPACKBIN $1E, $6E9C, "audiopacks/27-3.bin"
        AUDIOPACK 0

AUDIO_PACK_80: ;$E93A74
        AUDIOPACKBIN $8, $6C68, "audiopacks/80-1.bin"
        AUDIOPACKBIN $38C0, $95B0, "audiopacks/80-2.bin"
        AUDIOPACKBIN $C, $6E9C, "audiopacks/80-3.bin"
        AUDIOPACK 0

AUDIO_PACK_118: ;$E97356
        AUDIOPACKBIN $28, $6C68, "audiopacks/118-1.bin"
        AUDIOPACKBIN $3870, $95B0, "audiopacks/118-2.bin"
        AUDIOPACKBIN $2A, $6E9C, "audiopacks/118-3.bin"
        AUDIOPACK 0

AUDIO_PACK_131: ;$E9AC26
        AUDIOPACKBIN $18, $6C68, "audiopacks/131-1.bin"
        AUDIOPACKBIN $3420, $95B0, "audiopacks/131-2.bin"
        AUDIOPACKBIN $18, $6E9C, "audiopacks/131-3.bin"
        AUDIOPACK 0

AUDIO_PACK_66: ;$E9E084
        AUDIOPACKBIN $18, $6C68, "audiopacks/66-1.bin"
        AUDIOPACKBIN $1E80, $95B0, "audiopacks/66-2.bin"
        AUDIOPACKBIN $12, $6E9C, "audiopacks/66-3.bin"
        AUDIOPACK 0
