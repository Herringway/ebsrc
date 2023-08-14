.SEGMENT "BANK05"
.INCLUDE "common.asm"
.INCLUDE "symbols/text.inc.asm"

;$C50000
.INCLUDE "bin/US19950327/text_data/ESHOP0.ebtxt"
;$C536FB
.INCLUDE "bin/US19950327/text_data/EDEBUG.ebtxt"
;$C56AB5
.INCLUDE "bin/US19950327/text_data/E13SKRB.ebtxt"
;$C57AA9
.INCLUDE "bin/US19950327/text_data/E04GRFD.ebtxt"

.SEGMENT "BANK05B"
;$C58000
.INCLUDE "bin/US19950327/text_data/ESHOP1.ebtxt"
;$C5B1FB
.INCLUDE "bin/US19950327/text_data/EEXPLGDS.ebtxt"

.INCLUDE "data/text/compressed_text_data-proto.asm"

.INCLUDE "data/text/compressed_text_pointers.asm"

;$C5FEC3
.INCLUDE "bin/US19950327/text_data/EGOODS4.ebtxt"
