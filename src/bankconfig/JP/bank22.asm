.SEGMENT "BANK22"
.INCLUDE "common-jp.asm"

AUDIO_PACK_108: ;$E20000
        AUDIOPACKBIN $70, $6C00, "audiopacks/108-1.bin"
        AUDIOPACKBIN $76D0, $7000, "audiopacks/108-2.bin"
        AUDIOPACKBIN $A2, $6E00, "audiopacks/108-3.bin"
        AUDIOPACK 0

AUDIO_PACK_0: ;$E277F0
        AUDIOPACKBIN $20, $6C00, "audiopacks/0-1.bin"
        AUDIOPACKBIN $74F0, $7000, "audiopacks/0-2.bin"
        AUDIOPACKBIN $1E, $6E00, "audiopacks/0-3.bin"
        AUDIOPACK 0

AUDIO_PACK_110: ;$E2ED2C
        AUDIOPACKBIN $18, $6C68, "audiopacks/110-1.bin"
        AUDIOPACKBIN $FA0, $95B0, "audiopacks/110-2.bin"
        AUDIOPACKBIN $18, $6E9C, "audiopacks/110-3.bin"
        AUDIOPACK 0

AUDIO_PACK_6: ;$E2FD0A
        AUDIOPACKBIN $2CC, $4800, "audiopacks/6.bin"
        AUDIOPACK 0
