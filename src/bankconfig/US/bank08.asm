.SEGMENT "BANK08"
.INCLUDE "common.asm"

TEXT_DATA_BANK_4: ;$C80000
	.INCLUDE "bin/US/text_data/3.ebtxt"

.INCLUDE "data/text/compressed_text_data.asm"

.INCLUDE "data/text/compressed_text_pointers.asm"

TEXT_DATA_BANK_5: ;$C8D9ED
	.INCLUDE "bin/US/text_data/4.ebtxt"
