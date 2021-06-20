.SEGMENT "BANK25"
.INCLUDE "common.asm"

AUDIO_PACK_50: ;$E50000
        AUDIOPACKBIN $18, $6C68, "audiopacks/50-1.bin"
        AUDIOPACKBIN $4C00, $95B0, "audiopacks/50-2.bin"
        AUDIOPACKBIN $24, $6E9C, "audiopacks/50-3.bin"
        AUDIOPACK 0

AUDIO_PACK_92: ;$E54C4A
        AUDIOPACKBIN $18, $6C68, "audiopacks/92-1.bin"
        AUDIOPACKBIN $48C0, $95B0, "audiopacks/92-2.bin"
        AUDIOPACKBIN $1E, $6E9C, "audiopacks/92-3.bin"
        AUDIOPACK 0

AUDIO_PACK_56: ;$E5954E
        AUDIOPACKBIN $18, $6C68, "audiopacks/56-1.bin"
        AUDIOPACKBIN $47A0, $95B0, "audiopacks/56-2.bin"
        AUDIOPACKBIN $1E, $6E9C, "audiopacks/56-3.bin"
        AUDIOPACK 0

AUDIO_PACK_122: ;$E5DD32
        AUDIOPACKBIN $48, $6C68, "audiopacks/122-1.bin"
        AUDIOPACKBIN $2150, $95B0, "audiopacks/122-2.bin"
        AUDIOPACKBIN $60, $6E9C, "audiopacks/122-3.bin"
        AUDIOPACK 0

AUDIO_PACK_96: ;$E5FF38
        AUDIOPACKBIN $BB, $4800, "audiopacks/96.bin"
        AUDIOPACK 0
