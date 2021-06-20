.SEGMENT "BANK2B"
.INCLUDE "common.asm"

AUDIO_PACK_44: ;$EB0000
        AUDIOPACKBIN $18, $6C68, "audiopacks/44-1.bin"
        AUDIOPACKBIN $29B0, $95B0, "audiopacks/44-2.bin"
        AUDIOPACKBIN $12, $6E9C, "audiopacks/44-3.bin"
        AUDIOPACK 0

AUDIO_PACK_21: ;$EB29E8
        AUDIOPACKBIN $18, $6C68, "audiopacks/21-1.bin"
        AUDIOPACKBIN $27E0, $95B0, "audiopacks/21-2.bin"
        AUDIOPACKBIN $1E, $6E9C, "audiopacks/21-3.bin"
        AUDIOPACK 0

AUDIO_PACK_5: ;$EB520C
        AUDIOPACKBIN $70, $6C00, "audiopacks/5-1.bin"
        AUDIOPACKBIN $25B0, $7000, "audiopacks/5-2.bin"
        AUDIOPACKBIN $9C, $6E00, "audiopacks/5-3.bin"
        AUDIOPACK 0

AUDIO_PACK_40: ;$EB78D6
        AUDIOPACKBIN $18, $6C68, "audiopacks/40-1.bin"
        AUDIOPACKBIN $2680, $95B0, "audiopacks/40-2.bin"
        AUDIOPACKBIN $12, $6E9C, "audiopacks/40-3.bin"
        AUDIOPACK 0

AUDIO_PACK_33: ;$EB9F8E
        AUDIOPACKBIN $18, $6C68, "audiopacks/33-1.bin"
        AUDIOPACKBIN $2510, $95B0, "audiopacks/33-2.bin"
        AUDIOPACKBIN $24, $6E9C, "audiopacks/33-3.bin"
        AUDIOPACK 0

AUDIO_PACK_105: ;$EBC4E8
        AUDIOPACKBIN $28, $6C68, "audiopacks/105-1.bin"
        AUDIOPACKBIN $2490, $95B0, "audiopacks/105-2.bin"
        AUDIOPACKBIN $36, $6E9C, "audiopacks/105-3.bin"
        AUDIOPACK 0

AUDIO_PACK_154: ;$EBE9E4
        AUDIOPACKBIN $1438, $4800, "audiopacks/154.bin"
        AUDIOPACK 0

AUDIO_PACK_13: ;$EBFE22
        AUDIOPACKBIN $1D7, $5800, "audiopacks/13.bin"
        AUDIOPACK 0
