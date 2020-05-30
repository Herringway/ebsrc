.SEGMENT "BANK05"
.INCLUDE "common-usa19950327.asm"

TEXT_DATA_BANK_1: ;$C50000
	.INCLUDE "bin/US19950327/text_data/0.ebtxt"

.INCLUDE "data/text/compressed_text_data-proto.asm"

.INCLUDE "data/text/compressed_text_pointers.asm"

TEXT_DATA_BANK_4: ;$C5FEC3
	.INCLUDE "bin/US19950327/text_data/4.ebtxt"
