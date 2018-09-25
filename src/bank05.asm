.SEGMENT "BANK05"
.INCLUDE "common.asm"

SRE_POINTER_TABLE: ;$C50000
	.INCBIN "bin/unknowns/C50000.bin"

TEXT_DATA_BANK_1: ;$C51B12
	.INCLUDE "bin/text_data/0.ebtxt"
