.SEGMENT "BANK28"
.INCLUDE "common.asm"

AUDIO_PACK_84: ;$E80000
        AUDIOPACKBIN $28, $6C68, "audiopacks/84-1.bin"
        AUDIOPACKBIN $4000, $95B0, "audiopacks/84-2.bin"
        AUDIOPACKBIN $30, $6E9C, "audiopacks/84-3.bin"
        AUDIOPACKTERMINATOR

AUDIO_PACK_60: ;$E84066
        AUDIOPACKBIN $28, $6C68, "audiopacks/60-1.bin"
        AUDIOPACKBIN $3DE0, $95B0, "audiopacks/60-2.bin"
        AUDIOPACKBIN $2A, $6E9C, "audiopacks/60-3.bin"
        AUDIOPACKTERMINATOR

AUDIO_PACK_153: ;$E87EA6
        AUDIOPACKBIN $24, $6C2C, "audiopacks/153-1.bin"
        AUDIOPACKBIN $3D8C, $87C4, "audiopacks/153-2.bin"
        AUDIOPACKBIN $24, $6E42, "audiopacks/153-3.bin"
        AUDIOPACKTERMINATOR

AUDIO_PACK_124: ;$E8BC88
        AUDIOPACKBIN $18, $6C68, "audiopacks/124-1.bin"
        AUDIOPACKBIN $3BA0, $95B0, "audiopacks/124-2.bin"
        AUDIOPACKBIN $24, $6E9C, "audiopacks/124-3.bin"
        AUDIOPACKTERMINATOR

AUDIO_PACK_102: ;$E8F872
        AUDIOPACKBIN $26D, $4800, "audiopacks/102-1.bin"
        AUDIOPACKBIN $46D, $5200, "audiopacks/102-2.bin"
        AUDIOPACKTERMINATOR

AUDIO_PACK_166: ;$E8FF56
        AUDIOPACKBIN $A0, $4800, "audiopacks/166.bin"
        AUDIOPACKTERMINATOR
