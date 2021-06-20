.SEGMENT "BANK26"
.INCLUDE "common.asm"

AUDIO_PACK_1: ;$E60000
        AUDIOPACKBIN $1E, $6E00, "audiopacks/1-1.bin"
        AUDIOPACKBIN $18, $6F80, "audiopacks/1-2.bin"
        AUDIOPACKBIN $418B, $500, "audiopacks/1-3.bin"
        AUDIOPACKBIN $405, $4800, "audiopacks/1-4.bin"
        AUDIOPACK 0

AUDIO_PACK_74: ;$E645D8
        AUDIOPACKBIN $8, $6C68, "audiopacks/74-1.bin"
        AUDIOPACKBIN $45A0, $95B0, "audiopacks/74-2.bin"
        AUDIOPACKBIN $C, $6E9C, "audiopacks/74-3.bin"
        AUDIOPACK 0

AUDIO_PACK_76: ;$E68B9A
        AUDIOPACKBIN $18, $6C68, "audiopacks/76-1.bin"
        AUDIOPACKBIN $4330, $95B0, "audiopacks/76-2.bin"
        AUDIOPACKBIN $18, $6E9C, "audiopacks/76-3.bin"
        AUDIOPACK 0

AUDIO_PACK_47: ;$E6CF08
        AUDIOPACKBIN $28, $6C68, "audiopacks/47-1.bin"
        AUDIOPACKBIN $2FB0, $95B0, "audiopacks/47-2.bin"
        AUDIOPACKBIN $2A, $6E9C, "audiopacks/47-3.bin"
        AUDIOPACK 0

AUDIO_PACK_73: ;$E6FF18
        AUDIOPACKBIN $D7, $5800, "audiopacks/73.bin"
        AUDIOPACK 0
